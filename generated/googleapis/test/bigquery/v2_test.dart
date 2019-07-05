library googleapis.bigquery.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/bigquery/v2.dart' as api;

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

core.int buildCounterAggregateClassificationMetrics = 0;
buildAggregateClassificationMetrics() {
  var o = new api.AggregateClassificationMetrics();
  buildCounterAggregateClassificationMetrics++;
  if (buildCounterAggregateClassificationMetrics < 3) {
    o.accuracy = 42.0;
    o.f1Score = 42.0;
    o.logLoss = 42.0;
    o.precision = 42.0;
    o.recall = 42.0;
    o.rocAuc = 42.0;
    o.threshold = 42.0;
  }
  buildCounterAggregateClassificationMetrics--;
  return o;
}

checkAggregateClassificationMetrics(api.AggregateClassificationMetrics o) {
  buildCounterAggregateClassificationMetrics++;
  if (buildCounterAggregateClassificationMetrics < 3) {
    unittest.expect(o.accuracy, unittest.equals(42.0));
    unittest.expect(o.f1Score, unittest.equals(42.0));
    unittest.expect(o.logLoss, unittest.equals(42.0));
    unittest.expect(o.precision, unittest.equals(42.0));
    unittest.expect(o.recall, unittest.equals(42.0));
    unittest.expect(o.rocAuc, unittest.equals(42.0));
    unittest.expect(o.threshold, unittest.equals(42.0));
  }
  buildCounterAggregateClassificationMetrics--;
}

core.int buildCounterArgument = 0;
buildArgument() {
  var o = new api.Argument();
  buildCounterArgument++;
  if (buildCounterArgument < 3) {
    o.argumentKind = "foo";
    o.dataType = buildStandardSqlDataType();
    o.mode = "foo";
    o.name = "foo";
  }
  buildCounterArgument--;
  return o;
}

