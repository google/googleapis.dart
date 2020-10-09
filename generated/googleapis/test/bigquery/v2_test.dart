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

buildUnnamed3594() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed3594(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed3595() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed3595(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterArimaCoefficients = 0;
buildArimaCoefficients() {
  var o = new api.ArimaCoefficients();
  buildCounterArimaCoefficients++;
  if (buildCounterArimaCoefficients < 3) {
    o.autoRegressiveCoefficients = buildUnnamed3594();
    o.interceptCoefficient = 42.0;
    o.movingAverageCoefficients = buildUnnamed3595();
  }
  buildCounterArimaCoefficients--;
  return o;
}

checkArimaCoefficients(api.ArimaCoefficients o) {
  buildCounterArimaCoefficients++;
  if (buildCounterArimaCoefficients < 3) {
    checkUnnamed3594(o.autoRegressiveCoefficients);
    unittest.expect(o.interceptCoefficient, unittest.equals(42.0));
    checkUnnamed3595(o.movingAverageCoefficients);
  }
  buildCounterArimaCoefficients--;
}

core.int buildCounterArimaFittingMetrics = 0;
buildArimaFittingMetrics() {
  var o = new api.ArimaFittingMetrics();
  buildCounterArimaFittingMetrics++;
  if (buildCounterArimaFittingMetrics < 3) {
    o.aic = 42.0;
    o.logLikelihood = 42.0;
    o.variance = 42.0;
  }
  buildCounterArimaFittingMetrics--;
  return o;
}

checkArimaFittingMetrics(api.ArimaFittingMetrics o) {
  buildCounterArimaFittingMetrics++;
  if (buildCounterArimaFittingMetrics < 3) {
    unittest.expect(o.aic, unittest.equals(42.0));
    unittest.expect(o.logLikelihood, unittest.equals(42.0));
    unittest.expect(o.variance, unittest.equals(42.0));
  }
  buildCounterArimaFittingMetrics--;
}

buildUnnamed3596() {
  var o = new core.List<api.ArimaFittingMetrics>();
  o.add(buildArimaFittingMetrics());
  o.add(buildArimaFittingMetrics());
  return o;
}

checkUnnamed3596(core.List<api.ArimaFittingMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArimaFittingMetrics(o[0]);
  checkArimaFittingMetrics(o[1]);
}

buildUnnamed3597() {
  var o = new core.List<api.ArimaSingleModelForecastingMetrics>();
  o.add(buildArimaSingleModelForecastingMetrics());
  o.add(buildArimaSingleModelForecastingMetrics());
  return o;
}

checkUnnamed3597(core.List<api.ArimaSingleModelForecastingMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArimaSingleModelForecastingMetrics(o[0]);
  checkArimaSingleModelForecastingMetrics(o[1]);
}

buildUnnamed3598() {
  var o = new core.List<core.bool>();
  o.add(true);
  o.add(true);
  return o;
}

checkUnnamed3598(core.List<core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.isTrue);
  unittest.expect(o[1], unittest.isTrue);
}

buildUnnamed3599() {
  var o = new core.List<api.ArimaOrder>();
  o.add(buildArimaOrder());
  o.add(buildArimaOrder());
  return o;
}

checkUnnamed3599(core.List<api.ArimaOrder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArimaOrder(o[0]);
  checkArimaOrder(o[1]);
}

buildUnnamed3600() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3600(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3601() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3601(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterArimaForecastingMetrics = 0;
buildArimaForecastingMetrics() {
  var o = new api.ArimaForecastingMetrics();
  buildCounterArimaForecastingMetrics++;
  if (buildCounterArimaForecastingMetrics < 3) {
    o.arimaFittingMetrics = buildUnnamed3596();
    o.arimaSingleModelForecastingMetrics = buildUnnamed3597();
    o.hasDrift = buildUnnamed3598();
    o.nonSeasonalOrder = buildUnnamed3599();
    o.seasonalPeriods = buildUnnamed3600();
    o.timeSeriesId = buildUnnamed3601();
  }
  buildCounterArimaForecastingMetrics--;
  return o;
}

checkArimaForecastingMetrics(api.ArimaForecastingMetrics o) {
  buildCounterArimaForecastingMetrics++;
  if (buildCounterArimaForecastingMetrics < 3) {
    checkUnnamed3596(o.arimaFittingMetrics);
    checkUnnamed3597(o.arimaSingleModelForecastingMetrics);
    checkUnnamed3598(o.hasDrift);
    checkUnnamed3599(o.nonSeasonalOrder);
    checkUnnamed3600(o.seasonalPeriods);
    checkUnnamed3601(o.timeSeriesId);
  }
  buildCounterArimaForecastingMetrics--;
}

buildUnnamed3602() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3602(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterArimaModelInfo = 0;
buildArimaModelInfo() {
  var o = new api.ArimaModelInfo();
  buildCounterArimaModelInfo++;
  if (buildCounterArimaModelInfo < 3) {
    o.arimaCoefficients = buildArimaCoefficients();
    o.arimaFittingMetrics = buildArimaFittingMetrics();
    o.hasDrift = true;
    o.nonSeasonalOrder = buildArimaOrder();
    o.seasonalPeriods = buildUnnamed3602();
    o.timeSeriesId = "foo";
  }
  buildCounterArimaModelInfo--;
  return o;
}

checkArimaModelInfo(api.ArimaModelInfo o) {
  buildCounterArimaModelInfo++;
  if (buildCounterArimaModelInfo < 3) {
    checkArimaCoefficients(o.arimaCoefficients);
    checkArimaFittingMetrics(o.arimaFittingMetrics);
    unittest.expect(o.hasDrift, unittest.isTrue);
    checkArimaOrder(o.nonSeasonalOrder);
    checkUnnamed3602(o.seasonalPeriods);
    unittest.expect(o.timeSeriesId, unittest.equals('foo'));
  }
  buildCounterArimaModelInfo--;
}

core.int buildCounterArimaOrder = 0;
buildArimaOrder() {
  var o = new api.ArimaOrder();
  buildCounterArimaOrder++;
  if (buildCounterArimaOrder < 3) {
    o.d = "foo";
    o.p = "foo";
    o.q = "foo";
  }
  buildCounterArimaOrder--;
  return o;
}

checkArimaOrder(api.ArimaOrder o) {
  buildCounterArimaOrder++;
  if (buildCounterArimaOrder < 3) {
    unittest.expect(o.d, unittest.equals('foo'));
    unittest.expect(o.p, unittest.equals('foo'));
    unittest.expect(o.q, unittest.equals('foo'));
  }
  buildCounterArimaOrder--;
}

buildUnnamed3603() {
  var o = new core.List<api.ArimaModelInfo>();
  o.add(buildArimaModelInfo());
  o.add(buildArimaModelInfo());
  return o;
}

checkUnnamed3603(core.List<api.ArimaModelInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArimaModelInfo(o[0]);
  checkArimaModelInfo(o[1]);
}

buildUnnamed3604() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3604(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterArimaResult = 0;
buildArimaResult() {
  var o = new api.ArimaResult();
  buildCounterArimaResult++;
  if (buildCounterArimaResult < 3) {
    o.arimaModelInfo = buildUnnamed3603();
    o.seasonalPeriods = buildUnnamed3604();
  }
  buildCounterArimaResult--;
  return o;
}

checkArimaResult(api.ArimaResult o) {
  buildCounterArimaResult++;
  if (buildCounterArimaResult < 3) {
    checkUnnamed3603(o.arimaModelInfo);
    checkUnnamed3604(o.seasonalPeriods);
  }
  buildCounterArimaResult--;
}

buildUnnamed3605() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3605(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterArimaSingleModelForecastingMetrics = 0;
buildArimaSingleModelForecastingMetrics() {
  var o = new api.ArimaSingleModelForecastingMetrics();
  buildCounterArimaSingleModelForecastingMetrics++;
  if (buildCounterArimaSingleModelForecastingMetrics < 3) {
    o.arimaFittingMetrics = buildArimaFittingMetrics();
    o.hasDrift = true;
    o.nonSeasonalOrder = buildArimaOrder();
    o.seasonalPeriods = buildUnnamed3605();
    o.timeSeriesId = "foo";
  }
  buildCounterArimaSingleModelForecastingMetrics--;
  return o;
}

checkArimaSingleModelForecastingMetrics(
    api.ArimaSingleModelForecastingMetrics o) {
  buildCounterArimaSingleModelForecastingMetrics++;
  if (buildCounterArimaSingleModelForecastingMetrics < 3) {
    checkArimaFittingMetrics(o.arimaFittingMetrics);
    unittest.expect(o.hasDrift, unittest.isTrue);
    checkArimaOrder(o.nonSeasonalOrder);
    checkUnnamed3605(o.seasonalPeriods);
    unittest.expect(o.timeSeriesId, unittest.equals('foo'));
  }
  buildCounterArimaSingleModelForecastingMetrics--;
}

buildUnnamed3606() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed3606(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed3606();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed3606(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed3607() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3607(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed3607();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed3607(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
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

buildUnnamed3608() {
  var o = new core.List<api.BigtableColumn>();
  o.add(buildBigtableColumn());
  o.add(buildBigtableColumn());
  return o;
}

checkUnnamed3608(core.List<api.BigtableColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigtableColumn(o[0]);
  checkBigtableColumn(o[1]);
}

core.int buildCounterBigtableColumnFamily = 0;
buildBigtableColumnFamily() {
  var o = new api.BigtableColumnFamily();
  buildCounterBigtableColumnFamily++;
  if (buildCounterBigtableColumnFamily < 3) {
    o.columns = buildUnnamed3608();
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
    checkUnnamed3608(o.columns);
    unittest.expect(o.encoding, unittest.equals('foo'));
    unittest.expect(o.familyId, unittest.equals('foo'));
    unittest.expect(o.onlyReadLatest, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBigtableColumnFamily--;
}

buildUnnamed3609() {
  var o = new core.List<api.BigtableColumnFamily>();
  o.add(buildBigtableColumnFamily());
  o.add(buildBigtableColumnFamily());
  return o;
}

checkUnnamed3609(core.List<api.BigtableColumnFamily> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigtableColumnFamily(o[0]);
  checkBigtableColumnFamily(o[1]);
}

core.int buildCounterBigtableOptions = 0;
buildBigtableOptions() {
  var o = new api.BigtableOptions();
  buildCounterBigtableOptions++;
  if (buildCounterBigtableOptions < 3) {
    o.columnFamilies = buildUnnamed3609();
    o.ignoreUnspecifiedColumnFamilies = true;
    o.readRowkeyAsString = true;
  }
  buildCounterBigtableOptions--;
  return o;
}

checkBigtableOptions(api.BigtableOptions o) {
  buildCounterBigtableOptions++;
  if (buildCounterBigtableOptions < 3) {
    checkUnnamed3609(o.columnFamilies);
    unittest.expect(o.ignoreUnspecifiedColumnFamilies, unittest.isTrue);
    unittest.expect(o.readRowkeyAsString, unittest.isTrue);
  }
  buildCounterBigtableOptions--;
}

buildUnnamed3610() {
  var o = new core.List<api.BinaryConfusionMatrix>();
  o.add(buildBinaryConfusionMatrix());
  o.add(buildBinaryConfusionMatrix());
  return o;
}

checkUnnamed3610(core.List<api.BinaryConfusionMatrix> o) {
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
    o.binaryConfusionMatrixList = buildUnnamed3610();
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
    checkUnnamed3610(o.binaryConfusionMatrixList);
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

buildUnnamed3611() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3611(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed3611();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed3611(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
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

buildUnnamed3612() {
  var o = new core.List<api.BqmlIterationResult>();
  o.add(buildBqmlIterationResult());
  o.add(buildBqmlIterationResult());
  return o;
}

checkUnnamed3612(core.List<api.BqmlIterationResult> o) {
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
    o.iterationResults = buildUnnamed3612();
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
    checkUnnamed3612(o.iterationResults);
    unittest.expect(o.startTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.state, unittest.equals('foo'));
    checkBqmlTrainingRunTrainingOptions(o.trainingOptions);
  }
  buildCounterBqmlTrainingRun--;
}

buildUnnamed3613() {
  var o = new core.List<api.CategoryCount>();
  o.add(buildCategoryCount());
  o.add(buildCategoryCount());
  return o;
}

checkUnnamed3613(core.List<api.CategoryCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategoryCount(o[0]);
  checkCategoryCount(o[1]);
}

core.int buildCounterCategoricalValue = 0;
buildCategoricalValue() {
  var o = new api.CategoricalValue();
  buildCounterCategoricalValue++;
  if (buildCounterCategoricalValue < 3) {
    o.categoryCounts = buildUnnamed3613();
  }
  buildCounterCategoricalValue--;
  return o;
}

checkCategoricalValue(api.CategoricalValue o) {
  buildCounterCategoricalValue++;
  if (buildCounterCategoricalValue < 3) {
    checkUnnamed3613(o.categoryCounts);
  }
  buildCounterCategoricalValue--;
}

core.int buildCounterCategoryCount = 0;
buildCategoryCount() {
  var o = new api.CategoryCount();
  buildCounterCategoryCount++;
  if (buildCounterCategoryCount < 3) {
    o.category = "foo";
    o.count = "foo";
  }
  buildCounterCategoryCount--;
  return o;
}

checkCategoryCount(api.CategoryCount o) {
  buildCounterCategoryCount++;
  if (buildCounterCategoryCount < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    unittest.expect(o.count, unittest.equals('foo'));
  }
  buildCounterCategoryCount--;
}

buildUnnamed3614() {
  var o = new core.List<api.FeatureValue>();
  o.add(buildFeatureValue());
  o.add(buildFeatureValue());
  return o;
}

checkUnnamed3614(core.List<api.FeatureValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeatureValue(o[0]);
  checkFeatureValue(o[1]);
}

core.int buildCounterCluster = 0;
buildCluster() {
  var o = new api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.centroidId = "foo";
    o.count = "foo";
    o.featureValues = buildUnnamed3614();
  }
  buildCounterCluster--;
  return o;
}

checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    unittest.expect(o.centroidId, unittest.equals('foo'));
    unittest.expect(o.count, unittest.equals('foo'));
    checkUnnamed3614(o.featureValues);
  }
  buildCounterCluster--;
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

buildUnnamed3615() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3615(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterClustering = 0;
buildClustering() {
  var o = new api.Clustering();
  buildCounterClustering++;
  if (buildCounterClustering < 3) {
    o.fields = buildUnnamed3615();
  }
  buildCounterClustering--;
  return o;
}

checkClustering(api.Clustering o) {
  buildCounterClustering++;
  if (buildCounterClustering < 3) {
    checkUnnamed3615(o.fields);
  }
  buildCounterClustering--;
}

buildUnnamed3616() {
  var o = new core.List<api.Cluster>();
  o.add(buildCluster());
  o.add(buildCluster());
  return o;
}

checkUnnamed3616(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.int buildCounterClusteringMetrics = 0;
buildClusteringMetrics() {
  var o = new api.ClusteringMetrics();
  buildCounterClusteringMetrics++;
  if (buildCounterClusteringMetrics < 3) {
    o.clusters = buildUnnamed3616();
    o.daviesBouldinIndex = 42.0;
    o.meanSquaredDistance = 42.0;
  }
  buildCounterClusteringMetrics--;
  return o;
}

checkClusteringMetrics(api.ClusteringMetrics o) {
  buildCounterClusteringMetrics++;
  if (buildCounterClusteringMetrics < 3) {
    checkUnnamed3616(o.clusters);
    unittest.expect(o.daviesBouldinIndex, unittest.equals(42.0));
    unittest.expect(o.meanSquaredDistance, unittest.equals(42.0));
  }
  buildCounterClusteringMetrics--;
}

buildUnnamed3617() {
  var o = new core.List<api.Row>();
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

checkUnnamed3617(core.List<api.Row> o) {
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
    o.rows = buildUnnamed3617();
  }
  buildCounterConfusionMatrix--;
  return o;
}

checkConfusionMatrix(api.ConfusionMatrix o) {
  buildCounterConfusionMatrix++;
  if (buildCounterConfusionMatrix < 3) {
    unittest.expect(o.confidenceThreshold, unittest.equals(42.0));
    checkUnnamed3617(o.rows);
  }
  buildCounterConfusionMatrix--;
}

core.int buildCounterConnectionProperty = 0;
buildConnectionProperty() {
  var o = new api.ConnectionProperty();
  buildCounterConnectionProperty++;
  if (buildCounterConnectionProperty < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterConnectionProperty--;
  return o;
}

checkConnectionProperty(api.ConnectionProperty o) {
  buildCounterConnectionProperty++;
  if (buildCounterConnectionProperty < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterConnectionProperty--;
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

core.int buildCounterDataSplitResult = 0;
buildDataSplitResult() {
  var o = new api.DataSplitResult();
  buildCounterDataSplitResult++;
  if (buildCounterDataSplitResult < 3) {
    o.evaluationTable = buildTableReference();
    o.trainingTable = buildTableReference();
  }
  buildCounterDataSplitResult--;
  return o;
}

checkDataSplitResult(api.DataSplitResult o) {
  buildCounterDataSplitResult++;
  if (buildCounterDataSplitResult < 3) {
    checkTableReference(o.evaluationTable);
    checkTableReference(o.trainingTable);
  }
  buildCounterDataSplitResult--;
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

buildUnnamed3618() {
  var o = new core.List<api.DatasetAccess>();
  o.add(buildDatasetAccess());
  o.add(buildDatasetAccess());
  return o;
}

checkUnnamed3618(core.List<api.DatasetAccess> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatasetAccess(o[0]);
  checkDatasetAccess(o[1]);
}

buildUnnamed3619() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3619(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterDataset = 0;
buildDataset() {
  var o = new api.Dataset();
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    o.access = buildUnnamed3618();
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
    o.labels = buildUnnamed3619();
    o.lastModifiedTime = "foo";
    o.location = "foo";
    o.satisfiesPZS = true;
    o.selfLink = "foo";
  }
  buildCounterDataset--;
  return o;
}

checkDataset(api.Dataset o) {
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    checkUnnamed3618(o.access);
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
    checkUnnamed3619(o.labels);
    unittest.expect(o.lastModifiedTime, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.satisfiesPZS, unittest.isTrue);
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterDataset--;
}

buildUnnamed3620() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3620(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed3620();
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
    checkUnnamed3620(o.labels);
    unittest.expect(o.location, unittest.equals('foo'));
  }
  buildCounterDatasetListDatasets--;
}

buildUnnamed3621() {
  var o = new core.List<api.DatasetListDatasets>();
  o.add(buildDatasetListDatasets());
  o.add(buildDatasetListDatasets());
  return o;
}

checkUnnamed3621(core.List<api.DatasetListDatasets> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatasetListDatasets(o[0]);
  checkDatasetListDatasets(o[1]);
}

core.int buildCounterDatasetList = 0;
buildDatasetList() {
  var o = new api.DatasetList();
  buildCounterDatasetList++;
  if (buildCounterDatasetList < 3) {
    o.datasets = buildUnnamed3621();
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
    checkUnnamed3621(o.datasets);
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

buildUnnamed3622() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3622(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed3622();
  }
  buildCounterDestinationTableProperties--;
  return o;
}

checkDestinationTableProperties(api.DestinationTableProperties o) {
  buildCounterDestinationTableProperties++;
  if (buildCounterDestinationTableProperties < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.friendlyName, unittest.equals('foo'));
    checkUnnamed3622(o.labels);
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
    o.arimaForecastingMetrics = buildArimaForecastingMetrics();
    o.binaryClassificationMetrics = buildBinaryClassificationMetrics();
    o.clusteringMetrics = buildClusteringMetrics();
    o.multiClassClassificationMetrics = buildMultiClassClassificationMetrics();
    o.rankingMetrics = buildRankingMetrics();
    o.regressionMetrics = buildRegressionMetrics();
  }
  buildCounterEvaluationMetrics--;
  return o;
}

checkEvaluationMetrics(api.EvaluationMetrics o) {
  buildCounterEvaluationMetrics++;
  if (buildCounterEvaluationMetrics < 3) {
    checkArimaForecastingMetrics(o.arimaForecastingMetrics);
    checkBinaryClassificationMetrics(o.binaryClassificationMetrics);
    checkClusteringMetrics(o.clusteringMetrics);
    checkMultiClassClassificationMetrics(o.multiClassClassificationMetrics);
    checkRankingMetrics(o.rankingMetrics);
    checkRegressionMetrics(o.regressionMetrics);
  }
  buildCounterEvaluationMetrics--;
}

buildUnnamed3623() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3623(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3624() {
  var o = new core.List<api.ExplainQueryStep>();
  o.add(buildExplainQueryStep());
  o.add(buildExplainQueryStep());
  return o;
}

checkUnnamed3624(core.List<api.ExplainQueryStep> o) {
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
    o.inputStages = buildUnnamed3623();
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
    o.slotMs = "foo";
    o.startMs = "foo";
    o.status = "foo";
    o.steps = buildUnnamed3624();
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
    checkUnnamed3623(o.inputStages);
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
    unittest.expect(o.slotMs, unittest.equals('foo'));
    unittest.expect(o.startMs, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed3624(o.steps);
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

buildUnnamed3625() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3625(core.List<core.String> o) {
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
    o.substeps = buildUnnamed3625();
  }
  buildCounterExplainQueryStep--;
  return o;
}

checkExplainQueryStep(api.ExplainQueryStep o) {
  buildCounterExplainQueryStep++;
  if (buildCounterExplainQueryStep < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3625(o.substeps);
  }
  buildCounterExplainQueryStep--;
}

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

buildUnnamed3626() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3626(core.List<core.String> o) {
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
    o.connectionId = "foo";
    o.csvOptions = buildCsvOptions();
    o.googleSheetsOptions = buildGoogleSheetsOptions();
    o.hivePartitioningOptions = buildHivePartitioningOptions();
    o.ignoreUnknownValues = true;
    o.maxBadRecords = 42;
    o.schema = buildTableSchema();
    o.sourceFormat = "foo";
    o.sourceUris = buildUnnamed3626();
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
    unittest.expect(o.connectionId, unittest.equals('foo'));
    checkCsvOptions(o.csvOptions);
    checkGoogleSheetsOptions(o.googleSheetsOptions);
    checkHivePartitioningOptions(o.hivePartitioningOptions);
    unittest.expect(o.ignoreUnknownValues, unittest.isTrue);
    unittest.expect(o.maxBadRecords, unittest.equals(42));
    checkTableSchema(o.schema);
    unittest.expect(o.sourceFormat, unittest.equals('foo'));
    checkUnnamed3626(o.sourceUris);
  }
  buildCounterExternalDataConfiguration--;
}

core.int buildCounterFeatureValue = 0;
buildFeatureValue() {
  var o = new api.FeatureValue();
  buildCounterFeatureValue++;
  if (buildCounterFeatureValue < 3) {
    o.categoricalValue = buildCategoricalValue();
    o.featureColumn = "foo";
    o.numericalValue = 42.0;
  }
  buildCounterFeatureValue--;
  return o;
}

checkFeatureValue(api.FeatureValue o) {
  buildCounterFeatureValue++;
  if (buildCounterFeatureValue < 3) {
    checkCategoricalValue(o.categoricalValue);
    unittest.expect(o.featureColumn, unittest.equals('foo'));
    unittest.expect(o.numericalValue, unittest.equals(42.0));
  }
  buildCounterFeatureValue--;
}

core.int buildCounterGetIamPolicyRequest = 0;
buildGetIamPolicyRequest() {
  var o = new api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
buildGetPolicyOptions() {
  var o = new api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(o.requestedPolicyVersion, unittest.equals(42));
  }
  buildCounterGetPolicyOptions--;
}

buildUnnamed3627() {
  var o = new core.List<api.ErrorProto>();
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

checkUnnamed3627(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

buildUnnamed3628() {
  var o = new core.List<api.TableRow>();
  o.add(buildTableRow());
  o.add(buildTableRow());
  return o;
}

checkUnnamed3628(core.List<api.TableRow> o) {
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
    o.errors = buildUnnamed3627();
    o.etag = "foo";
    o.jobComplete = true;
    o.jobReference = buildJobReference();
    o.kind = "foo";
    o.numDmlAffectedRows = "foo";
    o.pageToken = "foo";
    o.rows = buildUnnamed3628();
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
    checkUnnamed3627(o.errors);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.jobComplete, unittest.isTrue);
    checkJobReference(o.jobReference);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.numDmlAffectedRows, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkUnnamed3628(o.rows);
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
    o.requirePartitionFilter = true;
    o.sourceUriPrefix = "foo";
  }
  buildCounterHivePartitioningOptions--;
  return o;
}

checkHivePartitioningOptions(api.HivePartitioningOptions o) {
  buildCounterHivePartitioningOptions++;
  if (buildCounterHivePartitioningOptions < 3) {
    unittest.expect(o.mode, unittest.equals('foo'));
    unittest.expect(o.requirePartitionFilter, unittest.isTrue);
    unittest.expect(o.sourceUriPrefix, unittest.equals('foo'));
  }
  buildCounterHivePartitioningOptions--;
}

buildUnnamed3629() {
  var o = new core.List<api.ClusterInfo>();
  o.add(buildClusterInfo());
  o.add(buildClusterInfo());
  return o;
}

checkUnnamed3629(core.List<api.ClusterInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterInfo(o[0]);
  checkClusterInfo(o[1]);
}

core.int buildCounterIterationResult = 0;
buildIterationResult() {
  var o = new api.IterationResult();
  buildCounterIterationResult++;
  if (buildCounterIterationResult < 3) {
    o.arimaResult = buildArimaResult();
    o.clusterInfos = buildUnnamed3629();
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
    checkArimaResult(o.arimaResult);
    checkUnnamed3629(o.clusterInfos);
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

buildUnnamed3630() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3630(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed3630();
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
    checkUnnamed3630(o.labels);
    checkJobConfigurationLoad(o.load);
    checkJobConfigurationQuery(o.query);
  }
  buildCounterJobConfiguration--;
}

buildUnnamed3631() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3631(core.List<core.String> o) {
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
    o.destinationUris = buildUnnamed3631();
    o.fieldDelimiter = "foo";
    o.printHeader = true;
    o.sourceModel = buildModelReference();
    o.sourceTable = buildTableReference();
    o.useAvroLogicalTypes = true;
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
    checkUnnamed3631(o.destinationUris);
    unittest.expect(o.fieldDelimiter, unittest.equals('foo'));
    unittest.expect(o.printHeader, unittest.isTrue);
    checkModelReference(o.sourceModel);
    checkTableReference(o.sourceTable);
    unittest.expect(o.useAvroLogicalTypes, unittest.isTrue);
  }
  buildCounterJobConfigurationExtract--;
}

buildUnnamed3632() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3632(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3633() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3633(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3634() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3634(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3635() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3635(core.List<core.String> o) {
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
    o.decimalTargetTypes = buildUnnamed3632();
    o.destinationEncryptionConfiguration = buildEncryptionConfiguration();
    o.destinationTable = buildTableReference();
    o.destinationTableProperties = buildDestinationTableProperties();
    o.encoding = "foo";
    o.fieldDelimiter = "foo";
    o.hivePartitioningOptions = buildHivePartitioningOptions();
    o.ignoreUnknownValues = true;
    o.maxBadRecords = 42;
    o.nullMarker = "foo";
    o.projectionFields = buildUnnamed3633();
    o.quote = "foo";
    o.rangePartitioning = buildRangePartitioning();
    o.schema = buildTableSchema();
    o.schemaInline = "foo";
    o.schemaInlineFormat = "foo";
    o.schemaUpdateOptions = buildUnnamed3634();
    o.skipLeadingRows = 42;
    o.sourceFormat = "foo";
    o.sourceUris = buildUnnamed3635();
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
    checkUnnamed3632(o.decimalTargetTypes);
    checkEncryptionConfiguration(o.destinationEncryptionConfiguration);
    checkTableReference(o.destinationTable);
    checkDestinationTableProperties(o.destinationTableProperties);
    unittest.expect(o.encoding, unittest.equals('foo'));
    unittest.expect(o.fieldDelimiter, unittest.equals('foo'));
    checkHivePartitioningOptions(o.hivePartitioningOptions);
    unittest.expect(o.ignoreUnknownValues, unittest.isTrue);
    unittest.expect(o.maxBadRecords, unittest.equals(42));
    unittest.expect(o.nullMarker, unittest.equals('foo'));
    checkUnnamed3633(o.projectionFields);
    unittest.expect(o.quote, unittest.equals('foo'));
    checkRangePartitioning(o.rangePartitioning);
    checkTableSchema(o.schema);
    unittest.expect(o.schemaInline, unittest.equals('foo'));
    unittest.expect(o.schemaInlineFormat, unittest.equals('foo'));
    checkUnnamed3634(o.schemaUpdateOptions);
    unittest.expect(o.skipLeadingRows, unittest.equals(42));
    unittest.expect(o.sourceFormat, unittest.equals('foo'));
    checkUnnamed3635(o.sourceUris);
    checkTimePartitioning(o.timePartitioning);
    unittest.expect(o.useAvroLogicalTypes, unittest.isTrue);
    unittest.expect(o.writeDisposition, unittest.equals('foo'));
  }
  buildCounterJobConfigurationLoad--;
}

buildUnnamed3636() {
  var o = new core.List<api.ConnectionProperty>();
  o.add(buildConnectionProperty());
  o.add(buildConnectionProperty());
  return o;
}

checkUnnamed3636(core.List<api.ConnectionProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionProperty(o[0]);
  checkConnectionProperty(o[1]);
}

buildUnnamed3637() {
  var o = new core.List<api.QueryParameter>();
  o.add(buildQueryParameter());
  o.add(buildQueryParameter());
  return o;
}

checkUnnamed3637(core.List<api.QueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameter(o[0]);
  checkQueryParameter(o[1]);
}

buildUnnamed3638() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3638(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3639() {
  var o = new core.Map<core.String, api.ExternalDataConfiguration>();
  o["x"] = buildExternalDataConfiguration();
  o["y"] = buildExternalDataConfiguration();
  return o;
}

checkUnnamed3639(core.Map<core.String, api.ExternalDataConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalDataConfiguration(o["x"]);
  checkExternalDataConfiguration(o["y"]);
}

buildUnnamed3640() {
  var o = new core.List<api.UserDefinedFunctionResource>();
  o.add(buildUserDefinedFunctionResource());
  o.add(buildUserDefinedFunctionResource());
  return o;
}

checkUnnamed3640(core.List<api.UserDefinedFunctionResource> o) {
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
    o.connectionProperties = buildUnnamed3636();
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
    o.queryParameters = buildUnnamed3637();
    o.rangePartitioning = buildRangePartitioning();
    o.schemaUpdateOptions = buildUnnamed3638();
    o.tableDefinitions = buildUnnamed3639();
    o.timePartitioning = buildTimePartitioning();
    o.useLegacySql = true;
    o.useQueryCache = true;
    o.userDefinedFunctionResources = buildUnnamed3640();
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
    checkUnnamed3636(o.connectionProperties);
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
    checkUnnamed3637(o.queryParameters);
    checkRangePartitioning(o.rangePartitioning);
    checkUnnamed3638(o.schemaUpdateOptions);
    checkUnnamed3639(o.tableDefinitions);
    checkTimePartitioning(o.timePartitioning);
    unittest.expect(o.useLegacySql, unittest.isTrue);
    unittest.expect(o.useQueryCache, unittest.isTrue);
    checkUnnamed3640(o.userDefinedFunctionResources);
    unittest.expect(o.writeDisposition, unittest.equals('foo'));
  }
  buildCounterJobConfigurationQuery--;
}

buildUnnamed3641() {
  var o = new core.List<api.TableReference>();
  o.add(buildTableReference());
  o.add(buildTableReference());
  return o;
}

checkUnnamed3641(core.List<api.TableReference> o) {
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
    o.destinationExpirationTime = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.destinationTable = buildTableReference();
    o.operationType = "foo";
    o.sourceTable = buildTableReference();
    o.sourceTables = buildUnnamed3641();
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
    var casted1 = (o.destinationExpirationTime) as core.Map;
    unittest.expect(casted1, unittest.hasLength(3));
    unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted1["bool"], unittest.equals(true));
    unittest.expect(casted1["string"], unittest.equals('foo'));
    checkTableReference(o.destinationTable);
    unittest.expect(o.operationType, unittest.equals('foo'));
    checkTableReference(o.sourceTable);
    checkUnnamed3641(o.sourceTables);
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

buildUnnamed3642() {
  var o = new core.List<api.JobListJobs>();
  o.add(buildJobListJobs());
  o.add(buildJobListJobs());
  return o;
}

checkUnnamed3642(core.List<api.JobListJobs> o) {
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
    o.jobs = buildUnnamed3642();
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
    checkUnnamed3642(o.jobs);
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

buildUnnamed3643() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3643(core.List<core.String> o) {
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

buildUnnamed3644() {
  var o = new core.List<api.JobStatisticsReservationUsage>();
  o.add(buildJobStatisticsReservationUsage());
  o.add(buildJobStatisticsReservationUsage());
  return o;
}

checkUnnamed3644(core.List<api.JobStatisticsReservationUsage> o) {
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
    o.quotaDeferments = buildUnnamed3643();
    o.reservationUsage = buildUnnamed3644();
    o.reservationId = "foo";
    o.rowLevelSecurityStatistics = buildRowLevelSecurityStatistics();
    o.scriptStatistics = buildScriptStatistics();
    o.startTime = "foo";
    o.totalBytesProcessed = "foo";
    o.totalSlotMs = "foo";
    o.transactionInfoTemplate = buildTransactionInfo();
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
    checkUnnamed3643(o.quotaDeferments);
    checkUnnamed3644(o.reservationUsage);
    unittest.expect(o.reservationId, unittest.equals('foo'));
    checkRowLevelSecurityStatistics(o.rowLevelSecurityStatistics);
    checkScriptStatistics(o.scriptStatistics);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.totalBytesProcessed, unittest.equals('foo'));
    unittest.expect(o.totalSlotMs, unittest.equals('foo'));
    checkTransactionInfo(o.transactionInfoTemplate);
  }
  buildCounterJobStatistics--;
}

buildUnnamed3645() {
  var o = new core.List<api.ExplainQueryStage>();
  o.add(buildExplainQueryStage());
  o.add(buildExplainQueryStage());
  return o;
}

checkUnnamed3645(core.List<api.ExplainQueryStage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExplainQueryStage(o[0]);
  checkExplainQueryStage(o[1]);
}

buildUnnamed3646() {
  var o = new core.List<api.RoutineReference>();
  o.add(buildRoutineReference());
  o.add(buildRoutineReference());
  return o;
}

checkUnnamed3646(core.List<api.RoutineReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoutineReference(o[0]);
  checkRoutineReference(o[1]);
}

buildUnnamed3647() {
  var o = new core.List<api.TableReference>();
  o.add(buildTableReference());
  o.add(buildTableReference());
  return o;
}

checkUnnamed3647(core.List<api.TableReference> o) {
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

buildUnnamed3648() {
  var o = new core.List<api.JobStatistics2ReservationUsage>();
  o.add(buildJobStatistics2ReservationUsage());
  o.add(buildJobStatistics2ReservationUsage());
  return o;
}

checkUnnamed3648(core.List<api.JobStatistics2ReservationUsage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobStatistics2ReservationUsage(o[0]);
  checkJobStatistics2ReservationUsage(o[1]);
}

buildUnnamed3649() {
  var o = new core.List<api.QueryTimelineSample>();
  o.add(buildQueryTimelineSample());
  o.add(buildQueryTimelineSample());
  return o;
}

checkUnnamed3649(core.List<api.QueryTimelineSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryTimelineSample(o[0]);
  checkQueryTimelineSample(o[1]);
}

buildUnnamed3650() {
  var o = new core.List<api.QueryParameter>();
  o.add(buildQueryParameter());
  o.add(buildQueryParameter());
  return o;
}

checkUnnamed3650(core.List<api.QueryParameter> o) {
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
    o.ddlAffectedRowAccessPolicyCount = "foo";
    o.ddlOperationPerformed = "foo";
    o.ddlTargetRoutine = buildRoutineReference();
    o.ddlTargetRowAccessPolicy = buildRowAccessPolicyReference();
    o.ddlTargetTable = buildTableReference();
    o.estimatedBytesProcessed = "foo";
    o.modelTraining = buildBigQueryModelTraining();
    o.modelTrainingCurrentIteration = 42;
    o.modelTrainingExpectedTotalIteration = "foo";
    o.numDmlAffectedRows = "foo";
    o.queryPlan = buildUnnamed3645();
    o.referencedRoutines = buildUnnamed3646();
    o.referencedTables = buildUnnamed3647();
    o.reservationUsage = buildUnnamed3648();
    o.schema = buildTableSchema();
    o.statementType = "foo";
    o.timeline = buildUnnamed3649();
    o.totalBytesBilled = "foo";
    o.totalBytesProcessed = "foo";
    o.totalBytesProcessedAccuracy = "foo";
    o.totalPartitionsProcessed = "foo";
    o.totalSlotMs = "foo";
    o.undeclaredQueryParameters = buildUnnamed3650();
  }
  buildCounterJobStatistics2--;
  return o;
}

checkJobStatistics2(api.JobStatistics2 o) {
  buildCounterJobStatistics2++;
  if (buildCounterJobStatistics2 < 3) {
    unittest.expect(o.billingTier, unittest.equals(42));
    unittest.expect(o.cacheHit, unittest.isTrue);
    unittest.expect(o.ddlAffectedRowAccessPolicyCount, unittest.equals('foo'));
    unittest.expect(o.ddlOperationPerformed, unittest.equals('foo'));
    checkRoutineReference(o.ddlTargetRoutine);
    checkRowAccessPolicyReference(o.ddlTargetRowAccessPolicy);
    checkTableReference(o.ddlTargetTable);
    unittest.expect(o.estimatedBytesProcessed, unittest.equals('foo'));
    checkBigQueryModelTraining(o.modelTraining);
    unittest.expect(o.modelTrainingCurrentIteration, unittest.equals(42));
    unittest.expect(
        o.modelTrainingExpectedTotalIteration, unittest.equals('foo'));
    unittest.expect(o.numDmlAffectedRows, unittest.equals('foo'));
    checkUnnamed3645(o.queryPlan);
    checkUnnamed3646(o.referencedRoutines);
    checkUnnamed3647(o.referencedTables);
    checkUnnamed3648(o.reservationUsage);
    checkTableSchema(o.schema);
    unittest.expect(o.statementType, unittest.equals('foo'));
    checkUnnamed3649(o.timeline);
    unittest.expect(o.totalBytesBilled, unittest.equals('foo'));
    unittest.expect(o.totalBytesProcessed, unittest.equals('foo'));
    unittest.expect(o.totalBytesProcessedAccuracy, unittest.equals('foo'));
    unittest.expect(o.totalPartitionsProcessed, unittest.equals('foo'));
    unittest.expect(o.totalSlotMs, unittest.equals('foo'));
    checkUnnamed3650(o.undeclaredQueryParameters);
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

buildUnnamed3651() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3651(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobStatistics4 = 0;
buildJobStatistics4() {
  var o = new api.JobStatistics4();
  buildCounterJobStatistics4++;
  if (buildCounterJobStatistics4 < 3) {
    o.destinationUriFileCounts = buildUnnamed3651();
    o.inputBytes = "foo";
  }
  buildCounterJobStatistics4--;
  return o;
}

checkJobStatistics4(api.JobStatistics4 o) {
  buildCounterJobStatistics4++;
  if (buildCounterJobStatistics4 < 3) {
    checkUnnamed3651(o.destinationUriFileCounts);
    unittest.expect(o.inputBytes, unittest.equals('foo'));
  }
  buildCounterJobStatistics4--;
}

buildUnnamed3652() {
  var o = new core.List<api.ErrorProto>();
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

checkUnnamed3652(core.List<api.ErrorProto> o) {
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
    o.errors = buildUnnamed3652();
    o.state = "foo";
  }
  buildCounterJobStatus--;
  return o;
}

checkJobStatus(api.JobStatus o) {
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    checkErrorProto(o.errorResult);
    checkUnnamed3652(o.errors);
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
  var casted2 = (o["a"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
  var casted3 = (o["b"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
}

buildUnnamed3653() {
  var o = new core.List<api.Model>();
  o.add(buildModel());
  o.add(buildModel());
  return o;
}

checkUnnamed3653(core.List<api.Model> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkModel(o[0]);
  checkModel(o[1]);
}

core.int buildCounterListModelsResponse = 0;
buildListModelsResponse() {
  var o = new api.ListModelsResponse();
  buildCounterListModelsResponse++;
  if (buildCounterListModelsResponse < 3) {
    o.models = buildUnnamed3653();
    o.nextPageToken = "foo";
  }
  buildCounterListModelsResponse--;
  return o;
}

checkListModelsResponse(api.ListModelsResponse o) {
  buildCounterListModelsResponse++;
  if (buildCounterListModelsResponse < 3) {
    checkUnnamed3653(o.models);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListModelsResponse--;
}

buildUnnamed3654() {
  var o = new core.List<api.Routine>();
  o.add(buildRoutine());
  o.add(buildRoutine());
  return o;
}

checkUnnamed3654(core.List<api.Routine> o) {
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
    o.routines = buildUnnamed3654();
  }
  buildCounterListRoutinesResponse--;
  return o;
}

checkListRoutinesResponse(api.ListRoutinesResponse o) {
  buildCounterListRoutinesResponse++;
  if (buildCounterListRoutinesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3654(o.routines);
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
    o.enableRefresh = true;
    o.lastRefreshTime = "foo";
    o.query = "foo";
    o.refreshIntervalMs = "foo";
  }
  buildCounterMaterializedViewDefinition--;
  return o;
}

checkMaterializedViewDefinition(api.MaterializedViewDefinition o) {
  buildCounterMaterializedViewDefinition++;
  if (buildCounterMaterializedViewDefinition < 3) {
    unittest.expect(o.enableRefresh, unittest.isTrue);
    unittest.expect(o.lastRefreshTime, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
    unittest.expect(o.refreshIntervalMs, unittest.equals('foo'));
  }
  buildCounterMaterializedViewDefinition--;
}

buildUnnamed3655() {
  var o = new core.List<api.StandardSqlField>();
  o.add(buildStandardSqlField());
  o.add(buildStandardSqlField());
  return o;
}

checkUnnamed3655(core.List<api.StandardSqlField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardSqlField(o[0]);
  checkStandardSqlField(o[1]);
}

buildUnnamed3656() {
  var o = new core.List<api.StandardSqlField>();
  o.add(buildStandardSqlField());
  o.add(buildStandardSqlField());
  return o;
}

checkUnnamed3656(core.List<api.StandardSqlField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardSqlField(o[0]);
  checkStandardSqlField(o[1]);
}

buildUnnamed3657() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3657(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3658() {
  var o = new core.List<api.TrainingRun>();
  o.add(buildTrainingRun());
  o.add(buildTrainingRun());
  return o;
}

checkUnnamed3658(core.List<api.TrainingRun> o) {
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
    o.encryptionConfiguration = buildEncryptionConfiguration();
    o.etag = "foo";
    o.expirationTime = "foo";
    o.featureColumns = buildUnnamed3655();
    o.friendlyName = "foo";
    o.labelColumns = buildUnnamed3656();
    o.labels = buildUnnamed3657();
    o.lastModifiedTime = "foo";
    o.location = "foo";
    o.modelReference = buildModelReference();
    o.modelType = "foo";
    o.trainingRuns = buildUnnamed3658();
  }
  buildCounterModel--;
  return o;
}

checkModel(api.Model o) {
  buildCounterModel++;
  if (buildCounterModel < 3) {
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkEncryptionConfiguration(o.encryptionConfiguration);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.expirationTime, unittest.equals('foo'));
    checkUnnamed3655(o.featureColumns);
    unittest.expect(o.friendlyName, unittest.equals('foo'));
    checkUnnamed3656(o.labelColumns);
    checkUnnamed3657(o.labels);
    unittest.expect(o.lastModifiedTime, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    checkModelReference(o.modelReference);
    unittest.expect(o.modelType, unittest.equals('foo'));
    checkUnnamed3658(o.trainingRuns);
  }
  buildCounterModel--;
}

buildUnnamed3659() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3659(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModelDefinitionModelOptions = 0;
buildModelDefinitionModelOptions() {
  var o = new api.ModelDefinitionModelOptions();
  buildCounterModelDefinitionModelOptions++;
  if (buildCounterModelDefinitionModelOptions < 3) {
    o.labels = buildUnnamed3659();
    o.lossType = "foo";
    o.modelType = "foo";
  }
  buildCounterModelDefinitionModelOptions--;
  return o;
}

checkModelDefinitionModelOptions(api.ModelDefinitionModelOptions o) {
  buildCounterModelDefinitionModelOptions++;
  if (buildCounterModelDefinitionModelOptions < 3) {
    checkUnnamed3659(o.labels);
    unittest.expect(o.lossType, unittest.equals('foo'));
    unittest.expect(o.modelType, unittest.equals('foo'));
  }
  buildCounterModelDefinitionModelOptions--;
}

buildUnnamed3660() {
  var o = new core.List<api.BqmlTrainingRun>();
  o.add(buildBqmlTrainingRun());
  o.add(buildBqmlTrainingRun());
  return o;
}

checkUnnamed3660(core.List<api.BqmlTrainingRun> o) {
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
    o.trainingRuns = buildUnnamed3660();
  }
  buildCounterModelDefinition--;
  return o;
}

checkModelDefinition(api.ModelDefinition o) {
  buildCounterModelDefinition++;
  if (buildCounterModelDefinition < 3) {
    checkModelDefinitionModelOptions(o.modelOptions);
    checkUnnamed3660(o.trainingRuns);
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

buildUnnamed3661() {
  var o = new core.List<api.ConfusionMatrix>();
  o.add(buildConfusionMatrix());
  o.add(buildConfusionMatrix());
  return o;
}

checkUnnamed3661(core.List<api.ConfusionMatrix> o) {
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
    o.confusionMatrixList = buildUnnamed3661();
  }
  buildCounterMultiClassClassificationMetrics--;
  return o;
}

checkMultiClassClassificationMetrics(api.MultiClassClassificationMetrics o) {
  buildCounterMultiClassClassificationMetrics++;
  if (buildCounterMultiClassClassificationMetrics < 3) {
    checkAggregateClassificationMetrics(o.aggregateClassificationMetrics);
    checkUnnamed3661(o.confusionMatrixList);
  }
  buildCounterMultiClassClassificationMetrics--;
}

buildUnnamed3662() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed3662(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed3663() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed3663(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed3662();
    o.bindings = buildUnnamed3663();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed3662(o.auditConfigs);
    checkUnnamed3663(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
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

buildUnnamed3664() {
  var o = new core.List<api.ProjectListProjects>();
  o.add(buildProjectListProjects());
  o.add(buildProjectListProjects());
  return o;
}

checkUnnamed3664(core.List<api.ProjectListProjects> o) {
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
    o.projects = buildUnnamed3664();
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
    checkUnnamed3664(o.projects);
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

buildUnnamed3665() {
  var o = new core.List<api.QueryParameterTypeStructTypes>();
  o.add(buildQueryParameterTypeStructTypes());
  o.add(buildQueryParameterTypeStructTypes());
  return o;
}

checkUnnamed3665(core.List<api.QueryParameterTypeStructTypes> o) {
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
    o.structTypes = buildUnnamed3665();
    o.type = "foo";
  }
  buildCounterQueryParameterType--;
  return o;
}

checkQueryParameterType(api.QueryParameterType o) {
  buildCounterQueryParameterType++;
  if (buildCounterQueryParameterType < 3) {
    checkQueryParameterType(o.arrayType);
    checkUnnamed3665(o.structTypes);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterQueryParameterType--;
}

buildUnnamed3666() {
  var o = new core.List<api.QueryParameterValue>();
  o.add(buildQueryParameterValue());
  o.add(buildQueryParameterValue());
  return o;
}

checkUnnamed3666(core.List<api.QueryParameterValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameterValue(o[0]);
  checkQueryParameterValue(o[1]);
}

buildUnnamed3667() {
  var o = new core.Map<core.String, api.QueryParameterValue>();
  o["x"] = buildQueryParameterValue();
  o["y"] = buildQueryParameterValue();
  return o;
}

checkUnnamed3667(core.Map<core.String, api.QueryParameterValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameterValue(o["x"]);
  checkQueryParameterValue(o["y"]);
}

core.int buildCounterQueryParameterValue = 0;
buildQueryParameterValue() {
  var o = new api.QueryParameterValue();
  buildCounterQueryParameterValue++;
  if (buildCounterQueryParameterValue < 3) {
    o.arrayValues = buildUnnamed3666();
    o.structValues = buildUnnamed3667();
    o.value = "foo";
  }
  buildCounterQueryParameterValue--;
  return o;
}

checkQueryParameterValue(api.QueryParameterValue o) {
  buildCounterQueryParameterValue++;
  if (buildCounterQueryParameterValue < 3) {
    checkUnnamed3666(o.arrayValues);
    checkUnnamed3667(o.structValues);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterQueryParameterValue--;
}

buildUnnamed3668() {
  var o = new core.List<api.ConnectionProperty>();
  o.add(buildConnectionProperty());
  o.add(buildConnectionProperty());
  return o;
}

checkUnnamed3668(core.List<api.ConnectionProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionProperty(o[0]);
  checkConnectionProperty(o[1]);
}

buildUnnamed3669() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3669(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3670() {
  var o = new core.List<api.QueryParameter>();
  o.add(buildQueryParameter());
  o.add(buildQueryParameter());
  return o;
}

checkUnnamed3670(core.List<api.QueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameter(o[0]);
  checkQueryParameter(o[1]);
}

core.int buildCounterQueryRequest = 0;
buildQueryRequest() {
  var o = new api.QueryRequest();
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    o.connectionProperties = buildUnnamed3668();
    o.defaultDataset = buildDatasetReference();
    o.dryRun = true;
    o.kind = "foo";
    o.labels = buildUnnamed3669();
    o.location = "foo";
    o.maxResults = 42;
    o.maximumBytesBilled = "foo";
    o.parameterMode = "foo";
    o.preserveNulls = true;
    o.query = "foo";
    o.queryParameters = buildUnnamed3670();
    o.requestId = "foo";
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
    checkUnnamed3668(o.connectionProperties);
    checkDatasetReference(o.defaultDataset);
    unittest.expect(o.dryRun, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3669(o.labels);
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.maxResults, unittest.equals(42));
    unittest.expect(o.maximumBytesBilled, unittest.equals('foo'));
    unittest.expect(o.parameterMode, unittest.equals('foo'));
    unittest.expect(o.preserveNulls, unittest.isTrue);
    unittest.expect(o.query, unittest.equals('foo'));
    checkUnnamed3670(o.queryParameters);
    unittest.expect(o.requestId, unittest.equals('foo'));
    unittest.expect(o.timeoutMs, unittest.equals(42));
    unittest.expect(o.useLegacySql, unittest.isTrue);
    unittest.expect(o.useQueryCache, unittest.isTrue);
  }
  buildCounterQueryRequest--;
}

buildUnnamed3671() {
  var o = new core.List<api.ErrorProto>();
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

checkUnnamed3671(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

buildUnnamed3672() {
  var o = new core.List<api.TableRow>();
  o.add(buildTableRow());
  o.add(buildTableRow());
  return o;
}

checkUnnamed3672(core.List<api.TableRow> o) {
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
    o.errors = buildUnnamed3671();
    o.jobComplete = true;
    o.jobReference = buildJobReference();
    o.kind = "foo";
    o.numDmlAffectedRows = "foo";
    o.pageToken = "foo";
    o.rows = buildUnnamed3672();
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
    checkUnnamed3671(o.errors);
    unittest.expect(o.jobComplete, unittest.isTrue);
    checkJobReference(o.jobReference);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.numDmlAffectedRows, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkUnnamed3672(o.rows);
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

core.int buildCounterRankingMetrics = 0;
buildRankingMetrics() {
  var o = new api.RankingMetrics();
  buildCounterRankingMetrics++;
  if (buildCounterRankingMetrics < 3) {
    o.averageRank = 42.0;
    o.meanAveragePrecision = 42.0;
    o.meanSquaredError = 42.0;
    o.normalizedDiscountedCumulativeGain = 42.0;
  }
  buildCounterRankingMetrics--;
  return o;
}

checkRankingMetrics(api.RankingMetrics o) {
  buildCounterRankingMetrics++;
  if (buildCounterRankingMetrics < 3) {
    unittest.expect(o.averageRank, unittest.equals(42.0));
    unittest.expect(o.meanAveragePrecision, unittest.equals(42.0));
    unittest.expect(o.meanSquaredError, unittest.equals(42.0));
    unittest.expect(
        o.normalizedDiscountedCumulativeGain, unittest.equals(42.0));
  }
  buildCounterRankingMetrics--;
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

buildUnnamed3673() {
  var o = new core.List<api.Argument>();
  o.add(buildArgument());
  o.add(buildArgument());
  return o;
}

checkUnnamed3673(core.List<api.Argument> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArgument(o[0]);
  checkArgument(o[1]);
}

buildUnnamed3674() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3674(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRoutine = 0;
buildRoutine() {
  var o = new api.Routine();
  buildCounterRoutine++;
  if (buildCounterRoutine < 3) {
    o.arguments = buildUnnamed3673();
    o.creationTime = "foo";
    o.definitionBody = "foo";
    o.description = "foo";
    o.determinismLevel = "foo";
    o.etag = "foo";
    o.importedLibraries = buildUnnamed3674();
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
    checkUnnamed3673(o.arguments);
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.definitionBody, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.determinismLevel, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed3674(o.importedLibraries);
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

buildUnnamed3675() {
  var o = new core.List<api.Entry>();
  o.add(buildEntry());
  o.add(buildEntry());
  return o;
}

checkUnnamed3675(core.List<api.Entry> o) {
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
    o.entries = buildUnnamed3675();
  }
  buildCounterRow--;
  return o;
}

checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    unittest.expect(o.actualLabel, unittest.equals('foo'));
    checkUnnamed3675(o.entries);
  }
  buildCounterRow--;
}

core.int buildCounterRowAccessPolicyReference = 0;
buildRowAccessPolicyReference() {
  var o = new api.RowAccessPolicyReference();
  buildCounterRowAccessPolicyReference++;
  if (buildCounterRowAccessPolicyReference < 3) {
    o.datasetId = "foo";
    o.policyId = "foo";
    o.projectId = "foo";
    o.tableId = "foo";
  }
  buildCounterRowAccessPolicyReference--;
  return o;
}

checkRowAccessPolicyReference(api.RowAccessPolicyReference o) {
  buildCounterRowAccessPolicyReference++;
  if (buildCounterRowAccessPolicyReference < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.policyId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.tableId, unittest.equals('foo'));
  }
  buildCounterRowAccessPolicyReference--;
}

core.int buildCounterRowLevelSecurityStatistics = 0;
buildRowLevelSecurityStatistics() {
  var o = new api.RowLevelSecurityStatistics();
  buildCounterRowLevelSecurityStatistics++;
  if (buildCounterRowLevelSecurityStatistics < 3) {
    o.rowLevelSecurityApplied = true;
  }
  buildCounterRowLevelSecurityStatistics--;
  return o;
}

checkRowLevelSecurityStatistics(api.RowLevelSecurityStatistics o) {
  buildCounterRowLevelSecurityStatistics++;
  if (buildCounterRowLevelSecurityStatistics < 3) {
    unittest.expect(o.rowLevelSecurityApplied, unittest.isTrue);
  }
  buildCounterRowLevelSecurityStatistics--;
}

core.int buildCounterScriptStackFrame = 0;
buildScriptStackFrame() {
  var o = new api.ScriptStackFrame();
  buildCounterScriptStackFrame++;
  if (buildCounterScriptStackFrame < 3) {
    o.endColumn = 42;
    o.endLine = 42;
    o.procedureId = "foo";
    o.startColumn = 42;
    o.startLine = 42;
    o.text = "foo";
  }
  buildCounterScriptStackFrame--;
  return o;
}

checkScriptStackFrame(api.ScriptStackFrame o) {
  buildCounterScriptStackFrame++;
  if (buildCounterScriptStackFrame < 3) {
    unittest.expect(o.endColumn, unittest.equals(42));
    unittest.expect(o.endLine, unittest.equals(42));
    unittest.expect(o.procedureId, unittest.equals('foo'));
    unittest.expect(o.startColumn, unittest.equals(42));
    unittest.expect(o.startLine, unittest.equals(42));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterScriptStackFrame--;
}

buildUnnamed3676() {
  var o = new core.List<api.ScriptStackFrame>();
  o.add(buildScriptStackFrame());
  o.add(buildScriptStackFrame());
  return o;
}

checkUnnamed3676(core.List<api.ScriptStackFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScriptStackFrame(o[0]);
  checkScriptStackFrame(o[1]);
}

core.int buildCounterScriptStatistics = 0;
buildScriptStatistics() {
  var o = new api.ScriptStatistics();
  buildCounterScriptStatistics++;
  if (buildCounterScriptStatistics < 3) {
    o.evaluationKind = "foo";
    o.stackFrames = buildUnnamed3676();
  }
  buildCounterScriptStatistics--;
  return o;
}

checkScriptStatistics(api.ScriptStatistics o) {
  buildCounterScriptStatistics++;
  if (buildCounterScriptStatistics < 3) {
    unittest.expect(o.evaluationKind, unittest.equals('foo'));
    checkUnnamed3676(o.stackFrames);
  }
  buildCounterScriptStatistics--;
}

core.int buildCounterSetIamPolicyRequest = 0;
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = "foo";
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSnapshotDefinition = 0;
buildSnapshotDefinition() {
  var o = new api.SnapshotDefinition();
  buildCounterSnapshotDefinition++;
  if (buildCounterSnapshotDefinition < 3) {
    o.baseTableReference = buildTableReference();
    o.snapshotTime = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterSnapshotDefinition--;
  return o;
}

checkSnapshotDefinition(api.SnapshotDefinition o) {
  buildCounterSnapshotDefinition++;
  if (buildCounterSnapshotDefinition < 3) {
    checkTableReference(o.baseTableReference);
    unittest.expect(o.snapshotTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterSnapshotDefinition--;
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

buildUnnamed3677() {
  var o = new core.List<api.StandardSqlField>();
  o.add(buildStandardSqlField());
  o.add(buildStandardSqlField());
  return o;
}

checkUnnamed3677(core.List<api.StandardSqlField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardSqlField(o[0]);
  checkStandardSqlField(o[1]);
}

core.int buildCounterStandardSqlStructType = 0;
buildStandardSqlStructType() {
  var o = new api.StandardSqlStructType();
  buildCounterStandardSqlStructType++;
  if (buildCounterStandardSqlStructType < 3) {
    o.fields = buildUnnamed3677();
  }
  buildCounterStandardSqlStructType--;
  return o;
}

checkStandardSqlStructType(api.StandardSqlStructType o) {
  buildCounterStandardSqlStructType++;
  if (buildCounterStandardSqlStructType < 3) {
    checkUnnamed3677(o.fields);
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

buildUnnamed3678() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3678(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed3678();
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
    o.snapshotDefinition = buildSnapshotDefinition();
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
    checkUnnamed3678(o.labels);
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
    checkSnapshotDefinition(o.snapshotDefinition);
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
    var casted4 = (o.v) as core.Map;
    unittest.expect(casted4, unittest.hasLength(3));
    unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted4["bool"], unittest.equals(true));
    unittest.expect(casted4["string"], unittest.equals('foo'));
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

buildUnnamed3679() {
  var o = new core.List<api.TableDataInsertAllRequestRows>();
  o.add(buildTableDataInsertAllRequestRows());
  o.add(buildTableDataInsertAllRequestRows());
  return o;
}

checkUnnamed3679(core.List<api.TableDataInsertAllRequestRows> o) {
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
    o.rows = buildUnnamed3679();
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
    checkUnnamed3679(o.rows);
    unittest.expect(o.skipInvalidRows, unittest.isTrue);
    unittest.expect(o.templateSuffix, unittest.equals('foo'));
  }
  buildCounterTableDataInsertAllRequest--;
}

buildUnnamed3680() {
  var o = new core.List<api.ErrorProto>();
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

checkUnnamed3680(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

core.int buildCounterTableDataInsertAllResponseInsertErrors = 0;
buildTableDataInsertAllResponseInsertErrors() {
  var o = new api.TableDataInsertAllResponseInsertErrors();
  buildCounterTableDataInsertAllResponseInsertErrors++;
  if (buildCounterTableDataInsertAllResponseInsertErrors < 3) {
    o.errors = buildUnnamed3680();
    o.index = 42;
  }
  buildCounterTableDataInsertAllResponseInsertErrors--;
  return o;
}

checkTableDataInsertAllResponseInsertErrors(
    api.TableDataInsertAllResponseInsertErrors o) {
  buildCounterTableDataInsertAllResponseInsertErrors++;
  if (buildCounterTableDataInsertAllResponseInsertErrors < 3) {
    checkUnnamed3680(o.errors);
    unittest.expect(o.index, unittest.equals(42));
  }
  buildCounterTableDataInsertAllResponseInsertErrors--;
}

buildUnnamed3681() {
  var o = new core.List<api.TableDataInsertAllResponseInsertErrors>();
  o.add(buildTableDataInsertAllResponseInsertErrors());
  o.add(buildTableDataInsertAllResponseInsertErrors());
  return o;
}

checkUnnamed3681(core.List<api.TableDataInsertAllResponseInsertErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableDataInsertAllResponseInsertErrors(o[0]);
  checkTableDataInsertAllResponseInsertErrors(o[1]);
}

core.int buildCounterTableDataInsertAllResponse = 0;
buildTableDataInsertAllResponse() {
  var o = new api.TableDataInsertAllResponse();
  buildCounterTableDataInsertAllResponse++;
  if (buildCounterTableDataInsertAllResponse < 3) {
    o.insertErrors = buildUnnamed3681();
    o.kind = "foo";
  }
  buildCounterTableDataInsertAllResponse--;
  return o;
}

checkTableDataInsertAllResponse(api.TableDataInsertAllResponse o) {
  buildCounterTableDataInsertAllResponse++;
  if (buildCounterTableDataInsertAllResponse < 3) {
    checkUnnamed3681(o.insertErrors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterTableDataInsertAllResponse--;
}

buildUnnamed3682() {
  var o = new core.List<api.TableRow>();
  o.add(buildTableRow());
  o.add(buildTableRow());
  return o;
}

checkUnnamed3682(core.List<api.TableRow> o) {
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
    o.rows = buildUnnamed3682();
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
    checkUnnamed3682(o.rows);
    unittest.expect(o.totalRows, unittest.equals('foo'));
  }
  buildCounterTableDataList--;
}

buildUnnamed3683() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3683(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTableFieldSchemaCategories = 0;
buildTableFieldSchemaCategories() {
  var o = new api.TableFieldSchemaCategories();
  buildCounterTableFieldSchemaCategories++;
  if (buildCounterTableFieldSchemaCategories < 3) {
    o.names = buildUnnamed3683();
  }
  buildCounterTableFieldSchemaCategories--;
  return o;
}

checkTableFieldSchemaCategories(api.TableFieldSchemaCategories o) {
  buildCounterTableFieldSchemaCategories++;
  if (buildCounterTableFieldSchemaCategories < 3) {
    checkUnnamed3683(o.names);
  }
  buildCounterTableFieldSchemaCategories--;
}

buildUnnamed3684() {
  var o = new core.List<api.TableFieldSchema>();
  o.add(buildTableFieldSchema());
  o.add(buildTableFieldSchema());
  return o;
}

checkUnnamed3684(core.List<api.TableFieldSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableFieldSchema(o[0]);
  checkTableFieldSchema(o[1]);
}

buildUnnamed3685() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3685(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTableFieldSchemaPolicyTags = 0;
buildTableFieldSchemaPolicyTags() {
  var o = new api.TableFieldSchemaPolicyTags();
  buildCounterTableFieldSchemaPolicyTags++;
  if (buildCounterTableFieldSchemaPolicyTags < 3) {
    o.names = buildUnnamed3685();
  }
  buildCounterTableFieldSchemaPolicyTags--;
  return o;
}

checkTableFieldSchemaPolicyTags(api.TableFieldSchemaPolicyTags o) {
  buildCounterTableFieldSchemaPolicyTags++;
  if (buildCounterTableFieldSchemaPolicyTags < 3) {
    checkUnnamed3685(o.names);
  }
  buildCounterTableFieldSchemaPolicyTags--;
}

core.int buildCounterTableFieldSchema = 0;
buildTableFieldSchema() {
  var o = new api.TableFieldSchema();
  buildCounterTableFieldSchema++;
  if (buildCounterTableFieldSchema < 3) {
    o.categories = buildTableFieldSchemaCategories();
    o.description = "foo";
    o.fields = buildUnnamed3684();
    o.mode = "foo";
    o.name = "foo";
    o.policyTags = buildTableFieldSchemaPolicyTags();
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
    checkUnnamed3684(o.fields);
    unittest.expect(o.mode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkTableFieldSchemaPolicyTags(o.policyTags);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterTableFieldSchema--;
}

buildUnnamed3686() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3686(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed3686();
    o.rangePartitioning = buildRangePartitioning();
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
    checkUnnamed3686(o.labels);
    checkRangePartitioning(o.rangePartitioning);
    checkTableReference(o.tableReference);
    checkTimePartitioning(o.timePartitioning);
    unittest.expect(o.type, unittest.equals('foo'));
    checkTableListTablesView(o.view);
  }
  buildCounterTableListTables--;
}

buildUnnamed3687() {
  var o = new core.List<api.TableListTables>();
  o.add(buildTableListTables());
  o.add(buildTableListTables());
  return o;
}

checkUnnamed3687(core.List<api.TableListTables> o) {
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
    o.tables = buildUnnamed3687();
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
    checkUnnamed3687(o.tables);
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

buildUnnamed3688() {
  var o = new core.List<api.TableCell>();
  o.add(buildTableCell());
  o.add(buildTableCell());
  return o;
}

checkUnnamed3688(core.List<api.TableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableCell(o[0]);
  checkTableCell(o[1]);
}

core.int buildCounterTableRow = 0;
buildTableRow() {
  var o = new api.TableRow();
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    o.f = buildUnnamed3688();
  }
  buildCounterTableRow--;
  return o;
}

checkTableRow(api.TableRow o) {
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    checkUnnamed3688(o.f);
  }
  buildCounterTableRow--;
}

buildUnnamed3689() {
  var o = new core.List<api.TableFieldSchema>();
  o.add(buildTableFieldSchema());
  o.add(buildTableFieldSchema());
  return o;
}

checkUnnamed3689(core.List<api.TableFieldSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableFieldSchema(o[0]);
  checkTableFieldSchema(o[1]);
}

core.int buildCounterTableSchema = 0;
buildTableSchema() {
  var o = new api.TableSchema();
  buildCounterTableSchema++;
  if (buildCounterTableSchema < 3) {
    o.fields = buildUnnamed3689();
  }
  buildCounterTableSchema--;
  return o;
}

checkTableSchema(api.TableSchema o) {
  buildCounterTableSchema++;
  if (buildCounterTableSchema < 3) {
    checkUnnamed3689(o.fields);
  }
  buildCounterTableSchema--;
}

buildUnnamed3690() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3690(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed3690();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed3690(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed3691() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3691(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed3691();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed3691(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
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

buildUnnamed3692() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3692(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3693() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3693(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3694() {
  var o = new core.Map<core.String, core.double>();
  o["x"] = 42.0;
  o["y"] = 42.0;
  return o;
}

checkUnnamed3694(core.Map<core.String, core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42.0));
  unittest.expect(o["y"], unittest.equals(42.0));
}

core.int buildCounterTrainingOptions = 0;
buildTrainingOptions() {
  var o = new api.TrainingOptions();
  buildCounterTrainingOptions++;
  if (buildCounterTrainingOptions < 3) {
    o.autoArima = true;
    o.autoArimaMaxOrder = "foo";
    o.batchSize = "foo";
    o.dataFrequency = "foo";
    o.dataSplitColumn = "foo";
    o.dataSplitEvalFraction = 42.0;
    o.dataSplitMethod = "foo";
    o.distanceType = "foo";
    o.dropout = 42.0;
    o.earlyStop = true;
    o.feedbackType = "foo";
    o.hiddenUnits = buildUnnamed3692();
    o.holidayRegion = "foo";
    o.horizon = "foo";
    o.includeDrift = true;
    o.initialLearnRate = 42.0;
    o.inputLabelColumns = buildUnnamed3693();
    o.itemColumn = "foo";
    o.kmeansInitializationColumn = "foo";
    o.kmeansInitializationMethod = "foo";
    o.l1Regularization = 42.0;
    o.l2Regularization = 42.0;
    o.labelClassWeights = buildUnnamed3694();
    o.learnRate = 42.0;
    o.learnRateStrategy = "foo";
    o.lossType = "foo";
    o.maxIterations = "foo";
    o.maxTreeDepth = "foo";
    o.minRelativeProgress = 42.0;
    o.minSplitLoss = 42.0;
    o.modelUri = "foo";
    o.nonSeasonalOrder = buildArimaOrder();
    o.numClusters = "foo";
    o.numFactors = "foo";
    o.optimizationStrategy = "foo";
    o.preserveInputStructs = true;
    o.subsample = 42.0;
    o.timeSeriesDataColumn = "foo";
    o.timeSeriesIdColumn = "foo";
    o.timeSeriesTimestampColumn = "foo";
    o.userColumn = "foo";
    o.walsAlpha = 42.0;
    o.warmStart = true;
  }
  buildCounterTrainingOptions--;
  return o;
}

checkTrainingOptions(api.TrainingOptions o) {
  buildCounterTrainingOptions++;
  if (buildCounterTrainingOptions < 3) {
    unittest.expect(o.autoArima, unittest.isTrue);
    unittest.expect(o.autoArimaMaxOrder, unittest.equals('foo'));
    unittest.expect(o.batchSize, unittest.equals('foo'));
    unittest.expect(o.dataFrequency, unittest.equals('foo'));
    unittest.expect(o.dataSplitColumn, unittest.equals('foo'));
    unittest.expect(o.dataSplitEvalFraction, unittest.equals(42.0));
    unittest.expect(o.dataSplitMethod, unittest.equals('foo'));
    unittest.expect(o.distanceType, unittest.equals('foo'));
    unittest.expect(o.dropout, unittest.equals(42.0));
    unittest.expect(o.earlyStop, unittest.isTrue);
    unittest.expect(o.feedbackType, unittest.equals('foo'));
    checkUnnamed3692(o.hiddenUnits);
    unittest.expect(o.holidayRegion, unittest.equals('foo'));
    unittest.expect(o.horizon, unittest.equals('foo'));
    unittest.expect(o.includeDrift, unittest.isTrue);
    unittest.expect(o.initialLearnRate, unittest.equals(42.0));
    checkUnnamed3693(o.inputLabelColumns);
    unittest.expect(o.itemColumn, unittest.equals('foo'));
    unittest.expect(o.kmeansInitializationColumn, unittest.equals('foo'));
    unittest.expect(o.kmeansInitializationMethod, unittest.equals('foo'));
    unittest.expect(o.l1Regularization, unittest.equals(42.0));
    unittest.expect(o.l2Regularization, unittest.equals(42.0));
    checkUnnamed3694(o.labelClassWeights);
    unittest.expect(o.learnRate, unittest.equals(42.0));
    unittest.expect(o.learnRateStrategy, unittest.equals('foo'));
    unittest.expect(o.lossType, unittest.equals('foo'));
    unittest.expect(o.maxIterations, unittest.equals('foo'));
    unittest.expect(o.maxTreeDepth, unittest.equals('foo'));
    unittest.expect(o.minRelativeProgress, unittest.equals(42.0));
    unittest.expect(o.minSplitLoss, unittest.equals(42.0));
    unittest.expect(o.modelUri, unittest.equals('foo'));
    checkArimaOrder(o.nonSeasonalOrder);
    unittest.expect(o.numClusters, unittest.equals('foo'));
    unittest.expect(o.numFactors, unittest.equals('foo'));
    unittest.expect(o.optimizationStrategy, unittest.equals('foo'));
    unittest.expect(o.preserveInputStructs, unittest.isTrue);
    unittest.expect(o.subsample, unittest.equals(42.0));
    unittest.expect(o.timeSeriesDataColumn, unittest.equals('foo'));
    unittest.expect(o.timeSeriesIdColumn, unittest.equals('foo'));
    unittest.expect(o.timeSeriesTimestampColumn, unittest.equals('foo'));
    unittest.expect(o.userColumn, unittest.equals('foo'));
    unittest.expect(o.walsAlpha, unittest.equals(42.0));
    unittest.expect(o.warmStart, unittest.isTrue);
  }
  buildCounterTrainingOptions--;
}

buildUnnamed3695() {
  var o = new core.List<api.IterationResult>();
  o.add(buildIterationResult());
  o.add(buildIterationResult());
  return o;
}

checkUnnamed3695(core.List<api.IterationResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIterationResult(o[0]);
  checkIterationResult(o[1]);
}

core.int buildCounterTrainingRun = 0;
buildTrainingRun() {
  var o = new api.TrainingRun();
  buildCounterTrainingRun++;
  if (buildCounterTrainingRun < 3) {
    o.dataSplitResult = buildDataSplitResult();
    o.evaluationMetrics = buildEvaluationMetrics();
    o.results = buildUnnamed3695();
    o.startTime = "foo";
    o.trainingOptions = buildTrainingOptions();
  }
  buildCounterTrainingRun--;
  return o;
}

checkTrainingRun(api.TrainingRun o) {
  buildCounterTrainingRun++;
  if (buildCounterTrainingRun < 3) {
    checkDataSplitResult(o.dataSplitResult);
    checkEvaluationMetrics(o.evaluationMetrics);
    checkUnnamed3695(o.results);
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkTrainingOptions(o.trainingOptions);
  }
  buildCounterTrainingRun--;
}

core.int buildCounterTransactionInfo = 0;
buildTransactionInfo() {
  var o = new api.TransactionInfo();
  buildCounterTransactionInfo++;
  if (buildCounterTransactionInfo < 3) {
    o.transactionId = "foo";
  }
  buildCounterTransactionInfo--;
  return o;
}

checkTransactionInfo(api.TransactionInfo o) {
  buildCounterTransactionInfo++;
  if (buildCounterTransactionInfo < 3) {
    unittest.expect(o.transactionId, unittest.equals('foo'));
  }
  buildCounterTransactionInfo--;
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

buildUnnamed3696() {
  var o = new core.List<api.UserDefinedFunctionResource>();
  o.add(buildUserDefinedFunctionResource());
  o.add(buildUserDefinedFunctionResource());
  return o;
}

checkUnnamed3696(core.List<api.UserDefinedFunctionResource> o) {
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
    o.userDefinedFunctionResources = buildUnnamed3696();
  }
  buildCounterViewDefinition--;
  return o;
}

checkViewDefinition(api.ViewDefinition o) {
  buildCounterViewDefinition++;
  if (buildCounterViewDefinition < 3) {
    unittest.expect(o.query, unittest.equals('foo'));
    unittest.expect(o.useLegacySql, unittest.isTrue);
    checkUnnamed3696(o.userDefinedFunctionResources);
  }
  buildCounterViewDefinition--;
}

buildUnnamed3697() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3697(core.List<core.String> o) {
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

  unittest.group("obj-schema-ArimaCoefficients", () {
    unittest.test("to-json--from-json", () {
      var o = buildArimaCoefficients();
      var od = new api.ArimaCoefficients.fromJson(o.toJson());
      checkArimaCoefficients(od);
    });
  });

  unittest.group("obj-schema-ArimaFittingMetrics", () {
    unittest.test("to-json--from-json", () {
      var o = buildArimaFittingMetrics();
      var od = new api.ArimaFittingMetrics.fromJson(o.toJson());
      checkArimaFittingMetrics(od);
    });
  });

  unittest.group("obj-schema-ArimaForecastingMetrics", () {
    unittest.test("to-json--from-json", () {
      var o = buildArimaForecastingMetrics();
      var od = new api.ArimaForecastingMetrics.fromJson(o.toJson());
      checkArimaForecastingMetrics(od);
    });
  });

  unittest.group("obj-schema-ArimaModelInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildArimaModelInfo();
      var od = new api.ArimaModelInfo.fromJson(o.toJson());
      checkArimaModelInfo(od);
    });
  });

  unittest.group("obj-schema-ArimaOrder", () {
    unittest.test("to-json--from-json", () {
      var o = buildArimaOrder();
      var od = new api.ArimaOrder.fromJson(o.toJson());
      checkArimaOrder(od);
    });
  });

  unittest.group("obj-schema-ArimaResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildArimaResult();
      var od = new api.ArimaResult.fromJson(o.toJson());
      checkArimaResult(od);
    });
  });

  unittest.group("obj-schema-ArimaSingleModelForecastingMetrics", () {
    unittest.test("to-json--from-json", () {
      var o = buildArimaSingleModelForecastingMetrics();
      var od = new api.ArimaSingleModelForecastingMetrics.fromJson(o.toJson());
      checkArimaSingleModelForecastingMetrics(od);
    });
  });

  unittest.group("obj-schema-AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditConfig();
      var od = new api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });

  unittest.group("obj-schema-AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLogConfig();
      var od = new api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
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

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
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

  unittest.group("obj-schema-CategoricalValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildCategoricalValue();
      var od = new api.CategoricalValue.fromJson(o.toJson());
      checkCategoricalValue(od);
    });
  });

  unittest.group("obj-schema-CategoryCount", () {
    unittest.test("to-json--from-json", () {
      var o = buildCategoryCount();
      var od = new api.CategoryCount.fromJson(o.toJson());
      checkCategoryCount(od);
    });
  });

  unittest.group("obj-schema-Cluster", () {
    unittest.test("to-json--from-json", () {
      var o = buildCluster();
      var od = new api.Cluster.fromJson(o.toJson());
      checkCluster(od);
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

  unittest.group("obj-schema-ConnectionProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildConnectionProperty();
      var od = new api.ConnectionProperty.fromJson(o.toJson());
      checkConnectionProperty(od);
    });
  });

  unittest.group("obj-schema-CsvOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildCsvOptions();
      var od = new api.CsvOptions.fromJson(o.toJson());
      checkCsvOptions(od);
    });
  });

  unittest.group("obj-schema-DataSplitResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataSplitResult();
      var od = new api.DataSplitResult.fromJson(o.toJson());
      checkDataSplitResult(od);
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

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-ExternalDataConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildExternalDataConfiguration();
      var od = new api.ExternalDataConfiguration.fromJson(o.toJson());
      checkExternalDataConfiguration(od);
    });
  });

  unittest.group("obj-schema-FeatureValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildFeatureValue();
      var od = new api.FeatureValue.fromJson(o.toJson());
      checkFeatureValue(od);
    });
  });

  unittest.group("obj-schema-GetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetIamPolicyRequest();
      var od = new api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-GetPolicyOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetPolicyOptions();
      var od = new api.GetPolicyOptions.fromJson(o.toJson());
      checkGetPolicyOptions(od);
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

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
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

  unittest.group("obj-schema-RankingMetrics", () {
    unittest.test("to-json--from-json", () {
      var o = buildRankingMetrics();
      var od = new api.RankingMetrics.fromJson(o.toJson());
      checkRankingMetrics(od);
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

  unittest.group("obj-schema-RowAccessPolicyReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildRowAccessPolicyReference();
      var od = new api.RowAccessPolicyReference.fromJson(o.toJson());
      checkRowAccessPolicyReference(od);
    });
  });

  unittest.group("obj-schema-RowLevelSecurityStatistics", () {
    unittest.test("to-json--from-json", () {
      var o = buildRowLevelSecurityStatistics();
      var od = new api.RowLevelSecurityStatistics.fromJson(o.toJson());
      checkRowLevelSecurityStatistics(od);
    });
  });

  unittest.group("obj-schema-ScriptStackFrame", () {
    unittest.test("to-json--from-json", () {
      var o = buildScriptStackFrame();
      var od = new api.ScriptStackFrame.fromJson(o.toJson());
      checkScriptStackFrame(od);
    });
  });

  unittest.group("obj-schema-ScriptStatistics", () {
    unittest.test("to-json--from-json", () {
      var o = buildScriptStatistics();
      var od = new api.ScriptStatistics.fromJson(o.toJson());
      checkScriptStatistics(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-SnapshotDefinition", () {
    unittest.test("to-json--from-json", () {
      var o = buildSnapshotDefinition();
      var od = new api.SnapshotDefinition.fromJson(o.toJson());
      checkSnapshotDefinition(od);
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

  unittest.group("obj-schema-TableFieldSchemaPolicyTags", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableFieldSchemaPolicyTags();
      var od = new api.TableFieldSchemaPolicyTags.fromJson(o.toJson());
      checkTableFieldSchemaPolicyTags(od);
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

  unittest.group("obj-schema-TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsRequest();
      var od = new api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = new api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
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

  unittest.group("obj-schema-TransactionInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransactionInfo();
      var od = new api.TransactionInfo.fromJson(o.toJson());
      checkTransactionInfo(od);
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
      var arg_all = true;
      var arg_filter = "foo";
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
        unittest.expect(queryMap["all"].first, unittest.equals("$arg_all"));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatasetList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId,
              all: arg_all,
              filter: arg_filter,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
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
      var arg_maxResults = 42;
      var arg_startIndex = "foo";
      var arg_timeoutMs = 42;
      var arg_location = "foo";
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["startIndex"].first, unittest.equals(arg_startIndex));
        unittest.expect(core.int.parse(queryMap["timeoutMs"].first),
            unittest.equals(arg_timeoutMs));
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetQueryResultsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getQueryResults(arg_projectId, arg_jobId,
              maxResults: arg_maxResults,
              startIndex: arg_startIndex,
              timeoutMs: arg_timeoutMs,
              location: arg_location,
              pageToken: arg_pageToken,
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
      var arg_maxCreationTime = "foo";
      var arg_maxResults = 42;
      var arg_stateFilter = buildUnnamed3697();
      var arg_minCreationTime = "foo";
      var arg_parentJobId = "foo";
      var arg_projection = "foo";
      var arg_pageToken = "foo";
      var arg_allUsers = true;
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
        unittest.expect(queryMap["maxCreationTime"].first,
            unittest.equals(arg_maxCreationTime));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["stateFilter"], unittest.equals(arg_stateFilter));
        unittest.expect(queryMap["minCreationTime"].first,
            unittest.equals(arg_minCreationTime));
        unittest.expect(
            queryMap["parentJobId"].first, unittest.equals(arg_parentJobId));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["allUsers"].first, unittest.equals("$arg_allUsers"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJobList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId,
              maxCreationTime: arg_maxCreationTime,
              maxResults: arg_maxResults,
              stateFilter: arg_stateFilter,
              minCreationTime: arg_minCreationTime,
              parentJobId: arg_parentJobId,
              projection: arg_projection,
              pageToken: arg_pageToken,
              allUsers: arg_allUsers,
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
      var arg_readMask = "foo";
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
            queryMap["readMask"].first, unittest.equals(arg_readMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildRoutine());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_datasetId, arg_routineId,
              readMask: arg_readMask, $fields: arg_$fields)
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
      var arg_readMask = "foo";
      var arg_pageToken = "foo";
      var arg_maxResults = 42;
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
            queryMap["readMask"].first, unittest.equals(arg_readMask));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListRoutinesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_datasetId,
              readMask: arg_readMask,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              filter: arg_filter,
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

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.TablesResourceApi res = new api.BigqueryApi(mock).tables;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTableList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_datasetId,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
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

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.TablesResourceApi res = new api.BigqueryApi(mock).tables;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.TablesResourceApi res = new api.BigqueryApi(mock).tables;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
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
