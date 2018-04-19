library googleapis_beta.dlp.v2beta2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/dlp/v2beta2.dart' as api;

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

buildUnnamed4041() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1QuasiIdField>();
  o.add(buildGooglePrivacyDlpV2beta1QuasiIdField());
  o.add(buildGooglePrivacyDlpV2beta1QuasiIdField());
  return o;
}

checkUnnamed4041(core.List<api.GooglePrivacyDlpV2beta1QuasiIdField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1QuasiIdField(o[0]);
  checkGooglePrivacyDlpV2beta1QuasiIdField(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1AuxiliaryTable = 0;
buildGooglePrivacyDlpV2beta1AuxiliaryTable() {
  var o = new api.GooglePrivacyDlpV2beta1AuxiliaryTable();
  buildCounterGooglePrivacyDlpV2beta1AuxiliaryTable++;
  if (buildCounterGooglePrivacyDlpV2beta1AuxiliaryTable < 3) {
    o.quasiIds = buildUnnamed4041();
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
    checkUnnamed4041(o.quasiIds);
    checkGooglePrivacyDlpV2beta1FieldId(o.relativeFrequency);
    checkGooglePrivacyDlpV2beta1BigQueryTable(o.table);
  }
  buildCounterGooglePrivacyDlpV2beta1AuxiliaryTable--;
}

buildUnnamed4042() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1FieldId>();
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  return o;
}

checkUnnamed4042(core.List<api.GooglePrivacyDlpV2beta1FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1FieldId(o[0]);
  checkGooglePrivacyDlpV2beta1FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1BigQueryOptions = 0;
buildGooglePrivacyDlpV2beta1BigQueryOptions() {
  var o = new api.GooglePrivacyDlpV2beta1BigQueryOptions();
  buildCounterGooglePrivacyDlpV2beta1BigQueryOptions++;
  if (buildCounterGooglePrivacyDlpV2beta1BigQueryOptions < 3) {
    o.identifyingFields = buildUnnamed4042();
    o.tableReference = buildGooglePrivacyDlpV2beta1BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2beta1BigQueryOptions--;
  return o;
}

checkGooglePrivacyDlpV2beta1BigQueryOptions(
    api.GooglePrivacyDlpV2beta1BigQueryOptions o) {
  buildCounterGooglePrivacyDlpV2beta1BigQueryOptions++;
  if (buildCounterGooglePrivacyDlpV2beta1BigQueryOptions < 3) {
    checkUnnamed4042(o.identifyingFields);
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

buildUnnamed4043() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1ValueFrequency>();
  o.add(buildGooglePrivacyDlpV2beta1ValueFrequency());
  o.add(buildGooglePrivacyDlpV2beta1ValueFrequency());
  return o;
}

checkUnnamed4043(core.List<api.GooglePrivacyDlpV2beta1ValueFrequency> o) {
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
    o.bucketValues = buildUnnamed4043();
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
    checkUnnamed4043(o.bucketValues);
    unittest.expect(o.valueFrequencyLowerBound, unittest.equals('foo'));
    unittest.expect(o.valueFrequencyUpperBound, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket--;
}

buildUnnamed4044() {
  var o = new core
      .List<api.GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket());
  o.add(buildGooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket());
  return o;
}

checkUnnamed4044(
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
    o.valueFrequencyHistogramBuckets = buildUnnamed4044();
  }
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsResult--;
  return o;
}

checkGooglePrivacyDlpV2beta1CategoricalStatsResult(
    api.GooglePrivacyDlpV2beta1CategoricalStatsResult o) {
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2beta1CategoricalStatsResult < 3) {
    checkUnnamed4044(o.valueFrequencyHistogramBuckets);
  }
  buildCounterGooglePrivacyDlpV2beta1CategoricalStatsResult--;
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

buildUnnamed4045() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1Projection>();
  o.add(buildGooglePrivacyDlpV2beta1Projection());
  o.add(buildGooglePrivacyDlpV2beta1Projection());
  return o;
}

checkUnnamed4045(core.List<api.GooglePrivacyDlpV2beta1Projection> o) {
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
    o.projection = buildUnnamed4045();
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
    checkUnnamed4045(o.projection);
  }
  buildCounterGooglePrivacyDlpV2beta1DatastoreOptions--;
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

buildUnnamed4046() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1CustomInfoType>();
  o.add(buildGooglePrivacyDlpV2beta1CustomInfoType());
  o.add(buildGooglePrivacyDlpV2beta1CustomInfoType());
  return o;
}

checkUnnamed4046(core.List<api.GooglePrivacyDlpV2beta1CustomInfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1CustomInfoType(o[0]);
  checkGooglePrivacyDlpV2beta1CustomInfoType(o[1]);
}

buildUnnamed4047() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1InfoTypeLimit>();
  o.add(buildGooglePrivacyDlpV2beta1InfoTypeLimit());
  o.add(buildGooglePrivacyDlpV2beta1InfoTypeLimit());
  return o;
}

checkUnnamed4047(core.List<api.GooglePrivacyDlpV2beta1InfoTypeLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1InfoTypeLimit(o[0]);
  checkGooglePrivacyDlpV2beta1InfoTypeLimit(o[1]);
}

buildUnnamed4048() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1InfoType>();
  o.add(buildGooglePrivacyDlpV2beta1InfoType());
  o.add(buildGooglePrivacyDlpV2beta1InfoType());
  return o;
}

checkUnnamed4048(core.List<api.GooglePrivacyDlpV2beta1InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1InfoType(o[0]);
  checkGooglePrivacyDlpV2beta1InfoType(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1InspectConfig = 0;
buildGooglePrivacyDlpV2beta1InspectConfig() {
  var o = new api.GooglePrivacyDlpV2beta1InspectConfig();
  buildCounterGooglePrivacyDlpV2beta1InspectConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1InspectConfig < 3) {
    o.customInfoTypes = buildUnnamed4046();
    o.excludeTypes = true;
    o.includeQuote = true;
    o.infoTypeLimits = buildUnnamed4047();
    o.infoTypes = buildUnnamed4048();
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
    checkUnnamed4046(o.customInfoTypes);
    unittest.expect(o.excludeTypes, unittest.isTrue);
    unittest.expect(o.includeQuote, unittest.isTrue);
    checkUnnamed4047(o.infoTypeLimits);
    checkUnnamed4048(o.infoTypes);
    unittest.expect(o.maxFindings, unittest.equals(42));
    unittest.expect(o.minLikelihood, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1InspectConfig--;
}

buildUnnamed4049() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1InfoTypeStatistics>();
  o.add(buildGooglePrivacyDlpV2beta1InfoTypeStatistics());
  o.add(buildGooglePrivacyDlpV2beta1InfoTypeStatistics());
  return o;
}

checkUnnamed4049(core.List<api.GooglePrivacyDlpV2beta1InfoTypeStatistics> o) {
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
    o.infoTypeStats = buildUnnamed4049();
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
    checkUnnamed4049(o.infoTypeStats);
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

buildUnnamed4050() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1FieldId>();
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  return o;
}

checkUnnamed4050(core.List<api.GooglePrivacyDlpV2beta1FieldId> o) {
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
    o.quasiIds = buildUnnamed4050();
  }
  buildCounterGooglePrivacyDlpV2beta1KAnonymityConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1KAnonymityConfig(
    api.GooglePrivacyDlpV2beta1KAnonymityConfig o) {
  buildCounterGooglePrivacyDlpV2beta1KAnonymityConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1KAnonymityConfig < 3) {
    checkGooglePrivacyDlpV2beta1EntityId(o.entityId);
    checkUnnamed4050(o.quasiIds);
  }
  buildCounterGooglePrivacyDlpV2beta1KAnonymityConfig--;
}

buildUnnamed4051() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1Value>();
  o.add(buildGooglePrivacyDlpV2beta1Value());
  o.add(buildGooglePrivacyDlpV2beta1Value());
  return o;
}

checkUnnamed4051(core.List<api.GooglePrivacyDlpV2beta1Value> o) {
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
    o.quasiIdsValues = buildUnnamed4051();
  }
  buildCounterGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass--;
  return o;
}

checkGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass(
    api.GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass o) {
  buildCounterGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass < 3) {
    unittest.expect(o.equivalenceClassSize, unittest.equals('foo'));
    checkUnnamed4051(o.quasiIdsValues);
  }
  buildCounterGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass--;
}

buildUnnamed4052() {
  var o =
      new core.List<api.GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass>();
  o.add(buildGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass());
  o.add(buildGooglePrivacyDlpV2beta1KAnonymityEquivalenceClass());
  return o;
}

checkUnnamed4052(
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
    o.bucketValues = buildUnnamed4052();
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
    checkUnnamed4052(o.bucketValues);
    unittest.expect(o.equivalenceClassSizeLowerBound, unittest.equals('foo'));
    unittest.expect(o.equivalenceClassSizeUpperBound, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1KAnonymityHistogramBucket--;
}

buildUnnamed4053() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1KAnonymityHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2beta1KAnonymityHistogramBucket());
  o.add(buildGooglePrivacyDlpV2beta1KAnonymityHistogramBucket());
  return o;
}

checkUnnamed4053(
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
    o.equivalenceClassHistogramBuckets = buildUnnamed4053();
  }
  buildCounterGooglePrivacyDlpV2beta1KAnonymityResult--;
  return o;
}

checkGooglePrivacyDlpV2beta1KAnonymityResult(
    api.GooglePrivacyDlpV2beta1KAnonymityResult o) {
  buildCounterGooglePrivacyDlpV2beta1KAnonymityResult++;
  if (buildCounterGooglePrivacyDlpV2beta1KAnonymityResult < 3) {
    checkUnnamed4053(o.equivalenceClassHistogramBuckets);
  }
  buildCounterGooglePrivacyDlpV2beta1KAnonymityResult--;
}

buildUnnamed4054() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1AuxiliaryTable>();
  o.add(buildGooglePrivacyDlpV2beta1AuxiliaryTable());
  o.add(buildGooglePrivacyDlpV2beta1AuxiliaryTable());
  return o;
}

checkUnnamed4054(core.List<api.GooglePrivacyDlpV2beta1AuxiliaryTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1AuxiliaryTable(o[0]);
  checkGooglePrivacyDlpV2beta1AuxiliaryTable(o[1]);
}

buildUnnamed4055() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1TaggedField>();
  o.add(buildGooglePrivacyDlpV2beta1TaggedField());
  o.add(buildGooglePrivacyDlpV2beta1TaggedField());
  return o;
}

checkUnnamed4055(core.List<api.GooglePrivacyDlpV2beta1TaggedField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1TaggedField(o[0]);
  checkGooglePrivacyDlpV2beta1TaggedField(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1KMapEstimationConfig = 0;
buildGooglePrivacyDlpV2beta1KMapEstimationConfig() {
  var o = new api.GooglePrivacyDlpV2beta1KMapEstimationConfig();
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1KMapEstimationConfig < 3) {
    o.auxiliaryTables = buildUnnamed4054();
    o.quasiIds = buildUnnamed4055();
    o.regionCode = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1KMapEstimationConfig(
    api.GooglePrivacyDlpV2beta1KMapEstimationConfig o) {
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1KMapEstimationConfig < 3) {
    checkUnnamed4054(o.auxiliaryTables);
    checkUnnamed4055(o.quasiIds);
    unittest.expect(o.regionCode, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationConfig--;
}

buildUnnamed4056() {
  var o =
      new core.List<api.GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues>();
  o.add(buildGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues());
  o.add(buildGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues());
  return o;
}

checkUnnamed4056(
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
    o.bucketValues = buildUnnamed4056();
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
    checkUnnamed4056(o.bucketValues);
    unittest.expect(o.maxAnonymity, unittest.equals('foo'));
    unittest.expect(o.minAnonymity, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket--;
}

buildUnnamed4057() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1Value>();
  o.add(buildGooglePrivacyDlpV2beta1Value());
  o.add(buildGooglePrivacyDlpV2beta1Value());
  return o;
}

checkUnnamed4057(core.List<api.GooglePrivacyDlpV2beta1Value> o) {
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
    o.quasiIdsValues = buildUnnamed4057();
  }
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues--;
  return o;
}

checkGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues(
    api.GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues o) {
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues < 3) {
    unittest.expect(o.estimatedAnonymity, unittest.equals('foo'));
    checkUnnamed4057(o.quasiIdsValues);
  }
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues--;
}

buildUnnamed4058() {
  var o =
      new core.List<api.GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket());
  o.add(buildGooglePrivacyDlpV2beta1KMapEstimationHistogramBucket());
  return o;
}

checkUnnamed4058(
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
    o.kMapEstimationHistogram = buildUnnamed4058();
  }
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationResult--;
  return o;
}

checkGooglePrivacyDlpV2beta1KMapEstimationResult(
    api.GooglePrivacyDlpV2beta1KMapEstimationResult o) {
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2beta1KMapEstimationResult < 3) {
    checkUnnamed4058(o.kMapEstimationHistogram);
  }
  buildCounterGooglePrivacyDlpV2beta1KMapEstimationResult--;
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

buildUnnamed4059() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1FieldId>();
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  o.add(buildGooglePrivacyDlpV2beta1FieldId());
  return o;
}

checkUnnamed4059(core.List<api.GooglePrivacyDlpV2beta1FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1FieldId(o[0]);
  checkGooglePrivacyDlpV2beta1FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta1LDiversityConfig = 0;
buildGooglePrivacyDlpV2beta1LDiversityConfig() {
  var o = new api.GooglePrivacyDlpV2beta1LDiversityConfig();
  buildCounterGooglePrivacyDlpV2beta1LDiversityConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1LDiversityConfig < 3) {
    o.quasiIds = buildUnnamed4059();
    o.sensitiveAttribute = buildGooglePrivacyDlpV2beta1FieldId();
  }
  buildCounterGooglePrivacyDlpV2beta1LDiversityConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta1LDiversityConfig(
    api.GooglePrivacyDlpV2beta1LDiversityConfig o) {
  buildCounterGooglePrivacyDlpV2beta1LDiversityConfig++;
  if (buildCounterGooglePrivacyDlpV2beta1LDiversityConfig < 3) {
    checkUnnamed4059(o.quasiIds);
    checkGooglePrivacyDlpV2beta1FieldId(o.sensitiveAttribute);
  }
  buildCounterGooglePrivacyDlpV2beta1LDiversityConfig--;
}

buildUnnamed4060() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1Value>();
  o.add(buildGooglePrivacyDlpV2beta1Value());
  o.add(buildGooglePrivacyDlpV2beta1Value());
  return o;
}

checkUnnamed4060(core.List<api.GooglePrivacyDlpV2beta1Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta1Value(o[0]);
  checkGooglePrivacyDlpV2beta1Value(o[1]);
}

buildUnnamed4061() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1ValueFrequency>();
  o.add(buildGooglePrivacyDlpV2beta1ValueFrequency());
  o.add(buildGooglePrivacyDlpV2beta1ValueFrequency());
  return o;
}

checkUnnamed4061(core.List<api.GooglePrivacyDlpV2beta1ValueFrequency> o) {
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
    o.quasiIdsValues = buildUnnamed4060();
    o.topSensitiveValues = buildUnnamed4061();
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
    checkUnnamed4060(o.quasiIdsValues);
    checkUnnamed4061(o.topSensitiveValues);
  }
  buildCounterGooglePrivacyDlpV2beta1LDiversityEquivalenceClass--;
}

buildUnnamed4062() {
  var o =
      new core.List<api.GooglePrivacyDlpV2beta1LDiversityEquivalenceClass>();
  o.add(buildGooglePrivacyDlpV2beta1LDiversityEquivalenceClass());
  o.add(buildGooglePrivacyDlpV2beta1LDiversityEquivalenceClass());
  return o;
}

checkUnnamed4062(
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
    o.bucketValues = buildUnnamed4062();
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
    checkUnnamed4062(o.bucketValues);
    unittest.expect(
        o.sensitiveValueFrequencyLowerBound, unittest.equals('foo'));
    unittest.expect(
        o.sensitiveValueFrequencyUpperBound, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta1LDiversityHistogramBucket--;
}

buildUnnamed4063() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1LDiversityHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2beta1LDiversityHistogramBucket());
  o.add(buildGooglePrivacyDlpV2beta1LDiversityHistogramBucket());
  return o;
}

checkUnnamed4063(
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
    o.sensitiveValueFrequencyHistogramBuckets = buildUnnamed4063();
  }
  buildCounterGooglePrivacyDlpV2beta1LDiversityResult--;
  return o;
}

