// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/bigquery/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAggregateClassificationMetrics = 0;
api.AggregateClassificationMetrics buildAggregateClassificationMetrics() {
  final o = api.AggregateClassificationMetrics();
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

void checkAggregateClassificationMetrics(api.AggregateClassificationMetrics o) {
  buildCounterAggregateClassificationMetrics++;
  if (buildCounterAggregateClassificationMetrics < 3) {
    unittest.expect(
      o.accuracy!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.f1Score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.logLoss!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.precision!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.recall!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.rocAuc!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.threshold!,
      unittest.equals(42.0),
    );
  }
  buildCounterAggregateClassificationMetrics--;
}

core.int buildCounterArgument = 0;
api.Argument buildArgument() {
  final o = api.Argument();
  buildCounterArgument++;
  if (buildCounterArgument < 3) {
    o.argumentKind = 'foo';
    o.dataType = buildStandardSqlDataType();
    o.mode = 'foo';
    o.name = 'foo';
  }
  buildCounterArgument--;
  return o;
}

void checkArgument(api.Argument o) {
  buildCounterArgument++;
  if (buildCounterArgument < 3) {
    unittest.expect(
      o.argumentKind!,
      unittest.equals('foo'),
    );
    checkStandardSqlDataType(o.dataType!);
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterArgument--;
}

core.List<core.double> buildUnnamed0() => [
      42.0,
      42.0,
    ];

void checkUnnamed0(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed1() => [
      42.0,
      42.0,
    ];

void checkUnnamed1(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int buildCounterArimaCoefficients = 0;
api.ArimaCoefficients buildArimaCoefficients() {
  final o = api.ArimaCoefficients();
  buildCounterArimaCoefficients++;
  if (buildCounterArimaCoefficients < 3) {
    o.autoRegressiveCoefficients = buildUnnamed0();
    o.interceptCoefficient = 42.0;
    o.movingAverageCoefficients = buildUnnamed1();
  }
  buildCounterArimaCoefficients--;
  return o;
}

void checkArimaCoefficients(api.ArimaCoefficients o) {
  buildCounterArimaCoefficients++;
  if (buildCounterArimaCoefficients < 3) {
    checkUnnamed0(o.autoRegressiveCoefficients!);
    unittest.expect(
      o.interceptCoefficient!,
      unittest.equals(42.0),
    );
    checkUnnamed1(o.movingAverageCoefficients!);
  }
  buildCounterArimaCoefficients--;
}

core.int buildCounterArimaFittingMetrics = 0;
api.ArimaFittingMetrics buildArimaFittingMetrics() {
  final o = api.ArimaFittingMetrics();
  buildCounterArimaFittingMetrics++;
  if (buildCounterArimaFittingMetrics < 3) {
    o.aic = 42.0;
    o.logLikelihood = 42.0;
    o.variance = 42.0;
  }
  buildCounterArimaFittingMetrics--;
  return o;
}

void checkArimaFittingMetrics(api.ArimaFittingMetrics o) {
  buildCounterArimaFittingMetrics++;
  if (buildCounterArimaFittingMetrics < 3) {
    unittest.expect(
      o.aic!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.logLikelihood!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.variance!,
      unittest.equals(42.0),
    );
  }
  buildCounterArimaFittingMetrics--;
}

core.List<api.ArimaFittingMetrics> buildUnnamed2() => [
      buildArimaFittingMetrics(),
      buildArimaFittingMetrics(),
    ];

void checkUnnamed2(core.List<api.ArimaFittingMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArimaFittingMetrics(o[0]);
  checkArimaFittingMetrics(o[1]);
}

core.List<api.ArimaSingleModelForecastingMetrics> buildUnnamed3() => [
      buildArimaSingleModelForecastingMetrics(),
      buildArimaSingleModelForecastingMetrics(),
    ];

void checkUnnamed3(core.List<api.ArimaSingleModelForecastingMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArimaSingleModelForecastingMetrics(o[0]);
  checkArimaSingleModelForecastingMetrics(o[1]);
}

core.List<core.bool> buildUnnamed4() => [
      true,
      true,
    ];

void checkUnnamed4(core.List<core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.isTrue);
  unittest.expect(o[1], unittest.isTrue);
}

core.List<api.ArimaOrder> buildUnnamed5() => [
      buildArimaOrder(),
      buildArimaOrder(),
    ];

void checkUnnamed5(core.List<api.ArimaOrder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArimaOrder(o[0]);
  checkArimaOrder(o[1]);
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.int buildCounterArimaForecastingMetrics = 0;
api.ArimaForecastingMetrics buildArimaForecastingMetrics() {
  final o = api.ArimaForecastingMetrics();
  buildCounterArimaForecastingMetrics++;
  if (buildCounterArimaForecastingMetrics < 3) {
    o.arimaFittingMetrics = buildUnnamed2();
    o.arimaSingleModelForecastingMetrics = buildUnnamed3();
    o.hasDrift = buildUnnamed4();
    o.nonSeasonalOrder = buildUnnamed5();
    o.seasonalPeriods = buildUnnamed6();
    o.timeSeriesId = buildUnnamed7();
  }
  buildCounterArimaForecastingMetrics--;
  return o;
}

void checkArimaForecastingMetrics(api.ArimaForecastingMetrics o) {
  buildCounterArimaForecastingMetrics++;
  if (buildCounterArimaForecastingMetrics < 3) {
    checkUnnamed2(o.arimaFittingMetrics!);
    checkUnnamed3(o.arimaSingleModelForecastingMetrics!);
    checkUnnamed4(o.hasDrift!);
    checkUnnamed5(o.nonSeasonalOrder!);
    checkUnnamed6(o.seasonalPeriods!);
    checkUnnamed7(o.timeSeriesId!);
  }
  buildCounterArimaForecastingMetrics--;
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.int buildCounterArimaModelInfo = 0;
api.ArimaModelInfo buildArimaModelInfo() {
  final o = api.ArimaModelInfo();
  buildCounterArimaModelInfo++;
  if (buildCounterArimaModelInfo < 3) {
    o.arimaCoefficients = buildArimaCoefficients();
    o.arimaFittingMetrics = buildArimaFittingMetrics();
    o.hasDrift = true;
    o.hasHolidayEffect = true;
    o.hasSpikesAndDips = true;
    o.hasStepChanges = true;
    o.nonSeasonalOrder = buildArimaOrder();
    o.seasonalPeriods = buildUnnamed8();
    o.timeSeriesId = 'foo';
    o.timeSeriesIds = buildUnnamed9();
  }
  buildCounterArimaModelInfo--;
  return o;
}

void checkArimaModelInfo(api.ArimaModelInfo o) {
  buildCounterArimaModelInfo++;
  if (buildCounterArimaModelInfo < 3) {
    checkArimaCoefficients(o.arimaCoefficients!);
    checkArimaFittingMetrics(o.arimaFittingMetrics!);
    unittest.expect(o.hasDrift!, unittest.isTrue);
    unittest.expect(o.hasHolidayEffect!, unittest.isTrue);
    unittest.expect(o.hasSpikesAndDips!, unittest.isTrue);
    unittest.expect(o.hasStepChanges!, unittest.isTrue);
    checkArimaOrder(o.nonSeasonalOrder!);
    checkUnnamed8(o.seasonalPeriods!);
    unittest.expect(
      o.timeSeriesId!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.timeSeriesIds!);
  }
  buildCounterArimaModelInfo--;
}

core.int buildCounterArimaOrder = 0;
api.ArimaOrder buildArimaOrder() {
  final o = api.ArimaOrder();
  buildCounterArimaOrder++;
  if (buildCounterArimaOrder < 3) {
    o.d = 'foo';
    o.p = 'foo';
    o.q = 'foo';
  }
  buildCounterArimaOrder--;
  return o;
}

void checkArimaOrder(api.ArimaOrder o) {
  buildCounterArimaOrder++;
  if (buildCounterArimaOrder < 3) {
    unittest.expect(
      o.d!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.p!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.q!,
      unittest.equals('foo'),
    );
  }
  buildCounterArimaOrder--;
}

core.List<api.ArimaModelInfo> buildUnnamed10() => [
      buildArimaModelInfo(),
      buildArimaModelInfo(),
    ];

void checkUnnamed10(core.List<api.ArimaModelInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArimaModelInfo(o[0]);
  checkArimaModelInfo(o[1]);
}

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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

core.int buildCounterArimaResult = 0;
api.ArimaResult buildArimaResult() {
  final o = api.ArimaResult();
  buildCounterArimaResult++;
  if (buildCounterArimaResult < 3) {
    o.arimaModelInfo = buildUnnamed10();
    o.seasonalPeriods = buildUnnamed11();
  }
  buildCounterArimaResult--;
  return o;
}

void checkArimaResult(api.ArimaResult o) {
  buildCounterArimaResult++;
  if (buildCounterArimaResult < 3) {
    checkUnnamed10(o.arimaModelInfo!);
    checkUnnamed11(o.seasonalPeriods!);
  }
  buildCounterArimaResult--;
}

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.int buildCounterArimaSingleModelForecastingMetrics = 0;
api.ArimaSingleModelForecastingMetrics
    buildArimaSingleModelForecastingMetrics() {
  final o = api.ArimaSingleModelForecastingMetrics();
  buildCounterArimaSingleModelForecastingMetrics++;
  if (buildCounterArimaSingleModelForecastingMetrics < 3) {
    o.arimaFittingMetrics = buildArimaFittingMetrics();
    o.hasDrift = true;
    o.hasHolidayEffect = true;
    o.hasSpikesAndDips = true;
    o.hasStepChanges = true;
    o.nonSeasonalOrder = buildArimaOrder();
    o.seasonalPeriods = buildUnnamed12();
    o.timeSeriesId = 'foo';
    o.timeSeriesIds = buildUnnamed13();
  }
  buildCounterArimaSingleModelForecastingMetrics--;
  return o;
}

void checkArimaSingleModelForecastingMetrics(
    api.ArimaSingleModelForecastingMetrics o) {
  buildCounterArimaSingleModelForecastingMetrics++;
  if (buildCounterArimaSingleModelForecastingMetrics < 3) {
    checkArimaFittingMetrics(o.arimaFittingMetrics!);
    unittest.expect(o.hasDrift!, unittest.isTrue);
    unittest.expect(o.hasHolidayEffect!, unittest.isTrue);
    unittest.expect(o.hasSpikesAndDips!, unittest.isTrue);
    unittest.expect(o.hasStepChanges!, unittest.isTrue);
    checkArimaOrder(o.nonSeasonalOrder!);
    checkUnnamed12(o.seasonalPeriods!);
    unittest.expect(
      o.timeSeriesId!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.timeSeriesIds!);
  }
  buildCounterArimaSingleModelForecastingMetrics--;
}

core.List<api.AuditLogConfig> buildUnnamed14() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed14(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed14();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed14(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed15();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed15(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAvroOptions = 0;
api.AvroOptions buildAvroOptions() {
  final o = api.AvroOptions();
  buildCounterAvroOptions++;
  if (buildCounterAvroOptions < 3) {
    o.useAvroLogicalTypes = true;
  }
  buildCounterAvroOptions--;
  return o;
}

void checkAvroOptions(api.AvroOptions o) {
  buildCounterAvroOptions++;
  if (buildCounterAvroOptions < 3) {
    unittest.expect(o.useAvroLogicalTypes!, unittest.isTrue);
  }
  buildCounterAvroOptions--;
}

core.int buildCounterBiEngineReason = 0;
api.BiEngineReason buildBiEngineReason() {
  final o = api.BiEngineReason();
  buildCounterBiEngineReason++;
  if (buildCounterBiEngineReason < 3) {
    o.code = 'foo';
    o.message = 'foo';
  }
  buildCounterBiEngineReason--;
  return o;
}

void checkBiEngineReason(api.BiEngineReason o) {
  buildCounterBiEngineReason++;
  if (buildCounterBiEngineReason < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterBiEngineReason--;
}

core.List<api.BiEngineReason> buildUnnamed16() => [
      buildBiEngineReason(),
      buildBiEngineReason(),
    ];

void checkUnnamed16(core.List<api.BiEngineReason> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBiEngineReason(o[0]);
  checkBiEngineReason(o[1]);
}

core.int buildCounterBiEngineStatistics = 0;
api.BiEngineStatistics buildBiEngineStatistics() {
  final o = api.BiEngineStatistics();
  buildCounterBiEngineStatistics++;
  if (buildCounterBiEngineStatistics < 3) {
    o.biEngineMode = 'foo';
    o.biEngineReasons = buildUnnamed16();
  }
  buildCounterBiEngineStatistics--;
  return o;
}

void checkBiEngineStatistics(api.BiEngineStatistics o) {
  buildCounterBiEngineStatistics++;
  if (buildCounterBiEngineStatistics < 3) {
    unittest.expect(
      o.biEngineMode!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.biEngineReasons!);
  }
  buildCounterBiEngineStatistics--;
}

core.int buildCounterBigQueryModelTraining = 0;
api.BigQueryModelTraining buildBigQueryModelTraining() {
  final o = api.BigQueryModelTraining();
  buildCounterBigQueryModelTraining++;
  if (buildCounterBigQueryModelTraining < 3) {
    o.currentIteration = 42;
    o.expectedTotalIterations = 'foo';
  }
  buildCounterBigQueryModelTraining--;
  return o;
}

void checkBigQueryModelTraining(api.BigQueryModelTraining o) {
  buildCounterBigQueryModelTraining++;
  if (buildCounterBigQueryModelTraining < 3) {
    unittest.expect(
      o.currentIteration!,
      unittest.equals(42),
    );
    unittest.expect(
      o.expectedTotalIterations!,
      unittest.equals('foo'),
    );
  }
  buildCounterBigQueryModelTraining--;
}

core.int buildCounterBigtableColumn = 0;
api.BigtableColumn buildBigtableColumn() {
  final o = api.BigtableColumn();
  buildCounterBigtableColumn++;
  if (buildCounterBigtableColumn < 3) {
    o.encoding = 'foo';
    o.fieldName = 'foo';
    o.onlyReadLatest = true;
    o.qualifierEncoded = 'foo';
    o.qualifierString = 'foo';
    o.type = 'foo';
  }
  buildCounterBigtableColumn--;
  return o;
}

void checkBigtableColumn(api.BigtableColumn o) {
  buildCounterBigtableColumn++;
  if (buildCounterBigtableColumn < 3) {
    unittest.expect(
      o.encoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.onlyReadLatest!, unittest.isTrue);
    unittest.expect(
      o.qualifierEncoded!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.qualifierString!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterBigtableColumn--;
}

core.List<api.BigtableColumn> buildUnnamed17() => [
      buildBigtableColumn(),
      buildBigtableColumn(),
    ];

void checkUnnamed17(core.List<api.BigtableColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigtableColumn(o[0]);
  checkBigtableColumn(o[1]);
}

core.int buildCounterBigtableColumnFamily = 0;
api.BigtableColumnFamily buildBigtableColumnFamily() {
  final o = api.BigtableColumnFamily();
  buildCounterBigtableColumnFamily++;
  if (buildCounterBigtableColumnFamily < 3) {
    o.columns = buildUnnamed17();
    o.encoding = 'foo';
    o.familyId = 'foo';
    o.onlyReadLatest = true;
    o.type = 'foo';
  }
  buildCounterBigtableColumnFamily--;
  return o;
}

void checkBigtableColumnFamily(api.BigtableColumnFamily o) {
  buildCounterBigtableColumnFamily++;
  if (buildCounterBigtableColumnFamily < 3) {
    checkUnnamed17(o.columns!);
    unittest.expect(
      o.encoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.familyId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.onlyReadLatest!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterBigtableColumnFamily--;
}

core.List<api.BigtableColumnFamily> buildUnnamed18() => [
      buildBigtableColumnFamily(),
      buildBigtableColumnFamily(),
    ];

void checkUnnamed18(core.List<api.BigtableColumnFamily> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigtableColumnFamily(o[0]);
  checkBigtableColumnFamily(o[1]);
}

core.int buildCounterBigtableOptions = 0;
api.BigtableOptions buildBigtableOptions() {
  final o = api.BigtableOptions();
  buildCounterBigtableOptions++;
  if (buildCounterBigtableOptions < 3) {
    o.columnFamilies = buildUnnamed18();
    o.ignoreUnspecifiedColumnFamilies = true;
    o.readRowkeyAsString = true;
  }
  buildCounterBigtableOptions--;
  return o;
}

void checkBigtableOptions(api.BigtableOptions o) {
  buildCounterBigtableOptions++;
  if (buildCounterBigtableOptions < 3) {
    checkUnnamed18(o.columnFamilies!);
    unittest.expect(o.ignoreUnspecifiedColumnFamilies!, unittest.isTrue);
    unittest.expect(o.readRowkeyAsString!, unittest.isTrue);
  }
  buildCounterBigtableOptions--;
}

core.List<api.BinaryConfusionMatrix> buildUnnamed19() => [
      buildBinaryConfusionMatrix(),
      buildBinaryConfusionMatrix(),
    ];

void checkUnnamed19(core.List<api.BinaryConfusionMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinaryConfusionMatrix(o[0]);
  checkBinaryConfusionMatrix(o[1]);
}

core.int buildCounterBinaryClassificationMetrics = 0;
api.BinaryClassificationMetrics buildBinaryClassificationMetrics() {
  final o = api.BinaryClassificationMetrics();
  buildCounterBinaryClassificationMetrics++;
  if (buildCounterBinaryClassificationMetrics < 3) {
    o.aggregateClassificationMetrics = buildAggregateClassificationMetrics();
    o.binaryConfusionMatrixList = buildUnnamed19();
    o.negativeLabel = 'foo';
    o.positiveLabel = 'foo';
  }
  buildCounterBinaryClassificationMetrics--;
  return o;
}

void checkBinaryClassificationMetrics(api.BinaryClassificationMetrics o) {
  buildCounterBinaryClassificationMetrics++;
  if (buildCounterBinaryClassificationMetrics < 3) {
    checkAggregateClassificationMetrics(o.aggregateClassificationMetrics!);
    checkUnnamed19(o.binaryConfusionMatrixList!);
    unittest.expect(
      o.negativeLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.positiveLabel!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinaryClassificationMetrics--;
}

core.int buildCounterBinaryConfusionMatrix = 0;
api.BinaryConfusionMatrix buildBinaryConfusionMatrix() {
  final o = api.BinaryConfusionMatrix();
  buildCounterBinaryConfusionMatrix++;
  if (buildCounterBinaryConfusionMatrix < 3) {
    o.accuracy = 42.0;
    o.f1Score = 42.0;
    o.falseNegatives = 'foo';
    o.falsePositives = 'foo';
    o.positiveClassThreshold = 42.0;
    o.precision = 42.0;
    o.recall = 42.0;
    o.trueNegatives = 'foo';
    o.truePositives = 'foo';
  }
  buildCounterBinaryConfusionMatrix--;
  return o;
}

void checkBinaryConfusionMatrix(api.BinaryConfusionMatrix o) {
  buildCounterBinaryConfusionMatrix++;
  if (buildCounterBinaryConfusionMatrix < 3) {
    unittest.expect(
      o.accuracy!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.f1Score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.falseNegatives!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.falsePositives!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.positiveClassThreshold!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.precision!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.recall!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.trueNegatives!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.truePositives!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinaryConfusionMatrix--;
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed20();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed20(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterBqmlIterationResult = 0;
api.BqmlIterationResult buildBqmlIterationResult() {
  final o = api.BqmlIterationResult();
  buildCounterBqmlIterationResult++;
  if (buildCounterBqmlIterationResult < 3) {
    o.durationMs = 'foo';
    o.evalLoss = 42.0;
    o.index = 42;
    o.learnRate = 42.0;
    o.trainingLoss = 42.0;
  }
  buildCounterBqmlIterationResult--;
  return o;
}

void checkBqmlIterationResult(api.BqmlIterationResult o) {
  buildCounterBqmlIterationResult++;
  if (buildCounterBqmlIterationResult < 3) {
    unittest.expect(
      o.durationMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.evalLoss!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.learnRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.trainingLoss!,
      unittest.equals(42.0),
    );
  }
  buildCounterBqmlIterationResult--;
}

core.List<api.BqmlIterationResult> buildUnnamed21() => [
      buildBqmlIterationResult(),
      buildBqmlIterationResult(),
    ];

void checkUnnamed21(core.List<api.BqmlIterationResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBqmlIterationResult(o[0]);
  checkBqmlIterationResult(o[1]);
}

core.int buildCounterBqmlTrainingRunTrainingOptions = 0;
api.BqmlTrainingRunTrainingOptions buildBqmlTrainingRunTrainingOptions() {
  final o = api.BqmlTrainingRunTrainingOptions();
  buildCounterBqmlTrainingRunTrainingOptions++;
  if (buildCounterBqmlTrainingRunTrainingOptions < 3) {
    o.earlyStop = true;
    o.l1Reg = 42.0;
    o.l2Reg = 42.0;
    o.learnRate = 42.0;
    o.learnRateStrategy = 'foo';
    o.lineSearchInitLearnRate = 42.0;
    o.maxIteration = 'foo';
    o.minRelProgress = 42.0;
    o.warmStart = true;
  }
  buildCounterBqmlTrainingRunTrainingOptions--;
  return o;
}

void checkBqmlTrainingRunTrainingOptions(api.BqmlTrainingRunTrainingOptions o) {
  buildCounterBqmlTrainingRunTrainingOptions++;
  if (buildCounterBqmlTrainingRunTrainingOptions < 3) {
    unittest.expect(o.earlyStop!, unittest.isTrue);
    unittest.expect(
      o.l1Reg!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.l2Reg!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.learnRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.learnRateStrategy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lineSearchInitLearnRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.maxIteration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minRelProgress!,
      unittest.equals(42.0),
    );
    unittest.expect(o.warmStart!, unittest.isTrue);
  }
  buildCounterBqmlTrainingRunTrainingOptions--;
}

core.int buildCounterBqmlTrainingRun = 0;
api.BqmlTrainingRun buildBqmlTrainingRun() {
  final o = api.BqmlTrainingRun();
  buildCounterBqmlTrainingRun++;
  if (buildCounterBqmlTrainingRun < 3) {
    o.iterationResults = buildUnnamed21();
    o.startTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.state = 'foo';
    o.trainingOptions = buildBqmlTrainingRunTrainingOptions();
  }
  buildCounterBqmlTrainingRun--;
  return o;
}

void checkBqmlTrainingRun(api.BqmlTrainingRun o) {
  buildCounterBqmlTrainingRun++;
  if (buildCounterBqmlTrainingRun < 3) {
    checkUnnamed21(o.iterationResults!);
    unittest.expect(
      o.startTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkBqmlTrainingRunTrainingOptions(o.trainingOptions!);
  }
  buildCounterBqmlTrainingRun--;
}

core.List<api.CategoryCount> buildUnnamed22() => [
      buildCategoryCount(),
      buildCategoryCount(),
    ];

void checkUnnamed22(core.List<api.CategoryCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategoryCount(o[0]);
  checkCategoryCount(o[1]);
}

core.int buildCounterCategoricalValue = 0;
api.CategoricalValue buildCategoricalValue() {
  final o = api.CategoricalValue();
  buildCounterCategoricalValue++;
  if (buildCounterCategoricalValue < 3) {
    o.categoryCounts = buildUnnamed22();
  }
  buildCounterCategoricalValue--;
  return o;
}

void checkCategoricalValue(api.CategoricalValue o) {
  buildCounterCategoricalValue++;
  if (buildCounterCategoricalValue < 3) {
    checkUnnamed22(o.categoryCounts!);
  }
  buildCounterCategoricalValue--;
}

core.int buildCounterCategoryCount = 0;
api.CategoryCount buildCategoryCount() {
  final o = api.CategoryCount();
  buildCounterCategoryCount++;
  if (buildCounterCategoryCount < 3) {
    o.category = 'foo';
    o.count = 'foo';
  }
  buildCounterCategoryCount--;
  return o;
}

void checkCategoryCount(api.CategoryCount o) {
  buildCounterCategoryCount++;
  if (buildCounterCategoryCount < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
  }
  buildCounterCategoryCount--;
}

core.List<api.FeatureValue> buildUnnamed23() => [
      buildFeatureValue(),
      buildFeatureValue(),
    ];

void checkUnnamed23(core.List<api.FeatureValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeatureValue(o[0]);
  checkFeatureValue(o[1]);
}

core.int buildCounterCluster = 0;
api.Cluster buildCluster() {
  final o = api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.centroidId = 'foo';
    o.count = 'foo';
    o.featureValues = buildUnnamed23();
  }
  buildCounterCluster--;
  return o;
}

void checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    unittest.expect(
      o.centroidId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.featureValues!);
  }
  buildCounterCluster--;
}

core.int buildCounterClusterInfo = 0;
api.ClusterInfo buildClusterInfo() {
  final o = api.ClusterInfo();
  buildCounterClusterInfo++;
  if (buildCounterClusterInfo < 3) {
    o.centroidId = 'foo';
    o.clusterRadius = 42.0;
    o.clusterSize = 'foo';
  }
  buildCounterClusterInfo--;
  return o;
}

void checkClusterInfo(api.ClusterInfo o) {
  buildCounterClusterInfo++;
  if (buildCounterClusterInfo < 3) {
    unittest.expect(
      o.centroidId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterRadius!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.clusterSize!,
      unittest.equals('foo'),
    );
  }
  buildCounterClusterInfo--;
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.int buildCounterClustering = 0;
api.Clustering buildClustering() {
  final o = api.Clustering();
  buildCounterClustering++;
  if (buildCounterClustering < 3) {
    o.fields = buildUnnamed24();
  }
  buildCounterClustering--;
  return o;
}

void checkClustering(api.Clustering o) {
  buildCounterClustering++;
  if (buildCounterClustering < 3) {
    checkUnnamed24(o.fields!);
  }
  buildCounterClustering--;
}

core.List<api.Cluster> buildUnnamed25() => [
      buildCluster(),
      buildCluster(),
    ];

void checkUnnamed25(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.int buildCounterClusteringMetrics = 0;
api.ClusteringMetrics buildClusteringMetrics() {
  final o = api.ClusteringMetrics();
  buildCounterClusteringMetrics++;
  if (buildCounterClusteringMetrics < 3) {
    o.clusters = buildUnnamed25();
    o.daviesBouldinIndex = 42.0;
    o.meanSquaredDistance = 42.0;
  }
  buildCounterClusteringMetrics--;
  return o;
}

void checkClusteringMetrics(api.ClusteringMetrics o) {
  buildCounterClusteringMetrics++;
  if (buildCounterClusteringMetrics < 3) {
    checkUnnamed25(o.clusters!);
    unittest.expect(
      o.daviesBouldinIndex!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.meanSquaredDistance!,
      unittest.equals(42.0),
    );
  }
  buildCounterClusteringMetrics--;
}

core.List<api.Row> buildUnnamed26() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed26(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterConfusionMatrix = 0;
api.ConfusionMatrix buildConfusionMatrix() {
  final o = api.ConfusionMatrix();
  buildCounterConfusionMatrix++;
  if (buildCounterConfusionMatrix < 3) {
    o.confidenceThreshold = 42.0;
    o.rows = buildUnnamed26();
  }
  buildCounterConfusionMatrix--;
  return o;
}

void checkConfusionMatrix(api.ConfusionMatrix o) {
  buildCounterConfusionMatrix++;
  if (buildCounterConfusionMatrix < 3) {
    unittest.expect(
      o.confidenceThreshold!,
      unittest.equals(42.0),
    );
    checkUnnamed26(o.rows!);
  }
  buildCounterConfusionMatrix--;
}

core.int buildCounterConnectionProperty = 0;
api.ConnectionProperty buildConnectionProperty() {
  final o = api.ConnectionProperty();
  buildCounterConnectionProperty++;
  if (buildCounterConnectionProperty < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterConnectionProperty--;
  return o;
}

void checkConnectionProperty(api.ConnectionProperty o) {
  buildCounterConnectionProperty++;
  if (buildCounterConnectionProperty < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectionProperty--;
}

core.int buildCounterCsvOptions = 0;
api.CsvOptions buildCsvOptions() {
  final o = api.CsvOptions();
  buildCounterCsvOptions++;
  if (buildCounterCsvOptions < 3) {
    o.allowJaggedRows = true;
    o.allowQuotedNewlines = true;
    o.encoding = 'foo';
    o.fieldDelimiter = 'foo';
    o.nullMarker = 'foo';
    o.quote = 'foo';
    o.skipLeadingRows = 'foo';
  }
  buildCounterCsvOptions--;
  return o;
}

void checkCsvOptions(api.CsvOptions o) {
  buildCounterCsvOptions++;
  if (buildCounterCsvOptions < 3) {
    unittest.expect(o.allowJaggedRows!, unittest.isTrue);
    unittest.expect(o.allowQuotedNewlines!, unittest.isTrue);
    unittest.expect(
      o.encoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldDelimiter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nullMarker!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quote!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skipLeadingRows!,
      unittest.equals('foo'),
    );
  }
  buildCounterCsvOptions--;
}

core.int buildCounterDataSplitResult = 0;
api.DataSplitResult buildDataSplitResult() {
  final o = api.DataSplitResult();
  buildCounterDataSplitResult++;
  if (buildCounterDataSplitResult < 3) {
    o.evaluationTable = buildTableReference();
    o.trainingTable = buildTableReference();
  }
  buildCounterDataSplitResult--;
  return o;
}

void checkDataSplitResult(api.DataSplitResult o) {
  buildCounterDataSplitResult++;
  if (buildCounterDataSplitResult < 3) {
    checkTableReference(o.evaluationTable!);
    checkTableReference(o.trainingTable!);
  }
  buildCounterDataSplitResult--;
}

core.int buildCounterDatasetAccess = 0;
api.DatasetAccess buildDatasetAccess() {
  final o = api.DatasetAccess();
  buildCounterDatasetAccess++;
  if (buildCounterDatasetAccess < 3) {
    o.dataset = buildDatasetAccessEntry();
    o.domain = 'foo';
    o.groupByEmail = 'foo';
    o.iamMember = 'foo';
    o.role = 'foo';
    o.routine = buildRoutineReference();
    o.specialGroup = 'foo';
    o.userByEmail = 'foo';
    o.view = buildTableReference();
  }
  buildCounterDatasetAccess--;
  return o;
}

void checkDatasetAccess(api.DatasetAccess o) {
  buildCounterDatasetAccess++;
  if (buildCounterDatasetAccess < 3) {
    checkDatasetAccessEntry(o.dataset!);
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.groupByEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iamMember!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    checkRoutineReference(o.routine!);
    unittest.expect(
      o.specialGroup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userByEmail!,
      unittest.equals('foo'),
    );
    checkTableReference(o.view!);
  }
  buildCounterDatasetAccess--;
}

core.List<api.DatasetAccess> buildUnnamed27() => [
      buildDatasetAccess(),
      buildDatasetAccess(),
    ];

void checkUnnamed27(core.List<api.DatasetAccess> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatasetAccess(o[0]);
  checkDatasetAccess(o[1]);
}

core.Map<core.String, core.String> buildUnnamed28() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed28(core.Map<core.String, core.String> o) {
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

core.int buildCounterDataset = 0;
api.Dataset buildDataset() {
  final o = api.Dataset();
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    o.access = buildUnnamed27();
    o.creationTime = 'foo';
    o.datasetReference = buildDatasetReference();
    o.defaultCollation = 'foo';
    o.defaultEncryptionConfiguration = buildEncryptionConfiguration();
    o.defaultPartitionExpirationMs = 'foo';
    o.defaultTableExpirationMs = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.friendlyName = 'foo';
    o.id = 'foo';
    o.isCaseInsensitive = true;
    o.kind = 'foo';
    o.labels = buildUnnamed28();
    o.lastModifiedTime = 'foo';
    o.location = 'foo';
    o.satisfiesPZS = true;
    o.selfLink = 'foo';
  }
  buildCounterDataset--;
  return o;
}

void checkDataset(api.Dataset o) {
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    checkUnnamed27(o.access!);
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    checkDatasetReference(o.datasetReference!);
    unittest.expect(
      o.defaultCollation!,
      unittest.equals('foo'),
    );
    checkEncryptionConfiguration(o.defaultEncryptionConfiguration!);
    unittest.expect(
      o.defaultPartitionExpirationMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultTableExpirationMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.friendlyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isCaseInsensitive!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.labels!);
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(o.satisfiesPZS!, unittest.isTrue);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataset--;
}

core.int buildCounterDatasetAccessEntryTargetTypes = 0;
api.DatasetAccessEntryTargetTypes buildDatasetAccessEntryTargetTypes() {
  final o = api.DatasetAccessEntryTargetTypes();
  buildCounterDatasetAccessEntryTargetTypes++;
  if (buildCounterDatasetAccessEntryTargetTypes < 3) {
    o.targetType = 'foo';
  }
  buildCounterDatasetAccessEntryTargetTypes--;
  return o;
}

void checkDatasetAccessEntryTargetTypes(api.DatasetAccessEntryTargetTypes o) {
  buildCounterDatasetAccessEntryTargetTypes++;
  if (buildCounterDatasetAccessEntryTargetTypes < 3) {
    unittest.expect(
      o.targetType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatasetAccessEntryTargetTypes--;
}

core.List<api.DatasetAccessEntryTargetTypes> buildUnnamed29() => [
      buildDatasetAccessEntryTargetTypes(),
      buildDatasetAccessEntryTargetTypes(),
    ];

void checkUnnamed29(core.List<api.DatasetAccessEntryTargetTypes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatasetAccessEntryTargetTypes(o[0]);
  checkDatasetAccessEntryTargetTypes(o[1]);
}

core.int buildCounterDatasetAccessEntry = 0;
api.DatasetAccessEntry buildDatasetAccessEntry() {
  final o = api.DatasetAccessEntry();
  buildCounterDatasetAccessEntry++;
  if (buildCounterDatasetAccessEntry < 3) {
    o.dataset = buildDatasetReference();
    o.targetTypes = buildUnnamed29();
  }
  buildCounterDatasetAccessEntry--;
  return o;
}

void checkDatasetAccessEntry(api.DatasetAccessEntry o) {
  buildCounterDatasetAccessEntry++;
  if (buildCounterDatasetAccessEntry < 3) {
    checkDatasetReference(o.dataset!);
    checkUnnamed29(o.targetTypes!);
  }
  buildCounterDatasetAccessEntry--;
}

core.Map<core.String, core.String> buildUnnamed30() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed30(core.Map<core.String, core.String> o) {
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

core.int buildCounterDatasetListDatasets = 0;
api.DatasetListDatasets buildDatasetListDatasets() {
  final o = api.DatasetListDatasets();
  buildCounterDatasetListDatasets++;
  if (buildCounterDatasetListDatasets < 3) {
    o.datasetReference = buildDatasetReference();
    o.friendlyName = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.labels = buildUnnamed30();
    o.location = 'foo';
  }
  buildCounterDatasetListDatasets--;
  return o;
}

void checkDatasetListDatasets(api.DatasetListDatasets o) {
  buildCounterDatasetListDatasets++;
  if (buildCounterDatasetListDatasets < 3) {
    checkDatasetReference(o.datasetReference!);
    unittest.expect(
      o.friendlyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.labels!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatasetListDatasets--;
}

core.List<api.DatasetListDatasets> buildUnnamed31() => [
      buildDatasetListDatasets(),
      buildDatasetListDatasets(),
    ];

void checkUnnamed31(core.List<api.DatasetListDatasets> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatasetListDatasets(o[0]);
  checkDatasetListDatasets(o[1]);
}

core.int buildCounterDatasetList = 0;
api.DatasetList buildDatasetList() {
  final o = api.DatasetList();
  buildCounterDatasetList++;
  if (buildCounterDatasetList < 3) {
    o.datasets = buildUnnamed31();
    o.etag = 'foo';
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterDatasetList--;
  return o;
}

void checkDatasetList(api.DatasetList o) {
  buildCounterDatasetList++;
  if (buildCounterDatasetList < 3) {
    checkUnnamed31(o.datasets!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatasetList--;
}

core.int buildCounterDatasetReference = 0;
api.DatasetReference buildDatasetReference() {
  final o = api.DatasetReference();
  buildCounterDatasetReference++;
  if (buildCounterDatasetReference < 3) {
    o.datasetId = 'foo';
    o.projectId = 'foo';
  }
  buildCounterDatasetReference--;
  return o;
}

void checkDatasetReference(api.DatasetReference o) {
  buildCounterDatasetReference++;
  if (buildCounterDatasetReference < 3) {
    unittest.expect(
      o.datasetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatasetReference--;
}

core.Map<core.String, core.String> buildUnnamed32() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed32(core.Map<core.String, core.String> o) {
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

core.int buildCounterDestinationTableProperties = 0;
api.DestinationTableProperties buildDestinationTableProperties() {
  final o = api.DestinationTableProperties();
  buildCounterDestinationTableProperties++;
  if (buildCounterDestinationTableProperties < 3) {
    o.description = 'foo';
    o.expirationTimestampMillis = 'foo';
    o.friendlyName = 'foo';
    o.labels = buildUnnamed32();
  }
  buildCounterDestinationTableProperties--;
  return o;
}

void checkDestinationTableProperties(api.DestinationTableProperties o) {
  buildCounterDestinationTableProperties++;
  if (buildCounterDestinationTableProperties < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expirationTimestampMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.friendlyName!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.labels!);
  }
  buildCounterDestinationTableProperties--;
}

core.int buildCounterDmlStatistics = 0;
api.DmlStatistics buildDmlStatistics() {
  final o = api.DmlStatistics();
  buildCounterDmlStatistics++;
  if (buildCounterDmlStatistics < 3) {
    o.deletedRowCount = 'foo';
    o.insertedRowCount = 'foo';
    o.updatedRowCount = 'foo';
  }
  buildCounterDmlStatistics--;
  return o;
}

void checkDmlStatistics(api.DmlStatistics o) {
  buildCounterDmlStatistics++;
  if (buildCounterDmlStatistics < 3) {
    unittest.expect(
      o.deletedRowCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.insertedRowCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updatedRowCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterDmlStatistics--;
}

core.int buildCounterEncryptionConfiguration = 0;
api.EncryptionConfiguration buildEncryptionConfiguration() {
  final o = api.EncryptionConfiguration();
  buildCounterEncryptionConfiguration++;
  if (buildCounterEncryptionConfiguration < 3) {
    o.kmsKeyName = 'foo';
  }
  buildCounterEncryptionConfiguration--;
  return o;
}

void checkEncryptionConfiguration(api.EncryptionConfiguration o) {
  buildCounterEncryptionConfiguration++;
  if (buildCounterEncryptionConfiguration < 3) {
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterEncryptionConfiguration--;
}

core.int buildCounterEntry = 0;
api.Entry buildEntry() {
  final o = api.Entry();
  buildCounterEntry++;
  if (buildCounterEntry < 3) {
    o.itemCount = 'foo';
    o.predictedLabel = 'foo';
  }
  buildCounterEntry--;
  return o;
}

void checkEntry(api.Entry o) {
  buildCounterEntry++;
  if (buildCounterEntry < 3) {
    unittest.expect(
      o.itemCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.predictedLabel!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntry--;
}

core.int buildCounterErrorProto = 0;
api.ErrorProto buildErrorProto() {
  final o = api.ErrorProto();
  buildCounterErrorProto++;
  if (buildCounterErrorProto < 3) {
    o.debugInfo = 'foo';
    o.location = 'foo';
    o.message = 'foo';
    o.reason = 'foo';
  }
  buildCounterErrorProto--;
  return o;
}

void checkErrorProto(api.ErrorProto o) {
  buildCounterErrorProto++;
  if (buildCounterErrorProto < 3) {
    unittest.expect(
      o.debugInfo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterErrorProto--;
}

core.int buildCounterEvaluationMetrics = 0;
api.EvaluationMetrics buildEvaluationMetrics() {
  final o = api.EvaluationMetrics();
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

void checkEvaluationMetrics(api.EvaluationMetrics o) {
  buildCounterEvaluationMetrics++;
  if (buildCounterEvaluationMetrics < 3) {
    checkArimaForecastingMetrics(o.arimaForecastingMetrics!);
    checkBinaryClassificationMetrics(o.binaryClassificationMetrics!);
    checkClusteringMetrics(o.clusteringMetrics!);
    checkMultiClassClassificationMetrics(o.multiClassClassificationMetrics!);
    checkRankingMetrics(o.rankingMetrics!);
    checkRegressionMetrics(o.regressionMetrics!);
  }
  buildCounterEvaluationMetrics--;
}

core.List<core.String> buildUnnamed33() => [
      'foo',
      'foo',
    ];

void checkUnnamed33(core.List<core.String> o) {
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

core.List<api.ExplainQueryStep> buildUnnamed34() => [
      buildExplainQueryStep(),
      buildExplainQueryStep(),
    ];

void checkUnnamed34(core.List<api.ExplainQueryStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExplainQueryStep(o[0]);
  checkExplainQueryStep(o[1]);
}

core.int buildCounterExplainQueryStage = 0;
api.ExplainQueryStage buildExplainQueryStage() {
  final o = api.ExplainQueryStage();
  buildCounterExplainQueryStage++;
  if (buildCounterExplainQueryStage < 3) {
    o.completedParallelInputs = 'foo';
    o.computeMsAvg = 'foo';
    o.computeMsMax = 'foo';
    o.computeRatioAvg = 42.0;
    o.computeRatioMax = 42.0;
    o.endMs = 'foo';
    o.id = 'foo';
    o.inputStages = buildUnnamed33();
    o.name = 'foo';
    o.parallelInputs = 'foo';
    o.readMsAvg = 'foo';
    o.readMsMax = 'foo';
    o.readRatioAvg = 42.0;
    o.readRatioMax = 42.0;
    o.recordsRead = 'foo';
    o.recordsWritten = 'foo';
    o.shuffleOutputBytes = 'foo';
    o.shuffleOutputBytesSpilled = 'foo';
    o.slotMs = 'foo';
    o.startMs = 'foo';
    o.status = 'foo';
    o.steps = buildUnnamed34();
    o.waitMsAvg = 'foo';
    o.waitMsMax = 'foo';
    o.waitRatioAvg = 42.0;
    o.waitRatioMax = 42.0;
    o.writeMsAvg = 'foo';
    o.writeMsMax = 'foo';
    o.writeRatioAvg = 42.0;
    o.writeRatioMax = 42.0;
  }
  buildCounterExplainQueryStage--;
  return o;
}

void checkExplainQueryStage(api.ExplainQueryStage o) {
  buildCounterExplainQueryStage++;
  if (buildCounterExplainQueryStage < 3) {
    unittest.expect(
      o.completedParallelInputs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.computeMsAvg!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.computeMsMax!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.computeRatioAvg!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.computeRatioMax!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.endMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.inputStages!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parallelInputs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readMsAvg!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readMsMax!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readRatioAvg!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.readRatioMax!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.recordsRead!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recordsWritten!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shuffleOutputBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shuffleOutputBytesSpilled!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.slotMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.steps!);
    unittest.expect(
      o.waitMsAvg!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.waitMsMax!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.waitRatioAvg!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.waitRatioMax!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.writeMsAvg!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.writeMsMax!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.writeRatioAvg!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.writeRatioMax!,
      unittest.equals(42.0),
    );
  }
  buildCounterExplainQueryStage--;
}

core.List<core.String> buildUnnamed35() => [
      'foo',
      'foo',
    ];

void checkUnnamed35(core.List<core.String> o) {
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

core.int buildCounterExplainQueryStep = 0;
api.ExplainQueryStep buildExplainQueryStep() {
  final o = api.ExplainQueryStep();
  buildCounterExplainQueryStep++;
  if (buildCounterExplainQueryStep < 3) {
    o.kind = 'foo';
    o.substeps = buildUnnamed35();
  }
  buildCounterExplainQueryStep--;
  return o;
}

void checkExplainQueryStep(api.ExplainQueryStep o) {
  buildCounterExplainQueryStep++;
  if (buildCounterExplainQueryStep < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.substeps!);
  }
  buildCounterExplainQueryStep--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  final o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterExpr--;
}

core.List<core.String> buildUnnamed36() => [
      'foo',
      'foo',
    ];

void checkUnnamed36(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed37() => [
      'foo',
      'foo',
    ];

void checkUnnamed37(core.List<core.String> o) {
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

core.int buildCounterExternalDataConfiguration = 0;
api.ExternalDataConfiguration buildExternalDataConfiguration() {
  final o = api.ExternalDataConfiguration();
  buildCounterExternalDataConfiguration++;
  if (buildCounterExternalDataConfiguration < 3) {
    o.autodetect = true;
    o.avroOptions = buildAvroOptions();
    o.bigtableOptions = buildBigtableOptions();
    o.compression = 'foo';
    o.connectionId = 'foo';
    o.csvOptions = buildCsvOptions();
    o.decimalTargetTypes = buildUnnamed36();
    o.googleSheetsOptions = buildGoogleSheetsOptions();
    o.hivePartitioningOptions = buildHivePartitioningOptions();
    o.ignoreUnknownValues = true;
    o.maxBadRecords = 42;
    o.parquetOptions = buildParquetOptions();
    o.schema = buildTableSchema();
    o.sourceFormat = 'foo';
    o.sourceUris = buildUnnamed37();
  }
  buildCounterExternalDataConfiguration--;
  return o;
}

void checkExternalDataConfiguration(api.ExternalDataConfiguration o) {
  buildCounterExternalDataConfiguration++;
  if (buildCounterExternalDataConfiguration < 3) {
    unittest.expect(o.autodetect!, unittest.isTrue);
    checkAvroOptions(o.avroOptions!);
    checkBigtableOptions(o.bigtableOptions!);
    unittest.expect(
      o.compression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectionId!,
      unittest.equals('foo'),
    );
    checkCsvOptions(o.csvOptions!);
    checkUnnamed36(o.decimalTargetTypes!);
    checkGoogleSheetsOptions(o.googleSheetsOptions!);
    checkHivePartitioningOptions(o.hivePartitioningOptions!);
    unittest.expect(o.ignoreUnknownValues!, unittest.isTrue);
    unittest.expect(
      o.maxBadRecords!,
      unittest.equals(42),
    );
    checkParquetOptions(o.parquetOptions!);
    checkTableSchema(o.schema!);
    unittest.expect(
      o.sourceFormat!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.sourceUris!);
  }
  buildCounterExternalDataConfiguration--;
}

core.int buildCounterFeatureValue = 0;
api.FeatureValue buildFeatureValue() {
  final o = api.FeatureValue();
  buildCounterFeatureValue++;
  if (buildCounterFeatureValue < 3) {
    o.categoricalValue = buildCategoricalValue();
    o.featureColumn = 'foo';
    o.numericalValue = 42.0;
  }
  buildCounterFeatureValue--;
  return o;
}

void checkFeatureValue(api.FeatureValue o) {
  buildCounterFeatureValue++;
  if (buildCounterFeatureValue < 3) {
    checkCategoricalValue(o.categoricalValue!);
    unittest.expect(
      o.featureColumn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numericalValue!,
      unittest.equals(42.0),
    );
  }
  buildCounterFeatureValue--;
}

core.int buildCounterGetIamPolicyRequest = 0;
api.GetIamPolicyRequest buildGetIamPolicyRequest() {
  final o = api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

void checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options!);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
api.GetPolicyOptions buildGetPolicyOptions() {
  final o = api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

void checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(
      o.requestedPolicyVersion!,
      unittest.equals(42),
    );
  }
  buildCounterGetPolicyOptions--;
}

core.List<api.ErrorProto> buildUnnamed38() => [
      buildErrorProto(),
      buildErrorProto(),
    ];

void checkUnnamed38(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

core.List<api.TableRow> buildUnnamed39() => [
      buildTableRow(),
      buildTableRow(),
    ];

void checkUnnamed39(core.List<api.TableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableRow(o[0]);
  checkTableRow(o[1]);
}

core.int buildCounterGetQueryResultsResponse = 0;
api.GetQueryResultsResponse buildGetQueryResultsResponse() {
  final o = api.GetQueryResultsResponse();
  buildCounterGetQueryResultsResponse++;
  if (buildCounterGetQueryResultsResponse < 3) {
    o.cacheHit = true;
    o.errors = buildUnnamed38();
    o.etag = 'foo';
    o.jobComplete = true;
    o.jobReference = buildJobReference();
    o.kind = 'foo';
    o.numDmlAffectedRows = 'foo';
    o.pageToken = 'foo';
    o.rows = buildUnnamed39();
    o.schema = buildTableSchema();
    o.totalBytesProcessed = 'foo';
    o.totalRows = 'foo';
  }
  buildCounterGetQueryResultsResponse--;
  return o;
}

void checkGetQueryResultsResponse(api.GetQueryResultsResponse o) {
  buildCounterGetQueryResultsResponse++;
  if (buildCounterGetQueryResultsResponse < 3) {
    unittest.expect(o.cacheHit!, unittest.isTrue);
    checkUnnamed38(o.errors!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(o.jobComplete!, unittest.isTrue);
    checkJobReference(o.jobReference!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numDmlAffectedRows!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.rows!);
    checkTableSchema(o.schema!);
    unittest.expect(
      o.totalBytesProcessed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalRows!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetQueryResultsResponse--;
}

core.int buildCounterGetServiceAccountResponse = 0;
api.GetServiceAccountResponse buildGetServiceAccountResponse() {
  final o = api.GetServiceAccountResponse();
  buildCounterGetServiceAccountResponse++;
  if (buildCounterGetServiceAccountResponse < 3) {
    o.email = 'foo';
    o.kind = 'foo';
  }
  buildCounterGetServiceAccountResponse--;
  return o;
}

void checkGetServiceAccountResponse(api.GetServiceAccountResponse o) {
  buildCounterGetServiceAccountResponse++;
  if (buildCounterGetServiceAccountResponse < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetServiceAccountResponse--;
}

core.int buildCounterGoogleSheetsOptions = 0;
api.GoogleSheetsOptions buildGoogleSheetsOptions() {
  final o = api.GoogleSheetsOptions();
  buildCounterGoogleSheetsOptions++;
  if (buildCounterGoogleSheetsOptions < 3) {
    o.range = 'foo';
    o.skipLeadingRows = 'foo';
  }
  buildCounterGoogleSheetsOptions--;
  return o;
}

void checkGoogleSheetsOptions(api.GoogleSheetsOptions o) {
  buildCounterGoogleSheetsOptions++;
  if (buildCounterGoogleSheetsOptions < 3) {
    unittest.expect(
      o.range!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skipLeadingRows!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSheetsOptions--;
}

core.int buildCounterHivePartitioningOptions = 0;
api.HivePartitioningOptions buildHivePartitioningOptions() {
  final o = api.HivePartitioningOptions();
  buildCounterHivePartitioningOptions++;
  if (buildCounterHivePartitioningOptions < 3) {
    o.mode = 'foo';
    o.requirePartitionFilter = true;
    o.sourceUriPrefix = 'foo';
  }
  buildCounterHivePartitioningOptions--;
  return o;
}

void checkHivePartitioningOptions(api.HivePartitioningOptions o) {
  buildCounterHivePartitioningOptions++;
  if (buildCounterHivePartitioningOptions < 3) {
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requirePartitionFilter!, unittest.isTrue);
    unittest.expect(
      o.sourceUriPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterHivePartitioningOptions--;
}

core.List<api.ClusterInfo> buildUnnamed40() => [
      buildClusterInfo(),
      buildClusterInfo(),
    ];

void checkUnnamed40(core.List<api.ClusterInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterInfo(o[0]);
  checkClusterInfo(o[1]);
}

core.int buildCounterIterationResult = 0;
api.IterationResult buildIterationResult() {
  final o = api.IterationResult();
  buildCounterIterationResult++;
  if (buildCounterIterationResult < 3) {
    o.arimaResult = buildArimaResult();
    o.clusterInfos = buildUnnamed40();
    o.durationMs = 'foo';
    o.evalLoss = 42.0;
    o.index = 42;
    o.learnRate = 42.0;
    o.trainingLoss = 42.0;
  }
  buildCounterIterationResult--;
  return o;
}

void checkIterationResult(api.IterationResult o) {
  buildCounterIterationResult++;
  if (buildCounterIterationResult < 3) {
    checkArimaResult(o.arimaResult!);
    checkUnnamed40(o.clusterInfos!);
    unittest.expect(
      o.durationMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.evalLoss!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.learnRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.trainingLoss!,
      unittest.equals(42.0),
    );
  }
  buildCounterIterationResult--;
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  final o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.configuration = buildJobConfiguration();
    o.etag = 'foo';
    o.id = 'foo';
    o.jobReference = buildJobReference();
    o.kind = 'foo';
    o.selfLink = 'foo';
    o.statistics = buildJobStatistics();
    o.status = buildJobStatus();
    o.userEmail = 'foo';
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    checkJobConfiguration(o.configuration!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkJobReference(o.jobReference!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    checkJobStatistics(o.statistics!);
    checkJobStatus(o.status!);
    unittest.expect(
      o.userEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterJob--;
}

core.int buildCounterJobCancelResponse = 0;
api.JobCancelResponse buildJobCancelResponse() {
  final o = api.JobCancelResponse();
  buildCounterJobCancelResponse++;
  if (buildCounterJobCancelResponse < 3) {
    o.job = buildJob();
    o.kind = 'foo';
  }
  buildCounterJobCancelResponse--;
  return o;
}

void checkJobCancelResponse(api.JobCancelResponse o) {
  buildCounterJobCancelResponse++;
  if (buildCounterJobCancelResponse < 3) {
    checkJob(o.job!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobCancelResponse--;
}

core.Map<core.String, core.String> buildUnnamed41() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed41(core.Map<core.String, core.String> o) {
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

core.int buildCounterJobConfiguration = 0;
api.JobConfiguration buildJobConfiguration() {
  final o = api.JobConfiguration();
  buildCounterJobConfiguration++;
  if (buildCounterJobConfiguration < 3) {
    o.copy = buildJobConfigurationTableCopy();
    o.dryRun = true;
    o.extract = buildJobConfigurationExtract();
    o.jobTimeoutMs = 'foo';
    o.jobType = 'foo';
    o.labels = buildUnnamed41();
    o.load = buildJobConfigurationLoad();
    o.query = buildJobConfigurationQuery();
  }
  buildCounterJobConfiguration--;
  return o;
}

void checkJobConfiguration(api.JobConfiguration o) {
  buildCounterJobConfiguration++;
  if (buildCounterJobConfiguration < 3) {
    checkJobConfigurationTableCopy(o.copy!);
    unittest.expect(o.dryRun!, unittest.isTrue);
    checkJobConfigurationExtract(o.extract!);
    unittest.expect(
      o.jobTimeoutMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobType!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.labels!);
    checkJobConfigurationLoad(o.load!);
    checkJobConfigurationQuery(o.query!);
  }
  buildCounterJobConfiguration--;
}

core.List<core.String> buildUnnamed42() => [
      'foo',
      'foo',
    ];

void checkUnnamed42(core.List<core.String> o) {
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

core.int buildCounterJobConfigurationExtract = 0;
api.JobConfigurationExtract buildJobConfigurationExtract() {
  final o = api.JobConfigurationExtract();
  buildCounterJobConfigurationExtract++;
  if (buildCounterJobConfigurationExtract < 3) {
    o.compression = 'foo';
    o.destinationFormat = 'foo';
    o.destinationUri = 'foo';
    o.destinationUris = buildUnnamed42();
    o.fieldDelimiter = 'foo';
    o.printHeader = true;
    o.sourceModel = buildModelReference();
    o.sourceTable = buildTableReference();
    o.useAvroLogicalTypes = true;
  }
  buildCounterJobConfigurationExtract--;
  return o;
}

void checkJobConfigurationExtract(api.JobConfigurationExtract o) {
  buildCounterJobConfigurationExtract++;
  if (buildCounterJobConfigurationExtract < 3) {
    unittest.expect(
      o.compression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destinationFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destinationUri!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.destinationUris!);
    unittest.expect(
      o.fieldDelimiter!,
      unittest.equals('foo'),
    );
    unittest.expect(o.printHeader!, unittest.isTrue);
    checkModelReference(o.sourceModel!);
    checkTableReference(o.sourceTable!);
    unittest.expect(o.useAvroLogicalTypes!, unittest.isTrue);
  }
  buildCounterJobConfigurationExtract--;
}

core.List<core.String> buildUnnamed43() => [
      'foo',
      'foo',
    ];

void checkUnnamed43(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed44() => [
      'foo',
      'foo',
    ];

void checkUnnamed44(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed45() => [
      'foo',
      'foo',
    ];

void checkUnnamed45(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed46() => [
      'foo',
      'foo',
    ];

void checkUnnamed46(core.List<core.String> o) {
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

core.int buildCounterJobConfigurationLoad = 0;
api.JobConfigurationLoad buildJobConfigurationLoad() {
  final o = api.JobConfigurationLoad();
  buildCounterJobConfigurationLoad++;
  if (buildCounterJobConfigurationLoad < 3) {
    o.allowJaggedRows = true;
    o.allowQuotedNewlines = true;
    o.autodetect = true;
    o.clustering = buildClustering();
    o.createDisposition = 'foo';
    o.decimalTargetTypes = buildUnnamed43();
    o.destinationEncryptionConfiguration = buildEncryptionConfiguration();
    o.destinationTable = buildTableReference();
    o.destinationTableProperties = buildDestinationTableProperties();
    o.encoding = 'foo';
    o.fieldDelimiter = 'foo';
    o.hivePartitioningOptions = buildHivePartitioningOptions();
    o.ignoreUnknownValues = true;
    o.jsonExtension = 'foo';
    o.maxBadRecords = 42;
    o.nullMarker = 'foo';
    o.parquetOptions = buildParquetOptions();
    o.projectionFields = buildUnnamed44();
    o.quote = 'foo';
    o.rangePartitioning = buildRangePartitioning();
    o.schema = buildTableSchema();
    o.schemaInline = 'foo';
    o.schemaInlineFormat = 'foo';
    o.schemaUpdateOptions = buildUnnamed45();
    o.skipLeadingRows = 42;
    o.sourceFormat = 'foo';
    o.sourceUris = buildUnnamed46();
    o.timePartitioning = buildTimePartitioning();
    o.useAvroLogicalTypes = true;
    o.writeDisposition = 'foo';
  }
  buildCounterJobConfigurationLoad--;
  return o;
}

void checkJobConfigurationLoad(api.JobConfigurationLoad o) {
  buildCounterJobConfigurationLoad++;
  if (buildCounterJobConfigurationLoad < 3) {
    unittest.expect(o.allowJaggedRows!, unittest.isTrue);
    unittest.expect(o.allowQuotedNewlines!, unittest.isTrue);
    unittest.expect(o.autodetect!, unittest.isTrue);
    checkClustering(o.clustering!);
    unittest.expect(
      o.createDisposition!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.decimalTargetTypes!);
    checkEncryptionConfiguration(o.destinationEncryptionConfiguration!);
    checkTableReference(o.destinationTable!);
    checkDestinationTableProperties(o.destinationTableProperties!);
    unittest.expect(
      o.encoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldDelimiter!,
      unittest.equals('foo'),
    );
    checkHivePartitioningOptions(o.hivePartitioningOptions!);
    unittest.expect(o.ignoreUnknownValues!, unittest.isTrue);
    unittest.expect(
      o.jsonExtension!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxBadRecords!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nullMarker!,
      unittest.equals('foo'),
    );
    checkParquetOptions(o.parquetOptions!);
    checkUnnamed44(o.projectionFields!);
    unittest.expect(
      o.quote!,
      unittest.equals('foo'),
    );
    checkRangePartitioning(o.rangePartitioning!);
    checkTableSchema(o.schema!);
    unittest.expect(
      o.schemaInline!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.schemaInlineFormat!,
      unittest.equals('foo'),
    );
    checkUnnamed45(o.schemaUpdateOptions!);
    unittest.expect(
      o.skipLeadingRows!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sourceFormat!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.sourceUris!);
    checkTimePartitioning(o.timePartitioning!);
    unittest.expect(o.useAvroLogicalTypes!, unittest.isTrue);
    unittest.expect(
      o.writeDisposition!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobConfigurationLoad--;
}

core.List<api.ConnectionProperty> buildUnnamed47() => [
      buildConnectionProperty(),
      buildConnectionProperty(),
    ];

void checkUnnamed47(core.List<api.ConnectionProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionProperty(o[0]);
  checkConnectionProperty(o[1]);
}

core.List<api.QueryParameter> buildUnnamed48() => [
      buildQueryParameter(),
      buildQueryParameter(),
    ];

void checkUnnamed48(core.List<api.QueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameter(o[0]);
  checkQueryParameter(o[1]);
}

core.List<core.String> buildUnnamed49() => [
      'foo',
      'foo',
    ];

void checkUnnamed49(core.List<core.String> o) {
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

core.Map<core.String, api.ExternalDataConfiguration> buildUnnamed50() => {
      'x': buildExternalDataConfiguration(),
      'y': buildExternalDataConfiguration(),
    };

void checkUnnamed50(core.Map<core.String, api.ExternalDataConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalDataConfiguration(o['x']!);
  checkExternalDataConfiguration(o['y']!);
}

core.List<api.UserDefinedFunctionResource> buildUnnamed51() => [
      buildUserDefinedFunctionResource(),
      buildUserDefinedFunctionResource(),
    ];

void checkUnnamed51(core.List<api.UserDefinedFunctionResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserDefinedFunctionResource(o[0]);
  checkUserDefinedFunctionResource(o[1]);
}

core.int buildCounterJobConfigurationQuery = 0;
api.JobConfigurationQuery buildJobConfigurationQuery() {
  final o = api.JobConfigurationQuery();
  buildCounterJobConfigurationQuery++;
  if (buildCounterJobConfigurationQuery < 3) {
    o.allowLargeResults = true;
    o.clustering = buildClustering();
    o.connectionProperties = buildUnnamed47();
    o.createDisposition = 'foo';
    o.createSession = true;
    o.defaultDataset = buildDatasetReference();
    o.destinationEncryptionConfiguration = buildEncryptionConfiguration();
    o.destinationTable = buildTableReference();
    o.flattenResults = true;
    o.maximumBillingTier = 42;
    o.maximumBytesBilled = 'foo';
    o.parameterMode = 'foo';
    o.preserveNulls = true;
    o.priority = 'foo';
    o.query = 'foo';
    o.queryParameters = buildUnnamed48();
    o.rangePartitioning = buildRangePartitioning();
    o.schemaUpdateOptions = buildUnnamed49();
    o.tableDefinitions = buildUnnamed50();
    o.timePartitioning = buildTimePartitioning();
    o.useLegacySql = true;
    o.useQueryCache = true;
    o.userDefinedFunctionResources = buildUnnamed51();
    o.writeDisposition = 'foo';
  }
  buildCounterJobConfigurationQuery--;
  return o;
}

void checkJobConfigurationQuery(api.JobConfigurationQuery o) {
  buildCounterJobConfigurationQuery++;
  if (buildCounterJobConfigurationQuery < 3) {
    unittest.expect(o.allowLargeResults!, unittest.isTrue);
    checkClustering(o.clustering!);
    checkUnnamed47(o.connectionProperties!);
    unittest.expect(
      o.createDisposition!,
      unittest.equals('foo'),
    );
    unittest.expect(o.createSession!, unittest.isTrue);
    checkDatasetReference(o.defaultDataset!);
    checkEncryptionConfiguration(o.destinationEncryptionConfiguration!);
    checkTableReference(o.destinationTable!);
    unittest.expect(o.flattenResults!, unittest.isTrue);
    unittest.expect(
      o.maximumBillingTier!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maximumBytesBilled!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parameterMode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.preserveNulls!, unittest.isTrue);
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.queryParameters!);
    checkRangePartitioning(o.rangePartitioning!);
    checkUnnamed49(o.schemaUpdateOptions!);
    checkUnnamed50(o.tableDefinitions!);
    checkTimePartitioning(o.timePartitioning!);
    unittest.expect(o.useLegacySql!, unittest.isTrue);
    unittest.expect(o.useQueryCache!, unittest.isTrue);
    checkUnnamed51(o.userDefinedFunctionResources!);
    unittest.expect(
      o.writeDisposition!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobConfigurationQuery--;
}

core.List<api.TableReference> buildUnnamed52() => [
      buildTableReference(),
      buildTableReference(),
    ];

void checkUnnamed52(core.List<api.TableReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableReference(o[0]);
  checkTableReference(o[1]);
}

core.int buildCounterJobConfigurationTableCopy = 0;
api.JobConfigurationTableCopy buildJobConfigurationTableCopy() {
  final o = api.JobConfigurationTableCopy();
  buildCounterJobConfigurationTableCopy++;
  if (buildCounterJobConfigurationTableCopy < 3) {
    o.createDisposition = 'foo';
    o.destinationEncryptionConfiguration = buildEncryptionConfiguration();
    o.destinationExpirationTime = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.destinationTable = buildTableReference();
    o.operationType = 'foo';
    o.sourceTable = buildTableReference();
    o.sourceTables = buildUnnamed52();
    o.writeDisposition = 'foo';
  }
  buildCounterJobConfigurationTableCopy--;
  return o;
}

void checkJobConfigurationTableCopy(api.JobConfigurationTableCopy o) {
  buildCounterJobConfigurationTableCopy++;
  if (buildCounterJobConfigurationTableCopy < 3) {
    unittest.expect(
      o.createDisposition!,
      unittest.equals('foo'),
    );
    checkEncryptionConfiguration(o.destinationEncryptionConfiguration!);
    var casted1 = (o.destinationExpirationTime!) as core.Map;
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
    checkTableReference(o.destinationTable!);
    unittest.expect(
      o.operationType!,
      unittest.equals('foo'),
    );
    checkTableReference(o.sourceTable!);
    checkUnnamed52(o.sourceTables!);
    unittest.expect(
      o.writeDisposition!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobConfigurationTableCopy--;
}

core.int buildCounterJobListJobs = 0;
api.JobListJobs buildJobListJobs() {
  final o = api.JobListJobs();
  buildCounterJobListJobs++;
  if (buildCounterJobListJobs < 3) {
    o.configuration = buildJobConfiguration();
    o.errorResult = buildErrorProto();
    o.id = 'foo';
    o.jobReference = buildJobReference();
    o.kind = 'foo';
    o.state = 'foo';
    o.statistics = buildJobStatistics();
    o.status = buildJobStatus();
    o.userEmail = 'foo';
  }
  buildCounterJobListJobs--;
  return o;
}

void checkJobListJobs(api.JobListJobs o) {
  buildCounterJobListJobs++;
  if (buildCounterJobListJobs < 3) {
    checkJobConfiguration(o.configuration!);
    checkErrorProto(o.errorResult!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkJobReference(o.jobReference!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkJobStatistics(o.statistics!);
    checkJobStatus(o.status!);
    unittest.expect(
      o.userEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobListJobs--;
}

core.List<api.JobListJobs> buildUnnamed53() => [
      buildJobListJobs(),
      buildJobListJobs(),
    ];

void checkUnnamed53(core.List<api.JobListJobs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobListJobs(o[0]);
  checkJobListJobs(o[1]);
}

core.int buildCounterJobList = 0;
api.JobList buildJobList() {
  final o = api.JobList();
  buildCounterJobList++;
  if (buildCounterJobList < 3) {
    o.etag = 'foo';
    o.jobs = buildUnnamed53();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterJobList--;
  return o;
}

void checkJobList(api.JobList o) {
  buildCounterJobList++;
  if (buildCounterJobList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed53(o.jobs!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobList--;
}

core.int buildCounterJobReference = 0;
api.JobReference buildJobReference() {
  final o = api.JobReference();
  buildCounterJobReference++;
  if (buildCounterJobReference < 3) {
    o.jobId = 'foo';
    o.location = 'foo';
    o.projectId = 'foo';
  }
  buildCounterJobReference--;
  return o;
}

void checkJobReference(api.JobReference o) {
  buildCounterJobReference++;
  if (buildCounterJobReference < 3) {
    unittest.expect(
      o.jobId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobReference--;
}

core.List<core.String> buildUnnamed54() => [
      'foo',
      'foo',
    ];

void checkUnnamed54(core.List<core.String> o) {
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

core.int buildCounterJobStatisticsReservationUsage = 0;
api.JobStatisticsReservationUsage buildJobStatisticsReservationUsage() {
  final o = api.JobStatisticsReservationUsage();
  buildCounterJobStatisticsReservationUsage++;
  if (buildCounterJobStatisticsReservationUsage < 3) {
    o.name = 'foo';
    o.slotMs = 'foo';
  }
  buildCounterJobStatisticsReservationUsage--;
  return o;
}

void checkJobStatisticsReservationUsage(api.JobStatisticsReservationUsage o) {
  buildCounterJobStatisticsReservationUsage++;
  if (buildCounterJobStatisticsReservationUsage < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.slotMs!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobStatisticsReservationUsage--;
}

core.List<api.JobStatisticsReservationUsage> buildUnnamed55() => [
      buildJobStatisticsReservationUsage(),
      buildJobStatisticsReservationUsage(),
    ];

void checkUnnamed55(core.List<api.JobStatisticsReservationUsage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobStatisticsReservationUsage(o[0]);
  checkJobStatisticsReservationUsage(o[1]);
}

core.int buildCounterJobStatistics = 0;
api.JobStatistics buildJobStatistics() {
  final o = api.JobStatistics();
  buildCounterJobStatistics++;
  if (buildCounterJobStatistics < 3) {
    o.completionRatio = 42.0;
    o.creationTime = 'foo';
    o.endTime = 'foo';
    o.extract = buildJobStatistics4();
    o.load = buildJobStatistics3();
    o.numChildJobs = 'foo';
    o.parentJobId = 'foo';
    o.query = buildJobStatistics2();
    o.quotaDeferments = buildUnnamed54();
    o.reservationUsage = buildUnnamed55();
    o.reservationId = 'foo';
    o.rowLevelSecurityStatistics = buildRowLevelSecurityStatistics();
    o.scriptStatistics = buildScriptStatistics();
    o.sessionInfo = buildSessionInfo();
    o.startTime = 'foo';
    o.totalBytesProcessed = 'foo';
    o.totalSlotMs = 'foo';
    o.transactionInfo = buildTransactionInfo();
  }
  buildCounterJobStatistics--;
  return o;
}

void checkJobStatistics(api.JobStatistics o) {
  buildCounterJobStatistics++;
  if (buildCounterJobStatistics < 3) {
    unittest.expect(
      o.completionRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkJobStatistics4(o.extract!);
    checkJobStatistics3(o.load!);
    unittest.expect(
      o.numChildJobs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentJobId!,
      unittest.equals('foo'),
    );
    checkJobStatistics2(o.query!);
    checkUnnamed54(o.quotaDeferments!);
    checkUnnamed55(o.reservationUsage!);
    unittest.expect(
      o.reservationId!,
      unittest.equals('foo'),
    );
    checkRowLevelSecurityStatistics(o.rowLevelSecurityStatistics!);
    checkScriptStatistics(o.scriptStatistics!);
    checkSessionInfo(o.sessionInfo!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalBytesProcessed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSlotMs!,
      unittest.equals('foo'),
    );
    checkTransactionInfo(o.transactionInfo!);
  }
  buildCounterJobStatistics--;
}

core.List<api.ExplainQueryStage> buildUnnamed56() => [
      buildExplainQueryStage(),
      buildExplainQueryStage(),
    ];

void checkUnnamed56(core.List<api.ExplainQueryStage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExplainQueryStage(o[0]);
  checkExplainQueryStage(o[1]);
}

core.List<api.RoutineReference> buildUnnamed57() => [
      buildRoutineReference(),
      buildRoutineReference(),
    ];

void checkUnnamed57(core.List<api.RoutineReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoutineReference(o[0]);
  checkRoutineReference(o[1]);
}

core.List<api.TableReference> buildUnnamed58() => [
      buildTableReference(),
      buildTableReference(),
    ];

void checkUnnamed58(core.List<api.TableReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableReference(o[0]);
  checkTableReference(o[1]);
}

core.int buildCounterJobStatistics2ReservationUsage = 0;
api.JobStatistics2ReservationUsage buildJobStatistics2ReservationUsage() {
  final o = api.JobStatistics2ReservationUsage();
  buildCounterJobStatistics2ReservationUsage++;
  if (buildCounterJobStatistics2ReservationUsage < 3) {
    o.name = 'foo';
    o.slotMs = 'foo';
  }
  buildCounterJobStatistics2ReservationUsage--;
  return o;
}

void checkJobStatistics2ReservationUsage(api.JobStatistics2ReservationUsage o) {
  buildCounterJobStatistics2ReservationUsage++;
  if (buildCounterJobStatistics2ReservationUsage < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.slotMs!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobStatistics2ReservationUsage--;
}

core.List<api.JobStatistics2ReservationUsage> buildUnnamed59() => [
      buildJobStatistics2ReservationUsage(),
      buildJobStatistics2ReservationUsage(),
    ];

void checkUnnamed59(core.List<api.JobStatistics2ReservationUsage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobStatistics2ReservationUsage(o[0]);
  checkJobStatistics2ReservationUsage(o[1]);
}

core.List<api.QueryTimelineSample> buildUnnamed60() => [
      buildQueryTimelineSample(),
      buildQueryTimelineSample(),
    ];

void checkUnnamed60(core.List<api.QueryTimelineSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryTimelineSample(o[0]);
  checkQueryTimelineSample(o[1]);
}

core.List<api.QueryParameter> buildUnnamed61() => [
      buildQueryParameter(),
      buildQueryParameter(),
    ];

void checkUnnamed61(core.List<api.QueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameter(o[0]);
  checkQueryParameter(o[1]);
}

core.int buildCounterJobStatistics2 = 0;
api.JobStatistics2 buildJobStatistics2() {
  final o = api.JobStatistics2();
  buildCounterJobStatistics2++;
  if (buildCounterJobStatistics2 < 3) {
    o.biEngineStatistics = buildBiEngineStatistics();
    o.billingTier = 42;
    o.cacheHit = true;
    o.ddlAffectedRowAccessPolicyCount = 'foo';
    o.ddlDestinationTable = buildTableReference();
    o.ddlOperationPerformed = 'foo';
    o.ddlTargetDataset = buildDatasetReference();
    o.ddlTargetRoutine = buildRoutineReference();
    o.ddlTargetRowAccessPolicy = buildRowAccessPolicyReference();
    o.ddlTargetTable = buildTableReference();
    o.dmlStats = buildDmlStatistics();
    o.estimatedBytesProcessed = 'foo';
    o.modelTraining = buildBigQueryModelTraining();
    o.modelTrainingCurrentIteration = 42;
    o.modelTrainingExpectedTotalIteration = 'foo';
    o.numDmlAffectedRows = 'foo';
    o.queryPlan = buildUnnamed56();
    o.referencedRoutines = buildUnnamed57();
    o.referencedTables = buildUnnamed58();
    o.reservationUsage = buildUnnamed59();
    o.schema = buildTableSchema();
    o.statementType = 'foo';
    o.timeline = buildUnnamed60();
    o.totalBytesBilled = 'foo';
    o.totalBytesProcessed = 'foo';
    o.totalBytesProcessedAccuracy = 'foo';
    o.totalPartitionsProcessed = 'foo';
    o.totalSlotMs = 'foo';
    o.undeclaredQueryParameters = buildUnnamed61();
  }
  buildCounterJobStatistics2--;
  return o;
}

void checkJobStatistics2(api.JobStatistics2 o) {
  buildCounterJobStatistics2++;
  if (buildCounterJobStatistics2 < 3) {
    checkBiEngineStatistics(o.biEngineStatistics!);
    unittest.expect(
      o.billingTier!,
      unittest.equals(42),
    );
    unittest.expect(o.cacheHit!, unittest.isTrue);
    unittest.expect(
      o.ddlAffectedRowAccessPolicyCount!,
      unittest.equals('foo'),
    );
    checkTableReference(o.ddlDestinationTable!);
    unittest.expect(
      o.ddlOperationPerformed!,
      unittest.equals('foo'),
    );
    checkDatasetReference(o.ddlTargetDataset!);
    checkRoutineReference(o.ddlTargetRoutine!);
    checkRowAccessPolicyReference(o.ddlTargetRowAccessPolicy!);
    checkTableReference(o.ddlTargetTable!);
    checkDmlStatistics(o.dmlStats!);
    unittest.expect(
      o.estimatedBytesProcessed!,
      unittest.equals('foo'),
    );
    checkBigQueryModelTraining(o.modelTraining!);
    unittest.expect(
      o.modelTrainingCurrentIteration!,
      unittest.equals(42),
    );
    unittest.expect(
      o.modelTrainingExpectedTotalIteration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numDmlAffectedRows!,
      unittest.equals('foo'),
    );
    checkUnnamed56(o.queryPlan!);
    checkUnnamed57(o.referencedRoutines!);
    checkUnnamed58(o.referencedTables!);
    checkUnnamed59(o.reservationUsage!);
    checkTableSchema(o.schema!);
    unittest.expect(
      o.statementType!,
      unittest.equals('foo'),
    );
    checkUnnamed60(o.timeline!);
    unittest.expect(
      o.totalBytesBilled!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalBytesProcessed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalBytesProcessedAccuracy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalPartitionsProcessed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSlotMs!,
      unittest.equals('foo'),
    );
    checkUnnamed61(o.undeclaredQueryParameters!);
  }
  buildCounterJobStatistics2--;
}

core.int buildCounterJobStatistics3 = 0;
api.JobStatistics3 buildJobStatistics3() {
  final o = api.JobStatistics3();
  buildCounterJobStatistics3++;
  if (buildCounterJobStatistics3 < 3) {
    o.badRecords = 'foo';
    o.inputFileBytes = 'foo';
    o.inputFiles = 'foo';
    o.outputBytes = 'foo';
    o.outputRows = 'foo';
  }
  buildCounterJobStatistics3--;
  return o;
}

void checkJobStatistics3(api.JobStatistics3 o) {
  buildCounterJobStatistics3++;
  if (buildCounterJobStatistics3 < 3) {
    unittest.expect(
      o.badRecords!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputFileBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputFiles!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputRows!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobStatistics3--;
}

core.List<core.String> buildUnnamed62() => [
      'foo',
      'foo',
    ];

void checkUnnamed62(core.List<core.String> o) {
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

core.int buildCounterJobStatistics4 = 0;
api.JobStatistics4 buildJobStatistics4() {
  final o = api.JobStatistics4();
  buildCounterJobStatistics4++;
  if (buildCounterJobStatistics4 < 3) {
    o.destinationUriFileCounts = buildUnnamed62();
    o.inputBytes = 'foo';
  }
  buildCounterJobStatistics4--;
  return o;
}

void checkJobStatistics4(api.JobStatistics4 o) {
  buildCounterJobStatistics4++;
  if (buildCounterJobStatistics4 < 3) {
    checkUnnamed62(o.destinationUriFileCounts!);
    unittest.expect(
      o.inputBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobStatistics4--;
}

core.List<api.ErrorProto> buildUnnamed63() => [
      buildErrorProto(),
      buildErrorProto(),
    ];

void checkUnnamed63(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

core.int buildCounterJobStatus = 0;
api.JobStatus buildJobStatus() {
  final o = api.JobStatus();
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    o.errorResult = buildErrorProto();
    o.errors = buildUnnamed63();
    o.state = 'foo';
  }
  buildCounterJobStatus--;
  return o;
}

void checkJobStatus(api.JobStatus o) {
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    checkErrorProto(o.errorResult!);
    checkUnnamed63(o.errors!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobStatus--;
}

api.JsonObject buildJsonObject() {
  final o = api.JsonObject();
  o['a'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['b'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkJsonObject(api.JsonObject o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted2 = (o['a']!) as core.Map;
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
  var casted3 = (o['b']!) as core.Map;
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
}

core.List<api.Model> buildUnnamed64() => [
      buildModel(),
      buildModel(),
    ];

void checkUnnamed64(core.List<api.Model> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkModel(o[0]);
  checkModel(o[1]);
}

core.int buildCounterListModelsResponse = 0;
api.ListModelsResponse buildListModelsResponse() {
  final o = api.ListModelsResponse();
  buildCounterListModelsResponse++;
  if (buildCounterListModelsResponse < 3) {
    o.models = buildUnnamed64();
    o.nextPageToken = 'foo';
  }
  buildCounterListModelsResponse--;
  return o;
}

void checkListModelsResponse(api.ListModelsResponse o) {
  buildCounterListModelsResponse++;
  if (buildCounterListModelsResponse < 3) {
    checkUnnamed64(o.models!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListModelsResponse--;
}

core.List<api.Routine> buildUnnamed65() => [
      buildRoutine(),
      buildRoutine(),
    ];

void checkUnnamed65(core.List<api.Routine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoutine(o[0]);
  checkRoutine(o[1]);
}

core.int buildCounterListRoutinesResponse = 0;
api.ListRoutinesResponse buildListRoutinesResponse() {
  final o = api.ListRoutinesResponse();
  buildCounterListRoutinesResponse++;
  if (buildCounterListRoutinesResponse < 3) {
    o.nextPageToken = 'foo';
    o.routines = buildUnnamed65();
  }
  buildCounterListRoutinesResponse--;
  return o;
}

void checkListRoutinesResponse(api.ListRoutinesResponse o) {
  buildCounterListRoutinesResponse++;
  if (buildCounterListRoutinesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed65(o.routines!);
  }
  buildCounterListRoutinesResponse--;
}

core.List<api.RowAccessPolicy> buildUnnamed66() => [
      buildRowAccessPolicy(),
      buildRowAccessPolicy(),
    ];

void checkUnnamed66(core.List<api.RowAccessPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRowAccessPolicy(o[0]);
  checkRowAccessPolicy(o[1]);
}

core.int buildCounterListRowAccessPoliciesResponse = 0;
api.ListRowAccessPoliciesResponse buildListRowAccessPoliciesResponse() {
  final o = api.ListRowAccessPoliciesResponse();
  buildCounterListRowAccessPoliciesResponse++;
  if (buildCounterListRowAccessPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.rowAccessPolicies = buildUnnamed66();
  }
  buildCounterListRowAccessPoliciesResponse--;
  return o;
}

void checkListRowAccessPoliciesResponse(api.ListRowAccessPoliciesResponse o) {
  buildCounterListRowAccessPoliciesResponse++;
  if (buildCounterListRowAccessPoliciesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed66(o.rowAccessPolicies!);
  }
  buildCounterListRowAccessPoliciesResponse--;
}

core.int buildCounterLocationMetadata = 0;
api.LocationMetadata buildLocationMetadata() {
  final o = api.LocationMetadata();
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    o.legacyLocationId = 'foo';
  }
  buildCounterLocationMetadata--;
  return o;
}

void checkLocationMetadata(api.LocationMetadata o) {
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    unittest.expect(
      o.legacyLocationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocationMetadata--;
}

core.int buildCounterMaterializedViewDefinition = 0;
api.MaterializedViewDefinition buildMaterializedViewDefinition() {
  final o = api.MaterializedViewDefinition();
  buildCounterMaterializedViewDefinition++;
  if (buildCounterMaterializedViewDefinition < 3) {
    o.enableRefresh = true;
    o.lastRefreshTime = 'foo';
    o.query = 'foo';
    o.refreshIntervalMs = 'foo';
  }
  buildCounterMaterializedViewDefinition--;
  return o;
}

void checkMaterializedViewDefinition(api.MaterializedViewDefinition o) {
  buildCounterMaterializedViewDefinition++;
  if (buildCounterMaterializedViewDefinition < 3) {
    unittest.expect(o.enableRefresh!, unittest.isTrue);
    unittest.expect(
      o.lastRefreshTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.refreshIntervalMs!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaterializedViewDefinition--;
}

core.List<api.StandardSqlField> buildUnnamed67() => [
      buildStandardSqlField(),
      buildStandardSqlField(),
    ];

void checkUnnamed67(core.List<api.StandardSqlField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardSqlField(o[0]);
  checkStandardSqlField(o[1]);
}

core.List<api.StandardSqlField> buildUnnamed68() => [
      buildStandardSqlField(),
      buildStandardSqlField(),
    ];

void checkUnnamed68(core.List<api.StandardSqlField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardSqlField(o[0]);
  checkStandardSqlField(o[1]);
}

core.Map<core.String, core.String> buildUnnamed69() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed69(core.Map<core.String, core.String> o) {
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

core.List<api.TrainingRun> buildUnnamed70() => [
      buildTrainingRun(),
      buildTrainingRun(),
    ];

void checkUnnamed70(core.List<api.TrainingRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrainingRun(o[0]);
  checkTrainingRun(o[1]);
}

core.int buildCounterModel = 0;
api.Model buildModel() {
  final o = api.Model();
  buildCounterModel++;
  if (buildCounterModel < 3) {
    o.bestTrialId = 'foo';
    o.creationTime = 'foo';
    o.description = 'foo';
    o.encryptionConfiguration = buildEncryptionConfiguration();
    o.etag = 'foo';
    o.expirationTime = 'foo';
    o.featureColumns = buildUnnamed67();
    o.friendlyName = 'foo';
    o.labelColumns = buildUnnamed68();
    o.labels = buildUnnamed69();
    o.lastModifiedTime = 'foo';
    o.location = 'foo';
    o.modelReference = buildModelReference();
    o.modelType = 'foo';
    o.trainingRuns = buildUnnamed70();
  }
  buildCounterModel--;
  return o;
}

void checkModel(api.Model o) {
  buildCounterModel++;
  if (buildCounterModel < 3) {
    unittest.expect(
      o.bestTrialId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkEncryptionConfiguration(o.encryptionConfiguration!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expirationTime!,
      unittest.equals('foo'),
    );
    checkUnnamed67(o.featureColumns!);
    unittest.expect(
      o.friendlyName!,
      unittest.equals('foo'),
    );
    checkUnnamed68(o.labelColumns!);
    checkUnnamed69(o.labels!);
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    checkModelReference(o.modelReference!);
    unittest.expect(
      o.modelType!,
      unittest.equals('foo'),
    );
    checkUnnamed70(o.trainingRuns!);
  }
  buildCounterModel--;
}

core.List<core.String> buildUnnamed71() => [
      'foo',
      'foo',
    ];

void checkUnnamed71(core.List<core.String> o) {
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

core.int buildCounterModelDefinitionModelOptions = 0;
api.ModelDefinitionModelOptions buildModelDefinitionModelOptions() {
  final o = api.ModelDefinitionModelOptions();
  buildCounterModelDefinitionModelOptions++;
  if (buildCounterModelDefinitionModelOptions < 3) {
    o.labels = buildUnnamed71();
    o.lossType = 'foo';
    o.modelType = 'foo';
  }
  buildCounterModelDefinitionModelOptions--;
  return o;
}

void checkModelDefinitionModelOptions(api.ModelDefinitionModelOptions o) {
  buildCounterModelDefinitionModelOptions++;
  if (buildCounterModelDefinitionModelOptions < 3) {
    checkUnnamed71(o.labels!);
    unittest.expect(
      o.lossType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modelType!,
      unittest.equals('foo'),
    );
  }
  buildCounterModelDefinitionModelOptions--;
}

core.List<api.BqmlTrainingRun> buildUnnamed72() => [
      buildBqmlTrainingRun(),
      buildBqmlTrainingRun(),
    ];

void checkUnnamed72(core.List<api.BqmlTrainingRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBqmlTrainingRun(o[0]);
  checkBqmlTrainingRun(o[1]);
}

core.int buildCounterModelDefinition = 0;
api.ModelDefinition buildModelDefinition() {
  final o = api.ModelDefinition();
  buildCounterModelDefinition++;
  if (buildCounterModelDefinition < 3) {
    o.modelOptions = buildModelDefinitionModelOptions();
    o.trainingRuns = buildUnnamed72();
  }
  buildCounterModelDefinition--;
  return o;
}

void checkModelDefinition(api.ModelDefinition o) {
  buildCounterModelDefinition++;
  if (buildCounterModelDefinition < 3) {
    checkModelDefinitionModelOptions(o.modelOptions!);
    checkUnnamed72(o.trainingRuns!);
  }
  buildCounterModelDefinition--;
}

core.int buildCounterModelReference = 0;
api.ModelReference buildModelReference() {
  final o = api.ModelReference();
  buildCounterModelReference++;
  if (buildCounterModelReference < 3) {
    o.datasetId = 'foo';
    o.modelId = 'foo';
    o.projectId = 'foo';
  }
  buildCounterModelReference--;
  return o;
}

void checkModelReference(api.ModelReference o) {
  buildCounterModelReference++;
  if (buildCounterModelReference < 3) {
    unittest.expect(
      o.datasetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterModelReference--;
}

core.List<api.ConfusionMatrix> buildUnnamed73() => [
      buildConfusionMatrix(),
      buildConfusionMatrix(),
    ];

void checkUnnamed73(core.List<api.ConfusionMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfusionMatrix(o[0]);
  checkConfusionMatrix(o[1]);
}

core.int buildCounterMultiClassClassificationMetrics = 0;
api.MultiClassClassificationMetrics buildMultiClassClassificationMetrics() {
  final o = api.MultiClassClassificationMetrics();
  buildCounterMultiClassClassificationMetrics++;
  if (buildCounterMultiClassClassificationMetrics < 3) {
    o.aggregateClassificationMetrics = buildAggregateClassificationMetrics();
    o.confusionMatrixList = buildUnnamed73();
  }
  buildCounterMultiClassClassificationMetrics--;
  return o;
}

void checkMultiClassClassificationMetrics(
    api.MultiClassClassificationMetrics o) {
  buildCounterMultiClassClassificationMetrics++;
  if (buildCounterMultiClassClassificationMetrics < 3) {
    checkAggregateClassificationMetrics(o.aggregateClassificationMetrics!);
    checkUnnamed73(o.confusionMatrixList!);
  }
  buildCounterMultiClassClassificationMetrics--;
}

core.int buildCounterParquetOptions = 0;
api.ParquetOptions buildParquetOptions() {
  final o = api.ParquetOptions();
  buildCounterParquetOptions++;
  if (buildCounterParquetOptions < 3) {
    o.enableListInference = true;
    o.enumAsString = true;
  }
  buildCounterParquetOptions--;
  return o;
}

void checkParquetOptions(api.ParquetOptions o) {
  buildCounterParquetOptions++;
  if (buildCounterParquetOptions < 3) {
    unittest.expect(o.enableListInference!, unittest.isTrue);
    unittest.expect(o.enumAsString!, unittest.isTrue);
  }
  buildCounterParquetOptions--;
}

core.List<api.AuditConfig> buildUnnamed74() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed74(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed75() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed75(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed74();
    o.bindings = buildUnnamed75();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed74(o.auditConfigs!);
    checkUnnamed75(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.int buildCounterProjectListProjects = 0;
api.ProjectListProjects buildProjectListProjects() {
  final o = api.ProjectListProjects();
  buildCounterProjectListProjects++;
  if (buildCounterProjectListProjects < 3) {
    o.friendlyName = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.numericId = 'foo';
    o.projectReference = buildProjectReference();
  }
  buildCounterProjectListProjects--;
  return o;
}

void checkProjectListProjects(api.ProjectListProjects o) {
  buildCounterProjectListProjects++;
  if (buildCounterProjectListProjects < 3) {
    unittest.expect(
      o.friendlyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numericId!,
      unittest.equals('foo'),
    );
    checkProjectReference(o.projectReference!);
  }
  buildCounterProjectListProjects--;
}

core.List<api.ProjectListProjects> buildUnnamed76() => [
      buildProjectListProjects(),
      buildProjectListProjects(),
    ];

void checkUnnamed76(core.List<api.ProjectListProjects> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProjectListProjects(o[0]);
  checkProjectListProjects(o[1]);
}

core.int buildCounterProjectList = 0;
api.ProjectList buildProjectList() {
  final o = api.ProjectList();
  buildCounterProjectList++;
  if (buildCounterProjectList < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.projects = buildUnnamed76();
    o.totalItems = 42;
  }
  buildCounterProjectList--;
  return o;
}

void checkProjectList(api.ProjectList o) {
  buildCounterProjectList++;
  if (buildCounterProjectList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed76(o.projects!);
    unittest.expect(
      o.totalItems!,
      unittest.equals(42),
    );
  }
  buildCounterProjectList--;
}

core.int buildCounterProjectReference = 0;
api.ProjectReference buildProjectReference() {
  final o = api.ProjectReference();
  buildCounterProjectReference++;
  if (buildCounterProjectReference < 3) {
    o.projectId = 'foo';
  }
  buildCounterProjectReference--;
  return o;
}

void checkProjectReference(api.ProjectReference o) {
  buildCounterProjectReference++;
  if (buildCounterProjectReference < 3) {
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterProjectReference--;
}

core.int buildCounterQueryParameter = 0;
api.QueryParameter buildQueryParameter() {
  final o = api.QueryParameter();
  buildCounterQueryParameter++;
  if (buildCounterQueryParameter < 3) {
    o.name = 'foo';
    o.parameterType = buildQueryParameterType();
    o.parameterValue = buildQueryParameterValue();
  }
  buildCounterQueryParameter--;
  return o;
}

void checkQueryParameter(api.QueryParameter o) {
  buildCounterQueryParameter++;
  if (buildCounterQueryParameter < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkQueryParameterType(o.parameterType!);
    checkQueryParameterValue(o.parameterValue!);
  }
  buildCounterQueryParameter--;
}

core.int buildCounterQueryParameterTypeStructTypes = 0;
api.QueryParameterTypeStructTypes buildQueryParameterTypeStructTypes() {
  final o = api.QueryParameterTypeStructTypes();
  buildCounterQueryParameterTypeStructTypes++;
  if (buildCounterQueryParameterTypeStructTypes < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.type = buildQueryParameterType();
  }
  buildCounterQueryParameterTypeStructTypes--;
  return o;
}

void checkQueryParameterTypeStructTypes(api.QueryParameterTypeStructTypes o) {
  buildCounterQueryParameterTypeStructTypes++;
  if (buildCounterQueryParameterTypeStructTypes < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkQueryParameterType(o.type!);
  }
  buildCounterQueryParameterTypeStructTypes--;
}

core.List<api.QueryParameterTypeStructTypes> buildUnnamed77() => [
      buildQueryParameterTypeStructTypes(),
      buildQueryParameterTypeStructTypes(),
    ];

void checkUnnamed77(core.List<api.QueryParameterTypeStructTypes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameterTypeStructTypes(o[0]);
  checkQueryParameterTypeStructTypes(o[1]);
}

core.int buildCounterQueryParameterType = 0;
api.QueryParameterType buildQueryParameterType() {
  final o = api.QueryParameterType();
  buildCounterQueryParameterType++;
  if (buildCounterQueryParameterType < 3) {
    o.arrayType = buildQueryParameterType();
    o.structTypes = buildUnnamed77();
    o.type = 'foo';
  }
  buildCounterQueryParameterType--;
  return o;
}

void checkQueryParameterType(api.QueryParameterType o) {
  buildCounterQueryParameterType++;
  if (buildCounterQueryParameterType < 3) {
    checkQueryParameterType(o.arrayType!);
    checkUnnamed77(o.structTypes!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryParameterType--;
}

core.List<api.QueryParameterValue> buildUnnamed78() => [
      buildQueryParameterValue(),
      buildQueryParameterValue(),
    ];

void checkUnnamed78(core.List<api.QueryParameterValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameterValue(o[0]);
  checkQueryParameterValue(o[1]);
}

core.Map<core.String, api.QueryParameterValue> buildUnnamed79() => {
      'x': buildQueryParameterValue(),
      'y': buildQueryParameterValue(),
    };

void checkUnnamed79(core.Map<core.String, api.QueryParameterValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameterValue(o['x']!);
  checkQueryParameterValue(o['y']!);
}

core.int buildCounterQueryParameterValue = 0;
api.QueryParameterValue buildQueryParameterValue() {
  final o = api.QueryParameterValue();
  buildCounterQueryParameterValue++;
  if (buildCounterQueryParameterValue < 3) {
    o.arrayValues = buildUnnamed78();
    o.structValues = buildUnnamed79();
    o.value = 'foo';
  }
  buildCounterQueryParameterValue--;
  return o;
}

void checkQueryParameterValue(api.QueryParameterValue o) {
  buildCounterQueryParameterValue++;
  if (buildCounterQueryParameterValue < 3) {
    checkUnnamed78(o.arrayValues!);
    checkUnnamed79(o.structValues!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryParameterValue--;
}

core.List<api.ConnectionProperty> buildUnnamed80() => [
      buildConnectionProperty(),
      buildConnectionProperty(),
    ];

void checkUnnamed80(core.List<api.ConnectionProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionProperty(o[0]);
  checkConnectionProperty(o[1]);
}

core.Map<core.String, core.String> buildUnnamed81() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed81(core.Map<core.String, core.String> o) {
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

core.List<api.QueryParameter> buildUnnamed82() => [
      buildQueryParameter(),
      buildQueryParameter(),
    ];

void checkUnnamed82(core.List<api.QueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameter(o[0]);
  checkQueryParameter(o[1]);
}

core.int buildCounterQueryRequest = 0;
api.QueryRequest buildQueryRequest() {
  final o = api.QueryRequest();
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    o.connectionProperties = buildUnnamed80();
    o.createSession = true;
    o.defaultDataset = buildDatasetReference();
    o.dryRun = true;
    o.kind = 'foo';
    o.labels = buildUnnamed81();
    o.location = 'foo';
    o.maxResults = 42;
    o.maximumBytesBilled = 'foo';
    o.parameterMode = 'foo';
    o.preserveNulls = true;
    o.query = 'foo';
    o.queryParameters = buildUnnamed82();
    o.requestId = 'foo';
    o.timeoutMs = 42;
    o.useLegacySql = true;
    o.useQueryCache = true;
  }
  buildCounterQueryRequest--;
  return o;
}

void checkQueryRequest(api.QueryRequest o) {
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    checkUnnamed80(o.connectionProperties!);
    unittest.expect(o.createSession!, unittest.isTrue);
    checkDatasetReference(o.defaultDataset!);
    unittest.expect(o.dryRun!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed81(o.labels!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maximumBytesBilled!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parameterMode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.preserveNulls!, unittest.isTrue);
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    checkUnnamed82(o.queryParameters!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeoutMs!,
      unittest.equals(42),
    );
    unittest.expect(o.useLegacySql!, unittest.isTrue);
    unittest.expect(o.useQueryCache!, unittest.isTrue);
  }
  buildCounterQueryRequest--;
}

core.List<api.ErrorProto> buildUnnamed83() => [
      buildErrorProto(),
      buildErrorProto(),
    ];

void checkUnnamed83(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

core.List<api.TableRow> buildUnnamed84() => [
      buildTableRow(),
      buildTableRow(),
    ];

void checkUnnamed84(core.List<api.TableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableRow(o[0]);
  checkTableRow(o[1]);
}

core.int buildCounterQueryResponse = 0;
api.QueryResponse buildQueryResponse() {
  final o = api.QueryResponse();
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    o.cacheHit = true;
    o.dmlStats = buildDmlStatistics();
    o.errors = buildUnnamed83();
    o.jobComplete = true;
    o.jobReference = buildJobReference();
    o.kind = 'foo';
    o.numDmlAffectedRows = 'foo';
    o.pageToken = 'foo';
    o.rows = buildUnnamed84();
    o.schema = buildTableSchema();
    o.sessionInfo = buildSessionInfo();
    o.totalBytesProcessed = 'foo';
    o.totalRows = 'foo';
  }
  buildCounterQueryResponse--;
  return o;
}

void checkQueryResponse(api.QueryResponse o) {
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    unittest.expect(o.cacheHit!, unittest.isTrue);
    checkDmlStatistics(o.dmlStats!);
    checkUnnamed83(o.errors!);
    unittest.expect(o.jobComplete!, unittest.isTrue);
    checkJobReference(o.jobReference!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numDmlAffectedRows!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed84(o.rows!);
    checkTableSchema(o.schema!);
    checkSessionInfo(o.sessionInfo!);
    unittest.expect(
      o.totalBytesProcessed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalRows!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryResponse--;
}

core.int buildCounterQueryTimelineSample = 0;
api.QueryTimelineSample buildQueryTimelineSample() {
  final o = api.QueryTimelineSample();
  buildCounterQueryTimelineSample++;
  if (buildCounterQueryTimelineSample < 3) {
    o.activeUnits = 'foo';
    o.completedUnits = 'foo';
    o.elapsedMs = 'foo';
    o.pendingUnits = 'foo';
    o.totalSlotMs = 'foo';
  }
  buildCounterQueryTimelineSample--;
  return o;
}

void checkQueryTimelineSample(api.QueryTimelineSample o) {
  buildCounterQueryTimelineSample++;
  if (buildCounterQueryTimelineSample < 3) {
    unittest.expect(
      o.activeUnits!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.completedUnits!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.elapsedMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pendingUnits!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSlotMs!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryTimelineSample--;
}

core.int buildCounterRangePartitioningRange = 0;
api.RangePartitioningRange buildRangePartitioningRange() {
  final o = api.RangePartitioningRange();
  buildCounterRangePartitioningRange++;
  if (buildCounterRangePartitioningRange < 3) {
    o.end = 'foo';
    o.interval = 'foo';
    o.start = 'foo';
  }
  buildCounterRangePartitioningRange--;
  return o;
}

void checkRangePartitioningRange(api.RangePartitioningRange o) {
  buildCounterRangePartitioningRange++;
  if (buildCounterRangePartitioningRange < 3) {
    unittest.expect(
      o.end!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.interval!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.start!,
      unittest.equals('foo'),
    );
  }
  buildCounterRangePartitioningRange--;
}

core.int buildCounterRangePartitioning = 0;
api.RangePartitioning buildRangePartitioning() {
  final o = api.RangePartitioning();
  buildCounterRangePartitioning++;
  if (buildCounterRangePartitioning < 3) {
    o.field = 'foo';
    o.range = buildRangePartitioningRange();
  }
  buildCounterRangePartitioning--;
  return o;
}

void checkRangePartitioning(api.RangePartitioning o) {
  buildCounterRangePartitioning++;
  if (buildCounterRangePartitioning < 3) {
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    checkRangePartitioningRange(o.range!);
  }
  buildCounterRangePartitioning--;
}

core.int buildCounterRankingMetrics = 0;
api.RankingMetrics buildRankingMetrics() {
  final o = api.RankingMetrics();
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

void checkRankingMetrics(api.RankingMetrics o) {
  buildCounterRankingMetrics++;
  if (buildCounterRankingMetrics < 3) {
    unittest.expect(
      o.averageRank!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.meanAveragePrecision!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.meanSquaredError!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.normalizedDiscountedCumulativeGain!,
      unittest.equals(42.0),
    );
  }
  buildCounterRankingMetrics--;
}

core.int buildCounterRegressionMetrics = 0;
api.RegressionMetrics buildRegressionMetrics() {
  final o = api.RegressionMetrics();
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

void checkRegressionMetrics(api.RegressionMetrics o) {
  buildCounterRegressionMetrics++;
  if (buildCounterRegressionMetrics < 3) {
    unittest.expect(
      o.meanAbsoluteError!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.meanSquaredError!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.meanSquaredLogError!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.medianAbsoluteError!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.rSquared!,
      unittest.equals(42.0),
    );
  }
  buildCounterRegressionMetrics--;
}

core.List<api.Argument> buildUnnamed85() => [
      buildArgument(),
      buildArgument(),
    ];

void checkUnnamed85(core.List<api.Argument> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArgument(o[0]);
  checkArgument(o[1]);
}

core.List<core.String> buildUnnamed86() => [
      'foo',
      'foo',
    ];

void checkUnnamed86(core.List<core.String> o) {
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

core.int buildCounterRoutine = 0;
api.Routine buildRoutine() {
  final o = api.Routine();
  buildCounterRoutine++;
  if (buildCounterRoutine < 3) {
    o.arguments = buildUnnamed85();
    o.creationTime = 'foo';
    o.definitionBody = 'foo';
    o.description = 'foo';
    o.determinismLevel = 'foo';
    o.etag = 'foo';
    o.importedLibraries = buildUnnamed86();
    o.language = 'foo';
    o.lastModifiedTime = 'foo';
    o.returnTableType = buildStandardSqlTableType();
    o.returnType = buildStandardSqlDataType();
    o.routineReference = buildRoutineReference();
    o.routineType = 'foo';
    o.strictMode = true;
  }
  buildCounterRoutine--;
  return o;
}

void checkRoutine(api.Routine o) {
  buildCounterRoutine++;
  if (buildCounterRoutine < 3) {
    checkUnnamed85(o.arguments!);
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.definitionBody!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.determinismLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed86(o.importedLibraries!);
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    checkStandardSqlTableType(o.returnTableType!);
    checkStandardSqlDataType(o.returnType!);
    checkRoutineReference(o.routineReference!);
    unittest.expect(
      o.routineType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.strictMode!, unittest.isTrue);
  }
  buildCounterRoutine--;
}

core.int buildCounterRoutineReference = 0;
api.RoutineReference buildRoutineReference() {
  final o = api.RoutineReference();
  buildCounterRoutineReference++;
  if (buildCounterRoutineReference < 3) {
    o.datasetId = 'foo';
    o.projectId = 'foo';
    o.routineId = 'foo';
  }
  buildCounterRoutineReference--;
  return o;
}

void checkRoutineReference(api.RoutineReference o) {
  buildCounterRoutineReference++;
  if (buildCounterRoutineReference < 3) {
    unittest.expect(
      o.datasetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.routineId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRoutineReference--;
}

core.List<api.Entry> buildUnnamed87() => [
      buildEntry(),
      buildEntry(),
    ];

void checkUnnamed87(core.List<api.Entry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntry(o[0]);
  checkEntry(o[1]);
}

core.int buildCounterRow = 0;
api.Row buildRow() {
  final o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.actualLabel = 'foo';
    o.entries = buildUnnamed87();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    unittest.expect(
      o.actualLabel!,
      unittest.equals('foo'),
    );
    checkUnnamed87(o.entries!);
  }
  buildCounterRow--;
}

core.int buildCounterRowAccessPolicy = 0;
api.RowAccessPolicy buildRowAccessPolicy() {
  final o = api.RowAccessPolicy();
  buildCounterRowAccessPolicy++;
  if (buildCounterRowAccessPolicy < 3) {
    o.creationTime = 'foo';
    o.etag = 'foo';
    o.filterPredicate = 'foo';
    o.lastModifiedTime = 'foo';
    o.rowAccessPolicyReference = buildRowAccessPolicyReference();
  }
  buildCounterRowAccessPolicy--;
  return o;
}

void checkRowAccessPolicy(api.RowAccessPolicy o) {
  buildCounterRowAccessPolicy++;
  if (buildCounterRowAccessPolicy < 3) {
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filterPredicate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    checkRowAccessPolicyReference(o.rowAccessPolicyReference!);
  }
  buildCounterRowAccessPolicy--;
}

core.int buildCounterRowAccessPolicyReference = 0;
api.RowAccessPolicyReference buildRowAccessPolicyReference() {
  final o = api.RowAccessPolicyReference();
  buildCounterRowAccessPolicyReference++;
  if (buildCounterRowAccessPolicyReference < 3) {
    o.datasetId = 'foo';
    o.policyId = 'foo';
    o.projectId = 'foo';
    o.tableId = 'foo';
  }
  buildCounterRowAccessPolicyReference--;
  return o;
}

void checkRowAccessPolicyReference(api.RowAccessPolicyReference o) {
  buildCounterRowAccessPolicyReference++;
  if (buildCounterRowAccessPolicyReference < 3) {
    unittest.expect(
      o.datasetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tableId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRowAccessPolicyReference--;
}

core.int buildCounterRowLevelSecurityStatistics = 0;
api.RowLevelSecurityStatistics buildRowLevelSecurityStatistics() {
  final o = api.RowLevelSecurityStatistics();
  buildCounterRowLevelSecurityStatistics++;
  if (buildCounterRowLevelSecurityStatistics < 3) {
    o.rowLevelSecurityApplied = true;
  }
  buildCounterRowLevelSecurityStatistics--;
  return o;
}

void checkRowLevelSecurityStatistics(api.RowLevelSecurityStatistics o) {
  buildCounterRowLevelSecurityStatistics++;
  if (buildCounterRowLevelSecurityStatistics < 3) {
    unittest.expect(o.rowLevelSecurityApplied!, unittest.isTrue);
  }
  buildCounterRowLevelSecurityStatistics--;
}

core.int buildCounterScriptStackFrame = 0;
api.ScriptStackFrame buildScriptStackFrame() {
  final o = api.ScriptStackFrame();
  buildCounterScriptStackFrame++;
  if (buildCounterScriptStackFrame < 3) {
    o.endColumn = 42;
    o.endLine = 42;
    o.procedureId = 'foo';
    o.startColumn = 42;
    o.startLine = 42;
    o.text = 'foo';
  }
  buildCounterScriptStackFrame--;
  return o;
}

void checkScriptStackFrame(api.ScriptStackFrame o) {
  buildCounterScriptStackFrame++;
  if (buildCounterScriptStackFrame < 3) {
    unittest.expect(
      o.endColumn!,
      unittest.equals(42),
    );
    unittest.expect(
      o.endLine!,
      unittest.equals(42),
    );
    unittest.expect(
      o.procedureId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startColumn!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startLine!,
      unittest.equals(42),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterScriptStackFrame--;
}

core.List<api.ScriptStackFrame> buildUnnamed88() => [
      buildScriptStackFrame(),
      buildScriptStackFrame(),
    ];

void checkUnnamed88(core.List<api.ScriptStackFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScriptStackFrame(o[0]);
  checkScriptStackFrame(o[1]);
}

core.int buildCounterScriptStatistics = 0;
api.ScriptStatistics buildScriptStatistics() {
  final o = api.ScriptStatistics();
  buildCounterScriptStatistics++;
  if (buildCounterScriptStatistics < 3) {
    o.evaluationKind = 'foo';
    o.stackFrames = buildUnnamed88();
  }
  buildCounterScriptStatistics--;
  return o;
}

void checkScriptStatistics(api.ScriptStatistics o) {
  buildCounterScriptStatistics++;
  if (buildCounterScriptStatistics < 3) {
    unittest.expect(
      o.evaluationKind!,
      unittest.equals('foo'),
    );
    checkUnnamed88(o.stackFrames!);
  }
  buildCounterScriptStatistics--;
}

core.int buildCounterSessionInfo = 0;
api.SessionInfo buildSessionInfo() {
  final o = api.SessionInfo();
  buildCounterSessionInfo++;
  if (buildCounterSessionInfo < 3) {
    o.sessionId = 'foo';
  }
  buildCounterSessionInfo--;
  return o;
}

void checkSessionInfo(api.SessionInfo o) {
  buildCounterSessionInfo++;
  if (buildCounterSessionInfo < 3) {
    unittest.expect(
      o.sessionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSessionInfo--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSnapshotDefinition = 0;
api.SnapshotDefinition buildSnapshotDefinition() {
  final o = api.SnapshotDefinition();
  buildCounterSnapshotDefinition++;
  if (buildCounterSnapshotDefinition < 3) {
    o.baseTableReference = buildTableReference();
    o.snapshotTime = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterSnapshotDefinition--;
  return o;
}

void checkSnapshotDefinition(api.SnapshotDefinition o) {
  buildCounterSnapshotDefinition++;
  if (buildCounterSnapshotDefinition < 3) {
    checkTableReference(o.baseTableReference!);
    unittest.expect(
      o.snapshotTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
  }
  buildCounterSnapshotDefinition--;
}

core.int buildCounterStandardSqlDataType = 0;
api.StandardSqlDataType buildStandardSqlDataType() {
  final o = api.StandardSqlDataType();
  buildCounterStandardSqlDataType++;
  if (buildCounterStandardSqlDataType < 3) {
    o.arrayElementType = buildStandardSqlDataType();
    o.structType = buildStandardSqlStructType();
    o.typeKind = 'foo';
  }
  buildCounterStandardSqlDataType--;
  return o;
}

void checkStandardSqlDataType(api.StandardSqlDataType o) {
  buildCounterStandardSqlDataType++;
  if (buildCounterStandardSqlDataType < 3) {
    checkStandardSqlDataType(o.arrayElementType!);
    checkStandardSqlStructType(o.structType!);
    unittest.expect(
      o.typeKind!,
      unittest.equals('foo'),
    );
  }
  buildCounterStandardSqlDataType--;
}

core.int buildCounterStandardSqlField = 0;
api.StandardSqlField buildStandardSqlField() {
  final o = api.StandardSqlField();
  buildCounterStandardSqlField++;
  if (buildCounterStandardSqlField < 3) {
    o.name = 'foo';
    o.type = buildStandardSqlDataType();
  }
  buildCounterStandardSqlField--;
  return o;
}

void checkStandardSqlField(api.StandardSqlField o) {
  buildCounterStandardSqlField++;
  if (buildCounterStandardSqlField < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkStandardSqlDataType(o.type!);
  }
  buildCounterStandardSqlField--;
}

core.List<api.StandardSqlField> buildUnnamed89() => [
      buildStandardSqlField(),
      buildStandardSqlField(),
    ];

void checkUnnamed89(core.List<api.StandardSqlField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardSqlField(o[0]);
  checkStandardSqlField(o[1]);
}

core.int buildCounterStandardSqlStructType = 0;
api.StandardSqlStructType buildStandardSqlStructType() {
  final o = api.StandardSqlStructType();
  buildCounterStandardSqlStructType++;
  if (buildCounterStandardSqlStructType < 3) {
    o.fields = buildUnnamed89();
  }
  buildCounterStandardSqlStructType--;
  return o;
}

void checkStandardSqlStructType(api.StandardSqlStructType o) {
  buildCounterStandardSqlStructType++;
  if (buildCounterStandardSqlStructType < 3) {
    checkUnnamed89(o.fields!);
  }
  buildCounterStandardSqlStructType--;
}

core.List<api.StandardSqlField> buildUnnamed90() => [
      buildStandardSqlField(),
      buildStandardSqlField(),
    ];

void checkUnnamed90(core.List<api.StandardSqlField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardSqlField(o[0]);
  checkStandardSqlField(o[1]);
}

core.int buildCounterStandardSqlTableType = 0;
api.StandardSqlTableType buildStandardSqlTableType() {
  final o = api.StandardSqlTableType();
  buildCounterStandardSqlTableType++;
  if (buildCounterStandardSqlTableType < 3) {
    o.columns = buildUnnamed90();
  }
  buildCounterStandardSqlTableType--;
  return o;
}

void checkStandardSqlTableType(api.StandardSqlTableType o) {
  buildCounterStandardSqlTableType++;
  if (buildCounterStandardSqlTableType < 3) {
    checkUnnamed90(o.columns!);
  }
  buildCounterStandardSqlTableType--;
}

core.int buildCounterStreamingbuffer = 0;
api.Streamingbuffer buildStreamingbuffer() {
  final o = api.Streamingbuffer();
  buildCounterStreamingbuffer++;
  if (buildCounterStreamingbuffer < 3) {
    o.estimatedBytes = 'foo';
    o.estimatedRows = 'foo';
    o.oldestEntryTime = 'foo';
  }
  buildCounterStreamingbuffer--;
  return o;
}

void checkStreamingbuffer(api.Streamingbuffer o) {
  buildCounterStreamingbuffer++;
  if (buildCounterStreamingbuffer < 3) {
    unittest.expect(
      o.estimatedBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.estimatedRows!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oldestEntryTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterStreamingbuffer--;
}

core.Map<core.String, core.String> buildUnnamed91() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed91(core.Map<core.String, core.String> o) {
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

core.int buildCounterTable = 0;
api.Table buildTable() {
  final o = api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.clustering = buildClustering();
    o.creationTime = 'foo';
    o.defaultCollation = 'foo';
    o.description = 'foo';
    o.encryptionConfiguration = buildEncryptionConfiguration();
    o.etag = 'foo';
    o.expirationTime = 'foo';
    o.externalDataConfiguration = buildExternalDataConfiguration();
    o.friendlyName = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.labels = buildUnnamed91();
    o.lastModifiedTime = 'foo';
    o.location = 'foo';
    o.materializedView = buildMaterializedViewDefinition();
    o.model = buildModelDefinition();
    o.numBytes = 'foo';
    o.numLongTermBytes = 'foo';
    o.numPhysicalBytes = 'foo';
    o.numRows = 'foo';
    o.rangePartitioning = buildRangePartitioning();
    o.requirePartitionFilter = true;
    o.schema = buildTableSchema();
    o.selfLink = 'foo';
    o.snapshotDefinition = buildSnapshotDefinition();
    o.streamingBuffer = buildStreamingbuffer();
    o.tableReference = buildTableReference();
    o.timePartitioning = buildTimePartitioning();
    o.type = 'foo';
    o.view = buildViewDefinition();
  }
  buildCounterTable--;
  return o;
}

void checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkClustering(o.clustering!);
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultCollation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkEncryptionConfiguration(o.encryptionConfiguration!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expirationTime!,
      unittest.equals('foo'),
    );
    checkExternalDataConfiguration(o.externalDataConfiguration!);
    unittest.expect(
      o.friendlyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed91(o.labels!);
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    checkMaterializedViewDefinition(o.materializedView!);
    checkModelDefinition(o.model!);
    unittest.expect(
      o.numBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numLongTermBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numPhysicalBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numRows!,
      unittest.equals('foo'),
    );
    checkRangePartitioning(o.rangePartitioning!);
    unittest.expect(o.requirePartitionFilter!, unittest.isTrue);
    checkTableSchema(o.schema!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    checkSnapshotDefinition(o.snapshotDefinition!);
    checkStreamingbuffer(o.streamingBuffer!);
    checkTableReference(o.tableReference!);
    checkTimePartitioning(o.timePartitioning!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkViewDefinition(o.view!);
  }
  buildCounterTable--;
}

core.int buildCounterTableCell = 0;
api.TableCell buildTableCell() {
  final o = api.TableCell();
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

void checkTableCell(api.TableCell o) {
  buildCounterTableCell++;
  if (buildCounterTableCell < 3) {
    var casted4 = (o.v!) as core.Map;
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
  buildCounterTableCell--;
}

core.int buildCounterTableDataInsertAllRequestRows = 0;
api.TableDataInsertAllRequestRows buildTableDataInsertAllRequestRows() {
  final o = api.TableDataInsertAllRequestRows();
  buildCounterTableDataInsertAllRequestRows++;
  if (buildCounterTableDataInsertAllRequestRows < 3) {
    o.insertId = 'foo';
    o.json = buildJsonObject();
  }
  buildCounterTableDataInsertAllRequestRows--;
  return o;
}

void checkTableDataInsertAllRequestRows(api.TableDataInsertAllRequestRows o) {
  buildCounterTableDataInsertAllRequestRows++;
  if (buildCounterTableDataInsertAllRequestRows < 3) {
    unittest.expect(
      o.insertId!,
      unittest.equals('foo'),
    );
    checkJsonObject(o.json!);
  }
  buildCounterTableDataInsertAllRequestRows--;
}

core.List<api.TableDataInsertAllRequestRows> buildUnnamed92() => [
      buildTableDataInsertAllRequestRows(),
      buildTableDataInsertAllRequestRows(),
    ];

void checkUnnamed92(core.List<api.TableDataInsertAllRequestRows> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableDataInsertAllRequestRows(o[0]);
  checkTableDataInsertAllRequestRows(o[1]);
}

core.int buildCounterTableDataInsertAllRequest = 0;
api.TableDataInsertAllRequest buildTableDataInsertAllRequest() {
  final o = api.TableDataInsertAllRequest();
  buildCounterTableDataInsertAllRequest++;
  if (buildCounterTableDataInsertAllRequest < 3) {
    o.ignoreUnknownValues = true;
    o.kind = 'foo';
    o.rows = buildUnnamed92();
    o.skipInvalidRows = true;
    o.templateSuffix = 'foo';
  }
  buildCounterTableDataInsertAllRequest--;
  return o;
}

void checkTableDataInsertAllRequest(api.TableDataInsertAllRequest o) {
  buildCounterTableDataInsertAllRequest++;
  if (buildCounterTableDataInsertAllRequest < 3) {
    unittest.expect(o.ignoreUnknownValues!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed92(o.rows!);
    unittest.expect(o.skipInvalidRows!, unittest.isTrue);
    unittest.expect(
      o.templateSuffix!,
      unittest.equals('foo'),
    );
  }
  buildCounterTableDataInsertAllRequest--;
}

core.List<api.ErrorProto> buildUnnamed93() => [
      buildErrorProto(),
      buildErrorProto(),
    ];

void checkUnnamed93(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

core.int buildCounterTableDataInsertAllResponseInsertErrors = 0;
api.TableDataInsertAllResponseInsertErrors
    buildTableDataInsertAllResponseInsertErrors() {
  final o = api.TableDataInsertAllResponseInsertErrors();
  buildCounterTableDataInsertAllResponseInsertErrors++;
  if (buildCounterTableDataInsertAllResponseInsertErrors < 3) {
    o.errors = buildUnnamed93();
    o.index = 42;
  }
  buildCounterTableDataInsertAllResponseInsertErrors--;
  return o;
}

void checkTableDataInsertAllResponseInsertErrors(
    api.TableDataInsertAllResponseInsertErrors o) {
  buildCounterTableDataInsertAllResponseInsertErrors++;
  if (buildCounterTableDataInsertAllResponseInsertErrors < 3) {
    checkUnnamed93(o.errors!);
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
  }
  buildCounterTableDataInsertAllResponseInsertErrors--;
}

core.List<api.TableDataInsertAllResponseInsertErrors> buildUnnamed94() => [
      buildTableDataInsertAllResponseInsertErrors(),
      buildTableDataInsertAllResponseInsertErrors(),
    ];

void checkUnnamed94(core.List<api.TableDataInsertAllResponseInsertErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableDataInsertAllResponseInsertErrors(o[0]);
  checkTableDataInsertAllResponseInsertErrors(o[1]);
}

core.int buildCounterTableDataInsertAllResponse = 0;
api.TableDataInsertAllResponse buildTableDataInsertAllResponse() {
  final o = api.TableDataInsertAllResponse();
  buildCounterTableDataInsertAllResponse++;
  if (buildCounterTableDataInsertAllResponse < 3) {
    o.insertErrors = buildUnnamed94();
    o.kind = 'foo';
  }
  buildCounterTableDataInsertAllResponse--;
  return o;
}

void checkTableDataInsertAllResponse(api.TableDataInsertAllResponse o) {
  buildCounterTableDataInsertAllResponse++;
  if (buildCounterTableDataInsertAllResponse < 3) {
    checkUnnamed94(o.insertErrors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterTableDataInsertAllResponse--;
}

core.List<api.TableRow> buildUnnamed95() => [
      buildTableRow(),
      buildTableRow(),
    ];

void checkUnnamed95(core.List<api.TableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableRow(o[0]);
  checkTableRow(o[1]);
}

core.int buildCounterTableDataList = 0;
api.TableDataList buildTableDataList() {
  final o = api.TableDataList();
  buildCounterTableDataList++;
  if (buildCounterTableDataList < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.pageToken = 'foo';
    o.rows = buildUnnamed95();
    o.totalRows = 'foo';
  }
  buildCounterTableDataList--;
  return o;
}

void checkTableDataList(api.TableDataList o) {
  buildCounterTableDataList++;
  if (buildCounterTableDataList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed95(o.rows!);
    unittest.expect(
      o.totalRows!,
      unittest.equals('foo'),
    );
  }
  buildCounterTableDataList--;
}

core.List<core.String> buildUnnamed96() => [
      'foo',
      'foo',
    ];

void checkUnnamed96(core.List<core.String> o) {
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

core.int buildCounterTableFieldSchemaCategories = 0;
api.TableFieldSchemaCategories buildTableFieldSchemaCategories() {
  final o = api.TableFieldSchemaCategories();
  buildCounterTableFieldSchemaCategories++;
  if (buildCounterTableFieldSchemaCategories < 3) {
    o.names = buildUnnamed96();
  }
  buildCounterTableFieldSchemaCategories--;
  return o;
}

void checkTableFieldSchemaCategories(api.TableFieldSchemaCategories o) {
  buildCounterTableFieldSchemaCategories++;
  if (buildCounterTableFieldSchemaCategories < 3) {
    checkUnnamed96(o.names!);
  }
  buildCounterTableFieldSchemaCategories--;
}

core.List<api.TableFieldSchema> buildUnnamed97() => [
      buildTableFieldSchema(),
      buildTableFieldSchema(),
    ];

void checkUnnamed97(core.List<api.TableFieldSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableFieldSchema(o[0]);
  checkTableFieldSchema(o[1]);
}

core.List<core.String> buildUnnamed98() => [
      'foo',
      'foo',
    ];

void checkUnnamed98(core.List<core.String> o) {
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

core.int buildCounterTableFieldSchemaPolicyTags = 0;
api.TableFieldSchemaPolicyTags buildTableFieldSchemaPolicyTags() {
  final o = api.TableFieldSchemaPolicyTags();
  buildCounterTableFieldSchemaPolicyTags++;
  if (buildCounterTableFieldSchemaPolicyTags < 3) {
    o.names = buildUnnamed98();
  }
  buildCounterTableFieldSchemaPolicyTags--;
  return o;
}

void checkTableFieldSchemaPolicyTags(api.TableFieldSchemaPolicyTags o) {
  buildCounterTableFieldSchemaPolicyTags++;
  if (buildCounterTableFieldSchemaPolicyTags < 3) {
    checkUnnamed98(o.names!);
  }
  buildCounterTableFieldSchemaPolicyTags--;
}

core.int buildCounterTableFieldSchema = 0;
api.TableFieldSchema buildTableFieldSchema() {
  final o = api.TableFieldSchema();
  buildCounterTableFieldSchema++;
  if (buildCounterTableFieldSchema < 3) {
    o.categories = buildTableFieldSchemaCategories();
    o.collationSpec = 'foo';
    o.description = 'foo';
    o.fields = buildUnnamed97();
    o.maxLength = 'foo';
    o.mode = 'foo';
    o.name = 'foo';
    o.policyTags = buildTableFieldSchemaPolicyTags();
    o.precision = 'foo';
    o.scale = 'foo';
    o.type = 'foo';
  }
  buildCounterTableFieldSchema--;
  return o;
}

void checkTableFieldSchema(api.TableFieldSchema o) {
  buildCounterTableFieldSchema++;
  if (buildCounterTableFieldSchema < 3) {
    checkTableFieldSchemaCategories(o.categories!);
    unittest.expect(
      o.collationSpec!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed97(o.fields!);
    unittest.expect(
      o.maxLength!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkTableFieldSchemaPolicyTags(o.policyTags!);
    unittest.expect(
      o.precision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scale!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterTableFieldSchema--;
}

core.Map<core.String, core.String> buildUnnamed99() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed99(core.Map<core.String, core.String> o) {
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

core.int buildCounterTableListTablesView = 0;
api.TableListTablesView buildTableListTablesView() {
  final o = api.TableListTablesView();
  buildCounterTableListTablesView++;
  if (buildCounterTableListTablesView < 3) {
    o.useLegacySql = true;
  }
  buildCounterTableListTablesView--;
  return o;
}

void checkTableListTablesView(api.TableListTablesView o) {
  buildCounterTableListTablesView++;
  if (buildCounterTableListTablesView < 3) {
    unittest.expect(o.useLegacySql!, unittest.isTrue);
  }
  buildCounterTableListTablesView--;
}

core.int buildCounterTableListTables = 0;
api.TableListTables buildTableListTables() {
  final o = api.TableListTables();
  buildCounterTableListTables++;
  if (buildCounterTableListTables < 3) {
    o.clustering = buildClustering();
    o.creationTime = 'foo';
    o.expirationTime = 'foo';
    o.friendlyName = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.labels = buildUnnamed99();
    o.rangePartitioning = buildRangePartitioning();
    o.tableReference = buildTableReference();
    o.timePartitioning = buildTimePartitioning();
    o.type = 'foo';
    o.view = buildTableListTablesView();
  }
  buildCounterTableListTables--;
  return o;
}

void checkTableListTables(api.TableListTables o) {
  buildCounterTableListTables++;
  if (buildCounterTableListTables < 3) {
    checkClustering(o.clustering!);
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expirationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.friendlyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed99(o.labels!);
    checkRangePartitioning(o.rangePartitioning!);
    checkTableReference(o.tableReference!);
    checkTimePartitioning(o.timePartitioning!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkTableListTablesView(o.view!);
  }
  buildCounterTableListTables--;
}

core.List<api.TableListTables> buildUnnamed100() => [
      buildTableListTables(),
      buildTableListTables(),
    ];

void checkUnnamed100(core.List<api.TableListTables> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableListTables(o[0]);
  checkTableListTables(o[1]);
}

core.int buildCounterTableList = 0;
api.TableList buildTableList() {
  final o = api.TableList();
  buildCounterTableList++;
  if (buildCounterTableList < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.tables = buildUnnamed100();
    o.totalItems = 42;
  }
  buildCounterTableList--;
  return o;
}

void checkTableList(api.TableList o) {
  buildCounterTableList++;
  if (buildCounterTableList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed100(o.tables!);
    unittest.expect(
      o.totalItems!,
      unittest.equals(42),
    );
  }
  buildCounterTableList--;
}

core.int buildCounterTableReference = 0;
api.TableReference buildTableReference() {
  final o = api.TableReference();
  buildCounterTableReference++;
  if (buildCounterTableReference < 3) {
    o.datasetId = 'foo';
    o.projectId = 'foo';
    o.tableId = 'foo';
  }
  buildCounterTableReference--;
  return o;
}

void checkTableReference(api.TableReference o) {
  buildCounterTableReference++;
  if (buildCounterTableReference < 3) {
    unittest.expect(
      o.datasetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tableId!,
      unittest.equals('foo'),
    );
  }
  buildCounterTableReference--;
}

core.List<api.TableCell> buildUnnamed101() => [
      buildTableCell(),
      buildTableCell(),
    ];

void checkUnnamed101(core.List<api.TableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableCell(o[0]);
  checkTableCell(o[1]);
}

core.int buildCounterTableRow = 0;
api.TableRow buildTableRow() {
  final o = api.TableRow();
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    o.f = buildUnnamed101();
  }
  buildCounterTableRow--;
  return o;
}

void checkTableRow(api.TableRow o) {
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    checkUnnamed101(o.f!);
  }
  buildCounterTableRow--;
}

core.List<api.TableFieldSchema> buildUnnamed102() => [
      buildTableFieldSchema(),
      buildTableFieldSchema(),
    ];

void checkUnnamed102(core.List<api.TableFieldSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableFieldSchema(o[0]);
  checkTableFieldSchema(o[1]);
}

core.int buildCounterTableSchema = 0;
api.TableSchema buildTableSchema() {
  final o = api.TableSchema();
  buildCounterTableSchema++;
  if (buildCounterTableSchema < 3) {
    o.fields = buildUnnamed102();
  }
  buildCounterTableSchema--;
  return o;
}

void checkTableSchema(api.TableSchema o) {
  buildCounterTableSchema++;
  if (buildCounterTableSchema < 3) {
    checkUnnamed102(o.fields!);
  }
  buildCounterTableSchema--;
}

core.List<core.String> buildUnnamed103() => [
      'foo',
      'foo',
    ];

void checkUnnamed103(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed103();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed103(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed104() => [
      'foo',
      'foo',
    ];

void checkUnnamed104(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed104();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed104(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTimePartitioning = 0;
api.TimePartitioning buildTimePartitioning() {
  final o = api.TimePartitioning();
  buildCounterTimePartitioning++;
  if (buildCounterTimePartitioning < 3) {
    o.expirationMs = 'foo';
    o.field = 'foo';
    o.requirePartitionFilter = true;
    o.type = 'foo';
  }
  buildCounterTimePartitioning--;
  return o;
}

void checkTimePartitioning(api.TimePartitioning o) {
  buildCounterTimePartitioning++;
  if (buildCounterTimePartitioning < 3) {
    unittest.expect(
      o.expirationMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requirePartitionFilter!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimePartitioning--;
}

core.List<core.String> buildUnnamed105() => [
      'foo',
      'foo',
    ];

void checkUnnamed105(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed106() => [
      'foo',
      'foo',
    ];

void checkUnnamed106(core.List<core.String> o) {
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

core.Map<core.String, core.double> buildUnnamed107() => {
      'x': 42.0,
      'y': 42.0,
    };

void checkUnnamed107(core.Map<core.String, core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals(42.0),
  );
  unittest.expect(
    o['y']!,
    unittest.equals(42.0),
  );
}

core.List<core.String> buildUnnamed108() => [
      'foo',
      'foo',
    ];

void checkUnnamed108(core.List<core.String> o) {
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

core.int buildCounterTrainingOptions = 0;
api.TrainingOptions buildTrainingOptions() {
  final o = api.TrainingOptions();
  buildCounterTrainingOptions++;
  if (buildCounterTrainingOptions < 3) {
    o.adjustStepChanges = true;
    o.autoArima = true;
    o.autoArimaMaxOrder = 'foo';
    o.batchSize = 'foo';
    o.boosterType = 'foo';
    o.cleanSpikesAndDips = true;
    o.colsampleBylevel = 42.0;
    o.colsampleBynode = 42.0;
    o.colsampleBytree = 42.0;
    o.dartNormalizeType = 'foo';
    o.dataFrequency = 'foo';
    o.dataSplitColumn = 'foo';
    o.dataSplitEvalFraction = 42.0;
    o.dataSplitMethod = 'foo';
    o.decomposeTimeSeries = true;
    o.distanceType = 'foo';
    o.dropout = 42.0;
    o.earlyStop = true;
    o.feedbackType = 'foo';
    o.hiddenUnits = buildUnnamed105();
    o.holidayRegion = 'foo';
    o.horizon = 'foo';
    o.includeDrift = true;
    o.initialLearnRate = 42.0;
    o.inputLabelColumns = buildUnnamed106();
    o.itemColumn = 'foo';
    o.kmeansInitializationColumn = 'foo';
    o.kmeansInitializationMethod = 'foo';
    o.l1Regularization = 42.0;
    o.l2Regularization = 42.0;
    o.labelClassWeights = buildUnnamed107();
    o.learnRate = 42.0;
    o.learnRateStrategy = 'foo';
    o.lossType = 'foo';
    o.maxIterations = 'foo';
    o.maxTreeDepth = 'foo';
    o.minRelativeProgress = 42.0;
    o.minSplitLoss = 42.0;
    o.minTreeChildWeight = 'foo';
    o.modelUri = 'foo';
    o.nonSeasonalOrder = buildArimaOrder();
    o.numClusters = 'foo';
    o.numFactors = 'foo';
    o.numParallelTree = 'foo';
    o.optimizationStrategy = 'foo';
    o.preserveInputStructs = true;
    o.subsample = 42.0;
    o.timeSeriesDataColumn = 'foo';
    o.timeSeriesIdColumn = 'foo';
    o.timeSeriesIdColumns = buildUnnamed108();
    o.timeSeriesTimestampColumn = 'foo';
    o.treeMethod = 'foo';
    o.userColumn = 'foo';
    o.walsAlpha = 42.0;
    o.warmStart = true;
  }
  buildCounterTrainingOptions--;
  return o;
}

void checkTrainingOptions(api.TrainingOptions o) {
  buildCounterTrainingOptions++;
  if (buildCounterTrainingOptions < 3) {
    unittest.expect(o.adjustStepChanges!, unittest.isTrue);
    unittest.expect(o.autoArima!, unittest.isTrue);
    unittest.expect(
      o.autoArimaMaxOrder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.batchSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.boosterType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.cleanSpikesAndDips!, unittest.isTrue);
    unittest.expect(
      o.colsampleBylevel!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.colsampleBynode!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.colsampleBytree!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.dartNormalizeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataFrequency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataSplitColumn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataSplitEvalFraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.dataSplitMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(o.decomposeTimeSeries!, unittest.isTrue);
    unittest.expect(
      o.distanceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dropout!,
      unittest.equals(42.0),
    );
    unittest.expect(o.earlyStop!, unittest.isTrue);
    unittest.expect(
      o.feedbackType!,
      unittest.equals('foo'),
    );
    checkUnnamed105(o.hiddenUnits!);
    unittest.expect(
      o.holidayRegion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.horizon!,
      unittest.equals('foo'),
    );
    unittest.expect(o.includeDrift!, unittest.isTrue);
    unittest.expect(
      o.initialLearnRate!,
      unittest.equals(42.0),
    );
    checkUnnamed106(o.inputLabelColumns!);
    unittest.expect(
      o.itemColumn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmeansInitializationColumn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmeansInitializationMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.l1Regularization!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.l2Regularization!,
      unittest.equals(42.0),
    );
    checkUnnamed107(o.labelClassWeights!);
    unittest.expect(
      o.learnRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.learnRateStrategy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lossType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxIterations!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxTreeDepth!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minRelativeProgress!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minSplitLoss!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minTreeChildWeight!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modelUri!,
      unittest.equals('foo'),
    );
    checkArimaOrder(o.nonSeasonalOrder!);
    unittest.expect(
      o.numClusters!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numFactors!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numParallelTree!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.optimizationStrategy!,
      unittest.equals('foo'),
    );
    unittest.expect(o.preserveInputStructs!, unittest.isTrue);
    unittest.expect(
      o.subsample!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.timeSeriesDataColumn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeSeriesIdColumn!,
      unittest.equals('foo'),
    );
    checkUnnamed108(o.timeSeriesIdColumns!);
    unittest.expect(
      o.timeSeriesTimestampColumn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.treeMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userColumn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.walsAlpha!,
      unittest.equals(42.0),
    );
    unittest.expect(o.warmStart!, unittest.isTrue);
  }
  buildCounterTrainingOptions--;
}

core.List<api.IterationResult> buildUnnamed109() => [
      buildIterationResult(),
      buildIterationResult(),
    ];

void checkUnnamed109(core.List<api.IterationResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIterationResult(o[0]);
  checkIterationResult(o[1]);
}

core.int buildCounterTrainingRun = 0;
api.TrainingRun buildTrainingRun() {
  final o = api.TrainingRun();
  buildCounterTrainingRun++;
  if (buildCounterTrainingRun < 3) {
    o.dataSplitResult = buildDataSplitResult();
    o.evaluationMetrics = buildEvaluationMetrics();
    o.results = buildUnnamed109();
    o.startTime = 'foo';
    o.trainingOptions = buildTrainingOptions();
  }
  buildCounterTrainingRun--;
  return o;
}

void checkTrainingRun(api.TrainingRun o) {
  buildCounterTrainingRun++;
  if (buildCounterTrainingRun < 3) {
    checkDataSplitResult(o.dataSplitResult!);
    checkEvaluationMetrics(o.evaluationMetrics!);
    checkUnnamed109(o.results!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    checkTrainingOptions(o.trainingOptions!);
  }
  buildCounterTrainingRun--;
}

core.int buildCounterTransactionInfo = 0;
api.TransactionInfo buildTransactionInfo() {
  final o = api.TransactionInfo();
  buildCounterTransactionInfo++;
  if (buildCounterTransactionInfo < 3) {
    o.transactionId = 'foo';
  }
  buildCounterTransactionInfo--;
  return o;
}

void checkTransactionInfo(api.TransactionInfo o) {
  buildCounterTransactionInfo++;
  if (buildCounterTransactionInfo < 3) {
    unittest.expect(
      o.transactionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterTransactionInfo--;
}

core.int buildCounterUserDefinedFunctionResource = 0;
api.UserDefinedFunctionResource buildUserDefinedFunctionResource() {
  final o = api.UserDefinedFunctionResource();
  buildCounterUserDefinedFunctionResource++;
  if (buildCounterUserDefinedFunctionResource < 3) {
    o.inlineCode = 'foo';
    o.resourceUri = 'foo';
  }
  buildCounterUserDefinedFunctionResource--;
  return o;
}

void checkUserDefinedFunctionResource(api.UserDefinedFunctionResource o) {
  buildCounterUserDefinedFunctionResource++;
  if (buildCounterUserDefinedFunctionResource < 3) {
    unittest.expect(
      o.inlineCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserDefinedFunctionResource--;
}

core.List<api.UserDefinedFunctionResource> buildUnnamed110() => [
      buildUserDefinedFunctionResource(),
      buildUserDefinedFunctionResource(),
    ];

void checkUnnamed110(core.List<api.UserDefinedFunctionResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserDefinedFunctionResource(o[0]);
  checkUserDefinedFunctionResource(o[1]);
}

core.int buildCounterViewDefinition = 0;
api.ViewDefinition buildViewDefinition() {
  final o = api.ViewDefinition();
  buildCounterViewDefinition++;
  if (buildCounterViewDefinition < 3) {
    o.query = 'foo';
    o.useExplicitColumnNames = true;
    o.useLegacySql = true;
    o.userDefinedFunctionResources = buildUnnamed110();
  }
  buildCounterViewDefinition--;
  return o;
}

void checkViewDefinition(api.ViewDefinition o) {
  buildCounterViewDefinition++;
  if (buildCounterViewDefinition < 3) {
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useExplicitColumnNames!, unittest.isTrue);
    unittest.expect(o.useLegacySql!, unittest.isTrue);
    checkUnnamed110(o.userDefinedFunctionResources!);
  }
  buildCounterViewDefinition--;
}

core.List<core.String> buildUnnamed111() => [
      'foo',
      'foo',
    ];

void checkUnnamed111(core.List<core.String> o) {
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
  unittest.group('obj-schema-AggregateClassificationMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregateClassificationMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregateClassificationMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregateClassificationMetrics(od);
    });
  });

  unittest.group('obj-schema-Argument', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArgument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Argument.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkArgument(od);
    });
  });

  unittest.group('obj-schema-ArimaCoefficients', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArimaCoefficients();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArimaCoefficients.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkArimaCoefficients(od);
    });
  });

  unittest.group('obj-schema-ArimaFittingMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArimaFittingMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArimaFittingMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkArimaFittingMetrics(od);
    });
  });

  unittest.group('obj-schema-ArimaForecastingMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArimaForecastingMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArimaForecastingMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkArimaForecastingMetrics(od);
    });
  });

  unittest.group('obj-schema-ArimaModelInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArimaModelInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArimaModelInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkArimaModelInfo(od);
    });
  });

  unittest.group('obj-schema-ArimaOrder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArimaOrder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ArimaOrder.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkArimaOrder(od);
    });
  });

  unittest.group('obj-schema-ArimaResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArimaResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArimaResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkArimaResult(od);
    });
  });

  unittest.group('obj-schema-ArimaSingleModelForecastingMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArimaSingleModelForecastingMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArimaSingleModelForecastingMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkArimaSingleModelForecastingMetrics(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-AvroOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAvroOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AvroOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAvroOptions(od);
    });
  });

  unittest.group('obj-schema-BiEngineReason', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBiEngineReason();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BiEngineReason.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBiEngineReason(od);
    });
  });

  unittest.group('obj-schema-BiEngineStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBiEngineStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BiEngineStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBiEngineStatistics(od);
    });
  });

  unittest.group('obj-schema-BigQueryModelTraining', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryModelTraining();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryModelTraining.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigQueryModelTraining(od);
    });
  });

  unittest.group('obj-schema-BigtableColumn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigtableColumn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigtableColumn.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigtableColumn(od);
    });
  });

  unittest.group('obj-schema-BigtableColumnFamily', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigtableColumnFamily();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigtableColumnFamily.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigtableColumnFamily(od);
    });
  });

  unittest.group('obj-schema-BigtableOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigtableOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigtableOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigtableOptions(od);
    });
  });

  unittest.group('obj-schema-BinaryClassificationMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinaryClassificationMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BinaryClassificationMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBinaryClassificationMetrics(od);
    });
  });

  unittest.group('obj-schema-BinaryConfusionMatrix', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinaryConfusionMatrix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BinaryConfusionMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBinaryConfusionMatrix(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-BqmlIterationResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBqmlIterationResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BqmlIterationResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBqmlIterationResult(od);
    });
  });

  unittest.group('obj-schema-BqmlTrainingRunTrainingOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBqmlTrainingRunTrainingOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BqmlTrainingRunTrainingOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBqmlTrainingRunTrainingOptions(od);
    });
  });

  unittest.group('obj-schema-BqmlTrainingRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBqmlTrainingRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BqmlTrainingRun.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBqmlTrainingRun(od);
    });
  });

  unittest.group('obj-schema-CategoricalValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCategoricalValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CategoricalValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCategoricalValue(od);
    });
  });

  unittest.group('obj-schema-CategoryCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCategoryCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CategoryCount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCategoryCount(od);
    });
  });

  unittest.group('obj-schema-Cluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Cluster.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCluster(od);
    });
  });

  unittest.group('obj-schema-ClusterInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterInfo(od);
    });
  });

  unittest.group('obj-schema-Clustering', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClustering();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Clustering.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkClustering(od);
    });
  });

  unittest.group('obj-schema-ClusteringMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusteringMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusteringMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusteringMetrics(od);
    });
  });

  unittest.group('obj-schema-ConfusionMatrix', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfusionMatrix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfusionMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfusionMatrix(od);
    });
  });

  unittest.group('obj-schema-ConnectionProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectionProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectionProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectionProperty(od);
    });
  });

  unittest.group('obj-schema-CsvOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCsvOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CsvOptions.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCsvOptions(od);
    });
  });

  unittest.group('obj-schema-DataSplitResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSplitResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSplitResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSplitResult(od);
    });
  });

  unittest.group('obj-schema-DatasetAccess', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatasetAccess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatasetAccess.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatasetAccess(od);
    });
  });

  unittest.group('obj-schema-Dataset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Dataset.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDataset(od);
    });
  });

  unittest.group('obj-schema-DatasetAccessEntryTargetTypes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatasetAccessEntryTargetTypes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatasetAccessEntryTargetTypes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatasetAccessEntryTargetTypes(od);
    });
  });

  unittest.group('obj-schema-DatasetAccessEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatasetAccessEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatasetAccessEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatasetAccessEntry(od);
    });
  });

  unittest.group('obj-schema-DatasetListDatasets', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatasetListDatasets();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatasetListDatasets.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatasetListDatasets(od);
    });
  });

  unittest.group('obj-schema-DatasetList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatasetList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatasetList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatasetList(od);
    });
  });

  unittest.group('obj-schema-DatasetReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatasetReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatasetReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatasetReference(od);
    });
  });

  unittest.group('obj-schema-DestinationTableProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestinationTableProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DestinationTableProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDestinationTableProperties(od);
    });
  });

  unittest.group('obj-schema-DmlStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDmlStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DmlStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDmlStatistics(od);
    });
  });

  unittest.group('obj-schema-EncryptionConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncryptionConfiguration(od);
    });
  });

  unittest.group('obj-schema-Entry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Entry.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEntry(od);
    });
  });

  unittest.group('obj-schema-ErrorProto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorProto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ErrorProto.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkErrorProto(od);
    });
  });

  unittest.group('obj-schema-EvaluationMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvaluationMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EvaluationMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEvaluationMetrics(od);
    });
  });

  unittest.group('obj-schema-ExplainQueryStage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExplainQueryStage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExplainQueryStage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExplainQueryStage(od);
    });
  });

  unittest.group('obj-schema-ExplainQueryStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExplainQueryStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExplainQueryStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExplainQueryStep(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-ExternalDataConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalDataConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalDataConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalDataConfiguration(od);
    });
  });

  unittest.group('obj-schema-FeatureValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeatureValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FeatureValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFeatureValue(od);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPolicyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetPolicyOptions(od);
    });
  });

  unittest.group('obj-schema-GetQueryResultsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetQueryResultsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetQueryResultsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetQueryResultsResponse(od);
    });
  });

  unittest.group('obj-schema-GetServiceAccountResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetServiceAccountResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetServiceAccountResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetServiceAccountResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleSheetsOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSheetsOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSheetsOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSheetsOptions(od);
    });
  });

  unittest.group('obj-schema-HivePartitioningOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHivePartitioningOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HivePartitioningOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHivePartitioningOptions(od);
    });
  });

  unittest.group('obj-schema-IterationResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIterationResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IterationResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIterationResult(od);
    });
  });

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Job.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJob(od);
    });
  });

  unittest.group('obj-schema-JobCancelResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobCancelResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobCancelResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobCancelResponse(od);
    });
  });

  unittest.group('obj-schema-JobConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobConfiguration(od);
    });
  });

  unittest.group('obj-schema-JobConfigurationExtract', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobConfigurationExtract();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobConfigurationExtract.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobConfigurationExtract(od);
    });
  });

  unittest.group('obj-schema-JobConfigurationLoad', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobConfigurationLoad();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobConfigurationLoad.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobConfigurationLoad(od);
    });
  });

  unittest.group('obj-schema-JobConfigurationQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobConfigurationQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobConfigurationQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobConfigurationQuery(od);
    });
  });

  unittest.group('obj-schema-JobConfigurationTableCopy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobConfigurationTableCopy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobConfigurationTableCopy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobConfigurationTableCopy(od);
    });
  });

  unittest.group('obj-schema-JobListJobs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobListJobs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobListJobs.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobListJobs(od);
    });
  });

  unittest.group('obj-schema-JobList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JobList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobList(od);
    });
  });

  unittest.group('obj-schema-JobReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobReference(od);
    });
  });

  unittest.group('obj-schema-JobStatisticsReservationUsage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobStatisticsReservationUsage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobStatisticsReservationUsage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobStatisticsReservationUsage(od);
    });
  });

  unittest.group('obj-schema-JobStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobStatistics(od);
    });
  });

  unittest.group('obj-schema-JobStatistics2ReservationUsage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobStatistics2ReservationUsage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobStatistics2ReservationUsage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobStatistics2ReservationUsage(od);
    });
  });

  unittest.group('obj-schema-JobStatistics2', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobStatistics2();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobStatistics2.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobStatistics2(od);
    });
  });

  unittest.group('obj-schema-JobStatistics3', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobStatistics3();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobStatistics3.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobStatistics3(od);
    });
  });

  unittest.group('obj-schema-JobStatistics4', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobStatistics4();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobStatistics4.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobStatistics4(od);
    });
  });

  unittest.group('obj-schema-JobStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JobStatus.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobStatus(od);
    });
  });

  unittest.group('obj-schema-JsonObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJsonObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JsonObject.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJsonObject(od);
    });
  });

  unittest.group('obj-schema-ListModelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListModelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListModelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListModelsResponse(od);
    });
  });

  unittest.group('obj-schema-ListRoutinesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRoutinesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRoutinesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRoutinesResponse(od);
    });
  });

  unittest.group('obj-schema-ListRowAccessPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRowAccessPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRowAccessPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRowAccessPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-LocationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocationMetadata(od);
    });
  });

  unittest.group('obj-schema-MaterializedViewDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaterializedViewDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaterializedViewDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaterializedViewDefinition(od);
    });
  });

  unittest.group('obj-schema-Model', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Model.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkModel(od);
    });
  });

  unittest.group('obj-schema-ModelDefinitionModelOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModelDefinitionModelOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModelDefinitionModelOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModelDefinitionModelOptions(od);
    });
  });

  unittest.group('obj-schema-ModelDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModelDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModelDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModelDefinition(od);
    });
  });

  unittest.group('obj-schema-ModelReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModelReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModelReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModelReference(od);
    });
  });

  unittest.group('obj-schema-MultiClassClassificationMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiClassClassificationMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultiClassClassificationMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMultiClassClassificationMetrics(od);
    });
  });

  unittest.group('obj-schema-ParquetOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParquetOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParquetOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParquetOptions(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-ProjectListProjects', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjectListProjects();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProjectListProjects.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProjectListProjects(od);
    });
  });

  unittest.group('obj-schema-ProjectList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjectList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProjectList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProjectList(od);
    });
  });

  unittest.group('obj-schema-ProjectReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjectReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProjectReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProjectReference(od);
    });
  });

  unittest.group('obj-schema-QueryParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryParameter(od);
    });
  });

  unittest.group('obj-schema-QueryParameterTypeStructTypes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryParameterTypeStructTypes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryParameterTypeStructTypes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryParameterTypeStructTypes(od);
    });
  });

  unittest.group('obj-schema-QueryParameterType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryParameterType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryParameterType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryParameterType(od);
    });
  });

  unittest.group('obj-schema-QueryParameterValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryParameterValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryParameterValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryParameterValue(od);
    });
  });

  unittest.group('obj-schema-QueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryRequest(od);
    });
  });

  unittest.group('obj-schema-QueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryResponse(od);
    });
  });

  unittest.group('obj-schema-QueryTimelineSample', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryTimelineSample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryTimelineSample.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryTimelineSample(od);
    });
  });

  unittest.group('obj-schema-RangePartitioningRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRangePartitioningRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RangePartitioningRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRangePartitioningRange(od);
    });
  });

  unittest.group('obj-schema-RangePartitioning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRangePartitioning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RangePartitioning.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRangePartitioning(od);
    });
  });

  unittest.group('obj-schema-RankingMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRankingMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RankingMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRankingMetrics(od);
    });
  });

  unittest.group('obj-schema-RegressionMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegressionMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegressionMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegressionMetrics(od);
    });
  });

  unittest.group('obj-schema-Routine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoutine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Routine.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRoutine(od);
    });
  });

  unittest.group('obj-schema-RoutineReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoutineReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RoutineReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRoutineReference(od);
    });
  });

  unittest.group('obj-schema-Row', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Row.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRow(od);
    });
  });

  unittest.group('obj-schema-RowAccessPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRowAccessPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RowAccessPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRowAccessPolicy(od);
    });
  });

  unittest.group('obj-schema-RowAccessPolicyReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRowAccessPolicyReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RowAccessPolicyReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRowAccessPolicyReference(od);
    });
  });

  unittest.group('obj-schema-RowLevelSecurityStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRowLevelSecurityStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RowLevelSecurityStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRowLevelSecurityStatistics(od);
    });
  });

  unittest.group('obj-schema-ScriptStackFrame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScriptStackFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScriptStackFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScriptStackFrame(od);
    });
  });

  unittest.group('obj-schema-ScriptStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScriptStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScriptStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScriptStatistics(od);
    });
  });

  unittest.group('obj-schema-SessionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSessionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SessionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSessionInfo(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SnapshotDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSnapshotDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SnapshotDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSnapshotDefinition(od);
    });
  });

  unittest.group('obj-schema-StandardSqlDataType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStandardSqlDataType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StandardSqlDataType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStandardSqlDataType(od);
    });
  });

  unittest.group('obj-schema-StandardSqlField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStandardSqlField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StandardSqlField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStandardSqlField(od);
    });
  });

  unittest.group('obj-schema-StandardSqlStructType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStandardSqlStructType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StandardSqlStructType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStandardSqlStructType(od);
    });
  });

  unittest.group('obj-schema-StandardSqlTableType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStandardSqlTableType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StandardSqlTableType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStandardSqlTableType(od);
    });
  });

  unittest.group('obj-schema-Streamingbuffer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingbuffer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Streamingbuffer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamingbuffer(od);
    });
  });

  unittest.group('obj-schema-Table', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Table.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTable(od);
    });
  });

  unittest.group('obj-schema-TableCell', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableCell();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TableCell.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTableCell(od);
    });
  });

  unittest.group('obj-schema-TableDataInsertAllRequestRows', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableDataInsertAllRequestRows();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableDataInsertAllRequestRows.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableDataInsertAllRequestRows(od);
    });
  });

  unittest.group('obj-schema-TableDataInsertAllRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableDataInsertAllRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableDataInsertAllRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableDataInsertAllRequest(od);
    });
  });

  unittest.group('obj-schema-TableDataInsertAllResponseInsertErrors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableDataInsertAllResponseInsertErrors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableDataInsertAllResponseInsertErrors.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableDataInsertAllResponseInsertErrors(od);
    });
  });

  unittest.group('obj-schema-TableDataInsertAllResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableDataInsertAllResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableDataInsertAllResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableDataInsertAllResponse(od);
    });
  });

  unittest.group('obj-schema-TableDataList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableDataList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableDataList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableDataList(od);
    });
  });

  unittest.group('obj-schema-TableFieldSchemaCategories', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableFieldSchemaCategories();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableFieldSchemaCategories.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableFieldSchemaCategories(od);
    });
  });

  unittest.group('obj-schema-TableFieldSchemaPolicyTags', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableFieldSchemaPolicyTags();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableFieldSchemaPolicyTags.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableFieldSchemaPolicyTags(od);
    });
  });

  unittest.group('obj-schema-TableFieldSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableFieldSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableFieldSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableFieldSchema(od);
    });
  });

  unittest.group('obj-schema-TableListTablesView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableListTablesView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableListTablesView.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableListTablesView(od);
    });
  });

  unittest.group('obj-schema-TableListTables', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableListTables();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableListTables.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableListTables(od);
    });
  });

  unittest.group('obj-schema-TableList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TableList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTableList(od);
    });
  });

  unittest.group('obj-schema-TableReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableReference(od);
    });
  });

  unittest.group('obj-schema-TableRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TableRow.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTableRow(od);
    });
  });

  unittest.group('obj-schema-TableSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableSchema(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-TimePartitioning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimePartitioning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimePartitioning.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTimePartitioning(od);
    });
  });

  unittest.group('obj-schema-TrainingOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrainingOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrainingOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTrainingOptions(od);
    });
  });

  unittest.group('obj-schema-TrainingRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrainingRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrainingRun.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTrainingRun(od);
    });
  });

  unittest.group('obj-schema-TransactionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransactionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransactionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransactionInfo(od);
    });
  });

  unittest.group('obj-schema-UserDefinedFunctionResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserDefinedFunctionResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserDefinedFunctionResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserDefinedFunctionResource(od);
    });
  });

  unittest.group('obj-schema-ViewDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildViewDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ViewDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkViewDefinition(od);
    });
  });

  unittest.group('resource-DatasetsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).datasets;
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_deleteContents = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/datasets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/datasets/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_datasetId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['deleteContents']!.first,
          unittest.equals('$arg_deleteContents'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_projectId, arg_datasetId,
          deleteContents: arg_deleteContents, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).datasets;
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/datasets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/datasets/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_datasetId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_projectId, arg_datasetId, $fields: arg_$fields);
      checkDataset(response as api.Dataset);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).datasets;
      final arg_request = buildDataset();
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Dataset.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDataset(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/datasets', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/datasets'),
        );
        pathOffset += 9;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_projectId, $fields: arg_$fields);
      checkDataset(response as api.Dataset);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).datasets;
      final arg_projectId = 'foo';
      final arg_all = true;
      final arg_filter = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/datasets', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/datasets'),
        );
        pathOffset += 9;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['all']!.first,
          unittest.equals('$arg_all'),
        );
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDatasetList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId,
          all: arg_all,
          filter: arg_filter,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkDatasetList(response as api.DatasetList);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).datasets;
      final arg_request = buildDataset();
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Dataset.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDataset(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/datasets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/datasets/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_datasetId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_projectId, arg_datasetId,
          $fields: arg_$fields);
      checkDataset(response as api.Dataset);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).datasets;
      final arg_request = buildDataset();
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Dataset.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDataset(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/datasets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/datasets/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_datasetId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_projectId, arg_datasetId,
          $fields: arg_$fields);
      checkDataset(response as api.Dataset);
    });
  });

  unittest.group('resource-JobsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).jobs;
      final arg_projectId = 'foo';
      final arg_jobId = 'foo';
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/cancel', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/cancel'),
        );
        pathOffset += 7;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['location']!.first,
          unittest.equals(arg_location),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildJobCancelResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancel(arg_projectId, arg_jobId,
          location: arg_location, $fields: arg_$fields);
      checkJobCancelResponse(response as api.JobCancelResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).jobs;
      final arg_projectId = 'foo';
      final arg_jobId = 'foo';
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['location']!.first,
          unittest.equals(arg_location),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_projectId, arg_jobId,
          location: arg_location, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).jobs;
      final arg_projectId = 'foo';
      final arg_jobId = 'foo';
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['location']!.first,
          unittest.equals(arg_location),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_jobId,
          location: arg_location, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--getQueryResults', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).jobs;
      final arg_projectId = 'foo';
      final arg_jobId = 'foo';
      final arg_location = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_startIndex = 'foo';
      final arg_timeoutMs = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/queries/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/queries/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['location']!.first,
          unittest.equals(arg_location),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['startIndex']!.first,
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          core.int.parse(queryMap['timeoutMs']!.first),
          unittest.equals(arg_timeoutMs),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGetQueryResultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getQueryResults(arg_projectId, arg_jobId,
          location: arg_location,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          startIndex: arg_startIndex,
          timeoutMs: arg_timeoutMs,
          $fields: arg_$fields);
      checkGetQueryResultsResponse(response as api.GetQueryResultsResponse);
    });

    unittest.test('method--insert', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).jobs;
      final arg_request = buildJob();
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/jobs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/jobs'),
        );
        pathOffset += 5;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_projectId, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).jobs;
      final arg_projectId = 'foo';
      final arg_allUsers = true;
      final arg_maxCreationTime = 'foo';
      final arg_maxResults = 42;
      final arg_minCreationTime = 'foo';
      final arg_pageToken = 'foo';
      final arg_parentJobId = 'foo';
      final arg_projection = 'foo';
      final arg_stateFilter = buildUnnamed111();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/jobs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/jobs'),
        );
        pathOffset += 5;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['allUsers']!.first,
          unittest.equals('$arg_allUsers'),
        );
        unittest.expect(
          queryMap['maxCreationTime']!.first,
          unittest.equals(arg_maxCreationTime),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['minCreationTime']!.first,
          unittest.equals(arg_minCreationTime),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['parentJobId']!.first,
          unittest.equals(arg_parentJobId),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['stateFilter']!,
          unittest.equals(arg_stateFilter),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildJobList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId,
          allUsers: arg_allUsers,
          maxCreationTime: arg_maxCreationTime,
          maxResults: arg_maxResults,
          minCreationTime: arg_minCreationTime,
          pageToken: arg_pageToken,
          parentJobId: arg_parentJobId,
          projection: arg_projection,
          stateFilter: arg_stateFilter,
          $fields: arg_$fields);
      checkJobList(response as api.JobList);
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).jobs;
      final arg_request = buildQueryRequest();
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.QueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkQueryRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/queries', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/queries'),
        );
        pathOffset += 8;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.query(arg_request, arg_projectId, $fields: arg_$fields);
      checkQueryResponse(response as api.QueryResponse);
    });
  });

  unittest.group('resource-ModelsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).models;
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_modelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_projectId, arg_datasetId, arg_modelId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).models;
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_modelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildModel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_datasetId, arg_modelId,
          $fields: arg_$fields);
      checkModel(response as api.Model);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).models;
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListModelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_datasetId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListModelsResponse(response as api.ListModelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).models;
      final arg_request = buildModel();
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_modelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Model.fromJson(json as core.Map<core.String, core.dynamic>);
        checkModel(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildModel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_projectId, arg_datasetId, arg_modelId,
          $fields: arg_$fields);
      checkModel(response as api.Model);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--getServiceAccount', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).projects;
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/serviceAccount', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/serviceAccount'),
        );
        pathOffset += 15;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGetServiceAccountResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getServiceAccount(arg_projectId, $fields: arg_$fields);
      checkGetServiceAccountResponse(response as api.GetServiceAccountResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).projects;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('projects'),
        );
        pathOffset += 8;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProjectList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkProjectList(response as api.ProjectList);
    });
  });

  unittest.group('resource-RoutinesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).routines;
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_routineId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_projectId, arg_datasetId, arg_routineId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).routines;
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_routineId = 'foo';
      final arg_readMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRoutine());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_projectId, arg_datasetId, arg_routineId,
          readMask: arg_readMask, $fields: arg_$fields);
      checkRoutine(response as api.Routine);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).routines;
      final arg_request = buildRoutine();
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Routine.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRoutine(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRoutine());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_projectId, arg_datasetId,
          $fields: arg_$fields);
      checkRoutine(response as api.Routine);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).routines;
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_filter = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListRoutinesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_datasetId,
          filter: arg_filter,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkListRoutinesResponse(response as api.ListRoutinesResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).routines;
      final arg_request = buildRoutine();
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_routineId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Routine.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRoutine(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRoutine());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_projectId, arg_datasetId, arg_routineId,
          $fields: arg_$fields);
      checkRoutine(response as api.Routine);
    });
  });

  unittest.group('resource-RowAccessPoliciesResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).rowAccessPolicies;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).rowAccessPolicies;
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_tableId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListRowAccessPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_datasetId, arg_tableId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRowAccessPoliciesResponse(
          response as api.ListRowAccessPoliciesResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).rowAccessPolicies;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).rowAccessPolicies;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-TabledataResource', () {
    unittest.test('method--insertAll', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).tabledata;
      final arg_request = buildTableDataInsertAllRequest();
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_tableId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TableDataInsertAllRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTableDataInsertAllRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/datasets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/datasets/'),
        );
        pathOffset += 10;
        index = path.indexOf('/tables/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_datasetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tables/'),
        );
        pathOffset += 8;
        index = path.indexOf('/insertAll', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_tableId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/insertAll'),
        );
        pathOffset += 10;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTableDataInsertAllResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insertAll(
          arg_request, arg_projectId, arg_datasetId, arg_tableId,
          $fields: arg_$fields);
      checkTableDataInsertAllResponse(
          response as api.TableDataInsertAllResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).tabledata;
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_tableId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_selectedFields = 'foo';
      final arg_startIndex = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/datasets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/datasets/'),
        );
        pathOffset += 10;
        index = path.indexOf('/tables/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_datasetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tables/'),
        );
        pathOffset += 8;
        index = path.indexOf('/data', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_tableId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/data'),
        );
        pathOffset += 5;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['selectedFields']!.first,
          unittest.equals(arg_selectedFields),
        );
        unittest.expect(
          queryMap['startIndex']!.first,
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTableDataList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_datasetId, arg_tableId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          selectedFields: arg_selectedFields,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkTableDataList(response as api.TableDataList);
    });
  });

  unittest.group('resource-TablesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).tables;
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_tableId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/datasets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/datasets/'),
        );
        pathOffset += 10;
        index = path.indexOf('/tables/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_datasetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tables/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_tableId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_projectId, arg_datasetId, arg_tableId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).tables;
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_tableId = 'foo';
      final arg_selectedFields = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/datasets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/datasets/'),
        );
        pathOffset += 10;
        index = path.indexOf('/tables/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_datasetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tables/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_tableId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['selectedFields']!.first,
          unittest.equals(arg_selectedFields),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_datasetId, arg_tableId,
          selectedFields: arg_selectedFields, $fields: arg_$fields);
      checkTable(response as api.Table);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).tables;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).tables;
      final arg_request = buildTable();
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Table.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTable(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/datasets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/datasets/'),
        );
        pathOffset += 10;
        index = path.indexOf('/tables', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_datasetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/tables'),
        );
        pathOffset += 7;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_projectId, arg_datasetId,
          $fields: arg_$fields);
      checkTable(response as api.Table);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).tables;
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/datasets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/datasets/'),
        );
        pathOffset += 10;
        index = path.indexOf('/tables', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_datasetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/tables'),
        );
        pathOffset += 7;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTableList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_datasetId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkTableList(response as api.TableList);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).tables;
      final arg_request = buildTable();
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_tableId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Table.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTable(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/datasets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/datasets/'),
        );
        pathOffset += 10;
        index = path.indexOf('/tables/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_datasetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tables/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_tableId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_projectId, arg_datasetId, arg_tableId,
          $fields: arg_$fields);
      checkTable(response as api.Table);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).tables;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).tables;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).tables;
      final arg_request = buildTable();
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_tableId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Table.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTable(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('bigquery/v2/'),
        );
        pathOffset += 12;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('projects/'),
        );
        pathOffset += 9;
        index = path.indexOf('/datasets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/datasets/'),
        );
        pathOffset += 10;
        index = path.indexOf('/tables/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_datasetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tables/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_tableId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_projectId, arg_datasetId, arg_tableId,
          $fields: arg_$fields);
      checkTable(response as api.Table);
    });
  });
}