checkArgument(api.Argument o) {
  buildCounterArgument++;
  if (buildCounterArgument < 3) {
    unittest.expect(o.argumentKind, unittest.equals('foo'));
    checkStandardSqlDataType(o.dataType);
    unittest.expect(o.mode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterArgument--;
}

core.int buildCounterBigQueryModelTraining = 0;
buildBigQueryModelTraining() {
  var o = new api.BigQueryModelTraining();
  buildCounterBigQueryModelTraining++;
  if (buildCounterBigQueryModelTraining < 3) {
    o.currentIteration = 42;
    o.expectedTotalIterations = "foo";
  }
  buildCounterBigQueryModelTraining--;
  return o;
}

checkBigQueryModelTraining(api.BigQueryModelTraining o) {
  buildCounterBigQueryModelTraining++;
  if (buildCounterBigQueryModelTraining < 3) {
    unittest.expect(o.currentIteration, unittest.equals(42));
    unittest.expect(o.expectedTotalIterations, unittest.equals('foo'));
  }
  buildCounterBigQueryModelTraining--;
}

core.int buildCounterBigtableColumn = 0;
buildBigtableColumn() {
  var o = new api.BigtableColumn();
  buildCounterBigtableColumn++;
  if (buildCounterBigtableColumn < 3) {
    o.encoding = "foo";
    o.fieldName = "foo";
    o.onlyReadLatest = true;
    o.qualifierEncoded = "foo";
    o.qualifierString = "foo";
    o.type = "foo";
  }
  buildCounterBigtableColumn--;
  return o;
}

checkBigtableColumn(api.BigtableColumn o) {
  buildCounterBigtableColumn++;
  if (buildCounterBigtableColumn < 3) {
    unittest.expect(o.encoding, unittest.equals('foo'));
    unittest.expect(o.fieldName, unittest.equals('foo'));
    unittest.expect(o.onlyReadLatest, unittest.isTrue);
    unittest.expect(o.qualifierEncoded, unittest.equals('foo'));
    unittest.expect(o.qualifierString, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBigtableColumn--;
}

buildUnnamed3264() {
  var o = new core.List<api.BigtableColumn>();
  o.add(buildBigtableColumn());
  o.add(buildBigtableColumn());
  return o;
}

checkUnnamed3264(core.List<api.BigtableColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigtableColumn(o[0]);
  checkBigtableColumn(o[1]);
}

core.int buildCounterBigtableColumnFamily = 0;
buildBigtableColumnFamily() {
  var o = new api.BigtableColumnFamily();
  buildCounterBigtableColumnFamily++;
  if (buildCounterBigtableColumnFamily < 3) {
    o.columns = buildUnnamed3264();
    o.encoding = "foo";
    o.familyId = "foo";
    o.onlyReadLatest = true;
    o.type = "foo";
  }
  buildCounterBigtableColumnFamily--;
  return o;
}

checkBigtableColumnFamily(api.BigtableColumnFamily o) {
  buildCounterBigtableColumnFamily++;
  if (buildCounterBigtableColumnFamily < 3) {
    checkUnnamed3264(o.columns);
    unittest.expect(o.encoding, unittest.equals('foo'));
    unittest.expect(o.familyId, unittest.equals('foo'));
    unittest.expect(o.onlyReadLatest, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBigtableColumnFamily--;
}

buildUnnamed3265() {
  var o = new core.List<api.BigtableColumnFamily>();
  o.add(buildBigtableColumnFamily());
  o.add(buildBigtableColumnFamily());
  return o;
}

checkUnnamed3265(core.List<api.BigtableColumnFamily> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigtableColumnFamily(o[0]);
  checkBigtableColumnFamily(o[1]);
}

core.int buildCounterBigtableOptions = 0;
buildBigtableOptions() {
  var o = new api.BigtableOptions();
  buildCounterBigtableOptions++;
  if (buildCounterBigtableOptions < 3) {
    o.columnFamilies = buildUnnamed3265();
    o.ignoreUnspecifiedColumnFamilies = true;
    o.readRowkeyAsString = true;
  }
  buildCounterBigtableOptions--;
  return o;
}

checkBigtableOptions(api.BigtableOptions o) {
  buildCounterBigtableOptions++;
  if (buildCounterBigtableOptions < 3) {
    checkUnnamed3265(o.columnFamilies);
    unittest.expect(o.ignoreUnspecifiedColumnFamilies, unittest.isTrue);
    unittest.expect(o.readRowkeyAsString, unittest.isTrue);
  }
  buildCounterBigtableOptions--;
}

buildUnnamed3266() {
  var o = new core.List<api.BinaryConfusionMatrix>();
  o.add(buildBinaryConfusionMatrix());
  o.add(buildBinaryConfusionMatrix());
  return o;
}

checkUnnamed3266(core.List<api.BinaryConfusionMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinaryConfusionMatrix(o[0]);
  checkBinaryConfusionMatrix(o[1]);
}

core.int buildCounterBinaryClassificationMetrics = 0;
buildBinaryClassificationMetrics() {
  var o = new api.BinaryClassificationMetrics();
  buildCounterBinaryClassificationMetrics++;
  if (buildCounterBinaryClassificationMetrics < 3) {
    o.aggregateClassificationMetrics = buildAggregateClassificationMetrics();
    o.binaryConfusionMatrixList = buildUnnamed3266();
    o.negativeLabel = "foo";
    o.positiveLabel = "foo";
  }
  buildCounterBinaryClassificationMetrics--;
  return o;
}

checkBinaryClassificationMetrics(api.BinaryClassificationMetrics o) {
  buildCounterBinaryClassificationMetrics++;
  if (buildCounterBinaryClassificationMetrics < 3) {
    checkAggregateClassificationMetrics(o.aggregateClassificationMetrics);
    checkUnnamed3266(o.binaryConfusionMatrixList);
    unittest.expect(o.negativeLabel, unittest.equals('foo'));
    unittest.expect(o.positiveLabel, unittest.equals('foo'));
  }
  buildCounterBinaryClassificationMetrics--;
}

core.int buildCounterBinaryConfusionMatrix = 0;
buildBinaryConfusionMatrix() {
  var o = new api.BinaryConfusionMatrix();
  buildCounterBinaryConfusionMatrix++;
  if (buildCounterBinaryConfusionMatrix < 3) {
    o.accuracy = 42.0;
    o.f1Score = 42.0;
    o.falseNegatives = "foo";
    o.falsePositives = "foo";
    o.positiveClassThreshold = 42.0;
    o.precision = 42.0;
    o.recall = 42.0;
    o.trueNegatives = "foo";
    o.truePositives = "foo";
  }
  buildCounterBinaryConfusionMatrix--;
  return o;
}

checkBinaryConfusionMatrix(api.BinaryConfusionMatrix o) {
  buildCounterBinaryConfusionMatrix++;
  if (buildCounterBinaryConfusionMatrix < 3) {
    unittest.expect(o.accuracy, unittest.equals(42.0));
    unittest.expect(o.f1Score, unittest.equals(42.0));
    unittest.expect(o.falseNegatives, unittest.equals('foo'));
    unittest.expect(o.falsePositives, unittest.equals('foo'));
    unittest.expect(o.positiveClassThreshold, unittest.equals(42.0));
    unittest.expect(o.precision, unittest.equals(42.0));
    unittest.expect(o.recall, unittest.equals(42.0));
    unittest.expect(o.trueNegatives, unittest.equals('foo'));
    unittest.expect(o.truePositives, unittest.equals('foo'));
  }
  buildCounterBinaryConfusionMatrix--;
}

core.int buildCounterBqmlIterationResult = 0;
buildBqmlIterationResult() {
  var o = new api.BqmlIterationResult();
  buildCounterBqmlIterationResult++;
  if (buildCounterBqmlIterationResult < 3) {
    o.durationMs = "foo";
    o.evalLoss = 42.0;
    o.index = 42;
    o.learnRate = 42.0;
    o.trainingLoss = 42.0;
  }
  buildCounterBqmlIterationResult--;
  return o;
}

checkBqmlIterationResult(api.BqmlIterationResult o) {
  buildCounterBqmlIterationResult++;
  if (buildCounterBqmlIterationResult < 3) {
    unittest.expect(o.durationMs, unittest.equals('foo'));
    unittest.expect(o.evalLoss, unittest.equals(42.0));
    unittest.expect(o.index, unittest.equals(42));
    unittest.expect(o.learnRate, unittest.equals(42.0));
    unittest.expect(o.trainingLoss, unittest.equals(42.0));
  }
  buildCounterBqmlIterationResult--;
}

buildUnnamed3267() {
  var o = new core.List<api.BqmlIterationResult>();
  o.add(buildBqmlIterationResult());
  o.add(buildBqmlIterationResult());
  return o;
}

checkUnnamed3267(core.List<api.BqmlIterationResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBqmlIterationResult(o[0]);
  checkBqmlIterationResult(o[1]);
}

core.int buildCounterBqmlTrainingRunTrainingOptions = 0;
buildBqmlTrainingRunTrainingOptions() {
  var o = new api.BqmlTrainingRunTrainingOptions();
  buildCounterBqmlTrainingRunTrainingOptions++;
  if (buildCounterBqmlTrainingRunTrainingOptions < 3) {
    o.earlyStop = true;
    o.l1Reg = 42.0;
    o.l2Reg = 42.0;
    o.learnRate = 42.0;
    o.learnRateStrategy = "foo";
    o.lineSearchInitLearnRate = 42.0;
    o.maxIteration = "foo";
    o.minRelProgress = 42.0;
    o.warmStart = true;
  }
  buildCounterBqmlTrainingRunTrainingOptions--;
  return o;
}

checkBqmlTrainingRunTrainingOptions(api.BqmlTrainingRunTrainingOptions o) {
  buildCounterBqmlTrainingRunTrainingOptions++;
  if (buildCounterBqmlTrainingRunTrainingOptions < 3) {
    unittest.expect(o.earlyStop, unittest.isTrue);
    unittest.expect(o.l1Reg, unittest.equals(42.0));
    unittest.expect(o.l2Reg, unittest.equals(42.0));
    unittest.expect(o.learnRate, unittest.equals(42.0));
    unittest.expect(o.learnRateStrategy, unittest.equals('foo'));
    unittest.expect(o.lineSearchInitLearnRate, unittest.equals(42.0));
    unittest.expect(o.maxIteration, unittest.equals('foo'));
    unittest.expect(o.minRelProgress, unittest.equals(42.0));
    unittest.expect(o.warmStart, unittest.isTrue);
  }
  buildCounterBqmlTrainingRunTrainingOptions--;
}

core.int buildCounterBqmlTrainingRun = 0;
buildBqmlTrainingRun() {
  var o = new api.BqmlTrainingRun();
  buildCounterBqmlTrainingRun++;
  if (buildCounterBqmlTrainingRun < 3) {
    o.iterationResults = buildUnnamed3267();
    o.startTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.state = "foo";
    o.trainingOptions = buildBqmlTrainingRunTrainingOptions();
  }
  buildCounterBqmlTrainingRun--;
  return o;
}

checkBqmlTrainingRun(api.BqmlTrainingRun o) {
  buildCounterBqmlTrainingRun++;
  if (buildCounterBqmlTrainingRun < 3) {
    checkUnnamed3267(o.iterationResults);
    unittest.expect(o.startTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.state, unittest.equals('foo'));
    checkBqmlTrainingRunTrainingOptions(o.trainingOptions);
  }
  buildCounterBqmlTrainingRun--;
}

core.int buildCounterClusterInfo = 0;
buildClusterInfo() {
  var o = new api.ClusterInfo();
  buildCounterClusterInfo++;
  if (buildCounterClusterInfo < 3) {
    o.centroidId = "foo";
    o.clusterRadius = 42.0;
    o.clusterSize = "foo";
  }
  buildCounterClusterInfo--;
  return o;
}

checkClusterInfo(api.ClusterInfo o) {
  buildCounterClusterInfo++;
  if (buildCounterClusterInfo < 3) {
    unittest.expect(o.centroidId, unittest.equals('foo'));
    unittest.expect(o.clusterRadius, unittest.equals(42.0));
    unittest.expect(o.clusterSize, unittest.equals('foo'));
  }
  buildCounterClusterInfo--;
}

buildUnnamed3268() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3268(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterClustering = 0;
buildClustering() {
  var o = new api.Clustering();
  buildCounterClustering++;
  if (buildCounterClustering < 3) {
    o.fields = buildUnnamed3268();
  }
  buildCounterClustering--;
  return o;
}

checkClustering(api.Clustering o) {
  buildCounterClustering++;
  if (buildCounterClustering < 3) {
    checkUnnamed3268(o.fields);
  }
  buildCounterClustering--;
}

core.int buildCounterClusteringMetrics = 0;
buildClusteringMetrics() {
  var o = new api.ClusteringMetrics();
  buildCounterClusteringMetrics++;
  if (buildCounterClusteringMetrics < 3) {
    o.daviesBouldinIndex = 42.0;
    o.meanSquaredDistance = 42.0;
  }
  buildCounterClusteringMetrics--;
  return o;
}

checkClusteringMetrics(api.ClusteringMetrics o) {
  buildCounterClusteringMetrics++;
  if (buildCounterClusteringMetrics < 3) {
    unittest.expect(o.daviesBouldinIndex, unittest.equals(42.0));
    unittest.expect(o.meanSquaredDistance, unittest.equals(42.0));
  }
  buildCounterClusteringMetrics--;
}

buildUnnamed3269() {
  var o = new core.List<api.Row>();
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

checkUnnamed3269(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterConfusionMatrix = 0;
buildConfusionMatrix() {
  var o = new api.ConfusionMatrix();
  buildCounterConfusionMatrix++;
  if (buildCounterConfusionMatrix < 3) {
    o.confidenceThreshold = 42.0;
    o.rows = buildUnnamed3269();
  }
  buildCounterConfusionMatrix--;
  return o;
}

checkConfusionMatrix(api.ConfusionMatrix o) {
  buildCounterConfusionMatrix++;
  if (buildCounterConfusionMatrix < 3) {
    unittest.expect(o.confidenceThreshold, unittest.equals(42.0));
    checkUnnamed3269(o.rows);
  }
  buildCounterConfusionMatrix--;
}

core.int buildCounterCsvOptions = 0;
buildCsvOptions() {
  var o = new api.CsvOptions();
  buildCounterCsvOptions++;
  if (buildCounterCsvOptions < 3) {
    o.allowJaggedRows = true;
    o.allowQuotedNewlines = true;
    o.encoding = "foo";
    o.fieldDelimiter = "foo";
    o.quote = "foo";
    o.skipLeadingRows = "foo";
  }
  buildCounterCsvOptions--;
  return o;
}

checkCsvOptions(api.CsvOptions o) {
  buildCounterCsvOptions++;
  if (buildCounterCsvOptions < 3) {
    unittest.expect(o.allowJaggedRows, unittest.isTrue);
    unittest.expect(o.allowQuotedNewlines, unittest.isTrue);
    unittest.expect(o.encoding, unittest.equals('foo'));
    unittest.expect(o.fieldDelimiter, unittest.equals('foo'));
    unittest.expect(o.quote, unittest.equals('foo'));
    unittest.expect(o.skipLeadingRows, unittest.equals('foo'));
  }
  buildCounterCsvOptions--;
}

core.int buildCounterDatasetAccess = 0;
buildDatasetAccess() {
  var o = new api.DatasetAccess();
  buildCounterDatasetAccess++;
  if (buildCounterDatasetAccess < 3) {
    o.domain = "foo";
    o.groupByEmail = "foo";
    o.iamMember = "foo";
    o.role = "foo";
    o.specialGroup = "foo";
    o.userByEmail = "foo";
    o.view = buildTableReference();
  }
  buildCounterDatasetAccess--;
  return o;
}

checkDatasetAccess(api.DatasetAccess o) {
  buildCounterDatasetAccess++;
  if (buildCounterDatasetAccess < 3) {
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.groupByEmail, unittest.equals('foo'));
    unittest.expect(o.iamMember, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.specialGroup, unittest.equals('foo'));
    unittest.expect(o.userByEmail, unittest.equals('foo'));
    checkTableReference(o.view);
  }
  buildCounterDatasetAccess--;
}

buildUnnamed3270() {
  var o = new core.List<api.DatasetAccess>();
  o.add(buildDatasetAccess());
  o.add(buildDatasetAccess());
  return o;
}

checkUnnamed3270(core.List<api.DatasetAccess> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatasetAccess(o[0]);
  checkDatasetAccess(o[1]);
}

buildUnnamed3271() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3271(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterDataset = 0;
buildDataset() {
  var o = new api.Dataset();
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    o.access = buildUnnamed3270();
    o.creationTime = "foo";
    o.datasetReference = buildDatasetReference();
    o.defaultEncryptionConfiguration = buildEncryptionConfiguration();
    o.defaultPartitionExpirationMs = "foo";
    o.defaultTableExpirationMs = "foo";
    o.description = "foo";
    o.etag = "foo";
    o.friendlyName = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.labels = buildUnnamed3271();
    o.lastModifiedTime = "foo";
    o.location = "foo";
    o.selfLink = "foo";
  }
  buildCounterDataset--;
  return o;
}

checkDataset(api.Dataset o) {
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    checkUnnamed3270(o.access);
    unittest.expect(o.creationTime, unittest.equals('foo'));
    checkDatasetReference(o.datasetReference);
    checkEncryptionConfiguration(o.defaultEncryptionConfiguration);
    unittest.expect(o.defaultPartitionExpirationMs, unittest.equals('foo'));
    unittest.expect(o.defaultTableExpirationMs, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.friendlyName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3271(o.labels);
    unittest.expect(o.lastModifiedTime, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterDataset--;
}

buildUnnamed3272() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3272(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterDatasetListDatasets = 0;
buildDatasetListDatasets() {
  var o = new api.DatasetListDatasets();
  buildCounterDatasetListDatasets++;
  if (buildCounterDatasetListDatasets < 3) {
    o.datasetReference = buildDatasetReference();
    o.friendlyName = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.labels = buildUnnamed3272();
    o.location = "foo";
  }
  buildCounterDatasetListDatasets--;
  return o;
}

checkDatasetListDatasets(api.DatasetListDatasets o) {
  buildCounterDatasetListDatasets++;
  if (buildCounterDatasetListDatasets < 3) {
    checkDatasetReference(o.datasetReference);
    unittest.expect(o.friendlyName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3272(o.labels);
    unittest.expect(o.location, unittest.equals('foo'));
  }
  buildCounterDatasetListDatasets--;
}

buildUnnamed3273() {
  var o = new core.List<api.DatasetListDatasets>();
  o.add(buildDatasetListDatasets());
  o.add(buildDatasetListDatasets());
  return o;
}

checkUnnamed3273(core.List<api.DatasetListDatasets> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatasetListDatasets(o[0]);
  checkDatasetListDatasets(o[1]);
}

core.int buildCounterDatasetList = 0;
buildDatasetList() {
  var o = new api.DatasetList();
  buildCounterDatasetList++;
  if (buildCounterDatasetList < 3) {
    o.datasets = buildUnnamed3273();
    o.etag = "foo";
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterDatasetList--;
  return o;
}

checkDatasetList(api.DatasetList o) {
  buildCounterDatasetList++;
  if (buildCounterDatasetList < 3) {
    checkUnnamed3273(o.datasets);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterDatasetList--;
}

core.int buildCounterDatasetReference = 0;
buildDatasetReference() {
  var o = new api.DatasetReference();
  buildCounterDatasetReference++;
  if (buildCounterDatasetReference < 3) {
    o.datasetId = "foo";
    o.projectId = "foo";
  }
  buildCounterDatasetReference--;
  return o;
}

checkDatasetReference(api.DatasetReference o) {
  buildCounterDatasetReference++;
  if (buildCounterDatasetReference < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterDatasetReference--;
}

buildUnnamed3274() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3274(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterDestinationTableProperties = 0;
buildDestinationTableProperties() {
  var o = new api.DestinationTableProperties();
  buildCounterDestinationTableProperties++;
  if (buildCounterDestinationTableProperties < 3) {
    o.description = "foo";
    o.friendlyName = "foo";
    o.labels = buildUnnamed3274();
  }
  buildCounterDestinationTableProperties--;
  return o;
}

checkDestinationTableProperties(api.DestinationTableProperties o) {
  buildCounterDestinationTableProperties++;
  if (buildCounterDestinationTableProperties < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.friendlyName, unittest.equals('foo'));
    checkUnnamed3274(o.labels);
  }
  buildCounterDestinationTableProperties--;
}

core.int buildCounterEncryptionConfiguration = 0;
buildEncryptionConfiguration() {
  var o = new api.EncryptionConfiguration();
  buildCounterEncryptionConfiguration++;
  if (buildCounterEncryptionConfiguration < 3) {
    o.kmsKeyName = "foo";
  }
  buildCounterEncryptionConfiguration--;
  return o;
}

checkEncryptionConfiguration(api.EncryptionConfiguration o) {
  buildCounterEncryptionConfiguration++;
  if (buildCounterEncryptionConfiguration < 3) {
    unittest.expect(o.kmsKeyName, unittest.equals('foo'));
  }
  buildCounterEncryptionConfiguration--;
}

core.int buildCounterEntry = 0;
buildEntry() {
  var o = new api.Entry();
  buildCounterEntry++;
  if (buildCounterEntry < 3) {
    o.itemCount = "foo";
    o.predictedLabel = "foo";
  }
  buildCounterEntry--;
  return o;
}

checkEntry(api.Entry o) {
  buildCounterEntry++;
  if (buildCounterEntry < 3) {
    unittest.expect(o.itemCount, unittest.equals('foo'));
    unittest.expect(o.predictedLabel, unittest.equals('foo'));
  }
  buildCounterEntry--;
}

core.int buildCounterErrorProto = 0;
buildErrorProto() {
  var o = new api.ErrorProto();
  buildCounterErrorProto++;
  if (buildCounterErrorProto < 3) {
    o.debugInfo = "foo";
    o.location = "foo";
    o.message = "foo";
    o.reason = "foo";
  }
  buildCounterErrorProto--;
  return o;
}

checkErrorProto(api.ErrorProto o) {
  buildCounterErrorProto++;
  if (buildCounterErrorProto < 3) {
    unittest.expect(o.debugInfo, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterErrorProto--;
}

core.int buildCounterEvaluationMetrics = 0;
buildEvaluationMetrics() {
  var o = new api.EvaluationMetrics();
  buildCounterEvaluationMetrics++;
  if (buildCounterEvaluationMetrics < 3) {
    o.binaryClassificationMetrics = buildBinaryClassificationMetrics();
    o.clusteringMetrics = buildClusteringMetrics();
    o.multiClassClassificationMetrics = buildMultiClassClassificationMetrics();
    o.regressionMetrics = buildRegressionMetrics();
  }
  buildCounterEvaluationMetrics--;
  return o;
}

checkEvaluationMetrics(api.EvaluationMetrics o) {
  buildCounterEvaluationMetrics++;
  if (buildCounterEvaluationMetrics < 3) {
    checkBinaryClassificationMetrics(o.binaryClassificationMetrics);
    checkClusteringMetrics(o.clusteringMetrics);
    checkMultiClassClassificationMetrics(o.multiClassClassificationMetrics);
    checkRegressionMetrics(o.regressionMetrics);
  }
  buildCounterEvaluationMetrics--;
}

buildUnnamed3275() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3275(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3276() {
  var o = new core.List<api.ExplainQueryStep>();
  o.add(buildExplainQueryStep());
  o.add(buildExplainQueryStep());
  return o;
}

checkUnnamed3276(core.List<api.ExplainQueryStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExplainQueryStep(o[0]);
  checkExplainQueryStep(o[1]);
}

core.int buildCounterExplainQueryStage = 0;
buildExplainQueryStage() {
  var o = new api.ExplainQueryStage();
  buildCounterExplainQueryStage++;
  if (buildCounterExplainQueryStage < 3) {
    o.completedParallelInputs = "foo";
    o.computeMsAvg = "foo";
    o.computeMsMax = "foo";
    o.computeRatioAvg = 42.0;
    o.computeRatioMax = 42.0;
    o.endMs = "foo";
    o.id = "foo";
    o.inputStages = buildUnnamed3275();
    o.name = "foo";
    o.parallelInputs = "foo";
    o.readMsAvg = "foo";
    o.readMsMax = "foo";
    o.readRatioAvg = 42.0;
    o.readRatioMax = 42.0;
    o.recordsRead = "foo";
    o.recordsWritten = "foo";
    o.shuffleOutputBytes = "foo";
    o.shuffleOutputBytesSpilled = "foo";
    o.startMs = "foo";
    o.status = "foo";
    o.steps = buildUnnamed3276();
    o.waitMsAvg = "foo";
    o.waitMsMax = "foo";
    o.waitRatioAvg = 42.0;
    o.waitRatioMax = 42.0;
    o.writeMsAvg = "foo";
    o.writeMsMax = "foo";
    o.writeRatioAvg = 42.0;
    o.writeRatioMax = 42.0;
  }
  buildCounterExplainQueryStage--;
  return o;
}

checkExplainQueryStage(api.ExplainQueryStage o) {
  buildCounterExplainQueryStage++;
  if (buildCounterExplainQueryStage < 3) {
    unittest.expect(o.completedParallelInputs, unittest.equals('foo'));
    unittest.expect(o.computeMsAvg, unittest.equals('foo'));
    unittest.expect(o.computeMsMax, unittest.equals('foo'));
    unittest.expect(o.computeRatioAvg, unittest.equals(42.0));
    unittest.expect(o.computeRatioMax, unittest.equals(42.0));
    unittest.expect(o.endMs, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3275(o.inputStages);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parallelInputs, unittest.equals('foo'));
    unittest.expect(o.readMsAvg, unittest.equals('foo'));
    unittest.expect(o.readMsMax, unittest.equals('foo'));
    unittest.expect(o.readRatioAvg, unittest.equals(42.0));
    unittest.expect(o.readRatioMax, unittest.equals(42.0));
    unittest.expect(o.recordsRead, unittest.equals('foo'));
    unittest.expect(o.recordsWritten, unittest.equals('foo'));
    unittest.expect(o.shuffleOutputBytes, unittest.equals('foo'));
    unittest.expect(o.shuffleOutputBytesSpilled, unittest.equals('foo'));
    unittest.expect(o.startMs, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed3276(o.steps);
    unittest.expect(o.waitMsAvg, unittest.equals('foo'));
    unittest.expect(o.waitMsMax, unittest.equals('foo'));
    unittest.expect(o.waitRatioAvg, unittest.equals(42.0));
    unittest.expect(o.waitRatioMax, unittest.equals(42.0));
    unittest.expect(o.writeMsAvg, unittest.equals('foo'));
    unittest.expect(o.writeMsMax, unittest.equals('foo'));
    unittest.expect(o.writeRatioAvg, unittest.equals(42.0));
    unittest.expect(o.writeRatioMax, unittest.equals(42.0));
  }
  buildCounterExplainQueryStage--;
}

buildUnnamed3277() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3277(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExplainQueryStep = 0;
buildExplainQueryStep() {
  var o = new api.ExplainQueryStep();
  buildCounterExplainQueryStep++;
  if (buildCounterExplainQueryStep < 3) {
    o.kind = "foo";
    o.substeps = buildUnnamed3277();
  }
  buildCounterExplainQueryStep--;
  return o;
}

checkExplainQueryStep(api.ExplainQueryStep o) {
  buildCounterExplainQueryStep++;
  if (buildCounterExplainQueryStep < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3277(o.substeps);
  }
  buildCounterExplainQueryStep--;
}

buildUnnamed3278() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3278(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExternalDataConfiguration = 0;
buildExternalDataConfiguration() {
  var o = new api.ExternalDataConfiguration();
  buildCounterExternalDataConfiguration++;
  if (buildCounterExternalDataConfiguration < 3) {
    o.autodetect = true;
    o.bigtableOptions = buildBigtableOptions();
    o.compression = "foo";
    o.csvOptions = buildCsvOptions();
    o.googleSheetsOptions = buildGoogleSheetsOptions();
    o.hivePartitioningMode = "foo";
    o.hivePartitioningOptions = buildHivePartitioningOptions();
    o.ignoreUnknownValues = true;
    o.maxBadRecords = 42;
    o.schema = buildTableSchema();
    o.sourceFormat = "foo";
    o.sourceUris = buildUnnamed3278();
  }
  buildCounterExternalDataConfiguration--;
  return o;
}

checkExternalDataConfiguration(api.ExternalDataConfiguration o) {
  buildCounterExternalDataConfiguration++;
  if (buildCounterExternalDataConfiguration < 3) {
    unittest.expect(o.autodetect, unittest.isTrue);
    checkBigtableOptions(o.bigtableOptions);
    unittest.expect(o.compression, unittest.equals('foo'));
    checkCsvOptions(o.csvOptions);
    checkGoogleSheetsOptions(o.googleSheetsOptions);
    unittest.expect(o.hivePartitioningMode, unittest.equals('foo'));
    checkHivePartitioningOptions(o.hivePartitioningOptions);
    unittest.expect(o.ignoreUnknownValues, unittest.isTrue);
    unittest.expect(o.maxBadRecords, unittest.equals(42));
    checkTableSchema(o.schema);
    unittest.expect(o.sourceFormat, unittest.equals('foo'));
    checkUnnamed3278(o.sourceUris);
  }
  buildCounterExternalDataConfiguration--;
}

buildUnnamed3279() {
  var o = new core.List<api.ErrorProto>();
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

checkUnnamed3279(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

buildUnnamed3280() {
  var o = new core.List<api.TableRow>();
  o.add(buildTableRow());
  o.add(buildTableRow());
  return o;
}

checkUnnamed3280(core.List<api.TableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableRow(o[0]);
  checkTableRow(o[1]);
}

core.int buildCounterGetQueryResultsResponse = 0;
buildGetQueryResultsResponse() {
  var o = new api.GetQueryResultsResponse();
  buildCounterGetQueryResultsResponse++;
  if (buildCounterGetQueryResultsResponse < 3) {
    o.cacheHit = true;
    o.errors = buildUnnamed3279();
    o.etag = "foo";
    o.jobComplete = true;
    o.jobReference = buildJobReference();
    o.kind = "foo";
    o.numDmlAffectedRows = "foo";
    o.pageToken = "foo";
    o.rows = buildUnnamed3280();
    o.schema = buildTableSchema();
    o.totalBytesProcessed = "foo";
    o.totalRows = "foo";
  }
  buildCounterGetQueryResultsResponse--;
  return o;
}

checkGetQueryResultsResponse(api.GetQueryResultsResponse o) {
  buildCounterGetQueryResultsResponse++;
  if (buildCounterGetQueryResultsResponse < 3) {
    unittest.expect(o.cacheHit, unittest.isTrue);
    checkUnnamed3279(o.errors);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.jobComplete, unittest.isTrue);
    checkJobReference(o.jobReference);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.numDmlAffectedRows, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkUnnamed3280(o.rows);
    checkTableSchema(o.schema);
    unittest.expect(o.totalBytesProcessed, unittest.equals('foo'));
    unittest.expect(o.totalRows, unittest.equals('foo'));
  }
  buildCounterGetQueryResultsResponse--;
}

core.int buildCounterGetServiceAccountResponse = 0;
buildGetServiceAccountResponse() {
  var o = new api.GetServiceAccountResponse();
  buildCounterGetServiceAccountResponse++;
  if (buildCounterGetServiceAccountResponse < 3) {
    o.email = "foo";
    o.kind = "foo";
  }
  buildCounterGetServiceAccountResponse--;
  return o;
}

checkGetServiceAccountResponse(api.GetServiceAccountResponse o) {
  buildCounterGetServiceAccountResponse++;
  if (buildCounterGetServiceAccountResponse < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterGetServiceAccountResponse--;
}

core.int buildCounterGoogleSheetsOptions = 0;
buildGoogleSheetsOptions() {
  var o = new api.GoogleSheetsOptions();
  buildCounterGoogleSheetsOptions++;
  if (buildCounterGoogleSheetsOptions < 3) {
    o.range = "foo";
    o.skipLeadingRows = "foo";
  }
  buildCounterGoogleSheetsOptions--;
  return o;
}

checkGoogleSheetsOptions(api.GoogleSheetsOptions o) {
  buildCounterGoogleSheetsOptions++;
  if (buildCounterGoogleSheetsOptions < 3) {
    unittest.expect(o.range, unittest.equals('foo'));
    unittest.expect(o.skipLeadingRows, unittest.equals('foo'));
  }
  buildCounterGoogleSheetsOptions--;
}

core.int buildCounterHivePartitioningOptions = 0;
buildHivePartitioningOptions() {
  var o = new api.HivePartitioningOptions();
  buildCounterHivePartitioningOptions++;
  if (buildCounterHivePartitioningOptions < 3) {
    o.mode = "foo";
    o.sourceUriPrefix = "foo";
  }
  buildCounterHivePartitioningOptions--;
  return o;
}

checkHivePartitioningOptions(api.HivePartitioningOptions o) {
  buildCounterHivePartitioningOptions++;
  if (buildCounterHivePartitioningOptions < 3) {
    unittest.expect(o.mode, unittest.equals('foo'));
    unittest.expect(o.sourceUriPrefix, unittest.equals('foo'));
  }
  buildCounterHivePartitioningOptions--;
}

buildUnnamed3281() {
  var o = new core.List<api.ClusterInfo>();
  o.add(buildClusterInfo());
  o.add(buildClusterInfo());
  return o;
}

checkUnnamed3281(core.List<api.ClusterInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterInfo(o[0]);
  checkClusterInfo(o[1]);
}

core.int buildCounterIterationResult = 0;
buildIterationResult() {
  var o = new api.IterationResult();
  buildCounterIterationResult++;
  if (buildCounterIterationResult < 3) {
    o.clusterInfos = buildUnnamed3281();
    o.durationMs = "foo";
    o.evalLoss = 42.0;
    o.index = 42;
    o.learnRate = 42.0;
    o.trainingLoss = 42.0;
  }
  buildCounterIterationResult--;
  return o;
}

checkIterationResult(api.IterationResult o) {
  buildCounterIterationResult++;
  if (buildCounterIterationResult < 3) {
    checkUnnamed3281(o.clusterInfos);
    unittest.expect(o.durationMs, unittest.equals('foo'));
    unittest.expect(o.evalLoss, unittest.equals(42.0));
    unittest.expect(o.index, unittest.equals(42));
    unittest.expect(o.learnRate, unittest.equals(42.0));
    unittest.expect(o.trainingLoss, unittest.equals(42.0));
  }
  buildCounterIterationResult--;
}

core.int buildCounterJob = 0;
buildJob() {
  var o = new api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.configuration = buildJobConfiguration();
    o.etag = "foo";
    o.id = "foo";
    o.jobReference = buildJobReference();
    o.kind = "foo";
    o.selfLink = "foo";
    o.statistics = buildJobStatistics();
    o.status = buildJobStatus();
    o.userEmail = "foo";
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    checkJobConfiguration(o.configuration);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkJobReference(o.jobReference);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkJobStatistics(o.statistics);
    checkJobStatus(o.status);
    unittest.expect(o.userEmail, unittest.equals('foo'));
  }
  buildCounterJob--;
}

core.int buildCounterJobCancelResponse = 0;
buildJobCancelResponse() {
  var o = new api.JobCancelResponse();
  buildCounterJobCancelResponse++;
  if (buildCounterJobCancelResponse < 3) {
    o.job = buildJob();
    o.kind = "foo";
  }
  buildCounterJobCancelResponse--;
  return o;
}

checkJobCancelResponse(api.JobCancelResponse o) {
  buildCounterJobCancelResponse++;
  if (buildCounterJobCancelResponse < 3) {
    checkJob(o.job);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterJobCancelResponse--;
}

buildUnnamed3282() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3282(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterJobConfiguration = 0;
buildJobConfiguration() {
  var o = new api.JobConfiguration();
  buildCounterJobConfiguration++;
  if (buildCounterJobConfiguration < 3) {
    o.copy = buildJobConfigurationTableCopy();
    o.dryRun = true;
    o.extract = buildJobConfigurationExtract();
    o.jobTimeoutMs = "foo";
    o.jobType = "foo";
    o.labels = buildUnnamed3282();
    o.load = buildJobConfigurationLoad();
    o.query = buildJobConfigurationQuery();
  }
  buildCounterJobConfiguration--;
  return o;
}

checkJobConfiguration(api.JobConfiguration o) {
  buildCounterJobConfiguration++;
  if (buildCounterJobConfiguration < 3) {
    checkJobConfigurationTableCopy(o.copy);
    unittest.expect(o.dryRun, unittest.isTrue);
    checkJobConfigurationExtract(o.extract);
    unittest.expect(o.jobTimeoutMs, unittest.equals('foo'));
    unittest.expect(o.jobType, unittest.equals('foo'));
    checkUnnamed3282(o.labels);
    checkJobConfigurationLoad(o.load);
    checkJobConfigurationQuery(o.query);
  }
  buildCounterJobConfiguration--;
}

buildUnnamed3283() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3283(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobConfigurationExtract = 0;
buildJobConfigurationExtract() {
  var o = new api.JobConfigurationExtract();
  buildCounterJobConfigurationExtract++;
  if (buildCounterJobConfigurationExtract < 3) {
    o.compression = "foo";
    o.destinationFormat = "foo";
    o.destinationUri = "foo";
    o.destinationUris = buildUnnamed3283();
    o.fieldDelimiter = "foo";
    o.printHeader = true;
    o.sourceTable = buildTableReference();
  }
  buildCounterJobConfigurationExtract--;
  return o;
}

checkJobConfigurationExtract(api.JobConfigurationExtract o) {
  buildCounterJobConfigurationExtract++;
  if (buildCounterJobConfigurationExtract < 3) {
    unittest.expect(o.compression, unittest.equals('foo'));
    unittest.expect(o.destinationFormat, unittest.equals('foo'));
    unittest.expect(o.destinationUri, unittest.equals('foo'));
    checkUnnamed3283(o.destinationUris);
    unittest.expect(o.fieldDelimiter, unittest.equals('foo'));
    unittest.expect(o.printHeader, unittest.isTrue);
    checkTableReference(o.sourceTable);
  }
  buildCounterJobConfigurationExtract--;
}

buildUnnamed3284() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3284(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3285() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3285(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3286() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3286(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobConfigurationLoad = 0;
buildJobConfigurationLoad() {
  var o = new api.JobConfigurationLoad();
  buildCounterJobConfigurationLoad++;
  if (buildCounterJobConfigurationLoad < 3) {
    o.allowJaggedRows = true;
    o.allowQuotedNewlines = true;
    o.autodetect = true;
    o.clustering = buildClustering();
    o.createDisposition = "foo";
    o.destinationEncryptionConfiguration = buildEncryptionConfiguration();
    o.destinationTable = buildTableReference();
    o.destinationTableProperties = buildDestinationTableProperties();
    o.encoding = "foo";
    o.fieldDelimiter = "foo";
    o.hivePartitioningMode = "foo";
    o.hivePartitioningOptions = buildHivePartitioningOptions();
    o.ignoreUnknownValues = true;
    o.maxBadRecords = 42;
    o.nullMarker = "foo";
    o.projectionFields = buildUnnamed3284();
    o.quote = "foo";
    o.rangePartitioning = buildRangePartitioning();
    o.schema = buildTableSchema();
    o.schemaInline = "foo";
    o.schemaInlineFormat = "foo";
    o.schemaUpdateOptions = buildUnnamed3285();
    o.skipLeadingRows = 42;
    o.sourceFormat = "foo";
    o.sourceUris = buildUnnamed3286();
    o.timePartitioning = buildTimePartitioning();
    o.useAvroLogicalTypes = true;
    o.writeDisposition = "foo";
  }
  buildCounterJobConfigurationLoad--;
  return o;
}

checkJobConfigurationLoad(api.JobConfigurationLoad o) {
  buildCounterJobConfigurationLoad++;
  if (buildCounterJobConfigurationLoad < 3) {
    unittest.expect(o.allowJaggedRows, unittest.isTrue);
    unittest.expect(o.allowQuotedNewlines, unittest.isTrue);
    unittest.expect(o.autodetect, unittest.isTrue);
    checkClustering(o.clustering);
    unittest.expect(o.createDisposition, unittest.equals('foo'));
    checkEncryptionConfiguration(o.destinationEncryptionConfiguration);
    checkTableReference(o.destinationTable);
    checkDestinationTableProperties(o.destinationTableProperties);
    unittest.expect(o.encoding, unittest.equals('foo'));
    unittest.expect(o.fieldDelimiter, unittest.equals('foo'));
    unittest.expect(o.hivePartitioningMode, unittest.equals('foo'));
    checkHivePartitioningOptions(o.hivePartitioningOptions);
    unittest.expect(o.ignoreUnknownValues, unittest.isTrue);
    unittest.expect(o.maxBadRecords, unittest.equals(42));
    unittest.expect(o.nullMarker, unittest.equals('foo'));
    checkUnnamed3284(o.projectionFields);
    unittest.expect(o.quote, unittest.equals('foo'));
    checkRangePartitioning(o.rangePartitioning);
    checkTableSchema(o.schema);
    unittest.expect(o.schemaInline, unittest.equals('foo'));
    unittest.expect(o.schemaInlineFormat, unittest.equals('foo'));
    checkUnnamed3285(o.schemaUpdateOptions);
    unittest.expect(o.skipLeadingRows, unittest.equals(42));
    unittest.expect(o.sourceFormat, unittest.equals('foo'));
    checkUnnamed3286(o.sourceUris);
    checkTimePartitioning(o.timePartitioning);
    unittest.expect(o.useAvroLogicalTypes, unittest.isTrue);
    unittest.expect(o.writeDisposition, unittest.equals('foo'));
  }
  buildCounterJobConfigurationLoad--;
}

buildUnnamed3287() {
  var o = new core.List<api.QueryParameter>();
  o.add(buildQueryParameter());
  o.add(buildQueryParameter());
  return o;
}

checkUnnamed3287(core.List<api.QueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameter(o[0]);
  checkQueryParameter(o[1]);
}

buildUnnamed3288() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3288(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3289() {
  var o = new core.Map<core.String, api.ExternalDataConfiguration>();
  o["x"] = buildExternalDataConfiguration();
  o["y"] = buildExternalDataConfiguration();
  return o;
}

checkUnnamed3289(core.Map<core.String, api.ExternalDataConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalDataConfiguration(o["x"]);
  checkExternalDataConfiguration(o["y"]);
}

buildUnnamed3290() {
  var o = new core.List<api.UserDefinedFunctionResource>();
  o.add(buildUserDefinedFunctionResource());
  o.add(buildUserDefinedFunctionResource());
  return o;
}

checkUnnamed3290(core.List<api.UserDefinedFunctionResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserDefinedFunctionResource(o[0]);
  checkUserDefinedFunctionResource(o[1]);
}

core.int buildCounterJobConfigurationQuery = 0;
buildJobConfigurationQuery() {
  var o = new api.JobConfigurationQuery();
  buildCounterJobConfigurationQuery++;
  if (buildCounterJobConfigurationQuery < 3) {
    o.allowLargeResults = true;
    o.clustering = buildClustering();
    o.createDisposition = "foo";
    o.defaultDataset = buildDatasetReference();
    o.destinationEncryptionConfiguration = buildEncryptionConfiguration();
    o.destinationTable = buildTableReference();
    o.flattenResults = true;
    o.maximumBillingTier = 42;
    o.maximumBytesBilled = "foo";
    o.parameterMode = "foo";
    o.preserveNulls = true;
    o.priority = "foo";
    o.query = "foo";
    o.queryParameters = buildUnnamed3287();
    o.rangePartitioning = buildRangePartitioning();
    o.schemaUpdateOptions = buildUnnamed3288();
    o.tableDefinitions = buildUnnamed3289();
    o.timePartitioning = buildTimePartitioning();
    o.useLegacySql = true;
    o.useQueryCache = true;
    o.userDefinedFunctionResources = buildUnnamed3290();
    o.writeDisposition = "foo";
  }
  buildCounterJobConfigurationQuery--;
  return o;
}

checkJobConfigurationQuery(api.JobConfigurationQuery o) {
  buildCounterJobConfigurationQuery++;
  if (buildCounterJobConfigurationQuery < 3) {
    unittest.expect(o.allowLargeResults, unittest.isTrue);
    checkClustering(o.clustering);
    unittest.expect(o.createDisposition, unittest.equals('foo'));
    checkDatasetReference(o.defaultDataset);
    checkEncryptionConfiguration(o.destinationEncryptionConfiguration);
    checkTableReference(o.destinationTable);
    unittest.expect(o.flattenResults, unittest.isTrue);
    unittest.expect(o.maximumBillingTier, unittest.equals(42));
    unittest.expect(o.maximumBytesBilled, unittest.equals('foo'));
    unittest.expect(o.parameterMode, unittest.equals('foo'));
    unittest.expect(o.preserveNulls, unittest.isTrue);
    unittest.expect(o.priority, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
    checkUnnamed3287(o.queryParameters);
    checkRangePartitioning(o.rangePartitioning);
    checkUnnamed3288(o.schemaUpdateOptions);
    checkUnnamed3289(o.tableDefinitions);
    checkTimePartitioning(o.timePartitioning);
    unittest.expect(o.useLegacySql, unittest.isTrue);
    unittest.expect(o.useQueryCache, unittest.isTrue);
    checkUnnamed3290(o.userDefinedFunctionResources);
    unittest.expect(o.writeDisposition, unittest.equals('foo'));
  }
  buildCounterJobConfigurationQuery--;
}

buildUnnamed3291() {
  var o = new core.List<api.TableReference>();
  o.add(buildTableReference());
  o.add(buildTableReference());
  return o;
}

checkUnnamed3291(core.List<api.TableReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableReference(o[0]);
  checkTableReference(o[1]);
}

core.int buildCounterJobConfigurationTableCopy = 0;
buildJobConfigurationTableCopy() {
  var o = new api.JobConfigurationTableCopy();
  buildCounterJobConfigurationTableCopy++;
  if (buildCounterJobConfigurationTableCopy < 3) {
    o.createDisposition = "foo";
    o.destinationEncryptionConfiguration = buildEncryptionConfiguration();
    o.destinationTable = buildTableReference();
    o.sourceTable = buildTableReference();
    o.sourceTables = buildUnnamed3291();
    o.writeDisposition = "foo";
  }
  buildCounterJobConfigurationTableCopy--;
  return o;
}

checkJobConfigurationTableCopy(api.JobConfigurationTableCopy o) {
  buildCounterJobConfigurationTableCopy++;
  if (buildCounterJobConfigurationTableCopy < 3) {
    unittest.expect(o.createDisposition, unittest.equals('foo'));
    checkEncryptionConfiguration(o.destinationEncryptionConfiguration);
    checkTableReference(o.destinationTable);
    checkTableReference(o.sourceTable);
    checkUnnamed3291(o.sourceTables);
    unittest.expect(o.writeDisposition, unittest.equals('foo'));
  }
  buildCounterJobConfigurationTableCopy--;
}

core.int buildCounterJobListJobs = 0;
buildJobListJobs() {
  var o = new api.JobListJobs();
  buildCounterJobListJobs++;
  if (buildCounterJobListJobs < 3) {
    o.configuration = buildJobConfiguration();
    o.errorResult = buildErrorProto();
    o.id = "foo";
    o.jobReference = buildJobReference();
    o.kind = "foo";
    o.state = "foo";
    o.statistics = buildJobStatistics();
    o.status = buildJobStatus();
    o.userEmail = "foo";
  }
  buildCounterJobListJobs--;
  return o;
}

checkJobListJobs(api.JobListJobs o) {
  buildCounterJobListJobs++;
  if (buildCounterJobListJobs < 3) {
    checkJobConfiguration(o.configuration);
    checkErrorProto(o.errorResult);
    unittest.expect(o.id, unittest.equals('foo'));
    checkJobReference(o.jobReference);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkJobStatistics(o.statistics);
    checkJobStatus(o.status);
    unittest.expect(o.userEmail, unittest.equals('foo'));
  }
  buildCounterJobListJobs--;
}

buildUnnamed3292() {
  var o = new core.List<api.JobListJobs>();
  o.add(buildJobListJobs());
  o.add(buildJobListJobs());
  return o;
}

checkUnnamed3292(core.List<api.JobListJobs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobListJobs(o[0]);
  checkJobListJobs(o[1]);
}

core.int buildCounterJobList = 0;
buildJobList() {
  var o = new api.JobList();
  buildCounterJobList++;
  if (buildCounterJobList < 3) {
    o.etag = "foo";
    o.jobs = buildUnnamed3292();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterJobList--;
  return o;
}

checkJobList(api.JobList o) {
  buildCounterJobList++;
  if (buildCounterJobList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed3292(o.jobs);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterJobList--;
}

core.int buildCounterJobReference = 0;
buildJobReference() {
  var o = new api.JobReference();
  buildCounterJobReference++;
  if (buildCounterJobReference < 3) {
    o.jobId = "foo";
    o.location = "foo";
    o.projectId = "foo";
  }
  buildCounterJobReference--;
  return o;
}

checkJobReference(api.JobReference o) {
  buildCounterJobReference++;
  if (buildCounterJobReference < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterJobReference--;
}

buildUnnamed3293() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3293(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobStatisticsReservationUsage = 0;
buildJobStatisticsReservationUsage() {
  var o = new api.JobStatisticsReservationUsage();
  buildCounterJobStatisticsReservationUsage++;
  if (buildCounterJobStatisticsReservationUsage < 3) {
    o.name = "foo";
    o.slotMs = "foo";
  }
  buildCounterJobStatisticsReservationUsage--;
  return o;
}

checkJobStatisticsReservationUsage(api.JobStatisticsReservationUsage o) {
  buildCounterJobStatisticsReservationUsage++;
  if (buildCounterJobStatisticsReservationUsage < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.slotMs, unittest.equals('foo'));
  }
  buildCounterJobStatisticsReservationUsage--;
}

buildUnnamed3294() {
  var o = new core.List<api.JobStatisticsReservationUsage>();
  o.add(buildJobStatisticsReservationUsage());
  o.add(buildJobStatisticsReservationUsage());
  return o;
}

checkUnnamed3294(core.List<api.JobStatisticsReservationUsage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobStatisticsReservationUsage(o[0]);
  checkJobStatisticsReservationUsage(o[1]);
}

core.int buildCounterJobStatistics = 0;
buildJobStatistics() {
  var o = new api.JobStatistics();
  buildCounterJobStatistics++;
  if (buildCounterJobStatistics < 3) {
    o.completionRatio = 42.0;
    o.creationTime = "foo";
    o.endTime = "foo";
    o.extract = buildJobStatistics4();
    o.load = buildJobStatistics3();
    o.numChildJobs = "foo";
    o.parentJobId = "foo";
    o.query = buildJobStatistics2();
    o.quotaDeferments = buildUnnamed3293();
    o.reservationUsage = buildUnnamed3294();
    o.reservationId = "foo";
    o.startTime = "foo";
    o.totalBytesProcessed = "foo";
    o.totalSlotMs = "foo";
  }
  buildCounterJobStatistics--;
  return o;
}

checkJobStatistics(api.JobStatistics o) {
  buildCounterJobStatistics++;
  if (buildCounterJobStatistics < 3) {
    unittest.expect(o.completionRatio, unittest.equals(42.0));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkJobStatistics4(o.extract);
    checkJobStatistics3(o.load);
    unittest.expect(o.numChildJobs, unittest.equals('foo'));
    unittest.expect(o.parentJobId, unittest.equals('foo'));
    checkJobStatistics2(o.query);
    checkUnnamed3293(o.quotaDeferments);
    checkUnnamed3294(o.reservationUsage);
    unittest.expect(o.reservationId, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.totalBytesProcessed, unittest.equals('foo'));
    unittest.expect(o.totalSlotMs, unittest.equals('foo'));
  }
  buildCounterJobStatistics--;
}

buildUnnamed3295() {
  var o = new core.List<api.ExplainQueryStage>();
  o.add(buildExplainQueryStage());
  o.add(buildExplainQueryStage());
  return o;
}

checkUnnamed3295(core.List<api.ExplainQueryStage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExplainQueryStage(o[0]);
  checkExplainQueryStage(o[1]);
}

buildUnnamed3296() {
  var o = new core.List<api.TableReference>();
  o.add(buildTableReference());
  o.add(buildTableReference());
  return o;
}

checkUnnamed3296(core.List<api.TableReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableReference(o[0]);
  checkTableReference(o[1]);
}

core.int buildCounterJobStatistics2ReservationUsage = 0;
buildJobStatistics2ReservationUsage() {
  var o = new api.JobStatistics2ReservationUsage();
  buildCounterJobStatistics2ReservationUsage++;
  if (buildCounterJobStatistics2ReservationUsage < 3) {
    o.name = "foo";
    o.slotMs = "foo";
  }
  buildCounterJobStatistics2ReservationUsage--;
  return o;
}

checkJobStatistics2ReservationUsage(api.JobStatistics2ReservationUsage o) {
  buildCounterJobStatistics2ReservationUsage++;
  if (buildCounterJobStatistics2ReservationUsage < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.slotMs, unittest.equals('foo'));
  }
  buildCounterJobStatistics2ReservationUsage--;
}

buildUnnamed3297() {
  var o = new core.List<api.JobStatistics2ReservationUsage>();
  o.add(buildJobStatistics2ReservationUsage());
  o.add(buildJobStatistics2ReservationUsage());
  return o;
}

checkUnnamed3297(core.List<api.JobStatistics2ReservationUsage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobStatistics2ReservationUsage(o[0]);
  checkJobStatistics2ReservationUsage(o[1]);
}

buildUnnamed3298() {
  var o = new core.List<api.QueryTimelineSample>();
  o.add(buildQueryTimelineSample());
  o.add(buildQueryTimelineSample());
  return o;
}

checkUnnamed3298(core.List<api.QueryTimelineSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryTimelineSample(o[0]);
  checkQueryTimelineSample(o[1]);
}

buildUnnamed3299() {
  var o = new core.List<api.QueryParameter>();
  o.add(buildQueryParameter());
  o.add(buildQueryParameter());
  return o;
}

checkUnnamed3299(core.List<api.QueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameter(o[0]);
  checkQueryParameter(o[1]);
}

core.int buildCounterJobStatistics2 = 0;
buildJobStatistics2() {
  var o = new api.JobStatistics2();
  buildCounterJobStatistics2++;
  if (buildCounterJobStatistics2 < 3) {
    o.billingTier = 42;
    o.cacheHit = true;
    o.ddlOperationPerformed = "foo";
    o.ddlTargetRoutine = buildRoutineReference();
    o.ddlTargetTable = buildTableReference();
    o.estimatedBytesProcessed = "foo";
    o.modelTraining = buildBigQueryModelTraining();
    o.modelTrainingCurrentIteration = 42;
    o.modelTrainingExpectedTotalIteration = "foo";
    o.numDmlAffectedRows = "foo";
    o.queryPlan = buildUnnamed3295();
    o.referencedTables = buildUnnamed3296();
    o.reservationUsage = buildUnnamed3297();
    o.schema = buildTableSchema();
    o.statementType = "foo";
    o.timeline = buildUnnamed3298();
    o.totalBytesBilled = "foo";
    o.totalBytesProcessed = "foo";
    o.totalBytesProcessedAccuracy = "foo";
    o.totalPartitionsProcessed = "foo";
    o.totalSlotMs = "foo";
    o.undeclaredQueryParameters = buildUnnamed3299();
  }
  buildCounterJobStatistics2--;
  return o;
}

checkJobStatistics2(api.JobStatistics2 o) {
  buildCounterJobStatistics2++;
  if (buildCounterJobStatistics2 < 3) {
    unittest.expect(o.billingTier, unittest.equals(42));
    unittest.expect(o.cacheHit, unittest.isTrue);
    unittest.expect(o.ddlOperationPerformed, unittest.equals('foo'));
    checkRoutineReference(o.ddlTargetRoutine);
    checkTableReference(o.ddlTargetTable);
    unittest.expect(o.estimatedBytesProcessed, unittest.equals('foo'));
    checkBigQueryModelTraining(o.modelTraining);
    unittest.expect(o.modelTrainingCurrentIteration, unittest.equals(42));
    unittest.expect(
        o.modelTrainingExpectedTotalIteration, unittest.equals('foo'));
    unittest.expect(o.numDmlAffectedRows, unittest.equals('foo'));
    checkUnnamed3295(o.queryPlan);
    checkUnnamed3296(o.referencedTables);
    checkUnnamed3297(o.reservationUsage);
    checkTableSchema(o.schema);
    unittest.expect(o.statementType, unittest.equals('foo'));
    checkUnnamed3298(o.timeline);
    unittest.expect(o.totalBytesBilled, unittest.equals('foo'));
    unittest.expect(o.totalBytesProcessed, unittest.equals('foo'));
    unittest.expect(o.totalBytesProcessedAccuracy, unittest.equals('foo'));
    unittest.expect(o.totalPartitionsProcessed, unittest.equals('foo'));
    unittest.expect(o.totalSlotMs, unittest.equals('foo'));
    checkUnnamed3299(o.undeclaredQueryParameters);
  }
  buildCounterJobStatistics2--;
}

core.int buildCounterJobStatistics3 = 0;
buildJobStatistics3() {
  var o = new api.JobStatistics3();
  buildCounterJobStatistics3++;
  if (buildCounterJobStatistics3 < 3) {
    o.badRecords = "foo";
    o.inputFileBytes = "foo";
    o.inputFiles = "foo";
    o.outputBytes = "foo";
    o.outputRows = "foo";
  }
  buildCounterJobStatistics3--;
  return o;
}

checkJobStatistics3(api.JobStatistics3 o) {
  buildCounterJobStatistics3++;
  if (buildCounterJobStatistics3 < 3) {
    unittest.expect(o.badRecords, unittest.equals('foo'));
    unittest.expect(o.inputFileBytes, unittest.equals('foo'));
    unittest.expect(o.inputFiles, unittest.equals('foo'));
    unittest.expect(o.outputBytes, unittest.equals('foo'));
    unittest.expect(o.outputRows, unittest.equals('foo'));
  }
  buildCounterJobStatistics3--;
}

buildUnnamed3300() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3300(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobStatistics4 = 0;
buildJobStatistics4() {
  var o = new api.JobStatistics4();
  buildCounterJobStatistics4++;
  if (buildCounterJobStatistics4 < 3) {
    o.destinationUriFileCounts = buildUnnamed3300();
    o.inputBytes = "foo";
  }
  buildCounterJobStatistics4--;
  return o;
}

checkJobStatistics4(api.JobStatistics4 o) {
  buildCounterJobStatistics4++;
  if (buildCounterJobStatistics4 < 3) {
    checkUnnamed3300(o.destinationUriFileCounts);
    unittest.expect(o.inputBytes, unittest.equals('foo'));
  }
  buildCounterJobStatistics4--;
}

buildUnnamed3301() {
  var o = new core.List<api.ErrorProto>();
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

checkUnnamed3301(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

core.int buildCounterJobStatus = 0;
buildJobStatus() {
  var o = new api.JobStatus();
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    o.errorResult = buildErrorProto();
    o.errors = buildUnnamed3301();
    o.state = "foo";
  }
  buildCounterJobStatus--;
  return o;
}

checkJobStatus(api.JobStatus o) {
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    checkErrorProto(o.errorResult);
    checkUnnamed3301(o.errors);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterJobStatus--;
}

buildJsonObject() {
  var o = new api.JsonObject();
  o["a"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["b"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkJsonObject(api.JsonObject o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["a"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["b"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed3302() {
  var o = new core.List<api.Model>();
  o.add(buildModel());
  o.add(buildModel());
  return o;
}

checkUnnamed3302(core.List<api.Model> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkModel(o[0]);
  checkModel(o[1]);
}

core.int buildCounterListModelsResponse = 0;
buildListModelsResponse() {
  var o = new api.ListModelsResponse();
  buildCounterListModelsResponse++;
  if (buildCounterListModelsResponse < 3) {
    o.models = buildUnnamed3302();
    o.nextPageToken = "foo";
  }
  buildCounterListModelsResponse--;
  return o;
}

checkListModelsResponse(api.ListModelsResponse o) {
  buildCounterListModelsResponse++;
  if (buildCounterListModelsResponse < 3) {
    checkUnnamed3302(o.models);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListModelsResponse--;
}

buildUnnamed3303() {
  var o = new core.List<api.Routine>();
  o.add(buildRoutine());
  o.add(buildRoutine());
  return o;
}

checkUnnamed3303(core.List<api.Routine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoutine(o[0]);
  checkRoutine(o[1]);
}

core.int buildCounterListRoutinesResponse = 0;
buildListRoutinesResponse() {
  var o = new api.ListRoutinesResponse();
  buildCounterListRoutinesResponse++;
  if (buildCounterListRoutinesResponse < 3) {
    o.nextPageToken = "foo";
    o.routines = buildUnnamed3303();
  }
  buildCounterListRoutinesResponse--;
  return o;
}

checkListRoutinesResponse(api.ListRoutinesResponse o) {
  buildCounterListRoutinesResponse++;
  if (buildCounterListRoutinesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3303(o.routines);
  }
  buildCounterListRoutinesResponse--;
}

core.int buildCounterLocationMetadata = 0;
buildLocationMetadata() {
  var o = new api.LocationMetadata();
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    o.legacyLocationId = "foo";
  }
  buildCounterLocationMetadata--;
  return o;
}

checkLocationMetadata(api.LocationMetadata o) {
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    unittest.expect(o.legacyLocationId, unittest.equals('foo'));
  }
  buildCounterLocationMetadata--;
}

core.int buildCounterMaterializedViewDefinition = 0;
buildMaterializedViewDefinition() {
  var o = new api.MaterializedViewDefinition();
  buildCounterMaterializedViewDefinition++;
  if (buildCounterMaterializedViewDefinition < 3) {
    o.lastRefreshTime = "foo";
    o.query = "foo";
  }
  buildCounterMaterializedViewDefinition--;
  return o;
}

checkMaterializedViewDefinition(api.MaterializedViewDefinition o) {
  buildCounterMaterializedViewDefinition++;
  if (buildCounterMaterializedViewDefinition < 3) {
    unittest.expect(o.lastRefreshTime, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
  }
  buildCounterMaterializedViewDefinition--;
}

buildUnnamed3304() {
  var o = new core.List<api.StandardSqlField>();
  o.add(buildStandardSqlField());
  o.add(buildStandardSqlField());
  return o;
}

checkUnnamed3304(core.List<api.StandardSqlField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardSqlField(o[0]);
  checkStandardSqlField(o[1]);
}

buildUnnamed3305() {
  var o = new core.List<api.StandardSqlField>();
  o.add(buildStandardSqlField());
  o.add(buildStandardSqlField());
  return o;
}

checkUnnamed3305(core.List<api.StandardSqlField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardSqlField(o[0]);
  checkStandardSqlField(o[1]);
}

buildUnnamed3306() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3306(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3307() {
  var o = new core.List<api.TrainingRun>();
  o.add(buildTrainingRun());
  o.add(buildTrainingRun());
  return o;
}

checkUnnamed3307(core.List<api.TrainingRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrainingRun(o[0]);
  checkTrainingRun(o[1]);
}

core.int buildCounterModel = 0;
buildModel() {
  var o = new api.Model();
  buildCounterModel++;
  if (buildCounterModel < 3) {
    o.creationTime = "foo";
    o.description = "foo";
    o.etag = "foo";
    o.expirationTime = "foo";
    o.featureColumns = buildUnnamed3304();
    o.friendlyName = "foo";
    o.labelColumns = buildUnnamed3305();
    o.labels = buildUnnamed3306();
    o.lastModifiedTime = "foo";
    o.location = "foo";
    o.modelReference = buildModelReference();
    o.modelType = "foo";
    o.trainingRuns = buildUnnamed3307();
  }
  buildCounterModel--;
  return o;
}

checkModel(api.Model o) {
  buildCounterModel++;
  if (buildCounterModel < 3) {
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.expirationTime, unittest.equals('foo'));
    checkUnnamed3304(o.featureColumns);
    unittest.expect(o.friendlyName, unittest.equals('foo'));
    checkUnnamed3305(o.labelColumns);
    checkUnnamed3306(o.labels);
    unittest.expect(o.lastModifiedTime, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    checkModelReference(o.modelReference);
    unittest.expect(o.modelType, unittest.equals('foo'));
    checkUnnamed3307(o.trainingRuns);
  }
  buildCounterModel--;
}

buildUnnamed3308() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3308(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModelDefinitionModelOptions = 0;
buildModelDefinitionModelOptions() {
  var o = new api.ModelDefinitionModelOptions();
  buildCounterModelDefinitionModelOptions++;
  if (buildCounterModelDefinitionModelOptions < 3) {
    o.labels = buildUnnamed3308();
    o.lossType = "foo";
    o.modelType = "foo";
  }
  buildCounterModelDefinitionModelOptions--;
  return o;
}

checkModelDefinitionModelOptions(api.ModelDefinitionModelOptions o) {
  buildCounterModelDefinitionModelOptions++;
  if (buildCounterModelDefinitionModelOptions < 3) {
    checkUnnamed3308(o.labels);
    unittest.expect(o.lossType, unittest.equals('foo'));
    unittest.expect(o.modelType, unittest.equals('foo'));
  }
  buildCounterModelDefinitionModelOptions--;
}

buildUnnamed3309() {
  var o = new core.List<api.BqmlTrainingRun>();
  o.add(buildBqmlTrainingRun());
  o.add(buildBqmlTrainingRun());
  return o;
}

checkUnnamed3309(core.List<api.BqmlTrainingRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBqmlTrainingRun(o[0]);
  checkBqmlTrainingRun(o[1]);
}

core.int buildCounterModelDefinition = 0;
buildModelDefinition() {
  var o = new api.ModelDefinition();
  buildCounterModelDefinition++;
  if (buildCounterModelDefinition < 3) {
    o.modelOptions = buildModelDefinitionModelOptions();
    o.trainingRuns = buildUnnamed3309();
  }
  buildCounterModelDefinition--;
  return o;
}

checkModelDefinition(api.ModelDefinition o) {
  buildCounterModelDefinition++;
  if (buildCounterModelDefinition < 3) {
    checkModelDefinitionModelOptions(o.modelOptions);
    checkUnnamed3309(o.trainingRuns);
  }
  buildCounterModelDefinition--;
}

core.int buildCounterModelReference = 0;
buildModelReference() {
  var o = new api.ModelReference();
  buildCounterModelReference++;
  if (buildCounterModelReference < 3) {
    o.datasetId = "foo";
    o.modelId = "foo";
    o.projectId = "foo";
  }
  buildCounterModelReference--;
  return o;
}

checkModelReference(api.ModelReference o) {
  buildCounterModelReference++;
  if (buildCounterModelReference < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.modelId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterModelReference--;
}

buildUnnamed3310() {
  var o = new core.List<api.ConfusionMatrix>();
  o.add(buildConfusionMatrix());
  o.add(buildConfusionMatrix());
  return o;
}

checkUnnamed3310(core.List<api.ConfusionMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfusionMatrix(o[0]);
  checkConfusionMatrix(o[1]);
}

core.int buildCounterMultiClassClassificationMetrics = 0;
buildMultiClassClassificationMetrics() {
  var o = new api.MultiClassClassificationMetrics();
  buildCounterMultiClassClassificationMetrics++;
  if (buildCounterMultiClassClassificationMetrics < 3) {
    o.aggregateClassificationMetrics = buildAggregateClassificationMetrics();
    o.confusionMatrixList = buildUnnamed3310();
  }
  buildCounterMultiClassClassificationMetrics--;
  return o;
}

checkMultiClassClassificationMetrics(api.MultiClassClassificationMetrics o) {
  buildCounterMultiClassClassificationMetrics++;
  if (buildCounterMultiClassClassificationMetrics < 3) {
    checkAggregateClassificationMetrics(o.aggregateClassificationMetrics);
    checkUnnamed3310(o.confusionMatrixList);
  }
  buildCounterMultiClassClassificationMetrics--;
}

core.int buildCounterProjectListProjects = 0;
buildProjectListProjects() {
  var o = new api.ProjectListProjects();
  buildCounterProjectListProjects++;
  if (buildCounterProjectListProjects < 3) {
    o.friendlyName = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.numericId = "foo";
    o.projectReference = buildProjectReference();
  }
  buildCounterProjectListProjects--;
  return o;
}

checkProjectListProjects(api.ProjectListProjects o) {
  buildCounterProjectListProjects++;
  if (buildCounterProjectListProjects < 3) {
    unittest.expect(o.friendlyName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.numericId, unittest.equals('foo'));
    checkProjectReference(o.projectReference);
  }
  buildCounterProjectListProjects--;
}

buildUnnamed3311() {
  var o = new core.List<api.ProjectListProjects>();
  o.add(buildProjectListProjects());
  o.add(buildProjectListProjects());
  return o;
}

checkUnnamed3311(core.List<api.ProjectListProjects> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProjectListProjects(o[0]);
  checkProjectListProjects(o[1]);
}

core.int buildCounterProjectList = 0;
buildProjectList() {
  var o = new api.ProjectList();
  buildCounterProjectList++;
  if (buildCounterProjectList < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.projects = buildUnnamed3311();
    o.totalItems = 42;
  }
  buildCounterProjectList--;
  return o;
}

checkProjectList(api.ProjectList o) {
  buildCounterProjectList++;
  if (buildCounterProjectList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3311(o.projects);
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterProjectList--;
}

core.int buildCounterProjectReference = 0;
buildProjectReference() {
  var o = new api.ProjectReference();
  buildCounterProjectReference++;
  if (buildCounterProjectReference < 3) {
    o.projectId = "foo";
  }
  buildCounterProjectReference--;
  return o;
}

checkProjectReference(api.ProjectReference o) {
  buildCounterProjectReference++;
  if (buildCounterProjectReference < 3) {
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterProjectReference--;
}

core.int buildCounterQueryParameter = 0;
buildQueryParameter() {
  var o = new api.QueryParameter();
  buildCounterQueryParameter++;
  if (buildCounterQueryParameter < 3) {
    o.name = "foo";
    o.parameterType = buildQueryParameterType();
    o.parameterValue = buildQueryParameterValue();
  }
  buildCounterQueryParameter--;
  return o;
}

checkQueryParameter(api.QueryParameter o) {
  buildCounterQueryParameter++;
  if (buildCounterQueryParameter < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkQueryParameterType(o.parameterType);
    checkQueryParameterValue(o.parameterValue);
  }
  buildCounterQueryParameter--;
}

core.int buildCounterQueryParameterTypeStructTypes = 0;
buildQueryParameterTypeStructTypes() {
  var o = new api.QueryParameterTypeStructTypes();
  buildCounterQueryParameterTypeStructTypes++;
  if (buildCounterQueryParameterTypeStructTypes < 3) {
    o.description = "foo";
    o.name = "foo";
    o.type = buildQueryParameterType();
  }
  buildCounterQueryParameterTypeStructTypes--;
  return o;
}

checkQueryParameterTypeStructTypes(api.QueryParameterTypeStructTypes o) {
  buildCounterQueryParameterTypeStructTypes++;
  if (buildCounterQueryParameterTypeStructTypes < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkQueryParameterType(o.type);
  }
  buildCounterQueryParameterTypeStructTypes--;
}

buildUnnamed3312() {
  var o = new core.List<api.QueryParameterTypeStructTypes>();
  o.add(buildQueryParameterTypeStructTypes());
  o.add(buildQueryParameterTypeStructTypes());
  return o;
}

checkUnnamed3312(core.List<api.QueryParameterTypeStructTypes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameterTypeStructTypes(o[0]);
  checkQueryParameterTypeStructTypes(o[1]);
}

core.int buildCounterQueryParameterType = 0;
buildQueryParameterType() {
  var o = new api.QueryParameterType();
  buildCounterQueryParameterType++;
  if (buildCounterQueryParameterType < 3) {
    o.arrayType = buildQueryParameterType();
    o.structTypes = buildUnnamed3312();
    o.type = "foo";
  }
  buildCounterQueryParameterType--;
  return o;
}

checkQueryParameterType(api.QueryParameterType o) {
  buildCounterQueryParameterType++;
  if (buildCounterQueryParameterType < 3) {
    checkQueryParameterType(o.arrayType);
    checkUnnamed3312(o.structTypes);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterQueryParameterType--;
}

buildUnnamed3313() {
  var o = new core.List<api.QueryParameterValue>();
  o.add(buildQueryParameterValue());
  o.add(buildQueryParameterValue());
  return o;
}

checkUnnamed3313(core.List<api.QueryParameterValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameterValue(o[0]);
  checkQueryParameterValue(o[1]);
}

buildUnnamed3314() {
  var o = new core.Map<core.String, api.QueryParameterValue>();
  o["x"] = buildQueryParameterValue();
  o["y"] = buildQueryParameterValue();
  return o;
}

checkUnnamed3314(core.Map<core.String, api.QueryParameterValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameterValue(o["x"]);
  checkQueryParameterValue(o["y"]);
}

core.int buildCounterQueryParameterValue = 0;
buildQueryParameterValue() {
  var o = new api.QueryParameterValue();
  buildCounterQueryParameterValue++;
  if (buildCounterQueryParameterValue < 3) {
    o.arrayValues = buildUnnamed3313();
    o.structValues = buildUnnamed3314();
    o.value = "foo";
  }
  buildCounterQueryParameterValue--;
  return o;
}

checkQueryParameterValue(api.QueryParameterValue o) {
  buildCounterQueryParameterValue++;
  if (buildCounterQueryParameterValue < 3) {
    checkUnnamed3313(o.arrayValues);
    checkUnnamed3314(o.structValues);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterQueryParameterValue--;
}

buildUnnamed3315() {
  var o = new core.List<api.QueryParameter>();
  o.add(buildQueryParameter());
  o.add(buildQueryParameter());
  return o;
}

checkUnnamed3315(core.List<api.QueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameter(o[0]);
  checkQueryParameter(o[1]);
}

core.int buildCounterQueryRequest = 0;
buildQueryRequest() {
  var o = new api.QueryRequest();
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    o.defaultDataset = buildDatasetReference();
    o.dryRun = true;
    o.kind = "foo";
    o.location = "foo";
    o.maxResults = 42;
    o.parameterMode = "foo";
    o.preserveNulls = true;
    o.query = "foo";
    o.queryParameters = buildUnnamed3315();
    o.timeoutMs = 42;
    o.useLegacySql = true;
    o.useQueryCache = true;
  }
  buildCounterQueryRequest--;
  return o;
}

checkQueryRequest(api.QueryRequest o) {
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    checkDatasetReference(o.defaultDataset);
    unittest.expect(o.dryRun, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.maxResults, unittest.equals(42));
    unittest.expect(o.parameterMode, unittest.equals('foo'));
    unittest.expect(o.preserveNulls, unittest.isTrue);
    unittest.expect(o.query, unittest.equals('foo'));
    checkUnnamed3315(o.queryParameters);
    unittest.expect(o.timeoutMs, unittest.equals(42));
    unittest.expect(o.useLegacySql, unittest.isTrue);
    unittest.expect(o.useQueryCache, unittest.isTrue);
  }
  buildCounterQueryRequest--;
}

buildUnnamed3316() {
  var o = new core.List<api.ErrorProto>();
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

checkUnnamed3316(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

buildUnnamed3317() {
  var o = new core.List<api.TableRow>();
  o.add(buildTableRow());
  o.add(buildTableRow());
  return o;
}

checkUnnamed3317(core.List<api.TableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableRow(o[0]);
  checkTableRow(o[1]);
}

core.int buildCounterQueryResponse = 0;
buildQueryResponse() {
  var o = new api.QueryResponse();
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    o.cacheHit = true;
    o.errors = buildUnnamed3316();
    o.jobComplete = true;
    o.jobReference = buildJobReference();
    o.kind = "foo";
    o.numDmlAffectedRows = "foo";
    o.pageToken = "foo";
    o.rows = buildUnnamed3317();
    o.schema = buildTableSchema();
    o.totalBytesProcessed = "foo";
    o.totalRows = "foo";
  }
  buildCounterQueryResponse--;
  return o;
}

checkQueryResponse(api.QueryResponse o) {
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    unittest.expect(o.cacheHit, unittest.isTrue);
    checkUnnamed3316(o.errors);
    unittest.expect(o.jobComplete, unittest.isTrue);
    checkJobReference(o.jobReference);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.numDmlAffectedRows, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkUnnamed3317(o.rows);
    checkTableSchema(o.schema);
    unittest.expect(o.totalBytesProcessed, unittest.equals('foo'));
    unittest.expect(o.totalRows, unittest.equals('foo'));
  }
  buildCounterQueryResponse--;
}

core.int buildCounterQueryTimelineSample = 0;
buildQueryTimelineSample() {
  var o = new api.QueryTimelineSample();
  buildCounterQueryTimelineSample++;
  if (buildCounterQueryTimelineSample < 3) {
    o.activeUnits = "foo";
    o.completedUnits = "foo";
    o.elapsedMs = "foo";
    o.pendingUnits = "foo";
    o.totalSlotMs = "foo";
  }
  buildCounterQueryTimelineSample--;
  return o;
}

checkQueryTimelineSample(api.QueryTimelineSample o) {
  buildCounterQueryTimelineSample++;
  if (buildCounterQueryTimelineSample < 3) {
    unittest.expect(o.activeUnits, unittest.equals('foo'));
    unittest.expect(o.completedUnits, unittest.equals('foo'));
    unittest.expect(o.elapsedMs, unittest.equals('foo'));
    unittest.expect(o.pendingUnits, unittest.equals('foo'));
    unittest.expect(o.totalSlotMs, unittest.equals('foo'));
  }
  buildCounterQueryTimelineSample--;
}

core.int buildCounterRangePartitioningRange = 0;
buildRangePartitioningRange() {
  var o = new api.RangePartitioningRange();
  buildCounterRangePartitioningRange++;
  if (buildCounterRangePartitioningRange < 3) {
    o.end = "foo";
    o.interval = "foo";
    o.start = "foo";
  }
  buildCounterRangePartitioningRange--;
  return o;
}

checkRangePartitioningRange(api.RangePartitioningRange o) {
  buildCounterRangePartitioningRange++;
  if (buildCounterRangePartitioningRange < 3) {
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.interval, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterRangePartitioningRange--;
}

core.int buildCounterRangePartitioning = 0;
buildRangePartitioning() {
  var o = new api.RangePartitioning();
  buildCounterRangePartitioning++;
  if (buildCounterRangePartitioning < 3) {
    o.field = "foo";
    o.range = buildRangePartitioningRange();
  }
  buildCounterRangePartitioning--;
  return o;
}

checkRangePartitioning(api.RangePartitioning o) {
  buildCounterRangePartitioning++;
  if (buildCounterRangePartitioning < 3) {
    unittest.expect(o.field, unittest.equals('foo'));
    checkRangePartitioningRange(o.range);
  }
  buildCounterRangePartitioning--;
}

core.int buildCounterRegressionMetrics = 0;
buildRegressionMetrics() {
  var o = new api.RegressionMetrics();
  buildCounterRegressionMetrics++;
  if (buildCounterRegressionMetrics < 3) {
    o.meanAbsoluteError = 42.0;
    o.meanSquaredError = 42.0;
    o.meanSquaredLogError = 42.0;
    o.medianAbsoluteError = 42.0;
    o.rSquared = 42.0;
  }
  buildCounterRegressionMetrics--;
  return o;
}

checkRegressionMetrics(api.RegressionMetrics o) {
  buildCounterRegressionMetrics++;
  if (buildCounterRegressionMetrics < 3) {
    unittest.expect(o.meanAbsoluteError, unittest.equals(42.0));
    unittest.expect(o.meanSquaredError, unittest.equals(42.0));
    unittest.expect(o.meanSquaredLogError, unittest.equals(42.0));
    unittest.expect(o.medianAbsoluteError, unittest.equals(42.0));
    unittest.expect(o.rSquared, unittest.equals(42.0));
  }
  buildCounterRegressionMetrics--;
}

buildUnnamed3318() {
  var o = new core.List<api.Argument>();
  o.add(buildArgument());
  o.add(buildArgument());
  return o;
}

checkUnnamed3318(core.List<api.Argument> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArgument(o[0]);
  checkArgument(o[1]);
}

buildUnnamed3319() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3319(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRoutine = 0;
buildRoutine() {
  var o = new api.Routine();
  buildCounterRoutine++;
  if (buildCounterRoutine < 3) {
    o.arguments = buildUnnamed3318();
    o.creationTime = "foo";
    o.definitionBody = "foo";
    o.etag = "foo";
    o.importedLibraries = buildUnnamed3319();
    o.language = "foo";
    o.lastModifiedTime = "foo";
    o.returnType = buildStandardSqlDataType();
    o.routineReference = buildRoutineReference();
    o.routineType = "foo";
  }
  buildCounterRoutine--;
  return o;
}

checkRoutine(api.Routine o) {
  buildCounterRoutine++;
  if (buildCounterRoutine < 3) {
    checkUnnamed3318(o.arguments);
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.definitionBody, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed3319(o.importedLibraries);
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.lastModifiedTime, unittest.equals('foo'));
    checkStandardSqlDataType(o.returnType);
    checkRoutineReference(o.routineReference);
    unittest.expect(o.routineType, unittest.equals('foo'));
  }
  buildCounterRoutine--;
}

core.int buildCounterRoutineReference = 0;
buildRoutineReference() {
  var o = new api.RoutineReference();
  buildCounterRoutineReference++;
  if (buildCounterRoutineReference < 3) {
    o.datasetId = "foo";
    o.projectId = "foo";
    o.routineId = "foo";
  }
  buildCounterRoutineReference--;
  return o;
}

checkRoutineReference(api.RoutineReference o) {
  buildCounterRoutineReference++;
  if (buildCounterRoutineReference < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.routineId, unittest.equals('foo'));
  }
  buildCounterRoutineReference--;
}

buildUnnamed3320() {
  var o = new core.List<api.Entry>();
  o.add(buildEntry());
  o.add(buildEntry());
  return o;
}

checkUnnamed3320(core.List<api.Entry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntry(o[0]);
  checkEntry(o[1]);
}

core.int buildCounterRow = 0;
buildRow() {
  var o = new api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.actualLabel = "foo";
    o.entries = buildUnnamed3320();
  }
  buildCounterRow--;
  return o;
}

checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    unittest.expect(o.actualLabel, unittest.equals('foo'));
    checkUnnamed3320(o.entries);
  }
  buildCounterRow--;
}

core.int buildCounterStandardSqlDataType = 0;
buildStandardSqlDataType() {
  var o = new api.StandardSqlDataType();
  buildCounterStandardSqlDataType++;
  if (buildCounterStandardSqlDataType < 3) {
    o.arrayElementType = buildStandardSqlDataType();
    o.structType = buildStandardSqlStructType();
    o.typeKind = "foo";
  }
  buildCounterStandardSqlDataType--;
  return o;
}

checkStandardSqlDataType(api.StandardSqlDataType o) {
  buildCounterStandardSqlDataType++;
  if (buildCounterStandardSqlDataType < 3) {
    checkStandardSqlDataType(o.arrayElementType);
    checkStandardSqlStructType(o.structType);
    unittest.expect(o.typeKind, unittest.equals('foo'));
  }
  buildCounterStandardSqlDataType--;
}

core.int buildCounterStandardSqlField = 0;
buildStandardSqlField() {
  var o = new api.StandardSqlField();
  buildCounterStandardSqlField++;
  if (buildCounterStandardSqlField < 3) {
    o.name = "foo";
    o.type = buildStandardSqlDataType();
  }
  buildCounterStandardSqlField--;
  return o;
}

checkStandardSqlField(api.StandardSqlField o) {
  buildCounterStandardSqlField++;
  if (buildCounterStandardSqlField < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkStandardSqlDataType(o.type);
  }
  buildCounterStandardSqlField--;
}

buildUnnamed3321() {
  var o = new core.List<api.StandardSqlField>();
  o.add(buildStandardSqlField());
  o.add(buildStandardSqlField());
  return o;
}

checkUnnamed3321(core.List<api.StandardSqlField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardSqlField(o[0]);
  checkStandardSqlField(o[1]);
}

core.int buildCounterStandardSqlStructType = 0;
buildStandardSqlStructType() {
  var o = new api.StandardSqlStructType();
  buildCounterStandardSqlStructType++;
  if (buildCounterStandardSqlStructType < 3) {
    o.fields = buildUnnamed3321();
  }
  buildCounterStandardSqlStructType--;
  return o;
}

checkStandardSqlStructType(api.StandardSqlStructType o) {
  buildCounterStandardSqlStructType++;
  if (buildCounterStandardSqlStructType < 3) {
    checkUnnamed3321(o.fields);
  }
  buildCounterStandardSqlStructType--;
}

core.int buildCounterStreamingbuffer = 0;
buildStreamingbuffer() {
  var o = new api.Streamingbuffer();
  buildCounterStreamingbuffer++;
  if (buildCounterStreamingbuffer < 3) {
    o.estimatedBytes = "foo";
    o.estimatedRows = "foo";
    o.oldestEntryTime = "foo";
  }
  buildCounterStreamingbuffer--;
  return o;
}

checkStreamingbuffer(api.Streamingbuffer o) {
  buildCounterStreamingbuffer++;
  if (buildCounterStreamingbuffer < 3) {
    unittest.expect(o.estimatedBytes, unittest.equals('foo'));
    unittest.expect(o.estimatedRows, unittest.equals('foo'));
    unittest.expect(o.oldestEntryTime, unittest.equals('foo'));
  }
  buildCounterStreamingbuffer--;
}

buildUnnamed3322() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3322(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterTable = 0;
buildTable() {
  var o = new api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.clustering = buildClustering();
    o.creationTime = "foo";
    o.description = "foo";
    o.encryptionConfiguration = buildEncryptionConfiguration();
    o.etag = "foo";
    o.expirationTime = "foo";
    o.externalDataConfiguration = buildExternalDataConfiguration();
    o.friendlyName = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.labels = buildUnnamed3322();
    o.lastModifiedTime = "foo";
    o.location = "foo";
    o.materializedView = buildMaterializedViewDefinition();
    o.model = buildModelDefinition();
    o.numBytes = "foo";
    o.numLongTermBytes = "foo";
    o.numPhysicalBytes = "foo";
    o.numRows = "foo";
    o.rangePartitioning = buildRangePartitioning();
    o.requirePartitionFilter = true;
    o.schema = buildTableSchema();
    o.selfLink = "foo";
    o.streamingBuffer = buildStreamingbuffer();
    o.tableReference = buildTableReference();
    o.timePartitioning = buildTimePartitioning();
    o.type = "foo";
    o.view = buildViewDefinition();
  }
  buildCounterTable--;
  return o;
}

checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkClustering(o.clustering);
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkEncryptionConfiguration(o.encryptionConfiguration);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.expirationTime, unittest.equals('foo'));
    checkExternalDataConfiguration(o.externalDataConfiguration);
    unittest.expect(o.friendlyName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3322(o.labels);
    unittest.expect(o.lastModifiedTime, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    checkMaterializedViewDefinition(o.materializedView);
    checkModelDefinition(o.model);
    unittest.expect(o.numBytes, unittest.equals('foo'));
    unittest.expect(o.numLongTermBytes, unittest.equals('foo'));
    unittest.expect(o.numPhysicalBytes, unittest.equals('foo'));
    unittest.expect(o.numRows, unittest.equals('foo'));
    checkRangePartitioning(o.rangePartitioning);
    unittest.expect(o.requirePartitionFilter, unittest.isTrue);
    checkTableSchema(o.schema);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkStreamingbuffer(o.streamingBuffer);
    checkTableReference(o.tableReference);
    checkTimePartitioning(o.timePartitioning);
    unittest.expect(o.type, unittest.equals('foo'));
    checkViewDefinition(o.view);
  }
  buildCounterTable--;
}

core.int buildCounterTableCell = 0;
buildTableCell() {
  var o = new api.TableCell();
  buildCounterTableCell++;
  if (buildCounterTableCell < 3) {
    o.v = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterTableCell--;
  return o;
}

checkTableCell(api.TableCell o) {
  buildCounterTableCell++;
  if (buildCounterTableCell < 3) {
    var casted3 = (o.v) as core.Map;
    unittest.expect(casted3, unittest.hasLength(3));
    unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted3["bool"], unittest.equals(true));
    unittest.expect(casted3["string"], unittest.equals('foo'));
  }
  buildCounterTableCell--;
}

core.int buildCounterTableDataInsertAllRequestRows = 0;
buildTableDataInsertAllRequestRows() {
  var o = new api.TableDataInsertAllRequestRows();
  buildCounterTableDataInsertAllRequestRows++;
  if (buildCounterTableDataInsertAllRequestRows < 3) {
    o.insertId = "foo";
    o.json = buildJsonObject();
  }
  buildCounterTableDataInsertAllRequestRows--;
  return o;
}

checkTableDataInsertAllRequestRows(api.TableDataInsertAllRequestRows o) {
  buildCounterTableDataInsertAllRequestRows++;
  if (buildCounterTableDataInsertAllRequestRows < 3) {
    unittest.expect(o.insertId, unittest.equals('foo'));
    checkJsonObject(o.json);
  }
  buildCounterTableDataInsertAllRequestRows--;
}

buildUnnamed3323() {
  var o = new core.List<api.TableDataInsertAllRequestRows>();
  o.add(buildTableDataInsertAllRequestRows());
  o.add(buildTableDataInsertAllRequestRows());
  return o;
}

checkUnnamed3323(core.List<api.TableDataInsertAllRequestRows> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableDataInsertAllRequestRows(o[0]);
  checkTableDataInsertAllRequestRows(o[1]);
}

core.int buildCounterTableDataInsertAllRequest = 0;
buildTableDataInsertAllRequest() {
  var o = new api.TableDataInsertAllRequest();
  buildCounterTableDataInsertAllRequest++;
  if (buildCounterTableDataInsertAllRequest < 3) {
    o.ignoreUnknownValues = true;
    o.kind = "foo";
    o.rows = buildUnnamed3323();
    o.skipInvalidRows = true;
    o.templateSuffix = "foo";
  }
  buildCounterTableDataInsertAllRequest--;
  return o;
}

checkTableDataInsertAllRequest(api.TableDataInsertAllRequest o) {
  buildCounterTableDataInsertAllRequest++;
  if (buildCounterTableDataInsertAllRequest < 3) {
    unittest.expect(o.ignoreUnknownValues, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3323(o.rows);
    unittest.expect(o.skipInvalidRows, unittest.isTrue);
    unittest.expect(o.templateSuffix, unittest.equals('foo'));
  }
  buildCounterTableDataInsertAllRequest--;
}

buildUnnamed3324() {
  var o = new core.List<api.ErrorProto>();
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

checkUnnamed3324(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

core.int buildCounterTableDataInsertAllResponseInsertErrors = 0;
buildTableDataInsertAllResponseInsertErrors() {
  var o = new api.TableDataInsertAllResponseInsertErrors();
  buildCounterTableDataInsertAllResponseInsertErrors++;
  if (buildCounterTableDataInsertAllResponseInsertErrors < 3) {
    o.errors = buildUnnamed3324();
    o.index = 42;
  }
  buildCounterTableDataInsertAllResponseInsertErrors--;
  return o;
}

checkTableDataInsertAllResponseInsertErrors(
    api.TableDataInsertAllResponseInsertErrors o) {
  buildCounterTableDataInsertAllResponseInsertErrors++;
  if (buildCounterTableDataInsertAllResponseInsertErrors < 3) {
    checkUnnamed3324(o.errors);
    unittest.expect(o.index, unittest.equals(42));
  }
  buildCounterTableDataInsertAllResponseInsertErrors--;
}

buildUnnamed3325() {
  var o = new core.List<api.TableDataInsertAllResponseInsertErrors>();
  o.add(buildTableDataInsertAllResponseInsertErrors());
  o.add(buildTableDataInsertAllResponseInsertErrors());
  return o;
}

checkUnnamed3325(core.List<api.TableDataInsertAllResponseInsertErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableDataInsertAllResponseInsertErrors(o[0]);
  checkTableDataInsertAllResponseInsertErrors(o[1]);
}

core.int buildCounterTableDataInsertAllResponse = 0;
buildTableDataInsertAllResponse() {
  var o = new api.TableDataInsertAllResponse();
  buildCounterTableDataInsertAllResponse++;
  if (buildCounterTableDataInsertAllResponse < 3) {
    o.insertErrors = buildUnnamed3325();
    o.kind = "foo";
  }
  buildCounterTableDataInsertAllResponse--;
  return o;
}

checkTableDataInsertAllResponse(api.TableDataInsertAllResponse o) {
  buildCounterTableDataInsertAllResponse++;
  if (buildCounterTableDataInsertAllResponse < 3) {
    checkUnnamed3325(o.insertErrors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterTableDataInsertAllResponse--;
}

buildUnnamed3326() {
  var o = new core.List<api.TableRow>();
  o.add(buildTableRow());
  o.add(buildTableRow());
  return o;
}

checkUnnamed3326(core.List<api.TableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableRow(o[0]);
  checkTableRow(o[1]);
}

core.int buildCounterTableDataList = 0;
buildTableDataList() {
  var o = new api.TableDataList();
  buildCounterTableDataList++;
  if (buildCounterTableDataList < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.pageToken = "foo";
    o.rows = buildUnnamed3326();
    o.totalRows = "foo";
  }
  buildCounterTableDataList--;
  return o;
}

checkTableDataList(api.TableDataList o) {
  buildCounterTableDataList++;
  if (buildCounterTableDataList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkUnnamed3326(o.rows);
    unittest.expect(o.totalRows, unittest.equals('foo'));
  }
  buildCounterTableDataList--;
}

buildUnnamed3327() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3327(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTableFieldSchemaCategories = 0;
buildTableFieldSchemaCategories() {
  var o = new api.TableFieldSchemaCategories();
  buildCounterTableFieldSchemaCategories++;
  if (buildCounterTableFieldSchemaCategories < 3) {
    o.names = buildUnnamed3327();
  }
  buildCounterTableFieldSchemaCategories--;
  return o;
}

checkTableFieldSchemaCategories(api.TableFieldSchemaCategories o) {
  buildCounterTableFieldSchemaCategories++;
  if (buildCounterTableFieldSchemaCategories < 3) {
    checkUnnamed3327(o.names);
  }
  buildCounterTableFieldSchemaCategories--;
}

buildUnnamed3328() {
  var o = new core.List<api.TableFieldSchema>();
  o.add(buildTableFieldSchema());
  o.add(buildTableFieldSchema());
  return o;
}

checkUnnamed3328(core.List<api.TableFieldSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableFieldSchema(o[0]);
  checkTableFieldSchema(o[1]);
}

core.int buildCounterTableFieldSchema = 0;
buildTableFieldSchema() {
  var o = new api.TableFieldSchema();
  buildCounterTableFieldSchema++;
  if (buildCounterTableFieldSchema < 3) {
    o.categories = buildTableFieldSchemaCategories();
    o.description = "foo";
    o.fields = buildUnnamed3328();
    o.mode = "foo";
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterTableFieldSchema--;
  return o;
}

checkTableFieldSchema(api.TableFieldSchema o) {
  buildCounterTableFieldSchema++;
  if (buildCounterTableFieldSchema < 3) {
    checkTableFieldSchemaCategories(o.categories);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3328(o.fields);
    unittest.expect(o.mode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterTableFieldSchema--;
}

buildUnnamed3329() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3329(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterTableListTablesView = 0;
buildTableListTablesView() {
  var o = new api.TableListTablesView();
  buildCounterTableListTablesView++;
  if (buildCounterTableListTablesView < 3) {
    o.useLegacySql = true;
  }
  buildCounterTableListTablesView--;
  return o;
}

checkTableListTablesView(api.TableListTablesView o) {
  buildCounterTableListTablesView++;
  if (buildCounterTableListTablesView < 3) {
    unittest.expect(o.useLegacySql, unittest.isTrue);
  }
  buildCounterTableListTablesView--;
}

core.int buildCounterTableListTables = 0;
buildTableListTables() {
  var o = new api.TableListTables();
  buildCounterTableListTables++;
  if (buildCounterTableListTables < 3) {
    o.clustering = buildClustering();
    o.creationTime = "foo";
    o.expirationTime = "foo";
    o.friendlyName = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.labels = buildUnnamed3329();
    o.tableReference = buildTableReference();
    o.timePartitioning = buildTimePartitioning();
    o.type = "foo";
    o.view = buildTableListTablesView();
  }
  buildCounterTableListTables--;
  return o;
}

checkTableListTables(api.TableListTables o) {
  buildCounterTableListTables++;
  if (buildCounterTableListTables < 3) {
    checkClustering(o.clustering);
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.expirationTime, unittest.equals('foo'));
    unittest.expect(o.friendlyName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3329(o.labels);
    checkTableReference(o.tableReference);
    checkTimePartitioning(o.timePartitioning);
    unittest.expect(o.type, unittest.equals('foo'));
    checkTableListTablesView(o.view);
  }
  buildCounterTableListTables--;
}

buildUnnamed3330() {
  var o = new core.List<api.TableListTables>();
  o.add(buildTableListTables());
  o.add(buildTableListTables());
  return o;
}

checkUnnamed3330(core.List<api.TableListTables> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableListTables(o[0]);
  checkTableListTables(o[1]);
}

core.int buildCounterTableList = 0;
buildTableList() {
  var o = new api.TableList();
  buildCounterTableList++;
  if (buildCounterTableList < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.tables = buildUnnamed3330();
    o.totalItems = 42;
  }
  buildCounterTableList--;
  return o;
}

checkTableList(api.TableList o) {
  buildCounterTableList++;
  if (buildCounterTableList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3330(o.tables);
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterTableList--;
}

core.int buildCounterTableReference = 0;
buildTableReference() {
  var o = new api.TableReference();
  buildCounterTableReference++;
  if (buildCounterTableReference < 3) {
    o.datasetId = "foo";
    o.projectId = "foo";
    o.tableId = "foo";
  }
  buildCounterTableReference--;
  return o;
}

checkTableReference(api.TableReference o) {
  buildCounterTableReference++;
  if (buildCounterTableReference < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.tableId, unittest.equals('foo'));
  }
  buildCounterTableReference--;
}

buildUnnamed3331() {
  var o = new core.List<api.TableCell>();
  o.add(buildTableCell());
  o.add(buildTableCell());
  return o;
}

checkUnnamed3331(core.List<api.TableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableCell(o[0]);
  checkTableCell(o[1]);
}

core.int buildCounterTableRow = 0;
buildTableRow() {
  var o = new api.TableRow();
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    o.f = buildUnnamed3331();
  }
  buildCounterTableRow--;
  return o;
}

checkTableRow(api.TableRow o) {
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    checkUnnamed3331(o.f);
  }
  buildCounterTableRow--;
}

buildUnnamed3332() {
  var o = new core.List<api.TableFieldSchema>();
  o.add(buildTableFieldSchema());
  o.add(buildTableFieldSchema());
  return o;
}

checkUnnamed3332(core.List<api.TableFieldSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableFieldSchema(o[0]);
  checkTableFieldSchema(o[1]);
}

core.int buildCounterTableSchema = 0;
buildTableSchema() {
  var o = new api.TableSchema();
  buildCounterTableSchema++;
  if (buildCounterTableSchema < 3) {
    o.fields = buildUnnamed3332();
  }
  buildCounterTableSchema--;
  return o;
}

checkTableSchema(api.TableSchema o) {
  buildCounterTableSchema++;
  if (buildCounterTableSchema < 3) {
    checkUnnamed3332(o.fields);
  }
  buildCounterTableSchema--;
}

core.int buildCounterTimePartitioning = 0;
buildTimePartitioning() {
  var o = new api.TimePartitioning();
  buildCounterTimePartitioning++;
  if (buildCounterTimePartitioning < 3) {
    o.expirationMs = "foo";
    o.field = "foo";
    o.requirePartitionFilter = true;
    o.type = "foo";
  }
  buildCounterTimePartitioning--;
  return o;
}

checkTimePartitioning(api.TimePartitioning o) {
  buildCounterTimePartitioning++;
  if (buildCounterTimePartitioning < 3) {
    unittest.expect(o.expirationMs, unittest.equals('foo'));
    unittest.expect(o.field, unittest.equals('foo'));
    unittest.expect(o.requirePartitionFilter, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterTimePartitioning--;
}

buildUnnamed3333() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3333(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3334() {
  var o = new core.Map<core.String, core.double>();
  o["x"] = 42.0;
  o["y"] = 42.0;
  return o;
}

checkUnnamed3334(core.Map<core.String, core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42.0));
  unittest.expect(o["y"], unittest.equals(42.0));
}

core.int buildCounterTrainingOptions = 0;
buildTrainingOptions() {
  var o = new api.TrainingOptions();
  buildCounterTrainingOptions++;
  if (buildCounterTrainingOptions < 3) {
    o.dataSplitColumn = "foo";
    o.dataSplitEvalFraction = 42.0;
    o.dataSplitMethod = "foo";
    o.distanceType = "foo";
    o.earlyStop = true;
    o.initialLearnRate = 42.0;
    o.inputLabelColumns = buildUnnamed3333();
    o.l1Regularization = 42.0;
    o.l2Regularization = 42.0;
    o.labelClassWeights = buildUnnamed3334();
    o.learnRate = 42.0;
    o.learnRateStrategy = "foo";
    o.lossType = "foo";
    o.maxIterations = "foo";
    o.minRelativeProgress = 42.0;
    o.modelUri = "foo";
    o.numClusters = "foo";
    o.optimizationStrategy = "foo";
    o.warmStart = true;
  }
  buildCounterTrainingOptions--;
  return o;
}

checkTrainingOptions(api.TrainingOptions o) {
  buildCounterTrainingOptions++;
  if (buildCounterTrainingOptions < 3) {
    unittest.expect(o.dataSplitColumn, unittest.equals('foo'));
    unittest.expect(o.dataSplitEvalFraction, unittest.equals(42.0));
    unittest.expect(o.dataSplitMethod, unittest.equals('foo'));
    unittest.expect(o.distanceType, unittest.equals('foo'));
    unittest.expect(o.earlyStop, unittest.isTrue);
    unittest.expect(o.initialLearnRate, unittest.equals(42.0));
    checkUnnamed3333(o.inputLabelColumns);
    unittest.expect(o.l1Regularization, unittest.equals(42.0));
    unittest.expect(o.l2Regularization, unittest.equals(42.0));
    checkUnnamed3334(o.labelClassWeights);
    unittest.expect(o.learnRate, unittest.equals(42.0));
    unittest.expect(o.learnRateStrategy, unittest.equals('foo'));
    unittest.expect(o.lossType, unittest.equals('foo'));
    unittest.expect(o.maxIterations, unittest.equals('foo'));
    unittest.expect(o.minRelativeProgress, unittest.equals(42.0));
    unittest.expect(o.modelUri, unittest.equals('foo'));
    unittest.expect(o.numClusters, unittest.equals('foo'));
    unittest.expect(o.optimizationStrategy, unittest.equals('foo'));
    unittest.expect(o.warmStart, unittest.isTrue);
  }
  buildCounterTrainingOptions--;
}

buildUnnamed3335() {
  var o = new core.List<api.IterationResult>();
  o.add(buildIterationResult());
  o.add(buildIterationResult());
  return o;
}

checkUnnamed3335(core.List<api.IterationResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIterationResult(o[0]);
  checkIterationResult(o[1]);
}

core.int buildCounterTrainingRun = 0;
buildTrainingRun() {
  var o = new api.TrainingRun();
  buildCounterTrainingRun++;
  if (buildCounterTrainingRun < 3) {
    o.evaluationMetrics = buildEvaluationMetrics();
    o.results = buildUnnamed3335();
    o.startTime = "foo";
    o.trainingOptions = buildTrainingOptions();
  }
  buildCounterTrainingRun--;
  return o;
}

checkTrainingRun(api.TrainingRun o) {
  buildCounterTrainingRun++;
  if (buildCounterTrainingRun < 3) {
    checkEvaluationMetrics(o.evaluationMetrics);
    checkUnnamed3335(o.results);
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkTrainingOptions(o.trainingOptions);
  }
  buildCounterTrainingRun--;
}

core.int buildCounterUserDefinedFunctionResource = 0;
buildUserDefinedFunctionResource() {
  var o = new api.UserDefinedFunctionResource();
  buildCounterUserDefinedFunctionResource++;
  if (buildCounterUserDefinedFunctionResource < 3) {
    o.inlineCode = "foo";
    o.resourceUri = "foo";
  }
  buildCounterUserDefinedFunctionResource--;
  return o;
}

checkUserDefinedFunctionResource(api.UserDefinedFunctionResource o) {
  buildCounterUserDefinedFunctionResource++;
  if (buildCounterUserDefinedFunctionResource < 3) {
    unittest.expect(o.inlineCode, unittest.equals('foo'));
    unittest.expect(o.resourceUri, unittest.equals('foo'));
  }
  buildCounterUserDefinedFunctionResource--;
}

buildUnnamed3336() {
  var o = new core.List<api.UserDefinedFunctionResource>();
  o.add(buildUserDefinedFunctionResource());
  o.add(buildUserDefinedFunctionResource());
  return o;
}

checkUnnamed3336(core.List<api.UserDefinedFunctionResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserDefinedFunctionResource(o[0]);
  checkUserDefinedFunctionResource(o[1]);
}

core.int buildCounterViewDefinition = 0;
buildViewDefinition() {
  var o = new api.ViewDefinition();
  buildCounterViewDefinition++;
  if (buildCounterViewDefinition < 3) {
    o.query = "foo";
    o.useLegacySql = true;
    o.userDefinedFunctionResources = buildUnnamed3336();
  }
  buildCounterViewDefinition--;
  return o;
}

checkViewDefinition(api.ViewDefinition o) {
  buildCounterViewDefinition++;
  if (buildCounterViewDefinition < 3) {
    unittest.expect(o.query, unittest.equals('foo'));
    unittest.expect(o.useLegacySql, unittest.isTrue);
    checkUnnamed3336(o.userDefinedFunctionResources);
  }
  buildCounterViewDefinition--;
}

buildUnnamed3337() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3337(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-AggregateClassificationMetrics", () {
    unittest.test("to-json--from-json", () {
      var o = buildAggregateClassificationMetrics();
      var od = new api.AggregateClassificationMetrics.fromJson(o.toJson());
      checkAggregateClassificationMetrics(od);
    });
  });

  unittest.group("obj-schema-Argument", () {
    unittest.test("to-json--from-json", () {
      var o = buildArgument();
      var od = new api.Argument.fromJson(o.toJson());
      checkArgument(od);
    });
  });

  unittest.group("obj-schema-BigQueryModelTraining", () {
    unittest.test("to-json--from-json", () {
      var o = buildBigQueryModelTraining();
      var od = new api.BigQueryModelTraining.fromJson(o.toJson());
      checkBigQueryModelTraining(od);
    });
  });

  unittest.group("obj-schema-BigtableColumn", () {
    unittest.test("to-json--from-json", () {
      var o = buildBigtableColumn();
      var od = new api.BigtableColumn.fromJson(o.toJson());
      checkBigtableColumn(od);
    });
  });

  unittest.group("obj-schema-BigtableColumnFamily", () {
    unittest.test("to-json--from-json", () {
      var o = buildBigtableColumnFamily();
      var od = new api.BigtableColumnFamily.fromJson(o.toJson());
      checkBigtableColumnFamily(od);
    });
  });

  unittest.group("obj-schema-BigtableOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildBigtableOptions();
      var od = new api.BigtableOptions.fromJson(o.toJson());
      checkBigtableOptions(od);
    });
  });

  unittest.group("obj-schema-BinaryClassificationMetrics", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinaryClassificationMetrics();
      var od = new api.BinaryClassificationMetrics.fromJson(o.toJson());
      checkBinaryClassificationMetrics(od);
    });
  });

  unittest.group("obj-schema-BinaryConfusionMatrix", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinaryConfusionMatrix();
      var od = new api.BinaryConfusionMatrix.fromJson(o.toJson());
      checkBinaryConfusionMatrix(od);
    });
  });

  unittest.group("obj-schema-BqmlIterationResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildBqmlIterationResult();
      var od = new api.BqmlIterationResult.fromJson(o.toJson());
      checkBqmlIterationResult(od);
    });
  });

  unittest.group("obj-schema-BqmlTrainingRunTrainingOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildBqmlTrainingRunTrainingOptions();
      var od = new api.BqmlTrainingRunTrainingOptions.fromJson(o.toJson());
      checkBqmlTrainingRunTrainingOptions(od);
    });
  });

  unittest.group("obj-schema-BqmlTrainingRun", () {
    unittest.test("to-json--from-json", () {
      var o = buildBqmlTrainingRun();
      var od = new api.BqmlTrainingRun.fromJson(o.toJson());
      checkBqmlTrainingRun(od);
    });
  });

  unittest.group("obj-schema-ClusterInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildClusterInfo();
      var od = new api.ClusterInfo.fromJson(o.toJson());
      checkClusterInfo(od);
    });
  });

  unittest.group("obj-schema-Clustering", () {
    unittest.test("to-json--from-json", () {
      var o = buildClustering();
      var od = new api.Clustering.fromJson(o.toJson());
      checkClustering(od);
    });
  });

  unittest.group("obj-schema-ClusteringMetrics", () {
    unittest.test("to-json--from-json", () {
      var o = buildClusteringMetrics();
      var od = new api.ClusteringMetrics.fromJson(o.toJson());
      checkClusteringMetrics(od);
    });
  });

  unittest.group("obj-schema-ConfusionMatrix", () {
    unittest.test("to-json--from-json", () {
      var o = buildConfusionMatrix();
      var od = new api.ConfusionMatrix.fromJson(o.toJson());
      checkConfusionMatrix(od);
    });
  });

  unittest.group("obj-schema-CsvOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildCsvOptions();
      var od = new api.CsvOptions.fromJson(o.toJson());
      checkCsvOptions(od);
    });
  });

  unittest.group("obj-schema-DatasetAccess", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasetAccess();
      var od = new api.DatasetAccess.fromJson(o.toJson());
      checkDatasetAccess(od);
    });
  });

  unittest.group("obj-schema-Dataset", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataset();
      var od = new api.Dataset.fromJson(o.toJson());
      checkDataset(od);
    });
  });

  unittest.group("obj-schema-DatasetListDatasets", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasetListDatasets();
      var od = new api.DatasetListDatasets.fromJson(o.toJson());
      checkDatasetListDatasets(od);
    });
  });

  unittest.group("obj-schema-DatasetList", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasetList();
      var od = new api.DatasetList.fromJson(o.toJson());
      checkDatasetList(od);
    });
  });

  unittest.group("obj-schema-DatasetReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasetReference();
      var od = new api.DatasetReference.fromJson(o.toJson());
      checkDatasetReference(od);
    });
  });

  unittest.group("obj-schema-DestinationTableProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildDestinationTableProperties();
      var od = new api.DestinationTableProperties.fromJson(o.toJson());
      checkDestinationTableProperties(od);
    });
  });

  unittest.group("obj-schema-EncryptionConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildEncryptionConfiguration();
      var od = new api.EncryptionConfiguration.fromJson(o.toJson());
      checkEncryptionConfiguration(od);
    });
  });

  unittest.group("obj-schema-Entry", () {
    unittest.test("to-json--from-json", () {
      var o = buildEntry();
      var od = new api.Entry.fromJson(o.toJson());
      checkEntry(od);
    });
  });

  unittest.group("obj-schema-ErrorProto", () {
    unittest.test("to-json--from-json", () {
      var o = buildErrorProto();
      var od = new api.ErrorProto.fromJson(o.toJson());
      checkErrorProto(od);
    });
  });

  unittest.group("obj-schema-EvaluationMetrics", () {
    unittest.test("to-json--from-json", () {
      var o = buildEvaluationMetrics();
      var od = new api.EvaluationMetrics.fromJson(o.toJson());
      checkEvaluationMetrics(od);
    });
  });

  unittest.group("obj-schema-ExplainQueryStage", () {
    unittest.test("to-json--from-json", () {
      var o = buildExplainQueryStage();
      var od = new api.ExplainQueryStage.fromJson(o.toJson());
      checkExplainQueryStage(od);
    });
  });

  unittest.group("obj-schema-ExplainQueryStep", () {
    unittest.test("to-json--from-json", () {
      var o = buildExplainQueryStep();
      var od = new api.ExplainQueryStep.fromJson(o.toJson());
      checkExplainQueryStep(od);
    });
  });

  unittest.group("obj-schema-ExternalDataConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildExternalDataConfiguration();
      var od = new api.ExternalDataConfiguration.fromJson(o.toJson());
      checkExternalDataConfiguration(od);
    });
  });

  unittest.group("obj-schema-GetQueryResultsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetQueryResultsResponse();
      var od = new api.GetQueryResultsResponse.fromJson(o.toJson());
      checkGetQueryResultsResponse(od);
    });
  });

  unittest.group("obj-schema-GetServiceAccountResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetServiceAccountResponse();
      var od = new api.GetServiceAccountResponse.fromJson(o.toJson());
      checkGetServiceAccountResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleSheetsOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleSheetsOptions();
      var od = new api.GoogleSheetsOptions.fromJson(o.toJson());
      checkGoogleSheetsOptions(od);
    });
  });

  unittest.group("obj-schema-HivePartitioningOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildHivePartitioningOptions();
      var od = new api.HivePartitioningOptions.fromJson(o.toJson());
      checkHivePartitioningOptions(od);
    });
  });

  unittest.group("obj-schema-IterationResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildIterationResult();
      var od = new api.IterationResult.fromJson(o.toJson());
      checkIterationResult(od);
    });
  });

  unittest.group("obj-schema-Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildJob();
      var od = new api.Job.fromJson(o.toJson());
      checkJob(od);
    });
  });

  unittest.group("obj-schema-JobCancelResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobCancelResponse();
      var od = new api.JobCancelResponse.fromJson(o.toJson());
      checkJobCancelResponse(od);
    });
  });

  unittest.group("obj-schema-JobConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobConfiguration();
      var od = new api.JobConfiguration.fromJson(o.toJson());
      checkJobConfiguration(od);
    });
  });

  unittest.group("obj-schema-JobConfigurationExtract", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobConfigurationExtract();
      var od = new api.JobConfigurationExtract.fromJson(o.toJson());
      checkJobConfigurationExtract(od);
    });
  });

  unittest.group("obj-schema-JobConfigurationLoad", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobConfigurationLoad();
      var od = new api.JobConfigurationLoad.fromJson(o.toJson());
      checkJobConfigurationLoad(od);
    });
  });

  unittest.group("obj-schema-JobConfigurationQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobConfigurationQuery();
      var od = new api.JobConfigurationQuery.fromJson(o.toJson());
      checkJobConfigurationQuery(od);
    });
  });

  unittest.group("obj-schema-JobConfigurationTableCopy", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobConfigurationTableCopy();
      var od = new api.JobConfigurationTableCopy.fromJson(o.toJson());
      checkJobConfigurationTableCopy(od);
    });
  });

  unittest.group("obj-schema-JobListJobs", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobListJobs();
      var od = new api.JobListJobs.fromJson(o.toJson());
      checkJobListJobs(od);
    });
  });

  unittest.group("obj-schema-JobList", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobList();
      var od = new api.JobList.fromJson(o.toJson());
      checkJobList(od);
    });
  });

  unittest.group("obj-schema-JobReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobReference();
      var od = new api.JobReference.fromJson(o.toJson());
      checkJobReference(od);
    });
  });

  unittest.group("obj-schema-JobStatisticsReservationUsage", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatisticsReservationUsage();
      var od = new api.JobStatisticsReservationUsage.fromJson(o.toJson());
      checkJobStatisticsReservationUsage(od);
    });
  });

  unittest.group("obj-schema-JobStatistics", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatistics();
      var od = new api.JobStatistics.fromJson(o.toJson());
      checkJobStatistics(od);
    });
  });

  unittest.group("obj-schema-JobStatistics2ReservationUsage", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatistics2ReservationUsage();
      var od = new api.JobStatistics2ReservationUsage.fromJson(o.toJson());
      checkJobStatistics2ReservationUsage(od);
    });
  });

  unittest.group("obj-schema-JobStatistics2", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatistics2();
      var od = new api.JobStatistics2.fromJson(o.toJson());
      checkJobStatistics2(od);
    });
  });

  unittest.group("obj-schema-JobStatistics3", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatistics3();
      var od = new api.JobStatistics3.fromJson(o.toJson());
      checkJobStatistics3(od);
    });
  });

  unittest.group("obj-schema-JobStatistics4", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatistics4();
      var od = new api.JobStatistics4.fromJson(o.toJson());
      checkJobStatistics4(od);
    });
  });

  unittest.group("obj-schema-JobStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatus();
      var od = new api.JobStatus.fromJson(o.toJson());
      checkJobStatus(od);
    });
  });

  unittest.group("obj-schema-JsonObject", () {
    unittest.test("to-json--from-json", () {
      var o = buildJsonObject();
      var od = new api.JsonObject.fromJson(o.toJson());
      checkJsonObject(od);
    });
  });

  unittest.group("obj-schema-ListModelsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListModelsResponse();
      var od = new api.ListModelsResponse.fromJson(o.toJson());
      checkListModelsResponse(od);
    });
  });

  unittest.group("obj-schema-ListRoutinesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListRoutinesResponse();
      var od = new api.ListRoutinesResponse.fromJson(o.toJson());
      checkListRoutinesResponse(od);
    });
  });

  unittest.group("obj-schema-LocationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocationMetadata();
      var od = new api.LocationMetadata.fromJson(o.toJson());
      checkLocationMetadata(od);
    });
  });

  unittest.group("obj-schema-MaterializedViewDefinition", () {
    unittest.test("to-json--from-json", () {
      var o = buildMaterializedViewDefinition();
      var od = new api.MaterializedViewDefinition.fromJson(o.toJson());
      checkMaterializedViewDefinition(od);
    });
  });

  unittest.group("obj-schema-Model", () {
    unittest.test("to-json--from-json", () {
      var o = buildModel();
      var od = new api.Model.fromJson(o.toJson());
      checkModel(od);
    });
  });

  unittest.group("obj-schema-ModelDefinitionModelOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildModelDefinitionModelOptions();
      var od = new api.ModelDefinitionModelOptions.fromJson(o.toJson());
      checkModelDefinitionModelOptions(od);
    });
  });

  unittest.group("obj-schema-ModelDefinition", () {
    unittest.test("to-json--from-json", () {
      var o = buildModelDefinition();
      var od = new api.ModelDefinition.fromJson(o.toJson());
      checkModelDefinition(od);
    });
  });

  unittest.group("obj-schema-ModelReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildModelReference();
      var od = new api.ModelReference.fromJson(o.toJson());
      checkModelReference(od);
    });
  });

  unittest.group("obj-schema-MultiClassClassificationMetrics", () {
    unittest.test("to-json--from-json", () {
      var o = buildMultiClassClassificationMetrics();
      var od = new api.MultiClassClassificationMetrics.fromJson(o.toJson());
      checkMultiClassClassificationMetrics(od);
    });
  });

  unittest.group("obj-schema-ProjectListProjects", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectListProjects();
      var od = new api.ProjectListProjects.fromJson(o.toJson());
      checkProjectListProjects(od);
    });
  });

  unittest.group("obj-schema-ProjectList", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectList();
      var od = new api.ProjectList.fromJson(o.toJson());
      checkProjectList(od);
    });
  });

  unittest.group("obj-schema-ProjectReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectReference();
      var od = new api.ProjectReference.fromJson(o.toJson());
      checkProjectReference(od);
    });
  });

  unittest.group("obj-schema-QueryParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryParameter();
      var od = new api.QueryParameter.fromJson(o.toJson());
      checkQueryParameter(od);
    });
  });

  unittest.group("obj-schema-QueryParameterTypeStructTypes", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryParameterTypeStructTypes();
      var od = new api.QueryParameterTypeStructTypes.fromJson(o.toJson());
      checkQueryParameterTypeStructTypes(od);
    });
  });

  unittest.group("obj-schema-QueryParameterType", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryParameterType();
      var od = new api.QueryParameterType.fromJson(o.toJson());
      checkQueryParameterType(od);
    });
  });

  unittest.group("obj-schema-QueryParameterValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryParameterValue();
      var od = new api.QueryParameterValue.fromJson(o.toJson());
      checkQueryParameterValue(od);
    });
  });

  unittest.group("obj-schema-QueryRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryRequest();
      var od = new api.QueryRequest.fromJson(o.toJson());
      checkQueryRequest(od);
    });
  });

  unittest.group("obj-schema-QueryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryResponse();
      var od = new api.QueryResponse.fromJson(o.toJson());
      checkQueryResponse(od);
    });
  });

  unittest.group("obj-schema-QueryTimelineSample", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryTimelineSample();
      var od = new api.QueryTimelineSample.fromJson(o.toJson());
      checkQueryTimelineSample(od);
    });
  });

  unittest.group("obj-schema-RangePartitioningRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildRangePartitioningRange();
      var od = new api.RangePartitioningRange.fromJson(o.toJson());
      checkRangePartitioningRange(od);
    });
  });

  unittest.group("obj-schema-RangePartitioning", () {
    unittest.test("to-json--from-json", () {
      var o = buildRangePartitioning();
      var od = new api.RangePartitioning.fromJson(o.toJson());
      checkRangePartitioning(od);
    });
  });

  unittest.group("obj-schema-RegressionMetrics", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegressionMetrics();
      var od = new api.RegressionMetrics.fromJson(o.toJson());
      checkRegressionMetrics(od);
    });
  });

  unittest.group("obj-schema-Routine", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoutine();
      var od = new api.Routine.fromJson(o.toJson());
      checkRoutine(od);
    });
  });

  unittest.group("obj-schema-RoutineReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoutineReference();
      var od = new api.RoutineReference.fromJson(o.toJson());
      checkRoutineReference(od);
    });
  });

  unittest.group("obj-schema-Row", () {
    unittest.test("to-json--from-json", () {
      var o = buildRow();
      var od = new api.Row.fromJson(o.toJson());
      checkRow(od);
    });
  });

  unittest.group("obj-schema-StandardSqlDataType", () {
    unittest.test("to-json--from-json", () {
      var o = buildStandardSqlDataType();
      var od = new api.StandardSqlDataType.fromJson(o.toJson());
      checkStandardSqlDataType(od);
    });
  });

  unittest.group("obj-schema-StandardSqlField", () {
    unittest.test("to-json--from-json", () {
      var o = buildStandardSqlField();
      var od = new api.StandardSqlField.fromJson(o.toJson());
      checkStandardSqlField(od);
    });
  });

  unittest.group("obj-schema-StandardSqlStructType", () {
    unittest.test("to-json--from-json", () {
      var o = buildStandardSqlStructType();
      var od = new api.StandardSqlStructType.fromJson(o.toJson());
      checkStandardSqlStructType(od);
    });
  });

  unittest.group("obj-schema-Streamingbuffer", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreamingbuffer();
      var od = new api.Streamingbuffer.fromJson(o.toJson());
      checkStreamingbuffer(od);
    });
  });

  unittest.group("obj-schema-Table", () {
    unittest.test("to-json--from-json", () {
      var o = buildTable();
      var od = new api.Table.fromJson(o.toJson());
      checkTable(od);
    });
  });

  unittest.group("obj-schema-TableCell", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableCell();
      var od = new api.TableCell.fromJson(o.toJson());
      checkTableCell(od);
    });
  });

  unittest.group("obj-schema-TableDataInsertAllRequestRows", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableDataInsertAllRequestRows();
      var od = new api.TableDataInsertAllRequestRows.fromJson(o.toJson());
      checkTableDataInsertAllRequestRows(od);
    });
  });

  unittest.group("obj-schema-TableDataInsertAllRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableDataInsertAllRequest();
      var od = new api.TableDataInsertAllRequest.fromJson(o.toJson());
      checkTableDataInsertAllRequest(od);
    });
  });

  unittest.group("obj-schema-TableDataInsertAllResponseInsertErrors", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableDataInsertAllResponseInsertErrors();
      var od =
          new api.TableDataInsertAllResponseInsertErrors.fromJson(o.toJson());
      checkTableDataInsertAllResponseInsertErrors(od);
    });
  });

  unittest.group("obj-schema-TableDataInsertAllResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableDataInsertAllResponse();
      var od = new api.TableDataInsertAllResponse.fromJson(o.toJson());
      checkTableDataInsertAllResponse(od);
    });
  });

  unittest.group("obj-schema-TableDataList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableDataList();
      var od = new api.TableDataList.fromJson(o.toJson());
      checkTableDataList(od);
    });
  });

  unittest.group("obj-schema-TableFieldSchemaCategories", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableFieldSchemaCategories();
      var od = new api.TableFieldSchemaCategories.fromJson(o.toJson());
      checkTableFieldSchemaCategories(od);
    });
  });

  unittest.group("obj-schema-TableFieldSchema", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableFieldSchema();
      var od = new api.TableFieldSchema.fromJson(o.toJson());
      checkTableFieldSchema(od);
    });
  });

  unittest.group("obj-schema-TableListTablesView", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableListTablesView();
      var od = new api.TableListTablesView.fromJson(o.toJson());
      checkTableListTablesView(od);
    });
  });

  unittest.group("obj-schema-TableListTables", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableListTables();
      var od = new api.TableListTables.fromJson(o.toJson());
      checkTableListTables(od);
    });
  });

  unittest.group("obj-schema-TableList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableList();
      var od = new api.TableList.fromJson(o.toJson());
      checkTableList(od);
    });
  });

  unittest.group("obj-schema-TableReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableReference();
      var od = new api.TableReference.fromJson(o.toJson());
      checkTableReference(od);
    });
  });

  unittest.group("obj-schema-TableRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableRow();
      var od = new api.TableRow.fromJson(o.toJson());
      checkTableRow(od);
    });
  });

  unittest.group("obj-schema-TableSchema", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableSchema();
      var od = new api.TableSchema.fromJson(o.toJson());
      checkTableSchema(od);
    });
  });

  unittest.group("obj-schema-TimePartitioning", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimePartitioning();
      var od = new api.TimePartitioning.fromJson(o.toJson());
      checkTimePartitioning(od);
    });
  });

  unittest.group("obj-schema-TrainingOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrainingOptions();
      var od = new api.TrainingOptions.fromJson(o.toJson());
      checkTrainingOptions(od);
    });
  });

  unittest.group("obj-schema-TrainingRun", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrainingRun();
      var od = new api.TrainingRun.fromJson(o.toJson());
      checkTrainingRun(od);
    });
  });

  unittest.group("obj-schema-UserDefinedFunctionResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserDefinedFunctionResource();
      var od = new api.UserDefinedFunctionResource.fromJson(o.toJson());
      checkUserDefinedFunctionResource(od);
    });
  });

  unittest.group("obj-schema-ViewDefinition", () {
    unittest.test("to-json--from-json", () {
      var o = buildViewDefinition();
      var od = new api.ViewDefinition.fromJson(o.toJson());
      checkViewDefinition(od);
    });
  });

  unittest.group("resource-DatasetsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.BigqueryApi(mock).datasets;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_deleteContents = true;
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));

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
        unittest.expect(queryMap["deleteContents"].first,
            unittest.equals("$arg_deleteContents"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectId, arg_datasetId,
              deleteContents: arg_deleteContents, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.BigqueryApi(mock).datasets;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));

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
        var resp = convert.json.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_datasetId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.BigqueryApi(mock).datasets;
      var arg_request = buildDataset();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Dataset.fromJson(json);
        checkDataset(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/datasets"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.BigqueryApi(mock).datasets;
      var arg_projectId = "foo";
      var arg_pageToken = "foo";
      var arg_maxResults = 42;
      var arg_all = true;
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/datasets"));
        pathOffset += 9;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["all"].first, unittest.equals("$arg_all"));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatasetList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              all: arg_all,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatasetList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.BigqueryApi(mock).datasets;
      var arg_request = buildDataset();
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Dataset.fromJson(json);
        checkDataset(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));

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
        var resp = convert.json.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_projectId, arg_datasetId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.BigqueryApi(mock).datasets;
      var arg_request = buildDataset();
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Dataset.fromJson(json);
        checkDataset(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));

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
        var resp = convert.json.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, arg_datasetId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataset(response);
      })));
    });
  });

  unittest.group("resource-JobsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.BigqueryApi(mock).jobs;
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_location = "foo";
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/cancel", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/cancel"));
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
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJobCancelResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_projectId, arg_jobId,
              location: arg_location, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJobCancelResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.BigqueryApi(mock).jobs;
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_location = "foo";
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

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
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_jobId,
              location: arg_location, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--getQueryResults", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.BigqueryApi(mock).jobs;
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_startIndex = "foo";
      var arg_location = "foo";
      var arg_pageToken = "foo";
      var arg_timeoutMs = 42;
      var arg_maxResults = 42;
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/queries/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/queries/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

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
            queryMap["startIndex"].first, unittest.equals(arg_startIndex));
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["timeoutMs"].first),
            unittest.equals(arg_timeoutMs));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetQueryResultsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getQueryResults(arg_projectId, arg_jobId,
              startIndex: arg_startIndex,
              location: arg_location,
              pageToken: arg_pageToken,
              timeoutMs: arg_timeoutMs,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetQueryResultsResponse(response);
      })));
    });

    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.BigqueryApi(mock).jobs;
      var arg_request = buildJob();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Job.fromJson(json);
        checkJob(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/jobs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/jobs"));
        pathOffset += 5;

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
          .insert(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.BigqueryApi(mock).jobs;
      var arg_projectId = "foo";
      var arg_maxResults = 42;
      var arg_maxCreationTime = "foo";
      var arg_stateFilter = buildUnnamed3337();
      var arg_projection = "foo";
      var arg_minCreationTime = "foo";
      var arg_allUsers = true;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/jobs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/jobs"));
        pathOffset += 5;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["maxCreationTime"].first,
            unittest.equals(arg_maxCreationTime));
        unittest.expect(
            queryMap["stateFilter"], unittest.equals(arg_stateFilter));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["minCreationTime"].first,
            unittest.equals(arg_minCreationTime));
        unittest.expect(
            queryMap["allUsers"].first, unittest.equals("$arg_allUsers"));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJobList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId,
              maxResults: arg_maxResults,
              maxCreationTime: arg_maxCreationTime,
              stateFilter: arg_stateFilter,
              projection: arg_projection,
              minCreationTime: arg_minCreationTime,
              allUsers: arg_allUsers,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJobList(response);
      })));
    });

    unittest.test("method--query", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.BigqueryApi(mock).jobs;
      var arg_request = buildQueryRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.QueryRequest.fromJson(json);
        checkQueryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/queries", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/queries"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildQueryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueryResponse(response);
      })));
    });
  });

  unittest.group("resource-ModelsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ModelsResourceApi res = new api.BigqueryApi(mock).models;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_modelId = "foo";
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectId, arg_datasetId, arg_modelId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ModelsResourceApi res = new api.BigqueryApi(mock).models;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_modelId = "foo";
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildModel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_datasetId, arg_modelId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkModel(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ModelsResourceApi res = new api.BigqueryApi(mock).models;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_pageToken = "foo";
      var arg_maxResults = 42;
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListModelsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_datasetId,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListModelsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ModelsResourceApi res = new api.BigqueryApi(mock).models;
      var arg_request = buildModel();
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_modelId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Model.fromJson(json);
        checkModel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildModel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_projectId, arg_datasetId, arg_modelId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkModel(response);
      })));
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--getServiceAccount", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.BigqueryApi(mock).projects;
      var arg_projectId = "foo";
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/serviceAccount", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/serviceAccount"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildGetServiceAccountResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getServiceAccount(arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetServiceAccountResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.BigqueryApi(mock).projects;
      var arg_pageToken = "foo";
      var arg_maxResults = 42;
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("projects"));
        pathOffset += 8;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProjectList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProjectList(response);
      })));
    });
  });

  unittest.group("resource-RoutinesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.RoutinesResourceApi res = new api.BigqueryApi(mock).routines;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_routineId = "foo";
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectId, arg_datasetId, arg_routineId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RoutinesResourceApi res = new api.BigqueryApi(mock).routines;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_routineId = "foo";
      var arg_fieldMask = "foo";
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
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
            queryMap["fieldMask"].first, unittest.equals(arg_fieldMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildRoutine());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_datasetId, arg_routineId,
              fieldMask: arg_fieldMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRoutine(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.RoutinesResourceApi res = new api.BigqueryApi(mock).routines;
      var arg_request = buildRoutine();
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Routine.fromJson(json);
        checkRoutine(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildRoutine());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_projectId, arg_datasetId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRoutine(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RoutinesResourceApi res = new api.BigqueryApi(mock).routines;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_pageToken = "foo";
      var arg_maxResults = 42;
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListRoutinesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_datasetId,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRoutinesResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.RoutinesResourceApi res = new api.BigqueryApi(mock).routines;
      var arg_request = buildRoutine();
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_routineId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Routine.fromJson(json);
        checkRoutine(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildRoutine());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, arg_datasetId, arg_routineId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRoutine(response);
      })));
    });
  });

  unittest.group("resource-TabledataResourceApi", () {
    unittest.test("method--insertAll", () {
      var mock = new HttpServerMock();
      api.TabledataResourceApi res = new api.BigqueryApi(mock).tabledata;
      var arg_request = buildTableDataInsertAllRequest();
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_tableId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TableDataInsertAllRequest.fromJson(json);
        checkTableDataInsertAllRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tables/"));
        pathOffset += 8;
        index = path.indexOf("/insertAll", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_tableId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/insertAll"));
        pathOffset += 10;

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
        var resp = convert.json.encode(buildTableDataInsertAllResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insertAll(arg_request, arg_projectId, arg_datasetId, arg_tableId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTableDataInsertAllResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TabledataResourceApi res = new api.BigqueryApi(mock).tabledata;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_tableId = "foo";
      var arg_maxResults = 42;
      var arg_selectedFields = "foo";
      var arg_startIndex = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tables/"));
        pathOffset += 8;
        index = path.indexOf("/data", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_tableId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/data"));
        pathOffset += 5;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["selectedFields"].first,
            unittest.equals(arg_selectedFields));
        unittest.expect(
            queryMap["startIndex"].first, unittest.equals(arg_startIndex));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTableDataList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_datasetId, arg_tableId,
              maxResults: arg_maxResults,
              selectedFields: arg_selectedFields,
              startIndex: arg_startIndex,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTableDataList(response);
      })));
    });
  });

  unittest.group("resource-TablesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.TablesResourceApi res = new api.BigqueryApi(mock).tables;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_tableId = "foo";
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tables/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_tableId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectId, arg_datasetId, arg_tableId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.TablesResourceApi res = new api.BigqueryApi(mock).tables;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_tableId = "foo";
      var arg_selectedFields = "foo";
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
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tables/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_tableId"));

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
        unittest.expect(queryMap["selectedFields"].first,
            unittest.equals(arg_selectedFields));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTable());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_datasetId, arg_tableId,
              selectedFields: arg_selectedFields, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTable(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.TablesResourceApi res = new api.BigqueryApi(mock).tables;
      var arg_request = buildTable();
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Table.fromJson(json);
        checkTable(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/tables"));
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
        var resp = convert.json.encode(buildTable());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_projectId, arg_datasetId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTable(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TablesResourceApi res = new api.BigqueryApi(mock).tables;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_maxResults = 42;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/tables"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTableList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_datasetId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTableList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.TablesResourceApi res = new api.BigqueryApi(mock).tables;
      var arg_request = buildTable();
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_tableId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Table.fromJson(json);
        checkTable(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tables/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_tableId"));

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
        var resp = convert.json.encode(buildTable());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_projectId, arg_datasetId, arg_tableId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTable(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.TablesResourceApi res = new api.BigqueryApi(mock).tables;
      var arg_request = buildTable();
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_tableId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Table.fromJson(json);
        checkTable(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tables/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_tableId"));

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
        var resp = convert.json.encode(buildTable());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, arg_datasetId, arg_tableId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTable(response);
      })));
    });
  });
}