checkGooglePrivacyDlpV2beta1LDiversityResult(
    api.GooglePrivacyDlpV2beta1LDiversityResult o) {
  buildCounterGooglePrivacyDlpV2beta1LDiversityResult++;
  if (buildCounterGooglePrivacyDlpV2beta1LDiversityResult < 3) {
    checkUnnamed4063(o.sensitiveValueFrequencyHistogramBuckets);
  }
  buildCounterGooglePrivacyDlpV2beta1LDiversityResult--;
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

buildUnnamed4064() {
  var o = new core.List<api.GooglePrivacyDlpV2beta1Value>();
  o.add(buildGooglePrivacyDlpV2beta1Value());
  o.add(buildGooglePrivacyDlpV2beta1Value());
  return o;
}

checkUnnamed4064(core.List<api.GooglePrivacyDlpV2beta1Value> o) {
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
    o.quantileValues = buildUnnamed4064();
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
    checkUnnamed4064(o.quantileValues);
  }
  buildCounterGooglePrivacyDlpV2beta1NumericalStatsResult--;
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

buildUnnamed4065() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4065(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2beta1WordList = 0;
buildGooglePrivacyDlpV2beta1WordList() {
  var o = new api.GooglePrivacyDlpV2beta1WordList();
  buildCounterGooglePrivacyDlpV2beta1WordList++;
  if (buildCounterGooglePrivacyDlpV2beta1WordList < 3) {
    o.words = buildUnnamed4065();
  }
  buildCounterGooglePrivacyDlpV2beta1WordList--;
  return o;
}

checkGooglePrivacyDlpV2beta1WordList(api.GooglePrivacyDlpV2beta1WordList o) {
  buildCounterGooglePrivacyDlpV2beta1WordList++;
  if (buildCounterGooglePrivacyDlpV2beta1WordList < 3) {
    checkUnnamed4065(o.words);
  }
  buildCounterGooglePrivacyDlpV2beta1WordList--;
}

core.int buildCounterGooglePrivacyDlpV2beta2Action = 0;
buildGooglePrivacyDlpV2beta2Action() {
  var o = new api.GooglePrivacyDlpV2beta2Action();
  buildCounterGooglePrivacyDlpV2beta2Action++;
  if (buildCounterGooglePrivacyDlpV2beta2Action < 3) {
    o.pubSub = buildGooglePrivacyDlpV2beta2PublishToPubSub();
    o.saveFindings = buildGooglePrivacyDlpV2beta2SaveFindings();
  }
  buildCounterGooglePrivacyDlpV2beta2Action--;
  return o;
}

checkGooglePrivacyDlpV2beta2Action(api.GooglePrivacyDlpV2beta2Action o) {
  buildCounterGooglePrivacyDlpV2beta2Action++;
  if (buildCounterGooglePrivacyDlpV2beta2Action < 3) {
    checkGooglePrivacyDlpV2beta2PublishToPubSub(o.pubSub);
    checkGooglePrivacyDlpV2beta2SaveFindings(o.saveFindings);
  }
  buildCounterGooglePrivacyDlpV2beta2Action--;
}

core.int buildCounterGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails = 0;
buildGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails() {
  var o = new api.GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails();
  buildCounterGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails++;
  if (buildCounterGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails < 3) {
    o.categoricalStatsResult =
        buildGooglePrivacyDlpV2beta2CategoricalStatsResult();
    o.kAnonymityResult = buildGooglePrivacyDlpV2beta2KAnonymityResult();
    o.kMapEstimationResult = buildGooglePrivacyDlpV2beta2KMapEstimationResult();
    o.lDiversityResult = buildGooglePrivacyDlpV2beta2LDiversityResult();
    o.numericalStatsResult = buildGooglePrivacyDlpV2beta2NumericalStatsResult();
    o.requestedPrivacyMetric = buildGooglePrivacyDlpV2beta2PrivacyMetric();
    o.requestedSourceTable = buildGooglePrivacyDlpV2beta2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails--;
  return o;
}

checkGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails(
    api.GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails o) {
  buildCounterGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails++;
  if (buildCounterGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails < 3) {
    checkGooglePrivacyDlpV2beta2CategoricalStatsResult(
        o.categoricalStatsResult);
    checkGooglePrivacyDlpV2beta2KAnonymityResult(o.kAnonymityResult);
    checkGooglePrivacyDlpV2beta2KMapEstimationResult(o.kMapEstimationResult);
    checkGooglePrivacyDlpV2beta2LDiversityResult(o.lDiversityResult);
    checkGooglePrivacyDlpV2beta2NumericalStatsResult(o.numericalStatsResult);
    checkGooglePrivacyDlpV2beta2PrivacyMetric(o.requestedPrivacyMetric);
    checkGooglePrivacyDlpV2beta2BigQueryTable(o.requestedSourceTable);
  }
  buildCounterGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails--;
}

core.int buildCounterGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest = 0;
buildGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest() {
  var o = new api.GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest();
  buildCounterGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest < 3) {
    o.jobConfig = buildGooglePrivacyDlpV2beta2RiskAnalysisJobConfig();
    o.jobId = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest(
    api.GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest o) {
  buildCounterGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest < 3) {
    checkGooglePrivacyDlpV2beta2RiskAnalysisJobConfig(o.jobConfig);
    unittest.expect(o.jobId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest--;
}

buildUnnamed4066() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2QuasiIdField>();
  o.add(buildGooglePrivacyDlpV2beta2QuasiIdField());
  o.add(buildGooglePrivacyDlpV2beta2QuasiIdField());
  return o;
}

checkUnnamed4066(core.List<api.GooglePrivacyDlpV2beta2QuasiIdField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2QuasiIdField(o[0]);
  checkGooglePrivacyDlpV2beta2QuasiIdField(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2AuxiliaryTable = 0;
buildGooglePrivacyDlpV2beta2AuxiliaryTable() {
  var o = new api.GooglePrivacyDlpV2beta2AuxiliaryTable();
  buildCounterGooglePrivacyDlpV2beta2AuxiliaryTable++;
  if (buildCounterGooglePrivacyDlpV2beta2AuxiliaryTable < 3) {
    o.quasiIds = buildUnnamed4066();
    o.relativeFrequency = buildGooglePrivacyDlpV2beta2FieldId();
    o.table = buildGooglePrivacyDlpV2beta2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2beta2AuxiliaryTable--;
  return o;
}

checkGooglePrivacyDlpV2beta2AuxiliaryTable(
    api.GooglePrivacyDlpV2beta2AuxiliaryTable o) {
  buildCounterGooglePrivacyDlpV2beta2AuxiliaryTable++;
  if (buildCounterGooglePrivacyDlpV2beta2AuxiliaryTable < 3) {
    checkUnnamed4066(o.quasiIds);
    checkGooglePrivacyDlpV2beta2FieldId(o.relativeFrequency);
    checkGooglePrivacyDlpV2beta2BigQueryTable(o.table);
  }
  buildCounterGooglePrivacyDlpV2beta2AuxiliaryTable--;
}

buildUnnamed4067() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2FieldId>();
  o.add(buildGooglePrivacyDlpV2beta2FieldId());
  o.add(buildGooglePrivacyDlpV2beta2FieldId());
  return o;
}

checkUnnamed4067(core.List<api.GooglePrivacyDlpV2beta2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2FieldId(o[0]);
  checkGooglePrivacyDlpV2beta2FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2BigQueryOptions = 0;
buildGooglePrivacyDlpV2beta2BigQueryOptions() {
  var o = new api.GooglePrivacyDlpV2beta2BigQueryOptions();
  buildCounterGooglePrivacyDlpV2beta2BigQueryOptions++;
  if (buildCounterGooglePrivacyDlpV2beta2BigQueryOptions < 3) {
    o.identifyingFields = buildUnnamed4067();
    o.tableReference = buildGooglePrivacyDlpV2beta2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2beta2BigQueryOptions--;
  return o;
}

checkGooglePrivacyDlpV2beta2BigQueryOptions(
    api.GooglePrivacyDlpV2beta2BigQueryOptions o) {
  buildCounterGooglePrivacyDlpV2beta2BigQueryOptions++;
  if (buildCounterGooglePrivacyDlpV2beta2BigQueryOptions < 3) {
    checkUnnamed4067(o.identifyingFields);
    checkGooglePrivacyDlpV2beta2BigQueryTable(o.tableReference);
  }
  buildCounterGooglePrivacyDlpV2beta2BigQueryOptions--;
}

core.int buildCounterGooglePrivacyDlpV2beta2BigQueryTable = 0;
buildGooglePrivacyDlpV2beta2BigQueryTable() {
  var o = new api.GooglePrivacyDlpV2beta2BigQueryTable();
  buildCounterGooglePrivacyDlpV2beta2BigQueryTable++;
  if (buildCounterGooglePrivacyDlpV2beta2BigQueryTable < 3) {
    o.datasetId = "foo";
    o.projectId = "foo";
    o.tableId = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2BigQueryTable--;
  return o;
}

checkGooglePrivacyDlpV2beta2BigQueryTable(
    api.GooglePrivacyDlpV2beta2BigQueryTable o) {
  buildCounterGooglePrivacyDlpV2beta2BigQueryTable++;
  if (buildCounterGooglePrivacyDlpV2beta2BigQueryTable < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.tableId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2BigQueryTable--;
}

core.int buildCounterGooglePrivacyDlpV2beta2Bucket = 0;
buildGooglePrivacyDlpV2beta2Bucket() {
  var o = new api.GooglePrivacyDlpV2beta2Bucket();
  buildCounterGooglePrivacyDlpV2beta2Bucket++;
  if (buildCounterGooglePrivacyDlpV2beta2Bucket < 3) {
    o.max = buildGooglePrivacyDlpV2beta2Value();
    o.min = buildGooglePrivacyDlpV2beta2Value();
    o.replacementValue = buildGooglePrivacyDlpV2beta2Value();
  }
  buildCounterGooglePrivacyDlpV2beta2Bucket--;
  return o;
}

checkGooglePrivacyDlpV2beta2Bucket(api.GooglePrivacyDlpV2beta2Bucket o) {
  buildCounterGooglePrivacyDlpV2beta2Bucket++;
  if (buildCounterGooglePrivacyDlpV2beta2Bucket < 3) {
    checkGooglePrivacyDlpV2beta2Value(o.max);
    checkGooglePrivacyDlpV2beta2Value(o.min);
    checkGooglePrivacyDlpV2beta2Value(o.replacementValue);
  }
  buildCounterGooglePrivacyDlpV2beta2Bucket--;
}

buildUnnamed4068() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2Bucket>();
  o.add(buildGooglePrivacyDlpV2beta2Bucket());
  o.add(buildGooglePrivacyDlpV2beta2Bucket());
  return o;
}

checkUnnamed4068(core.List<api.GooglePrivacyDlpV2beta2Bucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2Bucket(o[0]);
  checkGooglePrivacyDlpV2beta2Bucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2BucketingConfig = 0;
buildGooglePrivacyDlpV2beta2BucketingConfig() {
  var o = new api.GooglePrivacyDlpV2beta2BucketingConfig();
  buildCounterGooglePrivacyDlpV2beta2BucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2BucketingConfig < 3) {
    o.buckets = buildUnnamed4068();
  }
  buildCounterGooglePrivacyDlpV2beta2BucketingConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2BucketingConfig(
    api.GooglePrivacyDlpV2beta2BucketingConfig o) {
  buildCounterGooglePrivacyDlpV2beta2BucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2BucketingConfig < 3) {
    checkUnnamed4068(o.buckets);
  }
  buildCounterGooglePrivacyDlpV2beta2BucketingConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta2CancelDlpJobRequest = 0;
buildGooglePrivacyDlpV2beta2CancelDlpJobRequest() {
  var o = new api.GooglePrivacyDlpV2beta2CancelDlpJobRequest();
  buildCounterGooglePrivacyDlpV2beta2CancelDlpJobRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2CancelDlpJobRequest < 3) {}
  buildCounterGooglePrivacyDlpV2beta2CancelDlpJobRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta2CancelDlpJobRequest(
    api.GooglePrivacyDlpV2beta2CancelDlpJobRequest o) {
  buildCounterGooglePrivacyDlpV2beta2CancelDlpJobRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2CancelDlpJobRequest < 3) {}
  buildCounterGooglePrivacyDlpV2beta2CancelDlpJobRequest--;
}

core.int buildCounterGooglePrivacyDlpV2beta2CategoricalStatsConfig = 0;
buildGooglePrivacyDlpV2beta2CategoricalStatsConfig() {
  var o = new api.GooglePrivacyDlpV2beta2CategoricalStatsConfig();
  buildCounterGooglePrivacyDlpV2beta2CategoricalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2CategoricalStatsConfig < 3) {
    o.field = buildGooglePrivacyDlpV2beta2FieldId();
  }
  buildCounterGooglePrivacyDlpV2beta2CategoricalStatsConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2CategoricalStatsConfig(
    api.GooglePrivacyDlpV2beta2CategoricalStatsConfig o) {
  buildCounterGooglePrivacyDlpV2beta2CategoricalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2CategoricalStatsConfig < 3) {
    checkGooglePrivacyDlpV2beta2FieldId(o.field);
  }
  buildCounterGooglePrivacyDlpV2beta2CategoricalStatsConfig--;
}

buildUnnamed4069() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2ValueFrequency>();
  o.add(buildGooglePrivacyDlpV2beta2ValueFrequency());
  o.add(buildGooglePrivacyDlpV2beta2ValueFrequency());
  return o;
}

checkUnnamed4069(core.List<api.GooglePrivacyDlpV2beta2ValueFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2ValueFrequency(o[0]);
  checkGooglePrivacyDlpV2beta2ValueFrequency(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket = 0;
buildGooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket() {
  var o = new api.GooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket();
  buildCounterGooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket < 3) {
    o.bucketSize = "foo";
    o.bucketValues = buildUnnamed4069();
    o.valueFrequencyLowerBound = "foo";
    o.valueFrequencyUpperBound = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket--;
  return o;
}

checkGooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket(
    api.GooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    checkUnnamed4069(o.bucketValues);
    unittest.expect(o.valueFrequencyLowerBound, unittest.equals('foo'));
    unittest.expect(o.valueFrequencyUpperBound, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket--;
}

buildUnnamed4070() {
  var o = new core
      .List<api.GooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket());
  o.add(buildGooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket());
  return o;
}

checkUnnamed4070(
    core.List<api.GooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2CategoricalStatsResult = 0;
buildGooglePrivacyDlpV2beta2CategoricalStatsResult() {
  var o = new api.GooglePrivacyDlpV2beta2CategoricalStatsResult();
  buildCounterGooglePrivacyDlpV2beta2CategoricalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2beta2CategoricalStatsResult < 3) {
    o.valueFrequencyHistogramBuckets = buildUnnamed4070();
  }
  buildCounterGooglePrivacyDlpV2beta2CategoricalStatsResult--;
  return o;
}

checkGooglePrivacyDlpV2beta2CategoricalStatsResult(
    api.GooglePrivacyDlpV2beta2CategoricalStatsResult o) {
  buildCounterGooglePrivacyDlpV2beta2CategoricalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2beta2CategoricalStatsResult < 3) {
    checkUnnamed4070(o.valueFrequencyHistogramBuckets);
  }
  buildCounterGooglePrivacyDlpV2beta2CategoricalStatsResult--;
}

buildUnnamed4071() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2CharsToIgnore>();
  o.add(buildGooglePrivacyDlpV2beta2CharsToIgnore());
  o.add(buildGooglePrivacyDlpV2beta2CharsToIgnore());
  return o;
}

checkUnnamed4071(core.List<api.GooglePrivacyDlpV2beta2CharsToIgnore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2CharsToIgnore(o[0]);
  checkGooglePrivacyDlpV2beta2CharsToIgnore(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2CharacterMaskConfig = 0;
buildGooglePrivacyDlpV2beta2CharacterMaskConfig() {
  var o = new api.GooglePrivacyDlpV2beta2CharacterMaskConfig();
  buildCounterGooglePrivacyDlpV2beta2CharacterMaskConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2CharacterMaskConfig < 3) {
    o.charactersToIgnore = buildUnnamed4071();
    o.maskingCharacter = "foo";
    o.numberToMask = 42;
    o.reverseOrder = true;
  }
  buildCounterGooglePrivacyDlpV2beta2CharacterMaskConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2CharacterMaskConfig(
    api.GooglePrivacyDlpV2beta2CharacterMaskConfig o) {
  buildCounterGooglePrivacyDlpV2beta2CharacterMaskConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2CharacterMaskConfig < 3) {
    checkUnnamed4071(o.charactersToIgnore);
    unittest.expect(o.maskingCharacter, unittest.equals('foo'));
    unittest.expect(o.numberToMask, unittest.equals(42));
    unittest.expect(o.reverseOrder, unittest.isTrue);
  }
  buildCounterGooglePrivacyDlpV2beta2CharacterMaskConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta2CharsToIgnore = 0;
buildGooglePrivacyDlpV2beta2CharsToIgnore() {
  var o = new api.GooglePrivacyDlpV2beta2CharsToIgnore();
  buildCounterGooglePrivacyDlpV2beta2CharsToIgnore++;
  if (buildCounterGooglePrivacyDlpV2beta2CharsToIgnore < 3) {
    o.charactersToSkip = "foo";
    o.commonCharactersToIgnore = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2CharsToIgnore--;
  return o;
}

checkGooglePrivacyDlpV2beta2CharsToIgnore(
    api.GooglePrivacyDlpV2beta2CharsToIgnore o) {
  buildCounterGooglePrivacyDlpV2beta2CharsToIgnore++;
  if (buildCounterGooglePrivacyDlpV2beta2CharsToIgnore < 3) {
    unittest.expect(o.charactersToSkip, unittest.equals('foo'));
    unittest.expect(o.commonCharactersToIgnore, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2CharsToIgnore--;
}

core.int buildCounterGooglePrivacyDlpV2beta2CloudStorageKey = 0;
buildGooglePrivacyDlpV2beta2CloudStorageKey() {
  var o = new api.GooglePrivacyDlpV2beta2CloudStorageKey();
  buildCounterGooglePrivacyDlpV2beta2CloudStorageKey++;
  if (buildCounterGooglePrivacyDlpV2beta2CloudStorageKey < 3) {
    o.filePath = "foo";
    o.startOffset = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2CloudStorageKey--;
  return o;
}

checkGooglePrivacyDlpV2beta2CloudStorageKey(
    api.GooglePrivacyDlpV2beta2CloudStorageKey o) {
  buildCounterGooglePrivacyDlpV2beta2CloudStorageKey++;
  if (buildCounterGooglePrivacyDlpV2beta2CloudStorageKey < 3) {
    unittest.expect(o.filePath, unittest.equals('foo'));
    unittest.expect(o.startOffset, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2CloudStorageKey--;
}

core.int buildCounterGooglePrivacyDlpV2beta2CloudStorageOptions = 0;
buildGooglePrivacyDlpV2beta2CloudStorageOptions() {
  var o = new api.GooglePrivacyDlpV2beta2CloudStorageOptions();
  buildCounterGooglePrivacyDlpV2beta2CloudStorageOptions++;
  if (buildCounterGooglePrivacyDlpV2beta2CloudStorageOptions < 3) {
    o.bytesLimitPerFile = "foo";
    o.fileSet = buildGooglePrivacyDlpV2beta2FileSet();
  }
  buildCounterGooglePrivacyDlpV2beta2CloudStorageOptions--;
  return o;
}

checkGooglePrivacyDlpV2beta2CloudStorageOptions(
    api.GooglePrivacyDlpV2beta2CloudStorageOptions o) {
  buildCounterGooglePrivacyDlpV2beta2CloudStorageOptions++;
  if (buildCounterGooglePrivacyDlpV2beta2CloudStorageOptions < 3) {
    unittest.expect(o.bytesLimitPerFile, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2FileSet(o.fileSet);
  }
  buildCounterGooglePrivacyDlpV2beta2CloudStorageOptions--;
}

core.int buildCounterGooglePrivacyDlpV2beta2Color = 0;
buildGooglePrivacyDlpV2beta2Color() {
  var o = new api.GooglePrivacyDlpV2beta2Color();
  buildCounterGooglePrivacyDlpV2beta2Color++;
  if (buildCounterGooglePrivacyDlpV2beta2Color < 3) {
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterGooglePrivacyDlpV2beta2Color--;
  return o;
}

checkGooglePrivacyDlpV2beta2Color(api.GooglePrivacyDlpV2beta2Color o) {
  buildCounterGooglePrivacyDlpV2beta2Color++;
  if (buildCounterGooglePrivacyDlpV2beta2Color < 3) {
    unittest.expect(o.blue, unittest.equals(42.0));
    unittest.expect(o.green, unittest.equals(42.0));
    unittest.expect(o.red, unittest.equals(42.0));
  }
  buildCounterGooglePrivacyDlpV2beta2Color--;
}

core.int buildCounterGooglePrivacyDlpV2beta2Condition = 0;
buildGooglePrivacyDlpV2beta2Condition() {
  var o = new api.GooglePrivacyDlpV2beta2Condition();
  buildCounterGooglePrivacyDlpV2beta2Condition++;
  if (buildCounterGooglePrivacyDlpV2beta2Condition < 3) {
    o.field = buildGooglePrivacyDlpV2beta2FieldId();
    o.operator = "foo";
    o.value = buildGooglePrivacyDlpV2beta2Value();
  }
  buildCounterGooglePrivacyDlpV2beta2Condition--;
  return o;
}

checkGooglePrivacyDlpV2beta2Condition(api.GooglePrivacyDlpV2beta2Condition o) {
  buildCounterGooglePrivacyDlpV2beta2Condition++;
  if (buildCounterGooglePrivacyDlpV2beta2Condition < 3) {
    checkGooglePrivacyDlpV2beta2FieldId(o.field);
    unittest.expect(o.operator, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2Value(o.value);
  }
  buildCounterGooglePrivacyDlpV2beta2Condition--;
}

buildUnnamed4072() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2Condition>();
  o.add(buildGooglePrivacyDlpV2beta2Condition());
  o.add(buildGooglePrivacyDlpV2beta2Condition());
  return o;
}

checkUnnamed4072(core.List<api.GooglePrivacyDlpV2beta2Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2Condition(o[0]);
  checkGooglePrivacyDlpV2beta2Condition(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2Conditions = 0;
buildGooglePrivacyDlpV2beta2Conditions() {
  var o = new api.GooglePrivacyDlpV2beta2Conditions();
  buildCounterGooglePrivacyDlpV2beta2Conditions++;
  if (buildCounterGooglePrivacyDlpV2beta2Conditions < 3) {
    o.conditions = buildUnnamed4072();
  }
  buildCounterGooglePrivacyDlpV2beta2Conditions--;
  return o;
}

checkGooglePrivacyDlpV2beta2Conditions(
    api.GooglePrivacyDlpV2beta2Conditions o) {
  buildCounterGooglePrivacyDlpV2beta2Conditions++;
  if (buildCounterGooglePrivacyDlpV2beta2Conditions < 3) {
    checkUnnamed4072(o.conditions);
  }
  buildCounterGooglePrivacyDlpV2beta2Conditions--;
}

core.int buildCounterGooglePrivacyDlpV2beta2ContentItem = 0;
buildGooglePrivacyDlpV2beta2ContentItem() {
  var o = new api.GooglePrivacyDlpV2beta2ContentItem();
  buildCounterGooglePrivacyDlpV2beta2ContentItem++;
  if (buildCounterGooglePrivacyDlpV2beta2ContentItem < 3) {
    o.data = "foo";
    o.table = buildGooglePrivacyDlpV2beta2Table();
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2ContentItem--;
  return o;
}

checkGooglePrivacyDlpV2beta2ContentItem(
    api.GooglePrivacyDlpV2beta2ContentItem o) {
  buildCounterGooglePrivacyDlpV2beta2ContentItem++;
  if (buildCounterGooglePrivacyDlpV2beta2ContentItem < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2Table(o.table);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2ContentItem--;
}

core.int buildCounterGooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest = 0;
buildGooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest() {
  var o = new api.GooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest();
  buildCounterGooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest < 3) {
    o.deidentifyTemplate = buildGooglePrivacyDlpV2beta2DeidentifyTemplate();
    o.templateId = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest(
    api.GooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest o) {
  buildCounterGooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest < 3) {
    checkGooglePrivacyDlpV2beta2DeidentifyTemplate(o.deidentifyTemplate);
    unittest.expect(o.templateId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2beta2CreateInspectTemplateRequest = 0;
buildGooglePrivacyDlpV2beta2CreateInspectTemplateRequest() {
  var o = new api.GooglePrivacyDlpV2beta2CreateInspectTemplateRequest();
  buildCounterGooglePrivacyDlpV2beta2CreateInspectTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2CreateInspectTemplateRequest < 3) {
    o.inspectTemplate = buildGooglePrivacyDlpV2beta2InspectTemplate();
    o.templateId = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2CreateInspectTemplateRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta2CreateInspectTemplateRequest(
    api.GooglePrivacyDlpV2beta2CreateInspectTemplateRequest o) {
  buildCounterGooglePrivacyDlpV2beta2CreateInspectTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2CreateInspectTemplateRequest < 3) {
    checkGooglePrivacyDlpV2beta2InspectTemplate(o.inspectTemplate);
    unittest.expect(o.templateId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2CreateInspectTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2beta2CreateJobTriggerRequest = 0;
buildGooglePrivacyDlpV2beta2CreateJobTriggerRequest() {
  var o = new api.GooglePrivacyDlpV2beta2CreateJobTriggerRequest();
  buildCounterGooglePrivacyDlpV2beta2CreateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2CreateJobTriggerRequest < 3) {
    o.jobTrigger = buildGooglePrivacyDlpV2beta2JobTrigger();
    o.triggerId = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2CreateJobTriggerRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta2CreateJobTriggerRequest(
    api.GooglePrivacyDlpV2beta2CreateJobTriggerRequest o) {
  buildCounterGooglePrivacyDlpV2beta2CreateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2CreateJobTriggerRequest < 3) {
    checkGooglePrivacyDlpV2beta2JobTrigger(o.jobTrigger);
    unittest.expect(o.triggerId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2CreateJobTriggerRequest--;
}

core.int buildCounterGooglePrivacyDlpV2beta2CryptoHashConfig = 0;
buildGooglePrivacyDlpV2beta2CryptoHashConfig() {
  var o = new api.GooglePrivacyDlpV2beta2CryptoHashConfig();
  buildCounterGooglePrivacyDlpV2beta2CryptoHashConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2CryptoHashConfig < 3) {
    o.cryptoKey = buildGooglePrivacyDlpV2beta2CryptoKey();
  }
  buildCounterGooglePrivacyDlpV2beta2CryptoHashConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2CryptoHashConfig(
    api.GooglePrivacyDlpV2beta2CryptoHashConfig o) {
  buildCounterGooglePrivacyDlpV2beta2CryptoHashConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2CryptoHashConfig < 3) {
    checkGooglePrivacyDlpV2beta2CryptoKey(o.cryptoKey);
  }
  buildCounterGooglePrivacyDlpV2beta2CryptoHashConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta2CryptoKey = 0;
buildGooglePrivacyDlpV2beta2CryptoKey() {
  var o = new api.GooglePrivacyDlpV2beta2CryptoKey();
  buildCounterGooglePrivacyDlpV2beta2CryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta2CryptoKey < 3) {
    o.kmsWrapped = buildGooglePrivacyDlpV2beta2KmsWrappedCryptoKey();
    o.transient = buildGooglePrivacyDlpV2beta2TransientCryptoKey();
    o.unwrapped = buildGooglePrivacyDlpV2beta2UnwrappedCryptoKey();
  }
  buildCounterGooglePrivacyDlpV2beta2CryptoKey--;
  return o;
}

checkGooglePrivacyDlpV2beta2CryptoKey(api.GooglePrivacyDlpV2beta2CryptoKey o) {
  buildCounterGooglePrivacyDlpV2beta2CryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta2CryptoKey < 3) {
    checkGooglePrivacyDlpV2beta2KmsWrappedCryptoKey(o.kmsWrapped);
    checkGooglePrivacyDlpV2beta2TransientCryptoKey(o.transient);
    checkGooglePrivacyDlpV2beta2UnwrappedCryptoKey(o.unwrapped);
  }
  buildCounterGooglePrivacyDlpV2beta2CryptoKey--;
}

core.int buildCounterGooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig = 0;
buildGooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig() {
  var o = new api.GooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig();
  buildCounterGooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig < 3) {
    o.commonAlphabet = "foo";
    o.context = buildGooglePrivacyDlpV2beta2FieldId();
    o.cryptoKey = buildGooglePrivacyDlpV2beta2CryptoKey();
    o.customAlphabet = "foo";
    o.radix = 42;
    o.surrogateInfoType = buildGooglePrivacyDlpV2beta2InfoType();
  }
  buildCounterGooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig(
    api.GooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig o) {
  buildCounterGooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig < 3) {
    unittest.expect(o.commonAlphabet, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2FieldId(o.context);
    checkGooglePrivacyDlpV2beta2CryptoKey(o.cryptoKey);
    unittest.expect(o.customAlphabet, unittest.equals('foo'));
    unittest.expect(o.radix, unittest.equals(42));
    checkGooglePrivacyDlpV2beta2InfoType(o.surrogateInfoType);
  }
  buildCounterGooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig--;
}

buildUnnamed4073() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2DetectionRule>();
  o.add(buildGooglePrivacyDlpV2beta2DetectionRule());
  o.add(buildGooglePrivacyDlpV2beta2DetectionRule());
  return o;
}

checkUnnamed4073(core.List<api.GooglePrivacyDlpV2beta2DetectionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2DetectionRule(o[0]);
  checkGooglePrivacyDlpV2beta2DetectionRule(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2CustomInfoType = 0;
buildGooglePrivacyDlpV2beta2CustomInfoType() {
  var o = new api.GooglePrivacyDlpV2beta2CustomInfoType();
  buildCounterGooglePrivacyDlpV2beta2CustomInfoType++;
  if (buildCounterGooglePrivacyDlpV2beta2CustomInfoType < 3) {
    o.detectionRules = buildUnnamed4073();
    o.dictionary = buildGooglePrivacyDlpV2beta2Dictionary();
    o.infoType = buildGooglePrivacyDlpV2beta2InfoType();
    o.likelihood = "foo";
    o.regex = buildGooglePrivacyDlpV2beta2Regex();
    o.surrogateType = buildGooglePrivacyDlpV2beta2SurrogateType();
  }
  buildCounterGooglePrivacyDlpV2beta2CustomInfoType--;
  return o;
}

checkGooglePrivacyDlpV2beta2CustomInfoType(
    api.GooglePrivacyDlpV2beta2CustomInfoType o) {
  buildCounterGooglePrivacyDlpV2beta2CustomInfoType++;
  if (buildCounterGooglePrivacyDlpV2beta2CustomInfoType < 3) {
    checkUnnamed4073(o.detectionRules);
    checkGooglePrivacyDlpV2beta2Dictionary(o.dictionary);
    checkGooglePrivacyDlpV2beta2InfoType(o.infoType);
    unittest.expect(o.likelihood, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2Regex(o.regex);
    checkGooglePrivacyDlpV2beta2SurrogateType(o.surrogateType);
  }
  buildCounterGooglePrivacyDlpV2beta2CustomInfoType--;
}

core.int buildCounterGooglePrivacyDlpV2beta2DatastoreKey = 0;
buildGooglePrivacyDlpV2beta2DatastoreKey() {
  var o = new api.GooglePrivacyDlpV2beta2DatastoreKey();
  buildCounterGooglePrivacyDlpV2beta2DatastoreKey++;
  if (buildCounterGooglePrivacyDlpV2beta2DatastoreKey < 3) {
    o.entityKey = buildGooglePrivacyDlpV2beta2Key();
  }
  buildCounterGooglePrivacyDlpV2beta2DatastoreKey--;
  return o;
}

checkGooglePrivacyDlpV2beta2DatastoreKey(
    api.GooglePrivacyDlpV2beta2DatastoreKey o) {
  buildCounterGooglePrivacyDlpV2beta2DatastoreKey++;
  if (buildCounterGooglePrivacyDlpV2beta2DatastoreKey < 3) {
    checkGooglePrivacyDlpV2beta2Key(o.entityKey);
  }
  buildCounterGooglePrivacyDlpV2beta2DatastoreKey--;
}

core.int buildCounterGooglePrivacyDlpV2beta2DatastoreOptions = 0;
buildGooglePrivacyDlpV2beta2DatastoreOptions() {
  var o = new api.GooglePrivacyDlpV2beta2DatastoreOptions();
  buildCounterGooglePrivacyDlpV2beta2DatastoreOptions++;
  if (buildCounterGooglePrivacyDlpV2beta2DatastoreOptions < 3) {
    o.kind = buildGooglePrivacyDlpV2beta2KindExpression();
    o.partitionId = buildGooglePrivacyDlpV2beta2PartitionId();
  }
  buildCounterGooglePrivacyDlpV2beta2DatastoreOptions--;
  return o;
}

checkGooglePrivacyDlpV2beta2DatastoreOptions(
    api.GooglePrivacyDlpV2beta2DatastoreOptions o) {
  buildCounterGooglePrivacyDlpV2beta2DatastoreOptions++;
  if (buildCounterGooglePrivacyDlpV2beta2DatastoreOptions < 3) {
    checkGooglePrivacyDlpV2beta2KindExpression(o.kind);
    checkGooglePrivacyDlpV2beta2PartitionId(o.partitionId);
  }
  buildCounterGooglePrivacyDlpV2beta2DatastoreOptions--;
}

core.int buildCounterGooglePrivacyDlpV2beta2DeidentifyConfig = 0;
buildGooglePrivacyDlpV2beta2DeidentifyConfig() {
  var o = new api.GooglePrivacyDlpV2beta2DeidentifyConfig();
  buildCounterGooglePrivacyDlpV2beta2DeidentifyConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2DeidentifyConfig < 3) {
    o.infoTypeTransformations =
        buildGooglePrivacyDlpV2beta2InfoTypeTransformations();
    o.recordTransformations =
        buildGooglePrivacyDlpV2beta2RecordTransformations();
  }
  buildCounterGooglePrivacyDlpV2beta2DeidentifyConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2DeidentifyConfig(
    api.GooglePrivacyDlpV2beta2DeidentifyConfig o) {
  buildCounterGooglePrivacyDlpV2beta2DeidentifyConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2DeidentifyConfig < 3) {
    checkGooglePrivacyDlpV2beta2InfoTypeTransformations(
        o.infoTypeTransformations);
    checkGooglePrivacyDlpV2beta2RecordTransformations(o.recordTransformations);
  }
  buildCounterGooglePrivacyDlpV2beta2DeidentifyConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta2DeidentifyContentRequest = 0;
buildGooglePrivacyDlpV2beta2DeidentifyContentRequest() {
  var o = new api.GooglePrivacyDlpV2beta2DeidentifyContentRequest();
  buildCounterGooglePrivacyDlpV2beta2DeidentifyContentRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2DeidentifyContentRequest < 3) {
    o.deidentifyConfig = buildGooglePrivacyDlpV2beta2DeidentifyConfig();
    o.deidentifyTemplateName = "foo";
    o.inspectConfig = buildGooglePrivacyDlpV2beta2InspectConfig();
    o.inspectTemplateName = "foo";
    o.item = buildGooglePrivacyDlpV2beta2ContentItem();
  }
  buildCounterGooglePrivacyDlpV2beta2DeidentifyContentRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta2DeidentifyContentRequest(
    api.GooglePrivacyDlpV2beta2DeidentifyContentRequest o) {
  buildCounterGooglePrivacyDlpV2beta2DeidentifyContentRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2DeidentifyContentRequest < 3) {
    checkGooglePrivacyDlpV2beta2DeidentifyConfig(o.deidentifyConfig);
    unittest.expect(o.deidentifyTemplateName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2InspectConfig(o.inspectConfig);
    unittest.expect(o.inspectTemplateName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2ContentItem(o.item);
  }
  buildCounterGooglePrivacyDlpV2beta2DeidentifyContentRequest--;
}

core.int buildCounterGooglePrivacyDlpV2beta2DeidentifyContentResponse = 0;
buildGooglePrivacyDlpV2beta2DeidentifyContentResponse() {
  var o = new api.GooglePrivacyDlpV2beta2DeidentifyContentResponse();
  buildCounterGooglePrivacyDlpV2beta2DeidentifyContentResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2DeidentifyContentResponse < 3) {
    o.item = buildGooglePrivacyDlpV2beta2ContentItem();
    o.overview = buildGooglePrivacyDlpV2beta2TransformationOverview();
  }
  buildCounterGooglePrivacyDlpV2beta2DeidentifyContentResponse--;
  return o;
}

checkGooglePrivacyDlpV2beta2DeidentifyContentResponse(
    api.GooglePrivacyDlpV2beta2DeidentifyContentResponse o) {
  buildCounterGooglePrivacyDlpV2beta2DeidentifyContentResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2DeidentifyContentResponse < 3) {
    checkGooglePrivacyDlpV2beta2ContentItem(o.item);
    checkGooglePrivacyDlpV2beta2TransformationOverview(o.overview);
  }
  buildCounterGooglePrivacyDlpV2beta2DeidentifyContentResponse--;
}

core.int buildCounterGooglePrivacyDlpV2beta2DeidentifyTemplate = 0;
buildGooglePrivacyDlpV2beta2DeidentifyTemplate() {
  var o = new api.GooglePrivacyDlpV2beta2DeidentifyTemplate();
  buildCounterGooglePrivacyDlpV2beta2DeidentifyTemplate++;
  if (buildCounterGooglePrivacyDlpV2beta2DeidentifyTemplate < 3) {
    o.createTime = "foo";
    o.deidentifyConfig = buildGooglePrivacyDlpV2beta2DeidentifyConfig();
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.updateTime = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2DeidentifyTemplate--;
  return o;
}

checkGooglePrivacyDlpV2beta2DeidentifyTemplate(
    api.GooglePrivacyDlpV2beta2DeidentifyTemplate o) {
  buildCounterGooglePrivacyDlpV2beta2DeidentifyTemplate++;
  if (buildCounterGooglePrivacyDlpV2beta2DeidentifyTemplate < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2DeidentifyConfig(o.deidentifyConfig);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2DeidentifyTemplate--;
}

core.int buildCounterGooglePrivacyDlpV2beta2DetectionRule = 0;
buildGooglePrivacyDlpV2beta2DetectionRule() {
  var o = new api.GooglePrivacyDlpV2beta2DetectionRule();
  buildCounterGooglePrivacyDlpV2beta2DetectionRule++;
  if (buildCounterGooglePrivacyDlpV2beta2DetectionRule < 3) {
    o.hotwordRule = buildGooglePrivacyDlpV2beta2HotwordRule();
  }
  buildCounterGooglePrivacyDlpV2beta2DetectionRule--;
  return o;
}

checkGooglePrivacyDlpV2beta2DetectionRule(
    api.GooglePrivacyDlpV2beta2DetectionRule o) {
  buildCounterGooglePrivacyDlpV2beta2DetectionRule++;
  if (buildCounterGooglePrivacyDlpV2beta2DetectionRule < 3) {
    checkGooglePrivacyDlpV2beta2HotwordRule(o.hotwordRule);
  }
  buildCounterGooglePrivacyDlpV2beta2DetectionRule--;
}

core.int buildCounterGooglePrivacyDlpV2beta2Dictionary = 0;
buildGooglePrivacyDlpV2beta2Dictionary() {
  var o = new api.GooglePrivacyDlpV2beta2Dictionary();
  buildCounterGooglePrivacyDlpV2beta2Dictionary++;
  if (buildCounterGooglePrivacyDlpV2beta2Dictionary < 3) {
    o.wordList = buildGooglePrivacyDlpV2beta2WordList();
  }
  buildCounterGooglePrivacyDlpV2beta2Dictionary--;
  return o;
}

checkGooglePrivacyDlpV2beta2Dictionary(
    api.GooglePrivacyDlpV2beta2Dictionary o) {
  buildCounterGooglePrivacyDlpV2beta2Dictionary++;
  if (buildCounterGooglePrivacyDlpV2beta2Dictionary < 3) {
    checkGooglePrivacyDlpV2beta2WordList(o.wordList);
  }
  buildCounterGooglePrivacyDlpV2beta2Dictionary--;
}

buildUnnamed4074() {
  var o = new core.List<api.GoogleRpcStatus>();
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

checkUnnamed4074(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2DlpJob = 0;
buildGooglePrivacyDlpV2beta2DlpJob() {
  var o = new api.GooglePrivacyDlpV2beta2DlpJob();
  buildCounterGooglePrivacyDlpV2beta2DlpJob++;
  if (buildCounterGooglePrivacyDlpV2beta2DlpJob < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.errorResults = buildUnnamed4074();
    o.inspectDetails = buildGooglePrivacyDlpV2beta2InspectDataSourceDetails();
    o.jobTriggerName = "foo";
    o.name = "foo";
    o.riskDetails = buildGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails();
    o.startTime = "foo";
    o.state = "foo";
    o.type = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2DlpJob--;
  return o;
}

checkGooglePrivacyDlpV2beta2DlpJob(api.GooglePrivacyDlpV2beta2DlpJob o) {
  buildCounterGooglePrivacyDlpV2beta2DlpJob++;
  if (buildCounterGooglePrivacyDlpV2beta2DlpJob < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed4074(o.errorResults);
    checkGooglePrivacyDlpV2beta2InspectDataSourceDetails(o.inspectDetails);
    unittest.expect(o.jobTriggerName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails(o.riskDetails);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2DlpJob--;
}

core.int buildCounterGooglePrivacyDlpV2beta2EntityId = 0;
buildGooglePrivacyDlpV2beta2EntityId() {
  var o = new api.GooglePrivacyDlpV2beta2EntityId();
  buildCounterGooglePrivacyDlpV2beta2EntityId++;
  if (buildCounterGooglePrivacyDlpV2beta2EntityId < 3) {
    o.field = buildGooglePrivacyDlpV2beta2FieldId();
  }
  buildCounterGooglePrivacyDlpV2beta2EntityId--;
  return o;
}

checkGooglePrivacyDlpV2beta2EntityId(api.GooglePrivacyDlpV2beta2EntityId o) {
  buildCounterGooglePrivacyDlpV2beta2EntityId++;
  if (buildCounterGooglePrivacyDlpV2beta2EntityId < 3) {
    checkGooglePrivacyDlpV2beta2FieldId(o.field);
  }
  buildCounterGooglePrivacyDlpV2beta2EntityId--;
}

buildUnnamed4075() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4075(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2beta2Error = 0;
buildGooglePrivacyDlpV2beta2Error() {
  var o = new api.GooglePrivacyDlpV2beta2Error();
  buildCounterGooglePrivacyDlpV2beta2Error++;
  if (buildCounterGooglePrivacyDlpV2beta2Error < 3) {
    o.details = buildGoogleRpcStatus();
    o.timestamps = buildUnnamed4075();
  }
  buildCounterGooglePrivacyDlpV2beta2Error--;
  return o;
}

checkGooglePrivacyDlpV2beta2Error(api.GooglePrivacyDlpV2beta2Error o) {
  buildCounterGooglePrivacyDlpV2beta2Error++;
  if (buildCounterGooglePrivacyDlpV2beta2Error < 3) {
    checkGoogleRpcStatus(o.details);
    checkUnnamed4075(o.timestamps);
  }
  buildCounterGooglePrivacyDlpV2beta2Error--;
}

core.int buildCounterGooglePrivacyDlpV2beta2Expressions = 0;
buildGooglePrivacyDlpV2beta2Expressions() {
  var o = new api.GooglePrivacyDlpV2beta2Expressions();
  buildCounterGooglePrivacyDlpV2beta2Expressions++;
  if (buildCounterGooglePrivacyDlpV2beta2Expressions < 3) {
    o.conditions = buildGooglePrivacyDlpV2beta2Conditions();
    o.logicalOperator = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2Expressions--;
  return o;
}

checkGooglePrivacyDlpV2beta2Expressions(
    api.GooglePrivacyDlpV2beta2Expressions o) {
  buildCounterGooglePrivacyDlpV2beta2Expressions++;
  if (buildCounterGooglePrivacyDlpV2beta2Expressions < 3) {
    checkGooglePrivacyDlpV2beta2Conditions(o.conditions);
    unittest.expect(o.logicalOperator, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2Expressions--;
}

core.int buildCounterGooglePrivacyDlpV2beta2FieldId = 0;
buildGooglePrivacyDlpV2beta2FieldId() {
  var o = new api.GooglePrivacyDlpV2beta2FieldId();
  buildCounterGooglePrivacyDlpV2beta2FieldId++;
  if (buildCounterGooglePrivacyDlpV2beta2FieldId < 3) {
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2FieldId--;
  return o;
}

checkGooglePrivacyDlpV2beta2FieldId(api.GooglePrivacyDlpV2beta2FieldId o) {
  buildCounterGooglePrivacyDlpV2beta2FieldId++;
  if (buildCounterGooglePrivacyDlpV2beta2FieldId < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2FieldId--;
}

buildUnnamed4076() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2FieldId>();
  o.add(buildGooglePrivacyDlpV2beta2FieldId());
  o.add(buildGooglePrivacyDlpV2beta2FieldId());
  return o;
}

checkUnnamed4076(core.List<api.GooglePrivacyDlpV2beta2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2FieldId(o[0]);
  checkGooglePrivacyDlpV2beta2FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2FieldTransformation = 0;
buildGooglePrivacyDlpV2beta2FieldTransformation() {
  var o = new api.GooglePrivacyDlpV2beta2FieldTransformation();
  buildCounterGooglePrivacyDlpV2beta2FieldTransformation++;
  if (buildCounterGooglePrivacyDlpV2beta2FieldTransformation < 3) {
    o.condition = buildGooglePrivacyDlpV2beta2RecordCondition();
    o.fields = buildUnnamed4076();
    o.infoTypeTransformations =
        buildGooglePrivacyDlpV2beta2InfoTypeTransformations();
    o.primitiveTransformation =
        buildGooglePrivacyDlpV2beta2PrimitiveTransformation();
  }
  buildCounterGooglePrivacyDlpV2beta2FieldTransformation--;
  return o;
}

checkGooglePrivacyDlpV2beta2FieldTransformation(
    api.GooglePrivacyDlpV2beta2FieldTransformation o) {
  buildCounterGooglePrivacyDlpV2beta2FieldTransformation++;
  if (buildCounterGooglePrivacyDlpV2beta2FieldTransformation < 3) {
    checkGooglePrivacyDlpV2beta2RecordCondition(o.condition);
    checkUnnamed4076(o.fields);
    checkGooglePrivacyDlpV2beta2InfoTypeTransformations(
        o.infoTypeTransformations);
    checkGooglePrivacyDlpV2beta2PrimitiveTransformation(
        o.primitiveTransformation);
  }
  buildCounterGooglePrivacyDlpV2beta2FieldTransformation--;
}

core.int buildCounterGooglePrivacyDlpV2beta2FileSet = 0;
buildGooglePrivacyDlpV2beta2FileSet() {
  var o = new api.GooglePrivacyDlpV2beta2FileSet();
  buildCounterGooglePrivacyDlpV2beta2FileSet++;
  if (buildCounterGooglePrivacyDlpV2beta2FileSet < 3) {
    o.url = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2FileSet--;
  return o;
}

checkGooglePrivacyDlpV2beta2FileSet(api.GooglePrivacyDlpV2beta2FileSet o) {
  buildCounterGooglePrivacyDlpV2beta2FileSet++;
  if (buildCounterGooglePrivacyDlpV2beta2FileSet < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2FileSet--;
}

core.int buildCounterGooglePrivacyDlpV2beta2Finding = 0;
buildGooglePrivacyDlpV2beta2Finding() {
  var o = new api.GooglePrivacyDlpV2beta2Finding();
  buildCounterGooglePrivacyDlpV2beta2Finding++;
  if (buildCounterGooglePrivacyDlpV2beta2Finding < 3) {
    o.createTime = "foo";
    o.infoType = buildGooglePrivacyDlpV2beta2InfoType();
    o.likelihood = "foo";
    o.location = buildGooglePrivacyDlpV2beta2Location();
    o.quote = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2Finding--;
  return o;
}

checkGooglePrivacyDlpV2beta2Finding(api.GooglePrivacyDlpV2beta2Finding o) {
  buildCounterGooglePrivacyDlpV2beta2Finding++;
  if (buildCounterGooglePrivacyDlpV2beta2Finding < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2InfoType(o.infoType);
    unittest.expect(o.likelihood, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2Location(o.location);
    unittest.expect(o.quote, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2Finding--;
}

buildUnnamed4077() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2InfoTypeLimit>();
  o.add(buildGooglePrivacyDlpV2beta2InfoTypeLimit());
  o.add(buildGooglePrivacyDlpV2beta2InfoTypeLimit());
  return o;
}

checkUnnamed4077(core.List<api.GooglePrivacyDlpV2beta2InfoTypeLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2InfoTypeLimit(o[0]);
  checkGooglePrivacyDlpV2beta2InfoTypeLimit(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2FindingLimits = 0;
buildGooglePrivacyDlpV2beta2FindingLimits() {
  var o = new api.GooglePrivacyDlpV2beta2FindingLimits();
  buildCounterGooglePrivacyDlpV2beta2FindingLimits++;
  if (buildCounterGooglePrivacyDlpV2beta2FindingLimits < 3) {
    o.maxFindingsPerInfoType = buildUnnamed4077();
    o.maxFindingsPerItem = 42;
    o.maxFindingsPerRequest = 42;
  }
  buildCounterGooglePrivacyDlpV2beta2FindingLimits--;
  return o;
}

checkGooglePrivacyDlpV2beta2FindingLimits(
    api.GooglePrivacyDlpV2beta2FindingLimits o) {
  buildCounterGooglePrivacyDlpV2beta2FindingLimits++;
  if (buildCounterGooglePrivacyDlpV2beta2FindingLimits < 3) {
    checkUnnamed4077(o.maxFindingsPerInfoType);
    unittest.expect(o.maxFindingsPerItem, unittest.equals(42));
    unittest.expect(o.maxFindingsPerRequest, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2beta2FindingLimits--;
}

core.int buildCounterGooglePrivacyDlpV2beta2FixedSizeBucketingConfig = 0;
buildGooglePrivacyDlpV2beta2FixedSizeBucketingConfig() {
  var o = new api.GooglePrivacyDlpV2beta2FixedSizeBucketingConfig();
  buildCounterGooglePrivacyDlpV2beta2FixedSizeBucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2FixedSizeBucketingConfig < 3) {
    o.bucketSize = 42.0;
    o.lowerBound = buildGooglePrivacyDlpV2beta2Value();
    o.upperBound = buildGooglePrivacyDlpV2beta2Value();
  }
  buildCounterGooglePrivacyDlpV2beta2FixedSizeBucketingConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2FixedSizeBucketingConfig(
    api.GooglePrivacyDlpV2beta2FixedSizeBucketingConfig o) {
  buildCounterGooglePrivacyDlpV2beta2FixedSizeBucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2FixedSizeBucketingConfig < 3) {
    unittest.expect(o.bucketSize, unittest.equals(42.0));
    checkGooglePrivacyDlpV2beta2Value(o.lowerBound);
    checkGooglePrivacyDlpV2beta2Value(o.upperBound);
  }
  buildCounterGooglePrivacyDlpV2beta2FixedSizeBucketingConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta2HotwordRule = 0;
buildGooglePrivacyDlpV2beta2HotwordRule() {
  var o = new api.GooglePrivacyDlpV2beta2HotwordRule();
  buildCounterGooglePrivacyDlpV2beta2HotwordRule++;
  if (buildCounterGooglePrivacyDlpV2beta2HotwordRule < 3) {
    o.hotwordRegex = buildGooglePrivacyDlpV2beta2Regex();
    o.likelihoodAdjustment = buildGooglePrivacyDlpV2beta2LikelihoodAdjustment();
    o.proximity = buildGooglePrivacyDlpV2beta2Proximity();
  }
  buildCounterGooglePrivacyDlpV2beta2HotwordRule--;
  return o;
}

checkGooglePrivacyDlpV2beta2HotwordRule(
    api.GooglePrivacyDlpV2beta2HotwordRule o) {
  buildCounterGooglePrivacyDlpV2beta2HotwordRule++;
  if (buildCounterGooglePrivacyDlpV2beta2HotwordRule < 3) {
    checkGooglePrivacyDlpV2beta2Regex(o.hotwordRegex);
    checkGooglePrivacyDlpV2beta2LikelihoodAdjustment(o.likelihoodAdjustment);
    checkGooglePrivacyDlpV2beta2Proximity(o.proximity);
  }
  buildCounterGooglePrivacyDlpV2beta2HotwordRule--;
}

core.int buildCounterGooglePrivacyDlpV2beta2ImageLocation = 0;
buildGooglePrivacyDlpV2beta2ImageLocation() {
  var o = new api.GooglePrivacyDlpV2beta2ImageLocation();
  buildCounterGooglePrivacyDlpV2beta2ImageLocation++;
  if (buildCounterGooglePrivacyDlpV2beta2ImageLocation < 3) {
    o.height = 42;
    o.left = 42;
    o.top = 42;
    o.width = 42;
  }
  buildCounterGooglePrivacyDlpV2beta2ImageLocation--;
  return o;
}

checkGooglePrivacyDlpV2beta2ImageLocation(
    api.GooglePrivacyDlpV2beta2ImageLocation o) {
  buildCounterGooglePrivacyDlpV2beta2ImageLocation++;
  if (buildCounterGooglePrivacyDlpV2beta2ImageLocation < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.left, unittest.equals(42));
    unittest.expect(o.top, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2beta2ImageLocation--;
}

core.int buildCounterGooglePrivacyDlpV2beta2ImageRedactionConfig = 0;
buildGooglePrivacyDlpV2beta2ImageRedactionConfig() {
  var o = new api.GooglePrivacyDlpV2beta2ImageRedactionConfig();
  buildCounterGooglePrivacyDlpV2beta2ImageRedactionConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2ImageRedactionConfig < 3) {
    o.infoType = buildGooglePrivacyDlpV2beta2InfoType();
    o.redactAllText = true;
    o.redactionColor = buildGooglePrivacyDlpV2beta2Color();
  }
  buildCounterGooglePrivacyDlpV2beta2ImageRedactionConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2ImageRedactionConfig(
    api.GooglePrivacyDlpV2beta2ImageRedactionConfig o) {
  buildCounterGooglePrivacyDlpV2beta2ImageRedactionConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2ImageRedactionConfig < 3) {
    checkGooglePrivacyDlpV2beta2InfoType(o.infoType);
    unittest.expect(o.redactAllText, unittest.isTrue);
    checkGooglePrivacyDlpV2beta2Color(o.redactionColor);
  }
  buildCounterGooglePrivacyDlpV2beta2ImageRedactionConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta2InfoType = 0;
buildGooglePrivacyDlpV2beta2InfoType() {
  var o = new api.GooglePrivacyDlpV2beta2InfoType();
  buildCounterGooglePrivacyDlpV2beta2InfoType++;
  if (buildCounterGooglePrivacyDlpV2beta2InfoType < 3) {
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2InfoType--;
  return o;
}

checkGooglePrivacyDlpV2beta2InfoType(api.GooglePrivacyDlpV2beta2InfoType o) {
  buildCounterGooglePrivacyDlpV2beta2InfoType++;
  if (buildCounterGooglePrivacyDlpV2beta2InfoType < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2InfoType--;
}

buildUnnamed4078() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4078(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2beta2InfoTypeDescription = 0;
buildGooglePrivacyDlpV2beta2InfoTypeDescription() {
  var o = new api.GooglePrivacyDlpV2beta2InfoTypeDescription();
  buildCounterGooglePrivacyDlpV2beta2InfoTypeDescription++;
  if (buildCounterGooglePrivacyDlpV2beta2InfoTypeDescription < 3) {
    o.displayName = "foo";
    o.name = "foo";
    o.supportedBy = buildUnnamed4078();
  }
  buildCounterGooglePrivacyDlpV2beta2InfoTypeDescription--;
  return o;
}

checkGooglePrivacyDlpV2beta2InfoTypeDescription(
    api.GooglePrivacyDlpV2beta2InfoTypeDescription o) {
  buildCounterGooglePrivacyDlpV2beta2InfoTypeDescription++;
  if (buildCounterGooglePrivacyDlpV2beta2InfoTypeDescription < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4078(o.supportedBy);
  }
  buildCounterGooglePrivacyDlpV2beta2InfoTypeDescription--;
}

core.int buildCounterGooglePrivacyDlpV2beta2InfoTypeLimit = 0;
buildGooglePrivacyDlpV2beta2InfoTypeLimit() {
  var o = new api.GooglePrivacyDlpV2beta2InfoTypeLimit();
  buildCounterGooglePrivacyDlpV2beta2InfoTypeLimit++;
  if (buildCounterGooglePrivacyDlpV2beta2InfoTypeLimit < 3) {
    o.infoType = buildGooglePrivacyDlpV2beta2InfoType();
    o.maxFindings = 42;
  }
  buildCounterGooglePrivacyDlpV2beta2InfoTypeLimit--;
  return o;
}

checkGooglePrivacyDlpV2beta2InfoTypeLimit(
    api.GooglePrivacyDlpV2beta2InfoTypeLimit o) {
  buildCounterGooglePrivacyDlpV2beta2InfoTypeLimit++;
  if (buildCounterGooglePrivacyDlpV2beta2InfoTypeLimit < 3) {
    checkGooglePrivacyDlpV2beta2InfoType(o.infoType);
    unittest.expect(o.maxFindings, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2beta2InfoTypeLimit--;
}

core.int buildCounterGooglePrivacyDlpV2beta2InfoTypeStatistics = 0;
buildGooglePrivacyDlpV2beta2InfoTypeStatistics() {
  var o = new api.GooglePrivacyDlpV2beta2InfoTypeStatistics();
  buildCounterGooglePrivacyDlpV2beta2InfoTypeStatistics++;
  if (buildCounterGooglePrivacyDlpV2beta2InfoTypeStatistics < 3) {
    o.count = "foo";
    o.infoType = buildGooglePrivacyDlpV2beta2InfoType();
  }
  buildCounterGooglePrivacyDlpV2beta2InfoTypeStatistics--;
  return o;
}

checkGooglePrivacyDlpV2beta2InfoTypeStatistics(
    api.GooglePrivacyDlpV2beta2InfoTypeStatistics o) {
  buildCounterGooglePrivacyDlpV2beta2InfoTypeStatistics++;
  if (buildCounterGooglePrivacyDlpV2beta2InfoTypeStatistics < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2InfoType(o.infoType);
  }
  buildCounterGooglePrivacyDlpV2beta2InfoTypeStatistics--;
}

buildUnnamed4079() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2InfoType>();
  o.add(buildGooglePrivacyDlpV2beta2InfoType());
  o.add(buildGooglePrivacyDlpV2beta2InfoType());
  return o;
}

checkUnnamed4079(core.List<api.GooglePrivacyDlpV2beta2InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2InfoType(o[0]);
  checkGooglePrivacyDlpV2beta2InfoType(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2InfoTypeTransformation = 0;
buildGooglePrivacyDlpV2beta2InfoTypeTransformation() {
  var o = new api.GooglePrivacyDlpV2beta2InfoTypeTransformation();
  buildCounterGooglePrivacyDlpV2beta2InfoTypeTransformation++;
  if (buildCounterGooglePrivacyDlpV2beta2InfoTypeTransformation < 3) {
    o.infoTypes = buildUnnamed4079();
    o.primitiveTransformation =
        buildGooglePrivacyDlpV2beta2PrimitiveTransformation();
  }
  buildCounterGooglePrivacyDlpV2beta2InfoTypeTransformation--;
  return o;
}

checkGooglePrivacyDlpV2beta2InfoTypeTransformation(
    api.GooglePrivacyDlpV2beta2InfoTypeTransformation o) {
  buildCounterGooglePrivacyDlpV2beta2InfoTypeTransformation++;
  if (buildCounterGooglePrivacyDlpV2beta2InfoTypeTransformation < 3) {
    checkUnnamed4079(o.infoTypes);
    checkGooglePrivacyDlpV2beta2PrimitiveTransformation(
        o.primitiveTransformation);
  }
  buildCounterGooglePrivacyDlpV2beta2InfoTypeTransformation--;
}

buildUnnamed4080() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2InfoTypeTransformation>();
  o.add(buildGooglePrivacyDlpV2beta2InfoTypeTransformation());
  o.add(buildGooglePrivacyDlpV2beta2InfoTypeTransformation());
  return o;
}

checkUnnamed4080(
    core.List<api.GooglePrivacyDlpV2beta2InfoTypeTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2InfoTypeTransformation(o[0]);
  checkGooglePrivacyDlpV2beta2InfoTypeTransformation(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2InfoTypeTransformations = 0;
buildGooglePrivacyDlpV2beta2InfoTypeTransformations() {
  var o = new api.GooglePrivacyDlpV2beta2InfoTypeTransformations();
  buildCounterGooglePrivacyDlpV2beta2InfoTypeTransformations++;
  if (buildCounterGooglePrivacyDlpV2beta2InfoTypeTransformations < 3) {
    o.transformations = buildUnnamed4080();
  }
  buildCounterGooglePrivacyDlpV2beta2InfoTypeTransformations--;
  return o;
}

checkGooglePrivacyDlpV2beta2InfoTypeTransformations(
    api.GooglePrivacyDlpV2beta2InfoTypeTransformations o) {
  buildCounterGooglePrivacyDlpV2beta2InfoTypeTransformations++;
  if (buildCounterGooglePrivacyDlpV2beta2InfoTypeTransformations < 3) {
    checkUnnamed4080(o.transformations);
  }
  buildCounterGooglePrivacyDlpV2beta2InfoTypeTransformations--;
}

buildUnnamed4081() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2CustomInfoType>();
  o.add(buildGooglePrivacyDlpV2beta2CustomInfoType());
  o.add(buildGooglePrivacyDlpV2beta2CustomInfoType());
  return o;
}

checkUnnamed4081(core.List<api.GooglePrivacyDlpV2beta2CustomInfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2CustomInfoType(o[0]);
  checkGooglePrivacyDlpV2beta2CustomInfoType(o[1]);
}

buildUnnamed4082() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2InfoType>();
  o.add(buildGooglePrivacyDlpV2beta2InfoType());
  o.add(buildGooglePrivacyDlpV2beta2InfoType());
  return o;
}

checkUnnamed4082(core.List<api.GooglePrivacyDlpV2beta2InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2InfoType(o[0]);
  checkGooglePrivacyDlpV2beta2InfoType(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2InspectConfig = 0;
buildGooglePrivacyDlpV2beta2InspectConfig() {
  var o = new api.GooglePrivacyDlpV2beta2InspectConfig();
  buildCounterGooglePrivacyDlpV2beta2InspectConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectConfig < 3) {
    o.customInfoTypes = buildUnnamed4081();
    o.excludeInfoTypes = true;
    o.includeQuote = true;
    o.infoTypes = buildUnnamed4082();
    o.limits = buildGooglePrivacyDlpV2beta2FindingLimits();
    o.minLikelihood = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2InspectConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2InspectConfig(
    api.GooglePrivacyDlpV2beta2InspectConfig o) {
  buildCounterGooglePrivacyDlpV2beta2InspectConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectConfig < 3) {
    checkUnnamed4081(o.customInfoTypes);
    unittest.expect(o.excludeInfoTypes, unittest.isTrue);
    unittest.expect(o.includeQuote, unittest.isTrue);
    checkUnnamed4082(o.infoTypes);
    checkGooglePrivacyDlpV2beta2FindingLimits(o.limits);
    unittest.expect(o.minLikelihood, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2InspectConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta2InspectContentRequest = 0;
buildGooglePrivacyDlpV2beta2InspectContentRequest() {
  var o = new api.GooglePrivacyDlpV2beta2InspectContentRequest();
  buildCounterGooglePrivacyDlpV2beta2InspectContentRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectContentRequest < 3) {
    o.inspectConfig = buildGooglePrivacyDlpV2beta2InspectConfig();
    o.inspectTemplateName = "foo";
    o.item = buildGooglePrivacyDlpV2beta2ContentItem();
  }
  buildCounterGooglePrivacyDlpV2beta2InspectContentRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta2InspectContentRequest(
    api.GooglePrivacyDlpV2beta2InspectContentRequest o) {
  buildCounterGooglePrivacyDlpV2beta2InspectContentRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectContentRequest < 3) {
    checkGooglePrivacyDlpV2beta2InspectConfig(o.inspectConfig);
    unittest.expect(o.inspectTemplateName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2ContentItem(o.item);
  }
  buildCounterGooglePrivacyDlpV2beta2InspectContentRequest--;
}

core.int buildCounterGooglePrivacyDlpV2beta2InspectContentResponse = 0;
buildGooglePrivacyDlpV2beta2InspectContentResponse() {
  var o = new api.GooglePrivacyDlpV2beta2InspectContentResponse();
  buildCounterGooglePrivacyDlpV2beta2InspectContentResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectContentResponse < 3) {
    o.result = buildGooglePrivacyDlpV2beta2InspectResult();
  }
  buildCounterGooglePrivacyDlpV2beta2InspectContentResponse--;
  return o;
}

checkGooglePrivacyDlpV2beta2InspectContentResponse(
    api.GooglePrivacyDlpV2beta2InspectContentResponse o) {
  buildCounterGooglePrivacyDlpV2beta2InspectContentResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectContentResponse < 3) {
    checkGooglePrivacyDlpV2beta2InspectResult(o.result);
  }
  buildCounterGooglePrivacyDlpV2beta2InspectContentResponse--;
}

core.int buildCounterGooglePrivacyDlpV2beta2InspectDataSourceDetails = 0;
buildGooglePrivacyDlpV2beta2InspectDataSourceDetails() {
  var o = new api.GooglePrivacyDlpV2beta2InspectDataSourceDetails();
  buildCounterGooglePrivacyDlpV2beta2InspectDataSourceDetails++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectDataSourceDetails < 3) {
    o.requestedOptions = buildGooglePrivacyDlpV2beta2RequestedOptions();
    o.result = buildGooglePrivacyDlpV2beta2Result();
  }
  buildCounterGooglePrivacyDlpV2beta2InspectDataSourceDetails--;
  return o;
}

checkGooglePrivacyDlpV2beta2InspectDataSourceDetails(
    api.GooglePrivacyDlpV2beta2InspectDataSourceDetails o) {
  buildCounterGooglePrivacyDlpV2beta2InspectDataSourceDetails++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectDataSourceDetails < 3) {
    checkGooglePrivacyDlpV2beta2RequestedOptions(o.requestedOptions);
    checkGooglePrivacyDlpV2beta2Result(o.result);
  }
  buildCounterGooglePrivacyDlpV2beta2InspectDataSourceDetails--;
}

core.int buildCounterGooglePrivacyDlpV2beta2InspectDataSourceRequest = 0;
buildGooglePrivacyDlpV2beta2InspectDataSourceRequest() {
  var o = new api.GooglePrivacyDlpV2beta2InspectDataSourceRequest();
  buildCounterGooglePrivacyDlpV2beta2InspectDataSourceRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectDataSourceRequest < 3) {
    o.jobConfig = buildGooglePrivacyDlpV2beta2InspectJobConfig();
    o.jobId = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2InspectDataSourceRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta2InspectDataSourceRequest(
    api.GooglePrivacyDlpV2beta2InspectDataSourceRequest o) {
  buildCounterGooglePrivacyDlpV2beta2InspectDataSourceRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectDataSourceRequest < 3) {
    checkGooglePrivacyDlpV2beta2InspectJobConfig(o.jobConfig);
    unittest.expect(o.jobId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2InspectDataSourceRequest--;
}

buildUnnamed4083() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2Action>();
  o.add(buildGooglePrivacyDlpV2beta2Action());
  o.add(buildGooglePrivacyDlpV2beta2Action());
  return o;
}

checkUnnamed4083(core.List<api.GooglePrivacyDlpV2beta2Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2Action(o[0]);
  checkGooglePrivacyDlpV2beta2Action(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2InspectJobConfig = 0;
buildGooglePrivacyDlpV2beta2InspectJobConfig() {
  var o = new api.GooglePrivacyDlpV2beta2InspectJobConfig();
  buildCounterGooglePrivacyDlpV2beta2InspectJobConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectJobConfig < 3) {
    o.actions = buildUnnamed4083();
    o.inspectConfig = buildGooglePrivacyDlpV2beta2InspectConfig();
    o.inspectTemplateName = "foo";
    o.outputConfig = buildGooglePrivacyDlpV2beta2OutputStorageConfig();
    o.storageConfig = buildGooglePrivacyDlpV2beta2StorageConfig();
  }
  buildCounterGooglePrivacyDlpV2beta2InspectJobConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2InspectJobConfig(
    api.GooglePrivacyDlpV2beta2InspectJobConfig o) {
  buildCounterGooglePrivacyDlpV2beta2InspectJobConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectJobConfig < 3) {
    checkUnnamed4083(o.actions);
    checkGooglePrivacyDlpV2beta2InspectConfig(o.inspectConfig);
    unittest.expect(o.inspectTemplateName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2OutputStorageConfig(o.outputConfig);
    checkGooglePrivacyDlpV2beta2StorageConfig(o.storageConfig);
  }
  buildCounterGooglePrivacyDlpV2beta2InspectJobConfig--;
}

buildUnnamed4084() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2Finding>();
  o.add(buildGooglePrivacyDlpV2beta2Finding());
  o.add(buildGooglePrivacyDlpV2beta2Finding());
  return o;
}

checkUnnamed4084(core.List<api.GooglePrivacyDlpV2beta2Finding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2Finding(o[0]);
  checkGooglePrivacyDlpV2beta2Finding(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2InspectResult = 0;
buildGooglePrivacyDlpV2beta2InspectResult() {
  var o = new api.GooglePrivacyDlpV2beta2InspectResult();
  buildCounterGooglePrivacyDlpV2beta2InspectResult++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectResult < 3) {
    o.findings = buildUnnamed4084();
    o.findingsTruncated = true;
  }
  buildCounterGooglePrivacyDlpV2beta2InspectResult--;
  return o;
}

checkGooglePrivacyDlpV2beta2InspectResult(
    api.GooglePrivacyDlpV2beta2InspectResult o) {
  buildCounterGooglePrivacyDlpV2beta2InspectResult++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectResult < 3) {
    checkUnnamed4084(o.findings);
    unittest.expect(o.findingsTruncated, unittest.isTrue);
  }
  buildCounterGooglePrivacyDlpV2beta2InspectResult--;
}

core.int buildCounterGooglePrivacyDlpV2beta2InspectTemplate = 0;
buildGooglePrivacyDlpV2beta2InspectTemplate() {
  var o = new api.GooglePrivacyDlpV2beta2InspectTemplate();
  buildCounterGooglePrivacyDlpV2beta2InspectTemplate++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectTemplate < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.inspectConfig = buildGooglePrivacyDlpV2beta2InspectConfig();
    o.name = "foo";
    o.updateTime = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2InspectTemplate--;
  return o;
}

checkGooglePrivacyDlpV2beta2InspectTemplate(
    api.GooglePrivacyDlpV2beta2InspectTemplate o) {
  buildCounterGooglePrivacyDlpV2beta2InspectTemplate++;
  if (buildCounterGooglePrivacyDlpV2beta2InspectTemplate < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2InspectConfig(o.inspectConfig);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2InspectTemplate--;
}

buildUnnamed4085() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2Error>();
  o.add(buildGooglePrivacyDlpV2beta2Error());
  o.add(buildGooglePrivacyDlpV2beta2Error());
  return o;
}

checkUnnamed4085(core.List<api.GooglePrivacyDlpV2beta2Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2Error(o[0]);
  checkGooglePrivacyDlpV2beta2Error(o[1]);
}

buildUnnamed4086() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2Trigger>();
  o.add(buildGooglePrivacyDlpV2beta2Trigger());
  o.add(buildGooglePrivacyDlpV2beta2Trigger());
  return o;
}

checkUnnamed4086(core.List<api.GooglePrivacyDlpV2beta2Trigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2Trigger(o[0]);
  checkGooglePrivacyDlpV2beta2Trigger(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2JobTrigger = 0;
buildGooglePrivacyDlpV2beta2JobTrigger() {
  var o = new api.GooglePrivacyDlpV2beta2JobTrigger();
  buildCounterGooglePrivacyDlpV2beta2JobTrigger++;
  if (buildCounterGooglePrivacyDlpV2beta2JobTrigger < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.errors = buildUnnamed4085();
    o.inspectJob = buildGooglePrivacyDlpV2beta2InspectJobConfig();
    o.lastRunTime = "foo";
    o.name = "foo";
    o.status = "foo";
    o.triggers = buildUnnamed4086();
    o.updateTime = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2JobTrigger--;
  return o;
}

checkGooglePrivacyDlpV2beta2JobTrigger(
    api.GooglePrivacyDlpV2beta2JobTrigger o) {
  buildCounterGooglePrivacyDlpV2beta2JobTrigger++;
  if (buildCounterGooglePrivacyDlpV2beta2JobTrigger < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed4085(o.errors);
    checkGooglePrivacyDlpV2beta2InspectJobConfig(o.inspectJob);
    unittest.expect(o.lastRunTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed4086(o.triggers);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2JobTrigger--;
}

buildUnnamed4087() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2FieldId>();
  o.add(buildGooglePrivacyDlpV2beta2FieldId());
  o.add(buildGooglePrivacyDlpV2beta2FieldId());
  return o;
}

checkUnnamed4087(core.List<api.GooglePrivacyDlpV2beta2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2FieldId(o[0]);
  checkGooglePrivacyDlpV2beta2FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2KAnonymityConfig = 0;
buildGooglePrivacyDlpV2beta2KAnonymityConfig() {
  var o = new api.GooglePrivacyDlpV2beta2KAnonymityConfig();
  buildCounterGooglePrivacyDlpV2beta2KAnonymityConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2KAnonymityConfig < 3) {
    o.entityId = buildGooglePrivacyDlpV2beta2EntityId();
    o.quasiIds = buildUnnamed4087();
  }
  buildCounterGooglePrivacyDlpV2beta2KAnonymityConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2KAnonymityConfig(
    api.GooglePrivacyDlpV2beta2KAnonymityConfig o) {
  buildCounterGooglePrivacyDlpV2beta2KAnonymityConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2KAnonymityConfig < 3) {
    checkGooglePrivacyDlpV2beta2EntityId(o.entityId);
    checkUnnamed4087(o.quasiIds);
  }
  buildCounterGooglePrivacyDlpV2beta2KAnonymityConfig--;
}

buildUnnamed4088() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2Value>();
  o.add(buildGooglePrivacyDlpV2beta2Value());
  o.add(buildGooglePrivacyDlpV2beta2Value());
  return o;
}

checkUnnamed4088(core.List<api.GooglePrivacyDlpV2beta2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2Value(o[0]);
  checkGooglePrivacyDlpV2beta2Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2KAnonymityEquivalenceClass = 0;
buildGooglePrivacyDlpV2beta2KAnonymityEquivalenceClass() {
  var o = new api.GooglePrivacyDlpV2beta2KAnonymityEquivalenceClass();
  buildCounterGooglePrivacyDlpV2beta2KAnonymityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2beta2KAnonymityEquivalenceClass < 3) {
    o.equivalenceClassSize = "foo";
    o.quasiIdsValues = buildUnnamed4088();
  }
  buildCounterGooglePrivacyDlpV2beta2KAnonymityEquivalenceClass--;
  return o;
}

checkGooglePrivacyDlpV2beta2KAnonymityEquivalenceClass(
    api.GooglePrivacyDlpV2beta2KAnonymityEquivalenceClass o) {
  buildCounterGooglePrivacyDlpV2beta2KAnonymityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2beta2KAnonymityEquivalenceClass < 3) {
    unittest.expect(o.equivalenceClassSize, unittest.equals('foo'));
    checkUnnamed4088(o.quasiIdsValues);
  }
  buildCounterGooglePrivacyDlpV2beta2KAnonymityEquivalenceClass--;
}

buildUnnamed4089() {
  var o =
      new core.List<api.GooglePrivacyDlpV2beta2KAnonymityEquivalenceClass>();
  o.add(buildGooglePrivacyDlpV2beta2KAnonymityEquivalenceClass());
  o.add(buildGooglePrivacyDlpV2beta2KAnonymityEquivalenceClass());
  return o;
}

checkUnnamed4089(
    core.List<api.GooglePrivacyDlpV2beta2KAnonymityEquivalenceClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2KAnonymityEquivalenceClass(o[0]);
  checkGooglePrivacyDlpV2beta2KAnonymityEquivalenceClass(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2KAnonymityHistogramBucket = 0;
buildGooglePrivacyDlpV2beta2KAnonymityHistogramBucket() {
  var o = new api.GooglePrivacyDlpV2beta2KAnonymityHistogramBucket();
  buildCounterGooglePrivacyDlpV2beta2KAnonymityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta2KAnonymityHistogramBucket < 3) {
    o.bucketSize = "foo";
    o.bucketValues = buildUnnamed4089();
    o.equivalenceClassSizeLowerBound = "foo";
    o.equivalenceClassSizeUpperBound = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2KAnonymityHistogramBucket--;
  return o;
}

checkGooglePrivacyDlpV2beta2KAnonymityHistogramBucket(
    api.GooglePrivacyDlpV2beta2KAnonymityHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2beta2KAnonymityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta2KAnonymityHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    checkUnnamed4089(o.bucketValues);
    unittest.expect(o.equivalenceClassSizeLowerBound, unittest.equals('foo'));
    unittest.expect(o.equivalenceClassSizeUpperBound, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2KAnonymityHistogramBucket--;
}

buildUnnamed4090() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2KAnonymityHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2beta2KAnonymityHistogramBucket());
  o.add(buildGooglePrivacyDlpV2beta2KAnonymityHistogramBucket());
  return o;
}

checkUnnamed4090(
    core.List<api.GooglePrivacyDlpV2beta2KAnonymityHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2KAnonymityHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2beta2KAnonymityHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2KAnonymityResult = 0;
buildGooglePrivacyDlpV2beta2KAnonymityResult() {
  var o = new api.GooglePrivacyDlpV2beta2KAnonymityResult();
  buildCounterGooglePrivacyDlpV2beta2KAnonymityResult++;
  if (buildCounterGooglePrivacyDlpV2beta2KAnonymityResult < 3) {
    o.equivalenceClassHistogramBuckets = buildUnnamed4090();
  }
  buildCounterGooglePrivacyDlpV2beta2KAnonymityResult--;
  return o;
}

checkGooglePrivacyDlpV2beta2KAnonymityResult(
    api.GooglePrivacyDlpV2beta2KAnonymityResult o) {
  buildCounterGooglePrivacyDlpV2beta2KAnonymityResult++;
  if (buildCounterGooglePrivacyDlpV2beta2KAnonymityResult < 3) {
    checkUnnamed4090(o.equivalenceClassHistogramBuckets);
  }
  buildCounterGooglePrivacyDlpV2beta2KAnonymityResult--;
}

buildUnnamed4091() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2AuxiliaryTable>();
  o.add(buildGooglePrivacyDlpV2beta2AuxiliaryTable());
  o.add(buildGooglePrivacyDlpV2beta2AuxiliaryTable());
  return o;
}

checkUnnamed4091(core.List<api.GooglePrivacyDlpV2beta2AuxiliaryTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2AuxiliaryTable(o[0]);
  checkGooglePrivacyDlpV2beta2AuxiliaryTable(o[1]);
}

buildUnnamed4092() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2TaggedField>();
  o.add(buildGooglePrivacyDlpV2beta2TaggedField());
  o.add(buildGooglePrivacyDlpV2beta2TaggedField());
  return o;
}

checkUnnamed4092(core.List<api.GooglePrivacyDlpV2beta2TaggedField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2TaggedField(o[0]);
  checkGooglePrivacyDlpV2beta2TaggedField(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2KMapEstimationConfig = 0;
buildGooglePrivacyDlpV2beta2KMapEstimationConfig() {
  var o = new api.GooglePrivacyDlpV2beta2KMapEstimationConfig();
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2KMapEstimationConfig < 3) {
    o.auxiliaryTables = buildUnnamed4091();
    o.quasiIds = buildUnnamed4092();
    o.regionCode = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2KMapEstimationConfig(
    api.GooglePrivacyDlpV2beta2KMapEstimationConfig o) {
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2KMapEstimationConfig < 3) {
    checkUnnamed4091(o.auxiliaryTables);
    checkUnnamed4092(o.quasiIds);
    unittest.expect(o.regionCode, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationConfig--;
}

buildUnnamed4093() {
  var o =
      new core.List<api.GooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues>();
  o.add(buildGooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues());
  o.add(buildGooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues());
  return o;
}

checkUnnamed4093(
    core.List<api.GooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues(o[0]);
  checkGooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2KMapEstimationHistogramBucket = 0;
buildGooglePrivacyDlpV2beta2KMapEstimationHistogramBucket() {
  var o = new api.GooglePrivacyDlpV2beta2KMapEstimationHistogramBucket();
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta2KMapEstimationHistogramBucket < 3) {
    o.bucketSize = "foo";
    o.bucketValues = buildUnnamed4093();
    o.maxAnonymity = "foo";
    o.minAnonymity = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationHistogramBucket--;
  return o;
}

checkGooglePrivacyDlpV2beta2KMapEstimationHistogramBucket(
    api.GooglePrivacyDlpV2beta2KMapEstimationHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta2KMapEstimationHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    checkUnnamed4093(o.bucketValues);
    unittest.expect(o.maxAnonymity, unittest.equals('foo'));
    unittest.expect(o.minAnonymity, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationHistogramBucket--;
}

buildUnnamed4094() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2Value>();
  o.add(buildGooglePrivacyDlpV2beta2Value());
  o.add(buildGooglePrivacyDlpV2beta2Value());
  return o;
}

checkUnnamed4094(core.List<api.GooglePrivacyDlpV2beta2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2Value(o[0]);
  checkGooglePrivacyDlpV2beta2Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues = 0;
buildGooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues() {
  var o = new api.GooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues();
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues < 3) {
    o.estimatedAnonymity = "foo";
    o.quasiIdsValues = buildUnnamed4094();
  }
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues--;
  return o;
}

checkGooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues(
    api.GooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues o) {
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues < 3) {
    unittest.expect(o.estimatedAnonymity, unittest.equals('foo'));
    checkUnnamed4094(o.quasiIdsValues);
  }
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues--;
}

buildUnnamed4095() {
  var o =
      new core.List<api.GooglePrivacyDlpV2beta2KMapEstimationHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2beta2KMapEstimationHistogramBucket());
  o.add(buildGooglePrivacyDlpV2beta2KMapEstimationHistogramBucket());
  return o;
}

checkUnnamed4095(
    core.List<api.GooglePrivacyDlpV2beta2KMapEstimationHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2KMapEstimationHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2beta2KMapEstimationHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2KMapEstimationResult = 0;
buildGooglePrivacyDlpV2beta2KMapEstimationResult() {
  var o = new api.GooglePrivacyDlpV2beta2KMapEstimationResult();
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2beta2KMapEstimationResult < 3) {
    o.kMapEstimationHistogram = buildUnnamed4095();
  }
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationResult--;
  return o;
}

checkGooglePrivacyDlpV2beta2KMapEstimationResult(
    api.GooglePrivacyDlpV2beta2KMapEstimationResult o) {
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2beta2KMapEstimationResult < 3) {
    checkUnnamed4095(o.kMapEstimationHistogram);
  }
  buildCounterGooglePrivacyDlpV2beta2KMapEstimationResult--;
}

buildUnnamed4096() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2PathElement>();
  o.add(buildGooglePrivacyDlpV2beta2PathElement());
  o.add(buildGooglePrivacyDlpV2beta2PathElement());
  return o;
}

checkUnnamed4096(core.List<api.GooglePrivacyDlpV2beta2PathElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2PathElement(o[0]);
  checkGooglePrivacyDlpV2beta2PathElement(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2Key = 0;
buildGooglePrivacyDlpV2beta2Key() {
  var o = new api.GooglePrivacyDlpV2beta2Key();
  buildCounterGooglePrivacyDlpV2beta2Key++;
  if (buildCounterGooglePrivacyDlpV2beta2Key < 3) {
    o.partitionId = buildGooglePrivacyDlpV2beta2PartitionId();
    o.path = buildUnnamed4096();
  }
  buildCounterGooglePrivacyDlpV2beta2Key--;
  return o;
}

checkGooglePrivacyDlpV2beta2Key(api.GooglePrivacyDlpV2beta2Key o) {
  buildCounterGooglePrivacyDlpV2beta2Key++;
  if (buildCounterGooglePrivacyDlpV2beta2Key < 3) {
    checkGooglePrivacyDlpV2beta2PartitionId(o.partitionId);
    checkUnnamed4096(o.path);
  }
  buildCounterGooglePrivacyDlpV2beta2Key--;
}

core.int buildCounterGooglePrivacyDlpV2beta2KindExpression = 0;
buildGooglePrivacyDlpV2beta2KindExpression() {
  var o = new api.GooglePrivacyDlpV2beta2KindExpression();
  buildCounterGooglePrivacyDlpV2beta2KindExpression++;
  if (buildCounterGooglePrivacyDlpV2beta2KindExpression < 3) {
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2KindExpression--;
  return o;
}

checkGooglePrivacyDlpV2beta2KindExpression(
    api.GooglePrivacyDlpV2beta2KindExpression o) {
  buildCounterGooglePrivacyDlpV2beta2KindExpression++;
  if (buildCounterGooglePrivacyDlpV2beta2KindExpression < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2KindExpression--;
}

core.int buildCounterGooglePrivacyDlpV2beta2KmsWrappedCryptoKey = 0;
buildGooglePrivacyDlpV2beta2KmsWrappedCryptoKey() {
  var o = new api.GooglePrivacyDlpV2beta2KmsWrappedCryptoKey();
  buildCounterGooglePrivacyDlpV2beta2KmsWrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta2KmsWrappedCryptoKey < 3) {
    o.cryptoKeyName = "foo";
    o.wrappedKey = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2KmsWrappedCryptoKey--;
  return o;
}

checkGooglePrivacyDlpV2beta2KmsWrappedCryptoKey(
    api.GooglePrivacyDlpV2beta2KmsWrappedCryptoKey o) {
  buildCounterGooglePrivacyDlpV2beta2KmsWrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta2KmsWrappedCryptoKey < 3) {
    unittest.expect(o.cryptoKeyName, unittest.equals('foo'));
    unittest.expect(o.wrappedKey, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2KmsWrappedCryptoKey--;
}

buildUnnamed4097() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2FieldId>();
  o.add(buildGooglePrivacyDlpV2beta2FieldId());
  o.add(buildGooglePrivacyDlpV2beta2FieldId());
  return o;
}

checkUnnamed4097(core.List<api.GooglePrivacyDlpV2beta2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2FieldId(o[0]);
  checkGooglePrivacyDlpV2beta2FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2LDiversityConfig = 0;
buildGooglePrivacyDlpV2beta2LDiversityConfig() {
  var o = new api.GooglePrivacyDlpV2beta2LDiversityConfig();
  buildCounterGooglePrivacyDlpV2beta2LDiversityConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2LDiversityConfig < 3) {
    o.quasiIds = buildUnnamed4097();
    o.sensitiveAttribute = buildGooglePrivacyDlpV2beta2FieldId();
  }
  buildCounterGooglePrivacyDlpV2beta2LDiversityConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2LDiversityConfig(
    api.GooglePrivacyDlpV2beta2LDiversityConfig o) {
  buildCounterGooglePrivacyDlpV2beta2LDiversityConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2LDiversityConfig < 3) {
    checkUnnamed4097(o.quasiIds);
    checkGooglePrivacyDlpV2beta2FieldId(o.sensitiveAttribute);
  }
  buildCounterGooglePrivacyDlpV2beta2LDiversityConfig--;
}

buildUnnamed4098() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2Value>();
  o.add(buildGooglePrivacyDlpV2beta2Value());
  o.add(buildGooglePrivacyDlpV2beta2Value());
  return o;
}

checkUnnamed4098(core.List<api.GooglePrivacyDlpV2beta2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2Value(o[0]);
  checkGooglePrivacyDlpV2beta2Value(o[1]);
}

buildUnnamed4099() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2ValueFrequency>();
  o.add(buildGooglePrivacyDlpV2beta2ValueFrequency());
  o.add(buildGooglePrivacyDlpV2beta2ValueFrequency());
  return o;
}

checkUnnamed4099(core.List<api.GooglePrivacyDlpV2beta2ValueFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2ValueFrequency(o[0]);
  checkGooglePrivacyDlpV2beta2ValueFrequency(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2LDiversityEquivalenceClass = 0;
buildGooglePrivacyDlpV2beta2LDiversityEquivalenceClass() {
  var o = new api.GooglePrivacyDlpV2beta2LDiversityEquivalenceClass();
  buildCounterGooglePrivacyDlpV2beta2LDiversityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2beta2LDiversityEquivalenceClass < 3) {
    o.equivalenceClassSize = "foo";
    o.numDistinctSensitiveValues = "foo";
    o.quasiIdsValues = buildUnnamed4098();
    o.topSensitiveValues = buildUnnamed4099();
  }
  buildCounterGooglePrivacyDlpV2beta2LDiversityEquivalenceClass--;
  return o;
}

checkGooglePrivacyDlpV2beta2LDiversityEquivalenceClass(
    api.GooglePrivacyDlpV2beta2LDiversityEquivalenceClass o) {
  buildCounterGooglePrivacyDlpV2beta2LDiversityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2beta2LDiversityEquivalenceClass < 3) {
    unittest.expect(o.equivalenceClassSize, unittest.equals('foo'));
    unittest.expect(o.numDistinctSensitiveValues, unittest.equals('foo'));
    checkUnnamed4098(o.quasiIdsValues);
    checkUnnamed4099(o.topSensitiveValues);
  }
  buildCounterGooglePrivacyDlpV2beta2LDiversityEquivalenceClass--;
}

buildUnnamed4100() {
  var o =
      new core.List<api.GooglePrivacyDlpV2beta2LDiversityEquivalenceClass>();
  o.add(buildGooglePrivacyDlpV2beta2LDiversityEquivalenceClass());
  o.add(buildGooglePrivacyDlpV2beta2LDiversityEquivalenceClass());
  return o;
}

checkUnnamed4100(
    core.List<api.GooglePrivacyDlpV2beta2LDiversityEquivalenceClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2LDiversityEquivalenceClass(o[0]);
  checkGooglePrivacyDlpV2beta2LDiversityEquivalenceClass(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2LDiversityHistogramBucket = 0;
buildGooglePrivacyDlpV2beta2LDiversityHistogramBucket() {
  var o = new api.GooglePrivacyDlpV2beta2LDiversityHistogramBucket();
  buildCounterGooglePrivacyDlpV2beta2LDiversityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta2LDiversityHistogramBucket < 3) {
    o.bucketSize = "foo";
    o.bucketValues = buildUnnamed4100();
    o.sensitiveValueFrequencyLowerBound = "foo";
    o.sensitiveValueFrequencyUpperBound = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2LDiversityHistogramBucket--;
  return o;
}

checkGooglePrivacyDlpV2beta2LDiversityHistogramBucket(
    api.GooglePrivacyDlpV2beta2LDiversityHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2beta2LDiversityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2beta2LDiversityHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    checkUnnamed4100(o.bucketValues);
    unittest.expect(
        o.sensitiveValueFrequencyLowerBound, unittest.equals('foo'));
    unittest.expect(
        o.sensitiveValueFrequencyUpperBound, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2LDiversityHistogramBucket--;
}

buildUnnamed4101() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2LDiversityHistogramBucket>();
  o.add(buildGooglePrivacyDlpV2beta2LDiversityHistogramBucket());
  o.add(buildGooglePrivacyDlpV2beta2LDiversityHistogramBucket());
  return o;
}

checkUnnamed4101(
    core.List<api.GooglePrivacyDlpV2beta2LDiversityHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2LDiversityHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2beta2LDiversityHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2LDiversityResult = 0;
buildGooglePrivacyDlpV2beta2LDiversityResult() {
  var o = new api.GooglePrivacyDlpV2beta2LDiversityResult();
  buildCounterGooglePrivacyDlpV2beta2LDiversityResult++;
  if (buildCounterGooglePrivacyDlpV2beta2LDiversityResult < 3) {
    o.sensitiveValueFrequencyHistogramBuckets = buildUnnamed4101();
  }
  buildCounterGooglePrivacyDlpV2beta2LDiversityResult--;
  return o;
}

checkGooglePrivacyDlpV2beta2LDiversityResult(
    api.GooglePrivacyDlpV2beta2LDiversityResult o) {
  buildCounterGooglePrivacyDlpV2beta2LDiversityResult++;
  if (buildCounterGooglePrivacyDlpV2beta2LDiversityResult < 3) {
    checkUnnamed4101(o.sensitiveValueFrequencyHistogramBuckets);
  }
  buildCounterGooglePrivacyDlpV2beta2LDiversityResult--;
}

core.int buildCounterGooglePrivacyDlpV2beta2LikelihoodAdjustment = 0;
buildGooglePrivacyDlpV2beta2LikelihoodAdjustment() {
  var o = new api.GooglePrivacyDlpV2beta2LikelihoodAdjustment();
  buildCounterGooglePrivacyDlpV2beta2LikelihoodAdjustment++;
  if (buildCounterGooglePrivacyDlpV2beta2LikelihoodAdjustment < 3) {
    o.fixedLikelihood = "foo";
    o.relativeLikelihood = 42;
  }
  buildCounterGooglePrivacyDlpV2beta2LikelihoodAdjustment--;
  return o;
}

checkGooglePrivacyDlpV2beta2LikelihoodAdjustment(
    api.GooglePrivacyDlpV2beta2LikelihoodAdjustment o) {
  buildCounterGooglePrivacyDlpV2beta2LikelihoodAdjustment++;
  if (buildCounterGooglePrivacyDlpV2beta2LikelihoodAdjustment < 3) {
    unittest.expect(o.fixedLikelihood, unittest.equals('foo'));
    unittest.expect(o.relativeLikelihood, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2beta2LikelihoodAdjustment--;
}

buildUnnamed4102() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2DeidentifyTemplate>();
  o.add(buildGooglePrivacyDlpV2beta2DeidentifyTemplate());
  o.add(buildGooglePrivacyDlpV2beta2DeidentifyTemplate());
  return o;
}

checkUnnamed4102(core.List<api.GooglePrivacyDlpV2beta2DeidentifyTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2DeidentifyTemplate(o[0]);
  checkGooglePrivacyDlpV2beta2DeidentifyTemplate(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse = 0;
buildGooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse() {
  var o = new api.GooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse();
  buildCounterGooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse < 3) {
    o.deidentifyTemplates = buildUnnamed4102();
    o.nextPageToken = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse--;
  return o;
}

checkGooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse(
    api.GooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse o) {
  buildCounterGooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse < 3) {
    checkUnnamed4102(o.deidentifyTemplates);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse--;
}

buildUnnamed4103() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2DlpJob>();
  o.add(buildGooglePrivacyDlpV2beta2DlpJob());
  o.add(buildGooglePrivacyDlpV2beta2DlpJob());
  return o;
}

checkUnnamed4103(core.List<api.GooglePrivacyDlpV2beta2DlpJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2DlpJob(o[0]);
  checkGooglePrivacyDlpV2beta2DlpJob(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2ListDlpJobsResponse = 0;
buildGooglePrivacyDlpV2beta2ListDlpJobsResponse() {
  var o = new api.GooglePrivacyDlpV2beta2ListDlpJobsResponse();
  buildCounterGooglePrivacyDlpV2beta2ListDlpJobsResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2ListDlpJobsResponse < 3) {
    o.jobs = buildUnnamed4103();
    o.nextPageToken = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2ListDlpJobsResponse--;
  return o;
}

checkGooglePrivacyDlpV2beta2ListDlpJobsResponse(
    api.GooglePrivacyDlpV2beta2ListDlpJobsResponse o) {
  buildCounterGooglePrivacyDlpV2beta2ListDlpJobsResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2ListDlpJobsResponse < 3) {
    checkUnnamed4103(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2ListDlpJobsResponse--;
}

buildUnnamed4104() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2InfoTypeDescription>();
  o.add(buildGooglePrivacyDlpV2beta2InfoTypeDescription());
  o.add(buildGooglePrivacyDlpV2beta2InfoTypeDescription());
  return o;
}

checkUnnamed4104(core.List<api.GooglePrivacyDlpV2beta2InfoTypeDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2InfoTypeDescription(o[0]);
  checkGooglePrivacyDlpV2beta2InfoTypeDescription(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2ListInfoTypesResponse = 0;
buildGooglePrivacyDlpV2beta2ListInfoTypesResponse() {
  var o = new api.GooglePrivacyDlpV2beta2ListInfoTypesResponse();
  buildCounterGooglePrivacyDlpV2beta2ListInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2ListInfoTypesResponse < 3) {
    o.infoTypes = buildUnnamed4104();
  }
  buildCounterGooglePrivacyDlpV2beta2ListInfoTypesResponse--;
  return o;
}

checkGooglePrivacyDlpV2beta2ListInfoTypesResponse(
    api.GooglePrivacyDlpV2beta2ListInfoTypesResponse o) {
  buildCounterGooglePrivacyDlpV2beta2ListInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2ListInfoTypesResponse < 3) {
    checkUnnamed4104(o.infoTypes);
  }
  buildCounterGooglePrivacyDlpV2beta2ListInfoTypesResponse--;
}

buildUnnamed4105() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2InspectTemplate>();
  o.add(buildGooglePrivacyDlpV2beta2InspectTemplate());
  o.add(buildGooglePrivacyDlpV2beta2InspectTemplate());
  return o;
}

checkUnnamed4105(core.List<api.GooglePrivacyDlpV2beta2InspectTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2InspectTemplate(o[0]);
  checkGooglePrivacyDlpV2beta2InspectTemplate(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2ListInspectTemplatesResponse = 0;
buildGooglePrivacyDlpV2beta2ListInspectTemplatesResponse() {
  var o = new api.GooglePrivacyDlpV2beta2ListInspectTemplatesResponse();
  buildCounterGooglePrivacyDlpV2beta2ListInspectTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2ListInspectTemplatesResponse < 3) {
    o.inspectTemplates = buildUnnamed4105();
    o.nextPageToken = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2ListInspectTemplatesResponse--;
  return o;
}

checkGooglePrivacyDlpV2beta2ListInspectTemplatesResponse(
    api.GooglePrivacyDlpV2beta2ListInspectTemplatesResponse o) {
  buildCounterGooglePrivacyDlpV2beta2ListInspectTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2ListInspectTemplatesResponse < 3) {
    checkUnnamed4105(o.inspectTemplates);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2ListInspectTemplatesResponse--;
}

buildUnnamed4106() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2JobTrigger>();
  o.add(buildGooglePrivacyDlpV2beta2JobTrigger());
  o.add(buildGooglePrivacyDlpV2beta2JobTrigger());
  return o;
}

checkUnnamed4106(core.List<api.GooglePrivacyDlpV2beta2JobTrigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2JobTrigger(o[0]);
  checkGooglePrivacyDlpV2beta2JobTrigger(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2ListJobTriggersResponse = 0;
buildGooglePrivacyDlpV2beta2ListJobTriggersResponse() {
  var o = new api.GooglePrivacyDlpV2beta2ListJobTriggersResponse();
  buildCounterGooglePrivacyDlpV2beta2ListJobTriggersResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2ListJobTriggersResponse < 3) {
    o.jobTriggers = buildUnnamed4106();
    o.nextPageToken = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2ListJobTriggersResponse--;
  return o;
}

checkGooglePrivacyDlpV2beta2ListJobTriggersResponse(
    api.GooglePrivacyDlpV2beta2ListJobTriggersResponse o) {
  buildCounterGooglePrivacyDlpV2beta2ListJobTriggersResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2ListJobTriggersResponse < 3) {
    checkUnnamed4106(o.jobTriggers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2ListJobTriggersResponse--;
}

buildUnnamed4107() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2ImageLocation>();
  o.add(buildGooglePrivacyDlpV2beta2ImageLocation());
  o.add(buildGooglePrivacyDlpV2beta2ImageLocation());
  return o;
}

checkUnnamed4107(core.List<api.GooglePrivacyDlpV2beta2ImageLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2ImageLocation(o[0]);
  checkGooglePrivacyDlpV2beta2ImageLocation(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2Location = 0;
buildGooglePrivacyDlpV2beta2Location() {
  var o = new api.GooglePrivacyDlpV2beta2Location();
  buildCounterGooglePrivacyDlpV2beta2Location++;
  if (buildCounterGooglePrivacyDlpV2beta2Location < 3) {
    o.byteRange = buildGooglePrivacyDlpV2beta2Range();
    o.codepointRange = buildGooglePrivacyDlpV2beta2Range();
    o.fieldId = buildGooglePrivacyDlpV2beta2FieldId();
    o.imageBoxes = buildUnnamed4107();
    o.recordKey = buildGooglePrivacyDlpV2beta2RecordKey();
    o.tableLocation = buildGooglePrivacyDlpV2beta2TableLocation();
  }
  buildCounterGooglePrivacyDlpV2beta2Location--;
  return o;
}

checkGooglePrivacyDlpV2beta2Location(api.GooglePrivacyDlpV2beta2Location o) {
  buildCounterGooglePrivacyDlpV2beta2Location++;
  if (buildCounterGooglePrivacyDlpV2beta2Location < 3) {
    checkGooglePrivacyDlpV2beta2Range(o.byteRange);
    checkGooglePrivacyDlpV2beta2Range(o.codepointRange);
    checkGooglePrivacyDlpV2beta2FieldId(o.fieldId);
    checkUnnamed4107(o.imageBoxes);
    checkGooglePrivacyDlpV2beta2RecordKey(o.recordKey);
    checkGooglePrivacyDlpV2beta2TableLocation(o.tableLocation);
  }
  buildCounterGooglePrivacyDlpV2beta2Location--;
}

core.int buildCounterGooglePrivacyDlpV2beta2NumericalStatsConfig = 0;
buildGooglePrivacyDlpV2beta2NumericalStatsConfig() {
  var o = new api.GooglePrivacyDlpV2beta2NumericalStatsConfig();
  buildCounterGooglePrivacyDlpV2beta2NumericalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2NumericalStatsConfig < 3) {
    o.field = buildGooglePrivacyDlpV2beta2FieldId();
  }
  buildCounterGooglePrivacyDlpV2beta2NumericalStatsConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2NumericalStatsConfig(
    api.GooglePrivacyDlpV2beta2NumericalStatsConfig o) {
  buildCounterGooglePrivacyDlpV2beta2NumericalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2NumericalStatsConfig < 3) {
    checkGooglePrivacyDlpV2beta2FieldId(o.field);
  }
  buildCounterGooglePrivacyDlpV2beta2NumericalStatsConfig--;
}

buildUnnamed4108() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2Value>();
  o.add(buildGooglePrivacyDlpV2beta2Value());
  o.add(buildGooglePrivacyDlpV2beta2Value());
  return o;
}

checkUnnamed4108(core.List<api.GooglePrivacyDlpV2beta2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2Value(o[0]);
  checkGooglePrivacyDlpV2beta2Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2NumericalStatsResult = 0;
buildGooglePrivacyDlpV2beta2NumericalStatsResult() {
  var o = new api.GooglePrivacyDlpV2beta2NumericalStatsResult();
  buildCounterGooglePrivacyDlpV2beta2NumericalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2beta2NumericalStatsResult < 3) {
    o.maxValue = buildGooglePrivacyDlpV2beta2Value();
    o.minValue = buildGooglePrivacyDlpV2beta2Value();
    o.quantileValues = buildUnnamed4108();
  }
  buildCounterGooglePrivacyDlpV2beta2NumericalStatsResult--;
  return o;
}

checkGooglePrivacyDlpV2beta2NumericalStatsResult(
    api.GooglePrivacyDlpV2beta2NumericalStatsResult o) {
  buildCounterGooglePrivacyDlpV2beta2NumericalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2beta2NumericalStatsResult < 3) {
    checkGooglePrivacyDlpV2beta2Value(o.maxValue);
    checkGooglePrivacyDlpV2beta2Value(o.minValue);
    checkUnnamed4108(o.quantileValues);
  }
  buildCounterGooglePrivacyDlpV2beta2NumericalStatsResult--;
}

core.int buildCounterGooglePrivacyDlpV2beta2OutputStorageConfig = 0;
buildGooglePrivacyDlpV2beta2OutputStorageConfig() {
  var o = new api.GooglePrivacyDlpV2beta2OutputStorageConfig();
  buildCounterGooglePrivacyDlpV2beta2OutputStorageConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2OutputStorageConfig < 3) {
    o.table = buildGooglePrivacyDlpV2beta2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2beta2OutputStorageConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2OutputStorageConfig(
    api.GooglePrivacyDlpV2beta2OutputStorageConfig o) {
  buildCounterGooglePrivacyDlpV2beta2OutputStorageConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2OutputStorageConfig < 3) {
    checkGooglePrivacyDlpV2beta2BigQueryTable(o.table);
  }
  buildCounterGooglePrivacyDlpV2beta2OutputStorageConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta2PartitionId = 0;
buildGooglePrivacyDlpV2beta2PartitionId() {
  var o = new api.GooglePrivacyDlpV2beta2PartitionId();
  buildCounterGooglePrivacyDlpV2beta2PartitionId++;
  if (buildCounterGooglePrivacyDlpV2beta2PartitionId < 3) {
    o.namespaceId = "foo";
    o.projectId = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2PartitionId--;
  return o;
}

checkGooglePrivacyDlpV2beta2PartitionId(
    api.GooglePrivacyDlpV2beta2PartitionId o) {
  buildCounterGooglePrivacyDlpV2beta2PartitionId++;
  if (buildCounterGooglePrivacyDlpV2beta2PartitionId < 3) {
    unittest.expect(o.namespaceId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2PartitionId--;
}

core.int buildCounterGooglePrivacyDlpV2beta2PathElement = 0;
buildGooglePrivacyDlpV2beta2PathElement() {
  var o = new api.GooglePrivacyDlpV2beta2PathElement();
  buildCounterGooglePrivacyDlpV2beta2PathElement++;
  if (buildCounterGooglePrivacyDlpV2beta2PathElement < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2PathElement--;
  return o;
}

checkGooglePrivacyDlpV2beta2PathElement(
    api.GooglePrivacyDlpV2beta2PathElement o) {
  buildCounterGooglePrivacyDlpV2beta2PathElement++;
  if (buildCounterGooglePrivacyDlpV2beta2PathElement < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2PathElement--;
}

core.int buildCounterGooglePrivacyDlpV2beta2PrimitiveTransformation = 0;
buildGooglePrivacyDlpV2beta2PrimitiveTransformation() {
  var o = new api.GooglePrivacyDlpV2beta2PrimitiveTransformation();
  buildCounterGooglePrivacyDlpV2beta2PrimitiveTransformation++;
  if (buildCounterGooglePrivacyDlpV2beta2PrimitiveTransformation < 3) {
    o.bucketingConfig = buildGooglePrivacyDlpV2beta2BucketingConfig();
    o.characterMaskConfig = buildGooglePrivacyDlpV2beta2CharacterMaskConfig();
    o.cryptoHashConfig = buildGooglePrivacyDlpV2beta2CryptoHashConfig();
    o.cryptoReplaceFfxFpeConfig =
        buildGooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig();
    o.fixedSizeBucketingConfig =
        buildGooglePrivacyDlpV2beta2FixedSizeBucketingConfig();
    o.redactConfig = buildGooglePrivacyDlpV2beta2RedactConfig();
    o.replaceConfig = buildGooglePrivacyDlpV2beta2ReplaceValueConfig();
    o.replaceWithInfoTypeConfig =
        buildGooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig();
    o.timePartConfig = buildGooglePrivacyDlpV2beta2TimePartConfig();
  }
  buildCounterGooglePrivacyDlpV2beta2PrimitiveTransformation--;
  return o;
}

checkGooglePrivacyDlpV2beta2PrimitiveTransformation(
    api.GooglePrivacyDlpV2beta2PrimitiveTransformation o) {
  buildCounterGooglePrivacyDlpV2beta2PrimitiveTransformation++;
  if (buildCounterGooglePrivacyDlpV2beta2PrimitiveTransformation < 3) {
    checkGooglePrivacyDlpV2beta2BucketingConfig(o.bucketingConfig);
    checkGooglePrivacyDlpV2beta2CharacterMaskConfig(o.characterMaskConfig);
    checkGooglePrivacyDlpV2beta2CryptoHashConfig(o.cryptoHashConfig);
    checkGooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig(
        o.cryptoReplaceFfxFpeConfig);
    checkGooglePrivacyDlpV2beta2FixedSizeBucketingConfig(
        o.fixedSizeBucketingConfig);
    checkGooglePrivacyDlpV2beta2RedactConfig(o.redactConfig);
    checkGooglePrivacyDlpV2beta2ReplaceValueConfig(o.replaceConfig);
    checkGooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig(
        o.replaceWithInfoTypeConfig);
    checkGooglePrivacyDlpV2beta2TimePartConfig(o.timePartConfig);
  }
  buildCounterGooglePrivacyDlpV2beta2PrimitiveTransformation--;
}

core.int buildCounterGooglePrivacyDlpV2beta2PrivacyMetric = 0;
buildGooglePrivacyDlpV2beta2PrivacyMetric() {
  var o = new api.GooglePrivacyDlpV2beta2PrivacyMetric();
  buildCounterGooglePrivacyDlpV2beta2PrivacyMetric++;
  if (buildCounterGooglePrivacyDlpV2beta2PrivacyMetric < 3) {
    o.categoricalStatsConfig =
        buildGooglePrivacyDlpV2beta2CategoricalStatsConfig();
    o.kAnonymityConfig = buildGooglePrivacyDlpV2beta2KAnonymityConfig();
    o.kMapEstimationConfig = buildGooglePrivacyDlpV2beta2KMapEstimationConfig();
    o.lDiversityConfig = buildGooglePrivacyDlpV2beta2LDiversityConfig();
    o.numericalStatsConfig = buildGooglePrivacyDlpV2beta2NumericalStatsConfig();
  }
  buildCounterGooglePrivacyDlpV2beta2PrivacyMetric--;
  return o;
}

checkGooglePrivacyDlpV2beta2PrivacyMetric(
    api.GooglePrivacyDlpV2beta2PrivacyMetric o) {
  buildCounterGooglePrivacyDlpV2beta2PrivacyMetric++;
  if (buildCounterGooglePrivacyDlpV2beta2PrivacyMetric < 3) {
    checkGooglePrivacyDlpV2beta2CategoricalStatsConfig(
        o.categoricalStatsConfig);
    checkGooglePrivacyDlpV2beta2KAnonymityConfig(o.kAnonymityConfig);
    checkGooglePrivacyDlpV2beta2KMapEstimationConfig(o.kMapEstimationConfig);
    checkGooglePrivacyDlpV2beta2LDiversityConfig(o.lDiversityConfig);
    checkGooglePrivacyDlpV2beta2NumericalStatsConfig(o.numericalStatsConfig);
  }
  buildCounterGooglePrivacyDlpV2beta2PrivacyMetric--;
}

core.int buildCounterGooglePrivacyDlpV2beta2Proximity = 0;
buildGooglePrivacyDlpV2beta2Proximity() {
  var o = new api.GooglePrivacyDlpV2beta2Proximity();
  buildCounterGooglePrivacyDlpV2beta2Proximity++;
  if (buildCounterGooglePrivacyDlpV2beta2Proximity < 3) {
    o.windowAfter = 42;
    o.windowBefore = 42;
  }
  buildCounterGooglePrivacyDlpV2beta2Proximity--;
  return o;
}

checkGooglePrivacyDlpV2beta2Proximity(api.GooglePrivacyDlpV2beta2Proximity o) {
  buildCounterGooglePrivacyDlpV2beta2Proximity++;
  if (buildCounterGooglePrivacyDlpV2beta2Proximity < 3) {
    unittest.expect(o.windowAfter, unittest.equals(42));
    unittest.expect(o.windowBefore, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2beta2Proximity--;
}

core.int buildCounterGooglePrivacyDlpV2beta2PublishToPubSub = 0;
buildGooglePrivacyDlpV2beta2PublishToPubSub() {
  var o = new api.GooglePrivacyDlpV2beta2PublishToPubSub();
  buildCounterGooglePrivacyDlpV2beta2PublishToPubSub++;
  if (buildCounterGooglePrivacyDlpV2beta2PublishToPubSub < 3) {
    o.topic = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2PublishToPubSub--;
  return o;
}

checkGooglePrivacyDlpV2beta2PublishToPubSub(
    api.GooglePrivacyDlpV2beta2PublishToPubSub o) {
  buildCounterGooglePrivacyDlpV2beta2PublishToPubSub++;
  if (buildCounterGooglePrivacyDlpV2beta2PublishToPubSub < 3) {
    unittest.expect(o.topic, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2PublishToPubSub--;
}

core.int buildCounterGooglePrivacyDlpV2beta2QuasiIdField = 0;
buildGooglePrivacyDlpV2beta2QuasiIdField() {
  var o = new api.GooglePrivacyDlpV2beta2QuasiIdField();
  buildCounterGooglePrivacyDlpV2beta2QuasiIdField++;
  if (buildCounterGooglePrivacyDlpV2beta2QuasiIdField < 3) {
    o.customTag = "foo";
    o.field = buildGooglePrivacyDlpV2beta2FieldId();
  }
  buildCounterGooglePrivacyDlpV2beta2QuasiIdField--;
  return o;
}

checkGooglePrivacyDlpV2beta2QuasiIdField(
    api.GooglePrivacyDlpV2beta2QuasiIdField o) {
  buildCounterGooglePrivacyDlpV2beta2QuasiIdField++;
  if (buildCounterGooglePrivacyDlpV2beta2QuasiIdField < 3) {
    unittest.expect(o.customTag, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2FieldId(o.field);
  }
  buildCounterGooglePrivacyDlpV2beta2QuasiIdField--;
}

core.int buildCounterGooglePrivacyDlpV2beta2Range = 0;
buildGooglePrivacyDlpV2beta2Range() {
  var o = new api.GooglePrivacyDlpV2beta2Range();
  buildCounterGooglePrivacyDlpV2beta2Range++;
  if (buildCounterGooglePrivacyDlpV2beta2Range < 3) {
    o.end = "foo";
    o.start = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2Range--;
  return o;
}

checkGooglePrivacyDlpV2beta2Range(api.GooglePrivacyDlpV2beta2Range o) {
  buildCounterGooglePrivacyDlpV2beta2Range++;
  if (buildCounterGooglePrivacyDlpV2beta2Range < 3) {
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2Range--;
}

core.int buildCounterGooglePrivacyDlpV2beta2RecordCondition = 0;
buildGooglePrivacyDlpV2beta2RecordCondition() {
  var o = new api.GooglePrivacyDlpV2beta2RecordCondition();
  buildCounterGooglePrivacyDlpV2beta2RecordCondition++;
  if (buildCounterGooglePrivacyDlpV2beta2RecordCondition < 3) {
    o.expressions = buildGooglePrivacyDlpV2beta2Expressions();
  }
  buildCounterGooglePrivacyDlpV2beta2RecordCondition--;
  return o;
}

checkGooglePrivacyDlpV2beta2RecordCondition(
    api.GooglePrivacyDlpV2beta2RecordCondition o) {
  buildCounterGooglePrivacyDlpV2beta2RecordCondition++;
  if (buildCounterGooglePrivacyDlpV2beta2RecordCondition < 3) {
    checkGooglePrivacyDlpV2beta2Expressions(o.expressions);
  }
  buildCounterGooglePrivacyDlpV2beta2RecordCondition--;
}

core.int buildCounterGooglePrivacyDlpV2beta2RecordKey = 0;
buildGooglePrivacyDlpV2beta2RecordKey() {
  var o = new api.GooglePrivacyDlpV2beta2RecordKey();
  buildCounterGooglePrivacyDlpV2beta2RecordKey++;
  if (buildCounterGooglePrivacyDlpV2beta2RecordKey < 3) {
    o.cloudStorageKey = buildGooglePrivacyDlpV2beta2CloudStorageKey();
    o.datastoreKey = buildGooglePrivacyDlpV2beta2DatastoreKey();
  }
  buildCounterGooglePrivacyDlpV2beta2RecordKey--;
  return o;
}

checkGooglePrivacyDlpV2beta2RecordKey(api.GooglePrivacyDlpV2beta2RecordKey o) {
  buildCounterGooglePrivacyDlpV2beta2RecordKey++;
  if (buildCounterGooglePrivacyDlpV2beta2RecordKey < 3) {
    checkGooglePrivacyDlpV2beta2CloudStorageKey(o.cloudStorageKey);
    checkGooglePrivacyDlpV2beta2DatastoreKey(o.datastoreKey);
  }
  buildCounterGooglePrivacyDlpV2beta2RecordKey--;
}

core.int buildCounterGooglePrivacyDlpV2beta2RecordSuppression = 0;
buildGooglePrivacyDlpV2beta2RecordSuppression() {
  var o = new api.GooglePrivacyDlpV2beta2RecordSuppression();
  buildCounterGooglePrivacyDlpV2beta2RecordSuppression++;
  if (buildCounterGooglePrivacyDlpV2beta2RecordSuppression < 3) {
    o.condition = buildGooglePrivacyDlpV2beta2RecordCondition();
  }
  buildCounterGooglePrivacyDlpV2beta2RecordSuppression--;
  return o;
}

checkGooglePrivacyDlpV2beta2RecordSuppression(
    api.GooglePrivacyDlpV2beta2RecordSuppression o) {
  buildCounterGooglePrivacyDlpV2beta2RecordSuppression++;
  if (buildCounterGooglePrivacyDlpV2beta2RecordSuppression < 3) {
    checkGooglePrivacyDlpV2beta2RecordCondition(o.condition);
  }
  buildCounterGooglePrivacyDlpV2beta2RecordSuppression--;
}

buildUnnamed4109() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2FieldTransformation>();
  o.add(buildGooglePrivacyDlpV2beta2FieldTransformation());
  o.add(buildGooglePrivacyDlpV2beta2FieldTransformation());
  return o;
}

checkUnnamed4109(core.List<api.GooglePrivacyDlpV2beta2FieldTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2FieldTransformation(o[0]);
  checkGooglePrivacyDlpV2beta2FieldTransformation(o[1]);
}

buildUnnamed4110() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2RecordSuppression>();
  o.add(buildGooglePrivacyDlpV2beta2RecordSuppression());
  o.add(buildGooglePrivacyDlpV2beta2RecordSuppression());
  return o;
}

checkUnnamed4110(core.List<api.GooglePrivacyDlpV2beta2RecordSuppression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2RecordSuppression(o[0]);
  checkGooglePrivacyDlpV2beta2RecordSuppression(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2RecordTransformations = 0;
buildGooglePrivacyDlpV2beta2RecordTransformations() {
  var o = new api.GooglePrivacyDlpV2beta2RecordTransformations();
  buildCounterGooglePrivacyDlpV2beta2RecordTransformations++;
  if (buildCounterGooglePrivacyDlpV2beta2RecordTransformations < 3) {
    o.fieldTransformations = buildUnnamed4109();
    o.recordSuppressions = buildUnnamed4110();
  }
  buildCounterGooglePrivacyDlpV2beta2RecordTransformations--;
  return o;
}

checkGooglePrivacyDlpV2beta2RecordTransformations(
    api.GooglePrivacyDlpV2beta2RecordTransformations o) {
  buildCounterGooglePrivacyDlpV2beta2RecordTransformations++;
  if (buildCounterGooglePrivacyDlpV2beta2RecordTransformations < 3) {
    checkUnnamed4109(o.fieldTransformations);
    checkUnnamed4110(o.recordSuppressions);
  }
  buildCounterGooglePrivacyDlpV2beta2RecordTransformations--;
}

core.int buildCounterGooglePrivacyDlpV2beta2RedactConfig = 0;
buildGooglePrivacyDlpV2beta2RedactConfig() {
  var o = new api.GooglePrivacyDlpV2beta2RedactConfig();
  buildCounterGooglePrivacyDlpV2beta2RedactConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2RedactConfig < 3) {}
  buildCounterGooglePrivacyDlpV2beta2RedactConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2RedactConfig(
    api.GooglePrivacyDlpV2beta2RedactConfig o) {
  buildCounterGooglePrivacyDlpV2beta2RedactConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2RedactConfig < 3) {}
  buildCounterGooglePrivacyDlpV2beta2RedactConfig--;
}

buildUnnamed4111() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2ImageRedactionConfig>();
  o.add(buildGooglePrivacyDlpV2beta2ImageRedactionConfig());
  o.add(buildGooglePrivacyDlpV2beta2ImageRedactionConfig());
  return o;
}

checkUnnamed4111(core.List<api.GooglePrivacyDlpV2beta2ImageRedactionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2ImageRedactionConfig(o[0]);
  checkGooglePrivacyDlpV2beta2ImageRedactionConfig(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2RedactImageRequest = 0;
buildGooglePrivacyDlpV2beta2RedactImageRequest() {
  var o = new api.GooglePrivacyDlpV2beta2RedactImageRequest();
  buildCounterGooglePrivacyDlpV2beta2RedactImageRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2RedactImageRequest < 3) {
    o.imageData = "foo";
    o.imageRedactionConfigs = buildUnnamed4111();
    o.imageType = "foo";
    o.inspectConfig = buildGooglePrivacyDlpV2beta2InspectConfig();
  }
  buildCounterGooglePrivacyDlpV2beta2RedactImageRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta2RedactImageRequest(
    api.GooglePrivacyDlpV2beta2RedactImageRequest o) {
  buildCounterGooglePrivacyDlpV2beta2RedactImageRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2RedactImageRequest < 3) {
    unittest.expect(o.imageData, unittest.equals('foo'));
    checkUnnamed4111(o.imageRedactionConfigs);
    unittest.expect(o.imageType, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2InspectConfig(o.inspectConfig);
  }
  buildCounterGooglePrivacyDlpV2beta2RedactImageRequest--;
}

core.int buildCounterGooglePrivacyDlpV2beta2RedactImageResponse = 0;
buildGooglePrivacyDlpV2beta2RedactImageResponse() {
  var o = new api.GooglePrivacyDlpV2beta2RedactImageResponse();
  buildCounterGooglePrivacyDlpV2beta2RedactImageResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2RedactImageResponse < 3) {
    o.extractedText = "foo";
    o.redactedImage = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2RedactImageResponse--;
  return o;
}

checkGooglePrivacyDlpV2beta2RedactImageResponse(
    api.GooglePrivacyDlpV2beta2RedactImageResponse o) {
  buildCounterGooglePrivacyDlpV2beta2RedactImageResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2RedactImageResponse < 3) {
    unittest.expect(o.extractedText, unittest.equals('foo'));
    unittest.expect(o.redactedImage, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2RedactImageResponse--;
}

core.int buildCounterGooglePrivacyDlpV2beta2Regex = 0;
buildGooglePrivacyDlpV2beta2Regex() {
  var o = new api.GooglePrivacyDlpV2beta2Regex();
  buildCounterGooglePrivacyDlpV2beta2Regex++;
  if (buildCounterGooglePrivacyDlpV2beta2Regex < 3) {
    o.pattern = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2Regex--;
  return o;
}

checkGooglePrivacyDlpV2beta2Regex(api.GooglePrivacyDlpV2beta2Regex o) {
  buildCounterGooglePrivacyDlpV2beta2Regex++;
  if (buildCounterGooglePrivacyDlpV2beta2Regex < 3) {
    unittest.expect(o.pattern, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2Regex--;
}

core.int buildCounterGooglePrivacyDlpV2beta2ReidentifyContentRequest = 0;
buildGooglePrivacyDlpV2beta2ReidentifyContentRequest() {
  var o = new api.GooglePrivacyDlpV2beta2ReidentifyContentRequest();
  buildCounterGooglePrivacyDlpV2beta2ReidentifyContentRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2ReidentifyContentRequest < 3) {
    o.inspectConfig = buildGooglePrivacyDlpV2beta2InspectConfig();
    o.inspectTemplateName = "foo";
    o.item = buildGooglePrivacyDlpV2beta2ContentItem();
    o.reidentifyConfig = buildGooglePrivacyDlpV2beta2DeidentifyConfig();
    o.reidentifyTemplateName = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2ReidentifyContentRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta2ReidentifyContentRequest(
    api.GooglePrivacyDlpV2beta2ReidentifyContentRequest o) {
  buildCounterGooglePrivacyDlpV2beta2ReidentifyContentRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2ReidentifyContentRequest < 3) {
    checkGooglePrivacyDlpV2beta2InspectConfig(o.inspectConfig);
    unittest.expect(o.inspectTemplateName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2ContentItem(o.item);
    checkGooglePrivacyDlpV2beta2DeidentifyConfig(o.reidentifyConfig);
    unittest.expect(o.reidentifyTemplateName, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2ReidentifyContentRequest--;
}

core.int buildCounterGooglePrivacyDlpV2beta2ReidentifyContentResponse = 0;
buildGooglePrivacyDlpV2beta2ReidentifyContentResponse() {
  var o = new api.GooglePrivacyDlpV2beta2ReidentifyContentResponse();
  buildCounterGooglePrivacyDlpV2beta2ReidentifyContentResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2ReidentifyContentResponse < 3) {
    o.item = buildGooglePrivacyDlpV2beta2ContentItem();
    o.overview = buildGooglePrivacyDlpV2beta2TransformationOverview();
  }
  buildCounterGooglePrivacyDlpV2beta2ReidentifyContentResponse--;
  return o;
}

checkGooglePrivacyDlpV2beta2ReidentifyContentResponse(
    api.GooglePrivacyDlpV2beta2ReidentifyContentResponse o) {
  buildCounterGooglePrivacyDlpV2beta2ReidentifyContentResponse++;
  if (buildCounterGooglePrivacyDlpV2beta2ReidentifyContentResponse < 3) {
    checkGooglePrivacyDlpV2beta2ContentItem(o.item);
    checkGooglePrivacyDlpV2beta2TransformationOverview(o.overview);
  }
  buildCounterGooglePrivacyDlpV2beta2ReidentifyContentResponse--;
}

core.int buildCounterGooglePrivacyDlpV2beta2ReplaceValueConfig = 0;
buildGooglePrivacyDlpV2beta2ReplaceValueConfig() {
  var o = new api.GooglePrivacyDlpV2beta2ReplaceValueConfig();
  buildCounterGooglePrivacyDlpV2beta2ReplaceValueConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2ReplaceValueConfig < 3) {
    o.newValue = buildGooglePrivacyDlpV2beta2Value();
  }
  buildCounterGooglePrivacyDlpV2beta2ReplaceValueConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2ReplaceValueConfig(
    api.GooglePrivacyDlpV2beta2ReplaceValueConfig o) {
  buildCounterGooglePrivacyDlpV2beta2ReplaceValueConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2ReplaceValueConfig < 3) {
    checkGooglePrivacyDlpV2beta2Value(o.newValue);
  }
  buildCounterGooglePrivacyDlpV2beta2ReplaceValueConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig = 0;
buildGooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig() {
  var o = new api.GooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig();
  buildCounterGooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig < 3) {}
  buildCounterGooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig(
    api.GooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig o) {
  buildCounterGooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig < 3) {}
  buildCounterGooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta2RequestedOptions = 0;
buildGooglePrivacyDlpV2beta2RequestedOptions() {
  var o = new api.GooglePrivacyDlpV2beta2RequestedOptions();
  buildCounterGooglePrivacyDlpV2beta2RequestedOptions++;
  if (buildCounterGooglePrivacyDlpV2beta2RequestedOptions < 3) {
    o.jobConfig = buildGooglePrivacyDlpV2beta2InspectJobConfig();
    o.snapshotInspectTemplate = buildGooglePrivacyDlpV2beta2InspectTemplate();
  }
  buildCounterGooglePrivacyDlpV2beta2RequestedOptions--;
  return o;
}

checkGooglePrivacyDlpV2beta2RequestedOptions(
    api.GooglePrivacyDlpV2beta2RequestedOptions o) {
  buildCounterGooglePrivacyDlpV2beta2RequestedOptions++;
  if (buildCounterGooglePrivacyDlpV2beta2RequestedOptions < 3) {
    checkGooglePrivacyDlpV2beta2InspectJobConfig(o.jobConfig);
    checkGooglePrivacyDlpV2beta2InspectTemplate(o.snapshotInspectTemplate);
  }
  buildCounterGooglePrivacyDlpV2beta2RequestedOptions--;
}

buildUnnamed4112() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2InfoTypeStatistics>();
  o.add(buildGooglePrivacyDlpV2beta2InfoTypeStatistics());
  o.add(buildGooglePrivacyDlpV2beta2InfoTypeStatistics());
  return o;
}

checkUnnamed4112(core.List<api.GooglePrivacyDlpV2beta2InfoTypeStatistics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2InfoTypeStatistics(o[0]);
  checkGooglePrivacyDlpV2beta2InfoTypeStatistics(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2Result = 0;
buildGooglePrivacyDlpV2beta2Result() {
  var o = new api.GooglePrivacyDlpV2beta2Result();
  buildCounterGooglePrivacyDlpV2beta2Result++;
  if (buildCounterGooglePrivacyDlpV2beta2Result < 3) {
    o.infoTypeStats = buildUnnamed4112();
    o.processedBytes = "foo";
    o.totalEstimatedBytes = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2Result--;
  return o;
}

checkGooglePrivacyDlpV2beta2Result(api.GooglePrivacyDlpV2beta2Result o) {
  buildCounterGooglePrivacyDlpV2beta2Result++;
  if (buildCounterGooglePrivacyDlpV2beta2Result < 3) {
    checkUnnamed4112(o.infoTypeStats);
    unittest.expect(o.processedBytes, unittest.equals('foo'));
    unittest.expect(o.totalEstimatedBytes, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2Result--;
}

buildUnnamed4113() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2Action>();
  o.add(buildGooglePrivacyDlpV2beta2Action());
  o.add(buildGooglePrivacyDlpV2beta2Action());
  return o;
}

checkUnnamed4113(core.List<api.GooglePrivacyDlpV2beta2Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2Action(o[0]);
  checkGooglePrivacyDlpV2beta2Action(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2RiskAnalysisJobConfig = 0;
buildGooglePrivacyDlpV2beta2RiskAnalysisJobConfig() {
  var o = new api.GooglePrivacyDlpV2beta2RiskAnalysisJobConfig();
  buildCounterGooglePrivacyDlpV2beta2RiskAnalysisJobConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2RiskAnalysisJobConfig < 3) {
    o.actions = buildUnnamed4113();
    o.privacyMetric = buildGooglePrivacyDlpV2beta2PrivacyMetric();
    o.sourceTable = buildGooglePrivacyDlpV2beta2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2beta2RiskAnalysisJobConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2RiskAnalysisJobConfig(
    api.GooglePrivacyDlpV2beta2RiskAnalysisJobConfig o) {
  buildCounterGooglePrivacyDlpV2beta2RiskAnalysisJobConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2RiskAnalysisJobConfig < 3) {
    checkUnnamed4113(o.actions);
    checkGooglePrivacyDlpV2beta2PrivacyMetric(o.privacyMetric);
    checkGooglePrivacyDlpV2beta2BigQueryTable(o.sourceTable);
  }
  buildCounterGooglePrivacyDlpV2beta2RiskAnalysisJobConfig--;
}

buildUnnamed4114() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2Value>();
  o.add(buildGooglePrivacyDlpV2beta2Value());
  o.add(buildGooglePrivacyDlpV2beta2Value());
  return o;
}

checkUnnamed4114(core.List<api.GooglePrivacyDlpV2beta2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2Value(o[0]);
  checkGooglePrivacyDlpV2beta2Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2Row = 0;
buildGooglePrivacyDlpV2beta2Row() {
  var o = new api.GooglePrivacyDlpV2beta2Row();
  buildCounterGooglePrivacyDlpV2beta2Row++;
  if (buildCounterGooglePrivacyDlpV2beta2Row < 3) {
    o.values = buildUnnamed4114();
  }
  buildCounterGooglePrivacyDlpV2beta2Row--;
  return o;
}

checkGooglePrivacyDlpV2beta2Row(api.GooglePrivacyDlpV2beta2Row o) {
  buildCounterGooglePrivacyDlpV2beta2Row++;
  if (buildCounterGooglePrivacyDlpV2beta2Row < 3) {
    checkUnnamed4114(o.values);
  }
  buildCounterGooglePrivacyDlpV2beta2Row--;
}

core.int buildCounterGooglePrivacyDlpV2beta2SaveFindings = 0;
buildGooglePrivacyDlpV2beta2SaveFindings() {
  var o = new api.GooglePrivacyDlpV2beta2SaveFindings();
  buildCounterGooglePrivacyDlpV2beta2SaveFindings++;
  if (buildCounterGooglePrivacyDlpV2beta2SaveFindings < 3) {
    o.outputConfig = buildGooglePrivacyDlpV2beta2OutputStorageConfig();
  }
  buildCounterGooglePrivacyDlpV2beta2SaveFindings--;
  return o;
}

checkGooglePrivacyDlpV2beta2SaveFindings(
    api.GooglePrivacyDlpV2beta2SaveFindings o) {
  buildCounterGooglePrivacyDlpV2beta2SaveFindings++;
  if (buildCounterGooglePrivacyDlpV2beta2SaveFindings < 3) {
    checkGooglePrivacyDlpV2beta2OutputStorageConfig(o.outputConfig);
  }
  buildCounterGooglePrivacyDlpV2beta2SaveFindings--;
}

core.int buildCounterGooglePrivacyDlpV2beta2Schedule = 0;
buildGooglePrivacyDlpV2beta2Schedule() {
  var o = new api.GooglePrivacyDlpV2beta2Schedule();
  buildCounterGooglePrivacyDlpV2beta2Schedule++;
  if (buildCounterGooglePrivacyDlpV2beta2Schedule < 3) {
    o.reccurrencePeriodDuration = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2Schedule--;
  return o;
}

checkGooglePrivacyDlpV2beta2Schedule(api.GooglePrivacyDlpV2beta2Schedule o) {
  buildCounterGooglePrivacyDlpV2beta2Schedule++;
  if (buildCounterGooglePrivacyDlpV2beta2Schedule < 3) {
    unittest.expect(o.reccurrencePeriodDuration, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2Schedule--;
}

core.int buildCounterGooglePrivacyDlpV2beta2StorageConfig = 0;
buildGooglePrivacyDlpV2beta2StorageConfig() {
  var o = new api.GooglePrivacyDlpV2beta2StorageConfig();
  buildCounterGooglePrivacyDlpV2beta2StorageConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2StorageConfig < 3) {
    o.bigQueryOptions = buildGooglePrivacyDlpV2beta2BigQueryOptions();
    o.cloudStorageOptions = buildGooglePrivacyDlpV2beta2CloudStorageOptions();
    o.datastoreOptions = buildGooglePrivacyDlpV2beta2DatastoreOptions();
    o.timespanConfig = buildGooglePrivacyDlpV2beta2TimespanConfig();
  }
  buildCounterGooglePrivacyDlpV2beta2StorageConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2StorageConfig(
    api.GooglePrivacyDlpV2beta2StorageConfig o) {
  buildCounterGooglePrivacyDlpV2beta2StorageConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2StorageConfig < 3) {
    checkGooglePrivacyDlpV2beta2BigQueryOptions(o.bigQueryOptions);
    checkGooglePrivacyDlpV2beta2CloudStorageOptions(o.cloudStorageOptions);
    checkGooglePrivacyDlpV2beta2DatastoreOptions(o.datastoreOptions);
    checkGooglePrivacyDlpV2beta2TimespanConfig(o.timespanConfig);
  }
  buildCounterGooglePrivacyDlpV2beta2StorageConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta2SummaryResult = 0;
buildGooglePrivacyDlpV2beta2SummaryResult() {
  var o = new api.GooglePrivacyDlpV2beta2SummaryResult();
  buildCounterGooglePrivacyDlpV2beta2SummaryResult++;
  if (buildCounterGooglePrivacyDlpV2beta2SummaryResult < 3) {
    o.code = "foo";
    o.count = "foo";
    o.details = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2SummaryResult--;
  return o;
}

checkGooglePrivacyDlpV2beta2SummaryResult(
    api.GooglePrivacyDlpV2beta2SummaryResult o) {
  buildCounterGooglePrivacyDlpV2beta2SummaryResult++;
  if (buildCounterGooglePrivacyDlpV2beta2SummaryResult < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.details, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2SummaryResult--;
}

core.int buildCounterGooglePrivacyDlpV2beta2SurrogateType = 0;
buildGooglePrivacyDlpV2beta2SurrogateType() {
  var o = new api.GooglePrivacyDlpV2beta2SurrogateType();
  buildCounterGooglePrivacyDlpV2beta2SurrogateType++;
  if (buildCounterGooglePrivacyDlpV2beta2SurrogateType < 3) {}
  buildCounterGooglePrivacyDlpV2beta2SurrogateType--;
  return o;
}

checkGooglePrivacyDlpV2beta2SurrogateType(
    api.GooglePrivacyDlpV2beta2SurrogateType o) {
  buildCounterGooglePrivacyDlpV2beta2SurrogateType++;
  if (buildCounterGooglePrivacyDlpV2beta2SurrogateType < 3) {}
  buildCounterGooglePrivacyDlpV2beta2SurrogateType--;
}

buildUnnamed4115() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2FieldId>();
  o.add(buildGooglePrivacyDlpV2beta2FieldId());
  o.add(buildGooglePrivacyDlpV2beta2FieldId());
  return o;
}

checkUnnamed4115(core.List<api.GooglePrivacyDlpV2beta2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2FieldId(o[0]);
  checkGooglePrivacyDlpV2beta2FieldId(o[1]);
}

buildUnnamed4116() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2Row>();
  o.add(buildGooglePrivacyDlpV2beta2Row());
  o.add(buildGooglePrivacyDlpV2beta2Row());
  return o;
}

checkUnnamed4116(core.List<api.GooglePrivacyDlpV2beta2Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2Row(o[0]);
  checkGooglePrivacyDlpV2beta2Row(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2Table = 0;
buildGooglePrivacyDlpV2beta2Table() {
  var o = new api.GooglePrivacyDlpV2beta2Table();
  buildCounterGooglePrivacyDlpV2beta2Table++;
  if (buildCounterGooglePrivacyDlpV2beta2Table < 3) {
    o.headers = buildUnnamed4115();
    o.rows = buildUnnamed4116();
  }
  buildCounterGooglePrivacyDlpV2beta2Table--;
  return o;
}

checkGooglePrivacyDlpV2beta2Table(api.GooglePrivacyDlpV2beta2Table o) {
  buildCounterGooglePrivacyDlpV2beta2Table++;
  if (buildCounterGooglePrivacyDlpV2beta2Table < 3) {
    checkUnnamed4115(o.headers);
    checkUnnamed4116(o.rows);
  }
  buildCounterGooglePrivacyDlpV2beta2Table--;
}

core.int buildCounterGooglePrivacyDlpV2beta2TableLocation = 0;
buildGooglePrivacyDlpV2beta2TableLocation() {
  var o = new api.GooglePrivacyDlpV2beta2TableLocation();
  buildCounterGooglePrivacyDlpV2beta2TableLocation++;
  if (buildCounterGooglePrivacyDlpV2beta2TableLocation < 3) {
    o.rowIndex = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2TableLocation--;
  return o;
}

checkGooglePrivacyDlpV2beta2TableLocation(
    api.GooglePrivacyDlpV2beta2TableLocation o) {
  buildCounterGooglePrivacyDlpV2beta2TableLocation++;
  if (buildCounterGooglePrivacyDlpV2beta2TableLocation < 3) {
    unittest.expect(o.rowIndex, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2TableLocation--;
}

core.int buildCounterGooglePrivacyDlpV2beta2TaggedField = 0;
buildGooglePrivacyDlpV2beta2TaggedField() {
  var o = new api.GooglePrivacyDlpV2beta2TaggedField();
  buildCounterGooglePrivacyDlpV2beta2TaggedField++;
  if (buildCounterGooglePrivacyDlpV2beta2TaggedField < 3) {
    o.customTag = "foo";
    o.field = buildGooglePrivacyDlpV2beta2FieldId();
    o.inferred = buildGoogleProtobufEmpty();
    o.infoType = buildGooglePrivacyDlpV2beta2InfoType();
  }
  buildCounterGooglePrivacyDlpV2beta2TaggedField--;
  return o;
}

checkGooglePrivacyDlpV2beta2TaggedField(
    api.GooglePrivacyDlpV2beta2TaggedField o) {
  buildCounterGooglePrivacyDlpV2beta2TaggedField++;
  if (buildCounterGooglePrivacyDlpV2beta2TaggedField < 3) {
    unittest.expect(o.customTag, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2FieldId(o.field);
    checkGoogleProtobufEmpty(o.inferred);
    checkGooglePrivacyDlpV2beta2InfoType(o.infoType);
  }
  buildCounterGooglePrivacyDlpV2beta2TaggedField--;
}

core.int buildCounterGooglePrivacyDlpV2beta2TimePartConfig = 0;
buildGooglePrivacyDlpV2beta2TimePartConfig() {
  var o = new api.GooglePrivacyDlpV2beta2TimePartConfig();
  buildCounterGooglePrivacyDlpV2beta2TimePartConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2TimePartConfig < 3) {
    o.partToExtract = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2TimePartConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2TimePartConfig(
    api.GooglePrivacyDlpV2beta2TimePartConfig o) {
  buildCounterGooglePrivacyDlpV2beta2TimePartConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2TimePartConfig < 3) {
    unittest.expect(o.partToExtract, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2TimePartConfig--;
}

core.int buildCounterGooglePrivacyDlpV2beta2TimespanConfig = 0;
buildGooglePrivacyDlpV2beta2TimespanConfig() {
  var o = new api.GooglePrivacyDlpV2beta2TimespanConfig();
  buildCounterGooglePrivacyDlpV2beta2TimespanConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2TimespanConfig < 3) {
    o.enableAutoPopulationOfTimespanConfig = true;
    o.endTime = "foo";
    o.startTime = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2TimespanConfig--;
  return o;
}

checkGooglePrivacyDlpV2beta2TimespanConfig(
    api.GooglePrivacyDlpV2beta2TimespanConfig o) {
  buildCounterGooglePrivacyDlpV2beta2TimespanConfig++;
  if (buildCounterGooglePrivacyDlpV2beta2TimespanConfig < 3) {
    unittest.expect(o.enableAutoPopulationOfTimespanConfig, unittest.isTrue);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2TimespanConfig--;
}

buildUnnamed4117() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2TransformationSummary>();
  o.add(buildGooglePrivacyDlpV2beta2TransformationSummary());
  o.add(buildGooglePrivacyDlpV2beta2TransformationSummary());
  return o;
}

checkUnnamed4117(
    core.List<api.GooglePrivacyDlpV2beta2TransformationSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2TransformationSummary(o[0]);
  checkGooglePrivacyDlpV2beta2TransformationSummary(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2TransformationOverview = 0;
buildGooglePrivacyDlpV2beta2TransformationOverview() {
  var o = new api.GooglePrivacyDlpV2beta2TransformationOverview();
  buildCounterGooglePrivacyDlpV2beta2TransformationOverview++;
  if (buildCounterGooglePrivacyDlpV2beta2TransformationOverview < 3) {
    o.transformationSummaries = buildUnnamed4117();
    o.transformedBytes = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2TransformationOverview--;
  return o;
}

checkGooglePrivacyDlpV2beta2TransformationOverview(
    api.GooglePrivacyDlpV2beta2TransformationOverview o) {
  buildCounterGooglePrivacyDlpV2beta2TransformationOverview++;
  if (buildCounterGooglePrivacyDlpV2beta2TransformationOverview < 3) {
    checkUnnamed4117(o.transformationSummaries);
    unittest.expect(o.transformedBytes, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2TransformationOverview--;
}

buildUnnamed4118() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2FieldTransformation>();
  o.add(buildGooglePrivacyDlpV2beta2FieldTransformation());
  o.add(buildGooglePrivacyDlpV2beta2FieldTransformation());
  return o;
}

checkUnnamed4118(core.List<api.GooglePrivacyDlpV2beta2FieldTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2FieldTransformation(o[0]);
  checkGooglePrivacyDlpV2beta2FieldTransformation(o[1]);
}

buildUnnamed4119() {
  var o = new core.List<api.GooglePrivacyDlpV2beta2SummaryResult>();
  o.add(buildGooglePrivacyDlpV2beta2SummaryResult());
  o.add(buildGooglePrivacyDlpV2beta2SummaryResult());
  return o;
}

checkUnnamed4119(core.List<api.GooglePrivacyDlpV2beta2SummaryResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2beta2SummaryResult(o[0]);
  checkGooglePrivacyDlpV2beta2SummaryResult(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2beta2TransformationSummary = 0;
buildGooglePrivacyDlpV2beta2TransformationSummary() {
  var o = new api.GooglePrivacyDlpV2beta2TransformationSummary();
  buildCounterGooglePrivacyDlpV2beta2TransformationSummary++;
  if (buildCounterGooglePrivacyDlpV2beta2TransformationSummary < 3) {
    o.field = buildGooglePrivacyDlpV2beta2FieldId();
    o.fieldTransformations = buildUnnamed4118();
    o.infoType = buildGooglePrivacyDlpV2beta2InfoType();
    o.recordSuppress = buildGooglePrivacyDlpV2beta2RecordSuppression();
    o.results = buildUnnamed4119();
    o.transformation = buildGooglePrivacyDlpV2beta2PrimitiveTransformation();
    o.transformedBytes = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2TransformationSummary--;
  return o;
}

checkGooglePrivacyDlpV2beta2TransformationSummary(
    api.GooglePrivacyDlpV2beta2TransformationSummary o) {
  buildCounterGooglePrivacyDlpV2beta2TransformationSummary++;
  if (buildCounterGooglePrivacyDlpV2beta2TransformationSummary < 3) {
    checkGooglePrivacyDlpV2beta2FieldId(o.field);
    checkUnnamed4118(o.fieldTransformations);
    checkGooglePrivacyDlpV2beta2InfoType(o.infoType);
    checkGooglePrivacyDlpV2beta2RecordSuppression(o.recordSuppress);
    checkUnnamed4119(o.results);
    checkGooglePrivacyDlpV2beta2PrimitiveTransformation(o.transformation);
    unittest.expect(o.transformedBytes, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2TransformationSummary--;
}

core.int buildCounterGooglePrivacyDlpV2beta2TransientCryptoKey = 0;
buildGooglePrivacyDlpV2beta2TransientCryptoKey() {
  var o = new api.GooglePrivacyDlpV2beta2TransientCryptoKey();
  buildCounterGooglePrivacyDlpV2beta2TransientCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta2TransientCryptoKey < 3) {
    o.name = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2TransientCryptoKey--;
  return o;
}

checkGooglePrivacyDlpV2beta2TransientCryptoKey(
    api.GooglePrivacyDlpV2beta2TransientCryptoKey o) {
  buildCounterGooglePrivacyDlpV2beta2TransientCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta2TransientCryptoKey < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2TransientCryptoKey--;
}

core.int buildCounterGooglePrivacyDlpV2beta2Trigger = 0;
buildGooglePrivacyDlpV2beta2Trigger() {
  var o = new api.GooglePrivacyDlpV2beta2Trigger();
  buildCounterGooglePrivacyDlpV2beta2Trigger++;
  if (buildCounterGooglePrivacyDlpV2beta2Trigger < 3) {
    o.schedule = buildGooglePrivacyDlpV2beta2Schedule();
  }
  buildCounterGooglePrivacyDlpV2beta2Trigger--;
  return o;
}

checkGooglePrivacyDlpV2beta2Trigger(api.GooglePrivacyDlpV2beta2Trigger o) {
  buildCounterGooglePrivacyDlpV2beta2Trigger++;
  if (buildCounterGooglePrivacyDlpV2beta2Trigger < 3) {
    checkGooglePrivacyDlpV2beta2Schedule(o.schedule);
  }
  buildCounterGooglePrivacyDlpV2beta2Trigger--;
}

core.int buildCounterGooglePrivacyDlpV2beta2UnwrappedCryptoKey = 0;
buildGooglePrivacyDlpV2beta2UnwrappedCryptoKey() {
  var o = new api.GooglePrivacyDlpV2beta2UnwrappedCryptoKey();
  buildCounterGooglePrivacyDlpV2beta2UnwrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta2UnwrappedCryptoKey < 3) {
    o.key = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2UnwrappedCryptoKey--;
  return o;
}

checkGooglePrivacyDlpV2beta2UnwrappedCryptoKey(
    api.GooglePrivacyDlpV2beta2UnwrappedCryptoKey o) {
  buildCounterGooglePrivacyDlpV2beta2UnwrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2beta2UnwrappedCryptoKey < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2UnwrappedCryptoKey--;
}

core.int buildCounterGooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest = 0;
buildGooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest() {
  var o = new api.GooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest();
  buildCounterGooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest < 3) {
    o.deidentifyTemplate = buildGooglePrivacyDlpV2beta2DeidentifyTemplate();
    o.updateMask = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest(
    api.GooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest o) {
  buildCounterGooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest < 3) {
    checkGooglePrivacyDlpV2beta2DeidentifyTemplate(o.deidentifyTemplate);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2beta2UpdateInspectTemplateRequest = 0;
buildGooglePrivacyDlpV2beta2UpdateInspectTemplateRequest() {
  var o = new api.GooglePrivacyDlpV2beta2UpdateInspectTemplateRequest();
  buildCounterGooglePrivacyDlpV2beta2UpdateInspectTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2UpdateInspectTemplateRequest < 3) {
    o.inspectTemplate = buildGooglePrivacyDlpV2beta2InspectTemplate();
    o.updateMask = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2UpdateInspectTemplateRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta2UpdateInspectTemplateRequest(
    api.GooglePrivacyDlpV2beta2UpdateInspectTemplateRequest o) {
  buildCounterGooglePrivacyDlpV2beta2UpdateInspectTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2UpdateInspectTemplateRequest < 3) {
    checkGooglePrivacyDlpV2beta2InspectTemplate(o.inspectTemplate);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2UpdateInspectTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2beta2UpdateJobTriggerRequest = 0;
buildGooglePrivacyDlpV2beta2UpdateJobTriggerRequest() {
  var o = new api.GooglePrivacyDlpV2beta2UpdateJobTriggerRequest();
  buildCounterGooglePrivacyDlpV2beta2UpdateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2UpdateJobTriggerRequest < 3) {
    o.jobTrigger = buildGooglePrivacyDlpV2beta2JobTrigger();
    o.updateMask = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2UpdateJobTriggerRequest--;
  return o;
}

checkGooglePrivacyDlpV2beta2UpdateJobTriggerRequest(
    api.GooglePrivacyDlpV2beta2UpdateJobTriggerRequest o) {
  buildCounterGooglePrivacyDlpV2beta2UpdateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2beta2UpdateJobTriggerRequest < 3) {
    checkGooglePrivacyDlpV2beta2JobTrigger(o.jobTrigger);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2UpdateJobTriggerRequest--;
}

core.int buildCounterGooglePrivacyDlpV2beta2Value = 0;
buildGooglePrivacyDlpV2beta2Value() {
  var o = new api.GooglePrivacyDlpV2beta2Value();
  buildCounterGooglePrivacyDlpV2beta2Value++;
  if (buildCounterGooglePrivacyDlpV2beta2Value < 3) {
    o.booleanValue = true;
    o.dateValue = buildGoogleTypeDate();
    o.floatValue = 42.0;
    o.integerValue = "foo";
    o.stringValue = "foo";
    o.timeValue = buildGoogleTypeTimeOfDay();
    o.timestampValue = "foo";
  }
  buildCounterGooglePrivacyDlpV2beta2Value--;
  return o;
}

checkGooglePrivacyDlpV2beta2Value(api.GooglePrivacyDlpV2beta2Value o) {
  buildCounterGooglePrivacyDlpV2beta2Value++;
  if (buildCounterGooglePrivacyDlpV2beta2Value < 3) {
    unittest.expect(o.booleanValue, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue);
    unittest.expect(o.floatValue, unittest.equals(42.0));
    unittest.expect(o.integerValue, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
    checkGoogleTypeTimeOfDay(o.timeValue);
    unittest.expect(o.timestampValue, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2beta2Value--;
}

core.int buildCounterGooglePrivacyDlpV2beta2ValueFrequency = 0;
buildGooglePrivacyDlpV2beta2ValueFrequency() {
  var o = new api.GooglePrivacyDlpV2beta2ValueFrequency();
  buildCounterGooglePrivacyDlpV2beta2ValueFrequency++;
  if (buildCounterGooglePrivacyDlpV2beta2ValueFrequency < 3) {
    o.count = "foo";
    o.value = buildGooglePrivacyDlpV2beta2Value();
  }
  buildCounterGooglePrivacyDlpV2beta2ValueFrequency--;
  return o;
}

checkGooglePrivacyDlpV2beta2ValueFrequency(
    api.GooglePrivacyDlpV2beta2ValueFrequency o) {
  buildCounterGooglePrivacyDlpV2beta2ValueFrequency++;
  if (buildCounterGooglePrivacyDlpV2beta2ValueFrequency < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    checkGooglePrivacyDlpV2beta2Value(o.value);
  }
  buildCounterGooglePrivacyDlpV2beta2ValueFrequency--;
}

buildUnnamed4120() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4120(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2beta2WordList = 0;
buildGooglePrivacyDlpV2beta2WordList() {
  var o = new api.GooglePrivacyDlpV2beta2WordList();
  buildCounterGooglePrivacyDlpV2beta2WordList++;
  if (buildCounterGooglePrivacyDlpV2beta2WordList < 3) {
    o.words = buildUnnamed4120();
  }
  buildCounterGooglePrivacyDlpV2beta2WordList--;
  return o;
}

checkGooglePrivacyDlpV2beta2WordList(api.GooglePrivacyDlpV2beta2WordList o) {
  buildCounterGooglePrivacyDlpV2beta2WordList++;
  if (buildCounterGooglePrivacyDlpV2beta2WordList < 3) {
    checkUnnamed4120(o.words);
  }
  buildCounterGooglePrivacyDlpV2beta2WordList--;
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

buildUnnamed4121() {
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

checkUnnamed4121(core.Map<core.String, core.Object> o) {
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

buildUnnamed4122() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4121());
  o.add(buildUnnamed4121());
  return o;
}

checkUnnamed4122(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4121(o[0]);
  checkUnnamed4121(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4122();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4122(o.details);
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

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1CustomInfoType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1CustomInfoType();
      var od =
          new api.GooglePrivacyDlpV2beta1CustomInfoType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1CustomInfoType(od);
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

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1FieldId", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1FieldId();
      var od = new api.GooglePrivacyDlpV2beta1FieldId.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1FieldId(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1FileSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1FileSet();
      var od = new api.GooglePrivacyDlpV2beta1FileSet.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1FileSet(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1InfoType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1InfoType();
      var od = new api.GooglePrivacyDlpV2beta1InfoType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1InfoType(od);
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

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1InspectConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1InspectConfig();
      var od =
          new api.GooglePrivacyDlpV2beta1InspectConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1InspectConfig(od);
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

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1KindExpression", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1KindExpression();
      var od =
          new api.GooglePrivacyDlpV2beta1KindExpression.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1KindExpression(od);
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

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1StorageConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1StorageConfig();
      var od =
          new api.GooglePrivacyDlpV2beta1StorageConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1StorageConfig(od);
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

  unittest.group("obj-schema-GooglePrivacyDlpV2beta1TaggedField", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta1TaggedField();
      var od = new api.GooglePrivacyDlpV2beta1TaggedField.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta1TaggedField(od);
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

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Action", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Action();
      var od = new api.GooglePrivacyDlpV2beta2Action.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Action(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails();
      var od =
          new api.GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest();
      var od =
          new api.GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2AuxiliaryTable", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2AuxiliaryTable();
      var od =
          new api.GooglePrivacyDlpV2beta2AuxiliaryTable.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2AuxiliaryTable(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2BigQueryOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2BigQueryOptions();
      var od =
          new api.GooglePrivacyDlpV2beta2BigQueryOptions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2BigQueryOptions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2BigQueryTable", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2BigQueryTable();
      var od =
          new api.GooglePrivacyDlpV2beta2BigQueryTable.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2BigQueryTable(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Bucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Bucket();
      var od = new api.GooglePrivacyDlpV2beta2Bucket.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Bucket(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2BucketingConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2BucketingConfig();
      var od =
          new api.GooglePrivacyDlpV2beta2BucketingConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2BucketingConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2CancelDlpJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2CancelDlpJobRequest();
      var od = new api.GooglePrivacyDlpV2beta2CancelDlpJobRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2CancelDlpJobRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2CategoricalStatsConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2CategoricalStatsConfig();
      var od = new api.GooglePrivacyDlpV2beta2CategoricalStatsConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2CategoricalStatsConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket();
      var od = new api
              .GooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2CategoricalStatsResult",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2CategoricalStatsResult();
      var od = new api.GooglePrivacyDlpV2beta2CategoricalStatsResult.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2CategoricalStatsResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2CharacterMaskConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2CharacterMaskConfig();
      var od = new api.GooglePrivacyDlpV2beta2CharacterMaskConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2CharacterMaskConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2CharsToIgnore", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2CharsToIgnore();
      var od =
          new api.GooglePrivacyDlpV2beta2CharsToIgnore.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2CharsToIgnore(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2CloudStorageKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2CloudStorageKey();
      var od =
          new api.GooglePrivacyDlpV2beta2CloudStorageKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2CloudStorageKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2CloudStorageOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2CloudStorageOptions();
      var od = new api.GooglePrivacyDlpV2beta2CloudStorageOptions.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2CloudStorageOptions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Color", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Color();
      var od = new api.GooglePrivacyDlpV2beta2Color.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Color(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Condition", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Condition();
      var od = new api.GooglePrivacyDlpV2beta2Condition.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Condition(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Conditions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Conditions();
      var od = new api.GooglePrivacyDlpV2beta2Conditions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Conditions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2ContentItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2ContentItem();
      var od = new api.GooglePrivacyDlpV2beta2ContentItem.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2ContentItem(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest();
      var od = new api
              .GooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta2CreateInspectTemplateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2CreateInspectTemplateRequest();
      var od =
          new api.GooglePrivacyDlpV2beta2CreateInspectTemplateRequest.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta2CreateInspectTemplateRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2CreateJobTriggerRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2CreateJobTriggerRequest();
      var od = new api.GooglePrivacyDlpV2beta2CreateJobTriggerRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2CreateJobTriggerRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2CryptoHashConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2CryptoHashConfig();
      var od =
          new api.GooglePrivacyDlpV2beta2CryptoHashConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2CryptoHashConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2CryptoKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2CryptoKey();
      var od = new api.GooglePrivacyDlpV2beta2CryptoKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2CryptoKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig();
      var od =
          new api.GooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2CustomInfoType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2CustomInfoType();
      var od =
          new api.GooglePrivacyDlpV2beta2CustomInfoType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2CustomInfoType(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2DatastoreKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2DatastoreKey();
      var od = new api.GooglePrivacyDlpV2beta2DatastoreKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2DatastoreKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2DatastoreOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2DatastoreOptions();
      var od =
          new api.GooglePrivacyDlpV2beta2DatastoreOptions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2DatastoreOptions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2DeidentifyConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2DeidentifyConfig();
      var od =
          new api.GooglePrivacyDlpV2beta2DeidentifyConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2DeidentifyConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2DeidentifyContentRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2DeidentifyContentRequest();
      var od = new api.GooglePrivacyDlpV2beta2DeidentifyContentRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2DeidentifyContentRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2DeidentifyContentResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2DeidentifyContentResponse();
      var od =
          new api.GooglePrivacyDlpV2beta2DeidentifyContentResponse.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta2DeidentifyContentResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2DeidentifyTemplate", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2DeidentifyTemplate();
      var od = new api.GooglePrivacyDlpV2beta2DeidentifyTemplate.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2DeidentifyTemplate(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2DetectionRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2DetectionRule();
      var od =
          new api.GooglePrivacyDlpV2beta2DetectionRule.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2DetectionRule(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Dictionary", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Dictionary();
      var od = new api.GooglePrivacyDlpV2beta2Dictionary.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Dictionary(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2DlpJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2DlpJob();
      var od = new api.GooglePrivacyDlpV2beta2DlpJob.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2DlpJob(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2EntityId", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2EntityId();
      var od = new api.GooglePrivacyDlpV2beta2EntityId.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2EntityId(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Error", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Error();
      var od = new api.GooglePrivacyDlpV2beta2Error.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Error(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Expressions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Expressions();
      var od = new api.GooglePrivacyDlpV2beta2Expressions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Expressions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2FieldId", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2FieldId();
      var od = new api.GooglePrivacyDlpV2beta2FieldId.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2FieldId(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2FieldTransformation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2FieldTransformation();
      var od = new api.GooglePrivacyDlpV2beta2FieldTransformation.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2FieldTransformation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2FileSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2FileSet();
      var od = new api.GooglePrivacyDlpV2beta2FileSet.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2FileSet(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Finding", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Finding();
      var od = new api.GooglePrivacyDlpV2beta2Finding.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Finding(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2FindingLimits", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2FindingLimits();
      var od =
          new api.GooglePrivacyDlpV2beta2FindingLimits.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2FindingLimits(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2FixedSizeBucketingConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2FixedSizeBucketingConfig();
      var od = new api.GooglePrivacyDlpV2beta2FixedSizeBucketingConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2FixedSizeBucketingConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2HotwordRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2HotwordRule();
      var od = new api.GooglePrivacyDlpV2beta2HotwordRule.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2HotwordRule(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2ImageLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2ImageLocation();
      var od =
          new api.GooglePrivacyDlpV2beta2ImageLocation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2ImageLocation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2ImageRedactionConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2ImageRedactionConfig();
      var od = new api.GooglePrivacyDlpV2beta2ImageRedactionConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2ImageRedactionConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2InfoType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2InfoType();
      var od = new api.GooglePrivacyDlpV2beta2InfoType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2InfoType(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2InfoTypeDescription", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2InfoTypeDescription();
      var od = new api.GooglePrivacyDlpV2beta2InfoTypeDescription.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2InfoTypeDescription(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2InfoTypeLimit", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2InfoTypeLimit();
      var od =
          new api.GooglePrivacyDlpV2beta2InfoTypeLimit.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2InfoTypeLimit(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2InfoTypeStatistics", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2InfoTypeStatistics();
      var od = new api.GooglePrivacyDlpV2beta2InfoTypeStatistics.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2InfoTypeStatistics(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2InfoTypeTransformation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2InfoTypeTransformation();
      var od = new api.GooglePrivacyDlpV2beta2InfoTypeTransformation.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2InfoTypeTransformation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2InfoTypeTransformations",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2InfoTypeTransformations();
      var od = new api.GooglePrivacyDlpV2beta2InfoTypeTransformations.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2InfoTypeTransformations(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2InspectConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2InspectConfig();
      var od =
          new api.GooglePrivacyDlpV2beta2InspectConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2InspectConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2InspectContentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2InspectContentRequest();
      var od = new api.GooglePrivacyDlpV2beta2InspectContentRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2InspectContentRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2InspectContentResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2InspectContentResponse();
      var od = new api.GooglePrivacyDlpV2beta2InspectContentResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2InspectContentResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2InspectDataSourceDetails",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2InspectDataSourceDetails();
      var od = new api.GooglePrivacyDlpV2beta2InspectDataSourceDetails.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2InspectDataSourceDetails(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2InspectDataSourceRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2InspectDataSourceRequest();
      var od = new api.GooglePrivacyDlpV2beta2InspectDataSourceRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2InspectDataSourceRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2InspectJobConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2InspectJobConfig();
      var od =
          new api.GooglePrivacyDlpV2beta2InspectJobConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2InspectJobConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2InspectResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2InspectResult();
      var od =
          new api.GooglePrivacyDlpV2beta2InspectResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2InspectResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2InspectTemplate", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2InspectTemplate();
      var od =
          new api.GooglePrivacyDlpV2beta2InspectTemplate.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2InspectTemplate(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2JobTrigger", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2JobTrigger();
      var od = new api.GooglePrivacyDlpV2beta2JobTrigger.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2JobTrigger(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2KAnonymityConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2KAnonymityConfig();
      var od =
          new api.GooglePrivacyDlpV2beta2KAnonymityConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2KAnonymityConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2KAnonymityEquivalenceClass",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2KAnonymityEquivalenceClass();
      var od =
          new api.GooglePrivacyDlpV2beta2KAnonymityEquivalenceClass.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta2KAnonymityEquivalenceClass(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2KAnonymityHistogramBucket",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2KAnonymityHistogramBucket();
      var od =
          new api.GooglePrivacyDlpV2beta2KAnonymityHistogramBucket.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta2KAnonymityHistogramBucket(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2KAnonymityResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2KAnonymityResult();
      var od =
          new api.GooglePrivacyDlpV2beta2KAnonymityResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2KAnonymityResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2KMapEstimationConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2KMapEstimationConfig();
      var od = new api.GooglePrivacyDlpV2beta2KMapEstimationConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2KMapEstimationConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta2KMapEstimationHistogramBucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2KMapEstimationHistogramBucket();
      var od =
          new api.GooglePrivacyDlpV2beta2KMapEstimationHistogramBucket.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta2KMapEstimationHistogramBucket(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues();
      var od =
          new api.GooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2KMapEstimationResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2KMapEstimationResult();
      var od = new api.GooglePrivacyDlpV2beta2KMapEstimationResult.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2KMapEstimationResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Key", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Key();
      var od = new api.GooglePrivacyDlpV2beta2Key.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Key(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2KindExpression", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2KindExpression();
      var od =
          new api.GooglePrivacyDlpV2beta2KindExpression.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2KindExpression(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2KmsWrappedCryptoKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2KmsWrappedCryptoKey();
      var od = new api.GooglePrivacyDlpV2beta2KmsWrappedCryptoKey.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2KmsWrappedCryptoKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2LDiversityConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2LDiversityConfig();
      var od =
          new api.GooglePrivacyDlpV2beta2LDiversityConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2LDiversityConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2LDiversityEquivalenceClass",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2LDiversityEquivalenceClass();
      var od =
          new api.GooglePrivacyDlpV2beta2LDiversityEquivalenceClass.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta2LDiversityEquivalenceClass(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2LDiversityHistogramBucket",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2LDiversityHistogramBucket();
      var od =
          new api.GooglePrivacyDlpV2beta2LDiversityHistogramBucket.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta2LDiversityHistogramBucket(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2LDiversityResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2LDiversityResult();
      var od =
          new api.GooglePrivacyDlpV2beta2LDiversityResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2LDiversityResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2LikelihoodAdjustment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2LikelihoodAdjustment();
      var od = new api.GooglePrivacyDlpV2beta2LikelihoodAdjustment.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2LikelihoodAdjustment(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse();
      var od = new api
              .GooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2ListDlpJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2ListDlpJobsResponse();
      var od = new api.GooglePrivacyDlpV2beta2ListDlpJobsResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2ListDlpJobsResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2ListInfoTypesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2ListInfoTypesResponse();
      var od = new api.GooglePrivacyDlpV2beta2ListInfoTypesResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2ListInfoTypesResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta2ListInspectTemplatesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2ListInspectTemplatesResponse();
      var od =
          new api.GooglePrivacyDlpV2beta2ListInspectTemplatesResponse.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta2ListInspectTemplatesResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2ListJobTriggersResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2ListJobTriggersResponse();
      var od = new api.GooglePrivacyDlpV2beta2ListJobTriggersResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2ListJobTriggersResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Location();
      var od = new api.GooglePrivacyDlpV2beta2Location.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Location(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2NumericalStatsConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2NumericalStatsConfig();
      var od = new api.GooglePrivacyDlpV2beta2NumericalStatsConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2NumericalStatsConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2NumericalStatsResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2NumericalStatsResult();
      var od = new api.GooglePrivacyDlpV2beta2NumericalStatsResult.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2NumericalStatsResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2OutputStorageConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2OutputStorageConfig();
      var od = new api.GooglePrivacyDlpV2beta2OutputStorageConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2OutputStorageConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2PartitionId", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2PartitionId();
      var od = new api.GooglePrivacyDlpV2beta2PartitionId.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2PartitionId(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2PathElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2PathElement();
      var od = new api.GooglePrivacyDlpV2beta2PathElement.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2PathElement(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2PrimitiveTransformation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2PrimitiveTransformation();
      var od = new api.GooglePrivacyDlpV2beta2PrimitiveTransformation.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2PrimitiveTransformation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2PrivacyMetric", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2PrivacyMetric();
      var od =
          new api.GooglePrivacyDlpV2beta2PrivacyMetric.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2PrivacyMetric(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Proximity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Proximity();
      var od = new api.GooglePrivacyDlpV2beta2Proximity.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Proximity(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2PublishToPubSub", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2PublishToPubSub();
      var od =
          new api.GooglePrivacyDlpV2beta2PublishToPubSub.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2PublishToPubSub(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2QuasiIdField", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2QuasiIdField();
      var od = new api.GooglePrivacyDlpV2beta2QuasiIdField.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2QuasiIdField(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Range", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Range();
      var od = new api.GooglePrivacyDlpV2beta2Range.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Range(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2RecordCondition", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2RecordCondition();
      var od =
          new api.GooglePrivacyDlpV2beta2RecordCondition.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2RecordCondition(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2RecordKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2RecordKey();
      var od = new api.GooglePrivacyDlpV2beta2RecordKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2RecordKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2RecordSuppression", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2RecordSuppression();
      var od =
          new api.GooglePrivacyDlpV2beta2RecordSuppression.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2RecordSuppression(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2RecordTransformations", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2RecordTransformations();
      var od = new api.GooglePrivacyDlpV2beta2RecordTransformations.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2RecordTransformations(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2RedactConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2RedactConfig();
      var od = new api.GooglePrivacyDlpV2beta2RedactConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2RedactConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2RedactImageRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2RedactImageRequest();
      var od = new api.GooglePrivacyDlpV2beta2RedactImageRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2RedactImageRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2RedactImageResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2RedactImageResponse();
      var od = new api.GooglePrivacyDlpV2beta2RedactImageResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2RedactImageResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Regex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Regex();
      var od = new api.GooglePrivacyDlpV2beta2Regex.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Regex(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2ReidentifyContentRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2ReidentifyContentRequest();
      var od = new api.GooglePrivacyDlpV2beta2ReidentifyContentRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2ReidentifyContentRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2ReidentifyContentResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2ReidentifyContentResponse();
      var od =
          new api.GooglePrivacyDlpV2beta2ReidentifyContentResponse.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta2ReidentifyContentResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2ReplaceValueConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2ReplaceValueConfig();
      var od = new api.GooglePrivacyDlpV2beta2ReplaceValueConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2ReplaceValueConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig();
      var od =
          new api.GooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2RequestedOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2RequestedOptions();
      var od =
          new api.GooglePrivacyDlpV2beta2RequestedOptions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2RequestedOptions(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Result", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Result();
      var od = new api.GooglePrivacyDlpV2beta2Result.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Result(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2RiskAnalysisJobConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2RiskAnalysisJobConfig();
      var od = new api.GooglePrivacyDlpV2beta2RiskAnalysisJobConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2RiskAnalysisJobConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Row", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Row();
      var od = new api.GooglePrivacyDlpV2beta2Row.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Row(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2SaveFindings", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2SaveFindings();
      var od = new api.GooglePrivacyDlpV2beta2SaveFindings.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2SaveFindings(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Schedule", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Schedule();
      var od = new api.GooglePrivacyDlpV2beta2Schedule.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Schedule(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2StorageConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2StorageConfig();
      var od =
          new api.GooglePrivacyDlpV2beta2StorageConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2StorageConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2SummaryResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2SummaryResult();
      var od =
          new api.GooglePrivacyDlpV2beta2SummaryResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2SummaryResult(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2SurrogateType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2SurrogateType();
      var od =
          new api.GooglePrivacyDlpV2beta2SurrogateType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2SurrogateType(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Table", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Table();
      var od = new api.GooglePrivacyDlpV2beta2Table.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Table(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2TableLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2TableLocation();
      var od =
          new api.GooglePrivacyDlpV2beta2TableLocation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2TableLocation(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2TaggedField", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2TaggedField();
      var od = new api.GooglePrivacyDlpV2beta2TaggedField.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2TaggedField(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2TimePartConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2TimePartConfig();
      var od =
          new api.GooglePrivacyDlpV2beta2TimePartConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2TimePartConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2TimespanConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2TimespanConfig();
      var od =
          new api.GooglePrivacyDlpV2beta2TimespanConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2TimespanConfig(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2TransformationOverview",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2TransformationOverview();
      var od = new api.GooglePrivacyDlpV2beta2TransformationOverview.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2TransformationOverview(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2TransformationSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2TransformationSummary();
      var od = new api.GooglePrivacyDlpV2beta2TransformationSummary.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2TransformationSummary(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2TransientCryptoKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2TransientCryptoKey();
      var od = new api.GooglePrivacyDlpV2beta2TransientCryptoKey.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2TransientCryptoKey(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Trigger", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Trigger();
      var od = new api.GooglePrivacyDlpV2beta2Trigger.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Trigger(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2UnwrappedCryptoKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2UnwrappedCryptoKey();
      var od = new api.GooglePrivacyDlpV2beta2UnwrappedCryptoKey.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2UnwrappedCryptoKey(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest();
      var od = new api
              .GooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GooglePrivacyDlpV2beta2UpdateInspectTemplateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2UpdateInspectTemplateRequest();
      var od =
          new api.GooglePrivacyDlpV2beta2UpdateInspectTemplateRequest.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2beta2UpdateInspectTemplateRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2UpdateJobTriggerRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2UpdateJobTriggerRequest();
      var od = new api.GooglePrivacyDlpV2beta2UpdateJobTriggerRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2beta2UpdateJobTriggerRequest(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2Value", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2Value();
      var od = new api.GooglePrivacyDlpV2beta2Value.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2Value(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2ValueFrequency", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2ValueFrequency();
      var od =
          new api.GooglePrivacyDlpV2beta2ValueFrequency.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2ValueFrequency(od);
    });
  });

  unittest.group("obj-schema-GooglePrivacyDlpV2beta2WordList", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePrivacyDlpV2beta2WordList();
      var od = new api.GooglePrivacyDlpV2beta2WordList.fromJson(o.toJson());
      checkGooglePrivacyDlpV2beta2WordList(od);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta2/infoTypes"));
        pathOffset += 17;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta2ListInfoTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              languageCode: arg_languageCode,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2ListInfoTypesResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsDeidentifyTemplatesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest.fromJson(
            json);
        checkGooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta2DeidentifyTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2DeidentifyTemplate(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta2DeidentifyTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2DeidentifyTemplate(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.deidentifyTemplates;
      var arg_parent = "foo";
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
            unittest.equals("v2beta2/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(
            buildGooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.OrganizationsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest.fromJson(
            json);
        checkGooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta2DeidentifyTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2DeidentifyTemplate(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsInspectTemplatesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.inspectTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2beta2CreateInspectTemplateRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
            .GooglePrivacyDlpV2beta2CreateInspectTemplateRequest.fromJson(json);
        checkGooglePrivacyDlpV2beta2CreateInspectTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp =
            convert.JSON.encode(buildGooglePrivacyDlpV2beta2InspectTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2InspectTemplate(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp =
            convert.JSON.encode(buildGooglePrivacyDlpV2beta2InspectTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2InspectTemplate(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.inspectTemplates;
      var arg_parent = "foo";
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
            unittest.equals("v2beta2/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta2ListInspectTemplatesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2ListInspectTemplatesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.OrganizationsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).organizations.inspectTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2beta2UpdateInspectTemplateRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
            .GooglePrivacyDlpV2beta2UpdateInspectTemplateRequest.fromJson(json);
        checkGooglePrivacyDlpV2beta2UpdateInspectTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp =
            convert.JSON.encode(buildGooglePrivacyDlpV2beta2InspectTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2InspectTemplate(response);
      })));
    });
  });

  unittest.group("resource-ProjectsContentResourceApi", () {
    unittest.test("method--deidentify", () {
      var mock = new HttpServerMock();
      api.ProjectsContentResourceApi res =
          new api.DlpApi(mock).projects.content;
      var arg_request = buildGooglePrivacyDlpV2beta2DeidentifyContentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2beta2DeidentifyContentRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2beta2DeidentifyContentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta2DeidentifyContentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deidentify(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2DeidentifyContentResponse(response);
      })));
    });

    unittest.test("method--inspect", () {
      var mock = new HttpServerMock();
      api.ProjectsContentResourceApi res =
          new api.DlpApi(mock).projects.content;
      var arg_request = buildGooglePrivacyDlpV2beta2InspectContentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2beta2InspectContentRequest.fromJson(json);
        checkGooglePrivacyDlpV2beta2InspectContentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta2InspectContentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .inspect(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2InspectContentResponse(response);
      })));
    });

    unittest.test("method--reidentify", () {
      var mock = new HttpServerMock();
      api.ProjectsContentResourceApi res =
          new api.DlpApi(mock).projects.content;
      var arg_request = buildGooglePrivacyDlpV2beta2ReidentifyContentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2beta2ReidentifyContentRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2beta2ReidentifyContentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta2ReidentifyContentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reidentify(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2ReidentifyContentResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsDataSourceResourceApi", () {
    unittest.test("method--analyze", () {
      var mock = new HttpServerMock();
      api.ProjectsDataSourceResourceApi res =
          new api.DlpApi(mock).projects.dataSource;
      var arg_request =
          buildGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
            .GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest.fromJson(json);
        checkGooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp = convert.JSON.encode(buildGooglePrivacyDlpV2beta2DlpJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .analyze(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2DlpJob(response);
      })));
    });

    unittest.test("method--inspect", () {
      var mock = new HttpServerMock();
      api.ProjectsDataSourceResourceApi res =
          new api.DlpApi(mock).projects.dataSource;
      var arg_request = buildGooglePrivacyDlpV2beta2InspectDataSourceRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2beta2InspectDataSourceRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2beta2InspectDataSourceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp = convert.JSON.encode(buildGooglePrivacyDlpV2beta2DlpJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .inspect(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2DlpJob(response);
      })));
    });
  });

  unittest.group("resource-ProjectsDeidentifyTemplatesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).projects.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest.fromJson(
            json);
        checkGooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta2DeidentifyTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2DeidentifyTemplate(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta2DeidentifyTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2DeidentifyTemplate(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).projects.deidentifyTemplates;
      var arg_parent = "foo";
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
            unittest.equals("v2beta2/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(
            buildGooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsDeidentifyTemplatesResourceApi res =
          new api.DlpApi(mock).projects.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest.fromJson(
            json);
        checkGooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta2DeidentifyTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2DeidentifyTemplate(response);
      })));
    });
  });

  unittest.group("resource-ProjectsDlpJobsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsDlpJobsResourceApi res =
          new api.DlpApi(mock).projects.dlpJobs;
      var arg_request = buildGooglePrivacyDlpV2beta2CancelDlpJobRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2beta2CancelDlpJobRequest.fromJson(json);
        checkGooglePrivacyDlpV2beta2CancelDlpJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp = convert.JSON.encode(buildGooglePrivacyDlpV2beta2DlpJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2DlpJob(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsDlpJobsResourceApi res =
          new api.DlpApi(mock).projects.dlpJobs;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_type = "foo";
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
            unittest.equals("v2beta2/"));
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
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta2ListDlpJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              type: arg_type,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2ListDlpJobsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsImageResourceApi", () {
    unittest.test("method--redact", () {
      var mock = new HttpServerMock();
      api.ProjectsImageResourceApi res = new api.DlpApi(mock).projects.image;
      var arg_request = buildGooglePrivacyDlpV2beta2RedactImageRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2beta2RedactImageRequest.fromJson(json);
        checkGooglePrivacyDlpV2beta2RedactImageRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta2RedactImageResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .redact(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2RedactImageResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsInspectTemplatesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).projects.inspectTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2beta2CreateInspectTemplateRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
            .GooglePrivacyDlpV2beta2CreateInspectTemplateRequest.fromJson(json);
        checkGooglePrivacyDlpV2beta2CreateInspectTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp =
            convert.JSON.encode(buildGooglePrivacyDlpV2beta2InspectTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2InspectTemplate(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp =
            convert.JSON.encode(buildGooglePrivacyDlpV2beta2InspectTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2InspectTemplate(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).projects.inspectTemplates;
      var arg_parent = "foo";
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
            unittest.equals("v2beta2/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta2ListInspectTemplatesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2ListInspectTemplatesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsInspectTemplatesResourceApi res =
          new api.DlpApi(mock).projects.inspectTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2beta2UpdateInspectTemplateRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
            .GooglePrivacyDlpV2beta2UpdateInspectTemplateRequest.fromJson(json);
        checkGooglePrivacyDlpV2beta2UpdateInspectTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp =
            convert.JSON.encode(buildGooglePrivacyDlpV2beta2InspectTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2InspectTemplate(response);
      })));
    });
  });

  unittest.group("resource-ProjectsJobTriggersResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsJobTriggersResourceApi res =
          new api.DlpApi(mock).projects.jobTriggers;
      var arg_request = buildGooglePrivacyDlpV2beta2CreateJobTriggerRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2beta2CreateJobTriggerRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2beta2CreateJobTriggerRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp =
            convert.JSON.encode(buildGooglePrivacyDlpV2beta2JobTrigger());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2JobTrigger(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp =
            convert.JSON.encode(buildGooglePrivacyDlpV2beta2JobTrigger());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2JobTrigger(response);
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
            unittest.equals("v2beta2/"));
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
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON
            .encode(buildGooglePrivacyDlpV2beta2ListJobTriggersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2ListJobTriggersResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsJobTriggersResourceApi res =
          new api.DlpApi(mock).projects.jobTriggers;
      var arg_request = buildGooglePrivacyDlpV2beta2UpdateJobTriggerRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GooglePrivacyDlpV2beta2UpdateJobTriggerRequest.fromJson(
                json);
        checkGooglePrivacyDlpV2beta2UpdateJobTriggerRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta2/"));
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
        var resp =
            convert.JSON.encode(buildGooglePrivacyDlpV2beta2JobTrigger());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2beta2JobTrigger(response);
      })));
    });
  });
}
