library googleapis.dlp.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/dlp/v2.dart' as api;

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

core.int buildCounterGooglePrivacyDlpV2Action = 0;
buildGooglePrivacyDlpV2Action() {
  var o = new api.GooglePrivacyDlpV2Action();
  buildCounterGooglePrivacyDlpV2Action++;
  if (buildCounterGooglePrivacyDlpV2Action < 3) {
    o.jobNotificationEmails = buildGooglePrivacyDlpV2JobNotificationEmails();
    o.pubSub = buildGooglePrivacyDlpV2PublishToPubSub();
    o.publishFindingsToCloudDataCatalog =
        buildGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog();
    o.publishSummaryToCscc = buildGooglePrivacyDlpV2PublishSummaryToCscc();
    o.saveFindings = buildGooglePrivacyDlpV2SaveFindings();
  }
  buildCounterGooglePrivacyDlpV2Action--;
  return o;
}

checkGooglePrivacyDlpV2Action(api.GooglePrivacyDlpV2Action o) {
  buildCounterGooglePrivacyDlpV2Action++;
  if (buildCounterGooglePrivacyDlpV2Action < 3) {
    checkGooglePrivacyDlpV2JobNotificationEmails(o.jobNotificationEmails);
    checkGooglePrivacyDlpV2PublishToPubSub(o.pubSub);
    checkGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog(
        o.publishFindingsToCloudDataCatalog);
    checkGooglePrivacyDlpV2PublishSummaryToCscc(o.publishSummaryToCscc);
    checkGooglePrivacyDlpV2SaveFindings(o.saveFindings);
  }
  buildCounterGooglePrivacyDlpV2Action--;
}

core.int buildCounterGooglePrivacyDlpV2ActivateJobTriggerRequest = 0;
buildGooglePrivacyDlpV2ActivateJobTriggerRequest() {
  var o = new api.GooglePrivacyDlpV2ActivateJobTriggerRequest();
  buildCounterGooglePrivacyDlpV2ActivateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2ActivateJobTriggerRequest < 3) {}
  buildCounterGooglePrivacyDlpV2ActivateJobTriggerRequest--;
  return o;
}

checkGooglePrivacyDlpV2ActivateJobTriggerRequest(
    api.GooglePrivacyDlpV2ActivateJobTriggerRequest o) {
  buildCounterGooglePrivacyDlpV2ActivateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2ActivateJobTriggerRequest < 3) {}
  buildCounterGooglePrivacyDlpV2ActivateJobTriggerRequest--;
}

