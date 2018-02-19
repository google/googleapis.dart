library googleapis_beta.dlp.v2beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/dlp/v2beta1.dart' as api;

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
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
buildGoogleLongrunningCancelOperationRequest() {
  var o = new api.GoogleLongrunningCancelOperationRequest();
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
  return o;
}

checkGoogleLongrunningCancelOperationRequest(
    api.GoogleLongrunningCancelOperationRequest o) {
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
}

buildUnnamed4454() {
  var o = new core.List<api.GoogleLongrunningOperation>();
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

checkUnnamed4454(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
buildGoogleLongrunningListOperationsResponse() {
  var o = new api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed4454();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4454(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

buildUnnamed4455() {
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

checkUnnamed4455(core.Map<core.String, core.Object> o) {
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

buildUnnamed4456() {
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

checkUnnamed4456(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
buildGoogleLongrunningOperation() {
  var o = new api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed4455();
    o.name = "foo";
    o.response = buildUnnamed4456();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed4455(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4456(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest = 0;
buildGooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest() {
  var o = new api.GooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest();
  buildCounterGooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest++;
  if (buildCounterGooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest < 3) {
    o.privacyMetric = buildGooglePrivacyDlpV2beta1PrivacyMetric();
    o.sourceTable = buildGooglePrivacyDlpV2beta1BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest(
    api.GooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest o) {
  buildCounterGooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest++;
  if (buildCounterGooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest < 3) {
    checkGooglePrivacyDlpV2beta1PrivacyMetric(o.privacyMetric);
    checkGooglePrivacyDlpV2beta1BigQueryTable(o.sourceTable);
  }
  buildCounterGooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest--;
}

buildUnnamed4457() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1QuasiIdField>();
  o.add(buildGooglePrivacyDlpV2beta1QuasiIdField());
  o.add(buildGooglePrivacyDlpV2beta1QuasiIdField());
  return o;
}

checkUnnamed4457(core.List<api.GooglePrivacyDlpV2beta1QuasiIdField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1QuasiIdField(o[0]);
  checkGooglePrivacyDlpV2beta1QuasiIdField(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1AuxiliaryTable = 0;
buildGooglePrivacyDlpV2beta1AuxiliaryTable() {
  var o = new api.GooglePrivacyDlpV2beta1AuxiliaryTable();
  buildCounterGooglePrivacyDlpV2beta1AuxiliaryTable++;
  if (buildCounterGooglePrivacyDlpV2beta1AuxiliaryTable < 3) {
    o.quasiIds = buildUnnamed4457();
    o.relativeFrequency = buildGooglePrivacyDlpV2beta1FieldId();
    o.table = buildGooglePrivacyDlpV2beta1BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2beta1AuxiliaryTable--;
  return o;
}

checkGooglePrivacyDlpV2beta1AuxiliaryTable(
    api.GooglePrivacyDlpV2beta1AuxiliaryTable o) {
  buildCounterGooglePrivacyDlpV2beta1AuxiliaryTable++;
  if (buildCounterGooglePrivacyDlpV2beta1AuxiliaryTable < 3) {
    checkUnnamed4457(o.quasiIds);
    checkGooglePrivacyDlpV2beta1FieldId(o.relativeFrequency);
    checkGooglePrivacyDlpV2beta1BigQueryTable(o.table);
  }
  buildCounterGooglePrivacyDlpV2beta1AuxiliaryTable--;
}

buildUnnamed4458() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1FieldId>();
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  return o;
}

checkUnnamed4458(core.List<api.GooglePrivacyDlpV2beta1FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1FieldId(o[0]);
  checkGooglePrivacyDlpV2beta1FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1BigQueryOptions = 0;
buildGooglePrivacyDlpV2beta1BigQueryOptions() {
  var o = new api.GooglePrivacyDlpV2beta1BigQueryOptions();
  buildCounterGooglePrivacyDlpV2beta1BigQueryOptions++;
  if (buildCounterGooglePrivacyDlpV2beta1BigQueryOptions < 3) {
    o.identifyingFields = buildUnnamed4458();
    o.tableReference = buildGooglePrivacyDlpV2beta1BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2beta1BigQueryOptions--;
  return o;
}

checkGooglePrivacyDlpV2beta1BigQueryOptions(
    api.GooglePrivacyDlpV2beta1BigQueryOptions o) {
  buildCounterGooglePrivacyDlpV2beta1BigQueryOptions++;
  if (buildCounterGooglePrivacyDlpV2beta1BigQueryOptions < 3) {
    checkUnnamed4458(o.identifyingFields);
    checkGooglePrivacyDlpV2beta1BigQueryTable(o.tableReference);
  }
  buildCounterGooglePrivacyDlpV2beta1BigQueryOptions--;
}

core.int buildCounterGooglePrivacyDlpV2beta1BigQueryTable = 0;
buildGooglePrivacyDlpV2beta1BigQueryTable() {
  var o = new api.GooglePrivacyDlpV2beta1BigQueryTable();
  buildCounterGooglePrivacyDlpV2beta1BigQueryTable++;
  if (buildCounterGooglePrivacyDlpV2beta1BigQueryTable < 3) {
    o.datasetId = "foo";
    o.projectId = "foo";
    o.tableId = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1BigQueryTable--;
  return o;
}

checkGooglePrivacyDlpV2beta1BigQueryTable(
    api.GooglePrivacyDlpV2beta1BigQueryTable o) {
  buildCounterGooglePrivacyDlpV2beta1BigQueryTable++;
  if (buildCounterGooglePrivacyDlpV2beta1BigQueryTable < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.tableId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1BigQueryTable--;
}

core.int buildCounterGooglePrivacyDlpV2beta1Bucket = 0;
buildGooglePrivacyDlpV2beta1Bucket() {
  var o = new api.GooglePrivacyDlpV2beta1Bucket();
  buildCounterGooglePrivacyDlpV2beta1Bucket++;
  if (buildCounterGooglePrivacyDlpV2beta1Bucket < 3) {
    o.max = buildGooglePrivacyDlpV2beta1Value();
    o.min = buildGooglePrivacyDlpV2beta1Value();
    o.replacementValue = buildGooglePrivacyDlpV2beta1Value();
  }
  buildCounterGooglePrivacyDlpV2beta1Bucket--;
  return o;
}

checkGooglePrivacyDlpV2beta1Bucket(api.GooglePrivacyDlpV2beta1Bucket o) {
  buildCounterGooglePrivacyDlpV2beta1Bucket++;
  if (buildCounterGooglePrivacyDlpV2beta1Bucket < 3) {
    checkGooglePrivacyDlpV2beta1Value(o.max);
    checkGooglePrivacyDlpV2beta1Value(o.min);
    checkGooglePrivacyDlpV2beta1Value(o.replacementValue);
  }
  buildCounterGooglePrivacyDlpV2beta1Bucket--;
}

buildUnnamed4459() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1Bucket>();
  o.add(buildGooglePrivacyDlpV2beta1Bucket());
  o.add(buildGooglePrivacyDlpV2beta1Bucket());
  return o;
}

checkUnnamed4459(core.List<api.GooglePrivacyDlpV2beta1Bucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1Bucket(o[0]);
  checkGooglePrivacyDlpV2beta1Bucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1BucketingConfig = 0;
buildGooglePrivacyDlpV2beta1BucketingConfig() {
  var o = new api.GooglePrivacyDlpV2beta1BucketingConfig();
  buildCounterGooglePrivacyDlpV2beta1BucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1BucketingConfig < 3) {
    o.buckets = buildUnnamed4459();
  }
  buildCounterGooglePrivacyDlpV2beta1BucketingConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1BucketingConfig(
    api.GooglePrivacyDlpV2beta1BucketingConfig o) {
  buildCounterGooglePrivacyDlpV2beta1BucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1BucketingConfig < 3) {
    checkUnnamed4459(o.buckets);
  }
  buildCounterGooglePrivacyDlpV2beta1BucketingConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta1CategoricalStatsConfig = 0;
buildGooglePrivacyDlpV2beta1CategoricalStatsConfig() {
  var o = new api.GooglePrivacyDlpV2beta1CategoricalStatsConfig();
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1CategoricalStatsConfig < 3) {
    o.field = buildGooglePrivacyDlpV2beta1FieldId();
  }
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1CategoricalStatsConfig(
    api.GooglePrivacyDlpV2beta1CategoricalStatsConfig o) {
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1CategoricalStatsConfig < 3) {
    checkGooglePrivacyDlpV2beta1FieldId(o.field);
  }
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsConfig--;
}

buildUnnamed4460() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1ValueFrequency>();
  o.add(buildGooglePrivacyDlpV2beta1ValueFrequency());
  o.add(buildGooglePrivacyDlpV2beta1ValueFrequency());
  return o;
}

checkUnnamed4460(core.List<api.GooglePrivacyDlpV2beta1ValueFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1ValueFrequency(o[0]);
  checkGooglePrivacyDlpV2beta1ValueFrequency(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket = 0;
buildGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket() {
  var o = new api.GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket();
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket < 3) {
    o.bucketSize = "foo";
    o.bucketValues = buildUnnamed4460();
    o.valueFrequencyLowerBound = "foo";
    o.valueFrequencyUpperBound = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket--;
  return o;
}

checkGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket(
    api.GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    checkUnnamed4460(o.bucketValues);
    unittest.expect(o.valueFrequencyLowerBound, unittest.equals('foo'));
    unittest.expect(o.valueFrequencyUpperBound, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket--;
}

buildUnnamed4461() {
  var o = new core
      .List<api.GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket());
  o.add(buildGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket());
  return o;
}

checkUnnamed4461(
    core.List<api.GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1CategoricalStatsResult = 0;
buildGooglePrivacyDlpV2beta1CategoricalStatsResult() {
  var o = new api.GooglePrivacyDlpV2beta1CategoricalStatsResult();
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2beta1CategoricalStatsResult < 3) {
    o.valueFrequencyHistogramBuckets = buildUnnamed4461();
  }
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsResult--;
  return o;
}

checkGooglePrivacyDlpV2beta1CategoricalStatsResult(
    api.GooglePrivacyDlpV2beta1CategoricalStatsResult o) {
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2beta1CategoricalStatsResult < 3) {
    checkUnnamed4461(o.valueFrequencyHistogramBuckets);
  }
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsResult--;
}

core.int buildCounterGooglePrivacyDlpV2beta1CategoryDescription = 0;
buildGooglePrivacyDlpV2beta1CategoryDescription() {
  var o = new api.GooglePrivacyDlpV2beta1CategoryDescription();
  buildCounterGooglePrivacyDlpV2beta1CategoryDescription++;
  if (buildCounterGooglePrivacyDlpV2beta1CategoryDescription < 3) {
    o.displayName = "foo";
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1CategoryDescription--;
  return o;
}

checkGooglePrivacyDlpV2beta1CategoryDescription(
    api.GooglePrivacyDlpV2beta1CategoryDescription o) {
  buildCounterGooglePrivacyDlpV2beta1CategoryDescription++;
  if (buildCounterGooglePrivacyDlpV2beta1CategoryDescription < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1CategoryDescription--;
}

buildUnnamed4462() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1CharsToIgnore>();
  o.add(buildGooglePrivacyDlpV2beta1CharsToIgnore());
  o.add(buildGooglePrivacyDlpV2beta1CharsToIgnore());
  return o;
}

checkUnnamed4462(core.List<api.GooglePrivacyDlpV2beta1CharsToIgnore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1CharsToIgnore(o[0]);
  checkGooglePrivacyDlpV2beta1CharsToIgnore(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1CharacterMaskConfig = 0;
buildGooglePrivacyDlpV2beta1CharacterMaskConfig() {
  var o = new api.GooglePrivacyDlpV2beta1CharacterMaskConfig();
  buildCounterGooglePrivacyDlpV2beta1CharacterMaskConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1CharacterMaskConfig < 3) {
    o.charactersToIgnore = buildUnnamed4462();
    o.maskingCharacter = "foo";
    o.numberToMask = 42;
    o.reverseOrder = true;
  }
  buildCounterGooglePrivacyDlpV2beta1CharacterMaskConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1CharacterMaskConfig(
    api.GooglePrivacyDlpV2beta1CharacterMaskConfig o) {
  buildCounterGooglePrivacyDlpV2beta1CharacterMaskConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1CharacterMaskConfig < 3) {
    checkUnnamed4462(o.charactersToIgnore);
    unittest.expect(o.maskingCharacter, unittest.equals('foo'));
    unittest.expect(o.numberToMask, unittest.equals(42));
    unittest.expect(o.reverseOrder, unittest.isTrue);
  }
  buildCounterGooglePrivacyDlpV2beta1CharacterMaskConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta1CharsToIgnore = 0;
buildGooglePrivacyDlpV2beta1CharsToIgnore() {
  var o = new api.GooglePrivacyDlpV2beta1CharsToIgnore();
  buildCounterGooglePrivacyDlpV2beta1CharsToIgnore++;
  if (buildCounterGooglePrivacyDlpV2beta1CharsToIgnore < 3) {
    o.charactersToSkip = "foo";
    o.commonCharactersToIgnore = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1CharsToIgnore--;
  return o;
}

checkGooglePrivacyDlpV2beta1CharsToIgnore(
    api.GooglePrivacyDlpV2beta1CharsToIgnore o) {
  buildCounterGooglePrivacyDlpV2beta1CharsToIgnore++;
  if (buildCounterGooglePrivacyDlpV2beta1CharsToIgnore < 3) {
    unittest.expect(o.charactersToSkip, unittest.equals('foo'));
    unittest.expect(o.commonCharactersToIgnore, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1CharsToIgnore--;
}

core.int buildCounterGooglePrivacyDlpV2beta1CloudStorageKey = 0;
buildGooglePrivacyDlpV2beta1CloudStorageKey() {
  var o = new api.GooglePrivacyDlpV2beta1CloudStorageKey();
  buildCounterGooglePrivacyDlpV2beta1CloudStorageKey++;
  if (buildCounterGooglePrivacyDlpV2beta1CloudStorageKey < 3) {
    o.filePath = "foo";
    o.startOffset = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1CloudStorageKey--;
  return o;
}

checkGooglePrivacyDlpV2beta1CloudStorageKey(
    api.GooglePrivacyDlpV2beta1CloudStorageKey o) {
  buildCounterGooglePrivacyDlpV2beta1CloudStorageKey++;
  if (buildCounterGooglePrivacyDlpV2beta1CloudStorageKey < 3) {
    unittest.expect(o.filePath, unittest.equals('foo'));
    unittest.expect(o.startOffset, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1CloudStorageKey--;
}

core.int buildCounterGooglePrivacyDlpV2beta1CloudStorageOptions = 0;
buildGooglePrivacyDlpV2beta1CloudStorageOptions() {
  var o = new api.GooglePrivacyDlpV2beta1CloudStorageOptions();
  buildCounterGooglePrivacyDlpV2beta1CloudStorageOptions++;
  if (buildCounterGooglePrivacyDlpV2beta1CloudStorageOptions < 3) {
    o.fileSet = buildGooglePrivacyDlpV2beta1FileSet();
  }
  buildCounterGooglePrivacyDlpV2beta1CloudStorageOptions--;
  return o;
}

checkGooglePrivacyDlpV2beta1CloudStorageOptions(
    api.GooglePrivacyDlpV2beta1CloudStorageOptions o) {
  buildCounterGooglePrivacyDlpV2beta1CloudStorageOptions++;
  if (buildCounterGooglePrivacyDlpV2beta1CloudStorageOptions < 3) {
    checkGooglePrivacyDlpV2beta1FileSet(o.fileSet);
  }
  buildCounterGooglePrivacyDlpV2beta1CloudStorageOptions--;
}

core.int buildCounterGooglePrivacyDlpV2beta1CloudStoragePath = 0;
buildGooglePrivacyDlpV2beta1CloudStoragePath() {
  var o = new api.GooglePrivacyDlpV2beta1CloudStoragePath();
  buildCounterGooglePrivacyDlpV2beta1CloudStoragePath++;
  if (buildCounterGooglePrivacyDlpV2beta1CloudStoragePath < 3) {
    o.path = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1CloudStoragePath--;
  return o;
}

checkGooglePrivacyDlpV2beta1CloudStoragePath(
    api.GooglePrivacyDlpV2beta1CloudStoragePath o) {
  buildCounterGooglePrivacyDlpV2beta1CloudStoragePath++;
  if (buildCounterGooglePrivacyDlpV2beta1CloudStoragePath < 3) {
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1CloudStoragePath--;
}

core.int buildCounterGooglePrivacyDlpV2beta1Color = 0;
buildGooglePrivacyDlpV2beta1Color() {
  var o = new api.GooglePrivacyDlpV2beta1Color();
  buildCounterGooglePrivacyDlpV2beta1Color++;
  if (buildCounterGooglePrivacyDlpV2beta1Color < 3) {
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterGooglePrivacyDlpV2beta1Color--;
  return o;
}

checkGooglePrivacyDlpV2beta1Color(api.GooglePrivacyDlpV2beta1Color o) {
  buildCounterGooglePrivacyDlpV2beta1Color++;
  if (buildCounterGooglePrivacyDlpV2beta1Color < 3) {
    unittest.expect(o.blue, unittest.equals(42.0));
    unittest.expect(o.green, unittest.equals(42.0));
    unittest.expect(o.red, unittest.equals(42.0));
  }
  buildCounterGooglePrivacyDlpV2beta1Color--;
}

core.int buildCounterGooglePrivacyDlpV2beta1Condition = 0;
buildGooglePrivacyDlpV2beta1Condition() {
  var o = new api.GooglePrivacyDlpV2beta1Condition();
  buildCounterGooglePrivacyDlpV2beta1Condition++;
  if (buildCounterGooglePrivacyDlpV2beta1Condition < 3) {
    o.field = buildGooglePrivacyDlpV2beta1FieldId();
    o.operator = "foo";
    o.value = buildGooglePrivacyDlpV2beta1Value();
  }
  buildCounterGooglePrivacyDlpV2beta1Condition--;
  return o;
}

checkGooglePrivacyDlpV2beta1Condition(api.GooglePrivacyDlpV2beta1Condition o) {
  buildCounterGooglePrivacyDlpV2beta1Condition++;
  if (buildCounterGooglePrivacyDlpV2beta1Condition < 3) {
    checkGooglePrivacyDlpV2beta1FieldId(o.field);
    unittest.expect(o.operator, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta1Value(o.value);
  }
  buildCounterGooglePrivacyDlpV2beta1Condition--;
}

buildUnnamed4463() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1Condition>();
  o.add(buildGooglePrivacyDlpV2beta1Condition());
  o.add(buildGooglePrivacyDlpV2beta1Condition());
  return o;
}

checkUnnamed4463(core.List<api.GooglePrivacyDlpV2beta1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1Condition(o[0]);
  checkGooglePrivacyDlpV2beta1Condition(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1Conditions = 0;
buildGooglePrivacyDlpV2beta1Conditions() {
  var o = new api.GooglePrivacyDlpV2beta1Conditions();
  buildCounterGooglePrivacyDlpV2beta1Conditions++;
  if (buildCounterGooglePrivacyDlpV2beta1Conditions < 3) {
    o.conditions = buildUnnamed4463();
  }
  buildCounterGooglePrivacyDlpV2beta1Conditions--;
  return o;
}

checkGooglePrivacyDlpV2beta1Conditions(
    api.GooglePrivacyDlpV2beta1Conditions o) {
  buildCounterGooglePrivacyDlpV2beta1Conditions++;
  if (buildCounterGooglePrivacyDlpV2beta1Conditions < 3) {
    checkUnnamed4463(o.conditions);
  }
  buildCounterGooglePrivacyDlpV2beta1Conditions--;
}

core.int buildCounterGooglePrivacyDlpV2beta1ContentItem = 0;
buildGooglePrivacyDlpV2beta1ContentItem() {
  var o = new api.GooglePrivacyDlpV2beta1ContentItem();
  buildCounterGooglePrivacyDlpV2beta1ContentItem++;
  if (buildCounterGooglePrivacyDlpV2beta1ContentItem < 3) {
    o.data = "foo";
    o.table = buildGooglePrivacyDlpV2beta1Table();
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1ContentItem--;
  return o;
}

checkGooglePrivacyDlpV2beta1ContentItem(
    api.GooglePrivacyDlpV2beta1ContentItem o) {
  buildCounterGooglePrivacyDlpV2beta1ContentItem++;
  if (buildCounterGooglePrivacyDlpV2beta1ContentItem < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta1Table(o.table);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1ContentItem--;
}

core.int buildCounterGooglePrivacyDlpV2beta1CreateInspectOperationRequest = 0;
buildGooglePrivacyDlpV2beta1CreateInspectOperationRequest() {
  var o = new api.GooglePrivacyDlpV2beta1CreateInspectOperationRequest();
  buildCounterGooglePrivacyDlpV2beta1CreateInspectOperationRequest++;
  if (buildCounterGooglePrivacyDlpV2beta1CreateInspectOperationRequest < 3) {
    o.inspectConfig = buildGooglePrivacyDlpV2beta1InspectConfig();
    o.operationConfig = buildGooglePrivacyDlpV2beta1OperationConfig();
    o.outputConfig = buildGooglePrivacyDlpV2beta1OutputStorageConfig();
    o.storageConfig = buildGooglePrivacyDlpV2beta1StorageConfig();
  }
  buildCounterGooglePrivacyDlpV2beta1CreateInspectOperationRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta1CreateInspectOperationRequest(
    api.GooglePrivacyDlpV2beta1CreateInspectOperationRequest o) {
  buildCounterGooglePrivacyDlpV2beta1CreateInspectOperationRequest++;
  if (buildCounterGooglePrivacyDlpV2beta1CreateInspectOperationRequest < 3) {
    checkGooglePrivacyDlpV2beta1InspectConfig(o.inspectConfig);
    checkGooglePrivacyDlpV2beta1OperationConfig(o.operationConfig);
    checkGooglePrivacyDlpV2beta1OutputStorageConfig(o.outputConfig);
    checkGooglePrivacyDlpV2beta1StorageConfig(o.storageConfig);
  }
  buildCounterGooglePrivacyDlpV2beta1CreateInspectOperationRequest--;
}

core.int buildCounterGooglePrivacyDlpV2beta1CryptoHashConfig = 0;
buildGooglePrivacyDlpV2beta1CryptoHashConfig() {
  var o = new api.GooglePrivacyDlpV2beta1CryptoHashConfig();
  buildCounterGooglePrivacyDlpV2beta1CryptoHashConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1CryptoHashConfig < 3) {
    o.cryptoKey = buildGooglePrivacyDlpV2beta1CryptoKey();
  }
  buildCounterGooglePrivacyDlpV2beta1CryptoHashConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1CryptoHashConfig(
    api.GooglePrivacyDlpV2beta1CryptoHashConfig o) {
  buildCounterGooglePrivacyDlpV2beta1CryptoHashConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1CryptoHashConfig < 3) {
    checkGooglePrivacyDlpV2beta1CryptoKey(o.cryptoKey);
  }
  buildCounterGooglePrivacyDlpV2beta1CryptoHashConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta1CryptoKey = 0;
buildGooglePrivacyDlpV2beta1CryptoKey() {
  var o = new api.GooglePrivacyDlpV2beta1CryptoKey();
  buildCounterGooglePrivacyDlpV2beta1CryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta1CryptoKey < 3) {
    o.kmsWrapped = buildGooglePrivacyDlpV2beta1KmsWrappedCryptoKey();
    o.transient = buildGooglePrivacyDlpV2beta1TransientCryptoKey();
    o.unwrapped = buildGooglePrivacyDlpV2beta1UnwrappedCryptoKey();
  }
  buildCounterGooglePrivacyDlpV2beta1CryptoKey--;
  return o;
}

checkGooglePrivacyDlpV2beta1CryptoKey(api.GooglePrivacyDlpV2beta1CryptoKey o) {
  buildCounterGooglePrivacyDlpV2beta1CryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta1CryptoKey < 3) {
    checkGooglePrivacyDlpV2beta1KmsWrappedCryptoKey(o.kmsWrapped);
    checkGooglePrivacyDlpV2beta1TransientCryptoKey(o.transient);
    checkGooglePrivacyDlpV2beta1UnwrappedCryptoKey(o.unwrapped);
  }
  buildCounterGooglePrivacyDlpV2beta1CryptoKey--;
}

core.int buildCounterGooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig = 0;
buildGooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig() {
  var o = new api.GooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig();
  buildCounterGooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig < 3) {
    o.commonAlphabet = "foo";
    o.context = buildGooglePrivacyDlpV2beta1FieldId();
    o.cryptoKey = buildGooglePrivacyDlpV2beta1CryptoKey();
    o.customAlphabet = "foo";
    o.radix = 42;
    o.surrogateInfoType = buildGooglePrivacyDlpV2beta1InfoType();
  }
  buildCounterGooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig(
    api.GooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig o) {
  buildCounterGooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig < 3) {
    unittest.expect(o.commonAlphabet, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta1FieldId(o.context);
    checkGooglePrivacyDlpV2beta1CryptoKey(o.cryptoKey);
    unittest.expect(o.customAlphabet, unittest.equals('foo'));
    unittest.expect(o.radix, unittest.equals(42));
    checkGooglePrivacyDlpV2beta1InfoType(o.surrogateInfoType);
  }
  buildCounterGooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta1CustomInfoType = 0;
buildGooglePrivacyDlpV2beta1CustomInfoType() {
  var o = new api.GooglePrivacyDlpV2beta1CustomInfoType();
  buildCounterGooglePrivacyDlpV2beta1CustomInfoType++;
  if (buildCounterGooglePrivacyDlpV2beta1CustomInfoType < 3) {
    o.dictionary = buildGooglePrivacyDlpV2beta1Dictionary();
    o.infoType = buildGooglePrivacyDlpV2beta1InfoType();
    o.surrogateType = buildGooglePrivacyDlpV2beta1SurrogateType();
  }
  buildCounterGooglePrivacyDlpV2beta1CustomInfoType--;
  return o;
}

checkGooglePrivacyDlpV2beta1CustomInfoType(
    api.GooglePrivacyDlpV2beta1CustomInfoType o) {
  buildCounterGooglePrivacyDlpV2beta1CustomInfoType++;
  if (buildCounterGooglePrivacyDlpV2beta1CustomInfoType < 3) {
    checkGooglePrivacyDlpV2beta1Dictionary(o.dictionary);
    checkGooglePrivacyDlpV2beta1InfoType(o.infoType);
    checkGooglePrivacyDlpV2beta1SurrogateType(o.surrogateType);
  }
  buildCounterGooglePrivacyDlpV2beta1CustomInfoType--;
}

core.int buildCounterGooglePrivacyDlpV2beta1DatastoreKey = 0;
buildGooglePrivacyDlpV2beta1DatastoreKey() {
  var o = new api.GooglePrivacyDlpV2beta1DatastoreKey();
  buildCounterGooglePrivacyDlpV2beta1DatastoreKey++;
  if (buildCounterGooglePrivacyDlpV2beta1DatastoreKey < 3) {
    o.entityKey = buildGooglePrivacyDlpV2beta1Key();
  }
  buildCounterGooglePrivacyDlpV2beta1DatastoreKey--;
  return o;
}

checkGooglePrivacyDlpV2beta1DatastoreKey(
    api.GooglePrivacyDlpV2beta1DatastoreKey o) {
  buildCounterGooglePrivacyDlpV2beta1DatastoreKey++;
  if (buildCounterGooglePrivacyDlpV2beta1DatastoreKey < 3) {
    checkGooglePrivacyDlpV2beta1Key(o.entityKey);
  }
  buildCounterGooglePrivacyDlpV2beta1DatastoreKey--;
}

buildUnnamed4464() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1Projection>();
  o.add(buildGooglePrivacyDlpV2beta1Projection());
  o.add(buildGooglePrivacyDlpV2beta1Projection());
  return o;
}

checkUnnamed4464(core.List<api.GooglePrivacyDlpV2beta1Projection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1Projection(o[0]);
  checkGooglePrivacyDlpV2beta1Projection(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1DatastoreOptions = 0;
buildGooglePrivacyDlpV2beta1DatastoreOptions() {
  var o = new api.GooglePrivacyDlpV2beta1DatastoreOptions();
  buildCounterGooglePrivacyDlpV2beta1DatastoreOptions++;
  if (buildCounterGooglePrivacyDlpV2beta1DatastoreOptions < 3) {
    o.kind = buildGooglePrivacyDlpV2beta1KindExpression();
    o.partitionId = buildGooglePrivacyDlpV2beta1PartitionId();
    o.projection = buildUnnamed4464();
  }
  buildCounterGooglePrivacyDlpV2beta1DatastoreOptions--;
  return o;
}

checkGooglePrivacyDlpV2beta1DatastoreOptions(
    api.GooglePrivacyDlpV2beta1DatastoreOptions o) {
  buildCounterGooglePrivacyDlpV2beta1DatastoreOptions++;
  if (buildCounterGooglePrivacyDlpV2beta1DatastoreOptions < 3) {
    checkGooglePrivacyDlpV2beta1KindExpression(o.kind);
    checkGooglePrivacyDlpV2beta1PartitionId(o.partitionId);
    checkUnnamed4464(o.projection);
  }
  buildCounterGooglePrivacyDlpV2beta1DatastoreOptions--;
}

buildUnnamed4465() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1TransformationSummary>();
  o.add(buildGooglePrivacyDlpV2beta1TransformationSummary());
  o.add(buildGooglePrivacyDlpV2beta1TransformationSummary());
  return o;
}

checkUnnamed4465(
    core.List<api.GooglePrivacyDlpV2beta1TransformationSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1TransformationSummary(o[0]);
  checkGooglePrivacyDlpV2beta1TransformationSummary(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1DeidentificationSummary = 0;
buildGooglePrivacyDlpV2beta1DeidentificationSummary() {
  var o = new api.GooglePrivacyDlpV2beta1DeidentificationSummary();
  buildCounterGooglePrivacyDlpV2beta1DeidentificationSummary++;
  if (buildCounterGooglePrivacyDlpV2beta1DeidentificationSummary < 3) {
    o.transformationSummaries = buildUnnamed4465();
    o.transformedBytes = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1DeidentificationSummary--;
  return o;
}

checkGooglePrivacyDlpV2beta1DeidentificationSummary(
    api.GooglePrivacyDlpV2beta1DeidentificationSummary o) {
  buildCounterGooglePrivacyDlpV2beta1DeidentificationSummary++;
  if (buildCounterGooglePrivacyDlpV2beta1DeidentificationSummary < 3) {
    checkUnnamed4465(o.transformationSummaries);
    unittest.expect(o.transformedBytes, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1DeidentificationSummary--;
}

core.int buildCounterGooglePrivacyDlpV2beta1DeidentifyConfig = 0;
buildGooglePrivacyDlpV2beta1DeidentifyConfig() {
  var o = new api.GooglePrivacyDlpV2beta1DeidentifyConfig();
  buildCounterGooglePrivacyDlpV2beta1DeidentifyConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1DeidentifyConfig < 3) {
    o.infoTypeTransformations =
        buildGooglePrivacyDlpV2beta1InfoTypeTransformations();
    o.recordTransformations =
        buildGooglePrivacyDlpV2beta1RecordTransformations();
  }
  buildCounterGooglePrivacyDlpV2beta1DeidentifyConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1DeidentifyConfig(
    api.GooglePrivacyDlpV2beta1DeidentifyConfig o) {
  buildCounterGooglePrivacyDlpV2beta1DeidentifyConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1DeidentifyConfig < 3) {
    checkGooglePrivacyDlpV2beta1InfoTypeTransformations(
        o.infoTypeTransformations);
    checkGooglePrivacyDlpV2beta1RecordTransformations(o.recordTransformations);
  }
  buildCounterGooglePrivacyDlpV2beta1DeidentifyConfig--;
}

buildUnnamed4466() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1ContentItem>();
  o.add(buildGooglePrivacyDlpV2beta1ContentItem());
  o.add(buildGooglePrivacyDlpV2beta1ContentItem());
  return o;
}

checkUnnamed4466(core.List<api.GooglePrivacyDlpV2beta1ContentItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1ContentItem(o[0]);
  checkGooglePrivacyDlpV2beta1ContentItem(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1DeidentifyContentRequest = 0;
buildGooglePrivacyDlpV2beta1DeidentifyContentRequest() {
  var o = new api.GooglePrivacyDlpV2beta1DeidentifyContentRequest();
  buildCounterGooglePrivacyDlpV2beta1DeidentifyContentRequest++;
  if (buildCounterGooglePrivacyDlpV2beta1DeidentifyContentRequest < 3) {
    o.deidentifyConfig = buildGooglePrivacyDlpV2beta1DeidentifyConfig();
    o.inspectConfig = buildGooglePrivacyDlpV2beta1InspectConfig();
    o.items = buildUnnamed4466();
  }
  buildCounterGooglePrivacyDlpV2beta1DeidentifyContentRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta1DeidentifyContentRequest(
    api.GooglePrivacyDlpV2beta1DeidentifyContentRequest o) {
  buildCounterGooglePrivacyDlpV2beta1DeidentifyContentRequest++;
  if (buildCounterGooglePrivacyDlpV2beta1DeidentifyContentRequest < 3) {
    checkGooglePrivacyDlpV2beta1DeidentifyConfig(o.deidentifyConfig);
    checkGooglePrivacyDlpV2beta1InspectConfig(o.inspectConfig);
    checkUnnamed4466(o.items);
  }
  buildCounterGooglePrivacyDlpV2beta1DeidentifyContentRequest--;
}

buildUnnamed4467() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1ContentItem>();
  o.add(buildGooglePrivacyDlpV2beta1ContentItem());
  o.add(buildGooglePrivacyDlpV2beta1ContentItem());
  return o;
}

checkUnnamed4467(core.List<api.GooglePrivacyDlpV2beta1ContentItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1ContentItem(o[0]);
  checkGooglePrivacyDlpV2beta1ContentItem(o[1]);
}

buildUnnamed4468() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1DeidentificationSummary>();
  o.add(buildGooglePrivacyDlpV2beta1DeidentificationSummary());
  o.add(buildGooglePrivacyDlpV2beta1DeidentificationSummary());
  return o;
}

checkUnnamed4468(
    core.List<api.GooglePrivacyDlpV2beta1DeidentificationSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1DeidentificationSummary(o[0]);
  checkGooglePrivacyDlpV2beta1DeidentificationSummary(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1DeidentifyContentResponse = 0;
buildGooglePrivacyDlpV2beta1DeidentifyContentResponse() {
  var o = new api.GooglePrivacyDlpV2beta1DeidentifyContentResponse();
  buildCounterGooglePrivacyDlpV2beta1DeidentifyContentResponse++;
  if (buildCounterGooglePrivacyDlpV2beta1DeidentifyContentResponse < 3) {
    o.items = buildUnnamed4467();
    o.summaries = buildUnnamed4468();
  }
  buildCounterGooglePrivacyDlpV2beta1DeidentifyContentResponse--;
  return o;
}

checkGooglePrivacyDlpV2beta1DeidentifyContentResponse(
    api.GooglePrivacyDlpV2beta1DeidentifyContentResponse o) {
  buildCounterGooglePrivacyDlpV2beta1DeidentifyContentResponse++;
  if (buildCounterGooglePrivacyDlpV2beta1DeidentifyContentResponse < 3) {
    checkUnnamed4467(o.items);
    checkUnnamed4468(o.summaries);
  }
  buildCounterGooglePrivacyDlpV2beta1DeidentifyContentResponse--;
}

core.int buildCounterGooglePrivacyDlpV2beta1Dictionary = 0;
buildGooglePrivacyDlpV2beta1Dictionary() {
  var o = new api.GooglePrivacyDlpV2beta1Dictionary();
  buildCounterGooglePrivacyDlpV2beta1Dictionary++;
  if (buildCounterGooglePrivacyDlpV2beta1Dictionary < 3) {
    o.wordList = buildGooglePrivacyDlpV2beta1WordList();
  }
  buildCounterGooglePrivacyDlpV2beta1Dictionary--;
  return o;
}

checkGooglePrivacyDlpV2beta1Dictionary(
    api.GooglePrivacyDlpV2beta1Dictionary o) {
  buildCounterGooglePrivacyDlpV2beta1Dictionary++;
  if (buildCounterGooglePrivacyDlpV2beta1Dictionary < 3) {
    checkGooglePrivacyDlpV2beta1WordList(o.wordList);
  }
  buildCounterGooglePrivacyDlpV2beta1Dictionary--;
}

core.int buildCounterGooglePrivacyDlpV2beta1EntityId = 0;
buildGooglePrivacyDlpV2beta1EntityId() {
  var o = new api.GooglePrivacyDlpV2beta1EntityId();
  buildCounterGooglePrivacyDlpV2beta1EntityId++;
  if (buildCounterGooglePrivacyDlpV2beta1EntityId < 3) {
    o.field = buildGooglePrivacyDlpV2beta1FieldId();
  }
  buildCounterGooglePrivacyDlpV2beta1EntityId--;
  return o;
}

checkGooglePrivacyDlpV2beta1EntityId(api.GooglePrivacyDlpV2beta1EntityId o) {
  buildCounterGooglePrivacyDlpV2beta1EntityId++;
  if (buildCounterGooglePrivacyDlpV2beta1EntityId < 3) {
    checkGooglePrivacyDlpV2beta1FieldId(o.field);
  }
  buildCounterGooglePrivacyDlpV2beta1EntityId--;
}

core.int buildCounterGooglePrivacyDlpV2beta1Expressions = 0;
buildGooglePrivacyDlpV2beta1Expressions() {
  var o = new api.GooglePrivacyDlpV2beta1Expressions();
  buildCounterGooglePrivacyDlpV2beta1Expressions++;
  if (buildCounterGooglePrivacyDlpV2beta1Expressions < 3) {
    o.conditions = buildGooglePrivacyDlpV2beta1Conditions();
    o.logicalOperator = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1Expressions--;
  return o;
}

checkGooglePrivacyDlpV2beta1Expressions(
    api.GooglePrivacyDlpV2beta1Expressions o) {
  buildCounterGooglePrivacyDlpV2beta1Expressions++;
  if (buildCounterGooglePrivacyDlpV2beta1Expressions < 3) {
    checkGooglePrivacyDlpV2beta1Conditions(o.conditions);
    unittest.expect(o.logicalOperator, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1Expressions--;
}

core.int buildCounterGooglePrivacyDlpV2beta1FieldId = 0;
buildGooglePrivacyDlpV2beta1FieldId() {
  var o = new api.GooglePrivacyDlpV2beta1FieldId();
  buildCounterGooglePrivacyDlpV2beta1FieldId++;
  if (buildCounterGooglePrivacyDlpV2beta1FieldId < 3) {
    o.columnName = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1FieldId--;
  return o;
}

checkGooglePrivacyDlpV2beta1FieldId(api.GooglePrivacyDlpV2beta1FieldId o) {
  buildCounterGooglePrivacyDlpV2beta1FieldId++;
  if (buildCounterGooglePrivacyDlpV2beta1FieldId < 3) {
    unittest.expect(o.columnName, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1FieldId--;
}

buildUnnamed4469() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1FieldId>();
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  return o;
}

checkUnnamed4469(core.List<api.GooglePrivacyDlpV2beta1FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1FieldId(o[0]);
  checkGooglePrivacyDlpV2beta1FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1FieldTransformation = 0;
buildGooglePrivacyDlpV2beta1FieldTransformation() {
  var o = new api.GooglePrivacyDlpV2beta1FieldTransformation();
  buildCounterGooglePrivacyDlpV2beta1FieldTransformation++;
  if (buildCounterGooglePrivacyDlpV2beta1FieldTransformation < 3) {
    o.condition = buildGooglePrivacyDlpV2beta1RecordCondition();
    o.fields = buildUnnamed4469();
    o.infoTypeTransformations =
        buildGooglePrivacyDlpV2beta1InfoTypeTransformations();
    o.primitiveTransformation =
        buildGooglePrivacyDlpV2beta1PrimitiveTransformation();
  }
  buildCounterGooglePrivacyDlpV2beta1FieldTransformation--;
  return o;
}

checkGooglePrivacyDlpV2beta1FieldTransformation(
    api.GooglePrivacyDlpV2beta1FieldTransformation o) {
  buildCounterGooglePrivacyDlpV2beta1FieldTransformation++;
  if (buildCounterGooglePrivacyDlpV2beta1FieldTransformation < 3) {
    checkGooglePrivacyDlpV2beta1RecordCondition(o.condition);
    checkUnnamed4469(o.fields);
    checkGooglePrivacyDlpV2beta1InfoTypeTransformations(
        o.infoTypeTransformations);
    checkGooglePrivacyDlpV2beta1PrimitiveTransformation(
        o.primitiveTransformation);
  }
  buildCounterGooglePrivacyDlpV2beta1FieldTransformation--;
}

core.int buildCounterGooglePrivacyDlpV2beta1FileSet = 0;
buildGooglePrivacyDlpV2beta1FileSet() {
  var o = new api.GooglePrivacyDlpV2beta1FileSet();
  buildCounterGooglePrivacyDlpV2beta1FileSet++;
  if (buildCounterGooglePrivacyDlpV2beta1FileSet < 3) {
    o.url = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1FileSet--;
  return o;
}

checkGooglePrivacyDlpV2beta1FileSet(api.GooglePrivacyDlpV2beta1FileSet o) {
  buildCounterGooglePrivacyDlpV2beta1FileSet++;
  if (buildCounterGooglePrivacyDlpV2beta1FileSet < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1FileSet--;
}

core.int buildCounterGooglePrivacyDlpV2beta1Finding = 0;
buildGooglePrivacyDlpV2beta1Finding() {
  var o = new api.GooglePrivacyDlpV2beta1Finding();
  buildCounterGooglePrivacyDlpV2beta1Finding++;
  if (buildCounterGooglePrivacyDlpV2beta1Finding < 3) {
    o.createTime = "foo";
    o.infoType = buildGooglePrivacyDlpV2beta1InfoType();
    o.likelihood = "foo";
    o.location = buildGooglePrivacyDlpV2beta1Location();
    o.quote = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1Finding--;
  return o;
}

checkGooglePrivacyDlpV2beta1Finding(api.GooglePrivacyDlpV2beta1Finding o) {
  buildCounterGooglePrivacyDlpV2beta1Finding++;
  if (buildCounterGooglePrivacyDlpV2beta1Finding < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta1InfoType(o.infoType);
    unittest.expect(o.likelihood, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta1Location(o.location);
    unittest.expect(o.quote, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1Finding--;
}

core.int buildCounterGooglePrivacyDlpV2beta1FixedSizeBucketingConfig = 0;
buildGooglePrivacyDlpV2beta1FixedSizeBucketingConfig() {
  var o = new api.GooglePrivacyDlpV2beta1FixedSizeBucketingConfig();
  buildCounterGooglePrivacyDlpV2beta1FixedSizeBucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1FixedSizeBucketingConfig < 3) {
    o.bucketSize = 42.0;
    o.lowerBound = buildGooglePrivacyDlpV2beta1Value();
    o.upperBound = buildGooglePrivacyDlpV2beta1Value();
  }
  buildCounterGooglePrivacyDlpV2beta1FixedSizeBucketingConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1FixedSizeBucketingConfig(
    api.GooglePrivacyDlpV2beta1FixedSizeBucketingConfig o) {
  buildCounterGooglePrivacyDlpV2beta1FixedSizeBucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1FixedSizeBucketingConfig < 3) {
    unittest.expect(o.bucketSize, unittest.equals(42.0));
    checkGooglePrivacyDlpV2beta1Value(o.lowerBound);
    checkGooglePrivacyDlpV2beta1Value(o.upperBound);
  }
  buildCounterGooglePrivacyDlpV2beta1FixedSizeBucketingConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta1ImageLocation = 0;
buildGooglePrivacyDlpV2beta1ImageLocation() {
  var o = new api.GooglePrivacyDlpV2beta1ImageLocation();
  buildCounterGooglePrivacyDlpV2beta1ImageLocation++;
  if (buildCounterGooglePrivacyDlpV2beta1ImageLocation < 3) {
    o.height = 42;
    o.left = 42;
    o.top = 42;
    o.width = 42;
  }
  buildCounterGooglePrivacyDlpV2beta1ImageLocation--;
  return o;
}

checkGooglePrivacyDlpV2beta1ImageLocation(
    api.GooglePrivacyDlpV2beta1ImageLocation o) {
  buildCounterGooglePrivacyDlpV2beta1ImageLocation++;
  if (buildCounterGooglePrivacyDlpV2beta1ImageLocation < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.left, unittest.equals(42));
    unittest.expect(o.top, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2beta1ImageLocation--;
}

core.int buildCounterGooglePrivacyDlpV2beta1ImageRedactionConfig = 0;
buildGooglePrivacyDlpV2beta1ImageRedactionConfig() {
  var o = new api.GooglePrivacyDlpV2beta1ImageRedactionConfig();
  buildCounterGooglePrivacyDlpV2beta1ImageRedactionConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1ImageRedactionConfig < 3) {
    o.infoType = buildGooglePrivacyDlpV2beta1InfoType();
    o.redactAllText = true;
    o.redactionColor = buildGooglePrivacyDlpV2beta1Color();
  }
  buildCounterGooglePrivacyDlpV2beta1ImageRedactionConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1ImageRedactionConfig(
    api.GooglePrivacyDlpV2beta1ImageRedactionConfig o) {
  buildCounterGooglePrivacyDlpV2beta1ImageRedactionConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1ImageRedactionConfig < 3) {
    checkGooglePrivacyDlpV2beta1InfoType(o.infoType);
    unittest.expect(o.redactAllText, unittest.isTrue);
    checkGooglePrivacyDlpV2beta1Color(o.redactionColor);
  }
  buildCounterGooglePrivacyDlpV2beta1ImageRedactionConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta1InfoType = 0;
buildGooglePrivacyDlpV2beta1InfoType() {
  var o = new api.GooglePrivacyDlpV2beta1InfoType();
  buildCounterGooglePrivacyDlpV2beta1InfoType++;
  if (buildCounterGooglePrivacyDlpV2beta1InfoType < 3) {
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1InfoType--;
  return o;
}

checkGooglePrivacyDlpV2beta1InfoType(api.GooglePrivacyDlpV2beta1InfoType o) {
  buildCounterGooglePrivacyDlpV2beta1InfoType++;
  if (buildCounterGooglePrivacyDlpV2beta1InfoType < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1InfoType--;
}

buildUnnamed4470() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1CategoryDescription>();
  o.add(buildGooglePrivacyDlpV2beta1CategoryDescription());
  o.add(buildGooglePrivacyDlpV2beta1CategoryDescription());
  return o;
}

checkUnnamed4470(core.List<api.GooglePrivacyDlpV2beta1CategoryDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1CategoryDescription(o[0]);
  checkGooglePrivacyDlpV2beta1CategoryDescription(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1InfoTypeDescription = 0;
buildGooglePrivacyDlpV2beta1InfoTypeDescription() {
  var o = new api.GooglePrivacyDlpV2beta1InfoTypeDescription();
  buildCounterGooglePrivacyDlpV2beta1InfoTypeDescription++;
  if (buildCounterGooglePrivacyDlpV2beta1InfoTypeDescription < 3) {
    o.categories = buildUnnamed4470();
    o.displayName = "foo";
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1InfoTypeDescription--;
  return o;
}

checkGooglePrivacyDlpV2beta1InfoTypeDescription(
    api.GooglePrivacyDlpV2beta1InfoTypeDescription o) {
  buildCounterGooglePrivacyDlpV2beta1InfoTypeDescription++;
  if (buildCounterGooglePrivacyDlpV2beta1InfoTypeDescription < 3) {
    checkUnnamed4470(o.categories);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1InfoTypeDescription--;
}

core.int buildCounterGooglePrivacyDlpV2beta1InfoTypeLimit = 0;
buildGooglePrivacyDlpV2beta1InfoTypeLimit() {
  var o = new api.GooglePrivacyDlpV2beta1InfoTypeLimit();
  buildCounterGooglePrivacyDlpV2beta1InfoTypeLimit++;
  if (buildCounterGooglePrivacyDlpV2beta1InfoTypeLimit < 3) {
    o.infoType = buildGooglePrivacyDlpV2beta1InfoType();
    o.maxFindings = 42;
  }
  buildCounterGooglePrivacyDlpV2beta1InfoTypeLimit--;
  return o;
}

checkGooglePrivacyDlpV2beta1InfoTypeLimit(
    api.GooglePrivacyDlpV2beta1InfoTypeLimit o) {
  buildCounterGooglePrivacyDlpV2beta1InfoTypeLimit++;
  if (buildCounterGooglePrivacyDlpV2beta1InfoTypeLimit < 3) {
    checkGooglePrivacyDlpV2beta1InfoType(o.infoType);
    unittest.expect(o.maxFindings, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2beta1InfoTypeLimit--;
}

core.int buildCounterGooglePrivacyDlpV2beta1InfoTypeStatistics = 0;
buildGooglePrivacyDlpV2beta1InfoTypeStatistics() {
  var o = new api.GooglePrivacyDlpV2beta1InfoTypeStatistics();
  buildCounterGooglePrivacyDlpV2beta1InfoTypeStatistics++;
  if (buildCounterGooglePrivacyDlpV2beta1InfoTypeStatistics < 3) {
    o.count = "foo";
    o.infoType = buildGooglePrivacyDlpV2beta1InfoType();
  }
  buildCounterGooglePrivacyDlpV2beta1InfoTypeStatistics--;
  return o;
}

checkGooglePrivacyDlpV2beta1InfoTypeStatistics(
    api.GooglePrivacyDlpV2beta1InfoTypeStatistics o) {
  buildCounterGooglePrivacyDlpV2beta1InfoTypeStatistics++;
  if (buildCounterGooglePrivacyDlpV2beta1InfoTypeStatistics < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta1InfoType(o.infoType);
  }
  buildCounterGooglePrivacyDlpV2beta1InfoTypeStatistics--;
}

buildUnnamed4471() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1InfoType>();
  o.add(buildGooglePrivacyDlpV2beta1InfoType());
  o.add(buildGooglePrivacyDlpV2beta1InfoType());
  return o;
}

checkUnnamed4471(core.List<api.GooglePrivacyDlpV2beta1InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1InfoType(o[0]);
  checkGooglePrivacyDlpV2beta1InfoType(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1InfoTypeTransformation = 0;
buildGooglePrivacyDlpV2beta1InfoTypeTransformation() {
  var o = new api.GooglePrivacyDlpV2beta1InfoTypeTransformation();
  buildCounterGooglePrivacyDlpV2beta1InfoTypeTransformation++;
  if (buildCounterGooglePrivacyDlpV2beta1InfoTypeTransformation < 3) {
    o.infoTypes = buildUnnamed4471();
    o.primitiveTransformation =
        buildGooglePrivacyDlpV2beta1PrimitiveTransformation();
  }
  buildCounterGooglePrivacyDlpV2beta1InfoTypeTransformation--;
  return o;
}

checkGooglePrivacyDlpV2beta1InfoTypeTransformation(
    api.GooglePrivacyDlpV2beta1InfoTypeTransformation o) {
  buildCounterGooglePrivacyDlpV2beta1InfoTypeTransformation++;
  if (buildCounterGooglePrivacyDlpV2beta1InfoTypeTransformation < 3) {
    checkUnnamed4471(o.infoTypes);
    checkGooglePrivacyDlpV2beta1PrimitiveTransformation(
        o.primitiveTransformation);
  }
  buildCounterGooglePrivacyDlpV2beta1InfoTypeTransformation--;
}

buildUnnamed4472() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1InfoTypeTransformation>();
  o.add(buildGooglePrivacyDlpV2beta1InfoTypeTransformation());
  o.add(buildGooglePrivacyDlpV2beta1InfoTypeTransformation());
  return o;
}

checkUnnamed4472(
    core.List<api.GooglePrivacyDlpV2beta1InfoTypeTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1InfoTypeTransformation(o[0]);
  checkGooglePrivacyDlpV2beta1InfoTypeTransformation(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1InfoTypeTransformations = 0;
buildGooglePrivacyDlpV2beta1InfoTypeTransformations() {
  var o = new api.GooglePrivacyDlpV2beta1InfoTypeTransformations();
  buildCounterGooglePrivacyDlpV2beta1InfoTypeTransformations++;
  if (buildCounterGooglePrivacyDlpV2beta1InfoTypeTransformations < 3) {
    o.transformations = buildUnnamed4472();
  }
  buildCounterGooglePrivacyDlpV2beta1InfoTypeTransformations--;
  return o;
}

checkGooglePrivacyDlpV2beta1InfoTypeTransformations(
    api.GooglePrivacyDlpV2beta1InfoTypeTransformations o) {
  buildCounterGooglePrivacyDlpV2beta1InfoTypeTransformations++;
  if (buildCounterGooglePrivacyDlpV2beta1InfoTypeTransformations < 3) {
    checkUnnamed4472(o.transformations);
  }
  buildCounterGooglePrivacyDlpV2beta1InfoTypeTransformations--;
}

buildUnnamed4473() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1CustomInfoType>();
  o.add(buildGooglePrivacyDlpV2beta1CustomInfoType());
  o.add(buildGooglePrivacyDlpV2beta1CustomInfoType());
  return o;
}

checkUnnamed4473(core.List<api.GooglePrivacyDlpV2beta1CustomInfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1CustomInfoType(o[0]);
  checkGooglePrivacyDlpV2beta1CustomInfoType(o[1]);
}

buildUnnamed4474() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1InfoTypeLimit>();
  o.add(buildGooglePrivacyDlpV2beta1InfoTypeLimit());
  o.add(buildGooglePrivacyDlpV2beta1InfoTypeLimit());
  return o;
}

checkUnnamed4474(core.List<api.GooglePrivacyDlpV2beta1InfoTypeLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1InfoTypeLimit(o[0]);
  checkGooglePrivacyDlpV2beta1InfoTypeLimit(o[1]);
}

buildUnnamed4475() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1InfoType>();
  o.add(buildGooglePrivacyDlpV2beta1InfoType());
  o.add(buildGooglePrivacyDlpV2beta1InfoType());
  return o;
}

checkUnnamed4475(core.List<api.GooglePrivacyDlpV2beta1InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1InfoType(o[0]);
  checkGooglePrivacyDlpV2beta1InfoType(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1InspectConfig = 0;
buildGooglePrivacyDlpV2beta1InspectConfig() {
  var o = new api.GooglePrivacyDlpV2beta1InspectConfig();
  buildCounterGooglePrivacyDlpV2beta1InspectConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1InspectConfig < 3) {
    o.customInfoTypes = buildUnnamed4473();
    o.excludeTypes = true;
    o.includeQuote = true;
    o.infoTypeLimits = buildUnnamed4474();
    o.infoTypes = buildUnnamed4475();
    o.maxFindings = 42;
    o.minLikelihood = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1InspectConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1InspectConfig(
    api.GooglePrivacyDlpV2beta1InspectConfig o) {
  buildCounterGooglePrivacyDlpV2beta1InspectConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1InspectConfig < 3) {
    checkUnnamed4473(o.customInfoTypes);
    unittest.expect(o.excludeTypes, unittest.isTrue);
    unittest.expect(o.includeQuote, unittest.isTrue);
    checkUnnamed4474(o.infoTypeLimits);
    checkUnnamed4475(o.infoTypes);
    unittest.expect(o.maxFindings, unittest.equals(42));
    unittest.expect(o.minLikelihood, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1InspectConfig--;
}

buildUnnamed4476() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1ContentItem>();
  o.add(buildGooglePrivacyDlpV2beta1ContentItem());
  o.add(buildGooglePrivacyDlpV2beta1ContentItem());
  return o;
}

checkUnnamed4476(core.List<api.GooglePrivacyDlpV2beta1ContentItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1ContentItem(o[0]);
  checkGooglePrivacyDlpV2beta1ContentItem(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1InspectContentRequest = 0;
buildGooglePrivacyDlpV2beta1InspectContentRequest() {
  var o = new api.GooglePrivacyDlpV2beta1InspectContentRequest();
  buildCounterGooglePrivacyDlpV2beta1InspectContentRequest++;
  if (buildCounterGooglePrivacyDlpV2beta1InspectContentRequest < 3) {
    o.inspectConfig = buildGooglePrivacyDlpV2beta1InspectConfig();
    o.items = buildUnnamed4476();
  }
  buildCounterGooglePrivacyDlpV2beta1InspectContentRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta1InspectContentRequest(
    api.GooglePrivacyDlpV2beta1InspectContentRequest o) {
  buildCounterGooglePrivacyDlpV2beta1InspectContentRequest++;
  if (buildCounterGooglePrivacyDlpV2beta1InspectContentRequest < 3) {
    checkGooglePrivacyDlpV2beta1InspectConfig(o.inspectConfig);
    checkUnnamed4476(o.items);
  }
  buildCounterGooglePrivacyDlpV2beta1InspectContentRequest--;
}

buildUnnamed4477() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1InspectResult>();
  o.add(buildGooglePrivacyDlpV2beta1InspectResult());
  o.add(buildGooglePrivacyDlpV2beta1InspectResult());
  return o;
}

checkUnnamed4477(core.List<api.GooglePrivacyDlpV2beta1InspectResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1InspectResult(o[0]);
  checkGooglePrivacyDlpV2beta1InspectResult(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1InspectContentResponse = 0;
buildGooglePrivacyDlpV2beta1InspectContentResponse() {
  var o = new api.GooglePrivacyDlpV2beta1InspectContentResponse();
  buildCounterGooglePrivacyDlpV2beta1InspectContentResponse++;
  if (buildCounterGooglePrivacyDlpV2beta1InspectContentResponse < 3) {
    o.results = buildUnnamed4477();
  }
  buildCounterGooglePrivacyDlpV2beta1InspectContentResponse--;
  return o;
}

checkGooglePrivacyDlpV2beta1InspectContentResponse(
    api.GooglePrivacyDlpV2beta1InspectContentResponse o) {
  buildCounterGooglePrivacyDlpV2beta1InspectContentResponse++;
  if (buildCounterGooglePrivacyDlpV2beta1InspectContentResponse < 3) {
    checkUnnamed4477(o.results);
  }
  buildCounterGooglePrivacyDlpV2beta1InspectContentResponse--;
}

buildUnnamed4478() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1InfoTypeStatistics>();
  o.add(buildGooglePrivacyDlpV2beta1InfoTypeStatistics());
  o.add(buildGooglePrivacyDlpV2beta1InfoTypeStatistics());
  return o;
}

checkUnnamed4478(core.List<api.GooglePrivacyDlpV2beta1InfoTypeStatistics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1InfoTypeStatistics(o[0]);
  checkGooglePrivacyDlpV2beta1InfoTypeStatistics(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1InspectOperationMetadata = 0;
buildGooglePrivacyDlpV2beta1InspectOperationMetadata() {
  var o = new api.GooglePrivacyDlpV2beta1InspectOperationMetadata();
  buildCounterGooglePrivacyDlpV2beta1InspectOperationMetadata++;
  if (buildCounterGooglePrivacyDlpV2beta1InspectOperationMetadata < 3) {
    o.createTime = "foo";
    o.infoTypeStats = buildUnnamed4478();
    o.processedBytes = "foo";
    o.requestInspectConfig = buildGooglePrivacyDlpV2beta1InspectConfig();
    o.requestOutputConfig = buildGooglePrivacyDlpV2beta1OutputStorageConfig();
    o.requestStorageConfig = buildGooglePrivacyDlpV2beta1StorageConfig();
    o.totalEstimatedBytes = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1InspectOperationMetadata--;
  return o;
}

checkGooglePrivacyDlpV2beta1InspectOperationMetadata(
    api.GooglePrivacyDlpV2beta1InspectOperationMetadata o) {
  buildCounterGooglePrivacyDlpV2beta1InspectOperationMetadata++;
  if (buildCounterGooglePrivacyDlpV2beta1InspectOperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed4478(o.infoTypeStats);
    unittest.expect(o.processedBytes, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta1InspectConfig(o.requestInspectConfig);
    checkGooglePrivacyDlpV2beta1OutputStorageConfig(o.requestOutputConfig);
    checkGooglePrivacyDlpV2beta1StorageConfig(o.requestStorageConfig);
    unittest.expect(o.totalEstimatedBytes, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1InspectOperationMetadata--;
}

core.int buildCounterGooglePrivacyDlpV2beta1InspectOperationResult = 0;
buildGooglePrivacyDlpV2beta1InspectOperationResult() {
  var o = new api.GooglePrivacyDlpV2beta1InspectOperationResult();
  buildCounterGooglePrivacyDlpV2beta1InspectOperationResult++;
  if (buildCounterGooglePrivacyDlpV2beta1InspectOperationResult < 3) {
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1InspectOperationResult--;
  return o;
}

checkGooglePrivacyDlpV2beta1InspectOperationResult(
    api.GooglePrivacyDlpV2beta1InspectOperationResult o) {
  buildCounterGooglePrivacyDlpV2beta1InspectOperationResult++;
  if (buildCounterGooglePrivacyDlpV2beta1InspectOperationResult < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1InspectOperationResult--;
}

buildUnnamed4479() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1Finding>();
  o.add(buildGooglePrivacyDlpV2beta1Finding());
  o.add(buildGooglePrivacyDlpV2beta1Finding());
  return o;
}

checkUnnamed4479(core.List<api.GooglePrivacyDlpV2beta1Finding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1Finding(o[0]);
  checkGooglePrivacyDlpV2beta1Finding(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1InspectResult = 0;
buildGooglePrivacyDlpV2beta1InspectResult() {
  var o = new api.GooglePrivacyDlpV2beta1InspectResult();
  buildCounterGooglePrivacyDlpV2beta1InspectResult++;
  if (buildCounterGooglePrivacyDlpV2beta1InspectResult < 3) {
    o.findings = buildUnnamed4479();
    o.findingsTruncated = true;
  }
  buildCounterGooglePrivacyDlpV2beta1InspectResult--;
  return o;
}

checkGooglePrivacyDlpV2beta1InspectResult(
    api.GooglePrivacyDlpV2beta1InspectResult o) {
  buildCounterGooglePrivacyDlpV2beta1InspectResult++;
  if (buildCounterGooglePrivacyDlpV2beta1InspectResult < 3) {
    checkUnnamed4479(o.findings);
    unittest.expect(o.findingsTruncated, unittest.isTrue);
  }
  buildCounterGooglePrivacyDlpV2beta1InspectResult--;
}

buildUnnamed4480() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1FieldId>();
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  return o;
}

checkUnnamed4480(core.List<api.GooglePrivacyDlpV2beta1FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1FieldId(o[0]);
  checkGooglePrivacyDlpV2beta1FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1KAnonymityConfig = 0;
buildGooglePrivacyDlpV2beta1KAnonymityConfig() {
  var o = new api.GooglePrivacyDlpV2beta1KAnonymityConfig();
  buildCounterGooglePrivacyDlpV2beta1KAnonymityConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1KAnonymityConfig < 3) {
    o.entityId = buildGooglePrivacyDlpV2beta1EntityId();
    o.quasiIds = buildUnnamed4480();
  }
  buildCounterGooglePrivacyDlpV2beta1KAnonymityConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1KAnonymityConfig(
    api.GooglePrivacyDlpV2beta1KAnonymityConfig o) {
  buildCounterGooglePrivacyDlpV2beta1KAnonymityConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1KAnonymityConfig < 3) {
    checkGooglePrivacyDlpV2beta1EntityId(o.entityId);
    checkUnnamed4480(o.quasiIds);
  }
  buildCounterGooglePrivacyDlpV2beta1KAnonymityConfig--;
}

buildUnnamed4481() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1Value>();
  o.add(buildGooglePrivacyDlpV2beta1Value());
  o.add(buildGooglePrivacyDlpV2beta1Value());
  return o;
}

checkUnnamed4481(core.List<api.GooglePrivacyDlpV2beta1Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1Value(o[0]);
  checkGooglePrivacyDlpV2beta1Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass = 0;
buildGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass() {
  var o = new api.GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass();
  buildCounterGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass < 3) {
    o.equivalenceClassSize = "foo";
    o.quasiIdsValues = buildUnnamed4481();
  }
  buildCounterGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass--;
  return o;
}

checkGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass(
    api.GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass o) {
  buildCounterGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass < 3) {
    unittest.expect(o.equivalenceClassSize, unittest.equals('foo'));
    checkUnnamed4481(o.quasiIdsValues);
  }
  buildCounterGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass--;
}

buildUnnamed4482() {
  var o =
      new core.List<api.GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass>();
  o.add(buildGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass());
  o.add(buildGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass());
  return o;
}

checkUnnamed4482(
    core.List<api.GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass(o[0]);
  checkGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1KAnonymityHistogramBucket = 0;
buildGooglePrivacyDlpV2beta1KAnonymityHistogramBucket() {
  var o = new api.GooglePrivacyDlpV2beta1KAnonymityHistogramBucket();
  buildCounterGooglePrivacyDlpV2beta1KAnonymityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta1KAnonymityHistogramBucket < 3) {
    o.bucketSize = "foo";
    o.bucketValues = buildUnnamed4482();
    o.equivalenceClassSizeLowerBound = "foo";
    o.equivalenceClassSizeUpperBound = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1KAnonymityHistogramBucket--;
  return o;
}

checkGooglePrivacyDlpV2beta1KAnonymityHistogramBucket(
    api.GooglePrivacyDlpV2beta1KAnonymityHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2beta1KAnonymityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta1KAnonymityHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    checkUnnamed4482(o.bucketValues);
    unittest.expect(o.equivalenceClassSizeLowerBound, unittest.equals('foo'));
    unittest.expect(o.equivalenceClassSizeUpperBound, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1KAnonymityHistogramBucket--;
}

buildUnnamed4483() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1KAnonymityHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2beta1KAnonymityHistogramBucket());
  o.add(buildGooglePrivacyDlpV2beta1KAnonymityHistogramBucket());
  return o;
}

checkUnnamed4483(
    core.List<api.GooglePrivacyDlpV2beta1KAnonymityHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1KAnonymityHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2beta1KAnonymityHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1KAnonymityResult = 0;
buildGooglePrivacyDlpV2beta1KAnonymityResult() {
  var o = new api.GooglePrivacyDlpV2beta1KAnonymityResult();
  buildCounterGooglePrivacyDlpV2beta1KAnonymityResult++;
  if (buildCounterGooglePrivacyDlpV2beta1KAnonymityResult < 3) {
    o.equivalenceClassHistogramBuckets = buildUnnamed4483();
  }
  buildCounterGooglePrivacyDlpV2beta1KAnonymityResult--;
  return o;
}

checkGooglePrivacyDlpV2beta1KAnonymityResult(
    api.GooglePrivacyDlpV2beta1KAnonymityResult o) {
  buildCounterGooglePrivacyDlpV2beta1KAnonymityResult++;
  if (buildCounterGooglePrivacyDlpV2beta1KAnonymityResult < 3) {
    checkUnnamed4483(o.equivalenceClassHistogramBuckets);
  }
  buildCounterGooglePrivacyDlpV2beta1KAnonymityResult--;
}

buildUnnamed4484() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1AuxiliaryTable>();
  o.add(buildGooglePrivacyDlpV2beta1AuxiliaryTable());
  o.add(buildGooglePrivacyDlpV2beta1AuxiliaryTable());
  return o;
}

checkUnnamed4484(core.List<api.GooglePrivacyDlpV2beta1AuxiliaryTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1AuxiliaryTable(o[0]);
  checkGooglePrivacyDlpV2beta1AuxiliaryTable(o[1]);
}

buildUnnamed4485() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1TaggedField>();
  o.add(buildGooglePrivacyDlpV2beta1TaggedField());
  o.add(buildGooglePrivacyDlpV2beta1TaggedField());
  return o;
}

checkUnnamed4485(core.List<api.GooglePrivacyDlpV2beta1TaggedField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1TaggedField(o[0]);
  checkGooglePrivacyDlpV2beta1TaggedField(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1KMapEstimationConfig = 0;
buildGooglePrivacyDlpV2beta1KMapEstimationConfig() {
  var o = new api.GooglePrivacyDlpV2beta1KMapEstimationConfig();
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1KMapEstimationConfig < 3) {
    o.auxiliaryTables = buildUnnamed4484();
    o.quasiIds = buildUnnamed4485();
    o.regionCode = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1KMapEstimationConfig(
    api.GooglePrivacyDlpV2beta1KMapEstimationConfig o) {
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1KMapEstimationConfig < 3) {
    checkUnnamed4484(o.auxiliaryTables);
    checkUnnamed4485(o.quasiIds);
    unittest.expect(o.regionCode, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationConfig--;
}

buildUnnamed4486() {
  var o =
      new core.List<api.GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues>();
  o.add(buildGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues());
  o.add(buildGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues());
  return o;
}

checkUnnamed4486(
    core.List<api.GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues(o[0]);
  checkGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket = 0;
buildGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket() {
  var o = new api.GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket();
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket < 3) {
    o.bucketSize = "foo";
    o.bucketValues = buildUnnamed4486();
    o.maxAnonymity = "foo";
    o.minAnonymity = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket--;
  return o;
}

checkGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket(
    api.GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    checkUnnamed4486(o.bucketValues);
    unittest.expect(o.maxAnonymity, unittest.equals('foo'));
    unittest.expect(o.minAnonymity, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket--;
}

buildUnnamed4487() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1Value>();
  o.add(buildGooglePrivacyDlpV2beta1Value());
  o.add(buildGooglePrivacyDlpV2beta1Value());
  return o;
}

checkUnnamed4487(core.List<api.GooglePrivacyDlpV2beta1Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1Value(o[0]);
  checkGooglePrivacyDlpV2beta1Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues = 0;
buildGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues() {
  var o = new api.GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues();
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues < 3) {
    o.estimatedAnonymity = "foo";
    o.quasiIdsValues = buildUnnamed4487();
  }
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues--;
  return o;
}

checkGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues(
    api.GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues o) {
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues < 3) {
    unittest.expect(o.estimatedAnonymity, unittest.equals('foo'));
    checkUnnamed4487(o.quasiIdsValues);
  }
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues--;
}

buildUnnamed4488() {
  var o =
      new core.List<api.GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket());
  o.add(buildGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket());
  return o;
}

checkUnnamed4488(
    core.List<api.GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1KMapEstimationResult = 0;
buildGooglePrivacyDlpV2beta1KMapEstimationResult() {
  var o = new api.GooglePrivacyDlpV2beta1KMapEstimationResult();
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2beta1KMapEstimationResult < 3) {
    o.kMapEstimationHistogram = buildUnnamed4488();
  }
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationResult--;
  return o;
}

checkGooglePrivacyDlpV2beta1KMapEstimationResult(
    api.GooglePrivacyDlpV2beta1KMapEstimationResult o) {
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2beta1KMapEstimationResult < 3) {
    checkUnnamed4488(o.kMapEstimationHistogram);
  }
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationResult--;
}

buildUnnamed4489() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1PathElement>();
  o.add(buildGooglePrivacyDlpV2beta1PathElement());
  o.add(buildGooglePrivacyDlpV2beta1PathElement());
  return o;
}

checkUnnamed4489(core.List<api.GooglePrivacyDlpV2beta1PathElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1PathElement(o[0]);
  checkGooglePrivacyDlpV2beta1PathElement(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1Key = 0;
buildGooglePrivacyDlpV2beta1Key() {
  var o = new api.GooglePrivacyDlpV2beta1Key();
  buildCounterGooglePrivacyDlpV2beta1Key++;
  if (buildCounterGooglePrivacyDlpV2beta1Key < 3) {
    o.partitionId = buildGooglePrivacyDlpV2beta1PartitionId();
    o.path = buildUnnamed4489();
  }
  buildCounterGooglePrivacyDlpV2beta1Key--;
  return o;
}

checkGooglePrivacyDlpV2beta1Key(api.GooglePrivacyDlpV2beta1Key o) {
  buildCounterGooglePrivacyDlpV2beta1Key++;
  if (buildCounterGooglePrivacyDlpV2beta1Key < 3) {
    checkGooglePrivacyDlpV2beta1PartitionId(o.partitionId);
    checkUnnamed4489(o.path);
  }
  buildCounterGooglePrivacyDlpV2beta1Key--;
}

core.int buildCounterGooglePrivacyDlpV2beta1KindExpression = 0;
buildGooglePrivacyDlpV2beta1KindExpression() {
  var o = new api.GooglePrivacyDlpV2beta1KindExpression();
  buildCounterGooglePrivacyDlpV2beta1KindExpression++;
  if (buildCounterGooglePrivacyDlpV2beta1KindExpression < 3) {
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1KindExpression--;
  return o;
}

checkGooglePrivacyDlpV2beta1KindExpression(
    api.GooglePrivacyDlpV2beta1KindExpression o) {
  buildCounterGooglePrivacyDlpV2beta1KindExpression++;
  if (buildCounterGooglePrivacyDlpV2beta1KindExpression < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1KindExpression--;
}

core.int buildCounterGooglePrivacyDlpV2beta1KmsWrappedCryptoKey = 0;
buildGooglePrivacyDlpV2beta1KmsWrappedCryptoKey() {
  var o = new api.GooglePrivacyDlpV2beta1KmsWrappedCryptoKey();
  buildCounterGooglePrivacyDlpV2beta1KmsWrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta1KmsWrappedCryptoKey < 3) {
    o.cryptoKeyName = "foo";
    o.wrappedKey = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1KmsWrappedCryptoKey--;
  return o;
}

checkGooglePrivacyDlpV2beta1KmsWrappedCryptoKey(
    api.GooglePrivacyDlpV2beta1KmsWrappedCryptoKey o) {
  buildCounterGooglePrivacyDlpV2beta1KmsWrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta1KmsWrappedCryptoKey < 3) {
    unittest.expect(o.cryptoKeyName, unittest.equals('foo'));
    unittest.expect(o.wrappedKey, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1KmsWrappedCryptoKey--;
}

buildUnnamed4490() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1FieldId>();
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  return o;
}

checkUnnamed4490(core.List<api.GooglePrivacyDlpV2beta1FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1FieldId(o[0]);
  checkGooglePrivacyDlpV2beta1FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1LDiversityConfig = 0;
buildGooglePrivacyDlpV2beta1LDiversityConfig() {
  var o = new api.GooglePrivacyDlpV2beta1LDiversityConfig();
  buildCounterGooglePrivacyDlpV2beta1LDiversityConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1LDiversityConfig < 3) {
    o.quasiIds = buildUnnamed4490();
    o.sensitiveAttribute = buildGooglePrivacyDlpV2beta1FieldId();
  }
  buildCounterGooglePrivacyDlpV2beta1LDiversityConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1LDiversityConfig(
    api.GooglePrivacyDlpV2beta1LDiversityConfig o) {
  buildCounterGooglePrivacyDlpV2beta1LDiversityConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1LDiversityConfig < 3) {
    checkUnnamed4490(o.quasiIds);
    checkGooglePrivacyDlpV2beta1FieldId(o.sensitiveAttribute);
  }
  buildCounterGooglePrivacyDlpV2beta1LDiversityConfig--;
}

buildUnnamed4491() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1Value>();
  o.add(buildGooglePrivacyDlpV2beta1Value());
  o.add(buildGooglePrivacyDlpV2beta1Value());
  return o;
}

checkUnnamed4491(core.List<api.GooglePrivacyDlpV2beta1Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1Value(o[0]);
  checkGooglePrivacyDlpV2beta1Value(o[1]);
}

buildUnnamed4492() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1ValueFrequency>();
  o.add(buildGooglePrivacyDlpV2beta1ValueFrequency());
  o.add(buildGooglePrivacyDlpV2beta1ValueFrequency());
  return o;
}

checkUnnamed4492(core.List<api.GooglePrivacyDlpV2beta1ValueFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1ValueFrequency(o[0]);
  checkGooglePrivacyDlpV2beta1ValueFrequency(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1LDiversityEquivalenceClass = 0;
buildGooglePrivacyDlpV2beta1LDiversityEquivalenceClass() {
  var o = new api.GooglePrivacyDlpV2beta1LDiversityEquivalenceClass();
  buildCounterGooglePrivacyDlpV2beta1LDiversityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2beta1LDiversityEquivalenceClass < 3) {
    o.equivalenceClassSize = "foo";
    o.numDistinctSensitiveValues = "foo";
    o.quasiIdsValues = buildUnnamed4491();
    o.topSensitiveValues = buildUnnamed4492();
  }
  buildCounterGooglePrivacyDlpV2beta1LDiversityEquivalenceClass--;
  return o;
}

checkGooglePrivacyDlpV2beta1LDiversityEquivalenceClass(
    api.GooglePrivacyDlpV2beta1LDiversityEquivalenceClass o) {
  buildCounterGooglePrivacyDlpV2beta1LDiversityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2beta1LDiversityEquivalenceClass < 3) {
    unittest.expect(o.equivalenceClassSize, unittest.equals('foo'));
    unittest.expect(o.numDistinctSensitiveValues, unittest.equals('foo'));
    checkUnnamed4491(o.quasiIdsValues);
    checkUnnamed4492(o.topSensitiveValues);
  }
  buildCounterGooglePrivacyDlpV2beta1LDiversityEquivalenceClass--;
}

buildUnnamed4493() {
  var o =
      new core.List<api.GooglePrivacyDlpV2beta1LDiversityEquivalenceClass>();
  o.add(buildGooglePrivacyDlpV2beta1LDiversityEquivalenceClass());
  o.add(buildGooglePrivacyDlpV2beta1LDiversityEquivalenceClass());
  return o;
}

checkUnnamed4493(
    core.List<api.GooglePrivacyDlpV2beta1LDiversityEquivalenceClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1LDiversityEquivalenceClass(o[0]);
  checkGooglePrivacyDlpV2beta1LDiversityEquivalenceClass(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1LDiversityHistogramBucket = 0;
buildGooglePrivacyDlpV2beta1LDiversityHistogramBucket() {
  var o = new api.GooglePrivacyDlpV2beta1LDiversityHistogramBucket();
  buildCounterGooglePrivacyDlpV2beta1LDiversityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta1LDiversityHistogramBucket < 3) {
    o.bucketSize = "foo";
    o.bucketValues = buildUnnamed4493();
    o.sensitiveValueFrequencyLowerBound = "foo";
    o.sensitiveValueFrequencyUpperBound = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1LDiversityHistogramBucket--;
  return o;
}

checkGooglePrivacyDlpV2beta1LDiversityHistogramBucket(
    api.GooglePrivacyDlpV2beta1LDiversityHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2beta1LDiversityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta1LDiversityHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    checkUnnamed4493(o.bucketValues);
    unittest.expect(
        o.sensitiveValueFrequencyLowerBound, unittest.equals('foo'));
    unittest.expect(
        o.sensitiveValueFrequencyUpperBound, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1LDiversityHistogramBucket--;
}

buildUnnamed4494() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1LDiversityHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2beta1LDiversityHistogramBucket());
  o.add(buildGooglePrivacyDlpV2beta1LDiversityHistogramBucket());
  return o;
}

checkUnnamed4494(
    core.List<api.GooglePrivacyDlpV2beta1LDiversityHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1LDiversityHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2beta1LDiversityHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1LDiversityResult = 0;
buildGooglePrivacyDlpV2beta1LDiversityResult() {
  var o = new api.GooglePrivacyDlpV2beta1LDiversityResult();
  buildCounterGooglePrivacyDlpV2beta1LDiversityResult++;
  if (buildCounterGooglePrivacyDlpV2beta1LDiversityResult < 3) {
    o.sensitiveValueFrequencyHistogramBuckets = buildUnnamed4494();
  }
  buildCounterGooglePrivacyDlpV2beta1LDiversityResult--;
  return o;
}

checkGooglePrivacyDlpV2beta1LDiversityResult(
    api.GooglePrivacyDlpV2beta1LDiversityResult o) {
  buildCounterGooglePrivacyDlpV2beta1LDiversityResult++;
  if (buildCounterGooglePrivacyDlpV2beta1LDiversityResult < 3) {
    checkUnnamed4494(o.sensitiveValueFrequencyHistogramBuckets);
  }
  buildCounterGooglePrivacyDlpV2beta1LDiversityResult--;
}

buildUnnamed4495() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1InfoTypeDescription>();
  o.add(buildGooglePrivacyDlpV2beta1InfoTypeDescription());
  o.add(buildGooglePrivacyDlpV2beta1InfoTypeDescription());
  return o;
}

checkUnnamed4495(core.List<api.GooglePrivacyDlpV2beta1InfoTypeDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1InfoTypeDescription(o[0]);
  checkGooglePrivacyDlpV2beta1InfoTypeDescription(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1ListInfoTypesResponse = 0;
buildGooglePrivacyDlpV2beta1ListInfoTypesResponse() {
  var o = new api.GooglePrivacyDlpV2beta1ListInfoTypesResponse();
  buildCounterGooglePrivacyDlpV2beta1ListInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2beta1ListInfoTypesResponse < 3) {
    o.infoTypes = buildUnnamed4495();
  }
  buildCounterGooglePrivacyDlpV2beta1ListInfoTypesResponse--;
  return o;
}

checkGooglePrivacyDlpV2beta1ListInfoTypesResponse(
    api.GooglePrivacyDlpV2beta1ListInfoTypesResponse o) {
  buildCounterGooglePrivacyDlpV2beta1ListInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2beta1ListInfoTypesResponse < 3) {
    checkUnnamed4495(o.infoTypes);
  }
  buildCounterGooglePrivacyDlpV2beta1ListInfoTypesResponse--;
}

core.int buildCounterGooglePrivacyDlpV2beta1ListInspectFindingsResponse = 0;
buildGooglePrivacyDlpV2beta1ListInspectFindingsResponse() {
  var o = new api.GooglePrivacyDlpV2beta1ListInspectFindingsResponse();
  buildCounterGooglePrivacyDlpV2beta1ListInspectFindingsResponse++;
  if (buildCounterGooglePrivacyDlpV2beta1ListInspectFindingsResponse < 3) {
    o.nextPageToken = "foo";
    o.result = buildGooglePrivacyDlpV2beta1InspectResult();
  }
  buildCounterGooglePrivacyDlpV2beta1ListInspectFindingsResponse--;
  return o;
}

checkGooglePrivacyDlpV2beta1ListInspectFindingsResponse(
    api.GooglePrivacyDlpV2beta1ListInspectFindingsResponse o) {
  buildCounterGooglePrivacyDlpV2beta1ListInspectFindingsResponse++;
  if (buildCounterGooglePrivacyDlpV2beta1ListInspectFindingsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta1InspectResult(o.result);
  }
  buildCounterGooglePrivacyDlpV2beta1ListInspectFindingsResponse--;
}

buildUnnamed4496() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1CategoryDescription>();
  o.add(buildGooglePrivacyDlpV2beta1CategoryDescription());
  o.add(buildGooglePrivacyDlpV2beta1CategoryDescription());
  return o;
}

checkUnnamed4496(core.List<api.GooglePrivacyDlpV2beta1CategoryDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1CategoryDescription(o[0]);
  checkGooglePrivacyDlpV2beta1CategoryDescription(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1ListRootCategoriesResponse = 0;
buildGooglePrivacyDlpV2beta1ListRootCategoriesResponse() {
  var o = new api.GooglePrivacyDlpV2beta1ListRootCategoriesResponse();
  buildCounterGooglePrivacyDlpV2beta1ListRootCategoriesResponse++;
  if (buildCounterGooglePrivacyDlpV2beta1ListRootCategoriesResponse < 3) {
    o.categories = buildUnnamed4496();
  }
  buildCounterGooglePrivacyDlpV2beta1ListRootCategoriesResponse--;
  return o;
}

checkGooglePrivacyDlpV2beta1ListRootCategoriesResponse(
    api.GooglePrivacyDlpV2beta1ListRootCategoriesResponse o) {
  buildCounterGooglePrivacyDlpV2beta1ListRootCategoriesResponse++;
  if (buildCounterGooglePrivacyDlpV2beta1ListRootCategoriesResponse < 3) {
    checkUnnamed4496(o.categories);
  }
  buildCounterGooglePrivacyDlpV2beta1ListRootCategoriesResponse--;
}

buildUnnamed4497() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1ImageLocation>();
  o.add(buildGooglePrivacyDlpV2beta1ImageLocation());
  o.add(buildGooglePrivacyDlpV2beta1ImageLocation());
  return o;
}

checkUnnamed4497(core.List<api.GooglePrivacyDlpV2beta1ImageLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1ImageLocation(o[0]);
  checkGooglePrivacyDlpV2beta1ImageLocation(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1Location = 0;
buildGooglePrivacyDlpV2beta1Location() {
  var o = new api.GooglePrivacyDlpV2beta1Location();
  buildCounterGooglePrivacyDlpV2beta1Location++;
  if (buildCounterGooglePrivacyDlpV2beta1Location < 3) {
    o.byteRange = buildGooglePrivacyDlpV2beta1Range();
    o.codepointRange = buildGooglePrivacyDlpV2beta1Range();
    o.fieldId = buildGooglePrivacyDlpV2beta1FieldId();
    o.imageBoxes = buildUnnamed4497();
    o.recordKey = buildGooglePrivacyDlpV2beta1RecordKey();
    o.tableLocation = buildGooglePrivacyDlpV2beta1TableLocation();
  }
  buildCounterGooglePrivacyDlpV2beta1Location--;
  return o;
}

checkGooglePrivacyDlpV2beta1Location(api.GooglePrivacyDlpV2beta1Location o) {
  buildCounterGooglePrivacyDlpV2beta1Location++;
  if (buildCounterGooglePrivacyDlpV2beta1Location < 3) {
    checkGooglePrivacyDlpV2beta1Range(o.byteRange);
    checkGooglePrivacyDlpV2beta1Range(o.codepointRange);
    checkGooglePrivacyDlpV2beta1FieldId(o.fieldId);
    checkUnnamed4497(o.imageBoxes);
    checkGooglePrivacyDlpV2beta1RecordKey(o.recordKey);
    checkGooglePrivacyDlpV2beta1TableLocation(o.tableLocation);
  }
  buildCounterGooglePrivacyDlpV2beta1Location--;
}

core.int buildCounterGooglePrivacyDlpV2beta1NumericalStatsConfig = 0;
buildGooglePrivacyDlpV2beta1NumericalStatsConfig() {
  var o = new api.GooglePrivacyDlpV2beta1NumericalStatsConfig();
  buildCounterGooglePrivacyDlpV2beta1NumericalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1NumericalStatsConfig < 3) {
    o.field = buildGooglePrivacyDlpV2beta1FieldId();
  }
  buildCounterGooglePrivacyDlpV2beta1NumericalStatsConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1NumericalStatsConfig(
    api.GooglePrivacyDlpV2beta1NumericalStatsConfig o) {
  buildCounterGooglePrivacyDlpV2beta1NumericalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1NumericalStatsConfig < 3) {
    checkGooglePrivacyDlpV2beta1FieldId(o.field);
  }
  buildCounterGooglePrivacyDlpV2beta1NumericalStatsConfig--;
}

buildUnnamed4498() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1Value>();
  o.add(buildGooglePrivacyDlpV2beta1Value());
  o.add(buildGooglePrivacyDlpV2beta1Value());
  return o;
}

checkUnnamed4498(core.List<api.GooglePrivacyDlpV2beta1Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1Value(o[0]);
  checkGooglePrivacyDlpV2beta1Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1NumericalStatsResult = 0;
buildGooglePrivacyDlpV2beta1NumericalStatsResult() {
  var o = new api.GooglePrivacyDlpV2beta1NumericalStatsResult();
  buildCounterGooglePrivacyDlpV2beta1NumericalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2beta1NumericalStatsResult < 3) {
    o.maxValue = buildGooglePrivacyDlpV2beta1Value();
    o.minValue = buildGooglePrivacyDlpV2beta1Value();
    o.quantileValues = buildUnnamed4498();
  }
  buildCounterGooglePrivacyDlpV2beta1NumericalStatsResult--;
  return o;
}

checkGooglePrivacyDlpV2beta1NumericalStatsResult(
    api.GooglePrivacyDlpV2beta1NumericalStatsResult o) {
  buildCounterGooglePrivacyDlpV2beta1NumericalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2beta1NumericalStatsResult < 3) {
    checkGooglePrivacyDlpV2beta1Value(o.maxValue);
    checkGooglePrivacyDlpV2beta1Value(o.minValue);
    checkUnnamed4498(o.quantileValues);
  }
  buildCounterGooglePrivacyDlpV2beta1NumericalStatsResult--;
}

core.int buildCounterGooglePrivacyDlpV2beta1OperationConfig = 0;
buildGooglePrivacyDlpV2beta1OperationConfig() {
  var o = new api.GooglePrivacyDlpV2beta1OperationConfig();
  buildCounterGooglePrivacyDlpV2beta1OperationConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1OperationConfig < 3) {
    o.maxItemFindings = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1OperationConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1OperationConfig(
    api.GooglePrivacyDlpV2beta1OperationConfig o) {
  buildCounterGooglePrivacyDlpV2beta1OperationConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1OperationConfig < 3) {
    unittest.expect(o.maxItemFindings, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1OperationConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta1OutputStorageConfig = 0;
buildGooglePrivacyDlpV2beta1OutputStorageConfig() {
  var o = new api.GooglePrivacyDlpV2beta1OutputStorageConfig();
  buildCounterGooglePrivacyDlpV2beta1OutputStorageConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1OutputStorageConfig < 3) {
    o.storagePath = buildGooglePrivacyDlpV2beta1CloudStoragePath();
    o.table = buildGooglePrivacyDlpV2beta1BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2beta1OutputStorageConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1OutputStorageConfig(
    api.GooglePrivacyDlpV2beta1OutputStorageConfig o) {
  buildCounterGooglePrivacyDlpV2beta1OutputStorageConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1OutputStorageConfig < 3) {
    checkGooglePrivacyDlpV2beta1CloudStoragePath(o.storagePath);
    checkGooglePrivacyDlpV2beta1BigQueryTable(o.table);
  }
  buildCounterGooglePrivacyDlpV2beta1OutputStorageConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta1PartitionId = 0;
buildGooglePrivacyDlpV2beta1PartitionId() {
  var o = new api.GooglePrivacyDlpV2beta1PartitionId();
  buildCounterGooglePrivacyDlpV2beta1PartitionId++;
  if (buildCounterGooglePrivacyDlpV2beta1PartitionId < 3) {
    o.namespaceId = "foo";
    o.projectId = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1PartitionId--;
  return o;
}

checkGooglePrivacyDlpV2beta1PartitionId(
    api.GooglePrivacyDlpV2beta1PartitionId o) {
  buildCounterGooglePrivacyDlpV2beta1PartitionId++;
  if (buildCounterGooglePrivacyDlpV2beta1PartitionId < 3) {
    unittest.expect(o.namespaceId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1PartitionId--;
}

core.int buildCounterGooglePrivacyDlpV2beta1PathElement = 0;
buildGooglePrivacyDlpV2beta1PathElement() {
  var o = new api.GooglePrivacyDlpV2beta1PathElement();
  buildCounterGooglePrivacyDlpV2beta1PathElement++;
  if (buildCounterGooglePrivacyDlpV2beta1PathElement < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1PathElement--;
  return o;
}

checkGooglePrivacyDlpV2beta1PathElement(
    api.GooglePrivacyDlpV2beta1PathElement o) {
  buildCounterGooglePrivacyDlpV2beta1PathElement++;
  if (buildCounterGooglePrivacyDlpV2beta1PathElement < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1PathElement--;
}

core.int buildCounterGooglePrivacyDlpV2beta1PrimitiveTransformation = 0;
buildGooglePrivacyDlpV2beta1PrimitiveTransformation() {
  var o = new api.GooglePrivacyDlpV2beta1PrimitiveTransformation();
  buildCounterGooglePrivacyDlpV2beta1PrimitiveTransformation++;
  if (buildCounterGooglePrivacyDlpV2beta1PrimitiveTransformation < 3) {
    o.bucketingConfig = buildGooglePrivacyDlpV2beta1BucketingConfig();
    o.characterMaskConfig = buildGooglePrivacyDlpV2beta1CharacterMaskConfig();
    o.cryptoHashConfig = buildGooglePrivacyDlpV2beta1CryptoHashConfig();
    o.cryptoReplaceFfxFpeConfig =
        buildGooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig();
    o.fixedSizeBucketingConfig =
        buildGooglePrivacyDlpV2beta1FixedSizeBucketingConfig();
    o.redactConfig = buildGooglePrivacyDlpV2beta1RedactConfig();
    o.replaceConfig = buildGooglePrivacyDlpV2beta1ReplaceValueConfig();
    o.replaceWithInfoTypeConfig =
        buildGooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig();
    o.timePartConfig = buildGooglePrivacyDlpV2beta1TimePartConfig();
  }
  buildCounterGooglePrivacyDlpV2beta1PrimitiveTransformation--;
  return o;
}

checkGooglePrivacyDlpV2beta1PrimitiveTransformation(
    api.GooglePrivacyDlpV2beta1PrimitiveTransformation o) {
  buildCounterGooglePrivacyDlpV2beta1PrimitiveTransformation++;
  if (buildCounterGooglePrivacyDlpV2beta1PrimitiveTransformation < 3) {
    checkGooglePrivacyDlpV2beta1BucketingConfig(o.bucketingConfig);
    checkGooglePrivacyDlpV2beta1CharacterMaskConfig(o.characterMaskConfig);
    checkGooglePrivacyDlpV2beta1CryptoHashConfig(o.cryptoHashConfig);
    checkGooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig(
        o.cryptoReplaceFfxFpeConfig);
    checkGooglePrivacyDlpV2beta1FixedSizeBucketingConfig(
        o.fixedSizeBucketingConfig);
    checkGooglePrivacyDlpV2beta1RedactConfig(o.redactConfig);
    checkGooglePrivacyDlpV2beta1ReplaceValueConfig(o.replaceConfig);
    checkGooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig(
        o.replaceWithInfoTypeConfig);
    checkGooglePrivacyDlpV2beta1TimePartConfig(o.timePartConfig);
  }
  buildCounterGooglePrivacyDlpV2beta1PrimitiveTransformation--;
}

core.int buildCounterGooglePrivacyDlpV2beta1PrivacyMetric = 0;
buildGooglePrivacyDlpV2beta1PrivacyMetric() {
  var o = new api.GooglePrivacyDlpV2beta1PrivacyMetric();
  buildCounterGooglePrivacyDlpV2beta1PrivacyMetric++;
  if (buildCounterGooglePrivacyDlpV2beta1PrivacyMetric < 3) {
    o.categoricalStatsConfig =
        buildGooglePrivacyDlpV2beta1CategoricalStatsConfig();
    o.kAnonymityConfig = buildGooglePrivacyDlpV2beta1KAnonymityConfig();
    o.kMapEstimationConfig = buildGooglePrivacyDlpV2beta1KMapEstimationConfig();
    o.lDiversityConfig = buildGooglePrivacyDlpV2beta1LDiversityConfig();
    o.numericalStatsConfig = buildGooglePrivacyDlpV2beta1NumericalStatsConfig();
  }
  buildCounterGooglePrivacyDlpV2beta1PrivacyMetric--;
  return o;
}

checkGooglePrivacyDlpV2beta1PrivacyMetric(
    api.GooglePrivacyDlpV2beta1PrivacyMetric o) {
  buildCounterGooglePrivacyDlpV2beta1PrivacyMetric++;
  if (buildCounterGooglePrivacyDlpV2beta1PrivacyMetric < 3) {
    checkGooglePrivacyDlpV2beta1CategoricalStatsConfig(
        o.categoricalStatsConfig);
    checkGooglePrivacyDlpV2beta1KAnonymityConfig(o.kAnonymityConfig);
    checkGooglePrivacyDlpV2beta1KMapEstimationConfig(o.kMapEstimationConfig);
    checkGooglePrivacyDlpV2beta1LDiversityConfig(o.lDiversityConfig);
    checkGooglePrivacyDlpV2beta1NumericalStatsConfig(o.numericalStatsConfig);
  }
  buildCounterGooglePrivacyDlpV2beta1PrivacyMetric--;
}

core.int buildCounterGooglePrivacyDlpV2beta1Projection = 0;
buildGooglePrivacyDlpV2beta1Projection() {
  var o = new api.GooglePrivacyDlpV2beta1Projection();
  buildCounterGooglePrivacyDlpV2beta1Projection++;
  if (buildCounterGooglePrivacyDlpV2beta1Projection < 3) {
    o.property = buildGooglePrivacyDlpV2beta1PropertyReference();
  }
  buildCounterGooglePrivacyDlpV2beta1Projection--;
  return o;
}

checkGooglePrivacyDlpV2beta1Projection(
    api.GooglePrivacyDlpV2beta1Projection o) {
  buildCounterGooglePrivacyDlpV2beta1Projection++;
  if (buildCounterGooglePrivacyDlpV2beta1Projection < 3) {
    checkGooglePrivacyDlpV2beta1PropertyReference(o.property);
  }
  buildCounterGooglePrivacyDlpV2beta1Projection--;
}

core.int buildCounterGooglePrivacyDlpV2beta1PropertyReference = 0;
buildGooglePrivacyDlpV2beta1PropertyReference() {
  var o = new api.GooglePrivacyDlpV2beta1PropertyReference();
  buildCounterGooglePrivacyDlpV2beta1PropertyReference++;
  if (buildCounterGooglePrivacyDlpV2beta1PropertyReference < 3) {
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1PropertyReference--;
  return o;
}

checkGooglePrivacyDlpV2beta1PropertyReference(
    api.GooglePrivacyDlpV2beta1PropertyReference o) {
  buildCounterGooglePrivacyDlpV2beta1PropertyReference++;
  if (buildCounterGooglePrivacyDlpV2beta1PropertyReference < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1PropertyReference--;
}

core.int buildCounterGooglePrivacyDlpV2beta1QuasiIdField = 0;
buildGooglePrivacyDlpV2beta1QuasiIdField() {
  var o = new api.GooglePrivacyDlpV2beta1QuasiIdField();
  buildCounterGooglePrivacyDlpV2beta1QuasiIdField++;
  if (buildCounterGooglePrivacyDlpV2beta1QuasiIdField < 3) {
    o.customTag = "foo";
    o.field = buildGooglePrivacyDlpV2beta1FieldId();
  }
  buildCounterGooglePrivacyDlpV2beta1QuasiIdField--;
  return o;
}

checkGooglePrivacyDlpV2beta1QuasiIdField(
    api.GooglePrivacyDlpV2beta1QuasiIdField o) {
  buildCounterGooglePrivacyDlpV2beta1QuasiIdField++;
  if (buildCounterGooglePrivacyDlpV2beta1QuasiIdField < 3) {
    unittest.expect(o.customTag, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta1FieldId(o.field);
  }
  buildCounterGooglePrivacyDlpV2beta1QuasiIdField--;
}

core.int buildCounterGooglePrivacyDlpV2beta1Range = 0;
buildGooglePrivacyDlpV2beta1Range() {
  var o = new api.GooglePrivacyDlpV2beta1Range();
  buildCounterGooglePrivacyDlpV2beta1Range++;
  if (buildCounterGooglePrivacyDlpV2beta1Range < 3) {
    o.end = "foo";
    o.start = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1Range--;
  return o;
}

checkGooglePrivacyDlpV2beta1Range(api.GooglePrivacyDlpV2beta1Range o) {
  buildCounterGooglePrivacyDlpV2beta1Range++;
  if (buildCounterGooglePrivacyDlpV2beta1Range < 3) {
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1Range--;
}

core.int buildCounterGooglePrivacyDlpV2beta1RecordCondition = 0;
buildGooglePrivacyDlpV2beta1RecordCondition() {
  var o = new api.GooglePrivacyDlpV2beta1RecordCondition();
  buildCounterGooglePrivacyDlpV2beta1RecordCondition++;
  if (buildCounterGooglePrivacyDlpV2beta1RecordCondition < 3) {
    o.expressions = buildGooglePrivacyDlpV2beta1Expressions();
  }
  buildCounterGooglePrivacyDlpV2beta1RecordCondition--;
  return o;
}

checkGooglePrivacyDlpV2beta1RecordCondition(
    api.GooglePrivacyDlpV2beta1RecordCondition o) {
  buildCounterGooglePrivacyDlpV2beta1RecordCondition++;
  if (buildCounterGooglePrivacyDlpV2beta1RecordCondition < 3) {
    checkGooglePrivacyDlpV2beta1Expressions(o.expressions);
  }
  buildCounterGooglePrivacyDlpV2beta1RecordCondition--;
}

core.int buildCounterGooglePrivacyDlpV2beta1RecordKey = 0;
buildGooglePrivacyDlpV2beta1RecordKey() {
  var o = new api.GooglePrivacyDlpV2beta1RecordKey();
  buildCounterGooglePrivacyDlpV2beta1RecordKey++;
  if (buildCounterGooglePrivacyDlpV2beta1RecordKey < 3) {
    o.cloudStorageKey = buildGooglePrivacyDlpV2beta1CloudStorageKey();
    o.datastoreKey = buildGooglePrivacyDlpV2beta1DatastoreKey();
  }
  buildCounterGooglePrivacyDlpV2beta1RecordKey--;
  return o;
}

checkGooglePrivacyDlpV2beta1RecordKey(api.GooglePrivacyDlpV2beta1RecordKey o) {
  buildCounterGooglePrivacyDlpV2beta1RecordKey++;
  if (buildCounterGooglePrivacyDlpV2beta1RecordKey < 3) {
    checkGooglePrivacyDlpV2beta1CloudStorageKey(o.cloudStorageKey);
    checkGooglePrivacyDlpV2beta1DatastoreKey(o.datastoreKey);
  }
  buildCounterGooglePrivacyDlpV2beta1RecordKey--;
}

core.int buildCounterGooglePrivacyDlpV2beta1RecordSuppression = 0;
buildGooglePrivacyDlpV2beta1RecordSuppression() {
  var o = new api.GooglePrivacyDlpV2beta1RecordSuppression();
  buildCounterGooglePrivacyDlpV2beta1RecordSuppression++;
  if (buildCounterGooglePrivacyDlpV2beta1RecordSuppression < 3) {
    o.condition = buildGooglePrivacyDlpV2beta1RecordCondition();
  }
  buildCounterGooglePrivacyDlpV2beta1RecordSuppression--;
  return o;
}

checkGooglePrivacyDlpV2beta1RecordSuppression(
    api.GooglePrivacyDlpV2beta1RecordSuppression o) {
  buildCounterGooglePrivacyDlpV2beta1RecordSuppression++;
  if (buildCounterGooglePrivacyDlpV2beta1RecordSuppression < 3) {
    checkGooglePrivacyDlpV2beta1RecordCondition(o.condition);
  }
  buildCounterGooglePrivacyDlpV2beta1RecordSuppression--;
}

buildUnnamed4499() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1FieldTransformation>();
  o.add(buildGooglePrivacyDlpV2beta1FieldTransformation());
  o.add(buildGooglePrivacyDlpV2beta1FieldTransformation());
  return o;
}

checkUnnamed4499(core.List<api.GooglePrivacyDlpV2beta1FieldTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1FieldTransformation(o[0]);
  checkGooglePrivacyDlpV2beta1FieldTransformation(o[1]);
}

buildUnnamed4500() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1RecordSuppression>();
  o.add(buildGooglePrivacyDlpV2beta1RecordSuppression());
  o.add(buildGooglePrivacyDlpV2beta1RecordSuppression());
  return o;
}

checkUnnamed4500(core.List<api.GooglePrivacyDlpV2beta1RecordSuppression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1RecordSuppression(o[0]);
  checkGooglePrivacyDlpV2beta1RecordSuppression(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1RecordTransformations = 0;
buildGooglePrivacyDlpV2beta1RecordTransformations() {
  var o = new api.GooglePrivacyDlpV2beta1RecordTransformations();
  buildCounterGooglePrivacyDlpV2beta1RecordTransformations++;
  if (buildCounterGooglePrivacyDlpV2beta1RecordTransformations < 3) {
    o.fieldTransformations = buildUnnamed4499();
    o.recordSuppressions = buildUnnamed4500();
  }
  buildCounterGooglePrivacyDlpV2beta1RecordTransformations--;
  return o;
}

checkGooglePrivacyDlpV2beta1RecordTransformations(
    api.GooglePrivacyDlpV2beta1RecordTransformations o) {
  buildCounterGooglePrivacyDlpV2beta1RecordTransformations++;
  if (buildCounterGooglePrivacyDlpV2beta1RecordTransformations < 3) {
    checkUnnamed4499(o.fieldTransformations);
    checkUnnamed4500(o.recordSuppressions);
  }
  buildCounterGooglePrivacyDlpV2beta1RecordTransformations--;
}

core.int buildCounterGooglePrivacyDlpV2beta1RedactConfig = 0;
buildGooglePrivacyDlpV2beta1RedactConfig() {
  var o = new api.GooglePrivacyDlpV2beta1RedactConfig();
  buildCounterGooglePrivacyDlpV2beta1RedactConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1RedactConfig < 3) {}
  buildCounterGooglePrivacyDlpV2beta1RedactConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1RedactConfig(
    api.GooglePrivacyDlpV2beta1RedactConfig o) {
  buildCounterGooglePrivacyDlpV2beta1RedactConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1RedactConfig < 3) {}
  buildCounterGooglePrivacyDlpV2beta1RedactConfig--;
}

buildUnnamed4501() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1ImageRedactionConfig>();
  o.add(buildGooglePrivacyDlpV2beta1ImageRedactionConfig());
  o.add(buildGooglePrivacyDlpV2beta1ImageRedactionConfig());
  return o;
}

checkUnnamed4501(core.List<api.GooglePrivacyDlpV2beta1ImageRedactionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1ImageRedactionConfig(o[0]);
  checkGooglePrivacyDlpV2beta1ImageRedactionConfig(o[1]);
}

buildUnnamed4502() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1ContentItem>();
  o.add(buildGooglePrivacyDlpV2beta1ContentItem());
  o.add(buildGooglePrivacyDlpV2beta1ContentItem());
  return o;
}

checkUnnamed4502(core.List<api.GooglePrivacyDlpV2beta1ContentItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1ContentItem(o[0]);
  checkGooglePrivacyDlpV2beta1ContentItem(o[1]);
}

buildUnnamed4503() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1ReplaceConfig>();
  o.add(buildGooglePrivacyDlpV2beta1ReplaceConfig());
  o.add(buildGooglePrivacyDlpV2beta1ReplaceConfig());
  return o;
}

checkUnnamed4503(core.List<api.GooglePrivacyDlpV2beta1ReplaceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1ReplaceConfig(o[0]);
  checkGooglePrivacyDlpV2beta1ReplaceConfig(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1RedactContentRequest = 0;
buildGooglePrivacyDlpV2beta1RedactContentRequest() {
  var o = new api.GooglePrivacyDlpV2beta1RedactContentRequest();
  buildCounterGooglePrivacyDlpV2beta1RedactContentRequest++;
  if (buildCounterGooglePrivacyDlpV2beta1RedactContentRequest < 3) {
    o.imageRedactionConfigs = buildUnnamed4501();
    o.inspectConfig = buildGooglePrivacyDlpV2beta1InspectConfig();
    o.items = buildUnnamed4502();
    o.replaceConfigs = buildUnnamed4503();
  }
  buildCounterGooglePrivacyDlpV2beta1RedactContentRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta1RedactContentRequest(
    api.GooglePrivacyDlpV2beta1RedactContentRequest o) {
  buildCounterGooglePrivacyDlpV2beta1RedactContentRequest++;
  if (buildCounterGooglePrivacyDlpV2beta1RedactContentRequest < 3) {
    checkUnnamed4501(o.imageRedactionConfigs);
    checkGooglePrivacyDlpV2beta1InspectConfig(o.inspectConfig);
    checkUnnamed4502(o.items);
    checkUnnamed4503(o.replaceConfigs);
  }
  buildCounterGooglePrivacyDlpV2beta1RedactContentRequest--;
}

buildUnnamed4504() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1ContentItem>();
  o.add(buildGooglePrivacyDlpV2beta1ContentItem());
  o.add(buildGooglePrivacyDlpV2beta1ContentItem());
  return o;
}

checkUnnamed4504(core.List<api.GooglePrivacyDlpV2beta1ContentItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1ContentItem(o[0]);
  checkGooglePrivacyDlpV2beta1ContentItem(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1RedactContentResponse = 0;
buildGooglePrivacyDlpV2beta1RedactContentResponse() {
  var o = new api.GooglePrivacyDlpV2beta1RedactContentResponse();
  buildCounterGooglePrivacyDlpV2beta1RedactContentResponse++;
  if (buildCounterGooglePrivacyDlpV2beta1RedactContentResponse < 3) {
    o.items = buildUnnamed4504();
  }
  buildCounterGooglePrivacyDlpV2beta1RedactContentResponse--;
  return o;
}

checkGooglePrivacyDlpV2beta1RedactContentResponse(
    api.GooglePrivacyDlpV2beta1RedactContentResponse o) {
  buildCounterGooglePrivacyDlpV2beta1RedactContentResponse++;
  if (buildCounterGooglePrivacyDlpV2beta1RedactContentResponse < 3) {
    checkUnnamed4504(o.items);
  }
  buildCounterGooglePrivacyDlpV2beta1RedactContentResponse--;
}

core.int buildCounterGooglePrivacyDlpV2beta1ReplaceConfig = 0;
buildGooglePrivacyDlpV2beta1ReplaceConfig() {
  var o = new api.GooglePrivacyDlpV2beta1ReplaceConfig();
  buildCounterGooglePrivacyDlpV2beta1ReplaceConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1ReplaceConfig < 3) {
    o.infoType = buildGooglePrivacyDlpV2beta1InfoType();
    o.replaceWith = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1ReplaceConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1ReplaceConfig(
    api.GooglePrivacyDlpV2beta1ReplaceConfig o) {
  buildCounterGooglePrivacyDlpV2beta1ReplaceConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1ReplaceConfig < 3) {
    checkGooglePrivacyDlpV2beta1InfoType(o.infoType);
    unittest.expect(o.replaceWith, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1ReplaceConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta1ReplaceValueConfig = 0;
buildGooglePrivacyDlpV2beta1ReplaceValueConfig() {
  var o = new api.GooglePrivacyDlpV2beta1ReplaceValueConfig();
  buildCounterGooglePrivacyDlpV2beta1ReplaceValueConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1ReplaceValueConfig < 3) {
    o.newValue = buildGooglePrivacyDlpV2beta1Value();
  }
  buildCounterGooglePrivacyDlpV2beta1ReplaceValueConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1ReplaceValueConfig(
    api.GooglePrivacyDlpV2beta1ReplaceValueConfig o) {
  buildCounterGooglePrivacyDlpV2beta1ReplaceValueConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1ReplaceValueConfig < 3) {
    checkGooglePrivacyDlpV2beta1Value(o.newValue);
  }
  buildCounterGooglePrivacyDlpV2beta1ReplaceValueConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig = 0;
buildGooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig() {
  var o = new api.GooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig();
  buildCounterGooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig < 3) {}
  buildCounterGooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig(
    api.GooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig o) {
  buildCounterGooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig < 3) {}
  buildCounterGooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata = 0;
buildGooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata() {
  var o = new api.GooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata();
  buildCounterGooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata++;
  if (buildCounterGooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata < 3) {
    o.createTime = "foo";
    o.requestedPrivacyMetric = buildGooglePrivacyDlpV2beta1PrivacyMetric();
    o.requestedSourceTable = buildGooglePrivacyDlpV2beta1BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata--;
  return o;
}

checkGooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata(
    api.GooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata o) {
  buildCounterGooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata++;
  if (buildCounterGooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta1PrivacyMetric(o.requestedPrivacyMetric);
    checkGooglePrivacyDlpV2beta1BigQueryTable(o.requestedSourceTable);
  }
  buildCounterGooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata--;
}

core.int buildCounterGooglePrivacyDlpV2beta1RiskAnalysisOperationResult = 0;
buildGooglePrivacyDlpV2beta1RiskAnalysisOperationResult() {
  var o = new api.GooglePrivacyDlpV2beta1RiskAnalysisOperationResult();
  buildCounterGooglePrivacyDlpV2beta1RiskAnalysisOperationResult++;
  if (buildCounterGooglePrivacyDlpV2beta1RiskAnalysisOperationResult < 3) {
    o.categoricalStatsResult =
        buildGooglePrivacyDlpV2beta1CategoricalStatsResult();
    o.kAnonymityResult = buildGooglePrivacyDlpV2beta1KAnonymityResult();
    o.kMapEstimationResult = buildGooglePrivacyDlpV2beta1KMapEstimationResult();
    o.lDiversityResult = buildGooglePrivacyDlpV2beta1LDiversityResult();
    o.numericalStatsResult = buildGooglePrivacyDlpV2beta1NumericalStatsResult();
  }
  buildCounterGooglePrivacyDlpV2beta1RiskAnalysisOperationResult--;
  return o;
}

checkGooglePrivacyDlpV2beta1RiskAnalysisOperationResult(
    api.GooglePrivacyDlpV2beta1RiskAnalysisOperationResult o) {
  buildCounterGooglePrivacyDlpV2beta1RiskAnalysisOperationResult++;
  if (buildCounterGooglePrivacyDlpV2beta1RiskAnalysisOperationResult < 3) {
    checkGooglePrivacyDlpV2beta1CategoricalStatsResult(
        o.categoricalStatsResult);
    checkGooglePrivacyDlpV2beta1KAnonymityResult(o.kAnonymityResult);
    checkGooglePrivacyDlpV2beta1KMapEstimationResult(o.kMapEstimationResult);
    checkGooglePrivacyDlpV2beta1LDiversityResult(o.lDiversityResult);
    checkGooglePrivacyDlpV2beta1NumericalStatsResult(o.numericalStatsResult);
  }
  buildCounterGooglePrivacyDlpV2beta1RiskAnalysisOperationResult--;
}

buildUnnamed4505() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1Value>();
  o.add(buildGooglePrivacyDlpV2beta1Value());
  o.add(buildGooglePrivacyDlpV2beta1Value());
  return o;
}

checkUnnamed4505(core.List<api.GooglePrivacyDlpV2beta1Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1Value(o[0]);
  checkGooglePrivacyDlpV2beta1Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1Row = 0;
buildGooglePrivacyDlpV2beta1Row() {
  var o = new api.GooglePrivacyDlpV2beta1Row();
  buildCounterGooglePrivacyDlpV2beta1Row++;
  if (buildCounterGooglePrivacyDlpV2beta1Row < 3) {
    o.values = buildUnnamed4505();
  }
  buildCounterGooglePrivacyDlpV2beta1Row--;
  return o;
}

checkGooglePrivacyDlpV2beta1Row(api.GooglePrivacyDlpV2beta1Row o) {
  buildCounterGooglePrivacyDlpV2beta1Row++;
  if (buildCounterGooglePrivacyDlpV2beta1Row < 3) {
    checkUnnamed4505(o.values);
  }
  buildCounterGooglePrivacyDlpV2beta1Row--;
}

core.int buildCounterGooglePrivacyDlpV2beta1StorageConfig = 0;
buildGooglePrivacyDlpV2beta1StorageConfig() {
  var o = new api.GooglePrivacyDlpV2beta1StorageConfig();
  buildCounterGooglePrivacyDlpV2beta1StorageConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1StorageConfig < 3) {
    o.bigQueryOptions = buildGooglePrivacyDlpV2beta1BigQueryOptions();
    o.cloudStorageOptions = buildGooglePrivacyDlpV2beta1CloudStorageOptions();
    o.datastoreOptions = buildGooglePrivacyDlpV2beta1DatastoreOptions();
  }
  buildCounterGooglePrivacyDlpV2beta1StorageConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1StorageConfig(
    api.GooglePrivacyDlpV2beta1StorageConfig o) {
  buildCounterGooglePrivacyDlpV2beta1StorageConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1StorageConfig < 3) {
    checkGooglePrivacyDlpV2beta1BigQueryOptions(o.bigQueryOptions);
    checkGooglePrivacyDlpV2beta1CloudStorageOptions(o.cloudStorageOptions);
    checkGooglePrivacyDlpV2beta1DatastoreOptions(o.datastoreOptions);
  }
  buildCounterGooglePrivacyDlpV2beta1StorageConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta1SummaryResult = 0;
buildGooglePrivacyDlpV2beta1SummaryResult() {
  var o = new api.GooglePrivacyDlpV2beta1SummaryResult();
  buildCounterGooglePrivacyDlpV2beta1SummaryResult++;
  if (buildCounterGooglePrivacyDlpV2beta1SummaryResult < 3) {
    o.code = "foo";
    o.count = "foo";
    o.details = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1SummaryResult--;
  return o;
}

checkGooglePrivacyDlpV2beta1SummaryResult(
    api.GooglePrivacyDlpV2beta1SummaryResult o) {
  buildCounterGooglePrivacyDlpV2beta1SummaryResult++;
  if (buildCounterGooglePrivacyDlpV2beta1SummaryResult < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.details, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1SummaryResult--;
}

core.int buildCounterGooglePrivacyDlpV2beta1SurrogateType = 0;
buildGooglePrivacyDlpV2beta1SurrogateType() {
  var o = new api.GooglePrivacyDlpV2beta1SurrogateType();
  buildCounterGooglePrivacyDlpV2beta1SurrogateType++;
  if (buildCounterGooglePrivacyDlpV2beta1SurrogateType < 3) {}
  buildCounterGooglePrivacyDlpV2beta1SurrogateType--;
  return o;
}

checkGooglePrivacyDlpV2beta1SurrogateType(
    api.GooglePrivacyDlpV2beta1SurrogateType o) {
  buildCounterGooglePrivacyDlpV2beta1SurrogateType++;
  if (buildCounterGooglePrivacyDlpV2beta1SurrogateType < 3) {}
  buildCounterGooglePrivacyDlpV2beta1SurrogateType--;
}

buildUnnamed4506() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1FieldId>();
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  return o;
}

checkUnnamed4506(core.List<api.GooglePrivacyDlpV2beta1FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1FieldId(o[0]);
  checkGooglePrivacyDlpV2beta1FieldId(o[1]);
}

buildUnnamed4507() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1Row>();
  o.add(buildGooglePrivacyDlpV2beta1Row());
  o.add(buildGooglePrivacyDlpV2beta1Row());
  return o;
}

checkUnnamed4507(core.List<api.GooglePrivacyDlpV2beta1Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1Row(o[0]);
  checkGooglePrivacyDlpV2beta1Row(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1Table = 0;
buildGooglePrivacyDlpV2beta1Table() {
  var o = new api.GooglePrivacyDlpV2beta1Table();
  buildCounterGooglePrivacyDlpV2beta1Table++;
  if (buildCounterGooglePrivacyDlpV2beta1Table < 3) {
    o.headers = buildUnnamed4506();
    o.rows = buildUnnamed4507();
  }
  buildCounterGooglePrivacyDlpV2beta1Table--;
  return o;
}

checkGooglePrivacyDlpV2beta1Table(api.GooglePrivacyDlpV2beta1Table o) {
  buildCounterGooglePrivacyDlpV2beta1Table++;
  if (buildCounterGooglePrivacyDlpV2beta1Table < 3) {
    checkUnnamed4506(o.headers);
    checkUnnamed4507(o.rows);
  }
  buildCounterGooglePrivacyDlpV2beta1Table--;
}

core.int buildCounterGooglePrivacyDlpV2beta1TableLocation = 0;
buildGooglePrivacyDlpV2beta1TableLocation() {
  var o = new api.GooglePrivacyDlpV2beta1TableLocation();
  buildCounterGooglePrivacyDlpV2beta1TableLocation++;
  if (buildCounterGooglePrivacyDlpV2beta1TableLocation < 3) {
    o.rowIndex = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1TableLocation--;
  return o;
}

checkGooglePrivacyDlpV2beta1TableLocation(
    api.GooglePrivacyDlpV2beta1TableLocation o) {
  buildCounterGooglePrivacyDlpV2beta1TableLocation++;
  if (buildCounterGooglePrivacyDlpV2beta1TableLocation < 3) {
    unittest.expect(o.rowIndex, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1TableLocation--;
}

core.int buildCounterGooglePrivacyDlpV2beta1TaggedField = 0;
buildGooglePrivacyDlpV2beta1TaggedField() {
  var o = new api.GooglePrivacyDlpV2beta1TaggedField();
  buildCounterGooglePrivacyDlpV2beta1TaggedField++;
  if (buildCounterGooglePrivacyDlpV2beta1TaggedField < 3) {
    o.customTag = "foo";
    o.field = buildGooglePrivacyDlpV2beta1FieldId();
    o.inferred = buildGoogleProtobufEmpty();
    o.infoType = buildGooglePrivacyDlpV2beta1InfoType();
  }
  buildCounterGooglePrivacyDlpV2beta1TaggedField--;
  return o;
}

checkGooglePrivacyDlpV2beta1TaggedField(
    api.GooglePrivacyDlpV2beta1TaggedField o) {
  buildCounterGooglePrivacyDlpV2beta1TaggedField++;
  if (buildCounterGooglePrivacyDlpV2beta1TaggedField < 3) {
    unittest.expect(o.customTag, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta1FieldId(o.field);
    checkGoogleProtobufEmpty(o.inferred);
    checkGooglePrivacyDlpV2beta1InfoType(o.infoType);
  }
  buildCounterGooglePrivacyDlpV2beta1TaggedField--;
}

core.int buildCounterGooglePrivacyDlpV2beta1TimePartConfig = 0;
buildGooglePrivacyDlpV2beta1TimePartConfig() {
  var o = new api.GooglePrivacyDlpV2beta1TimePartConfig();
  buildCounterGooglePrivacyDlpV2beta1TimePartConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1TimePartConfig < 3) {
    o.partToExtract = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1TimePartConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1TimePartConfig(
    api.GooglePrivacyDlpV2beta1TimePartConfig o) {
  buildCounterGooglePrivacyDlpV2beta1TimePartConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1TimePartConfig < 3) {
    unittest.expect(o.partToExtract, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1TimePartConfig--;
}

buildUnnamed4508() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1FieldTransformation>();
  o.add(buildGooglePrivacyDlpV2beta1FieldTransformation());
  o.add(buildGooglePrivacyDlpV2beta1FieldTransformation());
  return o;
}

checkUnnamed4508(core.List<api.GooglePrivacyDlpV2beta1FieldTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1FieldTransformation(o[0]);
  checkGooglePrivacyDlpV2beta1FieldTransformation(o[1]);
}

buildUnnamed4509() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1SummaryResult>();
  o.add(buildGooglePrivacyDlpV2beta1SummaryResult());
  o.add(buildGooglePrivacyDlpV2beta1SummaryResult());
  return o;
}

checkUnnamed4509(core.List<api.GooglePrivacyDlpV2beta1SummaryResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1SummaryResult(o[0]);
  checkGooglePrivacyDlpV2beta1SummaryResult(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1TransformationSummary = 0;
buildGooglePrivacyDlpV2beta1TransformationSummary() {
  var o = new api.GooglePrivacyDlpV2beta1TransformationSummary();
  buildCounterGooglePrivacyDlpV2beta1TransformationSummary++;
  if (buildCounterGooglePrivacyDlpV2beta1TransformationSummary < 3) {
    o.field = buildGooglePrivacyDlpV2beta1FieldId();
    o.fieldTransformations = buildUnnamed4508();
    o.infoType = buildGooglePrivacyDlpV2beta1InfoType();
    o.recordSuppress = buildGooglePrivacyDlpV2beta1RecordSuppression();
    o.results = buildUnnamed4509();
    o.transformation = buildGooglePrivacyDlpV2beta1PrimitiveTransformation();
    o.transformedBytes = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1TransformationSummary--;
  return o;
}

checkGooglePrivacyDlpV2beta1TransformationSummary(
    api.GooglePrivacyDlpV2beta1TransformationSummary o) {
  buildCounterGooglePrivacyDlpV2beta1TransformationSummary++;
  if (buildCounterGooglePrivacyDlpV2beta1TransformationSummary < 3) {
    checkGooglePrivacyDlpV2beta1FieldId(o.field);
    checkUnnamed4508(o.fieldTransformations);
    checkGooglePrivacyDlpV2beta1InfoType(o.infoType);
    checkGooglePrivacyDlpV2beta1RecordSuppression(o.recordSuppress);
    checkUnnamed4509(o.results);
    checkGooglePrivacyDlpV2beta1PrimitiveTransformation(o.transformation);
    unittest.expect(o.transformedBytes, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1TransformationSummary--;
}

core.int buildCounterGooglePrivacyDlpV2beta1TransientCryptoKey = 0;
buildGooglePrivacyDlpV2beta1TransientCryptoKey() {
  var o = new api.GooglePrivacyDlpV2beta1TransientCryptoKey();
  buildCounterGooglePrivacyDlpV2beta1TransientCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta1TransientCryptoKey < 3) {
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1TransientCryptoKey--;
  return o;
}

checkGooglePrivacyDlpV2beta1TransientCryptoKey(
    api.GooglePrivacyDlpV2beta1TransientCryptoKey o) {
  buildCounterGooglePrivacyDlpV2beta1TransientCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta1TransientCryptoKey < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1TransientCryptoKey--;
}

core.int buildCounterGooglePrivacyDlpV2beta1UnwrappedCryptoKey = 0;
buildGooglePrivacyDlpV2beta1UnwrappedCryptoKey() {
  var o = new api.GooglePrivacyDlpV2beta1UnwrappedCryptoKey();
  buildCounterGooglePrivacyDlpV2beta1UnwrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta1UnwrappedCryptoKey < 3) {
    o.key = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1UnwrappedCryptoKey--;
  return o;
}

checkGooglePrivacyDlpV2beta1UnwrappedCryptoKey(
    api.GooglePrivacyDlpV2beta1UnwrappedCryptoKey o) {
  buildCounterGooglePrivacyDlpV2beta1UnwrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta1UnwrappedCryptoKey < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1UnwrappedCryptoKey--;
}

core.int buildCounterGooglePrivacyDlpV2beta1Value = 0;
buildGooglePrivacyDlpV2beta1Value() {
  var o = new api.GooglePrivacyDlpV2beta1Value();
  buildCounterGooglePrivacyDlpV2beta1Value++;
  if (buildCounterGooglePrivacyDlpV2beta1Value < 3) {
    o.booleanValue = true;
    o.dateValue = buildGoogleTypeDate();
    o.floatValue = 42.0;
    o.integerValue = "foo";
    o.stringValue = "foo";
    o.timeValue = buildGoogleTypeTimeOfDay();
    o.timestampValue = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1Value--;
  return o;
}

checkGooglePrivacyDlpV2beta1Value(api.GooglePrivacyDlpV2beta1Value o) {
  buildCounterGooglePrivacyDlpV2beta1Value++;
  if (buildCounterGooglePrivacyDlpV2beta1Value < 3) {
    unittest.expect(o.booleanValue, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue);
    unittest.expect(o.floatValue, unittest.equals(42.0));
    unittest.expect(o.integerValue, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
    checkGoogleTypeTimeOfDay(o.timeValue);
    unittest.expect(o.timestampValue, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1Value--;
}

core.int buildCounterGooglePrivacyDlpV2beta1ValueFrequency = 0;
buildGooglePrivacyDlpV2beta1ValueFrequency() {
  var o = new api.GooglePrivacyDlpV2beta1ValueFrequency();
  buildCounterGooglePrivacyDlpV2beta1ValueFrequency++;
  if (buildCounterGooglePrivacyDlpV2beta1ValueFrequency < 3) {
    o.count = "foo";
    o.value = buildGooglePrivacyDlpV2beta1Value();
  }
  buildCounterGooglePrivacyDlpV2beta1ValueFrequency--;
  return o;
}

checkGooglePrivacyDlpV2beta1ValueFrequency(
    api.GooglePrivacyDlpV2beta1ValueFrequency o) {
  buildCounterGooglePrivacyDlpV2beta1ValueFrequency++;
  if (buildCounterGooglePrivacyDlpV2beta1ValueFrequency < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta1Value(o.value);
  }
  buildCounterGooglePrivacyDlpV2beta1ValueFrequency--;
}

buildUnnamed4510() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4510(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2beta1WordList = 0;
buildGooglePrivacyDlpV2beta1WordList() {
  var o = new api.GooglePrivacyDlpV2beta1WordList();
  buildCounterGooglePrivacyDlpV2beta1WordList++;
  if (buildCounterGooglePrivacyDlpV2beta1WordList < 3) {
    o.words = buildUnnamed4510();
  }
  buildCounterGooglePrivacyDlpV2beta1WordList--;
  return o;
}

checkGooglePrivacyDlpV2beta1WordList(api.GooglePrivacyDlpV2beta1WordList o) {
  buildCounterGooglePrivacyDlpV2beta1WordList++;
  if (buildCounterGooglePrivacyDlpV2beta1WordList < 3) {
    checkUnnamed4510(o.words);
  }
  buildCounterGooglePrivacyDlpV2beta1WordList--;
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

buildUnnamed4511() {
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

checkUnnamed4511(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed4512() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4511());
  o.add(buildUnnamed4511());
  return o;
}

checkUnnamed4512(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4511(o[0]);
  checkUnnamed4511(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4512();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4512(o.details);
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
  unittest.group("obj-schema-GoogleLongrunningCancelOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningCancelOperationRequest();
      var od =
          new api.GoogleLongrunningCancelOperationRequest.fromJson(o.toJson());
      checkGoogleLongrunningCancelOperationRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od =
          new api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningOperation();
      var od = new api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest();
      var od =
          new api.GooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1AuxiliaryTable", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1AuxiliaryTable();
      var od =
          new api.GooglePrivacyDlpV2beta1AuxiliaryTable.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1AuxiliaryTable(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1BigQueryOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1BigQueryOptions();
      var od =
          new api.GooglePrivacyDlpV2beta1BigQueryOptions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1BigQueryOptions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1BigQueryTable", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1BigQueryTable();
      var od =
          new api.GooglePrivacyDlpV2beta1BigQueryTable.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1BigQueryTable(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1Bucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1Bucket();
      var od = new api.GooglePrivacyDlpV2beta1Bucket.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1Bucket(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1BucketingConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1BucketingConfig();
      var od =
          new api.GooglePrivacyDlpV2beta1BucketingConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1BucketingConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1CategoricalStatsConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1CategoricalStatsConfig();
      var od = new api.GooglePrivacyDlpV2beta1CategoricalStatsConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1CategoricalStatsConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket();
      var od = new api
              .GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1CategoricalStatsResult",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1CategoricalStatsResult();
      var od = new api.GooglePrivacyDlpV2beta1CategoricalStatsResult.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1CategoricalStatsResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1CategoryDescription", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1CategoryDescription();
      var od = new api.GooglePrivacyDlpV2beta1CategoryDescription.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1CategoryDescription(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1CharacterMaskConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1CharacterMaskConfig();
      var od = new api.GooglePrivacyDlpV2beta1CharacterMaskConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1CharacterMaskConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1CharsToIgnore", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1CharsToIgnore();
      var od =
          new api.GooglePrivacyDlpV2beta1CharsToIgnore.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1CharsToIgnore(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1CloudStorageKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1CloudStorageKey();
      var od =
          new api.GooglePrivacyDlpV2beta1CloudStorageKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1CloudStorageKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1CloudStorageOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1CloudStorageOptions();
      var od = new api.GooglePrivacyDlpV2beta1CloudStorageOptions.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1CloudStorageOptions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1CloudStoragePath", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1CloudStoragePath();
      var od =
          new api.GooglePrivacyDlpV2beta1CloudStoragePath.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1CloudStoragePath(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1Color", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1Color();
      var od = new api.GooglePrivacyDlpV2beta1Color.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1Color(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1Condition", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1Condition();
      var od = new api.GooglePrivacyDlpV2beta1Condition.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1Condition(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1Conditions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1Conditions();
      var od = new api.GooglePrivacyDlpV2beta1Conditions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1Conditions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1ContentItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1ContentItem();
      var od = new api.GooglePrivacyDlpV2beta1ContentItem.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1ContentItem(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta1CreateInspectOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1CreateInspectOperationRequest();
      var od =
          new api.GooglePrivacyDlpV2beta1CreateInspectOperationRequest.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta1CreateInspectOperationRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1CryptoHashConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1CryptoHashConfig();
      var od =
          new api.GooglePrivacyDlpV2beta1CryptoHashConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1CryptoHashConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1CryptoKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1CryptoKey();
      var od = new api.GooglePrivacyDlpV2beta1CryptoKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1CryptoKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig();
      var od =
          new api.GooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1CustomInfoType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1CustomInfoType();
      var od =
          new api.GooglePrivacyDlpV2beta1CustomInfoType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1CustomInfoType(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1DatastoreKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1DatastoreKey();
      var od = new api.GooglePrivacyDlpV2beta1DatastoreKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1DatastoreKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1DatastoreOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1DatastoreOptions();
      var od =
          new api.GooglePrivacyDlpV2beta1DatastoreOptions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1DatastoreOptions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1DeidentificationSummary",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1DeidentificationSummary();
      var od = new api.GooglePrivacyDlpV2beta1DeidentificationSummary.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1DeidentificationSummary(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1DeidentifyConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1DeidentifyConfig();
      var od =
          new api.GooglePrivacyDlpV2beta1DeidentifyConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1DeidentifyConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1DeidentifyContentRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1DeidentifyContentRequest();
      var od = new api.GooglePrivacyDlpV2beta1DeidentifyContentRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1DeidentifyContentRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1DeidentifyContentResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1DeidentifyContentResponse();
      var od =
          new api.GooglePrivacyDlpV2beta1DeidentifyContentResponse.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta1DeidentifyContentResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1Dictionary", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1Dictionary();
      var od = new api.GooglePrivacyDlpV2beta1Dictionary.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1Dictionary(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1EntityId", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1EntityId();
      var od = new api.GooglePrivacyDlpV2beta1EntityId.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1EntityId(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1Expressions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1Expressions();
      var od = new api.GooglePrivacyDlpV2beta1Expressions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1Expressions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1FieldId", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1FieldId();
      var od = new api.GooglePrivacyDlpV2beta1FieldId.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1FieldId(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1FieldTransformation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1FieldTransformation();
      var od = new api.GooglePrivacyDlpV2beta1FieldTransformation.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1FieldTransformation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1FileSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1FileSet();
      var od = new api.GooglePrivacyDlpV2beta1FileSet.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1FileSet(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1Finding", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1Finding();
      var od = new api.GooglePrivacyDlpV2beta1Finding.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1Finding(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1FixedSizeBucketingConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1FixedSizeBucketingConfig();
      var od = new api.GooglePrivacyDlpV2beta1FixedSizeBucketingConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1FixedSizeBucketingConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1ImageLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1ImageLocation();
      var od =
          new api.GooglePrivacyDlpV2beta1ImageLocation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1ImageLocation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1ImageRedactionConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1ImageRedactionConfig();
      var od = new api.GooglePrivacyDlpV2beta1ImageRedactionConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1ImageRedactionConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1InfoType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1InfoType();
      var od = new api.GooglePrivacyDlpV2beta1InfoType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1InfoType(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1InfoTypeDescription", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1InfoTypeDescription();
      var od = new api.GooglePrivacyDlpV2beta1InfoTypeDescription.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1InfoTypeDescription(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1InfoTypeLimit", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1InfoTypeLimit();
      var od =
          new api.GooglePrivacyDlpV2beta1InfoTypeLimit.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1InfoTypeLimit(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1InfoTypeStatistics", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1InfoTypeStatistics();
      var od = new api.GooglePrivacyDlpV2beta1InfoTypeStatistics.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1InfoTypeStatistics(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1InfoTypeTransformation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1InfoTypeTransformation();
      var od = new api.GooglePrivacyDlpV2beta1InfoTypeTransformation.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1InfoTypeTransformation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1InfoTypeTransformations",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1InfoTypeTransformations();
      var od = new api.GooglePrivacyDlpV2beta1InfoTypeTransformations.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1InfoTypeTransformations(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1InspectConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1InspectConfig();
      var od =
          new api.GooglePrivacyDlpV2beta1InspectConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1InspectConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1InspectContentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1InspectContentRequest();
      var od = new api.GooglePrivacyDlpV2beta1InspectContentRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1InspectContentRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1InspectContentResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1InspectContentResponse();
      var od = new api.GooglePrivacyDlpV2beta1InspectContentResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1InspectContentResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1InspectOperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1InspectOperationMetadata();
      var od = new api.GooglePrivacyDlpV2beta1InspectOperationMetadata.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1InspectOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1InspectOperationResult",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1InspectOperationResult();
      var od = new api.GooglePrivacyDlpV2beta1InspectOperationResult.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1InspectOperationResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1InspectResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1InspectResult();
      var od =
          new api.GooglePrivacyDlpV2beta1InspectResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1InspectResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1KAnonymityConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1KAnonymityConfig();
      var od =
          new api.GooglePrivacyDlpV2beta1KAnonymityConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1KAnonymityConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass();
      var od =
          new api.GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1KAnonymityHistogramBucket",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1KAnonymityHistogramBucket();
      var od =
          new api.GooglePrivacyDlpV2beta1KAnonymityHistogramBucket.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta1KAnonymityHistogramBucket(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1KAnonymityResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1KAnonymityResult();
      var od =
          new api.GooglePrivacyDlpV2beta1KAnonymityResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1KAnonymityResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1KMapEstimationConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1KMapEstimationConfig();
      var od = new api.GooglePrivacyDlpV2beta1KMapEstimationConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1KMapEstimationConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket();
      var od =
          new api.GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues();
      var od =
          new api.GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1KMapEstimationResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1KMapEstimationResult();
      var od = new api.GooglePrivacyDlpV2beta1KMapEstimationResult.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1KMapEstimationResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1Key", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1Key();
      var od = new api.GooglePrivacyDlpV2beta1Key.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1Key(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1KindExpression", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1KindExpression();
      var od =
          new api.GooglePrivacyDlpV2beta1KindExpression.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1KindExpression(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1KmsWrappedCryptoKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1KmsWrappedCryptoKey();
      var od = new api.GooglePrivacyDlpV2beta1KmsWrappedCryptoKey.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1KmsWrappedCryptoKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1LDiversityConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1LDiversityConfig();
      var od =
          new api.GooglePrivacyDlpV2beta1LDiversityConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1LDiversityConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1LDiversityEquivalenceClass",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1LDiversityEquivalenceClass();
      var od =
          new api.GooglePrivacyDlpV2beta1LDiversityEquivalenceClass.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta1LDiversityEquivalenceClass(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1LDiversityHistogramBucket",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1LDiversityHistogramBucket();
      var od =
          new api.GooglePrivacyDlpV2beta1LDiversityHistogramBucket.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta1LDiversityHistogramBucket(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1LDiversityResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1LDiversityResult();
      var od =
          new api.GooglePrivacyDlpV2beta1LDiversityResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1LDiversityResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1ListInfoTypesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1ListInfoTypesResponse();
      var od = new api.GooglePrivacyDlpV2beta1ListInfoTypesResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1ListInfoTypesResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta1ListInspectFindingsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1ListInspectFindingsResponse();
      var od =
          new api.GooglePrivacyDlpV2beta1ListInspectFindingsResponse.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta1ListInspectFindingsResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1ListRootCategoriesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1ListRootCategoriesResponse();
      var od =
          new api.GooglePrivacyDlpV2beta1ListRootCategoriesResponse.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta1ListRootCategoriesResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1Location();
      var od = new api.GooglePrivacyDlpV2beta1Location.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1Location(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1NumericalStatsConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1NumericalStatsConfig();
      var od = new api.GooglePrivacyDlpV2beta1NumericalStatsConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1NumericalStatsConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1NumericalStatsResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1NumericalStatsResult();
      var od = new api.GooglePrivacyDlpV2beta1NumericalStatsResult.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1NumericalStatsResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1OperationConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1OperationConfig();
      var od =
          new api.GooglePrivacyDlpV2beta1OperationConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1OperationConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1OutputStorageConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1OutputStorageConfig();
      var od = new api.GooglePrivacyDlpV2beta1OutputStorageConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1OutputStorageConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1PartitionId", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1PartitionId();
      var od = new api.GooglePrivacyDlpV2beta1PartitionId.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1PartitionId(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1PathElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1PathElement();
      var od = new api.GooglePrivacyDlpV2beta1PathElement.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1PathElement(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1PrimitiveTransformation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1PrimitiveTransformation();
      var od = new api.GooglePrivacyDlpV2beta1PrimitiveTransformation.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1PrimitiveTransformation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1PrivacyMetric", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1PrivacyMetric();
      var od =
          new api.GooglePrivacyDlpV2beta1PrivacyMetric.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1PrivacyMetric(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1Projection", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1Projection();
      var od = new api.GooglePrivacyDlpV2beta1Projection.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1Projection(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1PropertyReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1PropertyReference();
      var od =
          new api.GooglePrivacyDlpV2beta1PropertyReference.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1PropertyReference(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1QuasiIdField", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1QuasiIdField();
      var od = new api.GooglePrivacyDlpV2beta1QuasiIdField.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1QuasiIdField(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1Range", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1Range();
      var od = new api.GooglePrivacyDlpV2beta1Range.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1Range(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1RecordCondition", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1RecordCondition();
      var od =
          new api.GooglePrivacyDlpV2beta1RecordCondition.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1RecordCondition(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1RecordKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1RecordKey();
      var od = new api.GooglePrivacyDlpV2beta1RecordKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1RecordKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1RecordSuppression", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1RecordSuppression();
      var od =
          new api.GooglePrivacyDlpV2beta1RecordSuppression.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1RecordSuppression(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1RecordTransformations", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1RecordTransformations();
      var od = new api.GooglePrivacyDlpV2beta1RecordTransformations.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1RecordTransformations(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1RedactConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1RedactConfig();
      var od = new api.GooglePrivacyDlpV2beta1RedactConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1RedactConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1RedactContentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1RedactContentRequest();
      var od = new api.GooglePrivacyDlpV2beta1RedactContentRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1RedactContentRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1RedactContentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1RedactContentResponse();
      var od = new api.GooglePrivacyDlpV2beta1RedactContentResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1RedactContentResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1ReplaceConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1ReplaceConfig();
      var od =
          new api.GooglePrivacyDlpV2beta1ReplaceConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1ReplaceConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1ReplaceValueConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1ReplaceValueConfig();
      var od = new api.GooglePrivacyDlpV2beta1ReplaceValueConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1ReplaceValueConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig();
      var od =
          new api.GooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata();
      var od =
          new api.GooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta1RiskAnalysisOperationResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1RiskAnalysisOperationResult();
      var od =
          new api.GooglePrivacyDlpV2beta1RiskAnalysisOperationResult.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta1RiskAnalysisOperationResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1Row", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1Row();
      var od = new api.GooglePrivacyDlpV2beta1Row.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1Row(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1StorageConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1StorageConfig();
      var od =
          new api.GooglePrivacyDlpV2beta1StorageConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1StorageConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1SummaryResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1SummaryResult();
      var od =
          new api.GooglePrivacyDlpV2beta1SummaryResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1SummaryResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1SurrogateType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1SurrogateType();
      var od =
          new api.GooglePrivacyDlpV2beta1SurrogateType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1SurrogateType(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1Table", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1Table();
      var od = new api.GooglePrivacyDlpV2beta1Table.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1Table(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1TableLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1TableLocation();
      var od =
          new api.GooglePrivacyDlpV2beta1TableLocation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1TableLocation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1TaggedField", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1TaggedField();
      var od = new api.GooglePrivacyDlpV2beta1TaggedField.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1TaggedField(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1TimePartConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1TimePartConfig();
      var od =
          new api.GooglePrivacyDlpV2beta1TimePartConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1TimePartConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1TransformationSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1TransformationSummary();
      var od = new api.GooglePrivacyDlpV2beta1TransformationSummary.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1TransformationSummary(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1TransientCryptoKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1TransientCryptoKey();
      var od = new api.GooglePrivacyDlpV2beta1TransientCryptoKey.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1TransientCryptoKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1UnwrappedCryptoKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1UnwrappedCryptoKey();
      var od = new api.GooglePrivacyDlpV2beta1UnwrappedCryptoKey.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta1UnwrappedCryptoKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1Value", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1Value();
      var od = new api.GooglePrivacyDlpV2beta1Value.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1Value(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1ValueFrequency", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1ValueFrequency();
      var od =
          new api.GooglePrivacyDlpV2beta1ValueFrequency.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1ValueFrequency(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1WordList", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1WordList();
      var od = new api.GooglePrivacyDlpV2beta1WordList.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1WordList(od);
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

  unittest.group("resource-ContentResourceApi", () {
    unittest.test("method--deidentify", () {
      var mock = new HttpServerMock();
      api.ContentResourceApi res = new api.DlpApi(mock).content;
      var arg_request = buildGooglePrivacyDlpV2beta1DeidentifyContentRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2beta1DeidentifyContentRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2beta1DeidentifyContentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("v2beta1/content:deidentify"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta1DeidentifyContentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.deidentify(arg_request, $fields: arg_$fields).then(unittest
          .expectAsync1(
              ((api.GooglePrivacyDlpV2beta1DeidentifyContentResponse response) {
        checkGooglePrivacyDlpV2beta1DeidentifyContentResponse(response);
      })));
    });

    unittest.test("method--inspect", () {
      var mock = new HttpServerMock();
      api.ContentResourceApi res = new api.DlpApi(mock).content;
      var arg_request = buildGooglePrivacyDlpV2beta1InspectContentRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2beta1InspectContentRequest.fromJson(json);
        checkGooglePrivacyDlpV2beta1InspectContentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("v2beta1/content:inspect"));
        pathOffset += 23;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta1InspectContentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.inspect(arg_request, $fields: arg_$fields).then(unittest.expectAsync1(
          ((api.GooglePrivacyDlpV2beta1InspectContentResponse response) {
        checkGooglePrivacyDlpV2beta1InspectContentResponse(response);
      })));
    });

    unittest.test("method--redact", () {
      var mock = new HttpServerMock();
      api.ContentResourceApi res = new api.DlpApi(mock).content;
      var arg_request = buildGooglePrivacyDlpV2beta1RedactContentRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2beta1RedactContentRequest.fromJson(json);
        checkGooglePrivacyDlpV2beta1RedactContentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v2beta1/content:redact"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta1RedactContentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.redact(arg_request, $fields: arg_$fields).then(unittest.expectAsync1(
          ((api.GooglePrivacyDlpV2beta1RedactContentResponse response) {
        checkGooglePrivacyDlpV2beta1RedactContentResponse(response);
      })));
    });
  });

  unittest.group("resource-DataSourceResourceApi", () {
    unittest.test("method--analyze", () {
      var mock = new HttpServerMock();
      api.DataSourceResourceApi res = new api.DlpApi(mock).dataSource;
      var arg_request =
          buildGooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
            .GooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest.fromJson(json);
        checkGooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("v2beta1/dataSource:analyze"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.analyze(arg_request, $fields: arg_$fields).then(
          unittest.expectAsync1(((api.GoogleLongrunningOperation response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });

  unittest.group("resource-InspectOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.InspectOperationsResourceApi res =
          new api.DlpApi(mock).inspect.operations;
      var arg_request = buildGoogleLongrunningCancelOperationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleLongrunningCancelOperationRequest.fromJson(json);
        checkGoogleLongrunningCancelOperationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.GoogleProtobufEmpty response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.InspectOperationsResourceApi res =
          new api.DlpApi(mock).inspect.operations;
      var arg_request =
          buildGooglePrivacyDlpV2beta1CreateInspectOperationRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GooglePrivacyDlpV2beta1CreateInspectOperationRequest.fromJson(
            json);
        checkGooglePrivacyDlpV2beta1CreateInspectOperationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("v2beta1/inspect/operations"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, $fields: arg_$fields).then(
          unittest.expectAsync1(((api.GoogleLongrunningOperation response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.InspectOperationsResourceApi res =
          new api.DlpApi(mock).inspect.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.GoogleProtobufEmpty response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.InspectOperationsResourceApi res =
          new api.DlpApi(mock).inspect.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name, $fields: arg_$fields).then(
          unittest.expectAsync1(((api.GoogleLongrunningOperation response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.InspectOperationsResourceApi res =
          new api.DlpApi(mock).inspect.operations;
      var arg_name = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.JSON.encode(buildGoogleLongrunningListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(
              ((api.GoogleLongrunningListOperationsResponse response) {
        checkGoogleLongrunningListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-InspectResultsFindingsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.InspectResultsFindingsResourceApi res =
          new api.DlpApi(mock).inspect.results.findings;
      var arg_name = "foo";
      var arg_filter = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta1ListInspectFindingsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(
              ((api.GooglePrivacyDlpV2beta1ListInspectFindingsResponse
                  response) {
        checkGooglePrivacyDlpV2beta1ListInspectFindingsResponse(response);
      })));
    });
  });

  unittest.group("resource-RiskAnalysisOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.RiskAnalysisOperationsResourceApi res =
          new api.DlpApi(mock).riskAnalysis.operations;
      var arg_request = buildGoogleLongrunningCancelOperationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleLongrunningCancelOperationRequest.fromJson(json);
        checkGoogleLongrunningCancelOperationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.GoogleProtobufEmpty response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.RiskAnalysisOperationsResourceApi res =
          new api.DlpApi(mock).riskAnalysis.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.GoogleProtobufEmpty response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RiskAnalysisOperationsResourceApi res =
          new api.DlpApi(mock).riskAnalysis.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name, $fields: arg_$fields).then(
          unittest.expectAsync1(((api.GoogleLongrunningOperation response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RiskAnalysisOperationsResourceApi res =
          new api.DlpApi(mock).riskAnalysis.operations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.JSON.encode(buildGoogleLongrunningListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(
              ((api.GoogleLongrunningListOperationsResponse response) {
        checkGoogleLongrunningListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-RootCategoriesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RootCategoriesResourceApi res = new api.DlpApi(mock).rootCategories;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v2beta1/rootCategories"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta1ListRootCategoriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(languageCode: arg_languageCode, $fields: arg_$fields).then(
          unittest.expectAsync1(
              ((api.GooglePrivacyDlpV2beta1ListRootCategoriesResponse
                  response) {
        checkGooglePrivacyDlpV2beta1ListRootCategoriesResponse(response);
      })));
    });
  });

  unittest.group("resource-RootCategoriesInfoTypesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RootCategoriesInfoTypesResourceApi res =
          new api.DlpApi(mock).rootCategories.infoTypes;
      var arg_category = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("v2beta1/rootCategories/"));
        pathOffset += 23;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta1ListInfoTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_category,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(
              ((api.GooglePrivacyDlpV2beta1ListInfoTypesResponse response) {
        checkGooglePrivacyDlpV2beta1ListInfoTypesResponse(response);
      })));
    });
  });
}