core.int buildCounterGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails = 0;
buildGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails() {
  var o = new api.GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails();
  buildCounterGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails++;
  if (buildCounterGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails < 3) {
    o.categoricalStatsResult = buildGooglePrivacyDlpV2CategoricalStatsResult();
    o.deltaPresenceEstimationResult =
        buildGooglePrivacyDlpV2DeltaPresenceEstimationResult();
    o.kAnonymityResult = buildGooglePrivacyDlpV2KAnonymityResult();
    o.kMapEstimationResult = buildGooglePrivacyDlpV2KMapEstimationResult();
    o.lDiversityResult = buildGooglePrivacyDlpV2LDiversityResult();
    o.numericalStatsResult = buildGooglePrivacyDlpV2NumericalStatsResult();
    o.requestedPrivacyMetric = buildGooglePrivacyDlpV2PrivacyMetric();
    o.requestedSourceTable = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails--;
  return o;
}

checkGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails(
    api.GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails o) {
  buildCounterGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails++;
  if (buildCounterGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails < 3) {
    checkGooglePrivacyDlpV2CategoricalStatsResult(o.categoricalStatsResult);
    checkGooglePrivacyDlpV2DeltaPresenceEstimationResult(
        o.deltaPresenceEstimationResult);
    checkGooglePrivacyDlpV2KAnonymityResult(o.kAnonymityResult);
    checkGooglePrivacyDlpV2KMapEstimationResult(o.kMapEstimationResult);
    checkGooglePrivacyDlpV2LDiversityResult(o.lDiversityResult);
    checkGooglePrivacyDlpV2NumericalStatsResult(o.numericalStatsResult);
    checkGooglePrivacyDlpV2PrivacyMetric(o.requestedPrivacyMetric);
    checkGooglePrivacyDlpV2BigQueryTable(o.requestedSourceTable);
  }
  buildCounterGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails--;
}

buildUnnamed3824() {
  var o = new core.List<api.GooglePrivacyDlpV2QuasiIdField>();
  o.add(buildGooglePrivacyDlpV2QuasiIdField());
  o.add(buildGooglePrivacyDlpV2QuasiIdField());
  return o;
}

checkUnnamed3824(core.List<api.GooglePrivacyDlpV2QuasiIdField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2QuasiIdField(o[0]);
  checkGooglePrivacyDlpV2QuasiIdField(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2AuxiliaryTable = 0;
buildGooglePrivacyDlpV2AuxiliaryTable() {
  var o = new api.GooglePrivacyDlpV2AuxiliaryTable();
  buildCounterGooglePrivacyDlpV2AuxiliaryTable++;
  if (buildCounterGooglePrivacyDlpV2AuxiliaryTable < 3) {
    o.quasiIds = buildUnnamed3824();
    o.relativeFrequency = buildGooglePrivacyDlpV2FieldId();
    o.table = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2AuxiliaryTable--;
  return o;
}

checkGooglePrivacyDlpV2AuxiliaryTable(api.GooglePrivacyDlpV2AuxiliaryTable o) {
  buildCounterGooglePrivacyDlpV2AuxiliaryTable++;
  if (buildCounterGooglePrivacyDlpV2AuxiliaryTable < 3) {
    checkUnnamed3824(o.quasiIds);
    checkGooglePrivacyDlpV2FieldId(o.relativeFrequency);
    checkGooglePrivacyDlpV2BigQueryTable(o.table);
  }
  buildCounterGooglePrivacyDlpV2AuxiliaryTable--;
}

core.int buildCounterGooglePrivacyDlpV2BigQueryField = 0;
buildGooglePrivacyDlpV2BigQueryField() {
  var o = new api.GooglePrivacyDlpV2BigQueryField();
  buildCounterGooglePrivacyDlpV2BigQueryField++;
  if (buildCounterGooglePrivacyDlpV2BigQueryField < 3) {
    o.field = buildGooglePrivacyDlpV2FieldId();
    o.table = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2BigQueryField--;
  return o;
}

checkGooglePrivacyDlpV2BigQueryField(api.GooglePrivacyDlpV2BigQueryField o) {
  buildCounterGooglePrivacyDlpV2BigQueryField++;
  if (buildCounterGooglePrivacyDlpV2BigQueryField < 3) {
    checkGooglePrivacyDlpV2FieldId(o.field);
    checkGooglePrivacyDlpV2BigQueryTable(o.table);
  }
  buildCounterGooglePrivacyDlpV2BigQueryField--;
}

core.int buildCounterGooglePrivacyDlpV2BigQueryKey = 0;
buildGooglePrivacyDlpV2BigQueryKey() {
  var o = new api.GooglePrivacyDlpV2BigQueryKey();
  buildCounterGooglePrivacyDlpV2BigQueryKey++;
  if (buildCounterGooglePrivacyDlpV2BigQueryKey < 3) {
    o.rowNumber = "foo";
    o.tableReference = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2BigQueryKey--;
  return o;
}

checkGooglePrivacyDlpV2BigQueryKey(api.GooglePrivacyDlpV2BigQueryKey o) {
  buildCounterGooglePrivacyDlpV2BigQueryKey++;
  if (buildCounterGooglePrivacyDlpV2BigQueryKey < 3) {
    unittest.expect(o.rowNumber, unittest.equals('foo'));
    checkGooglePrivacyDlpV2BigQueryTable(o.tableReference);
  }
  buildCounterGooglePrivacyDlpV2BigQueryKey--;
}

buildUnnamed3825() {
  var o = new core.List<api.GooglePrivacyDlpV2FieldId>();
  o.add(buildGooglePrivacyDlpV2FieldId());
  o.add(buildGooglePrivacyDlpV2FieldId());
  return o;
}

checkUnnamed3825(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0]);
  checkGooglePrivacyDlpV2FieldId(o[1]);
}

buildUnnamed3826() {
  var o = new core.List<api.GooglePrivacyDlpV2FieldId>();
  o.add(buildGooglePrivacyDlpV2FieldId());
  o.add(buildGooglePrivacyDlpV2FieldId());
  return o;
}

checkUnnamed3826(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0]);
  checkGooglePrivacyDlpV2FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2BigQueryOptions = 0;
buildGooglePrivacyDlpV2BigQueryOptions() {
  var o = new api.GooglePrivacyDlpV2BigQueryOptions();
  buildCounterGooglePrivacyDlpV2BigQueryOptions++;
  if (buildCounterGooglePrivacyDlpV2BigQueryOptions < 3) {
    o.excludedFields = buildUnnamed3825();
    o.identifyingFields = buildUnnamed3826();
    o.rowsLimit = "foo";
    o.rowsLimitPercent = 42;
    o.sampleMethod = "foo";
    o.tableReference = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2BigQueryOptions--;
  return o;
}

checkGooglePrivacyDlpV2BigQueryOptions(
    api.GooglePrivacyDlpV2BigQueryOptions o) {
  buildCounterGooglePrivacyDlpV2BigQueryOptions++;
  if (buildCounterGooglePrivacyDlpV2BigQueryOptions < 3) {
    checkUnnamed3825(o.excludedFields);
    checkUnnamed3826(o.identifyingFields);
    unittest.expect(o.rowsLimit, unittest.equals('foo'));
    unittest.expect(o.rowsLimitPercent, unittest.equals(42));
    unittest.expect(o.sampleMethod, unittest.equals('foo'));
    checkGooglePrivacyDlpV2BigQueryTable(o.tableReference);
  }
  buildCounterGooglePrivacyDlpV2BigQueryOptions--;
}

core.int buildCounterGooglePrivacyDlpV2BigQueryTable = 0;
buildGooglePrivacyDlpV2BigQueryTable() {
  var o = new api.GooglePrivacyDlpV2BigQueryTable();
  buildCounterGooglePrivacyDlpV2BigQueryTable++;
  if (buildCounterGooglePrivacyDlpV2BigQueryTable < 3) {
    o.datasetId = "foo";
    o.projectId = "foo";
    o.tableId = "foo";
  }
  buildCounterGooglePrivacyDlpV2BigQueryTable--;
  return o;
}

checkGooglePrivacyDlpV2BigQueryTable(api.GooglePrivacyDlpV2BigQueryTable o) {
  buildCounterGooglePrivacyDlpV2BigQueryTable++;
  if (buildCounterGooglePrivacyDlpV2BigQueryTable < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.tableId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2BigQueryTable--;
}

core.int buildCounterGooglePrivacyDlpV2BoundingBox = 0;
buildGooglePrivacyDlpV2BoundingBox() {
  var o = new api.GooglePrivacyDlpV2BoundingBox();
  buildCounterGooglePrivacyDlpV2BoundingBox++;
  if (buildCounterGooglePrivacyDlpV2BoundingBox < 3) {
    o.height = 42;
    o.left = 42;
    o.top = 42;
    o.width = 42;
  }
  buildCounterGooglePrivacyDlpV2BoundingBox--;
  return o;
}

checkGooglePrivacyDlpV2BoundingBox(api.GooglePrivacyDlpV2BoundingBox o) {
  buildCounterGooglePrivacyDlpV2BoundingBox++;
  if (buildCounterGooglePrivacyDlpV2BoundingBox < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.left, unittest.equals(42));
    unittest.expect(o.top, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2BoundingBox--;
}

core.int buildCounterGooglePrivacyDlpV2Bucket = 0;
buildGooglePrivacyDlpV2Bucket() {
  var o = new api.GooglePrivacyDlpV2Bucket();
  buildCounterGooglePrivacyDlpV2Bucket++;
  if (buildCounterGooglePrivacyDlpV2Bucket < 3) {
    o.max = buildGooglePrivacyDlpV2Value();
    o.min = buildGooglePrivacyDlpV2Value();
    o.replacementValue = buildGooglePrivacyDlpV2Value();
  }
  buildCounterGooglePrivacyDlpV2Bucket--;
  return o;
}

checkGooglePrivacyDlpV2Bucket(api.GooglePrivacyDlpV2Bucket o) {
  buildCounterGooglePrivacyDlpV2Bucket++;
  if (buildCounterGooglePrivacyDlpV2Bucket < 3) {
    checkGooglePrivacyDlpV2Value(o.max);
    checkGooglePrivacyDlpV2Value(o.min);
    checkGooglePrivacyDlpV2Value(o.replacementValue);
  }
  buildCounterGooglePrivacyDlpV2Bucket--;
}

buildUnnamed3827() {
  var o = new core.List<api.GooglePrivacyDlpV2Bucket>();
  o.add(buildGooglePrivacyDlpV2Bucket());
  o.add(buildGooglePrivacyDlpV2Bucket());
  return o;
}

checkUnnamed3827(core.List<api.GooglePrivacyDlpV2Bucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Bucket(o[0]);
  checkGooglePrivacyDlpV2Bucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2BucketingConfig = 0;
buildGooglePrivacyDlpV2BucketingConfig() {
  var o = new api.GooglePrivacyDlpV2BucketingConfig();
  buildCounterGooglePrivacyDlpV2BucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2BucketingConfig < 3) {
    o.buckets = buildUnnamed3827();
  }
  buildCounterGooglePrivacyDlpV2BucketingConfig--;
  return o;
}

checkGooglePrivacyDlpV2BucketingConfig(
    api.GooglePrivacyDlpV2BucketingConfig o) {
  buildCounterGooglePrivacyDlpV2BucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2BucketingConfig < 3) {
    checkUnnamed3827(o.buckets);
  }
  buildCounterGooglePrivacyDlpV2BucketingConfig--;
}

core.int buildCounterGooglePrivacyDlpV2ByteContentItem = 0;
buildGooglePrivacyDlpV2ByteContentItem() {
  var o = new api.GooglePrivacyDlpV2ByteContentItem();
  buildCounterGooglePrivacyDlpV2ByteContentItem++;
  if (buildCounterGooglePrivacyDlpV2ByteContentItem < 3) {
    o.data = "foo";
    o.type = "foo";
  }
  buildCounterGooglePrivacyDlpV2ByteContentItem--;
  return o;
}

checkGooglePrivacyDlpV2ByteContentItem(
    api.GooglePrivacyDlpV2ByteContentItem o) {
  buildCounterGooglePrivacyDlpV2ByteContentItem++;
  if (buildCounterGooglePrivacyDlpV2ByteContentItem < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2ByteContentItem--;
}

core.int buildCounterGooglePrivacyDlpV2CancelDlpJobRequest = 0;
buildGooglePrivacyDlpV2CancelDlpJobRequest() {
  var o = new api.GooglePrivacyDlpV2CancelDlpJobRequest();
  buildCounterGooglePrivacyDlpV2CancelDlpJobRequest++;
  if (buildCounterGooglePrivacyDlpV2CancelDlpJobRequest < 3) {}
  buildCounterGooglePrivacyDlpV2CancelDlpJobRequest--;
  return o;
}

checkGooglePrivacyDlpV2CancelDlpJobRequest(
    api.GooglePrivacyDlpV2CancelDlpJobRequest o) {
  buildCounterGooglePrivacyDlpV2CancelDlpJobRequest++;
  if (buildCounterGooglePrivacyDlpV2CancelDlpJobRequest < 3) {}
  buildCounterGooglePrivacyDlpV2CancelDlpJobRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CategoricalStatsConfig = 0;
buildGooglePrivacyDlpV2CategoricalStatsConfig() {
  var o = new api.GooglePrivacyDlpV2CategoricalStatsConfig();
  buildCounterGooglePrivacyDlpV2CategoricalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2CategoricalStatsConfig < 3) {
    o.field = buildGooglePrivacyDlpV2FieldId();
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsConfig--;
  return o;
}

checkGooglePrivacyDlpV2CategoricalStatsConfig(
    api.GooglePrivacyDlpV2CategoricalStatsConfig o) {
  buildCounterGooglePrivacyDlpV2CategoricalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2CategoricalStatsConfig < 3) {
    checkGooglePrivacyDlpV2FieldId(o.field);
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsConfig--;
}

buildUnnamed3828() {
  var o = new core.List<api.GooglePrivacyDlpV2ValueFrequency>();
  o.add(buildGooglePrivacyDlpV2ValueFrequency());
  o.add(buildGooglePrivacyDlpV2ValueFrequency());
  return o;
}

checkUnnamed3828(core.List<api.GooglePrivacyDlpV2ValueFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2ValueFrequency(o[0]);
  checkGooglePrivacyDlpV2ValueFrequency(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket = 0;
buildGooglePrivacyDlpV2CategoricalStatsHistogramBucket() {
  var o = new api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket();
  buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket < 3) {
    o.bucketSize = "foo";
    o.bucketValueCount = "foo";
    o.bucketValues = buildUnnamed3828();
    o.valueFrequencyLowerBound = "foo";
    o.valueFrequencyUpperBound = "foo";
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket--;
  return o;
}

checkGooglePrivacyDlpV2CategoricalStatsHistogramBucket(
    api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    unittest.expect(o.bucketValueCount, unittest.equals('foo'));
    checkUnnamed3828(o.bucketValues);
    unittest.expect(o.valueFrequencyLowerBound, unittest.equals('foo'));
    unittest.expect(o.valueFrequencyUpperBound, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket--;
}

buildUnnamed3829() {
  var o =
      new core.List<api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2CategoricalStatsHistogramBucket());
  o.add(buildGooglePrivacyDlpV2CategoricalStatsHistogramBucket());
  return o;
}

checkUnnamed3829(
    core.List<api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2CategoricalStatsHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2CategoricalStatsHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2CategoricalStatsResult = 0;
buildGooglePrivacyDlpV2CategoricalStatsResult() {
  var o = new api.GooglePrivacyDlpV2CategoricalStatsResult();
  buildCounterGooglePrivacyDlpV2CategoricalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2CategoricalStatsResult < 3) {
    o.valueFrequencyHistogramBuckets = buildUnnamed3829();
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsResult--;
  return o;
}

checkGooglePrivacyDlpV2CategoricalStatsResult(
    api.GooglePrivacyDlpV2CategoricalStatsResult o) {
  buildCounterGooglePrivacyDlpV2CategoricalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2CategoricalStatsResult < 3) {
    checkUnnamed3829(o.valueFrequencyHistogramBuckets);
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsResult--;
}

buildUnnamed3830() {
  var o = new core.List<api.GooglePrivacyDlpV2CharsToIgnore>();
  o.add(buildGooglePrivacyDlpV2CharsToIgnore());
  o.add(buildGooglePrivacyDlpV2CharsToIgnore());
  return o;
}

checkUnnamed3830(core.List<api.GooglePrivacyDlpV2CharsToIgnore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2CharsToIgnore(o[0]);
  checkGooglePrivacyDlpV2CharsToIgnore(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2CharacterMaskConfig = 0;
buildGooglePrivacyDlpV2CharacterMaskConfig() {
  var o = new api.GooglePrivacyDlpV2CharacterMaskConfig();
  buildCounterGooglePrivacyDlpV2CharacterMaskConfig++;
  if (buildCounterGooglePrivacyDlpV2CharacterMaskConfig < 3) {
    o.charactersToIgnore = buildUnnamed3830();
    o.maskingCharacter = "foo";
    o.numberToMask = 42;
    o.reverseOrder = true;
  }
  buildCounterGooglePrivacyDlpV2CharacterMaskConfig--;
  return o;
}

checkGooglePrivacyDlpV2CharacterMaskConfig(
    api.GooglePrivacyDlpV2CharacterMaskConfig o) {
  buildCounterGooglePrivacyDlpV2CharacterMaskConfig++;
  if (buildCounterGooglePrivacyDlpV2CharacterMaskConfig < 3) {
    checkUnnamed3830(o.charactersToIgnore);
    unittest.expect(o.maskingCharacter, unittest.equals('foo'));
    unittest.expect(o.numberToMask, unittest.equals(42));
    unittest.expect(o.reverseOrder, unittest.isTrue);
  }
  buildCounterGooglePrivacyDlpV2CharacterMaskConfig--;
}

core.int buildCounterGooglePrivacyDlpV2CharsToIgnore = 0;
buildGooglePrivacyDlpV2CharsToIgnore() {
  var o = new api.GooglePrivacyDlpV2CharsToIgnore();
  buildCounterGooglePrivacyDlpV2CharsToIgnore++;
  if (buildCounterGooglePrivacyDlpV2CharsToIgnore < 3) {
    o.charactersToSkip = "foo";
    o.commonCharactersToIgnore = "foo";
  }
  buildCounterGooglePrivacyDlpV2CharsToIgnore--;
  return o;
}

checkGooglePrivacyDlpV2CharsToIgnore(api.GooglePrivacyDlpV2CharsToIgnore o) {
  buildCounterGooglePrivacyDlpV2CharsToIgnore++;
  if (buildCounterGooglePrivacyDlpV2CharsToIgnore < 3) {
    unittest.expect(o.charactersToSkip, unittest.equals('foo'));
    unittest.expect(o.commonCharactersToIgnore, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CharsToIgnore--;
}

core.int buildCounterGooglePrivacyDlpV2CloudStorageFileSet = 0;
buildGooglePrivacyDlpV2CloudStorageFileSet() {
  var o = new api.GooglePrivacyDlpV2CloudStorageFileSet();
  buildCounterGooglePrivacyDlpV2CloudStorageFileSet++;
  if (buildCounterGooglePrivacyDlpV2CloudStorageFileSet < 3) {
    o.url = "foo";
  }
  buildCounterGooglePrivacyDlpV2CloudStorageFileSet--;
  return o;
}

checkGooglePrivacyDlpV2CloudStorageFileSet(
    api.GooglePrivacyDlpV2CloudStorageFileSet o) {
  buildCounterGooglePrivacyDlpV2CloudStorageFileSet++;
  if (buildCounterGooglePrivacyDlpV2CloudStorageFileSet < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CloudStorageFileSet--;
}

buildUnnamed3831() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3831(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2CloudStorageOptions = 0;
buildGooglePrivacyDlpV2CloudStorageOptions() {
  var o = new api.GooglePrivacyDlpV2CloudStorageOptions();
  buildCounterGooglePrivacyDlpV2CloudStorageOptions++;
  if (buildCounterGooglePrivacyDlpV2CloudStorageOptions < 3) {
    o.bytesLimitPerFile = "foo";
    o.bytesLimitPerFilePercent = 42;
    o.fileSet = buildGooglePrivacyDlpV2FileSet();
    o.fileTypes = buildUnnamed3831();
    o.filesLimitPercent = 42;
    o.sampleMethod = "foo";
  }
  buildCounterGooglePrivacyDlpV2CloudStorageOptions--;
  return o;
}

checkGooglePrivacyDlpV2CloudStorageOptions(
    api.GooglePrivacyDlpV2CloudStorageOptions o) {
  buildCounterGooglePrivacyDlpV2CloudStorageOptions++;
  if (buildCounterGooglePrivacyDlpV2CloudStorageOptions < 3) {
    unittest.expect(o.bytesLimitPerFile, unittest.equals('foo'));
    unittest.expect(o.bytesLimitPerFilePercent, unittest.equals(42));
    checkGooglePrivacyDlpV2FileSet(o.fileSet);
    checkUnnamed3831(o.fileTypes);
    unittest.expect(o.filesLimitPercent, unittest.equals(42));
    unittest.expect(o.sampleMethod, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CloudStorageOptions--;
}

core.int buildCounterGooglePrivacyDlpV2CloudStoragePath = 0;
buildGooglePrivacyDlpV2CloudStoragePath() {
  var o = new api.GooglePrivacyDlpV2CloudStoragePath();
  buildCounterGooglePrivacyDlpV2CloudStoragePath++;
  if (buildCounterGooglePrivacyDlpV2CloudStoragePath < 3) {
    o.path = "foo";
  }
  buildCounterGooglePrivacyDlpV2CloudStoragePath--;
  return o;
}

checkGooglePrivacyDlpV2CloudStoragePath(
    api.GooglePrivacyDlpV2CloudStoragePath o) {
  buildCounterGooglePrivacyDlpV2CloudStoragePath++;
  if (buildCounterGooglePrivacyDlpV2CloudStoragePath < 3) {
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CloudStoragePath--;
}

buildUnnamed3832() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3832(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3833() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3833(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet = 0;
buildGooglePrivacyDlpV2CloudStorageRegexFileSet() {
  var o = new api.GooglePrivacyDlpV2CloudStorageRegexFileSet();
  buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet++;
  if (buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet < 3) {
    o.bucketName = "foo";
    o.excludeRegex = buildUnnamed3832();
    o.includeRegex = buildUnnamed3833();
  }
  buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet--;
  return o;
}

checkGooglePrivacyDlpV2CloudStorageRegexFileSet(
    api.GooglePrivacyDlpV2CloudStorageRegexFileSet o) {
  buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet++;
  if (buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet < 3) {
    unittest.expect(o.bucketName, unittest.equals('foo'));
    checkUnnamed3832(o.excludeRegex);
    checkUnnamed3833(o.includeRegex);
  }
  buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet--;
}

core.int buildCounterGooglePrivacyDlpV2Color = 0;
buildGooglePrivacyDlpV2Color() {
  var o = new api.GooglePrivacyDlpV2Color();
  buildCounterGooglePrivacyDlpV2Color++;
  if (buildCounterGooglePrivacyDlpV2Color < 3) {
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterGooglePrivacyDlpV2Color--;
  return o;
}

checkGooglePrivacyDlpV2Color(api.GooglePrivacyDlpV2Color o) {
  buildCounterGooglePrivacyDlpV2Color++;
  if (buildCounterGooglePrivacyDlpV2Color < 3) {
    unittest.expect(o.blue, unittest.equals(42.0));
    unittest.expect(o.green, unittest.equals(42.0));
    unittest.expect(o.red, unittest.equals(42.0));
  }
  buildCounterGooglePrivacyDlpV2Color--;
}

core.int buildCounterGooglePrivacyDlpV2Condition = 0;
buildGooglePrivacyDlpV2Condition() {
  var o = new api.GooglePrivacyDlpV2Condition();
  buildCounterGooglePrivacyDlpV2Condition++;
  if (buildCounterGooglePrivacyDlpV2Condition < 3) {
    o.field = buildGooglePrivacyDlpV2FieldId();
    o.operator = "foo";
    o.value = buildGooglePrivacyDlpV2Value();
  }
  buildCounterGooglePrivacyDlpV2Condition--;
  return o;
}

checkGooglePrivacyDlpV2Condition(api.GooglePrivacyDlpV2Condition o) {
  buildCounterGooglePrivacyDlpV2Condition++;
  if (buildCounterGooglePrivacyDlpV2Condition < 3) {
    checkGooglePrivacyDlpV2FieldId(o.field);
    unittest.expect(o.operator, unittest.equals('foo'));
    checkGooglePrivacyDlpV2Value(o.value);
  }
  buildCounterGooglePrivacyDlpV2Condition--;
}

buildUnnamed3834() {
  var o = new core.List<api.GooglePrivacyDlpV2Condition>();
  o.add(buildGooglePrivacyDlpV2Condition());
  o.add(buildGooglePrivacyDlpV2Condition());
  return o;
}

checkUnnamed3834(core.List<api.GooglePrivacyDlpV2Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Condition(o[0]);
  checkGooglePrivacyDlpV2Condition(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2Conditions = 0;
buildGooglePrivacyDlpV2Conditions() {
  var o = new api.GooglePrivacyDlpV2Conditions();
  buildCounterGooglePrivacyDlpV2Conditions++;
  if (buildCounterGooglePrivacyDlpV2Conditions < 3) {
    o.conditions = buildUnnamed3834();
  }
  buildCounterGooglePrivacyDlpV2Conditions--;
  return o;
}

checkGooglePrivacyDlpV2Conditions(api.GooglePrivacyDlpV2Conditions o) {
  buildCounterGooglePrivacyDlpV2Conditions++;
  if (buildCounterGooglePrivacyDlpV2Conditions < 3) {
    checkUnnamed3834(o.conditions);
  }
  buildCounterGooglePrivacyDlpV2Conditions--;
}

core.int buildCounterGooglePrivacyDlpV2ContentItem = 0;
buildGooglePrivacyDlpV2ContentItem() {
  var o = new api.GooglePrivacyDlpV2ContentItem();
  buildCounterGooglePrivacyDlpV2ContentItem++;
  if (buildCounterGooglePrivacyDlpV2ContentItem < 3) {
    o.byteItem = buildGooglePrivacyDlpV2ByteContentItem();
    o.table = buildGooglePrivacyDlpV2Table();
    o.value = "foo";
  }
  buildCounterGooglePrivacyDlpV2ContentItem--;
  return o;
}

checkGooglePrivacyDlpV2ContentItem(api.GooglePrivacyDlpV2ContentItem o) {
  buildCounterGooglePrivacyDlpV2ContentItem++;
  if (buildCounterGooglePrivacyDlpV2ContentItem < 3) {
    checkGooglePrivacyDlpV2ByteContentItem(o.byteItem);
    checkGooglePrivacyDlpV2Table(o.table);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2ContentItem--;
}

core.int buildCounterGooglePrivacyDlpV2ContentLocation = 0;
buildGooglePrivacyDlpV2ContentLocation() {
  var o = new api.GooglePrivacyDlpV2ContentLocation();
  buildCounterGooglePrivacyDlpV2ContentLocation++;
  if (buildCounterGooglePrivacyDlpV2ContentLocation < 3) {
    o.containerName = "foo";
    o.containerTimestamp = "foo";
    o.containerVersion = "foo";
    o.documentLocation = buildGooglePrivacyDlpV2DocumentLocation();
    o.imageLocation = buildGooglePrivacyDlpV2ImageLocation();
    o.recordLocation = buildGooglePrivacyDlpV2RecordLocation();
  }
  buildCounterGooglePrivacyDlpV2ContentLocation--;
  return o;
}

checkGooglePrivacyDlpV2ContentLocation(
    api.GooglePrivacyDlpV2ContentLocation o) {
  buildCounterGooglePrivacyDlpV2ContentLocation++;
  if (buildCounterGooglePrivacyDlpV2ContentLocation < 3) {
    unittest.expect(o.containerName, unittest.equals('foo'));
    unittest.expect(o.containerTimestamp, unittest.equals('foo'));
    unittest.expect(o.containerVersion, unittest.equals('foo'));
    checkGooglePrivacyDlpV2DocumentLocation(o.documentLocation);
    checkGooglePrivacyDlpV2ImageLocation(o.imageLocation);
    checkGooglePrivacyDlpV2RecordLocation(o.recordLocation);
  }
  buildCounterGooglePrivacyDlpV2ContentLocation--;
}

core.int buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest = 0;
buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest() {
  var o = new api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
  buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest < 3) {
    o.deidentifyTemplate = buildGooglePrivacyDlpV2DeidentifyTemplate();
    o.templateId = "foo";
  }
  buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest--;
  return o;
}

checkGooglePrivacyDlpV2CreateDeidentifyTemplateRequest(
    api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest o) {
  buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest < 3) {
    checkGooglePrivacyDlpV2DeidentifyTemplate(o.deidentifyTemplate);
    unittest.expect(o.templateId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CreateDlpJobRequest = 0;
buildGooglePrivacyDlpV2CreateDlpJobRequest() {
  var o = new api.GooglePrivacyDlpV2CreateDlpJobRequest();
  buildCounterGooglePrivacyDlpV2CreateDlpJobRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateDlpJobRequest < 3) {
    o.inspectJob = buildGooglePrivacyDlpV2InspectJobConfig();
    o.jobId = "foo";
    o.riskJob = buildGooglePrivacyDlpV2RiskAnalysisJobConfig();
  }
  buildCounterGooglePrivacyDlpV2CreateDlpJobRequest--;
  return o;
}

checkGooglePrivacyDlpV2CreateDlpJobRequest(
    api.GooglePrivacyDlpV2CreateDlpJobRequest o) {
  buildCounterGooglePrivacyDlpV2CreateDlpJobRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateDlpJobRequest < 3) {
    checkGooglePrivacyDlpV2InspectJobConfig(o.inspectJob);
    unittest.expect(o.jobId, unittest.equals('foo'));
    checkGooglePrivacyDlpV2RiskAnalysisJobConfig(o.riskJob);
  }
  buildCounterGooglePrivacyDlpV2CreateDlpJobRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest = 0;
buildGooglePrivacyDlpV2CreateInspectTemplateRequest() {
  var o = new api.GooglePrivacyDlpV2CreateInspectTemplateRequest();
  buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest < 3) {
    o.inspectTemplate = buildGooglePrivacyDlpV2InspectTemplate();
    o.templateId = "foo";
  }
  buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest--;
  return o;
}

checkGooglePrivacyDlpV2CreateInspectTemplateRequest(
    api.GooglePrivacyDlpV2CreateInspectTemplateRequest o) {
  buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest < 3) {
    checkGooglePrivacyDlpV2InspectTemplate(o.inspectTemplate);
    unittest.expect(o.templateId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest = 0;
buildGooglePrivacyDlpV2CreateJobTriggerRequest() {
  var o = new api.GooglePrivacyDlpV2CreateJobTriggerRequest();
  buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest < 3) {
    o.jobTrigger = buildGooglePrivacyDlpV2JobTrigger();
    o.triggerId = "foo";
  }
  buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest--;
  return o;
}

checkGooglePrivacyDlpV2CreateJobTriggerRequest(
    api.GooglePrivacyDlpV2CreateJobTriggerRequest o) {
  buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest < 3) {
    checkGooglePrivacyDlpV2JobTrigger(o.jobTrigger);
    unittest.expect(o.triggerId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest = 0;
buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest() {
  var o = new api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest();
  buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest < 3) {
    o.config = buildGooglePrivacyDlpV2StoredInfoTypeConfig();
    o.storedInfoTypeId = "foo";
  }
  buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest--;
  return o;
}

checkGooglePrivacyDlpV2CreateStoredInfoTypeRequest(
    api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest o) {
  buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest < 3) {
    checkGooglePrivacyDlpV2StoredInfoTypeConfig(o.config);
    unittest.expect(o.storedInfoTypeId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig = 0;
buildGooglePrivacyDlpV2CryptoDeterministicConfig() {
  var o = new api.GooglePrivacyDlpV2CryptoDeterministicConfig();
  buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig++;
  if (buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig < 3) {
    o.context = buildGooglePrivacyDlpV2FieldId();
    o.cryptoKey = buildGooglePrivacyDlpV2CryptoKey();
    o.surrogateInfoType = buildGooglePrivacyDlpV2InfoType();
  }
  buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig--;
  return o;
}

checkGooglePrivacyDlpV2CryptoDeterministicConfig(
    api.GooglePrivacyDlpV2CryptoDeterministicConfig o) {
  buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig++;
  if (buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig < 3) {
    checkGooglePrivacyDlpV2FieldId(o.context);
    checkGooglePrivacyDlpV2CryptoKey(o.cryptoKey);
    checkGooglePrivacyDlpV2InfoType(o.surrogateInfoType);
  }
  buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig--;
}

core.int buildCounterGooglePrivacyDlpV2CryptoHashConfig = 0;
buildGooglePrivacyDlpV2CryptoHashConfig() {
  var o = new api.GooglePrivacyDlpV2CryptoHashConfig();
  buildCounterGooglePrivacyDlpV2CryptoHashConfig++;
  if (buildCounterGooglePrivacyDlpV2CryptoHashConfig < 3) {
    o.cryptoKey = buildGooglePrivacyDlpV2CryptoKey();
  }
  buildCounterGooglePrivacyDlpV2CryptoHashConfig--;
  return o;
}

checkGooglePrivacyDlpV2CryptoHashConfig(
    api.GooglePrivacyDlpV2CryptoHashConfig o) {
  buildCounterGooglePrivacyDlpV2CryptoHashConfig++;
  if (buildCounterGooglePrivacyDlpV2CryptoHashConfig < 3) {
    checkGooglePrivacyDlpV2CryptoKey(o.cryptoKey);
  }
  buildCounterGooglePrivacyDlpV2CryptoHashConfig--;
}

core.int buildCounterGooglePrivacyDlpV2CryptoKey = 0;
buildGooglePrivacyDlpV2CryptoKey() {
  var o = new api.GooglePrivacyDlpV2CryptoKey();
  buildCounterGooglePrivacyDlpV2CryptoKey++;
  if (buildCounterGooglePrivacyDlpV2CryptoKey < 3) {
    o.kmsWrapped = buildGooglePrivacyDlpV2KmsWrappedCryptoKey();
    o.transient = buildGooglePrivacyDlpV2TransientCryptoKey();
    o.unwrapped = buildGooglePrivacyDlpV2UnwrappedCryptoKey();
  }
  buildCounterGooglePrivacyDlpV2CryptoKey--;
  return o;
}

checkGooglePrivacyDlpV2CryptoKey(api.GooglePrivacyDlpV2CryptoKey o) {
  buildCounterGooglePrivacyDlpV2CryptoKey++;
  if (buildCounterGooglePrivacyDlpV2CryptoKey < 3) {
    checkGooglePrivacyDlpV2KmsWrappedCryptoKey(o.kmsWrapped);
    checkGooglePrivacyDlpV2TransientCryptoKey(o.transient);
    checkGooglePrivacyDlpV2UnwrappedCryptoKey(o.unwrapped);
  }
  buildCounterGooglePrivacyDlpV2CryptoKey--;
}

core.int buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig = 0;
buildGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig() {
  var o = new api.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig();
  buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig++;
  if (buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig < 3) {
    o.commonAlphabet = "foo";
    o.context = buildGooglePrivacyDlpV2FieldId();
    o.cryptoKey = buildGooglePrivacyDlpV2CryptoKey();
    o.customAlphabet = "foo";
    o.radix = 42;
    o.surrogateInfoType = buildGooglePrivacyDlpV2InfoType();
  }
  buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig--;
  return o;
}

checkGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig(
    api.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig o) {
  buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig++;
  if (buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig < 3) {
    unittest.expect(o.commonAlphabet, unittest.equals('foo'));
    checkGooglePrivacyDlpV2FieldId(o.context);
    checkGooglePrivacyDlpV2CryptoKey(o.cryptoKey);
    unittest.expect(o.customAlphabet, unittest.equals('foo'));
    unittest.expect(o.radix, unittest.equals(42));
    checkGooglePrivacyDlpV2InfoType(o.surrogateInfoType);
  }
  buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig--;
}

buildUnnamed3835() {
  var o = new core.List<api.GooglePrivacyDlpV2DetectionRule>();
  o.add(buildGooglePrivacyDlpV2DetectionRule());
  o.add(buildGooglePrivacyDlpV2DetectionRule());
  return o;
}

checkUnnamed3835(core.List<api.GooglePrivacyDlpV2DetectionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2DetectionRule(o[0]);
  checkGooglePrivacyDlpV2DetectionRule(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2CustomInfoType = 0;
buildGooglePrivacyDlpV2CustomInfoType() {
  var o = new api.GooglePrivacyDlpV2CustomInfoType();
  buildCounterGooglePrivacyDlpV2CustomInfoType++;
  if (buildCounterGooglePrivacyDlpV2CustomInfoType < 3) {
    o.detectionRules = buildUnnamed3835();
    o.dictionary = buildGooglePrivacyDlpV2Dictionary();
    o.exclusionType = "foo";
    o.infoType = buildGooglePrivacyDlpV2InfoType();
    o.likelihood = "foo";
    o.regex = buildGooglePrivacyDlpV2Regex();
    o.storedType = buildGooglePrivacyDlpV2StoredType();
    o.surrogateType = buildGooglePrivacyDlpV2SurrogateType();
  }
  buildCounterGooglePrivacyDlpV2CustomInfoType--;
  return o;
}

checkGooglePrivacyDlpV2CustomInfoType(api.GooglePrivacyDlpV2CustomInfoType o) {
  buildCounterGooglePrivacyDlpV2CustomInfoType++;
  if (buildCounterGooglePrivacyDlpV2CustomInfoType < 3) {
    checkUnnamed3835(o.detectionRules);
    checkGooglePrivacyDlpV2Dictionary(o.dictionary);
    unittest.expect(o.exclusionType, unittest.equals('foo'));
    checkGooglePrivacyDlpV2InfoType(o.infoType);
    unittest.expect(o.likelihood, unittest.equals('foo'));
    checkGooglePrivacyDlpV2Regex(o.regex);
    checkGooglePrivacyDlpV2StoredType(o.storedType);
    checkGooglePrivacyDlpV2SurrogateType(o.surrogateType);
  }
  buildCounterGooglePrivacyDlpV2CustomInfoType--;
}

core.int buildCounterGooglePrivacyDlpV2DatastoreKey = 0;
buildGooglePrivacyDlpV2DatastoreKey() {
  var o = new api.GooglePrivacyDlpV2DatastoreKey();
  buildCounterGooglePrivacyDlpV2DatastoreKey++;
  if (buildCounterGooglePrivacyDlpV2DatastoreKey < 3) {
    o.entityKey = buildGooglePrivacyDlpV2Key();
  }
  buildCounterGooglePrivacyDlpV2DatastoreKey--;
  return o;
}

checkGooglePrivacyDlpV2DatastoreKey(api.GooglePrivacyDlpV2DatastoreKey o) {
  buildCounterGooglePrivacyDlpV2DatastoreKey++;
  if (buildCounterGooglePrivacyDlpV2DatastoreKey < 3) {
    checkGooglePrivacyDlpV2Key(o.entityKey);
  }
  buildCounterGooglePrivacyDlpV2DatastoreKey--;
}

core.int buildCounterGooglePrivacyDlpV2DatastoreOptions = 0;
buildGooglePrivacyDlpV2DatastoreOptions() {
  var o = new api.GooglePrivacyDlpV2DatastoreOptions();
  buildCounterGooglePrivacyDlpV2DatastoreOptions++;
  if (buildCounterGooglePrivacyDlpV2DatastoreOptions < 3) {
    o.kind = buildGooglePrivacyDlpV2KindExpression();
    o.partitionId = buildGooglePrivacyDlpV2PartitionId();
  }
  buildCounterGooglePrivacyDlpV2DatastoreOptions--;
  return o;
}

checkGooglePrivacyDlpV2DatastoreOptions(
    api.GooglePrivacyDlpV2DatastoreOptions o) {
  buildCounterGooglePrivacyDlpV2DatastoreOptions++;
  if (buildCounterGooglePrivacyDlpV2DatastoreOptions < 3) {
    checkGooglePrivacyDlpV2KindExpression(o.kind);
    checkGooglePrivacyDlpV2PartitionId(o.partitionId);
  }
  buildCounterGooglePrivacyDlpV2DatastoreOptions--;
}

core.int buildCounterGooglePrivacyDlpV2DateShiftConfig = 0;
buildGooglePrivacyDlpV2DateShiftConfig() {
  var o = new api.GooglePrivacyDlpV2DateShiftConfig();
  buildCounterGooglePrivacyDlpV2DateShiftConfig++;
  if (buildCounterGooglePrivacyDlpV2DateShiftConfig < 3) {
    o.context = buildGooglePrivacyDlpV2FieldId();
    o.cryptoKey = buildGooglePrivacyDlpV2CryptoKey();
    o.lowerBoundDays = 42;
    o.upperBoundDays = 42;
  }
  buildCounterGooglePrivacyDlpV2DateShiftConfig--;
  return o;
}

checkGooglePrivacyDlpV2DateShiftConfig(
    api.GooglePrivacyDlpV2DateShiftConfig o) {
  buildCounterGooglePrivacyDlpV2DateShiftConfig++;
  if (buildCounterGooglePrivacyDlpV2DateShiftConfig < 3) {
    checkGooglePrivacyDlpV2FieldId(o.context);
    checkGooglePrivacyDlpV2CryptoKey(o.cryptoKey);
    unittest.expect(o.lowerBoundDays, unittest.equals(42));
    unittest.expect(o.upperBoundDays, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2DateShiftConfig--;
}

core.int buildCounterGooglePrivacyDlpV2DateTime = 0;
buildGooglePrivacyDlpV2DateTime() {
  var o = new api.GooglePrivacyDlpV2DateTime();
  buildCounterGooglePrivacyDlpV2DateTime++;
  if (buildCounterGooglePrivacyDlpV2DateTime < 3) {
    o.date = buildGoogleTypeDate();
    o.dayOfWeek = "foo";
    o.time = buildGoogleTypeTimeOfDay();
    o.timeZone = buildGooglePrivacyDlpV2TimeZone();
  }
  buildCounterGooglePrivacyDlpV2DateTime--;
  return o;
}

checkGooglePrivacyDlpV2DateTime(api.GooglePrivacyDlpV2DateTime o) {
  buildCounterGooglePrivacyDlpV2DateTime++;
  if (buildCounterGooglePrivacyDlpV2DateTime < 3) {
    checkGoogleTypeDate(o.date);
    unittest.expect(o.dayOfWeek, unittest.equals('foo'));
    checkGoogleTypeTimeOfDay(o.time);
    checkGooglePrivacyDlpV2TimeZone(o.timeZone);
  }
  buildCounterGooglePrivacyDlpV2DateTime--;
}

core.int buildCounterGooglePrivacyDlpV2DeidentifyConfig = 0;
buildGooglePrivacyDlpV2DeidentifyConfig() {
  var o = new api.GooglePrivacyDlpV2DeidentifyConfig();
  buildCounterGooglePrivacyDlpV2DeidentifyConfig++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyConfig < 3) {
    o.infoTypeTransformations =
        buildGooglePrivacyDlpV2InfoTypeTransformations();
    o.recordTransformations = buildGooglePrivacyDlpV2RecordTransformations();
  }
  buildCounterGooglePrivacyDlpV2DeidentifyConfig--;
  return o;
}

checkGooglePrivacyDlpV2DeidentifyConfig(
    api.GooglePrivacyDlpV2DeidentifyConfig o) {
  buildCounterGooglePrivacyDlpV2DeidentifyConfig++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyConfig < 3) {
    checkGooglePrivacyDlpV2InfoTypeTransformations(o.infoTypeTransformations);
    checkGooglePrivacyDlpV2RecordTransformations(o.recordTransformations);
  }
  buildCounterGooglePrivacyDlpV2DeidentifyConfig--;
}

core.int buildCounterGooglePrivacyDlpV2DeidentifyContentRequest = 0;
buildGooglePrivacyDlpV2DeidentifyContentRequest() {
  var o = new api.GooglePrivacyDlpV2DeidentifyContentRequest();
  buildCounterGooglePrivacyDlpV2DeidentifyContentRequest++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyContentRequest < 3) {
    o.deidentifyConfig = buildGooglePrivacyDlpV2DeidentifyConfig();
    o.deidentifyTemplateName = "foo";
    o.inspectConfig = buildGooglePrivacyDlpV2InspectConfig();
    o.inspectTemplateName = "foo";
    o.item = buildGooglePrivacyDlpV2ContentItem();
    o.location = "foo";
  }
  buildCounterGooglePrivacyDlpV2DeidentifyContentRequest--;
  return o;
}

checkGooglePrivacyDlpV2DeidentifyContentRequest(
    api.GooglePrivacyDlpV2DeidentifyContentRequest o) {
  buildCounterGooglePrivacyDlpV2DeidentifyContentRequest++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyContentRequest < 3) {
    checkGooglePrivacyDlpV2DeidentifyConfig(o.deidentifyConfig);
    unittest.expect(o.deidentifyTemplateName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2InspectConfig(o.inspectConfig);
    unittest.expect(o.inspectTemplateName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2ContentItem(o.item);
    unittest.expect(o.location, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2DeidentifyContentRequest--;
}

core.int buildCounterGooglePrivacyDlpV2DeidentifyContentResponse = 0;
buildGooglePrivacyDlpV2DeidentifyContentResponse() {
  var o = new api.GooglePrivacyDlpV2DeidentifyContentResponse();
  buildCounterGooglePrivacyDlpV2DeidentifyContentResponse++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyContentResponse < 3) {
    o.item = buildGooglePrivacyDlpV2ContentItem();
    o.overview = buildGooglePrivacyDlpV2TransformationOverview();
  }
  buildCounterGooglePrivacyDlpV2DeidentifyContentResponse--;
  return o;
}

checkGooglePrivacyDlpV2DeidentifyContentResponse(
    api.GooglePrivacyDlpV2DeidentifyContentResponse o) {
  buildCounterGooglePrivacyDlpV2DeidentifyContentResponse++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyContentResponse < 3) {
    checkGooglePrivacyDlpV2ContentItem(o.item);
    checkGooglePrivacyDlpV2TransformationOverview(o.overview);
  }
  buildCounterGooglePrivacyDlpV2DeidentifyContentResponse--;
}

core.int buildCounterGooglePrivacyDlpV2DeidentifyTemplate = 0;
buildGooglePrivacyDlpV2DeidentifyTemplate() {
  var o = new api.GooglePrivacyDlpV2DeidentifyTemplate();
  buildCounterGooglePrivacyDlpV2DeidentifyTemplate++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyTemplate < 3) {
    o.createTime = "foo";
    o.deidentifyConfig = buildGooglePrivacyDlpV2DeidentifyConfig();
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.updateTime = "foo";
  }
  buildCounterGooglePrivacyDlpV2DeidentifyTemplate--;
  return o;
}

checkGooglePrivacyDlpV2DeidentifyTemplate(
    api.GooglePrivacyDlpV2DeidentifyTemplate o) {
  buildCounterGooglePrivacyDlpV2DeidentifyTemplate++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyTemplate < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGooglePrivacyDlpV2DeidentifyConfig(o.deidentifyConfig);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2DeidentifyTemplate--;
}

buildUnnamed3836() {
  var o = new core.List<api.GooglePrivacyDlpV2StatisticalTable>();
  o.add(buildGooglePrivacyDlpV2StatisticalTable());
  o.add(buildGooglePrivacyDlpV2StatisticalTable());
  return o;
}

checkUnnamed3836(core.List<api.GooglePrivacyDlpV2StatisticalTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2StatisticalTable(o[0]);
  checkGooglePrivacyDlpV2StatisticalTable(o[1]);
}

buildUnnamed3837() {
  var o = new core.List<api.GooglePrivacyDlpV2QuasiId>();
  o.add(buildGooglePrivacyDlpV2QuasiId());
  o.add(buildGooglePrivacyDlpV2QuasiId());
  return o;
}

checkUnnamed3837(core.List<api.GooglePrivacyDlpV2QuasiId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2QuasiId(o[0]);
  checkGooglePrivacyDlpV2QuasiId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig = 0;
buildGooglePrivacyDlpV2DeltaPresenceEstimationConfig() {
  var o = new api.GooglePrivacyDlpV2DeltaPresenceEstimationConfig();
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig < 3) {
    o.auxiliaryTables = buildUnnamed3836();
    o.quasiIds = buildUnnamed3837();
    o.regionCode = "foo";
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig--;
  return o;
}

checkGooglePrivacyDlpV2DeltaPresenceEstimationConfig(
    api.GooglePrivacyDlpV2DeltaPresenceEstimationConfig o) {
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig < 3) {
    checkUnnamed3836(o.auxiliaryTables);
    checkUnnamed3837(o.quasiIds);
    unittest.expect(o.regionCode, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig--;
}

buildUnnamed3838() {
  var o = new core
      .List<api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues>();
  o.add(buildGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues());
  o.add(buildGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues());
  return o;
}

checkUnnamed3838(
    core.List<api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues(o[0]);
  checkGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket =
    0;
buildGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket() {
  var o = new api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket();
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket <
      3) {
    o.bucketSize = "foo";
    o.bucketValueCount = "foo";
    o.bucketValues = buildUnnamed3838();
    o.maxProbability = 42.0;
    o.minProbability = 42.0;
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket--;
  return o;
}

checkGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket(
    api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket <
      3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    unittest.expect(o.bucketValueCount, unittest.equals('foo'));
    checkUnnamed3838(o.bucketValues);
    unittest.expect(o.maxProbability, unittest.equals(42.0));
    unittest.expect(o.minProbability, unittest.equals(42.0));
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket--;
}

buildUnnamed3839() {
  var o = new core.List<api.GooglePrivacyDlpV2Value>();
  o.add(buildGooglePrivacyDlpV2Value());
  o.add(buildGooglePrivacyDlpV2Value());
  return o;
}

checkUnnamed3839(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0]);
  checkGooglePrivacyDlpV2Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues = 0;
buildGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues() {
  var o = new api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues();
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues < 3) {
    o.estimatedProbability = 42.0;
    o.quasiIdsValues = buildUnnamed3839();
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues--;
  return o;
}

checkGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues(
    api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues o) {
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues < 3) {
    unittest.expect(o.estimatedProbability, unittest.equals(42.0));
    checkUnnamed3839(o.quasiIdsValues);
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues--;
}

buildUnnamed3840() {
  var o = new core
      .List<api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket());
  o.add(buildGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket());
  return o;
}

checkUnnamed3840(
    core.List<api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult = 0;
buildGooglePrivacyDlpV2DeltaPresenceEstimationResult() {
  var o = new api.GooglePrivacyDlpV2DeltaPresenceEstimationResult();
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult < 3) {
    o.deltaPresenceEstimationHistogram = buildUnnamed3840();
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult--;
  return o;
}

checkGooglePrivacyDlpV2DeltaPresenceEstimationResult(
    api.GooglePrivacyDlpV2DeltaPresenceEstimationResult o) {
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult < 3) {
    checkUnnamed3840(o.deltaPresenceEstimationHistogram);
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult--;
}

core.int buildCounterGooglePrivacyDlpV2DetectionRule = 0;
buildGooglePrivacyDlpV2DetectionRule() {
  var o = new api.GooglePrivacyDlpV2DetectionRule();
  buildCounterGooglePrivacyDlpV2DetectionRule++;
  if (buildCounterGooglePrivacyDlpV2DetectionRule < 3) {
    o.hotwordRule = buildGooglePrivacyDlpV2HotwordRule();
  }
  buildCounterGooglePrivacyDlpV2DetectionRule--;
  return o;
}

checkGooglePrivacyDlpV2DetectionRule(api.GooglePrivacyDlpV2DetectionRule o) {
  buildCounterGooglePrivacyDlpV2DetectionRule++;
  if (buildCounterGooglePrivacyDlpV2DetectionRule < 3) {
    checkGooglePrivacyDlpV2HotwordRule(o.hotwordRule);
  }
  buildCounterGooglePrivacyDlpV2DetectionRule--;
}

core.int buildCounterGooglePrivacyDlpV2Dictionary = 0;
buildGooglePrivacyDlpV2Dictionary() {
  var o = new api.GooglePrivacyDlpV2Dictionary();
  buildCounterGooglePrivacyDlpV2Dictionary++;
  if (buildCounterGooglePrivacyDlpV2Dictionary < 3) {
    o.cloudStoragePath = buildGooglePrivacyDlpV2CloudStoragePath();
    o.wordList = buildGooglePrivacyDlpV2WordList();
  }
  buildCounterGooglePrivacyDlpV2Dictionary--;
  return o;
}

checkGooglePrivacyDlpV2Dictionary(api.GooglePrivacyDlpV2Dictionary o) {
  buildCounterGooglePrivacyDlpV2Dictionary++;
  if (buildCounterGooglePrivacyDlpV2Dictionary < 3) {
    checkGooglePrivacyDlpV2CloudStoragePath(o.cloudStoragePath);
    checkGooglePrivacyDlpV2WordList(o.wordList);
  }
  buildCounterGooglePrivacyDlpV2Dictionary--;
}

buildUnnamed3841() {
  var o = new core.List<api.GooglePrivacyDlpV2Error>();
  o.add(buildGooglePrivacyDlpV2Error());
  o.add(buildGooglePrivacyDlpV2Error());
  return o;
}

checkUnnamed3841(core.List<api.GooglePrivacyDlpV2Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Error(o[0]);
  checkGooglePrivacyDlpV2Error(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2DlpJob = 0;
buildGooglePrivacyDlpV2DlpJob() {
  var o = new api.GooglePrivacyDlpV2DlpJob();
  buildCounterGooglePrivacyDlpV2DlpJob++;
  if (buildCounterGooglePrivacyDlpV2DlpJob < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.errors = buildUnnamed3841();
    o.inspectDetails = buildGooglePrivacyDlpV2InspectDataSourceDetails();
    o.jobTriggerName = "foo";
    o.name = "foo";
    o.riskDetails = buildGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails();
    o.startTime = "foo";
    o.state = "foo";
    o.type = "foo";
  }
  buildCounterGooglePrivacyDlpV2DlpJob--;
  return o;
}

checkGooglePrivacyDlpV2DlpJob(api.GooglePrivacyDlpV2DlpJob o) {
  buildCounterGooglePrivacyDlpV2DlpJob++;
  if (buildCounterGooglePrivacyDlpV2DlpJob < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed3841(o.errors);
    checkGooglePrivacyDlpV2InspectDataSourceDetails(o.inspectDetails);
    unittest.expect(o.jobTriggerName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails(o.riskDetails);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2DlpJob--;
}

core.int buildCounterGooglePrivacyDlpV2DocumentLocation = 0;
buildGooglePrivacyDlpV2DocumentLocation() {
  var o = new api.GooglePrivacyDlpV2DocumentLocation();
  buildCounterGooglePrivacyDlpV2DocumentLocation++;
  if (buildCounterGooglePrivacyDlpV2DocumentLocation < 3) {
    o.fileOffset = "foo";
  }
  buildCounterGooglePrivacyDlpV2DocumentLocation--;
  return o;
}

checkGooglePrivacyDlpV2DocumentLocation(
    api.GooglePrivacyDlpV2DocumentLocation o) {
  buildCounterGooglePrivacyDlpV2DocumentLocation++;
  if (buildCounterGooglePrivacyDlpV2DocumentLocation < 3) {
    unittest.expect(o.fileOffset, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2DocumentLocation--;
}

core.int buildCounterGooglePrivacyDlpV2EntityId = 0;
buildGooglePrivacyDlpV2EntityId() {
  var o = new api.GooglePrivacyDlpV2EntityId();
  buildCounterGooglePrivacyDlpV2EntityId++;
  if (buildCounterGooglePrivacyDlpV2EntityId < 3) {
    o.field = buildGooglePrivacyDlpV2FieldId();
  }
  buildCounterGooglePrivacyDlpV2EntityId--;
  return o;
}

checkGooglePrivacyDlpV2EntityId(api.GooglePrivacyDlpV2EntityId o) {
  buildCounterGooglePrivacyDlpV2EntityId++;
  if (buildCounterGooglePrivacyDlpV2EntityId < 3) {
    checkGooglePrivacyDlpV2FieldId(o.field);
  }
  buildCounterGooglePrivacyDlpV2EntityId--;
}

buildUnnamed3842() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3842(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2Error = 0;
buildGooglePrivacyDlpV2Error() {
  var o = new api.GooglePrivacyDlpV2Error();
  buildCounterGooglePrivacyDlpV2Error++;
  if (buildCounterGooglePrivacyDlpV2Error < 3) {
    o.details = buildGoogleRpcStatus();
    o.timestamps = buildUnnamed3842();
  }
  buildCounterGooglePrivacyDlpV2Error--;
  return o;
}

checkGooglePrivacyDlpV2Error(api.GooglePrivacyDlpV2Error o) {
  buildCounterGooglePrivacyDlpV2Error++;
  if (buildCounterGooglePrivacyDlpV2Error < 3) {
    checkGoogleRpcStatus(o.details);
    checkUnnamed3842(o.timestamps);
  }
  buildCounterGooglePrivacyDlpV2Error--;
}

buildUnnamed3843() {
  var o = new core.List<api.GooglePrivacyDlpV2InfoType>();
  o.add(buildGooglePrivacyDlpV2InfoType());
  o.add(buildGooglePrivacyDlpV2InfoType());
  return o;
}

checkUnnamed3843(core.List<api.GooglePrivacyDlpV2InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoType(o[0]);
  checkGooglePrivacyDlpV2InfoType(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ExcludeInfoTypes = 0;
buildGooglePrivacyDlpV2ExcludeInfoTypes() {
  var o = new api.GooglePrivacyDlpV2ExcludeInfoTypes();
  buildCounterGooglePrivacyDlpV2ExcludeInfoTypes++;
  if (buildCounterGooglePrivacyDlpV2ExcludeInfoTypes < 3) {
    o.infoTypes = buildUnnamed3843();
  }
  buildCounterGooglePrivacyDlpV2ExcludeInfoTypes--;
  return o;
}

checkGooglePrivacyDlpV2ExcludeInfoTypes(
    api.GooglePrivacyDlpV2ExcludeInfoTypes o) {
  buildCounterGooglePrivacyDlpV2ExcludeInfoTypes++;
  if (buildCounterGooglePrivacyDlpV2ExcludeInfoTypes < 3) {
    checkUnnamed3843(o.infoTypes);
  }
  buildCounterGooglePrivacyDlpV2ExcludeInfoTypes--;
}

core.int buildCounterGooglePrivacyDlpV2ExclusionRule = 0;
buildGooglePrivacyDlpV2ExclusionRule() {
  var o = new api.GooglePrivacyDlpV2ExclusionRule();
  buildCounterGooglePrivacyDlpV2ExclusionRule++;
  if (buildCounterGooglePrivacyDlpV2ExclusionRule < 3) {
    o.dictionary = buildGooglePrivacyDlpV2Dictionary();
    o.excludeInfoTypes = buildGooglePrivacyDlpV2ExcludeInfoTypes();
    o.matchingType = "foo";
    o.regex = buildGooglePrivacyDlpV2Regex();
  }
  buildCounterGooglePrivacyDlpV2ExclusionRule--;
  return o;
}

checkGooglePrivacyDlpV2ExclusionRule(api.GooglePrivacyDlpV2ExclusionRule o) {
  buildCounterGooglePrivacyDlpV2ExclusionRule++;
  if (buildCounterGooglePrivacyDlpV2ExclusionRule < 3) {
    checkGooglePrivacyDlpV2Dictionary(o.dictionary);
    checkGooglePrivacyDlpV2ExcludeInfoTypes(o.excludeInfoTypes);
    unittest.expect(o.matchingType, unittest.equals('foo'));
    checkGooglePrivacyDlpV2Regex(o.regex);
  }
  buildCounterGooglePrivacyDlpV2ExclusionRule--;
}

core.int buildCounterGooglePrivacyDlpV2Expressions = 0;
buildGooglePrivacyDlpV2Expressions() {
  var o = new api.GooglePrivacyDlpV2Expressions();
  buildCounterGooglePrivacyDlpV2Expressions++;
  if (buildCounterGooglePrivacyDlpV2Expressions < 3) {
    o.conditions = buildGooglePrivacyDlpV2Conditions();
    o.logicalOperator = "foo";
  }
  buildCounterGooglePrivacyDlpV2Expressions--;
  return o;
}

checkGooglePrivacyDlpV2Expressions(api.GooglePrivacyDlpV2Expressions o) {
  buildCounterGooglePrivacyDlpV2Expressions++;
  if (buildCounterGooglePrivacyDlpV2Expressions < 3) {
    checkGooglePrivacyDlpV2Conditions(o.conditions);
    unittest.expect(o.logicalOperator, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2Expressions--;
}

core.int buildCounterGooglePrivacyDlpV2FieldId = 0;
buildGooglePrivacyDlpV2FieldId() {
  var o = new api.GooglePrivacyDlpV2FieldId();
  buildCounterGooglePrivacyDlpV2FieldId++;
  if (buildCounterGooglePrivacyDlpV2FieldId < 3) {
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2FieldId--;
  return o;
}

checkGooglePrivacyDlpV2FieldId(api.GooglePrivacyDlpV2FieldId o) {
  buildCounterGooglePrivacyDlpV2FieldId++;
  if (buildCounterGooglePrivacyDlpV2FieldId < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2FieldId--;
}

buildUnnamed3844() {
  var o = new core.List<api.GooglePrivacyDlpV2FieldId>();
  o.add(buildGooglePrivacyDlpV2FieldId());
  o.add(buildGooglePrivacyDlpV2FieldId());
  return o;
}

checkUnnamed3844(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0]);
  checkGooglePrivacyDlpV2FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2FieldTransformation = 0;
buildGooglePrivacyDlpV2FieldTransformation() {
  var o = new api.GooglePrivacyDlpV2FieldTransformation();
  buildCounterGooglePrivacyDlpV2FieldTransformation++;
  if (buildCounterGooglePrivacyDlpV2FieldTransformation < 3) {
    o.condition = buildGooglePrivacyDlpV2RecordCondition();
    o.fields = buildUnnamed3844();
    o.infoTypeTransformations =
        buildGooglePrivacyDlpV2InfoTypeTransformations();
    o.primitiveTransformation =
        buildGooglePrivacyDlpV2PrimitiveTransformation();
  }
  buildCounterGooglePrivacyDlpV2FieldTransformation--;
  return o;
}

checkGooglePrivacyDlpV2FieldTransformation(
    api.GooglePrivacyDlpV2FieldTransformation o) {
  buildCounterGooglePrivacyDlpV2FieldTransformation++;
  if (buildCounterGooglePrivacyDlpV2FieldTransformation < 3) {
    checkGooglePrivacyDlpV2RecordCondition(o.condition);
    checkUnnamed3844(o.fields);
    checkGooglePrivacyDlpV2InfoTypeTransformations(o.infoTypeTransformations);
    checkGooglePrivacyDlpV2PrimitiveTransformation(o.primitiveTransformation);
  }
  buildCounterGooglePrivacyDlpV2FieldTransformation--;
}

core.int buildCounterGooglePrivacyDlpV2FileSet = 0;
buildGooglePrivacyDlpV2FileSet() {
  var o = new api.GooglePrivacyDlpV2FileSet();
  buildCounterGooglePrivacyDlpV2FileSet++;
  if (buildCounterGooglePrivacyDlpV2FileSet < 3) {
    o.regexFileSet = buildGooglePrivacyDlpV2CloudStorageRegexFileSet();
    o.url = "foo";
  }
  buildCounterGooglePrivacyDlpV2FileSet--;
  return o;
}

checkGooglePrivacyDlpV2FileSet(api.GooglePrivacyDlpV2FileSet o) {
  buildCounterGooglePrivacyDlpV2FileSet++;
  if (buildCounterGooglePrivacyDlpV2FileSet < 3) {
    checkGooglePrivacyDlpV2CloudStorageRegexFileSet(o.regexFileSet);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2FileSet--;
}

core.int buildCounterGooglePrivacyDlpV2Finding = 0;
buildGooglePrivacyDlpV2Finding() {
  var o = new api.GooglePrivacyDlpV2Finding();
  buildCounterGooglePrivacyDlpV2Finding++;
  if (buildCounterGooglePrivacyDlpV2Finding < 3) {
    o.createTime = "foo";
    o.infoType = buildGooglePrivacyDlpV2InfoType();
    o.likelihood = "foo";
    o.location = buildGooglePrivacyDlpV2Location();
    o.quote = "foo";
    o.quoteInfo = buildGooglePrivacyDlpV2QuoteInfo();
  }
  buildCounterGooglePrivacyDlpV2Finding--;
  return o;
}

checkGooglePrivacyDlpV2Finding(api.GooglePrivacyDlpV2Finding o) {
  buildCounterGooglePrivacyDlpV2Finding++;
  if (buildCounterGooglePrivacyDlpV2Finding < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGooglePrivacyDlpV2InfoType(o.infoType);
    unittest.expect(o.likelihood, unittest.equals('foo'));
    checkGooglePrivacyDlpV2Location(o.location);
    unittest.expect(o.quote, unittest.equals('foo'));
    checkGooglePrivacyDlpV2QuoteInfo(o.quoteInfo);
  }
  buildCounterGooglePrivacyDlpV2Finding--;
}

buildUnnamed3845() {
  var o = new core.List<api.GooglePrivacyDlpV2InfoTypeLimit>();
  o.add(buildGooglePrivacyDlpV2InfoTypeLimit());
  o.add(buildGooglePrivacyDlpV2InfoTypeLimit());
  return o;
}

checkUnnamed3845(core.List<api.GooglePrivacyDlpV2InfoTypeLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoTypeLimit(o[0]);
  checkGooglePrivacyDlpV2InfoTypeLimit(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2FindingLimits = 0;
buildGooglePrivacyDlpV2FindingLimits() {
  var o = new api.GooglePrivacyDlpV2FindingLimits();
  buildCounterGooglePrivacyDlpV2FindingLimits++;
  if (buildCounterGooglePrivacyDlpV2FindingLimits < 3) {
    o.maxFindingsPerInfoType = buildUnnamed3845();
    o.maxFindingsPerItem = 42;
    o.maxFindingsPerRequest = 42;
  }
  buildCounterGooglePrivacyDlpV2FindingLimits--;
  return o;
}

checkGooglePrivacyDlpV2FindingLimits(api.GooglePrivacyDlpV2FindingLimits o) {
  buildCounterGooglePrivacyDlpV2FindingLimits++;
  if (buildCounterGooglePrivacyDlpV2FindingLimits < 3) {
    checkUnnamed3845(o.maxFindingsPerInfoType);
    unittest.expect(o.maxFindingsPerItem, unittest.equals(42));
    unittest.expect(o.maxFindingsPerRequest, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2FindingLimits--;
}

core.int buildCounterGooglePrivacyDlpV2FixedSizeBucketingConfig = 0;
buildGooglePrivacyDlpV2FixedSizeBucketingConfig() {
  var o = new api.GooglePrivacyDlpV2FixedSizeBucketingConfig();
  buildCounterGooglePrivacyDlpV2FixedSizeBucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2FixedSizeBucketingConfig < 3) {
    o.bucketSize = 42.0;
    o.lowerBound = buildGooglePrivacyDlpV2Value();
    o.upperBound = buildGooglePrivacyDlpV2Value();
  }
  buildCounterGooglePrivacyDlpV2FixedSizeBucketingConfig--;
  return o;
}

checkGooglePrivacyDlpV2FixedSizeBucketingConfig(
    api.GooglePrivacyDlpV2FixedSizeBucketingConfig o) {
  buildCounterGooglePrivacyDlpV2FixedSizeBucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2FixedSizeBucketingConfig < 3) {
    unittest.expect(o.bucketSize, unittest.equals(42.0));
    checkGooglePrivacyDlpV2Value(o.lowerBound);
    checkGooglePrivacyDlpV2Value(o.upperBound);
  }
  buildCounterGooglePrivacyDlpV2FixedSizeBucketingConfig--;
}

core.int buildCounterGooglePrivacyDlpV2HotwordRule = 0;
buildGooglePrivacyDlpV2HotwordRule() {
  var o = new api.GooglePrivacyDlpV2HotwordRule();
  buildCounterGooglePrivacyDlpV2HotwordRule++;
  if (buildCounterGooglePrivacyDlpV2HotwordRule < 3) {
    o.hotwordRegex = buildGooglePrivacyDlpV2Regex();
    o.likelihoodAdjustment = buildGooglePrivacyDlpV2LikelihoodAdjustment();
    o.proximity = buildGooglePrivacyDlpV2Proximity();
  }
  buildCounterGooglePrivacyDlpV2HotwordRule--;
  return o;
}

checkGooglePrivacyDlpV2HotwordRule(api.GooglePrivacyDlpV2HotwordRule o) {
  buildCounterGooglePrivacyDlpV2HotwordRule++;
  if (buildCounterGooglePrivacyDlpV2HotwordRule < 3) {
    checkGooglePrivacyDlpV2Regex(o.hotwordRegex);
    checkGooglePrivacyDlpV2LikelihoodAdjustment(o.likelihoodAdjustment);
    checkGooglePrivacyDlpV2Proximity(o.proximity);
  }
  buildCounterGooglePrivacyDlpV2HotwordRule--;
}

buildUnnamed3846() {
  var o = new core.List<api.GooglePrivacyDlpV2BoundingBox>();
  o.add(buildGooglePrivacyDlpV2BoundingBox());
  o.add(buildGooglePrivacyDlpV2BoundingBox());
  return o;
}

checkUnnamed3846(core.List<api.GooglePrivacyDlpV2BoundingBox> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2BoundingBox(o[0]);
  checkGooglePrivacyDlpV2BoundingBox(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ImageLocation = 0;
buildGooglePrivacyDlpV2ImageLocation() {
  var o = new api.GooglePrivacyDlpV2ImageLocation();
  buildCounterGooglePrivacyDlpV2ImageLocation++;
  if (buildCounterGooglePrivacyDlpV2ImageLocation < 3) {
    o.boundingBoxes = buildUnnamed3846();
  }
  buildCounterGooglePrivacyDlpV2ImageLocation--;
  return o;
}

checkGooglePrivacyDlpV2ImageLocation(api.GooglePrivacyDlpV2ImageLocation o) {
  buildCounterGooglePrivacyDlpV2ImageLocation++;
  if (buildCounterGooglePrivacyDlpV2ImageLocation < 3) {
    checkUnnamed3846(o.boundingBoxes);
  }
  buildCounterGooglePrivacyDlpV2ImageLocation--;
}

core.int buildCounterGooglePrivacyDlpV2ImageRedactionConfig = 0;
buildGooglePrivacyDlpV2ImageRedactionConfig() {
  var o = new api.GooglePrivacyDlpV2ImageRedactionConfig();
  buildCounterGooglePrivacyDlpV2ImageRedactionConfig++;
  if (buildCounterGooglePrivacyDlpV2ImageRedactionConfig < 3) {
    o.infoType = buildGooglePrivacyDlpV2InfoType();
    o.redactAllText = true;
    o.redactionColor = buildGooglePrivacyDlpV2Color();
  }
  buildCounterGooglePrivacyDlpV2ImageRedactionConfig--;
  return o;
}

checkGooglePrivacyDlpV2ImageRedactionConfig(
    api.GooglePrivacyDlpV2ImageRedactionConfig o) {
  buildCounterGooglePrivacyDlpV2ImageRedactionConfig++;
  if (buildCounterGooglePrivacyDlpV2ImageRedactionConfig < 3) {
    checkGooglePrivacyDlpV2InfoType(o.infoType);
    unittest.expect(o.redactAllText, unittest.isTrue);
    checkGooglePrivacyDlpV2Color(o.redactionColor);
  }
  buildCounterGooglePrivacyDlpV2ImageRedactionConfig--;
}

core.int buildCounterGooglePrivacyDlpV2InfoType = 0;
buildGooglePrivacyDlpV2InfoType() {
  var o = new api.GooglePrivacyDlpV2InfoType();
  buildCounterGooglePrivacyDlpV2InfoType++;
  if (buildCounterGooglePrivacyDlpV2InfoType < 3) {
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2InfoType--;
  return o;
}

checkGooglePrivacyDlpV2InfoType(api.GooglePrivacyDlpV2InfoType o) {
  buildCounterGooglePrivacyDlpV2InfoType++;
  if (buildCounterGooglePrivacyDlpV2InfoType < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2InfoType--;
}

buildUnnamed3847() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3847(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2InfoTypeDescription = 0;
buildGooglePrivacyDlpV2InfoTypeDescription() {
  var o = new api.GooglePrivacyDlpV2InfoTypeDescription();
  buildCounterGooglePrivacyDlpV2InfoTypeDescription++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeDescription < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.supportedBy = buildUnnamed3847();
  }
  buildCounterGooglePrivacyDlpV2InfoTypeDescription--;
  return o;
}

checkGooglePrivacyDlpV2InfoTypeDescription(
    api.GooglePrivacyDlpV2InfoTypeDescription o) {
  buildCounterGooglePrivacyDlpV2InfoTypeDescription++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeDescription < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3847(o.supportedBy);
  }
  buildCounterGooglePrivacyDlpV2InfoTypeDescription--;
}

core.int buildCounterGooglePrivacyDlpV2InfoTypeLimit = 0;
buildGooglePrivacyDlpV2InfoTypeLimit() {
  var o = new api.GooglePrivacyDlpV2InfoTypeLimit();
  buildCounterGooglePrivacyDlpV2InfoTypeLimit++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeLimit < 3) {
    o.infoType = buildGooglePrivacyDlpV2InfoType();
    o.maxFindings = 42;
  }
  buildCounterGooglePrivacyDlpV2InfoTypeLimit--;
  return o;
}

checkGooglePrivacyDlpV2InfoTypeLimit(api.GooglePrivacyDlpV2InfoTypeLimit o) {
  buildCounterGooglePrivacyDlpV2InfoTypeLimit++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeLimit < 3) {
    checkGooglePrivacyDlpV2InfoType(o.infoType);
    unittest.expect(o.maxFindings, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2InfoTypeLimit--;
}

core.int buildCounterGooglePrivacyDlpV2InfoTypeStats = 0;
buildGooglePrivacyDlpV2InfoTypeStats() {
  var o = new api.GooglePrivacyDlpV2InfoTypeStats();
  buildCounterGooglePrivacyDlpV2InfoTypeStats++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeStats < 3) {
    o.count = "foo";
    o.infoType = buildGooglePrivacyDlpV2InfoType();
  }
  buildCounterGooglePrivacyDlpV2InfoTypeStats--;
  return o;
}

checkGooglePrivacyDlpV2InfoTypeStats(api.GooglePrivacyDlpV2InfoTypeStats o) {
  buildCounterGooglePrivacyDlpV2InfoTypeStats++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeStats < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    checkGooglePrivacyDlpV2InfoType(o.infoType);
  }
  buildCounterGooglePrivacyDlpV2InfoTypeStats--;
}

buildUnnamed3848() {
  var o = new core.List<api.GooglePrivacyDlpV2InfoType>();
  o.add(buildGooglePrivacyDlpV2InfoType());
  o.add(buildGooglePrivacyDlpV2InfoType());
  return o;
}

checkUnnamed3848(core.List<api.GooglePrivacyDlpV2InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoType(o[0]);
  checkGooglePrivacyDlpV2InfoType(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2InfoTypeTransformation = 0;
buildGooglePrivacyDlpV2InfoTypeTransformation() {
  var o = new api.GooglePrivacyDlpV2InfoTypeTransformation();
  buildCounterGooglePrivacyDlpV2InfoTypeTransformation++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeTransformation < 3) {
    o.infoTypes = buildUnnamed3848();
    o.primitiveTransformation =
        buildGooglePrivacyDlpV2PrimitiveTransformation();
  }
  buildCounterGooglePrivacyDlpV2InfoTypeTransformation--;
  return o;
}

checkGooglePrivacyDlpV2InfoTypeTransformation(
    api.GooglePrivacyDlpV2InfoTypeTransformation o) {
  buildCounterGooglePrivacyDlpV2InfoTypeTransformation++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeTransformation < 3) {
    checkUnnamed3848(o.infoTypes);
    checkGooglePrivacyDlpV2PrimitiveTransformation(o.primitiveTransformation);
  }
  buildCounterGooglePrivacyDlpV2InfoTypeTransformation--;
}

buildUnnamed3849() {
  var o = new core.List<api.GooglePrivacyDlpV2InfoTypeTransformation>();
  o.add(buildGooglePrivacyDlpV2InfoTypeTransformation());
  o.add(buildGooglePrivacyDlpV2InfoTypeTransformation());
  return o;
}

checkUnnamed3849(core.List<api.GooglePrivacyDlpV2InfoTypeTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoTypeTransformation(o[0]);
  checkGooglePrivacyDlpV2InfoTypeTransformation(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2InfoTypeTransformations = 0;
buildGooglePrivacyDlpV2InfoTypeTransformations() {
  var o = new api.GooglePrivacyDlpV2InfoTypeTransformations();
  buildCounterGooglePrivacyDlpV2InfoTypeTransformations++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeTransformations < 3) {
    o.transformations = buildUnnamed3849();
  }
  buildCounterGooglePrivacyDlpV2InfoTypeTransformations--;
  return o;
}

checkGooglePrivacyDlpV2InfoTypeTransformations(
    api.GooglePrivacyDlpV2InfoTypeTransformations o) {
  buildCounterGooglePrivacyDlpV2InfoTypeTransformations++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeTransformations < 3) {
    checkUnnamed3849(o.transformations);
  }
  buildCounterGooglePrivacyDlpV2InfoTypeTransformations--;
}

buildUnnamed3850() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3850(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3851() {
  var o = new core.List<api.GooglePrivacyDlpV2CustomInfoType>();
  o.add(buildGooglePrivacyDlpV2CustomInfoType());
  o.add(buildGooglePrivacyDlpV2CustomInfoType());
  return o;
}

checkUnnamed3851(core.List<api.GooglePrivacyDlpV2CustomInfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2CustomInfoType(o[0]);
  checkGooglePrivacyDlpV2CustomInfoType(o[1]);
}

buildUnnamed3852() {
  var o = new core.List<api.GooglePrivacyDlpV2InfoType>();
  o.add(buildGooglePrivacyDlpV2InfoType());
  o.add(buildGooglePrivacyDlpV2InfoType());
  return o;
}

checkUnnamed3852(core.List<api.GooglePrivacyDlpV2InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoType(o[0]);
  checkGooglePrivacyDlpV2InfoType(o[1]);
}

buildUnnamed3853() {
  var o = new core.List<api.GooglePrivacyDlpV2InspectionRuleSet>();
  o.add(buildGooglePrivacyDlpV2InspectionRuleSet());
  o.add(buildGooglePrivacyDlpV2InspectionRuleSet());
  return o;
}

checkUnnamed3853(core.List<api.GooglePrivacyDlpV2InspectionRuleSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InspectionRuleSet(o[0]);
  checkGooglePrivacyDlpV2InspectionRuleSet(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2InspectConfig = 0;
buildGooglePrivacyDlpV2InspectConfig() {
  var o = new api.GooglePrivacyDlpV2InspectConfig();
  buildCounterGooglePrivacyDlpV2InspectConfig++;
  if (buildCounterGooglePrivacyDlpV2InspectConfig < 3) {
    o.contentOptions = buildUnnamed3850();
    o.customInfoTypes = buildUnnamed3851();
    o.excludeInfoTypes = true;
    o.includeQuote = true;
    o.infoTypes = buildUnnamed3852();
    o.limits = buildGooglePrivacyDlpV2FindingLimits();
    o.minLikelihood = "foo";
    o.ruleSet = buildUnnamed3853();
  }
  buildCounterGooglePrivacyDlpV2InspectConfig--;
  return o;
}

checkGooglePrivacyDlpV2InspectConfig(api.GooglePrivacyDlpV2InspectConfig o) {
  buildCounterGooglePrivacyDlpV2InspectConfig++;
  if (buildCounterGooglePrivacyDlpV2InspectConfig < 3) {
    checkUnnamed3850(o.contentOptions);
    checkUnnamed3851(o.customInfoTypes);
    unittest.expect(o.excludeInfoTypes, unittest.isTrue);
    unittest.expect(o.includeQuote, unittest.isTrue);
    checkUnnamed3852(o.infoTypes);
    checkGooglePrivacyDlpV2FindingLimits(o.limits);
    unittest.expect(o.minLikelihood, unittest.equals('foo'));
    checkUnnamed3853(o.ruleSet);
  }
  buildCounterGooglePrivacyDlpV2InspectConfig--;
}

core.int buildCounterGooglePrivacyDlpV2InspectContentRequest = 0;
buildGooglePrivacyDlpV2InspectContentRequest() {
  var o = new api.GooglePrivacyDlpV2InspectContentRequest();
  buildCounterGooglePrivacyDlpV2InspectContentRequest++;
  if (buildCounterGooglePrivacyDlpV2InspectContentRequest < 3) {
    o.inspectConfig = buildGooglePrivacyDlpV2InspectConfig();
    o.inspectTemplateName = "foo";
    o.item = buildGooglePrivacyDlpV2ContentItem();
  }
  buildCounterGooglePrivacyDlpV2InspectContentRequest--;
  return o;
}

checkGooglePrivacyDlpV2InspectContentRequest(
    api.GooglePrivacyDlpV2InspectContentRequest o) {
  buildCounterGooglePrivacyDlpV2InspectContentRequest++;
  if (buildCounterGooglePrivacyDlpV2InspectContentRequest < 3) {
    checkGooglePrivacyDlpV2InspectConfig(o.inspectConfig);
    unittest.expect(o.inspectTemplateName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2ContentItem(o.item);
  }
  buildCounterGooglePrivacyDlpV2InspectContentRequest--;
}

core.int buildCounterGooglePrivacyDlpV2InspectContentResponse = 0;
buildGooglePrivacyDlpV2InspectContentResponse() {
  var o = new api.GooglePrivacyDlpV2InspectContentResponse();
  buildCounterGooglePrivacyDlpV2InspectContentResponse++;
  if (buildCounterGooglePrivacyDlpV2InspectContentResponse < 3) {
    o.result = buildGooglePrivacyDlpV2InspectResult();
  }
  buildCounterGooglePrivacyDlpV2InspectContentResponse--;
  return o;
}

checkGooglePrivacyDlpV2InspectContentResponse(
    api.GooglePrivacyDlpV2InspectContentResponse o) {
  buildCounterGooglePrivacyDlpV2InspectContentResponse++;
  if (buildCounterGooglePrivacyDlpV2InspectContentResponse < 3) {
    checkGooglePrivacyDlpV2InspectResult(o.result);
  }
  buildCounterGooglePrivacyDlpV2InspectContentResponse--;
}

core.int buildCounterGooglePrivacyDlpV2InspectDataSourceDetails = 0;
buildGooglePrivacyDlpV2InspectDataSourceDetails() {
  var o = new api.GooglePrivacyDlpV2InspectDataSourceDetails();
  buildCounterGooglePrivacyDlpV2InspectDataSourceDetails++;
  if (buildCounterGooglePrivacyDlpV2InspectDataSourceDetails < 3) {
    o.requestedOptions = buildGooglePrivacyDlpV2RequestedOptions();
    o.result = buildGooglePrivacyDlpV2Result();
  }
  buildCounterGooglePrivacyDlpV2InspectDataSourceDetails--;
  return o;
}

checkGooglePrivacyDlpV2InspectDataSourceDetails(
    api.GooglePrivacyDlpV2InspectDataSourceDetails o) {
  buildCounterGooglePrivacyDlpV2InspectDataSourceDetails++;
  if (buildCounterGooglePrivacyDlpV2InspectDataSourceDetails < 3) {
    checkGooglePrivacyDlpV2RequestedOptions(o.requestedOptions);
    checkGooglePrivacyDlpV2Result(o.result);
  }
  buildCounterGooglePrivacyDlpV2InspectDataSourceDetails--;
}

buildUnnamed3854() {
  var o = new core.List<api.GooglePrivacyDlpV2Action>();
  o.add(buildGooglePrivacyDlpV2Action());
  o.add(buildGooglePrivacyDlpV2Action());
  return o;
}

checkUnnamed3854(core.List<api.GooglePrivacyDlpV2Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Action(o[0]);
  checkGooglePrivacyDlpV2Action(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2InspectJobConfig = 0;
buildGooglePrivacyDlpV2InspectJobConfig() {
  var o = new api.GooglePrivacyDlpV2InspectJobConfig();
  buildCounterGooglePrivacyDlpV2InspectJobConfig++;
  if (buildCounterGooglePrivacyDlpV2InspectJobConfig < 3) {
    o.actions = buildUnnamed3854();
    o.inspectConfig = buildGooglePrivacyDlpV2InspectConfig();
    o.inspectTemplateName = "foo";
    o.storageConfig = buildGooglePrivacyDlpV2StorageConfig();
  }
  buildCounterGooglePrivacyDlpV2InspectJobConfig--;
  return o;
}

checkGooglePrivacyDlpV2InspectJobConfig(
    api.GooglePrivacyDlpV2InspectJobConfig o) {
  buildCounterGooglePrivacyDlpV2InspectJobConfig++;
  if (buildCounterGooglePrivacyDlpV2InspectJobConfig < 3) {
    checkUnnamed3854(o.actions);
    checkGooglePrivacyDlpV2InspectConfig(o.inspectConfig);
    unittest.expect(o.inspectTemplateName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2StorageConfig(o.storageConfig);
  }
  buildCounterGooglePrivacyDlpV2InspectJobConfig--;
}

buildUnnamed3855() {
  var o = new core.List<api.GooglePrivacyDlpV2Finding>();
  o.add(buildGooglePrivacyDlpV2Finding());
  o.add(buildGooglePrivacyDlpV2Finding());
  return o;
}

checkUnnamed3855(core.List<api.GooglePrivacyDlpV2Finding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Finding(o[0]);
  checkGooglePrivacyDlpV2Finding(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2InspectResult = 0;
buildGooglePrivacyDlpV2InspectResult() {
  var o = new api.GooglePrivacyDlpV2InspectResult();
  buildCounterGooglePrivacyDlpV2InspectResult++;
  if (buildCounterGooglePrivacyDlpV2InspectResult < 3) {
    o.findings = buildUnnamed3855();
    o.findingsTruncated = true;
  }
  buildCounterGooglePrivacyDlpV2InspectResult--;
  return o;
}

checkGooglePrivacyDlpV2InspectResult(api.GooglePrivacyDlpV2InspectResult o) {
  buildCounterGooglePrivacyDlpV2InspectResult++;
  if (buildCounterGooglePrivacyDlpV2InspectResult < 3) {
    checkUnnamed3855(o.findings);
    unittest.expect(o.findingsTruncated, unittest.isTrue);
  }
  buildCounterGooglePrivacyDlpV2InspectResult--;
}

core.int buildCounterGooglePrivacyDlpV2InspectTemplate = 0;
buildGooglePrivacyDlpV2InspectTemplate() {
  var o = new api.GooglePrivacyDlpV2InspectTemplate();
  buildCounterGooglePrivacyDlpV2InspectTemplate++;
  if (buildCounterGooglePrivacyDlpV2InspectTemplate < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.inspectConfig = buildGooglePrivacyDlpV2InspectConfig();
    o.name = "foo";
    o.updateTime = "foo";
  }
  buildCounterGooglePrivacyDlpV2InspectTemplate--;
  return o;
}

checkGooglePrivacyDlpV2InspectTemplate(
    api.GooglePrivacyDlpV2InspectTemplate o) {
  buildCounterGooglePrivacyDlpV2InspectTemplate++;
  if (buildCounterGooglePrivacyDlpV2InspectTemplate < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2InspectConfig(o.inspectConfig);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2InspectTemplate--;
}

core.int buildCounterGooglePrivacyDlpV2InspectionRule = 0;
buildGooglePrivacyDlpV2InspectionRule() {
  var o = new api.GooglePrivacyDlpV2InspectionRule();
  buildCounterGooglePrivacyDlpV2InspectionRule++;
  if (buildCounterGooglePrivacyDlpV2InspectionRule < 3) {
    o.exclusionRule = buildGooglePrivacyDlpV2ExclusionRule();
    o.hotwordRule = buildGooglePrivacyDlpV2HotwordRule();
  }
  buildCounterGooglePrivacyDlpV2InspectionRule--;
  return o;
}

checkGooglePrivacyDlpV2InspectionRule(api.GooglePrivacyDlpV2InspectionRule o) {
  buildCounterGooglePrivacyDlpV2InspectionRule++;
  if (buildCounterGooglePrivacyDlpV2InspectionRule < 3) {
    checkGooglePrivacyDlpV2ExclusionRule(o.exclusionRule);
    checkGooglePrivacyDlpV2HotwordRule(o.hotwordRule);
  }
  buildCounterGooglePrivacyDlpV2InspectionRule--;
}

buildUnnamed3856() {
  var o = new core.List<api.GooglePrivacyDlpV2InfoType>();
  o.add(buildGooglePrivacyDlpV2InfoType());
  o.add(buildGooglePrivacyDlpV2InfoType());
  return o;
}

checkUnnamed3856(core.List<api.GooglePrivacyDlpV2InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoType(o[0]);
  checkGooglePrivacyDlpV2InfoType(o[1]);
}

buildUnnamed3857() {
  var o = new core.List<api.GooglePrivacyDlpV2InspectionRule>();
  o.add(buildGooglePrivacyDlpV2InspectionRule());
  o.add(buildGooglePrivacyDlpV2InspectionRule());
  return o;
}

checkUnnamed3857(core.List<api.GooglePrivacyDlpV2InspectionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InspectionRule(o[0]);
  checkGooglePrivacyDlpV2InspectionRule(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2InspectionRuleSet = 0;
buildGooglePrivacyDlpV2InspectionRuleSet() {
  var o = new api.GooglePrivacyDlpV2InspectionRuleSet();
  buildCounterGooglePrivacyDlpV2InspectionRuleSet++;
  if (buildCounterGooglePrivacyDlpV2InspectionRuleSet < 3) {
    o.infoTypes = buildUnnamed3856();
    o.rules = buildUnnamed3857();
  }
  buildCounterGooglePrivacyDlpV2InspectionRuleSet--;
  return o;
}

checkGooglePrivacyDlpV2InspectionRuleSet(
    api.GooglePrivacyDlpV2InspectionRuleSet o) {
  buildCounterGooglePrivacyDlpV2InspectionRuleSet++;
  if (buildCounterGooglePrivacyDlpV2InspectionRuleSet < 3) {
    checkUnnamed3856(o.infoTypes);
    checkUnnamed3857(o.rules);
  }
  buildCounterGooglePrivacyDlpV2InspectionRuleSet--;
}

core.int buildCounterGooglePrivacyDlpV2JobNotificationEmails = 0;
buildGooglePrivacyDlpV2JobNotificationEmails() {
  var o = new api.GooglePrivacyDlpV2JobNotificationEmails();
  buildCounterGooglePrivacyDlpV2JobNotificationEmails++;
  if (buildCounterGooglePrivacyDlpV2JobNotificationEmails < 3) {}
  buildCounterGooglePrivacyDlpV2JobNotificationEmails--;
  return o;
}

checkGooglePrivacyDlpV2JobNotificationEmails(
    api.GooglePrivacyDlpV2JobNotificationEmails o) {
  buildCounterGooglePrivacyDlpV2JobNotificationEmails++;
  if (buildCounterGooglePrivacyDlpV2JobNotificationEmails < 3) {}
  buildCounterGooglePrivacyDlpV2JobNotificationEmails--;
}

buildUnnamed3858() {
  var o = new core.List<api.GooglePrivacyDlpV2Error>();
  o.add(buildGooglePrivacyDlpV2Error());
  o.add(buildGooglePrivacyDlpV2Error());
  return o;
}

checkUnnamed3858(core.List<api.GooglePrivacyDlpV2Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Error(o[0]);
  checkGooglePrivacyDlpV2Error(o[1]);
}

buildUnnamed3859() {
  var o = new core.List<api.GooglePrivacyDlpV2Trigger>();
  o.add(buildGooglePrivacyDlpV2Trigger());
  o.add(buildGooglePrivacyDlpV2Trigger());
  return o;
}

checkUnnamed3859(core.List<api.GooglePrivacyDlpV2Trigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Trigger(o[0]);
  checkGooglePrivacyDlpV2Trigger(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2JobTrigger = 0;
buildGooglePrivacyDlpV2JobTrigger() {
  var o = new api.GooglePrivacyDlpV2JobTrigger();
  buildCounterGooglePrivacyDlpV2JobTrigger++;
  if (buildCounterGooglePrivacyDlpV2JobTrigger < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.errors = buildUnnamed3858();
    o.inspectJob = buildGooglePrivacyDlpV2InspectJobConfig();
    o.lastRunTime = "foo";
    o.name = "foo";
    o.status = "foo";
    o.triggers = buildUnnamed3859();
    o.updateTime = "foo";
  }
  buildCounterGooglePrivacyDlpV2JobTrigger--;
  return o;
}

checkGooglePrivacyDlpV2JobTrigger(api.GooglePrivacyDlpV2JobTrigger o) {
  buildCounterGooglePrivacyDlpV2JobTrigger++;
  if (buildCounterGooglePrivacyDlpV2JobTrigger < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3858(o.errors);
    checkGooglePrivacyDlpV2InspectJobConfig(o.inspectJob);
    unittest.expect(o.lastRunTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed3859(o.triggers);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2JobTrigger--;
}

buildUnnamed3860() {
  var o = new core.List<api.GooglePrivacyDlpV2FieldId>();
  o.add(buildGooglePrivacyDlpV2FieldId());
  o.add(buildGooglePrivacyDlpV2FieldId());
  return o;
}

checkUnnamed3860(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0]);
  checkGooglePrivacyDlpV2FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KAnonymityConfig = 0;
buildGooglePrivacyDlpV2KAnonymityConfig() {
  var o = new api.GooglePrivacyDlpV2KAnonymityConfig();
  buildCounterGooglePrivacyDlpV2KAnonymityConfig++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityConfig < 3) {
    o.entityId = buildGooglePrivacyDlpV2EntityId();
    o.quasiIds = buildUnnamed3860();
  }
  buildCounterGooglePrivacyDlpV2KAnonymityConfig--;
  return o;
}

checkGooglePrivacyDlpV2KAnonymityConfig(
    api.GooglePrivacyDlpV2KAnonymityConfig o) {
  buildCounterGooglePrivacyDlpV2KAnonymityConfig++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityConfig < 3) {
    checkGooglePrivacyDlpV2EntityId(o.entityId);
    checkUnnamed3860(o.quasiIds);
  }
  buildCounterGooglePrivacyDlpV2KAnonymityConfig--;
}

buildUnnamed3861() {
  var o = new core.List<api.GooglePrivacyDlpV2Value>();
  o.add(buildGooglePrivacyDlpV2Value());
  o.add(buildGooglePrivacyDlpV2Value());
  return o;
}

checkUnnamed3861(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0]);
  checkGooglePrivacyDlpV2Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass = 0;
buildGooglePrivacyDlpV2KAnonymityEquivalenceClass() {
  var o = new api.GooglePrivacyDlpV2KAnonymityEquivalenceClass();
  buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass < 3) {
    o.equivalenceClassSize = "foo";
    o.quasiIdsValues = buildUnnamed3861();
  }
  buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass--;
  return o;
}

checkGooglePrivacyDlpV2KAnonymityEquivalenceClass(
    api.GooglePrivacyDlpV2KAnonymityEquivalenceClass o) {
  buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass < 3) {
    unittest.expect(o.equivalenceClassSize, unittest.equals('foo'));
    checkUnnamed3861(o.quasiIdsValues);
  }
  buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass--;
}

buildUnnamed3862() {
  var o = new core.List<api.GooglePrivacyDlpV2KAnonymityEquivalenceClass>();
  o.add(buildGooglePrivacyDlpV2KAnonymityEquivalenceClass());
  o.add(buildGooglePrivacyDlpV2KAnonymityEquivalenceClass());
  return o;
}

checkUnnamed3862(
    core.List<api.GooglePrivacyDlpV2KAnonymityEquivalenceClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2KAnonymityEquivalenceClass(o[0]);
  checkGooglePrivacyDlpV2KAnonymityEquivalenceClass(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket = 0;
buildGooglePrivacyDlpV2KAnonymityHistogramBucket() {
  var o = new api.GooglePrivacyDlpV2KAnonymityHistogramBucket();
  buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket < 3) {
    o.bucketSize = "foo";
    o.bucketValueCount = "foo";
    o.bucketValues = buildUnnamed3862();
    o.equivalenceClassSizeLowerBound = "foo";
    o.equivalenceClassSizeUpperBound = "foo";
  }
  buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket--;
  return o;
}

checkGooglePrivacyDlpV2KAnonymityHistogramBucket(
    api.GooglePrivacyDlpV2KAnonymityHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    unittest.expect(o.bucketValueCount, unittest.equals('foo'));
    checkUnnamed3862(o.bucketValues);
    unittest.expect(o.equivalenceClassSizeLowerBound, unittest.equals('foo'));
    unittest.expect(o.equivalenceClassSizeUpperBound, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket--;
}

buildUnnamed3863() {
  var o = new core.List<api.GooglePrivacyDlpV2KAnonymityHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2KAnonymityHistogramBucket());
  o.add(buildGooglePrivacyDlpV2KAnonymityHistogramBucket());
  return o;
}

checkUnnamed3863(core.List<api.GooglePrivacyDlpV2KAnonymityHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2KAnonymityHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2KAnonymityHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KAnonymityResult = 0;
buildGooglePrivacyDlpV2KAnonymityResult() {
  var o = new api.GooglePrivacyDlpV2KAnonymityResult();
  buildCounterGooglePrivacyDlpV2KAnonymityResult++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityResult < 3) {
    o.equivalenceClassHistogramBuckets = buildUnnamed3863();
  }
  buildCounterGooglePrivacyDlpV2KAnonymityResult--;
  return o;
}

checkGooglePrivacyDlpV2KAnonymityResult(
    api.GooglePrivacyDlpV2KAnonymityResult o) {
  buildCounterGooglePrivacyDlpV2KAnonymityResult++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityResult < 3) {
    checkUnnamed3863(o.equivalenceClassHistogramBuckets);
  }
  buildCounterGooglePrivacyDlpV2KAnonymityResult--;
}

buildUnnamed3864() {
  var o = new core.List<api.GooglePrivacyDlpV2AuxiliaryTable>();
  o.add(buildGooglePrivacyDlpV2AuxiliaryTable());
  o.add(buildGooglePrivacyDlpV2AuxiliaryTable());
  return o;
}

checkUnnamed3864(core.List<api.GooglePrivacyDlpV2AuxiliaryTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2AuxiliaryTable(o[0]);
  checkGooglePrivacyDlpV2AuxiliaryTable(o[1]);
}

buildUnnamed3865() {
  var o = new core.List<api.GooglePrivacyDlpV2TaggedField>();
  o.add(buildGooglePrivacyDlpV2TaggedField());
  o.add(buildGooglePrivacyDlpV2TaggedField());
  return o;
}

checkUnnamed3865(core.List<api.GooglePrivacyDlpV2TaggedField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2TaggedField(o[0]);
  checkGooglePrivacyDlpV2TaggedField(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KMapEstimationConfig = 0;
buildGooglePrivacyDlpV2KMapEstimationConfig() {
  var o = new api.GooglePrivacyDlpV2KMapEstimationConfig();
  buildCounterGooglePrivacyDlpV2KMapEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationConfig < 3) {
    o.auxiliaryTables = buildUnnamed3864();
    o.quasiIds = buildUnnamed3865();
    o.regionCode = "foo";
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationConfig--;
  return o;
}

checkGooglePrivacyDlpV2KMapEstimationConfig(
    api.GooglePrivacyDlpV2KMapEstimationConfig o) {
  buildCounterGooglePrivacyDlpV2KMapEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationConfig < 3) {
    checkUnnamed3864(o.auxiliaryTables);
    checkUnnamed3865(o.quasiIds);
    unittest.expect(o.regionCode, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationConfig--;
}

buildUnnamed3866() {
  var o = new core.List<api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues>();
  o.add(buildGooglePrivacyDlpV2KMapEstimationQuasiIdValues());
  o.add(buildGooglePrivacyDlpV2KMapEstimationQuasiIdValues());
  return o;
}

checkUnnamed3866(
    core.List<api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2KMapEstimationQuasiIdValues(o[0]);
  checkGooglePrivacyDlpV2KMapEstimationQuasiIdValues(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket = 0;
buildGooglePrivacyDlpV2KMapEstimationHistogramBucket() {
  var o = new api.GooglePrivacyDlpV2KMapEstimationHistogramBucket();
  buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket < 3) {
    o.bucketSize = "foo";
    o.bucketValueCount = "foo";
    o.bucketValues = buildUnnamed3866();
    o.maxAnonymity = "foo";
    o.minAnonymity = "foo";
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket--;
  return o;
}

checkGooglePrivacyDlpV2KMapEstimationHistogramBucket(
    api.GooglePrivacyDlpV2KMapEstimationHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    unittest.expect(o.bucketValueCount, unittest.equals('foo'));
    checkUnnamed3866(o.bucketValues);
    unittest.expect(o.maxAnonymity, unittest.equals('foo'));
    unittest.expect(o.minAnonymity, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket--;
}

buildUnnamed3867() {
  var o = new core.List<api.GooglePrivacyDlpV2Value>();
  o.add(buildGooglePrivacyDlpV2Value());
  o.add(buildGooglePrivacyDlpV2Value());
  return o;
}

checkUnnamed3867(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0]);
  checkGooglePrivacyDlpV2Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues = 0;
buildGooglePrivacyDlpV2KMapEstimationQuasiIdValues() {
  var o = new api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues();
  buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues < 3) {
    o.estimatedAnonymity = "foo";
    o.quasiIdsValues = buildUnnamed3867();
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues--;
  return o;
}

checkGooglePrivacyDlpV2KMapEstimationQuasiIdValues(
    api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues o) {
  buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues < 3) {
    unittest.expect(o.estimatedAnonymity, unittest.equals('foo'));
    checkUnnamed3867(o.quasiIdsValues);
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues--;
}

buildUnnamed3868() {
  var o = new core.List<api.GooglePrivacyDlpV2KMapEstimationHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2KMapEstimationHistogramBucket());
  o.add(buildGooglePrivacyDlpV2KMapEstimationHistogramBucket());
  return o;
}

checkUnnamed3868(
    core.List<api.GooglePrivacyDlpV2KMapEstimationHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2KMapEstimationHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2KMapEstimationHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KMapEstimationResult = 0;
buildGooglePrivacyDlpV2KMapEstimationResult() {
  var o = new api.GooglePrivacyDlpV2KMapEstimationResult();
  buildCounterGooglePrivacyDlpV2KMapEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationResult < 3) {
    o.kMapEstimationHistogram = buildUnnamed3868();
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationResult--;
  return o;
}

checkGooglePrivacyDlpV2KMapEstimationResult(
    api.GooglePrivacyDlpV2KMapEstimationResult o) {
  buildCounterGooglePrivacyDlpV2KMapEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationResult < 3) {
    checkUnnamed3868(o.kMapEstimationHistogram);
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationResult--;
}

buildUnnamed3869() {
  var o = new core.List<api.GooglePrivacyDlpV2PathElement>();
  o.add(buildGooglePrivacyDlpV2PathElement());
  o.add(buildGooglePrivacyDlpV2PathElement());
  return o;
}

checkUnnamed3869(core.List<api.GooglePrivacyDlpV2PathElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2PathElement(o[0]);
  checkGooglePrivacyDlpV2PathElement(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2Key = 0;
buildGooglePrivacyDlpV2Key() {
  var o = new api.GooglePrivacyDlpV2Key();
  buildCounterGooglePrivacyDlpV2Key++;
  if (buildCounterGooglePrivacyDlpV2Key < 3) {
    o.partitionId = buildGooglePrivacyDlpV2PartitionId();
    o.path = buildUnnamed3869();
  }
  buildCounterGooglePrivacyDlpV2Key--;
  return o;
}

checkGooglePrivacyDlpV2Key(api.GooglePrivacyDlpV2Key o) {
  buildCounterGooglePrivacyDlpV2Key++;
  if (buildCounterGooglePrivacyDlpV2Key < 3) {
    checkGooglePrivacyDlpV2PartitionId(o.partitionId);
    checkUnnamed3869(o.path);
  }
  buildCounterGooglePrivacyDlpV2Key--;
}

core.int buildCounterGooglePrivacyDlpV2KindExpression = 0;
buildGooglePrivacyDlpV2KindExpression() {
  var o = new api.GooglePrivacyDlpV2KindExpression();
  buildCounterGooglePrivacyDlpV2KindExpression++;
  if (buildCounterGooglePrivacyDlpV2KindExpression < 3) {
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2KindExpression--;
  return o;
}

checkGooglePrivacyDlpV2KindExpression(api.GooglePrivacyDlpV2KindExpression o) {
  buildCounterGooglePrivacyDlpV2KindExpression++;
  if (buildCounterGooglePrivacyDlpV2KindExpression < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2KindExpression--;
}

core.int buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey = 0;
buildGooglePrivacyDlpV2KmsWrappedCryptoKey() {
  var o = new api.GooglePrivacyDlpV2KmsWrappedCryptoKey();
  buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey < 3) {
    o.cryptoKeyName = "foo";
    o.wrappedKey = "foo";
  }
  buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey--;
  return o;
}

checkGooglePrivacyDlpV2KmsWrappedCryptoKey(
    api.GooglePrivacyDlpV2KmsWrappedCryptoKey o) {
  buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey < 3) {
    unittest.expect(o.cryptoKeyName, unittest.equals('foo'));
    unittest.expect(o.wrappedKey, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey--;
}

buildUnnamed3870() {
  var o = new core.List<api.GooglePrivacyDlpV2FieldId>();
  o.add(buildGooglePrivacyDlpV2FieldId());
  o.add(buildGooglePrivacyDlpV2FieldId());
  return o;
}

checkUnnamed3870(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0]);
  checkGooglePrivacyDlpV2FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2LDiversityConfig = 0;
buildGooglePrivacyDlpV2LDiversityConfig() {
  var o = new api.GooglePrivacyDlpV2LDiversityConfig();
  buildCounterGooglePrivacyDlpV2LDiversityConfig++;
  if (buildCounterGooglePrivacyDlpV2LDiversityConfig < 3) {
    o.quasiIds = buildUnnamed3870();
    o.sensitiveAttribute = buildGooglePrivacyDlpV2FieldId();
  }
  buildCounterGooglePrivacyDlpV2LDiversityConfig--;
  return o;
}

checkGooglePrivacyDlpV2LDiversityConfig(
    api.GooglePrivacyDlpV2LDiversityConfig o) {
  buildCounterGooglePrivacyDlpV2LDiversityConfig++;
  if (buildCounterGooglePrivacyDlpV2LDiversityConfig < 3) {
    checkUnnamed3870(o.quasiIds);
    checkGooglePrivacyDlpV2FieldId(o.sensitiveAttribute);
  }
  buildCounterGooglePrivacyDlpV2LDiversityConfig--;
}

buildUnnamed3871() {
  var o = new core.List<api.GooglePrivacyDlpV2Value>();
  o.add(buildGooglePrivacyDlpV2Value());
  o.add(buildGooglePrivacyDlpV2Value());
  return o;
}

checkUnnamed3871(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0]);
  checkGooglePrivacyDlpV2Value(o[1]);
}

buildUnnamed3872() {
  var o = new core.List<api.GooglePrivacyDlpV2ValueFrequency>();
  o.add(buildGooglePrivacyDlpV2ValueFrequency());
  o.add(buildGooglePrivacyDlpV2ValueFrequency());
  return o;
}

checkUnnamed3872(core.List<api.GooglePrivacyDlpV2ValueFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2ValueFrequency(o[0]);
  checkGooglePrivacyDlpV2ValueFrequency(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass = 0;
buildGooglePrivacyDlpV2LDiversityEquivalenceClass() {
  var o = new api.GooglePrivacyDlpV2LDiversityEquivalenceClass();
  buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass < 3) {
    o.equivalenceClassSize = "foo";
    o.numDistinctSensitiveValues = "foo";
    o.quasiIdsValues = buildUnnamed3871();
    o.topSensitiveValues = buildUnnamed3872();
  }
  buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass--;
  return o;
}

checkGooglePrivacyDlpV2LDiversityEquivalenceClass(
    api.GooglePrivacyDlpV2LDiversityEquivalenceClass o) {
  buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass < 3) {
    unittest.expect(o.equivalenceClassSize, unittest.equals('foo'));
    unittest.expect(o.numDistinctSensitiveValues, unittest.equals('foo'));
    checkUnnamed3871(o.quasiIdsValues);
    checkUnnamed3872(o.topSensitiveValues);
  }
  buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass--;
}

buildUnnamed3873() {
  var o = new core.List<api.GooglePrivacyDlpV2LDiversityEquivalenceClass>();
  o.add(buildGooglePrivacyDlpV2LDiversityEquivalenceClass());
  o.add(buildGooglePrivacyDlpV2LDiversityEquivalenceClass());
  return o;
}

checkUnnamed3873(
    core.List<api.GooglePrivacyDlpV2LDiversityEquivalenceClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2LDiversityEquivalenceClass(o[0]);
  checkGooglePrivacyDlpV2LDiversityEquivalenceClass(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket = 0;
buildGooglePrivacyDlpV2LDiversityHistogramBucket() {
  var o = new api.GooglePrivacyDlpV2LDiversityHistogramBucket();
  buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket < 3) {
    o.bucketSize = "foo";
    o.bucketValueCount = "foo";
    o.bucketValues = buildUnnamed3873();
    o.sensitiveValueFrequencyLowerBound = "foo";
    o.sensitiveValueFrequencyUpperBound = "foo";
  }
  buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket--;
  return o;
}

checkGooglePrivacyDlpV2LDiversityHistogramBucket(
    api.GooglePrivacyDlpV2LDiversityHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    unittest.expect(o.bucketValueCount, unittest.equals('foo'));
    checkUnnamed3873(o.bucketValues);
    unittest.expect(
        o.sensitiveValueFrequencyLowerBound, unittest.equals('foo'));
    unittest.expect(
        o.sensitiveValueFrequencyUpperBound, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket--;
}

buildUnnamed3874() {
  var o = new core.List<api.GooglePrivacyDlpV2LDiversityHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2LDiversityHistogramBucket());
  o.add(buildGooglePrivacyDlpV2LDiversityHistogramBucket());
  return o;
}

checkUnnamed3874(core.List<api.GooglePrivacyDlpV2LDiversityHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2LDiversityHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2LDiversityHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2LDiversityResult = 0;
buildGooglePrivacyDlpV2LDiversityResult() {
  var o = new api.GooglePrivacyDlpV2LDiversityResult();
  buildCounterGooglePrivacyDlpV2LDiversityResult++;
  if (buildCounterGooglePrivacyDlpV2LDiversityResult < 3) {
    o.sensitiveValueFrequencyHistogramBuckets = buildUnnamed3874();
  }
  buildCounterGooglePrivacyDlpV2LDiversityResult--;
  return o;
}

checkGooglePrivacyDlpV2LDiversityResult(
    api.GooglePrivacyDlpV2LDiversityResult o) {
  buildCounterGooglePrivacyDlpV2LDiversityResult++;
  if (buildCounterGooglePrivacyDlpV2LDiversityResult < 3) {
    checkUnnamed3874(o.sensitiveValueFrequencyHistogramBuckets);
  }
  buildCounterGooglePrivacyDlpV2LDiversityResult--;
}

core.int buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig = 0;
buildGooglePrivacyDlpV2LargeCustomDictionaryConfig() {
  var o = new api.GooglePrivacyDlpV2LargeCustomDictionaryConfig();
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig++;
  if (buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig < 3) {
    o.bigQueryField = buildGooglePrivacyDlpV2BigQueryField();
    o.cloudStorageFileSet = buildGooglePrivacyDlpV2CloudStorageFileSet();
    o.outputPath = buildGooglePrivacyDlpV2CloudStoragePath();
  }
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig--;
  return o;
}

checkGooglePrivacyDlpV2LargeCustomDictionaryConfig(
    api.GooglePrivacyDlpV2LargeCustomDictionaryConfig o) {
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig++;
  if (buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig < 3) {
    checkGooglePrivacyDlpV2BigQueryField(o.bigQueryField);
    checkGooglePrivacyDlpV2CloudStorageFileSet(o.cloudStorageFileSet);
    checkGooglePrivacyDlpV2CloudStoragePath(o.outputPath);
  }
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig--;
}

core.int buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats = 0;
buildGooglePrivacyDlpV2LargeCustomDictionaryStats() {
  var o = new api.GooglePrivacyDlpV2LargeCustomDictionaryStats();
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats++;
  if (buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats < 3) {
    o.approxNumPhrases = "foo";
  }
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats--;
  return o;
}

checkGooglePrivacyDlpV2LargeCustomDictionaryStats(
    api.GooglePrivacyDlpV2LargeCustomDictionaryStats o) {
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats++;
  if (buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats < 3) {
    unittest.expect(o.approxNumPhrases, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats--;
}

core.int buildCounterGooglePrivacyDlpV2LikelihoodAdjustment = 0;
buildGooglePrivacyDlpV2LikelihoodAdjustment() {
  var o = new api.GooglePrivacyDlpV2LikelihoodAdjustment();
  buildCounterGooglePrivacyDlpV2LikelihoodAdjustment++;
  if (buildCounterGooglePrivacyDlpV2LikelihoodAdjustment < 3) {
    o.fixedLikelihood = "foo";
    o.relativeLikelihood = 42;
  }
  buildCounterGooglePrivacyDlpV2LikelihoodAdjustment--;
  return o;
}

checkGooglePrivacyDlpV2LikelihoodAdjustment(
    api.GooglePrivacyDlpV2LikelihoodAdjustment o) {
  buildCounterGooglePrivacyDlpV2LikelihoodAdjustment++;
  if (buildCounterGooglePrivacyDlpV2LikelihoodAdjustment < 3) {
    unittest.expect(o.fixedLikelihood, unittest.equals('foo'));
    unittest.expect(o.relativeLikelihood, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2LikelihoodAdjustment--;
}

buildUnnamed3875() {
  var o = new core.List<api.GooglePrivacyDlpV2DeidentifyTemplate>();
  o.add(buildGooglePrivacyDlpV2DeidentifyTemplate());
  o.add(buildGooglePrivacyDlpV2DeidentifyTemplate());
  return o;
}

checkUnnamed3875(core.List<api.GooglePrivacyDlpV2DeidentifyTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2DeidentifyTemplate(o[0]);
  checkGooglePrivacyDlpV2DeidentifyTemplate(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse = 0;
buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse() {
  var o = new api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse();
  buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse < 3) {
    o.deidentifyTemplates = buildUnnamed3875();
    o.nextPageToken = "foo";
  }
  buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse--;
  return o;
}

checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(
    api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse o) {
  buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse < 3) {
    checkUnnamed3875(o.deidentifyTemplates);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse--;
}

buildUnnamed3876() {
  var o = new core.List<api.GooglePrivacyDlpV2DlpJob>();
  o.add(buildGooglePrivacyDlpV2DlpJob());
  o.add(buildGooglePrivacyDlpV2DlpJob());
  return o;
}

checkUnnamed3876(core.List<api.GooglePrivacyDlpV2DlpJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2DlpJob(o[0]);
  checkGooglePrivacyDlpV2DlpJob(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ListDlpJobsResponse = 0;
buildGooglePrivacyDlpV2ListDlpJobsResponse() {
  var o = new api.GooglePrivacyDlpV2ListDlpJobsResponse();
  buildCounterGooglePrivacyDlpV2ListDlpJobsResponse++;
  if (buildCounterGooglePrivacyDlpV2ListDlpJobsResponse < 3) {
    o.jobs = buildUnnamed3876();
    o.nextPageToken = "foo";
  }
  buildCounterGooglePrivacyDlpV2ListDlpJobsResponse--;
  return o;
}

checkGooglePrivacyDlpV2ListDlpJobsResponse(
    api.GooglePrivacyDlpV2ListDlpJobsResponse o) {
  buildCounterGooglePrivacyDlpV2ListDlpJobsResponse++;
  if (buildCounterGooglePrivacyDlpV2ListDlpJobsResponse < 3) {
    checkUnnamed3876(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2ListDlpJobsResponse--;
}

buildUnnamed3877() {
  var o = new core.List<api.GooglePrivacyDlpV2InfoTypeDescription>();
  o.add(buildGooglePrivacyDlpV2InfoTypeDescription());
  o.add(buildGooglePrivacyDlpV2InfoTypeDescription());
  return o;
}

checkUnnamed3877(core.List<api.GooglePrivacyDlpV2InfoTypeDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoTypeDescription(o[0]);
  checkGooglePrivacyDlpV2InfoTypeDescription(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ListInfoTypesResponse = 0;
buildGooglePrivacyDlpV2ListInfoTypesResponse() {
  var o = new api.GooglePrivacyDlpV2ListInfoTypesResponse();
  buildCounterGooglePrivacyDlpV2ListInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListInfoTypesResponse < 3) {
    o.infoTypes = buildUnnamed3877();
  }
  buildCounterGooglePrivacyDlpV2ListInfoTypesResponse--;
  return o;
}

checkGooglePrivacyDlpV2ListInfoTypesResponse(
    api.GooglePrivacyDlpV2ListInfoTypesResponse o) {
  buildCounterGooglePrivacyDlpV2ListInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListInfoTypesResponse < 3) {
    checkUnnamed3877(o.infoTypes);
  }
  buildCounterGooglePrivacyDlpV2ListInfoTypesResponse--;
}

buildUnnamed3878() {
  var o = new core.List<api.GooglePrivacyDlpV2InspectTemplate>();
  o.add(buildGooglePrivacyDlpV2InspectTemplate());
  o.add(buildGooglePrivacyDlpV2InspectTemplate());
  return o;
}

checkUnnamed3878(core.List<api.GooglePrivacyDlpV2InspectTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InspectTemplate(o[0]);
  checkGooglePrivacyDlpV2InspectTemplate(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse = 0;
buildGooglePrivacyDlpV2ListInspectTemplatesResponse() {
  var o = new api.GooglePrivacyDlpV2ListInspectTemplatesResponse();
  buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse < 3) {
    o.inspectTemplates = buildUnnamed3878();
    o.nextPageToken = "foo";
  }
  buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse--;
  return o;
}

checkGooglePrivacyDlpV2ListInspectTemplatesResponse(
    api.GooglePrivacyDlpV2ListInspectTemplatesResponse o) {
  buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse < 3) {
    checkUnnamed3878(o.inspectTemplates);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse--;
}

buildUnnamed3879() {
  var o = new core.List<api.GooglePrivacyDlpV2JobTrigger>();
  o.add(buildGooglePrivacyDlpV2JobTrigger());
  o.add(buildGooglePrivacyDlpV2JobTrigger());
  return o;
}

checkUnnamed3879(core.List<api.GooglePrivacyDlpV2JobTrigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2JobTrigger(o[0]);
  checkGooglePrivacyDlpV2JobTrigger(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ListJobTriggersResponse = 0;
buildGooglePrivacyDlpV2ListJobTriggersResponse() {
  var o = new api.GooglePrivacyDlpV2ListJobTriggersResponse();
  buildCounterGooglePrivacyDlpV2ListJobTriggersResponse++;
  if (buildCounterGooglePrivacyDlpV2ListJobTriggersResponse < 3) {
    o.jobTriggers = buildUnnamed3879();
    o.nextPageToken = "foo";
  }
  buildCounterGooglePrivacyDlpV2ListJobTriggersResponse--;
  return o;
}

checkGooglePrivacyDlpV2ListJobTriggersResponse(
    api.GooglePrivacyDlpV2ListJobTriggersResponse o) {
  buildCounterGooglePrivacyDlpV2ListJobTriggersResponse++;
  if (buildCounterGooglePrivacyDlpV2ListJobTriggersResponse < 3) {
    checkUnnamed3879(o.jobTriggers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2ListJobTriggersResponse--;
}

buildUnnamed3880() {
  var o = new core.List<api.GooglePrivacyDlpV2StoredInfoType>();
  o.add(buildGooglePrivacyDlpV2StoredInfoType());
  o.add(buildGooglePrivacyDlpV2StoredInfoType());
  return o;
}

checkUnnamed3880(core.List<api.GooglePrivacyDlpV2StoredInfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2StoredInfoType(o[0]);
  checkGooglePrivacyDlpV2StoredInfoType(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse = 0;
buildGooglePrivacyDlpV2ListStoredInfoTypesResponse() {
  var o = new api.GooglePrivacyDlpV2ListStoredInfoTypesResponse();
  buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse < 3) {
    o.nextPageToken = "foo";
    o.storedInfoTypes = buildUnnamed3880();
  }
  buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse--;
  return o;
}

checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(
    api.GooglePrivacyDlpV2ListStoredInfoTypesResponse o) {
  buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3880(o.storedInfoTypes);
  }
  buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse--;
}

buildUnnamed3881() {
  var o = new core.List<api.GooglePrivacyDlpV2ContentLocation>();
  o.add(buildGooglePrivacyDlpV2ContentLocation());
  o.add(buildGooglePrivacyDlpV2ContentLocation());
  return o;
}

checkUnnamed3881(core.List<api.GooglePrivacyDlpV2ContentLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2ContentLocation(o[0]);
  checkGooglePrivacyDlpV2ContentLocation(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2Location = 0;
buildGooglePrivacyDlpV2Location() {
  var o = new api.GooglePrivacyDlpV2Location();
  buildCounterGooglePrivacyDlpV2Location++;
  if (buildCounterGooglePrivacyDlpV2Location < 3) {
    o.byteRange = buildGooglePrivacyDlpV2Range();
    o.codepointRange = buildGooglePrivacyDlpV2Range();
    o.contentLocations = buildUnnamed3881();
  }
  buildCounterGooglePrivacyDlpV2Location--;
  return o;
}

checkGooglePrivacyDlpV2Location(api.GooglePrivacyDlpV2Location o) {
  buildCounterGooglePrivacyDlpV2Location++;
  if (buildCounterGooglePrivacyDlpV2Location < 3) {
    checkGooglePrivacyDlpV2Range(o.byteRange);
    checkGooglePrivacyDlpV2Range(o.codepointRange);
    checkUnnamed3881(o.contentLocations);
  }
  buildCounterGooglePrivacyDlpV2Location--;
}

core.int buildCounterGooglePrivacyDlpV2NumericalStatsConfig = 0;
buildGooglePrivacyDlpV2NumericalStatsConfig() {
  var o = new api.GooglePrivacyDlpV2NumericalStatsConfig();
  buildCounterGooglePrivacyDlpV2NumericalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2NumericalStatsConfig < 3) {
    o.field = buildGooglePrivacyDlpV2FieldId();
  }
  buildCounterGooglePrivacyDlpV2NumericalStatsConfig--;
  return o;
}

checkGooglePrivacyDlpV2NumericalStatsConfig(
    api.GooglePrivacyDlpV2NumericalStatsConfig o) {
  buildCounterGooglePrivacyDlpV2NumericalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2NumericalStatsConfig < 3) {
    checkGooglePrivacyDlpV2FieldId(o.field);
  }
  buildCounterGooglePrivacyDlpV2NumericalStatsConfig--;
}

buildUnnamed3882() {
  var o = new core.List<api.GooglePrivacyDlpV2Value>();
  o.add(buildGooglePrivacyDlpV2Value());
  o.add(buildGooglePrivacyDlpV2Value());
  return o;
}

checkUnnamed3882(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0]);
  checkGooglePrivacyDlpV2Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2NumericalStatsResult = 0;
buildGooglePrivacyDlpV2NumericalStatsResult() {
  var o = new api.GooglePrivacyDlpV2NumericalStatsResult();
  buildCounterGooglePrivacyDlpV2NumericalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2NumericalStatsResult < 3) {
    o.maxValue = buildGooglePrivacyDlpV2Value();
    o.minValue = buildGooglePrivacyDlpV2Value();
    o.quantileValues = buildUnnamed3882();
  }
  buildCounterGooglePrivacyDlpV2NumericalStatsResult--;
  return o;
}

checkGooglePrivacyDlpV2NumericalStatsResult(
    api.GooglePrivacyDlpV2NumericalStatsResult o) {
  buildCounterGooglePrivacyDlpV2NumericalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2NumericalStatsResult < 3) {
    checkGooglePrivacyDlpV2Value(o.maxValue);
    checkGooglePrivacyDlpV2Value(o.minValue);
    checkUnnamed3882(o.quantileValues);
  }
  buildCounterGooglePrivacyDlpV2NumericalStatsResult--;
}

core.int buildCounterGooglePrivacyDlpV2OutputStorageConfig = 0;
buildGooglePrivacyDlpV2OutputStorageConfig() {
  var o = new api.GooglePrivacyDlpV2OutputStorageConfig();
  buildCounterGooglePrivacyDlpV2OutputStorageConfig++;
  if (buildCounterGooglePrivacyDlpV2OutputStorageConfig < 3) {
    o.outputSchema = "foo";
    o.table = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2OutputStorageConfig--;
  return o;
}

checkGooglePrivacyDlpV2OutputStorageConfig(
    api.GooglePrivacyDlpV2OutputStorageConfig o) {
  buildCounterGooglePrivacyDlpV2OutputStorageConfig++;
  if (buildCounterGooglePrivacyDlpV2OutputStorageConfig < 3) {
    unittest.expect(o.outputSchema, unittest.equals('foo'));
    checkGooglePrivacyDlpV2BigQueryTable(o.table);
  }
  buildCounterGooglePrivacyDlpV2OutputStorageConfig--;
}

core.int buildCounterGooglePrivacyDlpV2PartitionId = 0;
buildGooglePrivacyDlpV2PartitionId() {
  var o = new api.GooglePrivacyDlpV2PartitionId();
  buildCounterGooglePrivacyDlpV2PartitionId++;
  if (buildCounterGooglePrivacyDlpV2PartitionId < 3) {
    o.namespaceId = "foo";
    o.projectId = "foo";
  }
  buildCounterGooglePrivacyDlpV2PartitionId--;
  return o;
}

checkGooglePrivacyDlpV2PartitionId(api.GooglePrivacyDlpV2PartitionId o) {
  buildCounterGooglePrivacyDlpV2PartitionId++;
  if (buildCounterGooglePrivacyDlpV2PartitionId < 3) {
    unittest.expect(o.namespaceId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2PartitionId--;
}

core.int buildCounterGooglePrivacyDlpV2PathElement = 0;
buildGooglePrivacyDlpV2PathElement() {
  var o = new api.GooglePrivacyDlpV2PathElement();
  buildCounterGooglePrivacyDlpV2PathElement++;
  if (buildCounterGooglePrivacyDlpV2PathElement < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2PathElement--;
  return o;
}

checkGooglePrivacyDlpV2PathElement(api.GooglePrivacyDlpV2PathElement o) {
  buildCounterGooglePrivacyDlpV2PathElement++;
  if (buildCounterGooglePrivacyDlpV2PathElement < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2PathElement--;
}

core.int buildCounterGooglePrivacyDlpV2PrimitiveTransformation = 0;
buildGooglePrivacyDlpV2PrimitiveTransformation() {
  var o = new api.GooglePrivacyDlpV2PrimitiveTransformation();
  buildCounterGooglePrivacyDlpV2PrimitiveTransformation++;
  if (buildCounterGooglePrivacyDlpV2PrimitiveTransformation < 3) {
    o.bucketingConfig = buildGooglePrivacyDlpV2BucketingConfig();
    o.characterMaskConfig = buildGooglePrivacyDlpV2CharacterMaskConfig();
    o.cryptoDeterministicConfig =
        buildGooglePrivacyDlpV2CryptoDeterministicConfig();
    o.cryptoHashConfig = buildGooglePrivacyDlpV2CryptoHashConfig();
    o.cryptoReplaceFfxFpeConfig =
        buildGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig();
    o.dateShiftConfig = buildGooglePrivacyDlpV2DateShiftConfig();
    o.fixedSizeBucketingConfig =
        buildGooglePrivacyDlpV2FixedSizeBucketingConfig();
    o.redactConfig = buildGooglePrivacyDlpV2RedactConfig();
    o.replaceConfig = buildGooglePrivacyDlpV2ReplaceValueConfig();
    o.replaceWithInfoTypeConfig =
        buildGooglePrivacyDlpV2ReplaceWithInfoTypeConfig();
    o.timePartConfig = buildGooglePrivacyDlpV2TimePartConfig();
  }
  buildCounterGooglePrivacyDlpV2PrimitiveTransformation--;
  return o;
}

checkGooglePrivacyDlpV2PrimitiveTransformation(
    api.GooglePrivacyDlpV2PrimitiveTransformation o) {
  buildCounterGooglePrivacyDlpV2PrimitiveTransformation++;
  if (buildCounterGooglePrivacyDlpV2PrimitiveTransformation < 3) {
    checkGooglePrivacyDlpV2BucketingConfig(o.bucketingConfig);
    checkGooglePrivacyDlpV2CharacterMaskConfig(o.characterMaskConfig);
    checkGooglePrivacyDlpV2CryptoDeterministicConfig(
        o.cryptoDeterministicConfig);
    checkGooglePrivacyDlpV2CryptoHashConfig(o.cryptoHashConfig);
    checkGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig(
        o.cryptoReplaceFfxFpeConfig);
    checkGooglePrivacyDlpV2DateShiftConfig(o.dateShiftConfig);
    checkGooglePrivacyDlpV2FixedSizeBucketingConfig(o.fixedSizeBucketingConfig);
    checkGooglePrivacyDlpV2RedactConfig(o.redactConfig);
    checkGooglePrivacyDlpV2ReplaceValueConfig(o.replaceConfig);
    checkGooglePrivacyDlpV2ReplaceWithInfoTypeConfig(
        o.replaceWithInfoTypeConfig);
    checkGooglePrivacyDlpV2TimePartConfig(o.timePartConfig);
  }
  buildCounterGooglePrivacyDlpV2PrimitiveTransformation--;
}

core.int buildCounterGooglePrivacyDlpV2PrivacyMetric = 0;
buildGooglePrivacyDlpV2PrivacyMetric() {
  var o = new api.GooglePrivacyDlpV2PrivacyMetric();
  buildCounterGooglePrivacyDlpV2PrivacyMetric++;
  if (buildCounterGooglePrivacyDlpV2PrivacyMetric < 3) {
    o.categoricalStatsConfig = buildGooglePrivacyDlpV2CategoricalStatsConfig();
    o.deltaPresenceEstimationConfig =
        buildGooglePrivacyDlpV2DeltaPresenceEstimationConfig();
    o.kAnonymityConfig = buildGooglePrivacyDlpV2KAnonymityConfig();
    o.kMapEstimationConfig = buildGooglePrivacyDlpV2KMapEstimationConfig();
    o.lDiversityConfig = buildGooglePrivacyDlpV2LDiversityConfig();
    o.numericalStatsConfig = buildGooglePrivacyDlpV2NumericalStatsConfig();
  }
  buildCounterGooglePrivacyDlpV2PrivacyMetric--;
  return o;
}

checkGooglePrivacyDlpV2PrivacyMetric(api.GooglePrivacyDlpV2PrivacyMetric o) {
  buildCounterGooglePrivacyDlpV2PrivacyMetric++;
  if (buildCounterGooglePrivacyDlpV2PrivacyMetric < 3) {
    checkGooglePrivacyDlpV2CategoricalStatsConfig(o.categoricalStatsConfig);
    checkGooglePrivacyDlpV2DeltaPresenceEstimationConfig(
        o.deltaPresenceEstimationConfig);
    checkGooglePrivacyDlpV2KAnonymityConfig(o.kAnonymityConfig);
    checkGooglePrivacyDlpV2KMapEstimationConfig(o.kMapEstimationConfig);
    checkGooglePrivacyDlpV2LDiversityConfig(o.lDiversityConfig);
    checkGooglePrivacyDlpV2NumericalStatsConfig(o.numericalStatsConfig);
  }
  buildCounterGooglePrivacyDlpV2PrivacyMetric--;
}

core.int buildCounterGooglePrivacyDlpV2Proximity = 0;
buildGooglePrivacyDlpV2Proximity() {
  var o = new api.GooglePrivacyDlpV2Proximity();
  buildCounterGooglePrivacyDlpV2Proximity++;
  if (buildCounterGooglePrivacyDlpV2Proximity < 3) {
    o.windowAfter = 42;
    o.windowBefore = 42;
  }
  buildCounterGooglePrivacyDlpV2Proximity--;
  return o;
}

checkGooglePrivacyDlpV2Proximity(api.GooglePrivacyDlpV2Proximity o) {
  buildCounterGooglePrivacyDlpV2Proximity++;
  if (buildCounterGooglePrivacyDlpV2Proximity < 3) {
    unittest.expect(o.windowAfter, unittest.equals(42));
    unittest.expect(o.windowBefore, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2Proximity--;
}

core.int buildCounterGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog = 0;
buildGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog() {
  var o = new api.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog();
  buildCounterGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog++;
  if (buildCounterGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog < 3) {}
  buildCounterGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog--;
  return o;
}

checkGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog(
    api.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog o) {
  buildCounterGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog++;
  if (buildCounterGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog < 3) {}
  buildCounterGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog--;
}

core.int buildCounterGooglePrivacyDlpV2PublishSummaryToCscc = 0;
buildGooglePrivacyDlpV2PublishSummaryToCscc() {
  var o = new api.GooglePrivacyDlpV2PublishSummaryToCscc();
  buildCounterGooglePrivacyDlpV2PublishSummaryToCscc++;
  if (buildCounterGooglePrivacyDlpV2PublishSummaryToCscc < 3) {}
  buildCounterGooglePrivacyDlpV2PublishSummaryToCscc--;
  return o;
}

checkGooglePrivacyDlpV2PublishSummaryToCscc(
    api.GooglePrivacyDlpV2PublishSummaryToCscc o) {
  buildCounterGooglePrivacyDlpV2PublishSummaryToCscc++;
  if (buildCounterGooglePrivacyDlpV2PublishSummaryToCscc < 3) {}
  buildCounterGooglePrivacyDlpV2PublishSummaryToCscc--;
}

core.int buildCounterGooglePrivacyDlpV2PublishToPubSub = 0;
buildGooglePrivacyDlpV2PublishToPubSub() {
  var o = new api.GooglePrivacyDlpV2PublishToPubSub();
  buildCounterGooglePrivacyDlpV2PublishToPubSub++;
  if (buildCounterGooglePrivacyDlpV2PublishToPubSub < 3) {
    o.topic = "foo";
  }
  buildCounterGooglePrivacyDlpV2PublishToPubSub--;
  return o;
}

checkGooglePrivacyDlpV2PublishToPubSub(
    api.GooglePrivacyDlpV2PublishToPubSub o) {
  buildCounterGooglePrivacyDlpV2PublishToPubSub++;
  if (buildCounterGooglePrivacyDlpV2PublishToPubSub < 3) {
    unittest.expect(o.topic, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2PublishToPubSub--;
}

core.int buildCounterGooglePrivacyDlpV2QuasiId = 0;
buildGooglePrivacyDlpV2QuasiId() {
  var o = new api.GooglePrivacyDlpV2QuasiId();
  buildCounterGooglePrivacyDlpV2QuasiId++;
  if (buildCounterGooglePrivacyDlpV2QuasiId < 3) {
    o.customTag = "foo";
    o.field = buildGooglePrivacyDlpV2FieldId();
    o.inferred = buildGoogleProtobufEmpty();
    o.infoType = buildGooglePrivacyDlpV2InfoType();
  }
  buildCounterGooglePrivacyDlpV2QuasiId--;
  return o;
}

checkGooglePrivacyDlpV2QuasiId(api.GooglePrivacyDlpV2QuasiId o) {
  buildCounterGooglePrivacyDlpV2QuasiId++;
  if (buildCounterGooglePrivacyDlpV2QuasiId < 3) {
    unittest.expect(o.customTag, unittest.equals('foo'));
    checkGooglePrivacyDlpV2FieldId(o.field);
    checkGoogleProtobufEmpty(o.inferred);
    checkGooglePrivacyDlpV2InfoType(o.infoType);
  }
  buildCounterGooglePrivacyDlpV2QuasiId--;
}

core.int buildCounterGooglePrivacyDlpV2QuasiIdField = 0;
buildGooglePrivacyDlpV2QuasiIdField() {
  var o = new api.GooglePrivacyDlpV2QuasiIdField();
  buildCounterGooglePrivacyDlpV2QuasiIdField++;
  if (buildCounterGooglePrivacyDlpV2QuasiIdField < 3) {
    o.customTag = "foo";
    o.field = buildGooglePrivacyDlpV2FieldId();
  }
  buildCounterGooglePrivacyDlpV2QuasiIdField--;
  return o;
}

checkGooglePrivacyDlpV2QuasiIdField(api.GooglePrivacyDlpV2QuasiIdField o) {
  buildCounterGooglePrivacyDlpV2QuasiIdField++;
  if (buildCounterGooglePrivacyDlpV2QuasiIdField < 3) {
    unittest.expect(o.customTag, unittest.equals('foo'));
    checkGooglePrivacyDlpV2FieldId(o.field);
  }
  buildCounterGooglePrivacyDlpV2QuasiIdField--;
}

core.int buildCounterGooglePrivacyDlpV2QuasiIdentifierField = 0;
buildGooglePrivacyDlpV2QuasiIdentifierField() {
  var o = new api.GooglePrivacyDlpV2QuasiIdentifierField();
  buildCounterGooglePrivacyDlpV2QuasiIdentifierField++;
  if (buildCounterGooglePrivacyDlpV2QuasiIdentifierField < 3) {
    o.customTag = "foo";
    o.field = buildGooglePrivacyDlpV2FieldId();
  }
  buildCounterGooglePrivacyDlpV2QuasiIdentifierField--;
  return o;
}

checkGooglePrivacyDlpV2QuasiIdentifierField(
    api.GooglePrivacyDlpV2QuasiIdentifierField o) {
  buildCounterGooglePrivacyDlpV2QuasiIdentifierField++;
  if (buildCounterGooglePrivacyDlpV2QuasiIdentifierField < 3) {
    unittest.expect(o.customTag, unittest.equals('foo'));
    checkGooglePrivacyDlpV2FieldId(o.field);
  }
  buildCounterGooglePrivacyDlpV2QuasiIdentifierField--;
}

core.int buildCounterGooglePrivacyDlpV2QuoteInfo = 0;
buildGooglePrivacyDlpV2QuoteInfo() {
  var o = new api.GooglePrivacyDlpV2QuoteInfo();
  buildCounterGooglePrivacyDlpV2QuoteInfo++;
  if (buildCounterGooglePrivacyDlpV2QuoteInfo < 3) {
    o.dateTime = buildGooglePrivacyDlpV2DateTime();
  }
  buildCounterGooglePrivacyDlpV2QuoteInfo--;
  return o;
}

checkGooglePrivacyDlpV2QuoteInfo(api.GooglePrivacyDlpV2QuoteInfo o) {
  buildCounterGooglePrivacyDlpV2QuoteInfo++;
  if (buildCounterGooglePrivacyDlpV2QuoteInfo < 3) {
    checkGooglePrivacyDlpV2DateTime(o.dateTime);
  }
  buildCounterGooglePrivacyDlpV2QuoteInfo--;
}

core.int buildCounterGooglePrivacyDlpV2Range = 0;
buildGooglePrivacyDlpV2Range() {
  var o = new api.GooglePrivacyDlpV2Range();
  buildCounterGooglePrivacyDlpV2Range++;
  if (buildCounterGooglePrivacyDlpV2Range < 3) {
    o.end = "foo";
    o.start = "foo";
  }
  buildCounterGooglePrivacyDlpV2Range--;
  return o;
}

checkGooglePrivacyDlpV2Range(api.GooglePrivacyDlpV2Range o) {
  buildCounterGooglePrivacyDlpV2Range++;
  if (buildCounterGooglePrivacyDlpV2Range < 3) {
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2Range--;
}

core.int buildCounterGooglePrivacyDlpV2RecordCondition = 0;
buildGooglePrivacyDlpV2RecordCondition() {
  var o = new api.GooglePrivacyDlpV2RecordCondition();
  buildCounterGooglePrivacyDlpV2RecordCondition++;
  if (buildCounterGooglePrivacyDlpV2RecordCondition < 3) {
    o.expressions = buildGooglePrivacyDlpV2Expressions();
  }
  buildCounterGooglePrivacyDlpV2RecordCondition--;
  return o;
}

checkGooglePrivacyDlpV2RecordCondition(
    api.GooglePrivacyDlpV2RecordCondition o) {
  buildCounterGooglePrivacyDlpV2RecordCondition++;
  if (buildCounterGooglePrivacyDlpV2RecordCondition < 3) {
    checkGooglePrivacyDlpV2Expressions(o.expressions);
  }
  buildCounterGooglePrivacyDlpV2RecordCondition--;
}

buildUnnamed3883() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3883(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2RecordKey = 0;
buildGooglePrivacyDlpV2RecordKey() {
  var o = new api.GooglePrivacyDlpV2RecordKey();
  buildCounterGooglePrivacyDlpV2RecordKey++;
  if (buildCounterGooglePrivacyDlpV2RecordKey < 3) {
    o.bigQueryKey = buildGooglePrivacyDlpV2BigQueryKey();
    o.datastoreKey = buildGooglePrivacyDlpV2DatastoreKey();
    o.idValues = buildUnnamed3883();
  }
  buildCounterGooglePrivacyDlpV2RecordKey--;
  return o;
}

checkGooglePrivacyDlpV2RecordKey(api.GooglePrivacyDlpV2RecordKey o) {
  buildCounterGooglePrivacyDlpV2RecordKey++;
  if (buildCounterGooglePrivacyDlpV2RecordKey < 3) {
    checkGooglePrivacyDlpV2BigQueryKey(o.bigQueryKey);
    checkGooglePrivacyDlpV2DatastoreKey(o.datastoreKey);
    checkUnnamed3883(o.idValues);
  }
  buildCounterGooglePrivacyDlpV2RecordKey--;
}

core.int buildCounterGooglePrivacyDlpV2RecordLocation = 0;
buildGooglePrivacyDlpV2RecordLocation() {
  var o = new api.GooglePrivacyDlpV2RecordLocation();
  buildCounterGooglePrivacyDlpV2RecordLocation++;
  if (buildCounterGooglePrivacyDlpV2RecordLocation < 3) {
    o.fieldId = buildGooglePrivacyDlpV2FieldId();
    o.recordKey = buildGooglePrivacyDlpV2RecordKey();
    o.tableLocation = buildGooglePrivacyDlpV2TableLocation();
  }
  buildCounterGooglePrivacyDlpV2RecordLocation--;
  return o;
}

checkGooglePrivacyDlpV2RecordLocation(api.GooglePrivacyDlpV2RecordLocation o) {
  buildCounterGooglePrivacyDlpV2RecordLocation++;
  if (buildCounterGooglePrivacyDlpV2RecordLocation < 3) {
    checkGooglePrivacyDlpV2FieldId(o.fieldId);
    checkGooglePrivacyDlpV2RecordKey(o.recordKey);
    checkGooglePrivacyDlpV2TableLocation(o.tableLocation);
  }
  buildCounterGooglePrivacyDlpV2RecordLocation--;
}

core.int buildCounterGooglePrivacyDlpV2RecordSuppression = 0;
buildGooglePrivacyDlpV2RecordSuppression() {
  var o = new api.GooglePrivacyDlpV2RecordSuppression();
  buildCounterGooglePrivacyDlpV2RecordSuppression++;
  if (buildCounterGooglePrivacyDlpV2RecordSuppression < 3) {
    o.condition = buildGooglePrivacyDlpV2RecordCondition();
  }
  buildCounterGooglePrivacyDlpV2RecordSuppression--;
  return o;
}

checkGooglePrivacyDlpV2RecordSuppression(
    api.GooglePrivacyDlpV2RecordSuppression o) {
  buildCounterGooglePrivacyDlpV2RecordSuppression++;
  if (buildCounterGooglePrivacyDlpV2RecordSuppression < 3) {
    checkGooglePrivacyDlpV2RecordCondition(o.condition);
  }
  buildCounterGooglePrivacyDlpV2RecordSuppression--;
}

buildUnnamed3884() {
  var o = new core.List<api.GooglePrivacyDlpV2FieldTransformation>();
  o.add(buildGooglePrivacyDlpV2FieldTransformation());
  o.add(buildGooglePrivacyDlpV2FieldTransformation());
  return o;
}

checkUnnamed3884(core.List<api.GooglePrivacyDlpV2FieldTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldTransformation(o[0]);
  checkGooglePrivacyDlpV2FieldTransformation(o[1]);
}

buildUnnamed3885() {
  var o = new core.List<api.GooglePrivacyDlpV2RecordSuppression>();
  o.add(buildGooglePrivacyDlpV2RecordSuppression());
  o.add(buildGooglePrivacyDlpV2RecordSuppression());
  return o;
}

checkUnnamed3885(core.List<api.GooglePrivacyDlpV2RecordSuppression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2RecordSuppression(o[0]);
  checkGooglePrivacyDlpV2RecordSuppression(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2RecordTransformations = 0;
buildGooglePrivacyDlpV2RecordTransformations() {
  var o = new api.GooglePrivacyDlpV2RecordTransformations();
  buildCounterGooglePrivacyDlpV2RecordTransformations++;
  if (buildCounterGooglePrivacyDlpV2RecordTransformations < 3) {
    o.fieldTransformations = buildUnnamed3884();
    o.recordSuppressions = buildUnnamed3885();
  }
  buildCounterGooglePrivacyDlpV2RecordTransformations--;
  return o;
}

checkGooglePrivacyDlpV2RecordTransformations(
    api.GooglePrivacyDlpV2RecordTransformations o) {
  buildCounterGooglePrivacyDlpV2RecordTransformations++;
  if (buildCounterGooglePrivacyDlpV2RecordTransformations < 3) {
    checkUnnamed3884(o.fieldTransformations);
    checkUnnamed3885(o.recordSuppressions);
  }
  buildCounterGooglePrivacyDlpV2RecordTransformations--;
}

core.int buildCounterGooglePrivacyDlpV2RedactConfig = 0;
buildGooglePrivacyDlpV2RedactConfig() {
  var o = new api.GooglePrivacyDlpV2RedactConfig();
  buildCounterGooglePrivacyDlpV2RedactConfig++;
  if (buildCounterGooglePrivacyDlpV2RedactConfig < 3) {}
  buildCounterGooglePrivacyDlpV2RedactConfig--;
  return o;
}

checkGooglePrivacyDlpV2RedactConfig(api.GooglePrivacyDlpV2RedactConfig o) {
  buildCounterGooglePrivacyDlpV2RedactConfig++;
  if (buildCounterGooglePrivacyDlpV2RedactConfig < 3) {}
  buildCounterGooglePrivacyDlpV2RedactConfig--;
}

buildUnnamed3886() {
  var o = new core.List<api.GooglePrivacyDlpV2ImageRedactionConfig>();
  o.add(buildGooglePrivacyDlpV2ImageRedactionConfig());
  o.add(buildGooglePrivacyDlpV2ImageRedactionConfig());
  return o;
}

checkUnnamed3886(core.List<api.GooglePrivacyDlpV2ImageRedactionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2ImageRedactionConfig(o[0]);
  checkGooglePrivacyDlpV2ImageRedactionConfig(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2RedactImageRequest = 0;
buildGooglePrivacyDlpV2RedactImageRequest() {
  var o = new api.GooglePrivacyDlpV2RedactImageRequest();
  buildCounterGooglePrivacyDlpV2RedactImageRequest++;
  if (buildCounterGooglePrivacyDlpV2RedactImageRequest < 3) {
    o.byteItem = buildGooglePrivacyDlpV2ByteContentItem();
    o.imageRedactionConfigs = buildUnnamed3886();
    o.includeFindings = true;
    o.inspectConfig = buildGooglePrivacyDlpV2InspectConfig();
  }
  buildCounterGooglePrivacyDlpV2RedactImageRequest--;
  return o;
}

checkGooglePrivacyDlpV2RedactImageRequest(
    api.GooglePrivacyDlpV2RedactImageRequest o) {
  buildCounterGooglePrivacyDlpV2RedactImageRequest++;
  if (buildCounterGooglePrivacyDlpV2RedactImageRequest < 3) {
    checkGooglePrivacyDlpV2ByteContentItem(o.byteItem);
    checkUnnamed3886(o.imageRedactionConfigs);
    unittest.expect(o.includeFindings, unittest.isTrue);
    checkGooglePrivacyDlpV2InspectConfig(o.inspectConfig);
  }
  buildCounterGooglePrivacyDlpV2RedactImageRequest--;
}

core.int buildCounterGooglePrivacyDlpV2RedactImageResponse = 0;
buildGooglePrivacyDlpV2RedactImageResponse() {
  var o = new api.GooglePrivacyDlpV2RedactImageResponse();
  buildCounterGooglePrivacyDlpV2RedactImageResponse++;
  if (buildCounterGooglePrivacyDlpV2RedactImageResponse < 3) {
    o.extractedText = "foo";
    o.inspectResult = buildGooglePrivacyDlpV2InspectResult();
    o.redactedImage = "foo";
  }
  buildCounterGooglePrivacyDlpV2RedactImageResponse--;
  return o;
}

checkGooglePrivacyDlpV2RedactImageResponse(
    api.GooglePrivacyDlpV2RedactImageResponse o) {
  buildCounterGooglePrivacyDlpV2RedactImageResponse++;
  if (buildCounterGooglePrivacyDlpV2RedactImageResponse < 3) {
    unittest.expect(o.extractedText, unittest.equals('foo'));
    checkGooglePrivacyDlpV2InspectResult(o.inspectResult);
    unittest.expect(o.redactedImage, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2RedactImageResponse--;
}

buildUnnamed3887() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3887(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGooglePrivacyDlpV2Regex = 0;
buildGooglePrivacyDlpV2Regex() {
  var o = new api.GooglePrivacyDlpV2Regex();
  buildCounterGooglePrivacyDlpV2Regex++;
  if (buildCounterGooglePrivacyDlpV2Regex < 3) {
    o.groupIndexes = buildUnnamed3887();
    o.pattern = "foo";
  }
  buildCounterGooglePrivacyDlpV2Regex--;
  return o;
}

checkGooglePrivacyDlpV2Regex(api.GooglePrivacyDlpV2Regex o) {
  buildCounterGooglePrivacyDlpV2Regex++;
  if (buildCounterGooglePrivacyDlpV2Regex < 3) {
    checkUnnamed3887(o.groupIndexes);
    unittest.expect(o.pattern, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2Regex--;
}

core.int buildCounterGooglePrivacyDlpV2ReidentifyContentRequest = 0;
buildGooglePrivacyDlpV2ReidentifyContentRequest() {
  var o = new api.GooglePrivacyDlpV2ReidentifyContentRequest();
  buildCounterGooglePrivacyDlpV2ReidentifyContentRequest++;
  if (buildCounterGooglePrivacyDlpV2ReidentifyContentRequest < 3) {
    o.inspectConfig = buildGooglePrivacyDlpV2InspectConfig();
    o.inspectTemplateName = "foo";
    o.item = buildGooglePrivacyDlpV2ContentItem();
    o.reidentifyConfig = buildGooglePrivacyDlpV2DeidentifyConfig();
    o.reidentifyTemplateName = "foo";
  }
  buildCounterGooglePrivacyDlpV2ReidentifyContentRequest--;
  return o;
}

checkGooglePrivacyDlpV2ReidentifyContentRequest(
    api.GooglePrivacyDlpV2ReidentifyContentRequest o) {
  buildCounterGooglePrivacyDlpV2ReidentifyContentRequest++;
  if (buildCounterGooglePrivacyDlpV2ReidentifyContentRequest < 3) {
    checkGooglePrivacyDlpV2InspectConfig(o.inspectConfig);
    unittest.expect(o.inspectTemplateName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2ContentItem(o.item);
    checkGooglePrivacyDlpV2DeidentifyConfig(o.reidentifyConfig);
    unittest.expect(o.reidentifyTemplateName, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2ReidentifyContentRequest--;
}

core.int buildCounterGooglePrivacyDlpV2ReidentifyContentResponse = 0;
buildGooglePrivacyDlpV2ReidentifyContentResponse() {
  var o = new api.GooglePrivacyDlpV2ReidentifyContentResponse();
  buildCounterGooglePrivacyDlpV2ReidentifyContentResponse++;
  if (buildCounterGooglePrivacyDlpV2ReidentifyContentResponse < 3) {
    o.item = buildGooglePrivacyDlpV2ContentItem();
    o.overview = buildGooglePrivacyDlpV2TransformationOverview();
  }
  buildCounterGooglePrivacyDlpV2ReidentifyContentResponse--;
  return o;
}

checkGooglePrivacyDlpV2ReidentifyContentResponse(
    api.GooglePrivacyDlpV2ReidentifyContentResponse o) {
  buildCounterGooglePrivacyDlpV2ReidentifyContentResponse++;
  if (buildCounterGooglePrivacyDlpV2ReidentifyContentResponse < 3) {
    checkGooglePrivacyDlpV2ContentItem(o.item);
    checkGooglePrivacyDlpV2TransformationOverview(o.overview);
  }
  buildCounterGooglePrivacyDlpV2ReidentifyContentResponse--;
}

core.int buildCounterGooglePrivacyDlpV2ReplaceValueConfig = 0;
buildGooglePrivacyDlpV2ReplaceValueConfig() {
  var o = new api.GooglePrivacyDlpV2ReplaceValueConfig();
  buildCounterGooglePrivacyDlpV2ReplaceValueConfig++;
  if (buildCounterGooglePrivacyDlpV2ReplaceValueConfig < 3) {
    o.newValue = buildGooglePrivacyDlpV2Value();
  }
  buildCounterGooglePrivacyDlpV2ReplaceValueConfig--;
  return o;
}

checkGooglePrivacyDlpV2ReplaceValueConfig(
    api.GooglePrivacyDlpV2ReplaceValueConfig o) {
  buildCounterGooglePrivacyDlpV2ReplaceValueConfig++;
  if (buildCounterGooglePrivacyDlpV2ReplaceValueConfig < 3) {
    checkGooglePrivacyDlpV2Value(o.newValue);
  }
  buildCounterGooglePrivacyDlpV2ReplaceValueConfig--;
}

core.int buildCounterGooglePrivacyDlpV2ReplaceWithInfoTypeConfig = 0;
buildGooglePrivacyDlpV2ReplaceWithInfoTypeConfig() {
  var o = new api.GooglePrivacyDlpV2ReplaceWithInfoTypeConfig();
  buildCounterGooglePrivacyDlpV2ReplaceWithInfoTypeConfig++;
  if (buildCounterGooglePrivacyDlpV2ReplaceWithInfoTypeConfig < 3) {}
  buildCounterGooglePrivacyDlpV2ReplaceWithInfoTypeConfig--;
  return o;
}

checkGooglePrivacyDlpV2ReplaceWithInfoTypeConfig(
    api.GooglePrivacyDlpV2ReplaceWithInfoTypeConfig o) {
  buildCounterGooglePrivacyDlpV2ReplaceWithInfoTypeConfig++;
  if (buildCounterGooglePrivacyDlpV2ReplaceWithInfoTypeConfig < 3) {}
  buildCounterGooglePrivacyDlpV2ReplaceWithInfoTypeConfig--;
}

core.int buildCounterGooglePrivacyDlpV2RequestedOptions = 0;
buildGooglePrivacyDlpV2RequestedOptions() {
  var o = new api.GooglePrivacyDlpV2RequestedOptions();
  buildCounterGooglePrivacyDlpV2RequestedOptions++;
  if (buildCounterGooglePrivacyDlpV2RequestedOptions < 3) {
    o.jobConfig = buildGooglePrivacyDlpV2InspectJobConfig();
    o.snapshotInspectTemplate = buildGooglePrivacyDlpV2InspectTemplate();
  }
  buildCounterGooglePrivacyDlpV2RequestedOptions--;
  return o;
}

checkGooglePrivacyDlpV2RequestedOptions(
    api.GooglePrivacyDlpV2RequestedOptions o) {
  buildCounterGooglePrivacyDlpV2RequestedOptions++;
  if (buildCounterGooglePrivacyDlpV2RequestedOptions < 3) {
    checkGooglePrivacyDlpV2InspectJobConfig(o.jobConfig);
    checkGooglePrivacyDlpV2InspectTemplate(o.snapshotInspectTemplate);
  }
  buildCounterGooglePrivacyDlpV2RequestedOptions--;
}

buildUnnamed3888() {
  var o = new core.List<api.GooglePrivacyDlpV2InfoTypeStats>();
  o.add(buildGooglePrivacyDlpV2InfoTypeStats());
  o.add(buildGooglePrivacyDlpV2InfoTypeStats());
  return o;
}

checkUnnamed3888(core.List<api.GooglePrivacyDlpV2InfoTypeStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoTypeStats(o[0]);
  checkGooglePrivacyDlpV2InfoTypeStats(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2Result = 0;
buildGooglePrivacyDlpV2Result() {
  var o = new api.GooglePrivacyDlpV2Result();
  buildCounterGooglePrivacyDlpV2Result++;
  if (buildCounterGooglePrivacyDlpV2Result < 3) {
    o.infoTypeStats = buildUnnamed3888();
    o.processedBytes = "foo";
    o.totalEstimatedBytes = "foo";
  }
  buildCounterGooglePrivacyDlpV2Result--;
  return o;
}

checkGooglePrivacyDlpV2Result(api.GooglePrivacyDlpV2Result o) {
  buildCounterGooglePrivacyDlpV2Result++;
  if (buildCounterGooglePrivacyDlpV2Result < 3) {
    checkUnnamed3888(o.infoTypeStats);
    unittest.expect(o.processedBytes, unittest.equals('foo'));
    unittest.expect(o.totalEstimatedBytes, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2Result--;
}

buildUnnamed3889() {
  var o = new core.List<api.GooglePrivacyDlpV2Action>();
  o.add(buildGooglePrivacyDlpV2Action());
  o.add(buildGooglePrivacyDlpV2Action());
  return o;
}

checkUnnamed3889(core.List<api.GooglePrivacyDlpV2Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Action(o[0]);
  checkGooglePrivacyDlpV2Action(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig = 0;
buildGooglePrivacyDlpV2RiskAnalysisJobConfig() {
  var o = new api.GooglePrivacyDlpV2RiskAnalysisJobConfig();
  buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig++;
  if (buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig < 3) {
    o.actions = buildUnnamed3889();
    o.privacyMetric = buildGooglePrivacyDlpV2PrivacyMetric();
    o.sourceTable = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig--;
  return o;
}

checkGooglePrivacyDlpV2RiskAnalysisJobConfig(
    api.GooglePrivacyDlpV2RiskAnalysisJobConfig o) {
  buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig++;
  if (buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig < 3) {
    checkUnnamed3889(o.actions);
    checkGooglePrivacyDlpV2PrivacyMetric(o.privacyMetric);
    checkGooglePrivacyDlpV2BigQueryTable(o.sourceTable);
  }
  buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig--;
}

buildUnnamed3890() {
  var o = new core.List<api.GooglePrivacyDlpV2Value>();
  o.add(buildGooglePrivacyDlpV2Value());
  o.add(buildGooglePrivacyDlpV2Value());
  return o;
}

checkUnnamed3890(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0]);
  checkGooglePrivacyDlpV2Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2Row = 0;
buildGooglePrivacyDlpV2Row() {
  var o = new api.GooglePrivacyDlpV2Row();
  buildCounterGooglePrivacyDlpV2Row++;
  if (buildCounterGooglePrivacyDlpV2Row < 3) {
    o.values = buildUnnamed3890();
  }
  buildCounterGooglePrivacyDlpV2Row--;
  return o;
}

checkGooglePrivacyDlpV2Row(api.GooglePrivacyDlpV2Row o) {
  buildCounterGooglePrivacyDlpV2Row++;
  if (buildCounterGooglePrivacyDlpV2Row < 3) {
    checkUnnamed3890(o.values);
  }
  buildCounterGooglePrivacyDlpV2Row--;
}

core.int buildCounterGooglePrivacyDlpV2SaveFindings = 0;
buildGooglePrivacyDlpV2SaveFindings() {
  var o = new api.GooglePrivacyDlpV2SaveFindings();
  buildCounterGooglePrivacyDlpV2SaveFindings++;
  if (buildCounterGooglePrivacyDlpV2SaveFindings < 3) {
    o.outputConfig = buildGooglePrivacyDlpV2OutputStorageConfig();
  }
  buildCounterGooglePrivacyDlpV2SaveFindings--;
  return o;
}

checkGooglePrivacyDlpV2SaveFindings(api.GooglePrivacyDlpV2SaveFindings o) {
  buildCounterGooglePrivacyDlpV2SaveFindings++;
  if (buildCounterGooglePrivacyDlpV2SaveFindings < 3) {
    checkGooglePrivacyDlpV2OutputStorageConfig(o.outputConfig);
  }
  buildCounterGooglePrivacyDlpV2SaveFindings--;
}

core.int buildCounterGooglePrivacyDlpV2Schedule = 0;
buildGooglePrivacyDlpV2Schedule() {
  var o = new api.GooglePrivacyDlpV2Schedule();
  buildCounterGooglePrivacyDlpV2Schedule++;
  if (buildCounterGooglePrivacyDlpV2Schedule < 3) {
    o.recurrencePeriodDuration = "foo";
  }
  buildCounterGooglePrivacyDlpV2Schedule--;
  return o;
}

checkGooglePrivacyDlpV2Schedule(api.GooglePrivacyDlpV2Schedule o) {
  buildCounterGooglePrivacyDlpV2Schedule++;
  if (buildCounterGooglePrivacyDlpV2Schedule < 3) {
    unittest.expect(o.recurrencePeriodDuration, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2Schedule--;
}

buildUnnamed3891() {
  var o = new core.List<api.GooglePrivacyDlpV2QuasiIdentifierField>();
  o.add(buildGooglePrivacyDlpV2QuasiIdentifierField());
  o.add(buildGooglePrivacyDlpV2QuasiIdentifierField());
  return o;
}

checkUnnamed3891(core.List<api.GooglePrivacyDlpV2QuasiIdentifierField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2QuasiIdentifierField(o[0]);
  checkGooglePrivacyDlpV2QuasiIdentifierField(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2StatisticalTable = 0;
buildGooglePrivacyDlpV2StatisticalTable() {
  var o = new api.GooglePrivacyDlpV2StatisticalTable();
  buildCounterGooglePrivacyDlpV2StatisticalTable++;
  if (buildCounterGooglePrivacyDlpV2StatisticalTable < 3) {
    o.quasiIds = buildUnnamed3891();
    o.relativeFrequency = buildGooglePrivacyDlpV2FieldId();
    o.table = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2StatisticalTable--;
  return o;
}

checkGooglePrivacyDlpV2StatisticalTable(
    api.GooglePrivacyDlpV2StatisticalTable o) {
  buildCounterGooglePrivacyDlpV2StatisticalTable++;
  if (buildCounterGooglePrivacyDlpV2StatisticalTable < 3) {
    checkUnnamed3891(o.quasiIds);
    checkGooglePrivacyDlpV2FieldId(o.relativeFrequency);
    checkGooglePrivacyDlpV2BigQueryTable(o.table);
  }
  buildCounterGooglePrivacyDlpV2StatisticalTable--;
}

core.int buildCounterGooglePrivacyDlpV2StorageConfig = 0;
buildGooglePrivacyDlpV2StorageConfig() {
  var o = new api.GooglePrivacyDlpV2StorageConfig();
  buildCounterGooglePrivacyDlpV2StorageConfig++;
  if (buildCounterGooglePrivacyDlpV2StorageConfig < 3) {
    o.bigQueryOptions = buildGooglePrivacyDlpV2BigQueryOptions();
    o.cloudStorageOptions = buildGooglePrivacyDlpV2CloudStorageOptions();
    o.datastoreOptions = buildGooglePrivacyDlpV2DatastoreOptions();
    o.timespanConfig = buildGooglePrivacyDlpV2TimespanConfig();
  }
  buildCounterGooglePrivacyDlpV2StorageConfig--;
  return o;
}

checkGooglePrivacyDlpV2StorageConfig(api.GooglePrivacyDlpV2StorageConfig o) {
  buildCounterGooglePrivacyDlpV2StorageConfig++;
  if (buildCounterGooglePrivacyDlpV2StorageConfig < 3) {
    checkGooglePrivacyDlpV2BigQueryOptions(o.bigQueryOptions);
    checkGooglePrivacyDlpV2CloudStorageOptions(o.cloudStorageOptions);
    checkGooglePrivacyDlpV2DatastoreOptions(o.datastoreOptions);
    checkGooglePrivacyDlpV2TimespanConfig(o.timespanConfig);
  }
  buildCounterGooglePrivacyDlpV2StorageConfig--;
}

buildUnnamed3892() {
  var o = new core.List<api.GooglePrivacyDlpV2StoredInfoTypeVersion>();
  o.add(buildGooglePrivacyDlpV2StoredInfoTypeVersion());
  o.add(buildGooglePrivacyDlpV2StoredInfoTypeVersion());
  return o;
}

checkUnnamed3892(core.List<api.GooglePrivacyDlpV2StoredInfoTypeVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2StoredInfoTypeVersion(o[0]);
  checkGooglePrivacyDlpV2StoredInfoTypeVersion(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2StoredInfoType = 0;
buildGooglePrivacyDlpV2StoredInfoType() {
  var o = new api.GooglePrivacyDlpV2StoredInfoType();
  buildCounterGooglePrivacyDlpV2StoredInfoType++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoType < 3) {
    o.currentVersion = buildGooglePrivacyDlpV2StoredInfoTypeVersion();
    o.name = "foo";
    o.pendingVersions = buildUnnamed3892();
  }
  buildCounterGooglePrivacyDlpV2StoredInfoType--;
  return o;
}

checkGooglePrivacyDlpV2StoredInfoType(api.GooglePrivacyDlpV2StoredInfoType o) {
  buildCounterGooglePrivacyDlpV2StoredInfoType++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoType < 3) {
    checkGooglePrivacyDlpV2StoredInfoTypeVersion(o.currentVersion);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3892(o.pendingVersions);
  }
  buildCounterGooglePrivacyDlpV2StoredInfoType--;
}

core.int buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig = 0;
buildGooglePrivacyDlpV2StoredInfoTypeConfig() {
  var o = new api.GooglePrivacyDlpV2StoredInfoTypeConfig();
  buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.largeCustomDictionary =
        buildGooglePrivacyDlpV2LargeCustomDictionaryConfig();
  }
  buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig--;
  return o;
}

checkGooglePrivacyDlpV2StoredInfoTypeConfig(
    api.GooglePrivacyDlpV2StoredInfoTypeConfig o) {
  buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2LargeCustomDictionaryConfig(o.largeCustomDictionary);
  }
  buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig--;
}

core.int buildCounterGooglePrivacyDlpV2StoredInfoTypeStats = 0;
buildGooglePrivacyDlpV2StoredInfoTypeStats() {
  var o = new api.GooglePrivacyDlpV2StoredInfoTypeStats();
  buildCounterGooglePrivacyDlpV2StoredInfoTypeStats++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoTypeStats < 3) {
    o.largeCustomDictionary =
        buildGooglePrivacyDlpV2LargeCustomDictionaryStats();
  }
  buildCounterGooglePrivacyDlpV2StoredInfoTypeStats--;
  return o;
}

checkGooglePrivacyDlpV2StoredInfoTypeStats(
    api.GooglePrivacyDlpV2StoredInfoTypeStats o) {
  buildCounterGooglePrivacyDlpV2StoredInfoTypeStats++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoTypeStats < 3) {
    checkGooglePrivacyDlpV2LargeCustomDictionaryStats(o.largeCustomDictionary);
  }
  buildCounterGooglePrivacyDlpV2StoredInfoTypeStats--;
}

buildUnnamed3893() {
  var o = new core.List<api.GooglePrivacyDlpV2Error>();
  o.add(buildGooglePrivacyDlpV2Error());
  o.add(buildGooglePrivacyDlpV2Error());
  return o;
}

checkUnnamed3893(core.List<api.GooglePrivacyDlpV2Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Error(o[0]);
  checkGooglePrivacyDlpV2Error(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion = 0;
buildGooglePrivacyDlpV2StoredInfoTypeVersion() {
  var o = new api.GooglePrivacyDlpV2StoredInfoTypeVersion();
  buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion < 3) {
    o.config = buildGooglePrivacyDlpV2StoredInfoTypeConfig();
    o.createTime = "foo";
    o.errors = buildUnnamed3893();
    o.state = "foo";
    o.stats = buildGooglePrivacyDlpV2StoredInfoTypeStats();
  }
  buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion--;
  return o;
}

checkGooglePrivacyDlpV2StoredInfoTypeVersion(
    api.GooglePrivacyDlpV2StoredInfoTypeVersion o) {
  buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion < 3) {
    checkGooglePrivacyDlpV2StoredInfoTypeConfig(o.config);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed3893(o.errors);
    unittest.expect(o.state, unittest.equals('foo'));
    checkGooglePrivacyDlpV2StoredInfoTypeStats(o.stats);
  }
  buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion--;
}

core.int buildCounterGooglePrivacyDlpV2StoredType = 0;
buildGooglePrivacyDlpV2StoredType() {
  var o = new api.GooglePrivacyDlpV2StoredType();
  buildCounterGooglePrivacyDlpV2StoredType++;
  if (buildCounterGooglePrivacyDlpV2StoredType < 3) {
    o.createTime = "foo";
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2StoredType--;
  return o;
}

checkGooglePrivacyDlpV2StoredType(api.GooglePrivacyDlpV2StoredType o) {
  buildCounterGooglePrivacyDlpV2StoredType++;
  if (buildCounterGooglePrivacyDlpV2StoredType < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2StoredType--;
}

core.int buildCounterGooglePrivacyDlpV2SummaryResult = 0;
buildGooglePrivacyDlpV2SummaryResult() {
  var o = new api.GooglePrivacyDlpV2SummaryResult();
  buildCounterGooglePrivacyDlpV2SummaryResult++;
  if (buildCounterGooglePrivacyDlpV2SummaryResult < 3) {
    o.code = "foo";
    o.count = "foo";
    o.details = "foo";
  }
  buildCounterGooglePrivacyDlpV2SummaryResult--;
  return o;
}

checkGooglePrivacyDlpV2SummaryResult(api.GooglePrivacyDlpV2SummaryResult o) {
  buildCounterGooglePrivacyDlpV2SummaryResult++;
  if (buildCounterGooglePrivacyDlpV2SummaryResult < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.details, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2SummaryResult--;
}

core.int buildCounterGooglePrivacyDlpV2SurrogateType = 0;
buildGooglePrivacyDlpV2SurrogateType() {
  var o = new api.GooglePrivacyDlpV2SurrogateType();
  buildCounterGooglePrivacyDlpV2SurrogateType++;
  if (buildCounterGooglePrivacyDlpV2SurrogateType < 3) {}
  buildCounterGooglePrivacyDlpV2SurrogateType--;
  return o;
}

checkGooglePrivacyDlpV2SurrogateType(api.GooglePrivacyDlpV2SurrogateType o) {
  buildCounterGooglePrivacyDlpV2SurrogateType++;
  if (buildCounterGooglePrivacyDlpV2SurrogateType < 3) {}
  buildCounterGooglePrivacyDlpV2SurrogateType--;
}

buildUnnamed3894() {
  var o = new core.List<api.GooglePrivacyDlpV2FieldId>();
  o.add(buildGooglePrivacyDlpV2FieldId());
  o.add(buildGooglePrivacyDlpV2FieldId());
  return o;
}

checkUnnamed3894(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0]);
  checkGooglePrivacyDlpV2FieldId(o[1]);
}

buildUnnamed3895() {
  var o = new core.List<api.GooglePrivacyDlpV2Row>();
  o.add(buildGooglePrivacyDlpV2Row());
  o.add(buildGooglePrivacyDlpV2Row());
  return o;
}

checkUnnamed3895(core.List<api.GooglePrivacyDlpV2Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Row(o[0]);
  checkGooglePrivacyDlpV2Row(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2Table = 0;
buildGooglePrivacyDlpV2Table() {
  var o = new api.GooglePrivacyDlpV2Table();
  buildCounterGooglePrivacyDlpV2Table++;
  if (buildCounterGooglePrivacyDlpV2Table < 3) {
    o.headers = buildUnnamed3894();
    o.rows = buildUnnamed3895();
  }
  buildCounterGooglePrivacyDlpV2Table--;
  return o;
}

checkGooglePrivacyDlpV2Table(api.GooglePrivacyDlpV2Table o) {
  buildCounterGooglePrivacyDlpV2Table++;
  if (buildCounterGooglePrivacyDlpV2Table < 3) {
    checkUnnamed3894(o.headers);
    checkUnnamed3895(o.rows);
  }
  buildCounterGooglePrivacyDlpV2Table--;
}

core.int buildCounterGooglePrivacyDlpV2TableLocation = 0;
buildGooglePrivacyDlpV2TableLocation() {
  var o = new api.GooglePrivacyDlpV2TableLocation();
  buildCounterGooglePrivacyDlpV2TableLocation++;
  if (buildCounterGooglePrivacyDlpV2TableLocation < 3) {
    o.rowIndex = "foo";
  }
  buildCounterGooglePrivacyDlpV2TableLocation--;
  return o;
}

checkGooglePrivacyDlpV2TableLocation(api.GooglePrivacyDlpV2TableLocation o) {
  buildCounterGooglePrivacyDlpV2TableLocation++;
  if (buildCounterGooglePrivacyDlpV2TableLocation < 3) {
    unittest.expect(o.rowIndex, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2TableLocation--;
}

core.int buildCounterGooglePrivacyDlpV2TaggedField = 0;
buildGooglePrivacyDlpV2TaggedField() {
  var o = new api.GooglePrivacyDlpV2TaggedField();
  buildCounterGooglePrivacyDlpV2TaggedField++;
  if (buildCounterGooglePrivacyDlpV2TaggedField < 3) {
    o.customTag = "foo";
    o.field = buildGooglePrivacyDlpV2FieldId();
    o.inferred = buildGoogleProtobufEmpty();
    o.infoType = buildGooglePrivacyDlpV2InfoType();
  }
  buildCounterGooglePrivacyDlpV2TaggedField--;
  return o;
}

checkGooglePrivacyDlpV2TaggedField(api.GooglePrivacyDlpV2TaggedField o) {
  buildCounterGooglePrivacyDlpV2TaggedField++;
  if (buildCounterGooglePrivacyDlpV2TaggedField < 3) {
    unittest.expect(o.customTag, unittest.equals('foo'));
    checkGooglePrivacyDlpV2FieldId(o.field);
    checkGoogleProtobufEmpty(o.inferred);
    checkGooglePrivacyDlpV2InfoType(o.infoType);
  }
  buildCounterGooglePrivacyDlpV2TaggedField--;
}

core.int buildCounterGooglePrivacyDlpV2TimePartConfig = 0;
buildGooglePrivacyDlpV2TimePartConfig() {
  var o = new api.GooglePrivacyDlpV2TimePartConfig();
  buildCounterGooglePrivacyDlpV2TimePartConfig++;
  if (buildCounterGooglePrivacyDlpV2TimePartConfig < 3) {
    o.partToExtract = "foo";
  }
  buildCounterGooglePrivacyDlpV2TimePartConfig--;
  return o;
}

checkGooglePrivacyDlpV2TimePartConfig(api.GooglePrivacyDlpV2TimePartConfig o) {
  buildCounterGooglePrivacyDlpV2TimePartConfig++;
  if (buildCounterGooglePrivacyDlpV2TimePartConfig < 3) {
    unittest.expect(o.partToExtract, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2TimePartConfig--;
}

core.int buildCounterGooglePrivacyDlpV2TimeZone = 0;
buildGooglePrivacyDlpV2TimeZone() {
  var o = new api.GooglePrivacyDlpV2TimeZone();
  buildCounterGooglePrivacyDlpV2TimeZone++;
  if (buildCounterGooglePrivacyDlpV2TimeZone < 3) {
    o.offsetMinutes = 42;
  }
  buildCounterGooglePrivacyDlpV2TimeZone--;
  return o;
}

checkGooglePrivacyDlpV2TimeZone(api.GooglePrivacyDlpV2TimeZone o) {
  buildCounterGooglePrivacyDlpV2TimeZone++;
  if (buildCounterGooglePrivacyDlpV2TimeZone < 3) {
    unittest.expect(o.offsetMinutes, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2TimeZone--;
}

core.int buildCounterGooglePrivacyDlpV2TimespanConfig = 0;
buildGooglePrivacyDlpV2TimespanConfig() {
  var o = new api.GooglePrivacyDlpV2TimespanConfig();
  buildCounterGooglePrivacyDlpV2TimespanConfig++;
  if (buildCounterGooglePrivacyDlpV2TimespanConfig < 3) {
    o.enableAutoPopulationOfTimespanConfig = true;
    o.endTime = "foo";
    o.startTime = "foo";
    o.timestampField = buildGooglePrivacyDlpV2FieldId();
  }
  buildCounterGooglePrivacyDlpV2TimespanConfig--;
  return o;
}

checkGooglePrivacyDlpV2TimespanConfig(api.GooglePrivacyDlpV2TimespanConfig o) {
  buildCounterGooglePrivacyDlpV2TimespanConfig++;
  if (buildCounterGooglePrivacyDlpV2TimespanConfig < 3) {
    unittest.expect(o.enableAutoPopulationOfTimespanConfig, unittest.isTrue);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkGooglePrivacyDlpV2FieldId(o.timestampField);
  }
  buildCounterGooglePrivacyDlpV2TimespanConfig--;
}

buildUnnamed3896() {
  var o = new core.List<api.GooglePrivacyDlpV2TransformationSummary>();
  o.add(buildGooglePrivacyDlpV2TransformationSummary());
  o.add(buildGooglePrivacyDlpV2TransformationSummary());
  return o;
}

checkUnnamed3896(core.List<api.GooglePrivacyDlpV2TransformationSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2TransformationSummary(o[0]);
  checkGooglePrivacyDlpV2TransformationSummary(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2TransformationOverview = 0;
buildGooglePrivacyDlpV2TransformationOverview() {
  var o = new api.GooglePrivacyDlpV2TransformationOverview();
  buildCounterGooglePrivacyDlpV2TransformationOverview++;
  if (buildCounterGooglePrivacyDlpV2TransformationOverview < 3) {
    o.transformationSummaries = buildUnnamed3896();
    o.transformedBytes = "foo";
  }
  buildCounterGooglePrivacyDlpV2TransformationOverview--;
  return o;
}

checkGooglePrivacyDlpV2TransformationOverview(
    api.GooglePrivacyDlpV2TransformationOverview o) {
  buildCounterGooglePrivacyDlpV2TransformationOverview++;
  if (buildCounterGooglePrivacyDlpV2TransformationOverview < 3) {
    checkUnnamed3896(o.transformationSummaries);
    unittest.expect(o.transformedBytes, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2TransformationOverview--;
}

buildUnnamed3897() {
  var o = new core.List<api.GooglePrivacyDlpV2FieldTransformation>();
  o.add(buildGooglePrivacyDlpV2FieldTransformation());
  o.add(buildGooglePrivacyDlpV2FieldTransformation());
  return o;
}

checkUnnamed3897(core.List<api.GooglePrivacyDlpV2FieldTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldTransformation(o[0]);
  checkGooglePrivacyDlpV2FieldTransformation(o[1]);
}

buildUnnamed3898() {
  var o = new core.List<api.GooglePrivacyDlpV2SummaryResult>();
  o.add(buildGooglePrivacyDlpV2SummaryResult());
  o.add(buildGooglePrivacyDlpV2SummaryResult());
  return o;
}

checkUnnamed3898(core.List<api.GooglePrivacyDlpV2SummaryResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2SummaryResult(o[0]);
  checkGooglePrivacyDlpV2SummaryResult(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2TransformationSummary = 0;
buildGooglePrivacyDlpV2TransformationSummary() {
  var o = new api.GooglePrivacyDlpV2TransformationSummary();
  buildCounterGooglePrivacyDlpV2TransformationSummary++;
  if (buildCounterGooglePrivacyDlpV2TransformationSummary < 3) {
    o.field = buildGooglePrivacyDlpV2FieldId();
    o.fieldTransformations = buildUnnamed3897();
    o.infoType = buildGooglePrivacyDlpV2InfoType();
    o.recordSuppress = buildGooglePrivacyDlpV2RecordSuppression();
    o.results = buildUnnamed3898();
    o.transformation = buildGooglePrivacyDlpV2PrimitiveTransformation();
    o.transformedBytes = "foo";
  }
  buildCounterGooglePrivacyDlpV2TransformationSummary--;
  return o;
}

checkGooglePrivacyDlpV2TransformationSummary(
    api.GooglePrivacyDlpV2TransformationSummary o) {
  buildCounterGooglePrivacyDlpV2TransformationSummary++;
  if (buildCounterGooglePrivacyDlpV2TransformationSummary < 3) {
    checkGooglePrivacyDlpV2FieldId(o.field);
    checkUnnamed3897(o.fieldTransformations);
    checkGooglePrivacyDlpV2InfoType(o.infoType);
    checkGooglePrivacyDlpV2RecordSuppression(o.recordSuppress);
    checkUnnamed3898(o.results);
    checkGooglePrivacyDlpV2PrimitiveTransformation(o.transformation);
    unittest.expect(o.transformedBytes, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2TransformationSummary--;
}

core.int buildCounterGooglePrivacyDlpV2TransientCryptoKey = 0;
buildGooglePrivacyDlpV2TransientCryptoKey() {
  var o = new api.GooglePrivacyDlpV2TransientCryptoKey();
  buildCounterGooglePrivacyDlpV2TransientCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2TransientCryptoKey < 3) {
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2TransientCryptoKey--;
  return o;
}

checkGooglePrivacyDlpV2TransientCryptoKey(
    api.GooglePrivacyDlpV2TransientCryptoKey o) {
  buildCounterGooglePrivacyDlpV2TransientCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2TransientCryptoKey < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2TransientCryptoKey--;
}

core.int buildCounterGooglePrivacyDlpV2Trigger = 0;
buildGooglePrivacyDlpV2Trigger() {
  var o = new api.GooglePrivacyDlpV2Trigger();
  buildCounterGooglePrivacyDlpV2Trigger++;
  if (buildCounterGooglePrivacyDlpV2Trigger < 3) {
    o.schedule = buildGooglePrivacyDlpV2Schedule();
  }
  buildCounterGooglePrivacyDlpV2Trigger--;
  return o;
}

checkGooglePrivacyDlpV2Trigger(api.GooglePrivacyDlpV2Trigger o) {
  buildCounterGooglePrivacyDlpV2Trigger++;
  if (buildCounterGooglePrivacyDlpV2Trigger < 3) {
    checkGooglePrivacyDlpV2Schedule(o.schedule);
  }
  buildCounterGooglePrivacyDlpV2Trigger--;
}

core.int buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey = 0;
buildGooglePrivacyDlpV2UnwrappedCryptoKey() {
  var o = new api.GooglePrivacyDlpV2UnwrappedCryptoKey();
  buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey < 3) {
    o.key = "foo";
  }
  buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey--;
  return o;
}

checkGooglePrivacyDlpV2UnwrappedCryptoKey(
    api.GooglePrivacyDlpV2UnwrappedCryptoKey o) {
  buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey--;
}

core.int buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest = 0;
buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest() {
  var o = new api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
  buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest < 3) {
    o.deidentifyTemplate = buildGooglePrivacyDlpV2DeidentifyTemplate();
    o.updateMask = "foo";
  }
  buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest--;
  return o;
}

checkGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest(
    api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest o) {
  buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest < 3) {
    checkGooglePrivacyDlpV2DeidentifyTemplate(o.deidentifyTemplate);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest = 0;
buildGooglePrivacyDlpV2UpdateInspectTemplateRequest() {
  var o = new api.GooglePrivacyDlpV2UpdateInspectTemplateRequest();
  buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest < 3) {
    o.inspectTemplate = buildGooglePrivacyDlpV2InspectTemplate();
    o.updateMask = "foo";
  }
  buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest--;
  return o;
}

checkGooglePrivacyDlpV2UpdateInspectTemplateRequest(
    api.GooglePrivacyDlpV2UpdateInspectTemplateRequest o) {
  buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest < 3) {
    checkGooglePrivacyDlpV2InspectTemplate(o.inspectTemplate);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest = 0;
buildGooglePrivacyDlpV2UpdateJobTriggerRequest() {
  var o = new api.GooglePrivacyDlpV2UpdateJobTriggerRequest();
  buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest < 3) {
    o.jobTrigger = buildGooglePrivacyDlpV2JobTrigger();
    o.updateMask = "foo";
  }
  buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest--;
  return o;
}

checkGooglePrivacyDlpV2UpdateJobTriggerRequest(
    api.GooglePrivacyDlpV2UpdateJobTriggerRequest o) {
  buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest < 3) {
    checkGooglePrivacyDlpV2JobTrigger(o.jobTrigger);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest--;
}

core.int buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest = 0;
buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest() {
  var o = new api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
  buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest < 3) {
    o.config = buildGooglePrivacyDlpV2StoredInfoTypeConfig();
    o.updateMask = "foo";
  }
  buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest--;
  return o;
}

checkGooglePrivacyDlpV2UpdateStoredInfoTypeRequest(
    api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest o) {
  buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest < 3) {
    checkGooglePrivacyDlpV2StoredInfoTypeConfig(o.config);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest--;
}

core.int buildCounterGooglePrivacyDlpV2Value = 0;
buildGooglePrivacyDlpV2Value() {
  var o = new api.GooglePrivacyDlpV2Value();
  buildCounterGooglePrivacyDlpV2Value++;
  if (buildCounterGooglePrivacyDlpV2Value < 3) {
    o.booleanValue = true;
    o.dateValue = buildGoogleTypeDate();
    o.dayOfWeekValue = "foo";
    o.floatValue = 42.0;
    o.integerValue = "foo";
    o.stringValue = "foo";
    o.timeValue = buildGoogleTypeTimeOfDay();
    o.timestampValue = "foo";
  }
  buildCounterGooglePrivacyDlpV2Value--;
  return o;
}

checkGooglePrivacyDlpV2Value(api.GooglePrivacyDlpV2Value o) {
  buildCounterGooglePrivacyDlpV2Value++;
  if (buildCounterGooglePrivacyDlpV2Value < 3) {
    unittest.expect(o.booleanValue, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue);
    unittest.expect(o.dayOfWeekValue, unittest.equals('foo'));
    unittest.expect(o.floatValue, unittest.equals(42.0));
    unittest.expect(o.integerValue, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
    checkGoogleTypeTimeOfDay(o.timeValue);
    unittest.expect(o.timestampValue, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2Value--;
}

core.int buildCounterGooglePrivacyDlpV2ValueFrequency = 0;
buildGooglePrivacyDlpV2ValueFrequency() {
  var o = new api.GooglePrivacyDlpV2ValueFrequency();
  buildCounterGooglePrivacyDlpV2ValueFrequency++;
  if (buildCounterGooglePrivacyDlpV2ValueFrequency < 3) {
    o.count = "foo";
    o.value = buildGooglePrivacyDlpV2Value();
  }
  buildCounterGooglePrivacyDlpV2ValueFrequency--;
  return o;
}

checkGooglePrivacyDlpV2ValueFrequency(api.GooglePrivacyDlpV2ValueFrequency o) {
  buildCounterGooglePrivacyDlpV2ValueFrequency++;
  if (buildCounterGooglePrivacyDlpV2ValueFrequency < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    checkGooglePrivacyDlpV2Value(o.value);
  }
  buildCounterGooglePrivacyDlpV2ValueFrequency--;
}

buildUnnamed3899() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3899(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2WordList = 0;
buildGooglePrivacyDlpV2WordList() {
  var o = new api.GooglePrivacyDlpV2WordList();
  buildCounterGooglePrivacyDlpV2WordList++;
  if (buildCounterGooglePrivacyDlpV2WordList < 3) {
    o.words = buildUnnamed3899();
  }
  buildCounterGooglePrivacyDlpV2WordList--;
  return o;
}

checkGooglePrivacyDlpV2WordList(api.GooglePrivacyDlpV2WordList o) {
  buildCounterGooglePrivacyDlpV2WordList++;
  if (buildCounterGooglePrivacyDlpV2WordList < 3) {
    checkUnnamed3899(o.words);
  }
  buildCounterGooglePrivacyDlpV2WordList--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
buildGoogleProtobufEmpty() {
  var o = new api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

buildUnnamed3900() {
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

checkUnnamed3900(core.Map<core.String, core.Object> o) {
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

buildUnnamed3901() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3900());
  o.add(buildUnnamed3900());
  return o;
}

checkUnnamed3901(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3900(o[0]);
  checkUnnamed3900(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3901();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3901(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeDate = 0;
buildGoogleTypeDate() {
  var o = new api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterGoogleTypeDate--;
}

core.int buildCounterGoogleTypeTimeOfDay = 0;
buildGoogleTypeTimeOfDay() {
  var o = new api.GoogleTypeTimeOfDay();
  buildCounterGoogleTypeTimeOfDay++;
  if (buildCounterGoogleTypeTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterGoogleTypeTimeOfDay--;
  return o;
}

checkGoogleTypeTimeOfDay(api.GoogleTypeTimeOfDay o) {
  buildCounterGoogleTypeTimeOfDay++;
  if (buildCounterGoogleTypeTimeOfDay < 3) {
    unittest.expect(o.hours, unittest.equals(42));
    unittest.expect(o.minutes, unittest.equals(42));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals(42));
  }
  buildCounterGoogleTypeTimeOfDay--;
}

main() {
  unittest.group("obj-schema-GooglePrivacyDlpV2Action", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Action();
      var od = new api.GooglePrivacyDlpV2Action.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Action(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ActivateJobTriggerRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ActivateJobTriggerRequest();
      var od = new api.GooglePrivacyDlpV2ActivateJobTriggerRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2ActivateJobTriggerRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails();
      var od = new api.GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2AuxiliaryTable", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2AuxiliaryTable();
      var od = new api.GooglePrivacyDlpV2AuxiliaryTable.fromJson(o.toJson());
      checkGooglePrivacyDlpV2AuxiliaryTable(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2BigQueryField", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2BigQueryField();
      var od = new api.GooglePrivacyDlpV2BigQueryField.fromJson(o.toJson());
      checkGooglePrivacyDlpV2BigQueryField(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2BigQueryKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2BigQueryKey();
      var od = new api.GooglePrivacyDlpV2BigQueryKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2BigQueryKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2BigQueryOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2BigQueryOptions();
      var od = new api.GooglePrivacyDlpV2BigQueryOptions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2BigQueryOptions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2BigQueryTable", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2BigQueryTable();
      var od = new api.GooglePrivacyDlpV2BigQueryTable.fromJson(o.toJson());
      checkGooglePrivacyDlpV2BigQueryTable(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2BoundingBox", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2BoundingBox();
      var od = new api.GooglePrivacyDlpV2BoundingBox.fromJson(o.toJson());
      checkGooglePrivacyDlpV2BoundingBox(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Bucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Bucket();
      var od = new api.GooglePrivacyDlpV2Bucket.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Bucket(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2BucketingConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2BucketingConfig();
      var od = new api.GooglePrivacyDlpV2BucketingConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2BucketingConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ByteContentItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ByteContentItem();
      var od = new api.GooglePrivacyDlpV2ByteContentItem.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ByteContentItem(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CancelDlpJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CancelDlpJobRequest();
      var od =
          new api.GooglePrivacyDlpV2CancelDlpJobRequest.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CancelDlpJobRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CategoricalStatsConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CategoricalStatsConfig();
      var od =
          new api.GooglePrivacyDlpV2CategoricalStatsConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CategoricalStatsConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CategoricalStatsHistogramBucket",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CategoricalStatsHistogramBucket();
      var od =
          new api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2CategoricalStatsHistogramBucket(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CategoricalStatsResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CategoricalStatsResult();
      var od =
          new api.GooglePrivacyDlpV2CategoricalStatsResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CategoricalStatsResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CharacterMaskConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CharacterMaskConfig();
      var od =
          new api.GooglePrivacyDlpV2CharacterMaskConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CharacterMaskConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CharsToIgnore", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CharsToIgnore();
      var od = new api.GooglePrivacyDlpV2CharsToIgnore.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CharsToIgnore(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CloudStorageFileSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CloudStorageFileSet();
      var od =
          new api.GooglePrivacyDlpV2CloudStorageFileSet.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CloudStorageFileSet(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CloudStorageOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CloudStorageOptions();
      var od =
          new api.GooglePrivacyDlpV2CloudStorageOptions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CloudStorageOptions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CloudStoragePath", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CloudStoragePath();
      var od = new api.GooglePrivacyDlpV2CloudStoragePath.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CloudStoragePath(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CloudStorageRegexFileSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CloudStorageRegexFileSet();
      var od = new api.GooglePrivacyDlpV2CloudStorageRegexFileSet.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2CloudStorageRegexFileSet(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Color", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Color();
      var od = new api.GooglePrivacyDlpV2Color.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Color(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Condition", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Condition();
      var od = new api.GooglePrivacyDlpV2Condition.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Condition(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Conditions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Conditions();
      var od = new api.GooglePrivacyDlpV2Conditions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Conditions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ContentItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ContentItem();
      var od = new api.GooglePrivacyDlpV2ContentItem.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ContentItem(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ContentLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ContentLocation();
      var od = new api.GooglePrivacyDlpV2ContentLocation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ContentLocation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CreateDeidentifyTemplateRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
      var od =
          new api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2CreateDeidentifyTemplateRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CreateDlpJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CreateDlpJobRequest();
      var od =
          new api.GooglePrivacyDlpV2CreateDlpJobRequest.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CreateDlpJobRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CreateInspectTemplateRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CreateInspectTemplateRequest();
      var od = new api.GooglePrivacyDlpV2CreateInspectTemplateRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2CreateInspectTemplateRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CreateJobTriggerRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CreateJobTriggerRequest();
      var od = new api.GooglePrivacyDlpV2CreateJobTriggerRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2CreateJobTriggerRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CreateStoredInfoTypeRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest();
      var od = new api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2CreateStoredInfoTypeRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CryptoDeterministicConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CryptoDeterministicConfig();
      var od = new api.GooglePrivacyDlpV2CryptoDeterministicConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2CryptoDeterministicConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CryptoHashConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CryptoHashConfig();
      var od = new api.GooglePrivacyDlpV2CryptoHashConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CryptoHashConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CryptoKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CryptoKey();
      var od = new api.GooglePrivacyDlpV2CryptoKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CryptoKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig();
      var od = new api.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2CustomInfoType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2CustomInfoType();
      var od = new api.GooglePrivacyDlpV2CustomInfoType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CustomInfoType(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2DatastoreKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2DatastoreKey();
      var od = new api.GooglePrivacyDlpV2DatastoreKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DatastoreKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2DatastoreOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2DatastoreOptions();
      var od = new api.GooglePrivacyDlpV2DatastoreOptions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DatastoreOptions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2DateShiftConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2DateShiftConfig();
      var od = new api.GooglePrivacyDlpV2DateShiftConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DateShiftConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2DateTime", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2DateTime();
      var od = new api.GooglePrivacyDlpV2DateTime.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DateTime(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2DeidentifyConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2DeidentifyConfig();
      var od = new api.GooglePrivacyDlpV2DeidentifyConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DeidentifyConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2DeidentifyContentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2DeidentifyContentRequest();
      var od = new api.GooglePrivacyDlpV2DeidentifyContentRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2DeidentifyContentRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2DeidentifyContentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2DeidentifyContentResponse();
      var od = new api.GooglePrivacyDlpV2DeidentifyContentResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2DeidentifyContentResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2DeidentifyTemplate", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2DeidentifyTemplate();
      var od =
          new api.GooglePrivacyDlpV2DeidentifyTemplate.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DeidentifyTemplate(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2DeltaPresenceEstimationConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2DeltaPresenceEstimationConfig();
      var od = new api.GooglePrivacyDlpV2DeltaPresenceEstimationConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2DeltaPresenceEstimationConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket();
      var od = new api
              .GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues();
      var od = new api
              .GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2DeltaPresenceEstimationResult",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2DeltaPresenceEstimationResult();
      var od = new api.GooglePrivacyDlpV2DeltaPresenceEstimationResult.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2DeltaPresenceEstimationResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2DetectionRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2DetectionRule();
      var od = new api.GooglePrivacyDlpV2DetectionRule.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DetectionRule(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Dictionary", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Dictionary();
      var od = new api.GooglePrivacyDlpV2Dictionary.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Dictionary(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2DlpJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2DlpJob();
      var od = new api.GooglePrivacyDlpV2DlpJob.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DlpJob(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2DocumentLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2DocumentLocation();
      var od = new api.GooglePrivacyDlpV2DocumentLocation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DocumentLocation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2EntityId", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2EntityId();
      var od = new api.GooglePrivacyDlpV2EntityId.fromJson(o.toJson());
      checkGooglePrivacyDlpV2EntityId(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Error", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Error();
      var od = new api.GooglePrivacyDlpV2Error.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Error(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ExcludeInfoTypes", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ExcludeInfoTypes();
      var od = new api.GooglePrivacyDlpV2ExcludeInfoTypes.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ExcludeInfoTypes(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ExclusionRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ExclusionRule();
      var od = new api.GooglePrivacyDlpV2ExclusionRule.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ExclusionRule(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Expressions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Expressions();
      var od = new api.GooglePrivacyDlpV2Expressions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Expressions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2FieldId", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2FieldId();
      var od = new api.GooglePrivacyDlpV2FieldId.fromJson(o.toJson());
      checkGooglePrivacyDlpV2FieldId(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2FieldTransformation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2FieldTransformation();
      var od =
          new api.GooglePrivacyDlpV2FieldTransformation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2FieldTransformation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2FileSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2FileSet();
      var od = new api.GooglePrivacyDlpV2FileSet.fromJson(o.toJson());
      checkGooglePrivacyDlpV2FileSet(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Finding", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Finding();
      var od = new api.GooglePrivacyDlpV2Finding.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Finding(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2FindingLimits", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2FindingLimits();
      var od = new api.GooglePrivacyDlpV2FindingLimits.fromJson(o.toJson());
      checkGooglePrivacyDlpV2FindingLimits(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2FixedSizeBucketingConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2FixedSizeBucketingConfig();
      var od = new api.GooglePrivacyDlpV2FixedSizeBucketingConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2FixedSizeBucketingConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2HotwordRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2HotwordRule();
      var od = new api.GooglePrivacyDlpV2HotwordRule.fromJson(o.toJson());
      checkGooglePrivacyDlpV2HotwordRule(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ImageLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ImageLocation();
      var od = new api.GooglePrivacyDlpV2ImageLocation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ImageLocation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ImageRedactionConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ImageRedactionConfig();
      var od =
          new api.GooglePrivacyDlpV2ImageRedactionConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ImageRedactionConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2InfoType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2InfoType();
      var od = new api.GooglePrivacyDlpV2InfoType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InfoType(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2InfoTypeDescription", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2InfoTypeDescription();
      var od =
          new api.GooglePrivacyDlpV2InfoTypeDescription.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InfoTypeDescription(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2InfoTypeLimit", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2InfoTypeLimit();
      var od = new api.GooglePrivacyDlpV2InfoTypeLimit.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InfoTypeLimit(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2InfoTypeStats", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2InfoTypeStats();
      var od = new api.GooglePrivacyDlpV2InfoTypeStats.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InfoTypeStats(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2InfoTypeTransformation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2InfoTypeTransformation();
      var od =
          new api.GooglePrivacyDlpV2InfoTypeTransformation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InfoTypeTransformation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2InfoTypeTransformations", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2InfoTypeTransformations();
      var od = new api.GooglePrivacyDlpV2InfoTypeTransformations.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2InfoTypeTransformations(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2InspectConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2InspectConfig();
      var od = new api.GooglePrivacyDlpV2InspectConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2InspectContentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2InspectContentRequest();
      var od =
          new api.GooglePrivacyDlpV2InspectContentRequest.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectContentRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2InspectContentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2InspectContentResponse();
      var od =
          new api.GooglePrivacyDlpV2InspectContentResponse.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectContentResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2InspectDataSourceDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2InspectDataSourceDetails();
      var od = new api.GooglePrivacyDlpV2InspectDataSourceDetails.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2InspectDataSourceDetails(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2InspectJobConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2InspectJobConfig();
      var od = new api.GooglePrivacyDlpV2InspectJobConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectJobConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2InspectResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2InspectResult();
      var od = new api.GooglePrivacyDlpV2InspectResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2InspectTemplate", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2InspectTemplate();
      var od = new api.GooglePrivacyDlpV2InspectTemplate.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectTemplate(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2InspectionRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2InspectionRule();
      var od = new api.GooglePrivacyDlpV2InspectionRule.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectionRule(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2InspectionRuleSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2InspectionRuleSet();
      var od = new api.GooglePrivacyDlpV2InspectionRuleSet.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectionRuleSet(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2JobNotificationEmails", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2JobNotificationEmails();
      var od =
          new api.GooglePrivacyDlpV2JobNotificationEmails.fromJson(o.toJson());
      checkGooglePrivacyDlpV2JobNotificationEmails(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2JobTrigger", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2JobTrigger();
      var od = new api.GooglePrivacyDlpV2JobTrigger.fromJson(o.toJson());
      checkGooglePrivacyDlpV2JobTrigger(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2KAnonymityConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2KAnonymityConfig();
      var od = new api.GooglePrivacyDlpV2KAnonymityConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2KAnonymityConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2KAnonymityEquivalenceClass", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2KAnonymityEquivalenceClass();
      var od = new api.GooglePrivacyDlpV2KAnonymityEquivalenceClass.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2KAnonymityEquivalenceClass(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2KAnonymityHistogramBucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2KAnonymityHistogramBucket();
      var od = new api.GooglePrivacyDlpV2KAnonymityHistogramBucket.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2KAnonymityHistogramBucket(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2KAnonymityResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2KAnonymityResult();
      var od = new api.GooglePrivacyDlpV2KAnonymityResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2KAnonymityResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2KMapEstimationConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2KMapEstimationConfig();
      var od =
          new api.GooglePrivacyDlpV2KMapEstimationConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2KMapEstimationConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2KMapEstimationHistogramBucket",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2KMapEstimationHistogramBucket();
      var od = new api.GooglePrivacyDlpV2KMapEstimationHistogramBucket.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2KMapEstimationHistogramBucket(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2KMapEstimationQuasiIdValues",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2KMapEstimationQuasiIdValues();
      var od = new api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2KMapEstimationQuasiIdValues(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2KMapEstimationResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2KMapEstimationResult();
      var od =
          new api.GooglePrivacyDlpV2KMapEstimationResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2KMapEstimationResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Key", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Key();
      var od = new api.GooglePrivacyDlpV2Key.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Key(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2KindExpression", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2KindExpression();
      var od = new api.GooglePrivacyDlpV2KindExpression.fromJson(o.toJson());
      checkGooglePrivacyDlpV2KindExpression(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2KmsWrappedCryptoKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2KmsWrappedCryptoKey();
      var od =
          new api.GooglePrivacyDlpV2KmsWrappedCryptoKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2KmsWrappedCryptoKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2LDiversityConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2LDiversityConfig();
      var od = new api.GooglePrivacyDlpV2LDiversityConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2LDiversityConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2LDiversityEquivalenceClass", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2LDiversityEquivalenceClass();
      var od = new api.GooglePrivacyDlpV2LDiversityEquivalenceClass.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2LDiversityEquivalenceClass(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2LDiversityHistogramBucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2LDiversityHistogramBucket();
      var od = new api.GooglePrivacyDlpV2LDiversityHistogramBucket.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2LDiversityHistogramBucket(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2LDiversityResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2LDiversityResult();
      var od = new api.GooglePrivacyDlpV2LDiversityResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2LDiversityResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2LargeCustomDictionaryConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2LargeCustomDictionaryConfig();
      var od = new api.GooglePrivacyDlpV2LargeCustomDictionaryConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2LargeCustomDictionaryConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2LargeCustomDictionaryStats", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2LargeCustomDictionaryStats();
      var od = new api.GooglePrivacyDlpV2LargeCustomDictionaryStats.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2LargeCustomDictionaryStats(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2LikelihoodAdjustment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2LikelihoodAdjustment();
      var od =
          new api.GooglePrivacyDlpV2LikelihoodAdjustment.fromJson(o.toJson());
      checkGooglePrivacyDlpV2LikelihoodAdjustment(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ListDeidentifyTemplatesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse();
      var od =
          new api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ListDlpJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ListDlpJobsResponse();
      var od =
          new api.GooglePrivacyDlpV2ListDlpJobsResponse.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ListDlpJobsResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ListInfoTypesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ListInfoTypesResponse();
      var od =
          new api.GooglePrivacyDlpV2ListInfoTypesResponse.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ListInfoTypesResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ListInspectTemplatesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ListInspectTemplatesResponse();
      var od = new api.GooglePrivacyDlpV2ListInspectTemplatesResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2ListInspectTemplatesResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ListJobTriggersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ListJobTriggersResponse();
      var od = new api.GooglePrivacyDlpV2ListJobTriggersResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2ListJobTriggersResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ListStoredInfoTypesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ListStoredInfoTypesResponse();
      var od = new api.GooglePrivacyDlpV2ListStoredInfoTypesResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Location();
      var od = new api.GooglePrivacyDlpV2Location.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Location(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2NumericalStatsConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2NumericalStatsConfig();
      var od =
          new api.GooglePrivacyDlpV2NumericalStatsConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2NumericalStatsConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2NumericalStatsResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2NumericalStatsResult();
      var od =
          new api.GooglePrivacyDlpV2NumericalStatsResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2NumericalStatsResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2OutputStorageConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2OutputStorageConfig();
      var od =
          new api.GooglePrivacyDlpV2OutputStorageConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2OutputStorageConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2PartitionId", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2PartitionId();
      var od = new api.GooglePrivacyDlpV2PartitionId.fromJson(o.toJson());
      checkGooglePrivacyDlpV2PartitionId(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2PathElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2PathElement();
      var od = new api.GooglePrivacyDlpV2PathElement.fromJson(o.toJson());
      checkGooglePrivacyDlpV2PathElement(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2PrimitiveTransformation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2PrimitiveTransformation();
      var od = new api.GooglePrivacyDlpV2PrimitiveTransformation.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2PrimitiveTransformation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2PrivacyMetric", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2PrivacyMetric();
      var od = new api.GooglePrivacyDlpV2PrivacyMetric.fromJson(o.toJson());
      checkGooglePrivacyDlpV2PrivacyMetric(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Proximity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Proximity();
      var od = new api.GooglePrivacyDlpV2Proximity.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Proximity(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog();
      var od =
          new api.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2PublishSummaryToCscc", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2PublishSummaryToCscc();
      var od =
          new api.GooglePrivacyDlpV2PublishSummaryToCscc.fromJson(o.toJson());
      checkGooglePrivacyDlpV2PublishSummaryToCscc(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2PublishToPubSub", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2PublishToPubSub();
      var od = new api.GooglePrivacyDlpV2PublishToPubSub.fromJson(o.toJson());
      checkGooglePrivacyDlpV2PublishToPubSub(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2QuasiId", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2QuasiId();
      var od = new api.GooglePrivacyDlpV2QuasiId.fromJson(o.toJson());
      checkGooglePrivacyDlpV2QuasiId(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2QuasiIdField", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2QuasiIdField();
      var od = new api.GooglePrivacyDlpV2QuasiIdField.fromJson(o.toJson());
      checkGooglePrivacyDlpV2QuasiIdField(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2QuasiIdentifierField", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2QuasiIdentifierField();
      var od =
          new api.GooglePrivacyDlpV2QuasiIdentifierField.fromJson(o.toJson());
      checkGooglePrivacyDlpV2QuasiIdentifierField(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2QuoteInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2QuoteInfo();
      var od = new api.GooglePrivacyDlpV2QuoteInfo.fromJson(o.toJson());
      checkGooglePrivacyDlpV2QuoteInfo(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Range", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Range();
      var od = new api.GooglePrivacyDlpV2Range.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Range(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2RecordCondition", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2RecordCondition();
      var od = new api.GooglePrivacyDlpV2RecordCondition.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RecordCondition(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2RecordKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2RecordKey();
      var od = new api.GooglePrivacyDlpV2RecordKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RecordKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2RecordLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2RecordLocation();
      var od = new api.GooglePrivacyDlpV2RecordLocation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RecordLocation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2RecordSuppression", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2RecordSuppression();
      var od = new api.GooglePrivacyDlpV2RecordSuppression.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RecordSuppression(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2RecordTransformations", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2RecordTransformations();
      var od =
          new api.GooglePrivacyDlpV2RecordTransformations.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RecordTransformations(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2RedactConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2RedactConfig();
      var od = new api.GooglePrivacyDlpV2RedactConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RedactConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2RedactImageRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2RedactImageRequest();
      var od =
          new api.GooglePrivacyDlpV2RedactImageRequest.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RedactImageRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2RedactImageResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2RedactImageResponse();
      var od =
          new api.GooglePrivacyDlpV2RedactImageResponse.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RedactImageResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Regex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Regex();
      var od = new api.GooglePrivacyDlpV2Regex.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Regex(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ReidentifyContentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ReidentifyContentRequest();
      var od = new api.GooglePrivacyDlpV2ReidentifyContentRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2ReidentifyContentRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ReidentifyContentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ReidentifyContentResponse();
      var od = new api.GooglePrivacyDlpV2ReidentifyContentResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2ReidentifyContentResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ReplaceValueConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ReplaceValueConfig();
      var od =
          new api.GooglePrivacyDlpV2ReplaceValueConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ReplaceValueConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ReplaceWithInfoTypeConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ReplaceWithInfoTypeConfig();
      var od = new api.GooglePrivacyDlpV2ReplaceWithInfoTypeConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2ReplaceWithInfoTypeConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2RequestedOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2RequestedOptions();
      var od = new api.GooglePrivacyDlpV2RequestedOptions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RequestedOptions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Result", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Result();
      var od = new api.GooglePrivacyDlpV2Result.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Result(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2RiskAnalysisJobConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2RiskAnalysisJobConfig();
      var od =
          new api.GooglePrivacyDlpV2RiskAnalysisJobConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RiskAnalysisJobConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Row", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Row();
      var od = new api.GooglePrivacyDlpV2Row.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Row(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2SaveFindings", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2SaveFindings();
      var od = new api.GooglePrivacyDlpV2SaveFindings.fromJson(o.toJson());
      checkGooglePrivacyDlpV2SaveFindings(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Schedule", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Schedule();
      var od = new api.GooglePrivacyDlpV2Schedule.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Schedule(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2StatisticalTable", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2StatisticalTable();
      var od = new api.GooglePrivacyDlpV2StatisticalTable.fromJson(o.toJson());
      checkGooglePrivacyDlpV2StatisticalTable(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2StorageConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2StorageConfig();
      var od = new api.GooglePrivacyDlpV2StorageConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2StorageConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2StoredInfoType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2StoredInfoType();
      var od = new api.GooglePrivacyDlpV2StoredInfoType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2StoredInfoType(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2StoredInfoTypeConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2StoredInfoTypeConfig();
      var od =
          new api.GooglePrivacyDlpV2StoredInfoTypeConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2StoredInfoTypeConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2StoredInfoTypeStats", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2StoredInfoTypeStats();
      var od =
          new api.GooglePrivacyDlpV2StoredInfoTypeStats.fromJson(o.toJson());
      checkGooglePrivacyDlpV2StoredInfoTypeStats(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2StoredInfoTypeVersion", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2StoredInfoTypeVersion();
      var od =
          new api.GooglePrivacyDlpV2StoredInfoTypeVersion.fromJson(o.toJson());
      checkGooglePrivacyDlpV2StoredInfoTypeVersion(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2StoredType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2StoredType();
      var od = new api.GooglePrivacyDlpV2StoredType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2StoredType(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2SummaryResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2SummaryResult();
      var od = new api.GooglePrivacyDlpV2SummaryResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2SummaryResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2SurrogateType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2SurrogateType();
      var od = new api.GooglePrivacyDlpV2SurrogateType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2SurrogateType(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Table", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Table();
      var od = new api.GooglePrivacyDlpV2Table.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Table(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2TableLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2TableLocation();
      var od = new api.GooglePrivacyDlpV2TableLocation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TableLocation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2TaggedField", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2TaggedField();
      var od = new api.GooglePrivacyDlpV2TaggedField.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TaggedField(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2TimePartConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2TimePartConfig();
      var od = new api.GooglePrivacyDlpV2TimePartConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TimePartConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2TimeZone", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2TimeZone();
      var od = new api.GooglePrivacyDlpV2TimeZone.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TimeZone(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2TimespanConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2TimespanConfig();
      var od = new api.GooglePrivacyDlpV2TimespanConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TimespanConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2TransformationOverview", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2TransformationOverview();
      var od =
          new api.GooglePrivacyDlpV2TransformationOverview.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TransformationOverview(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2TransformationSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2TransformationSummary();
      var od =
          new api.GooglePrivacyDlpV2TransformationSummary.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TransformationSummary(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2TransientCryptoKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2TransientCryptoKey();
      var od =
          new api.GooglePrivacyDlpV2TransientCryptoKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TransientCryptoKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Trigger", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Trigger();
      var od = new api.GooglePrivacyDlpV2Trigger.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Trigger(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2UnwrappedCryptoKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2UnwrappedCryptoKey();
      var od =
          new api.GooglePrivacyDlpV2UnwrappedCryptoKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2UnwrappedCryptoKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
      var od =
          new api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2UpdateInspectTemplateRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2UpdateInspectTemplateRequest();
      var od = new api.GooglePrivacyDlpV2UpdateInspectTemplateRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2UpdateInspectTemplateRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2UpdateJobTriggerRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2UpdateJobTriggerRequest();
      var od = new api.GooglePrivacyDlpV2UpdateJobTriggerRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2UpdateJobTriggerRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2UpdateStoredInfoTypeRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
      var od = new api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2UpdateStoredInfoTypeRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2Value", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2Value();
      var od = new api.GooglePrivacyDlpV2Value.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Value(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2ValueFrequency", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2ValueFrequency();
      var od = new api.GooglePrivacyDlpV2ValueFrequency.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ValueFrequency(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2WordList", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2WordList();
      var od = new api.GooglePrivacyDlpV2WordList.fromJson(o.toJson());
      checkGooglePrivacyDlpV2WordList(od);
    });
  });

  unittest.group("obj-schema-GoogleProtobufEmpty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleProtobufEmpty();
      var od = new api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group("obj-schema-GoogleRpcStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleRpcStatus();
      var od = new api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeDate", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeDate();
      var od = new api.GoogleTypeDate.fromJson(o.toJson());
      checkGoogleTypeDate(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeTimeOfDay", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeTimeOfDay();
      var od = new api.GoogleTypeTimeOfDay.fromJson(o.toJson());
      checkGoogleTypeTimeOfDay(od);
    });
  });

  unittest.group("resource-InfoTypesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.InfoTypesResourceApi res = new api.DlpApi(mock).infoTypes;
      var arg_languageCode = "foo";
      var arg_filter = "foo";
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
            unittest.equals("v2/infoTypes"));
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2ListInfoTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              languageCode: arg_languageCode,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListInfoTypesResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsDeidentifyTemplatesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2CreateDeidentifyTemplateRequest(obj);

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
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.deidentifyTemplates;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.deidentifyTemplates;
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
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.deidentifyTemplates;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_orderBy = "foo";
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.OrganizationsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest(obj);

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
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsInspectTemplatesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.inspectTemplates;
      var arg_request = buildGooglePrivacyDlpV2CreateInspectTemplateRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2CreateInspectTemplateRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2CreateInspectTemplateRequest(obj);

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
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.inspectTemplates;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.inspectTemplates;
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
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.inspectTemplates;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_orderBy = "foo";
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListInspectTemplatesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListInspectTemplatesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.OrganizationsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.inspectTemplates;
      var arg_request = buildGooglePrivacyDlpV2UpdateInspectTemplateRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2UpdateInspectTemplateRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2UpdateInspectTemplateRequest(obj);

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
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsStoredInfoTypesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsStoredInfoTypesResourceApi res =
          new api.DlpApi(mock).organizations.storedInfoTypes;
      var arg_request = buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2CreateStoredInfoTypeRequest(obj);

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
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsStoredInfoTypesResourceApi res =
          new api.DlpApi(mock).organizations.storedInfoTypes;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsStoredInfoTypesResourceApi res =
          new api.DlpApi(mock).organizations.storedInfoTypes;
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
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsStoredInfoTypesResourceApi res =
          new api.DlpApi(mock).organizations.storedInfoTypes;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_orderBy = "foo";
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListStoredInfoTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.OrganizationsStoredInfoTypesResourceApi res =
          new api.DlpApi(mock).organizations.storedInfoTypes;
      var arg_request = buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2UpdateStoredInfoTypeRequest(obj);

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
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(response);
      })));
    });
  });

  unittest.group("resource-ProjectsContentResourceApi", () {
    unittest.test("method--deidentify", () {
      var mock = new HttpServerMock();
      api.ProjectsContentResourceApi res =
          new api.DlpApi(mock).projects.content;
      var arg_request = buildGooglePrivacyDlpV2DeidentifyContentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2DeidentifyContentRequest.fromJson(json);
        checkGooglePrivacyDlpV2DeidentifyContentRequest(obj);

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
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2DeidentifyContentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deidentify(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyContentResponse(response);
      })));
    });

    unittest.test("method--inspect", () {
      var mock = new HttpServerMock();
      api.ProjectsContentResourceApi res =
          new api.DlpApi(mock).projects.content;
      var arg_request = buildGooglePrivacyDlpV2InspectContentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2InspectContentRequest.fromJson(json);
        checkGooglePrivacyDlpV2InspectContentRequest(obj);

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
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2InspectContentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .inspect(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectContentResponse(response);
      })));
    });

    unittest.test("method--reidentify", () {
      var mock = new HttpServerMock();
      api.ProjectsContentResourceApi res =
          new api.DlpApi(mock).projects.content;
      var arg_request = buildGooglePrivacyDlpV2ReidentifyContentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2ReidentifyContentRequest.fromJson(json);
        checkGooglePrivacyDlpV2ReidentifyContentRequest(obj);

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
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ReidentifyContentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reidentify(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ReidentifyContentResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsDeidentifyTemplatesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).projects.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2CreateDeidentifyTemplateRequest(obj);

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
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).projects.deidentifyTemplates;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).projects.deidentifyTemplates;
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
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).projects.deidentifyTemplates;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_orderBy = "foo";
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).projects.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest(obj);

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
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(response);
      })));
    });
  });

  unittest.group("resource-ProjectsDlpJobsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsDlpJobsResourceApi res =
          new api.DlpApi(mock).projects.dlpJobs;
      var arg_request = buildGooglePrivacyDlpV2CancelDlpJobRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GooglePrivacyDlpV2CancelDlpJobRequest.fromJson(json);
        checkGooglePrivacyDlpV2CancelDlpJobRequest(obj);

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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsDlpJobsResourceApi res =
          new api.DlpApi(mock).projects.dlpJobs;
      var arg_request = buildGooglePrivacyDlpV2CreateDlpJobRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GooglePrivacyDlpV2CreateDlpJobRequest.fromJson(json);
        checkGooglePrivacyDlpV2CreateDlpJobRequest(obj);

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
        var resp = convert.json.encode(buildGooglePrivacyDlpV2DlpJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DlpJob(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsDlpJobsResourceApi res =
          new api.DlpApi(mock).projects.dlpJobs;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsDlpJobsResourceApi res =
          new api.DlpApi(mock).projects.dlpJobs;
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
        var resp = convert.json.encode(buildGooglePrivacyDlpV2DlpJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DlpJob(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsDlpJobsResourceApi res =
          new api.DlpApi(mock).projects.dlpJobs;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_orderBy = "foo";
      var arg_type = "foo";
      var arg_filter = "foo";
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2ListDlpJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              orderBy: arg_orderBy,
              type: arg_type,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListDlpJobsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsImageResourceApi", () {
    unittest.test("method--redact", () {
      var mock = new HttpServerMock();
      api.ProjectsImageResourceApi res = new api.DlpApi(mock).projects.image;
      var arg_request = buildGooglePrivacyDlpV2RedactImageRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GooglePrivacyDlpV2RedactImageRequest.fromJson(json);
        checkGooglePrivacyDlpV2RedactImageRequest(obj);

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
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2RedactImageResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .redact(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2RedactImageResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsInspectTemplatesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).projects.inspectTemplates;
      var arg_request = buildGooglePrivacyDlpV2CreateInspectTemplateRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2CreateInspectTemplateRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2CreateInspectTemplateRequest(obj);

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
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).projects.inspectTemplates;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).projects.inspectTemplates;
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
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).projects.inspectTemplates;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_orderBy = "foo";
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListInspectTemplatesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListInspectTemplatesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).projects.inspectTemplates;
      var arg_request = buildGooglePrivacyDlpV2UpdateInspectTemplateRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2UpdateInspectTemplateRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2UpdateInspectTemplateRequest(obj);

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
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(response);
      })));
    });
  });

  unittest.group("resource-ProjectsJobTriggersResourceApi", () {
    unittest.test("method--activate", () {
      var mock = new HttpServerMock();
      api.ProjectsJobTriggersResourceApi res =
          new api.DlpApi(mock).projects.jobTriggers;
      var arg_request = buildGooglePrivacyDlpV2ActivateJobTriggerRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2ActivateJobTriggerRequest.fromJson(json);
        checkGooglePrivacyDlpV2ActivateJobTriggerRequest(obj);

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
        var resp = convert.json.encode(buildGooglePrivacyDlpV2DlpJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .activate(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DlpJob(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsJobTriggersResourceApi res =
          new api.DlpApi(mock).projects.jobTriggers;
      var arg_request = buildGooglePrivacyDlpV2CreateJobTriggerRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2CreateJobTriggerRequest.fromJson(json);
        checkGooglePrivacyDlpV2CreateJobTriggerRequest(obj);

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
        var resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2JobTrigger(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsJobTriggersResourceApi res =
          new api.DlpApi(mock).projects.jobTriggers;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsJobTriggersResourceApi res =
          new api.DlpApi(mock).projects.jobTriggers;
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
        var resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2JobTrigger(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsJobTriggersResourceApi res =
          new api.DlpApi(mock).projects.jobTriggers;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_orderBy = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListJobTriggersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListJobTriggersResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsJobTriggersResourceApi res =
          new api.DlpApi(mock).projects.jobTriggers;
      var arg_request = buildGooglePrivacyDlpV2UpdateJobTriggerRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2UpdateJobTriggerRequest.fromJson(json);
        checkGooglePrivacyDlpV2UpdateJobTriggerRequest(obj);

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
        var resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2JobTrigger(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsContentResourceApi", () {
    unittest.test("method--deidentify", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsContentResourceApi res =
          new api.DlpApi(mock).projects.locations.content;
      var arg_request = buildGooglePrivacyDlpV2DeidentifyContentRequest();
      var arg_parent = "foo";
      var arg_location = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2DeidentifyContentRequest.fromJson(json);
        checkGooglePrivacyDlpV2DeidentifyContentRequest(obj);

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
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2DeidentifyContentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deidentify(arg_request, arg_parent, arg_location,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyContentResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsStoredInfoTypesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsStoredInfoTypesResourceApi res =
          new api.DlpApi(mock).projects.storedInfoTypes;
      var arg_request = buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2CreateStoredInfoTypeRequest(obj);

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
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsStoredInfoTypesResourceApi res =
          new api.DlpApi(mock).projects.storedInfoTypes;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsStoredInfoTypesResourceApi res =
          new api.DlpApi(mock).projects.storedInfoTypes;
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
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsStoredInfoTypesResourceApi res =
          new api.DlpApi(mock).projects.storedInfoTypes;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_orderBy = "foo";
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListStoredInfoTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsStoredInfoTypesResourceApi res =
          new api.DlpApi(mock).projects.storedInfoTypes;
      var arg_request = buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2UpdateStoredInfoTypeRequest(obj);

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
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(response);
      })));
    });
  });
}
