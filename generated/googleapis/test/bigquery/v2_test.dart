// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
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

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterAggregationThresholdPolicy = 0;
api.AggregationThresholdPolicy buildAggregationThresholdPolicy() {
  final o = api.AggregationThresholdPolicy();
  buildCounterAggregationThresholdPolicy++;
  if (buildCounterAggregationThresholdPolicy < 3) {
    o.privacyUnitColumns = buildUnnamed0();
    o.threshold = 'foo';
  }
  buildCounterAggregationThresholdPolicy--;
  return o;
}

void checkAggregationThresholdPolicy(api.AggregationThresholdPolicy o) {
  buildCounterAggregationThresholdPolicy++;
  if (buildCounterAggregationThresholdPolicy < 3) {
    checkUnnamed0(o.privacyUnitColumns!);
    unittest.expect(
      o.threshold!,
      unittest.equals('foo'),
    );
  }
  buildCounterAggregationThresholdPolicy--;
}

core.int buildCounterArgument = 0;
api.Argument buildArgument() {
  final o = api.Argument();
  buildCounterArgument++;
  if (buildCounterArgument < 3) {
    o.argumentKind = 'foo';
    o.dataType = buildStandardSqlDataType();
    o.isAggregate = true;
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
    unittest.expect(o.isAggregate!, unittest.isTrue);
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

core.List<core.double> buildUnnamed2() => [
      42.0,
      42.0,
    ];

void checkUnnamed2(core.List<core.double> o) {
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
    o.autoRegressiveCoefficients = buildUnnamed1();
    o.interceptCoefficient = 42.0;
    o.movingAverageCoefficients = buildUnnamed2();
  }
  buildCounterArimaCoefficients--;
  return o;
}

void checkArimaCoefficients(api.ArimaCoefficients o) {
  buildCounterArimaCoefficients++;
  if (buildCounterArimaCoefficients < 3) {
    checkUnnamed1(o.autoRegressiveCoefficients!);
    unittest.expect(
      o.interceptCoefficient!,
      unittest.equals(42.0),
    );
    checkUnnamed2(o.movingAverageCoefficients!);
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

core.List<api.ArimaFittingMetrics> buildUnnamed3() => [
      buildArimaFittingMetrics(),
      buildArimaFittingMetrics(),
    ];

void checkUnnamed3(core.List<api.ArimaFittingMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArimaFittingMetrics(o[0]);
  checkArimaFittingMetrics(o[1]);
}

core.List<api.ArimaSingleModelForecastingMetrics> buildUnnamed4() => [
      buildArimaSingleModelForecastingMetrics(),
      buildArimaSingleModelForecastingMetrics(),
    ];

void checkUnnamed4(core.List<api.ArimaSingleModelForecastingMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArimaSingleModelForecastingMetrics(o[0]);
  checkArimaSingleModelForecastingMetrics(o[1]);
}

core.List<core.bool> buildUnnamed5() => [
      true,
      true,
    ];

void checkUnnamed5(core.List<core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.isTrue);
  unittest.expect(o[1], unittest.isTrue);
}

core.List<api.ArimaOrder> buildUnnamed6() => [
      buildArimaOrder(),
      buildArimaOrder(),
    ];

void checkUnnamed6(core.List<api.ArimaOrder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArimaOrder(o[0]);
  checkArimaOrder(o[1]);
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

core.int buildCounterArimaForecastingMetrics = 0;
api.ArimaForecastingMetrics buildArimaForecastingMetrics() {
  final o = api.ArimaForecastingMetrics();
  buildCounterArimaForecastingMetrics++;
  if (buildCounterArimaForecastingMetrics < 3) {
    o.arimaFittingMetrics = buildUnnamed3();
    o.arimaSingleModelForecastingMetrics = buildUnnamed4();
    o.hasDrift = buildUnnamed5();
    o.nonSeasonalOrder = buildUnnamed6();
    o.seasonalPeriods = buildUnnamed7();
    o.timeSeriesId = buildUnnamed8();
  }
  buildCounterArimaForecastingMetrics--;
  return o;
}

void checkArimaForecastingMetrics(api.ArimaForecastingMetrics o) {
  buildCounterArimaForecastingMetrics++;
  if (buildCounterArimaForecastingMetrics < 3) {
    checkUnnamed3(o.arimaFittingMetrics!);
    checkUnnamed4(o.arimaSingleModelForecastingMetrics!);
    checkUnnamed5(o.hasDrift!);
    checkUnnamed6(o.nonSeasonalOrder!);
    checkUnnamed7(o.seasonalPeriods!);
    checkUnnamed8(o.timeSeriesId!);
  }
  buildCounterArimaForecastingMetrics--;
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

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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
    o.seasonalPeriods = buildUnnamed9();
    o.timeSeriesId = 'foo';
    o.timeSeriesIds = buildUnnamed10();
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
    checkUnnamed9(o.seasonalPeriods!);
    unittest.expect(
      o.timeSeriesId!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.timeSeriesIds!);
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

core.List<api.ArimaModelInfo> buildUnnamed11() => [
      buildArimaModelInfo(),
      buildArimaModelInfo(),
    ];

void checkUnnamed11(core.List<api.ArimaModelInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArimaModelInfo(o[0]);
  checkArimaModelInfo(o[1]);
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

core.int buildCounterArimaResult = 0;
api.ArimaResult buildArimaResult() {
  final o = api.ArimaResult();
  buildCounterArimaResult++;
  if (buildCounterArimaResult < 3) {
    o.arimaModelInfo = buildUnnamed11();
    o.seasonalPeriods = buildUnnamed12();
  }
  buildCounterArimaResult--;
  return o;
}

void checkArimaResult(api.ArimaResult o) {
  buildCounterArimaResult++;
  if (buildCounterArimaResult < 3) {
    checkUnnamed11(o.arimaModelInfo!);
    checkUnnamed12(o.seasonalPeriods!);
  }
  buildCounterArimaResult--;
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

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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
    o.seasonalPeriods = buildUnnamed13();
    o.timeSeriesId = 'foo';
    o.timeSeriesIds = buildUnnamed14();
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
    checkUnnamed13(o.seasonalPeriods!);
    unittest.expect(
      o.timeSeriesId!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.timeSeriesIds!);
  }
  buildCounterArimaSingleModelForecastingMetrics--;
}

core.List<api.AuditLogConfig> buildUnnamed15() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed15(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed15();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed15(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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
    o.exemptedMembers = buildUnnamed16();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed16(o.exemptedMembers!);
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

core.List<api.BiEngineReason> buildUnnamed17() => [
      buildBiEngineReason(),
      buildBiEngineReason(),
    ];

void checkUnnamed17(core.List<api.BiEngineReason> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBiEngineReason(o[0]);
  checkBiEngineReason(o[1]);
}

core.int buildCounterBiEngineStatistics = 0;
api.BiEngineStatistics buildBiEngineStatistics() {
  final o = api.BiEngineStatistics();
  buildCounterBiEngineStatistics++;
  if (buildCounterBiEngineStatistics < 3) {
    o.accelerationMode = 'foo';
    o.biEngineMode = 'foo';
    o.biEngineReasons = buildUnnamed17();
  }
  buildCounterBiEngineStatistics--;
  return o;
}

void checkBiEngineStatistics(api.BiEngineStatistics o) {
  buildCounterBiEngineStatistics++;
  if (buildCounterBiEngineStatistics < 3) {
    unittest.expect(
      o.accelerationMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.biEngineMode!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.biEngineReasons!);
  }
  buildCounterBiEngineStatistics--;
}

core.int buildCounterBigLakeConfiguration = 0;
api.BigLakeConfiguration buildBigLakeConfiguration() {
  final o = api.BigLakeConfiguration();
  buildCounterBigLakeConfiguration++;
  if (buildCounterBigLakeConfiguration < 3) {
    o.connectionId = 'foo';
    o.fileFormat = 'foo';
    o.storageUri = 'foo';
    o.tableFormat = 'foo';
  }
  buildCounterBigLakeConfiguration--;
  return o;
}

void checkBigLakeConfiguration(api.BigLakeConfiguration o) {
  buildCounterBigLakeConfiguration++;
  if (buildCounterBigLakeConfiguration < 3) {
    unittest.expect(
      o.connectionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tableFormat!,
      unittest.equals('foo'),
    );
  }
  buildCounterBigLakeConfiguration--;
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

core.List<api.BigtableColumn> buildUnnamed18() => [
      buildBigtableColumn(),
      buildBigtableColumn(),
    ];

void checkUnnamed18(core.List<api.BigtableColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigtableColumn(o[0]);
  checkBigtableColumn(o[1]);
}

core.int buildCounterBigtableColumnFamily = 0;
api.BigtableColumnFamily buildBigtableColumnFamily() {
  final o = api.BigtableColumnFamily();
  buildCounterBigtableColumnFamily++;
  if (buildCounterBigtableColumnFamily < 3) {
    o.columns = buildUnnamed18();
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
    checkUnnamed18(o.columns!);
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

core.List<api.BigtableColumnFamily> buildUnnamed19() => [
      buildBigtableColumnFamily(),
      buildBigtableColumnFamily(),
    ];

void checkUnnamed19(core.List<api.BigtableColumnFamily> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigtableColumnFamily(o[0]);
  checkBigtableColumnFamily(o[1]);
}

core.int buildCounterBigtableOptions = 0;
api.BigtableOptions buildBigtableOptions() {
  final o = api.BigtableOptions();
  buildCounterBigtableOptions++;
  if (buildCounterBigtableOptions < 3) {
    o.columnFamilies = buildUnnamed19();
    o.ignoreUnspecifiedColumnFamilies = true;
    o.outputColumnFamiliesAsJson = true;
    o.readRowkeyAsString = true;
  }
  buildCounterBigtableOptions--;
  return o;
}

void checkBigtableOptions(api.BigtableOptions o) {
  buildCounterBigtableOptions++;
  if (buildCounterBigtableOptions < 3) {
    checkUnnamed19(o.columnFamilies!);
    unittest.expect(o.ignoreUnspecifiedColumnFamilies!, unittest.isTrue);
    unittest.expect(o.outputColumnFamiliesAsJson!, unittest.isTrue);
    unittest.expect(o.readRowkeyAsString!, unittest.isTrue);
  }
  buildCounterBigtableOptions--;
}

core.List<api.BinaryConfusionMatrix> buildUnnamed20() => [
      buildBinaryConfusionMatrix(),
      buildBinaryConfusionMatrix(),
    ];

void checkUnnamed20(core.List<api.BinaryConfusionMatrix> o) {
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
    o.binaryConfusionMatrixList = buildUnnamed20();
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
    checkUnnamed20(o.binaryConfusionMatrixList!);
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

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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
    o.members = buildUnnamed21();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed21(o.members!);
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

core.List<api.BqmlIterationResult> buildUnnamed22() => [
      buildBqmlIterationResult(),
      buildBqmlIterationResult(),
    ];

void checkUnnamed22(core.List<api.BqmlIterationResult> o) {
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
    o.iterationResults = buildUnnamed22();
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
    checkUnnamed22(o.iterationResults!);
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

core.List<api.CategoryCount> buildUnnamed23() => [
      buildCategoryCount(),
      buildCategoryCount(),
    ];

void checkUnnamed23(core.List<api.CategoryCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategoryCount(o[0]);
  checkCategoryCount(o[1]);
}

core.int buildCounterCategoricalValue = 0;
api.CategoricalValue buildCategoricalValue() {
  final o = api.CategoricalValue();
  buildCounterCategoricalValue++;
  if (buildCounterCategoricalValue < 3) {
    o.categoryCounts = buildUnnamed23();
  }
  buildCounterCategoricalValue--;
  return o;
}

void checkCategoricalValue(api.CategoricalValue o) {
  buildCounterCategoricalValue++;
  if (buildCounterCategoricalValue < 3) {
    checkUnnamed23(o.categoryCounts!);
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

core.int buildCounterCloneDefinition = 0;
api.CloneDefinition buildCloneDefinition() {
  final o = api.CloneDefinition();
  buildCounterCloneDefinition++;
  if (buildCounterCloneDefinition < 3) {
    o.baseTableReference = buildTableReference();
    o.cloneTime = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterCloneDefinition--;
  return o;
}

void checkCloneDefinition(api.CloneDefinition o) {
  buildCounterCloneDefinition++;
  if (buildCounterCloneDefinition < 3) {
    checkTableReference(o.baseTableReference!);
    unittest.expect(
      o.cloneTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
  }
  buildCounterCloneDefinition--;
}

core.List<api.FeatureValue> buildUnnamed24() => [
      buildFeatureValue(),
      buildFeatureValue(),
    ];

void checkUnnamed24(core.List<api.FeatureValue> o) {
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
    o.featureValues = buildUnnamed24();
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
    checkUnnamed24(o.featureValues!);
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

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
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
    o.fields = buildUnnamed25();
  }
  buildCounterClustering--;
  return o;
}

void checkClustering(api.Clustering o) {
  buildCounterClustering++;
  if (buildCounterClustering < 3) {
    checkUnnamed25(o.fields!);
  }
  buildCounterClustering--;
}

core.List<api.Cluster> buildUnnamed26() => [
      buildCluster(),
      buildCluster(),
    ];

void checkUnnamed26(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.int buildCounterClusteringMetrics = 0;
api.ClusteringMetrics buildClusteringMetrics() {
  final o = api.ClusteringMetrics();
  buildCounterClusteringMetrics++;
  if (buildCounterClusteringMetrics < 3) {
    o.clusters = buildUnnamed26();
    o.daviesBouldinIndex = 42.0;
    o.meanSquaredDistance = 42.0;
  }
  buildCounterClusteringMetrics--;
  return o;
}

void checkClusteringMetrics(api.ClusteringMetrics o) {
  buildCounterClusteringMetrics++;
  if (buildCounterClusteringMetrics < 3) {
    checkUnnamed26(o.clusters!);
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

core.List<api.Row> buildUnnamed27() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed27(core.List<api.Row> o) {
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
    o.rows = buildUnnamed27();
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
    checkUnnamed27(o.rows!);
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
    o.preserveAsciiControlCharacters = true;
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
    unittest.expect(o.preserveAsciiControlCharacters!, unittest.isTrue);
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

core.int buildCounterDataFormatOptions = 0;
api.DataFormatOptions buildDataFormatOptions() {
  final o = api.DataFormatOptions();
  buildCounterDataFormatOptions++;
  if (buildCounterDataFormatOptions < 3) {
    o.useInt64Timestamp = true;
  }
  buildCounterDataFormatOptions--;
  return o;
}

void checkDataFormatOptions(api.DataFormatOptions o) {
  buildCounterDataFormatOptions++;
  if (buildCounterDataFormatOptions < 3) {
    unittest.expect(o.useInt64Timestamp!, unittest.isTrue);
  }
  buildCounterDataFormatOptions--;
}

core.int buildCounterDataMaskingStatistics = 0;
api.DataMaskingStatistics buildDataMaskingStatistics() {
  final o = api.DataMaskingStatistics();
  buildCounterDataMaskingStatistics++;
  if (buildCounterDataMaskingStatistics < 3) {
    o.dataMaskingApplied = true;
  }
  buildCounterDataMaskingStatistics--;
  return o;
}

void checkDataMaskingStatistics(api.DataMaskingStatistics o) {
  buildCounterDataMaskingStatistics++;
  if (buildCounterDataMaskingStatistics < 3) {
    unittest.expect(o.dataMaskingApplied!, unittest.isTrue);
  }
  buildCounterDataMaskingStatistics--;
}

core.int buildCounterDataSplitResult = 0;
api.DataSplitResult buildDataSplitResult() {
  final o = api.DataSplitResult();
  buildCounterDataSplitResult++;
  if (buildCounterDataSplitResult < 3) {
    o.evaluationTable = buildTableReference();
    o.testTable = buildTableReference();
    o.trainingTable = buildTableReference();
  }
  buildCounterDataSplitResult--;
  return o;
}

void checkDataSplitResult(api.DataSplitResult o) {
  buildCounterDataSplitResult++;
  if (buildCounterDataSplitResult < 3) {
    checkTableReference(o.evaluationTable!);
    checkTableReference(o.testTable!);
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

core.List<api.DatasetAccess> buildUnnamed28() => [
      buildDatasetAccess(),
      buildDatasetAccess(),
    ];

void checkUnnamed28(core.List<api.DatasetAccess> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatasetAccess(o[0]);
  checkDatasetAccess(o[1]);
}

core.Map<core.String, core.String> buildUnnamed29() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed29(core.Map<core.String, core.String> o) {
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

core.int buildCounterDatasetTags = 0;
api.DatasetTags buildDatasetTags() {
  final o = api.DatasetTags();
  buildCounterDatasetTags++;
  if (buildCounterDatasetTags < 3) {
    o.tagKey = 'foo';
    o.tagValue = 'foo';
  }
  buildCounterDatasetTags--;
  return o;
}

void checkDatasetTags(api.DatasetTags o) {
  buildCounterDatasetTags++;
  if (buildCounterDatasetTags < 3) {
    unittest.expect(
      o.tagKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatasetTags--;
}

core.List<api.DatasetTags> buildUnnamed30() => [
      buildDatasetTags(),
      buildDatasetTags(),
    ];

void checkUnnamed30(core.List<api.DatasetTags> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatasetTags(o[0]);
  checkDatasetTags(o[1]);
}

core.int buildCounterDataset = 0;
api.Dataset buildDataset() {
  final o = api.Dataset();
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    o.access = buildUnnamed28();
    o.creationTime = 'foo';
    o.datasetReference = buildDatasetReference();
    o.defaultCollation = 'foo';
    o.defaultEncryptionConfiguration = buildEncryptionConfiguration();
    o.defaultPartitionExpirationMs = 'foo';
    o.defaultRoundingMode = 'foo';
    o.defaultTableExpirationMs = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.externalCatalogDatasetOptions = buildExternalCatalogDatasetOptions();
    o.externalDatasetReference = buildExternalDatasetReference();
    o.friendlyName = 'foo';
    o.id = 'foo';
    o.isCaseInsensitive = true;
    o.kind = 'foo';
    o.labels = buildUnnamed29();
    o.lastModifiedTime = 'foo';
    o.linkedDatasetMetadata = buildLinkedDatasetMetadata();
    o.linkedDatasetSource = buildLinkedDatasetSource();
    o.location = 'foo';
    o.maxTimeTravelHours = 'foo';
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.selfLink = 'foo';
    o.storageBillingModel = 'foo';
    o.tags = buildUnnamed30();
    o.type = 'foo';
  }
  buildCounterDataset--;
  return o;
}

void checkDataset(api.Dataset o) {
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    checkUnnamed28(o.access!);
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
      o.defaultRoundingMode!,
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
    checkExternalCatalogDatasetOptions(o.externalCatalogDatasetOptions!);
    checkExternalDatasetReference(o.externalDatasetReference!);
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
    checkUnnamed29(o.labels!);
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    checkLinkedDatasetMetadata(o.linkedDatasetMetadata!);
    checkLinkedDatasetSource(o.linkedDatasetSource!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxTimeTravelHours!,
      unittest.equals('foo'),
    );
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageBillingModel!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.tags!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataset--;
}

core.List<core.String> buildUnnamed31() => [
      'foo',
      'foo',
    ];

void checkUnnamed31(core.List<core.String> o) {
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

core.int buildCounterDatasetAccessEntry = 0;
api.DatasetAccessEntry buildDatasetAccessEntry() {
  final o = api.DatasetAccessEntry();
  buildCounterDatasetAccessEntry++;
  if (buildCounterDatasetAccessEntry < 3) {
    o.dataset = buildDatasetReference();
    o.targetTypes = buildUnnamed31();
  }
  buildCounterDatasetAccessEntry--;
  return o;
}

void checkDatasetAccessEntry(api.DatasetAccessEntry o) {
  buildCounterDatasetAccessEntry++;
  if (buildCounterDatasetAccessEntry < 3) {
    checkDatasetReference(o.dataset!);
    checkUnnamed31(o.targetTypes!);
  }
  buildCounterDatasetAccessEntry--;
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

core.int buildCounterDatasetListDatasets = 0;
api.DatasetListDatasets buildDatasetListDatasets() {
  final o = api.DatasetListDatasets();
  buildCounterDatasetListDatasets++;
  if (buildCounterDatasetListDatasets < 3) {
    o.datasetReference = buildDatasetReference();
    o.friendlyName = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.labels = buildUnnamed32();
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
    checkUnnamed32(o.labels!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatasetListDatasets--;
}

core.List<api.DatasetListDatasets> buildUnnamed33() => [
      buildDatasetListDatasets(),
      buildDatasetListDatasets(),
    ];

void checkUnnamed33(core.List<api.DatasetListDatasets> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatasetListDatasets(o[0]);
  checkDatasetListDatasets(o[1]);
}

core.List<core.String> buildUnnamed34() => [
      'foo',
      'foo',
    ];

void checkUnnamed34(core.List<core.String> o) {
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

core.int buildCounterDatasetList = 0;
api.DatasetList buildDatasetList() {
  final o = api.DatasetList();
  buildCounterDatasetList++;
  if (buildCounterDatasetList < 3) {
    o.datasets = buildUnnamed33();
    o.etag = 'foo';
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed34();
  }
  buildCounterDatasetList--;
  return o;
}

void checkDatasetList(api.DatasetList o) {
  buildCounterDatasetList++;
  if (buildCounterDatasetList < 3) {
    checkUnnamed33(o.datasets!);
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
    checkUnnamed34(o.unreachable!);
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

core.Map<core.String, core.String> buildUnnamed35() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed35(core.Map<core.String, core.String> o) {
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
    o.expirationTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.friendlyName = 'foo';
    o.labels = buildUnnamed35();
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
      o.expirationTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.friendlyName!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.labels!);
  }
  buildCounterDestinationTableProperties--;
}

core.int buildCounterDifferentialPrivacyPolicy = 0;
api.DifferentialPrivacyPolicy buildDifferentialPrivacyPolicy() {
  final o = api.DifferentialPrivacyPolicy();
  buildCounterDifferentialPrivacyPolicy++;
  if (buildCounterDifferentialPrivacyPolicy < 3) {
    o.deltaBudget = 42.0;
    o.deltaPerQuery = 42.0;
    o.epsilonBudget = 42.0;
    o.maxEpsilonPerQuery = 42.0;
    o.maxGroupsContributed = 'foo';
    o.privacyUnitColumn = 'foo';
  }
  buildCounterDifferentialPrivacyPolicy--;
  return o;
}

void checkDifferentialPrivacyPolicy(api.DifferentialPrivacyPolicy o) {
  buildCounterDifferentialPrivacyPolicy++;
  if (buildCounterDifferentialPrivacyPolicy < 3) {
    unittest.expect(
      o.deltaBudget!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.deltaPerQuery!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.epsilonBudget!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.maxEpsilonPerQuery!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.maxGroupsContributed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privacyUnitColumn!,
      unittest.equals('foo'),
    );
  }
  buildCounterDifferentialPrivacyPolicy--;
}

core.int buildCounterDimensionalityReductionMetrics = 0;
api.DimensionalityReductionMetrics buildDimensionalityReductionMetrics() {
  final o = api.DimensionalityReductionMetrics();
  buildCounterDimensionalityReductionMetrics++;
  if (buildCounterDimensionalityReductionMetrics < 3) {
    o.totalExplainedVarianceRatio = 42.0;
  }
  buildCounterDimensionalityReductionMetrics--;
  return o;
}

void checkDimensionalityReductionMetrics(api.DimensionalityReductionMetrics o) {
  buildCounterDimensionalityReductionMetrics++;
  if (buildCounterDimensionalityReductionMetrics < 3) {
    unittest.expect(
      o.totalExplainedVarianceRatio!,
      unittest.equals(42.0),
    );
  }
  buildCounterDimensionalityReductionMetrics--;
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

core.List<core.double> buildUnnamed36() => [
      42.0,
      42.0,
    ];

void checkUnnamed36(core.List<core.double> o) {
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

core.int buildCounterDoubleCandidates = 0;
api.DoubleCandidates buildDoubleCandidates() {
  final o = api.DoubleCandidates();
  buildCounterDoubleCandidates++;
  if (buildCounterDoubleCandidates < 3) {
    o.candidates = buildUnnamed36();
  }
  buildCounterDoubleCandidates--;
  return o;
}

void checkDoubleCandidates(api.DoubleCandidates o) {
  buildCounterDoubleCandidates++;
  if (buildCounterDoubleCandidates < 3) {
    checkUnnamed36(o.candidates!);
  }
  buildCounterDoubleCandidates--;
}

core.int buildCounterDoubleHparamSearchSpace = 0;
api.DoubleHparamSearchSpace buildDoubleHparamSearchSpace() {
  final o = api.DoubleHparamSearchSpace();
  buildCounterDoubleHparamSearchSpace++;
  if (buildCounterDoubleHparamSearchSpace < 3) {
    o.candidates = buildDoubleCandidates();
    o.range = buildDoubleRange();
  }
  buildCounterDoubleHparamSearchSpace--;
  return o;
}

void checkDoubleHparamSearchSpace(api.DoubleHparamSearchSpace o) {
  buildCounterDoubleHparamSearchSpace++;
  if (buildCounterDoubleHparamSearchSpace < 3) {
    checkDoubleCandidates(o.candidates!);
    checkDoubleRange(o.range!);
  }
  buildCounterDoubleHparamSearchSpace--;
}

core.int buildCounterDoubleRange = 0;
api.DoubleRange buildDoubleRange() {
  final o = api.DoubleRange();
  buildCounterDoubleRange++;
  if (buildCounterDoubleRange < 3) {
    o.max = 42.0;
    o.min = 42.0;
  }
  buildCounterDoubleRange--;
  return o;
}

void checkDoubleRange(api.DoubleRange o) {
  buildCounterDoubleRange++;
  if (buildCounterDoubleRange < 3) {
    unittest.expect(
      o.max!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.min!,
      unittest.equals(42.0),
    );
  }
  buildCounterDoubleRange--;
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
    o.dimensionalityReductionMetrics = buildDimensionalityReductionMetrics();
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
    checkDimensionalityReductionMetrics(o.dimensionalityReductionMetrics!);
    checkMultiClassClassificationMetrics(o.multiClassClassificationMetrics!);
    checkRankingMetrics(o.rankingMetrics!);
    checkRegressionMetrics(o.regressionMetrics!);
  }
  buildCounterEvaluationMetrics--;
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

core.List<api.ExplainQueryStep> buildUnnamed38() => [
      buildExplainQueryStep(),
      buildExplainQueryStep(),
    ];

void checkUnnamed38(core.List<api.ExplainQueryStep> o) {
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
    o.computeMode = 'foo';
    o.computeMsAvg = 'foo';
    o.computeMsMax = 'foo';
    o.computeRatioAvg = 42.0;
    o.computeRatioMax = 42.0;
    o.endMs = 'foo';
    o.id = 'foo';
    o.inputStages = buildUnnamed37();
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
    o.steps = buildUnnamed38();
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
      o.computeMode!,
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
    checkUnnamed37(o.inputStages!);
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
    checkUnnamed38(o.steps!);
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

core.List<core.String> buildUnnamed39() => [
      'foo',
      'foo',
    ];

void checkUnnamed39(core.List<core.String> o) {
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
    o.substeps = buildUnnamed39();
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
    checkUnnamed39(o.substeps!);
  }
  buildCounterExplainQueryStep--;
}

core.int buildCounterExplanation = 0;
api.Explanation buildExplanation() {
  final o = api.Explanation();
  buildCounterExplanation++;
  if (buildCounterExplanation < 3) {
    o.attribution = 42.0;
    o.featureName = 'foo';
  }
  buildCounterExplanation--;
  return o;
}

void checkExplanation(api.Explanation o) {
  buildCounterExplanation++;
  if (buildCounterExplanation < 3) {
    unittest.expect(
      o.attribution!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.featureName!,
      unittest.equals('foo'),
    );
  }
  buildCounterExplanation--;
}

core.int buildCounterExportDataStatistics = 0;
api.ExportDataStatistics buildExportDataStatistics() {
  final o = api.ExportDataStatistics();
  buildCounterExportDataStatistics++;
  if (buildCounterExportDataStatistics < 3) {
    o.fileCount = 'foo';
    o.rowCount = 'foo';
  }
  buildCounterExportDataStatistics--;
  return o;
}

void checkExportDataStatistics(api.ExportDataStatistics o) {
  buildCounterExportDataStatistics++;
  if (buildCounterExportDataStatistics < 3) {
    unittest.expect(
      o.fileCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rowCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterExportDataStatistics--;
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

core.Map<core.String, core.String> buildUnnamed40() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed40(core.Map<core.String, core.String> o) {
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

core.int buildCounterExternalCatalogDatasetOptions = 0;
api.ExternalCatalogDatasetOptions buildExternalCatalogDatasetOptions() {
  final o = api.ExternalCatalogDatasetOptions();
  buildCounterExternalCatalogDatasetOptions++;
  if (buildCounterExternalCatalogDatasetOptions < 3) {
    o.defaultStorageLocationUri = 'foo';
    o.parameters = buildUnnamed40();
  }
  buildCounterExternalCatalogDatasetOptions--;
  return o;
}

void checkExternalCatalogDatasetOptions(api.ExternalCatalogDatasetOptions o) {
  buildCounterExternalCatalogDatasetOptions++;
  if (buildCounterExternalCatalogDatasetOptions < 3) {
    unittest.expect(
      o.defaultStorageLocationUri!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.parameters!);
  }
  buildCounterExternalCatalogDatasetOptions--;
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

core.int buildCounterExternalCatalogTableOptions = 0;
api.ExternalCatalogTableOptions buildExternalCatalogTableOptions() {
  final o = api.ExternalCatalogTableOptions();
  buildCounterExternalCatalogTableOptions++;
  if (buildCounterExternalCatalogTableOptions < 3) {
    o.connectionId = 'foo';
    o.parameters = buildUnnamed41();
    o.storageDescriptor = buildStorageDescriptor();
  }
  buildCounterExternalCatalogTableOptions--;
  return o;
}

void checkExternalCatalogTableOptions(api.ExternalCatalogTableOptions o) {
  buildCounterExternalCatalogTableOptions++;
  if (buildCounterExternalCatalogTableOptions < 3) {
    unittest.expect(
      o.connectionId!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.parameters!);
    checkStorageDescriptor(o.storageDescriptor!);
  }
  buildCounterExternalCatalogTableOptions--;
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
    o.decimalTargetTypes = buildUnnamed42();
    o.fileSetSpecType = 'foo';
    o.googleSheetsOptions = buildGoogleSheetsOptions();
    o.hivePartitioningOptions = buildHivePartitioningOptions();
    o.ignoreUnknownValues = true;
    o.jsonExtension = 'foo';
    o.jsonOptions = buildJsonOptions();
    o.maxBadRecords = 42;
    o.metadataCacheMode = 'foo';
    o.objectMetadata = 'foo';
    o.parquetOptions = buildParquetOptions();
    o.referenceFileSchemaUri = 'foo';
    o.schema = buildTableSchema();
    o.sourceFormat = 'foo';
    o.sourceUris = buildUnnamed43();
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
    checkUnnamed42(o.decimalTargetTypes!);
    unittest.expect(
      o.fileSetSpecType!,
      unittest.equals('foo'),
    );
    checkGoogleSheetsOptions(o.googleSheetsOptions!);
    checkHivePartitioningOptions(o.hivePartitioningOptions!);
    unittest.expect(o.ignoreUnknownValues!, unittest.isTrue);
    unittest.expect(
      o.jsonExtension!,
      unittest.equals('foo'),
    );
    checkJsonOptions(o.jsonOptions!);
    unittest.expect(
      o.maxBadRecords!,
      unittest.equals(42),
    );
    unittest.expect(
      o.metadataCacheMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectMetadata!,
      unittest.equals('foo'),
    );
    checkParquetOptions(o.parquetOptions!);
    unittest.expect(
      o.referenceFileSchemaUri!,
      unittest.equals('foo'),
    );
    checkTableSchema(o.schema!);
    unittest.expect(
      o.sourceFormat!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.sourceUris!);
  }
  buildCounterExternalDataConfiguration--;
}

core.int buildCounterExternalDatasetReference = 0;
api.ExternalDatasetReference buildExternalDatasetReference() {
  final o = api.ExternalDatasetReference();
  buildCounterExternalDatasetReference++;
  if (buildCounterExternalDatasetReference < 3) {
    o.connection = 'foo';
    o.externalSource = 'foo';
  }
  buildCounterExternalDatasetReference--;
  return o;
}

void checkExternalDatasetReference(api.ExternalDatasetReference o) {
  buildCounterExternalDatasetReference++;
  if (buildCounterExternalDatasetReference < 3) {
    unittest.expect(
      o.connection!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalSource!,
      unittest.equals('foo'),
    );
  }
  buildCounterExternalDatasetReference--;
}

core.int buildCounterExternalServiceCost = 0;
api.ExternalServiceCost buildExternalServiceCost() {
  final o = api.ExternalServiceCost();
  buildCounterExternalServiceCost++;
  if (buildCounterExternalServiceCost < 3) {
    o.bytesBilled = 'foo';
    o.bytesProcessed = 'foo';
    o.externalService = 'foo';
    o.reservedSlotCount = 'foo';
    o.slotMs = 'foo';
  }
  buildCounterExternalServiceCost--;
  return o;
}

void checkExternalServiceCost(api.ExternalServiceCost o) {
  buildCounterExternalServiceCost++;
  if (buildCounterExternalServiceCost < 3) {
    unittest.expect(
      o.bytesBilled!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bytesProcessed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reservedSlotCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.slotMs!,
      unittest.equals('foo'),
    );
  }
  buildCounterExternalServiceCost--;
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

core.List<api.ErrorProto> buildUnnamed44() => [
      buildErrorProto(),
      buildErrorProto(),
    ];

void checkUnnamed44(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

core.List<api.TableRow> buildUnnamed45() => [
      buildTableRow(),
      buildTableRow(),
    ];

void checkUnnamed45(core.List<api.TableRow> o) {
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
    o.errors = buildUnnamed44();
    o.etag = 'foo';
    o.jobComplete = true;
    o.jobReference = buildJobReference();
    o.kind = 'foo';
    o.numDmlAffectedRows = 'foo';
    o.pageToken = 'foo';
    o.rows = buildUnnamed45();
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
    checkUnnamed44(o.errors!);
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
    checkUnnamed45(o.rows!);
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

core.List<api.Explanation> buildUnnamed46() => [
      buildExplanation(),
      buildExplanation(),
    ];

void checkUnnamed46(core.List<api.Explanation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExplanation(o[0]);
  checkExplanation(o[1]);
}

core.int buildCounterGlobalExplanation = 0;
api.GlobalExplanation buildGlobalExplanation() {
  final o = api.GlobalExplanation();
  buildCounterGlobalExplanation++;
  if (buildCounterGlobalExplanation < 3) {
    o.classLabel = 'foo';
    o.explanations = buildUnnamed46();
  }
  buildCounterGlobalExplanation--;
  return o;
}

void checkGlobalExplanation(api.GlobalExplanation o) {
  buildCounterGlobalExplanation++;
  if (buildCounterGlobalExplanation < 3) {
    unittest.expect(
      o.classLabel!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.explanations!);
  }
  buildCounterGlobalExplanation--;
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

core.int buildCounterHighCardinalityJoin = 0;
api.HighCardinalityJoin buildHighCardinalityJoin() {
  final o = api.HighCardinalityJoin();
  buildCounterHighCardinalityJoin++;
  if (buildCounterHighCardinalityJoin < 3) {
    o.leftRows = 'foo';
    o.outputRows = 'foo';
    o.rightRows = 'foo';
    o.stepIndex = 42;
  }
  buildCounterHighCardinalityJoin--;
  return o;
}

void checkHighCardinalityJoin(api.HighCardinalityJoin o) {
  buildCounterHighCardinalityJoin++;
  if (buildCounterHighCardinalityJoin < 3) {
    unittest.expect(
      o.leftRows!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputRows!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rightRows!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stepIndex!,
      unittest.equals(42),
    );
  }
  buildCounterHighCardinalityJoin--;
}

core.List<core.String> buildUnnamed47() => [
      'foo',
      'foo',
    ];

void checkUnnamed47(core.List<core.String> o) {
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

core.int buildCounterHivePartitioningOptions = 0;
api.HivePartitioningOptions buildHivePartitioningOptions() {
  final o = api.HivePartitioningOptions();
  buildCounterHivePartitioningOptions++;
  if (buildCounterHivePartitioningOptions < 3) {
    o.fields = buildUnnamed47();
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
    checkUnnamed47(o.fields!);
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

core.int buildCounterHparamSearchSpaces = 0;
api.HparamSearchSpaces buildHparamSearchSpaces() {
  final o = api.HparamSearchSpaces();
  buildCounterHparamSearchSpaces++;
  if (buildCounterHparamSearchSpaces < 3) {
    o.activationFn = buildStringHparamSearchSpace();
    o.batchSize = buildIntHparamSearchSpace();
    o.boosterType = buildStringHparamSearchSpace();
    o.colsampleBylevel = buildDoubleHparamSearchSpace();
    o.colsampleBynode = buildDoubleHparamSearchSpace();
    o.colsampleBytree = buildDoubleHparamSearchSpace();
    o.dartNormalizeType = buildStringHparamSearchSpace();
    o.dropout = buildDoubleHparamSearchSpace();
    o.hiddenUnits = buildIntArrayHparamSearchSpace();
    o.l1Reg = buildDoubleHparamSearchSpace();
    o.l2Reg = buildDoubleHparamSearchSpace();
    o.learnRate = buildDoubleHparamSearchSpace();
    o.maxTreeDepth = buildIntHparamSearchSpace();
    o.minSplitLoss = buildDoubleHparamSearchSpace();
    o.minTreeChildWeight = buildIntHparamSearchSpace();
    o.numClusters = buildIntHparamSearchSpace();
    o.numFactors = buildIntHparamSearchSpace();
    o.numParallelTree = buildIntHparamSearchSpace();
    o.optimizer = buildStringHparamSearchSpace();
    o.subsample = buildDoubleHparamSearchSpace();
    o.treeMethod = buildStringHparamSearchSpace();
    o.walsAlpha = buildDoubleHparamSearchSpace();
  }
  buildCounterHparamSearchSpaces--;
  return o;
}

void checkHparamSearchSpaces(api.HparamSearchSpaces o) {
  buildCounterHparamSearchSpaces++;
  if (buildCounterHparamSearchSpaces < 3) {
    checkStringHparamSearchSpace(o.activationFn!);
    checkIntHparamSearchSpace(o.batchSize!);
    checkStringHparamSearchSpace(o.boosterType!);
    checkDoubleHparamSearchSpace(o.colsampleBylevel!);
    checkDoubleHparamSearchSpace(o.colsampleBynode!);
    checkDoubleHparamSearchSpace(o.colsampleBytree!);
    checkStringHparamSearchSpace(o.dartNormalizeType!);
    checkDoubleHparamSearchSpace(o.dropout!);
    checkIntArrayHparamSearchSpace(o.hiddenUnits!);
    checkDoubleHparamSearchSpace(o.l1Reg!);
    checkDoubleHparamSearchSpace(o.l2Reg!);
    checkDoubleHparamSearchSpace(o.learnRate!);
    checkIntHparamSearchSpace(o.maxTreeDepth!);
    checkDoubleHparamSearchSpace(o.minSplitLoss!);
    checkIntHparamSearchSpace(o.minTreeChildWeight!);
    checkIntHparamSearchSpace(o.numClusters!);
    checkIntHparamSearchSpace(o.numFactors!);
    checkIntHparamSearchSpace(o.numParallelTree!);
    checkStringHparamSearchSpace(o.optimizer!);
    checkDoubleHparamSearchSpace(o.subsample!);
    checkStringHparamSearchSpace(o.treeMethod!);
    checkDoubleHparamSearchSpace(o.walsAlpha!);
  }
  buildCounterHparamSearchSpaces--;
}

core.int buildCounterHparamTuningTrial = 0;
api.HparamTuningTrial buildHparamTuningTrial() {
  final o = api.HparamTuningTrial();
  buildCounterHparamTuningTrial++;
  if (buildCounterHparamTuningTrial < 3) {
    o.endTimeMs = 'foo';
    o.errorMessage = 'foo';
    o.evalLoss = 42.0;
    o.evaluationMetrics = buildEvaluationMetrics();
    o.hparamTuningEvaluationMetrics = buildEvaluationMetrics();
    o.hparams = buildTrainingOptions();
    o.startTimeMs = 'foo';
    o.status = 'foo';
    o.trainingLoss = 42.0;
    o.trialId = 'foo';
  }
  buildCounterHparamTuningTrial--;
  return o;
}

void checkHparamTuningTrial(api.HparamTuningTrial o) {
  buildCounterHparamTuningTrial++;
  if (buildCounterHparamTuningTrial < 3) {
    unittest.expect(
      o.endTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.evalLoss!,
      unittest.equals(42.0),
    );
    checkEvaluationMetrics(o.evaluationMetrics!);
    checkEvaluationMetrics(o.hparamTuningEvaluationMetrics!);
    checkTrainingOptions(o.hparams!);
    unittest.expect(
      o.startTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trainingLoss!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.trialId!,
      unittest.equals('foo'),
    );
  }
  buildCounterHparamTuningTrial--;
}

core.int buildCounterIndexUnusedReason = 0;
api.IndexUnusedReason buildIndexUnusedReason() {
  final o = api.IndexUnusedReason();
  buildCounterIndexUnusedReason++;
  if (buildCounterIndexUnusedReason < 3) {
    o.baseTable = buildTableReference();
    o.code = 'foo';
    o.indexName = 'foo';
    o.message = 'foo';
  }
  buildCounterIndexUnusedReason--;
  return o;
}

void checkIndexUnusedReason(api.IndexUnusedReason o) {
  buildCounterIndexUnusedReason++;
  if (buildCounterIndexUnusedReason < 3) {
    checkTableReference(o.baseTable!);
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.indexName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterIndexUnusedReason--;
}

core.int buildCounterInputDataChange = 0;
api.InputDataChange buildInputDataChange() {
  final o = api.InputDataChange();
  buildCounterInputDataChange++;
  if (buildCounterInputDataChange < 3) {
    o.recordsReadDiffPercentage = 42.0;
  }
  buildCounterInputDataChange--;
  return o;
}

void checkInputDataChange(api.InputDataChange o) {
  buildCounterInputDataChange++;
  if (buildCounterInputDataChange < 3) {
    unittest.expect(
      o.recordsReadDiffPercentage!,
      unittest.equals(42.0),
    );
  }
  buildCounterInputDataChange--;
}

core.List<core.String> buildUnnamed48() => [
      'foo',
      'foo',
    ];

void checkUnnamed48(core.List<core.String> o) {
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

core.int buildCounterIntArray = 0;
api.IntArray buildIntArray() {
  final o = api.IntArray();
  buildCounterIntArray++;
  if (buildCounterIntArray < 3) {
    o.elements = buildUnnamed48();
  }
  buildCounterIntArray--;
  return o;
}

void checkIntArray(api.IntArray o) {
  buildCounterIntArray++;
  if (buildCounterIntArray < 3) {
    checkUnnamed48(o.elements!);
  }
  buildCounterIntArray--;
}

core.List<api.IntArray> buildUnnamed49() => [
      buildIntArray(),
      buildIntArray(),
    ];

void checkUnnamed49(core.List<api.IntArray> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntArray(o[0]);
  checkIntArray(o[1]);
}

core.int buildCounterIntArrayHparamSearchSpace = 0;
api.IntArrayHparamSearchSpace buildIntArrayHparamSearchSpace() {
  final o = api.IntArrayHparamSearchSpace();
  buildCounterIntArrayHparamSearchSpace++;
  if (buildCounterIntArrayHparamSearchSpace < 3) {
    o.candidates = buildUnnamed49();
  }
  buildCounterIntArrayHparamSearchSpace--;
  return o;
}

void checkIntArrayHparamSearchSpace(api.IntArrayHparamSearchSpace o) {
  buildCounterIntArrayHparamSearchSpace++;
  if (buildCounterIntArrayHparamSearchSpace < 3) {
    checkUnnamed49(o.candidates!);
  }
  buildCounterIntArrayHparamSearchSpace--;
}

core.List<core.String> buildUnnamed50() => [
      'foo',
      'foo',
    ];

void checkUnnamed50(core.List<core.String> o) {
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

core.int buildCounterIntCandidates = 0;
api.IntCandidates buildIntCandidates() {
  final o = api.IntCandidates();
  buildCounterIntCandidates++;
  if (buildCounterIntCandidates < 3) {
    o.candidates = buildUnnamed50();
  }
  buildCounterIntCandidates--;
  return o;
}

void checkIntCandidates(api.IntCandidates o) {
  buildCounterIntCandidates++;
  if (buildCounterIntCandidates < 3) {
    checkUnnamed50(o.candidates!);
  }
  buildCounterIntCandidates--;
}

core.int buildCounterIntHparamSearchSpace = 0;
api.IntHparamSearchSpace buildIntHparamSearchSpace() {
  final o = api.IntHparamSearchSpace();
  buildCounterIntHparamSearchSpace++;
  if (buildCounterIntHparamSearchSpace < 3) {
    o.candidates = buildIntCandidates();
    o.range = buildIntRange();
  }
  buildCounterIntHparamSearchSpace--;
  return o;
}

void checkIntHparamSearchSpace(api.IntHparamSearchSpace o) {
  buildCounterIntHparamSearchSpace++;
  if (buildCounterIntHparamSearchSpace < 3) {
    checkIntCandidates(o.candidates!);
    checkIntRange(o.range!);
  }
  buildCounterIntHparamSearchSpace--;
}

core.int buildCounterIntRange = 0;
api.IntRange buildIntRange() {
  final o = api.IntRange();
  buildCounterIntRange++;
  if (buildCounterIntRange < 3) {
    o.max = 'foo';
    o.min = 'foo';
  }
  buildCounterIntRange--;
  return o;
}

void checkIntRange(api.IntRange o) {
  buildCounterIntRange++;
  if (buildCounterIntRange < 3) {
    unittest.expect(
      o.max!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.min!,
      unittest.equals('foo'),
    );
  }
  buildCounterIntRange--;
}

core.List<api.ClusterInfo> buildUnnamed51() => [
      buildClusterInfo(),
      buildClusterInfo(),
    ];

void checkUnnamed51(core.List<api.ClusterInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterInfo(o[0]);
  checkClusterInfo(o[1]);
}

core.List<api.PrincipalComponentInfo> buildUnnamed52() => [
      buildPrincipalComponentInfo(),
      buildPrincipalComponentInfo(),
    ];

void checkUnnamed52(core.List<api.PrincipalComponentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrincipalComponentInfo(o[0]);
  checkPrincipalComponentInfo(o[1]);
}

core.int buildCounterIterationResult = 0;
api.IterationResult buildIterationResult() {
  final o = api.IterationResult();
  buildCounterIterationResult++;
  if (buildCounterIterationResult < 3) {
    o.arimaResult = buildArimaResult();
    o.clusterInfos = buildUnnamed51();
    o.durationMs = 'foo';
    o.evalLoss = 42.0;
    o.index = 42;
    o.learnRate = 42.0;
    o.principalComponentInfos = buildUnnamed52();
    o.trainingLoss = 42.0;
  }
  buildCounterIterationResult--;
  return o;
}

void checkIterationResult(api.IterationResult o) {
  buildCounterIterationResult++;
  if (buildCounterIterationResult < 3) {
    checkArimaResult(o.arimaResult!);
    checkUnnamed51(o.clusterInfos!);
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
    checkUnnamed52(o.principalComponentInfos!);
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
    o.jobCreationReason = buildJobCreationReason();
    o.jobReference = buildJobReference();
    o.kind = 'foo';
    o.principalSubject = 'foo';
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
    checkJobCreationReason(o.jobCreationReason!);
    checkJobReference(o.jobReference!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.principalSubject!,
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

core.Map<core.String, core.String> buildUnnamed53() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed53(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed53();
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
    checkUnnamed53(o.labels!);
    checkJobConfigurationLoad(o.load!);
    checkJobConfigurationQuery(o.query!);
  }
  buildCounterJobConfiguration--;
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

core.int buildCounterJobConfigurationExtract = 0;
api.JobConfigurationExtract buildJobConfigurationExtract() {
  final o = api.JobConfigurationExtract();
  buildCounterJobConfigurationExtract++;
  if (buildCounterJobConfigurationExtract < 3) {
    o.compression = 'foo';
    o.destinationFormat = 'foo';
    o.destinationUri = 'foo';
    o.destinationUris = buildUnnamed54();
    o.fieldDelimiter = 'foo';
    o.modelExtractOptions = buildModelExtractOptions();
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
    checkUnnamed54(o.destinationUris!);
    unittest.expect(
      o.fieldDelimiter!,
      unittest.equals('foo'),
    );
    checkModelExtractOptions(o.modelExtractOptions!);
    unittest.expect(o.printHeader!, unittest.isTrue);
    checkModelReference(o.sourceModel!);
    checkTableReference(o.sourceTable!);
    unittest.expect(o.useAvroLogicalTypes!, unittest.isTrue);
  }
  buildCounterJobConfigurationExtract--;
}

core.List<api.ConnectionProperty> buildUnnamed55() => [
      buildConnectionProperty(),
      buildConnectionProperty(),
    ];

void checkUnnamed55(core.List<api.ConnectionProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionProperty(o[0]);
  checkConnectionProperty(o[1]);
}

core.List<core.String> buildUnnamed56() => [
      'foo',
      'foo',
    ];

void checkUnnamed56(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed57() => [
      'foo',
      'foo',
    ];

void checkUnnamed57(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed58() => [
      'foo',
      'foo',
    ];

void checkUnnamed58(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed59() => [
      'foo',
      'foo',
    ];

void checkUnnamed59(core.List<core.String> o) {
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
    o.connectionProperties = buildUnnamed55();
    o.copyFilesOnly = true;
    o.createDisposition = 'foo';
    o.createSession = true;
    o.decimalTargetTypes = buildUnnamed56();
    o.destinationEncryptionConfiguration = buildEncryptionConfiguration();
    o.destinationTable = buildTableReference();
    o.destinationTableProperties = buildDestinationTableProperties();
    o.encoding = 'foo';
    o.fieldDelimiter = 'foo';
    o.fileSetSpecType = 'foo';
    o.hivePartitioningOptions = buildHivePartitioningOptions();
    o.ignoreUnknownValues = true;
    o.jsonExtension = 'foo';
    o.maxBadRecords = 42;
    o.nullMarker = 'foo';
    o.parquetOptions = buildParquetOptions();
    o.preserveAsciiControlCharacters = true;
    o.projectionFields = buildUnnamed57();
    o.quote = 'foo';
    o.rangePartitioning = buildRangePartitioning();
    o.referenceFileSchemaUri = 'foo';
    o.schema = buildTableSchema();
    o.schemaInline = 'foo';
    o.schemaInlineFormat = 'foo';
    o.schemaUpdateOptions = buildUnnamed58();
    o.skipLeadingRows = 42;
    o.sourceFormat = 'foo';
    o.sourceUris = buildUnnamed59();
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
    checkUnnamed55(o.connectionProperties!);
    unittest.expect(o.copyFilesOnly!, unittest.isTrue);
    unittest.expect(
      o.createDisposition!,
      unittest.equals('foo'),
    );
    unittest.expect(o.createSession!, unittest.isTrue);
    checkUnnamed56(o.decimalTargetTypes!);
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
    unittest.expect(
      o.fileSetSpecType!,
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
    unittest.expect(o.preserveAsciiControlCharacters!, unittest.isTrue);
    checkUnnamed57(o.projectionFields!);
    unittest.expect(
      o.quote!,
      unittest.equals('foo'),
    );
    checkRangePartitioning(o.rangePartitioning!);
    unittest.expect(
      o.referenceFileSchemaUri!,
      unittest.equals('foo'),
    );
    checkTableSchema(o.schema!);
    unittest.expect(
      o.schemaInline!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.schemaInlineFormat!,
      unittest.equals('foo'),
    );
    checkUnnamed58(o.schemaUpdateOptions!);
    unittest.expect(
      o.skipLeadingRows!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sourceFormat!,
      unittest.equals('foo'),
    );
    checkUnnamed59(o.sourceUris!);
    checkTimePartitioning(o.timePartitioning!);
    unittest.expect(o.useAvroLogicalTypes!, unittest.isTrue);
    unittest.expect(
      o.writeDisposition!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobConfigurationLoad--;
}

core.List<api.ConnectionProperty> buildUnnamed60() => [
      buildConnectionProperty(),
      buildConnectionProperty(),
    ];

void checkUnnamed60(core.List<api.ConnectionProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionProperty(o[0]);
  checkConnectionProperty(o[1]);
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

core.Map<core.String, api.ExternalDataConfiguration> buildUnnamed63() => {
      'x': buildExternalDataConfiguration(),
      'y': buildExternalDataConfiguration(),
    };

void checkUnnamed63(core.Map<core.String, api.ExternalDataConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalDataConfiguration(o['x']!);
  checkExternalDataConfiguration(o['y']!);
}

core.List<api.UserDefinedFunctionResource> buildUnnamed64() => [
      buildUserDefinedFunctionResource(),
      buildUserDefinedFunctionResource(),
    ];

void checkUnnamed64(core.List<api.UserDefinedFunctionResource> o) {
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
    o.connectionProperties = buildUnnamed60();
    o.continuous = true;
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
    o.queryParameters = buildUnnamed61();
    o.rangePartitioning = buildRangePartitioning();
    o.schemaUpdateOptions = buildUnnamed62();
    o.scriptOptions = buildScriptOptions();
    o.systemVariables = buildSystemVariables();
    o.tableDefinitions = buildUnnamed63();
    o.timePartitioning = buildTimePartitioning();
    o.useLegacySql = true;
    o.useQueryCache = true;
    o.userDefinedFunctionResources = buildUnnamed64();
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
    checkUnnamed60(o.connectionProperties!);
    unittest.expect(o.continuous!, unittest.isTrue);
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
    checkUnnamed61(o.queryParameters!);
    checkRangePartitioning(o.rangePartitioning!);
    checkUnnamed62(o.schemaUpdateOptions!);
    checkScriptOptions(o.scriptOptions!);
    checkSystemVariables(o.systemVariables!);
    checkUnnamed63(o.tableDefinitions!);
    checkTimePartitioning(o.timePartitioning!);
    unittest.expect(o.useLegacySql!, unittest.isTrue);
    unittest.expect(o.useQueryCache!, unittest.isTrue);
    checkUnnamed64(o.userDefinedFunctionResources!);
    unittest.expect(
      o.writeDisposition!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobConfigurationQuery--;
}

core.List<api.TableReference> buildUnnamed65() => [
      buildTableReference(),
      buildTableReference(),
    ];

void checkUnnamed65(core.List<api.TableReference> o) {
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
    o.destinationExpirationTime = 'foo';
    o.destinationTable = buildTableReference();
    o.operationType = 'foo';
    o.sourceTable = buildTableReference();
    o.sourceTables = buildUnnamed65();
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
    unittest.expect(
      o.destinationExpirationTime!,
      unittest.equals('foo'),
    );
    checkTableReference(o.destinationTable!);
    unittest.expect(
      o.operationType!,
      unittest.equals('foo'),
    );
    checkTableReference(o.sourceTable!);
    checkUnnamed65(o.sourceTables!);
    unittest.expect(
      o.writeDisposition!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobConfigurationTableCopy--;
}

core.int buildCounterJobCreationReason = 0;
api.JobCreationReason buildJobCreationReason() {
  final o = api.JobCreationReason();
  buildCounterJobCreationReason++;
  if (buildCounterJobCreationReason < 3) {
    o.code = 'foo';
  }
  buildCounterJobCreationReason--;
  return o;
}

void checkJobCreationReason(api.JobCreationReason o) {
  buildCounterJobCreationReason++;
  if (buildCounterJobCreationReason < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobCreationReason--;
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
    o.principalSubject = 'foo';
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
      o.principalSubject!,
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

core.List<api.JobListJobs> buildUnnamed66() => [
      buildJobListJobs(),
      buildJobListJobs(),
    ];

void checkUnnamed66(core.List<api.JobListJobs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobListJobs(o[0]);
  checkJobListJobs(o[1]);
}

core.List<core.String> buildUnnamed67() => [
      'foo',
      'foo',
    ];

void checkUnnamed67(core.List<core.String> o) {
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

core.int buildCounterJobList = 0;
api.JobList buildJobList() {
  final o = api.JobList();
  buildCounterJobList++;
  if (buildCounterJobList < 3) {
    o.etag = 'foo';
    o.jobs = buildUnnamed66();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed67();
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
    checkUnnamed66(o.jobs!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed67(o.unreachable!);
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

core.List<core.String> buildUnnamed68() => [
      'foo',
      'foo',
    ];

void checkUnnamed68(core.List<core.String> o) {
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

core.List<api.JobStatisticsReservationUsage> buildUnnamed69() => [
      buildJobStatisticsReservationUsage(),
      buildJobStatisticsReservationUsage(),
    ];

void checkUnnamed69(core.List<api.JobStatisticsReservationUsage> o) {
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
    o.copy = buildJobStatistics5();
    o.creationTime = 'foo';
    o.dataMaskingStatistics = buildDataMaskingStatistics();
    o.endTime = 'foo';
    o.extract = buildJobStatistics4();
    o.finalExecutionDurationMs = 'foo';
    o.load = buildJobStatistics3();
    o.numChildJobs = 'foo';
    o.parentJobId = 'foo';
    o.query = buildJobStatistics2();
    o.quotaDeferments = buildUnnamed68();
    o.reservationUsage = buildUnnamed69();
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
    checkJobStatistics5(o.copy!);
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    checkDataMaskingStatistics(o.dataMaskingStatistics!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkJobStatistics4(o.extract!);
    unittest.expect(
      o.finalExecutionDurationMs!,
      unittest.equals('foo'),
    );
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
    checkUnnamed68(o.quotaDeferments!);
    checkUnnamed69(o.reservationUsage!);
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

core.List<api.ExternalServiceCost> buildUnnamed70() => [
      buildExternalServiceCost(),
      buildExternalServiceCost(),
    ];

void checkUnnamed70(core.List<api.ExternalServiceCost> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalServiceCost(o[0]);
  checkExternalServiceCost(o[1]);
}

core.List<api.ExplainQueryStage> buildUnnamed71() => [
      buildExplainQueryStage(),
      buildExplainQueryStage(),
    ];

void checkUnnamed71(core.List<api.ExplainQueryStage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExplainQueryStage(o[0]);
  checkExplainQueryStage(o[1]);
}

core.List<api.RoutineReference> buildUnnamed72() => [
      buildRoutineReference(),
      buildRoutineReference(),
    ];

void checkUnnamed72(core.List<api.RoutineReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoutineReference(o[0]);
  checkRoutineReference(o[1]);
}

core.List<api.TableReference> buildUnnamed73() => [
      buildTableReference(),
      buildTableReference(),
    ];

void checkUnnamed73(core.List<api.TableReference> o) {
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

core.List<api.JobStatistics2ReservationUsage> buildUnnamed74() => [
      buildJobStatistics2ReservationUsage(),
      buildJobStatistics2ReservationUsage(),
    ];

void checkUnnamed74(core.List<api.JobStatistics2ReservationUsage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobStatistics2ReservationUsage(o[0]);
  checkJobStatistics2ReservationUsage(o[1]);
}

core.List<api.QueryTimelineSample> buildUnnamed75() => [
      buildQueryTimelineSample(),
      buildQueryTimelineSample(),
    ];

void checkUnnamed75(core.List<api.QueryTimelineSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryTimelineSample(o[0]);
  checkQueryTimelineSample(o[1]);
}

core.List<api.QueryParameter> buildUnnamed76() => [
      buildQueryParameter(),
      buildQueryParameter(),
    ];

void checkUnnamed76(core.List<api.QueryParameter> o) {
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
    o.dclTargetDataset = buildDatasetReference();
    o.dclTargetTable = buildTableReference();
    o.dclTargetView = buildTableReference();
    o.ddlAffectedRowAccessPolicyCount = 'foo';
    o.ddlDestinationTable = buildTableReference();
    o.ddlOperationPerformed = 'foo';
    o.ddlTargetDataset = buildDatasetReference();
    o.ddlTargetRoutine = buildRoutineReference();
    o.ddlTargetRowAccessPolicy = buildRowAccessPolicyReference();
    o.ddlTargetTable = buildTableReference();
    o.dmlStats = buildDmlStatistics();
    o.estimatedBytesProcessed = 'foo';
    o.exportDataStatistics = buildExportDataStatistics();
    o.externalServiceCosts = buildUnnamed70();
    o.loadQueryStatistics = buildLoadQueryStatistics();
    o.materializedViewStatistics = buildMaterializedViewStatistics();
    o.metadataCacheStatistics = buildMetadataCacheStatistics();
    o.mlStatistics = buildMlStatistics();
    o.modelTraining = buildBigQueryModelTraining();
    o.modelTrainingCurrentIteration = 42;
    o.modelTrainingExpectedTotalIteration = 'foo';
    o.numDmlAffectedRows = 'foo';
    o.performanceInsights = buildPerformanceInsights();
    o.queryInfo = buildQueryInfo();
    o.queryPlan = buildUnnamed71();
    o.referencedRoutines = buildUnnamed72();
    o.referencedTables = buildUnnamed73();
    o.reservationUsage = buildUnnamed74();
    o.schema = buildTableSchema();
    o.searchStatistics = buildSearchStatistics();
    o.sparkStatistics = buildSparkStatistics();
    o.statementType = 'foo';
    o.timeline = buildUnnamed75();
    o.totalBytesBilled = 'foo';
    o.totalBytesProcessed = 'foo';
    o.totalBytesProcessedAccuracy = 'foo';
    o.totalPartitionsProcessed = 'foo';
    o.totalSlotMs = 'foo';
    o.transferredBytes = 'foo';
    o.undeclaredQueryParameters = buildUnnamed76();
    o.vectorSearchStatistics = buildVectorSearchStatistics();
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
    checkDatasetReference(o.dclTargetDataset!);
    checkTableReference(o.dclTargetTable!);
    checkTableReference(o.dclTargetView!);
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
    checkExportDataStatistics(o.exportDataStatistics!);
    checkUnnamed70(o.externalServiceCosts!);
    checkLoadQueryStatistics(o.loadQueryStatistics!);
    checkMaterializedViewStatistics(o.materializedViewStatistics!);
    checkMetadataCacheStatistics(o.metadataCacheStatistics!);
    checkMlStatistics(o.mlStatistics!);
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
    checkPerformanceInsights(o.performanceInsights!);
    checkQueryInfo(o.queryInfo!);
    checkUnnamed71(o.queryPlan!);
    checkUnnamed72(o.referencedRoutines!);
    checkUnnamed73(o.referencedTables!);
    checkUnnamed74(o.reservationUsage!);
    checkTableSchema(o.schema!);
    checkSearchStatistics(o.searchStatistics!);
    checkSparkStatistics(o.sparkStatistics!);
    unittest.expect(
      o.statementType!,
      unittest.equals('foo'),
    );
    checkUnnamed75(o.timeline!);
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
    unittest.expect(
      o.transferredBytes!,
      unittest.equals('foo'),
    );
    checkUnnamed76(o.undeclaredQueryParameters!);
    checkVectorSearchStatistics(o.vectorSearchStatistics!);
  }
  buildCounterJobStatistics2--;
}

core.List<api.QueryTimelineSample> buildUnnamed77() => [
      buildQueryTimelineSample(),
      buildQueryTimelineSample(),
    ];

void checkUnnamed77(core.List<api.QueryTimelineSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryTimelineSample(o[0]);
  checkQueryTimelineSample(o[1]);
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
    o.timeline = buildUnnamed77();
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
    checkUnnamed77(o.timeline!);
  }
  buildCounterJobStatistics3--;
}

core.List<core.String> buildUnnamed78() => [
      'foo',
      'foo',
    ];

void checkUnnamed78(core.List<core.String> o) {
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

core.List<api.QueryTimelineSample> buildUnnamed79() => [
      buildQueryTimelineSample(),
      buildQueryTimelineSample(),
    ];

void checkUnnamed79(core.List<api.QueryTimelineSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryTimelineSample(o[0]);
  checkQueryTimelineSample(o[1]);
}

core.int buildCounterJobStatistics4 = 0;
api.JobStatistics4 buildJobStatistics4() {
  final o = api.JobStatistics4();
  buildCounterJobStatistics4++;
  if (buildCounterJobStatistics4 < 3) {
    o.destinationUriFileCounts = buildUnnamed78();
    o.inputBytes = 'foo';
    o.timeline = buildUnnamed79();
  }
  buildCounterJobStatistics4--;
  return o;
}

void checkJobStatistics4(api.JobStatistics4 o) {
  buildCounterJobStatistics4++;
  if (buildCounterJobStatistics4 < 3) {
    checkUnnamed78(o.destinationUriFileCounts!);
    unittest.expect(
      o.inputBytes!,
      unittest.equals('foo'),
    );
    checkUnnamed79(o.timeline!);
  }
  buildCounterJobStatistics4--;
}

core.int buildCounterJobStatistics5 = 0;
api.JobStatistics5 buildJobStatistics5() {
  final o = api.JobStatistics5();
  buildCounterJobStatistics5++;
  if (buildCounterJobStatistics5 < 3) {
    o.copiedLogicalBytes = 'foo';
    o.copiedRows = 'foo';
  }
  buildCounterJobStatistics5--;
  return o;
}

void checkJobStatistics5(api.JobStatistics5 o) {
  buildCounterJobStatistics5++;
  if (buildCounterJobStatistics5 < 3) {
    unittest.expect(
      o.copiedLogicalBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.copiedRows!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobStatistics5--;
}

core.List<api.ErrorProto> buildUnnamed80() => [
      buildErrorProto(),
      buildErrorProto(),
    ];

void checkUnnamed80(core.List<api.ErrorProto> o) {
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
    o.errors = buildUnnamed80();
    o.state = 'foo';
  }
  buildCounterJobStatus--;
  return o;
}

void checkJobStatus(api.JobStatus o) {
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    checkErrorProto(o.errorResult!);
    checkUnnamed80(o.errors!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobStatus--;
}

core.List<core.String> buildUnnamed81() => [
      'foo',
      'foo',
    ];

void checkUnnamed81(core.List<core.String> o) {
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

core.int buildCounterJoinRestrictionPolicy = 0;
api.JoinRestrictionPolicy buildJoinRestrictionPolicy() {
  final o = api.JoinRestrictionPolicy();
  buildCounterJoinRestrictionPolicy++;
  if (buildCounterJoinRestrictionPolicy < 3) {
    o.joinAllowedColumns = buildUnnamed81();
    o.joinCondition = 'foo';
  }
  buildCounterJoinRestrictionPolicy--;
  return o;
}

void checkJoinRestrictionPolicy(api.JoinRestrictionPolicy o) {
  buildCounterJoinRestrictionPolicy++;
  if (buildCounterJoinRestrictionPolicy < 3) {
    checkUnnamed81(o.joinAllowedColumns!);
    unittest.expect(
      o.joinCondition!,
      unittest.equals('foo'),
    );
  }
  buildCounterJoinRestrictionPolicy--;
}

api.JsonObject buildJsonObject() {
  return {
    'a': {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    },
    'b': {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    },
  };
}

void checkJsonObject(api.JsonObject o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['a']!) as core.Map;
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
  var casted2 = (o['b']!) as core.Map;
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
}

core.int buildCounterJsonOptions = 0;
api.JsonOptions buildJsonOptions() {
  final o = api.JsonOptions();
  buildCounterJsonOptions++;
  if (buildCounterJsonOptions < 3) {
    o.encoding = 'foo';
  }
  buildCounterJsonOptions--;
  return o;
}

void checkJsonOptions(api.JsonOptions o) {
  buildCounterJsonOptions++;
  if (buildCounterJsonOptions < 3) {
    unittest.expect(
      o.encoding!,
      unittest.equals('foo'),
    );
  }
  buildCounterJsonOptions--;
}

core.int buildCounterLinkedDatasetMetadata = 0;
api.LinkedDatasetMetadata buildLinkedDatasetMetadata() {
  final o = api.LinkedDatasetMetadata();
  buildCounterLinkedDatasetMetadata++;
  if (buildCounterLinkedDatasetMetadata < 3) {
    o.linkState = 'foo';
  }
  buildCounterLinkedDatasetMetadata--;
  return o;
}

void checkLinkedDatasetMetadata(api.LinkedDatasetMetadata o) {
  buildCounterLinkedDatasetMetadata++;
  if (buildCounterLinkedDatasetMetadata < 3) {
    unittest.expect(
      o.linkState!,
      unittest.equals('foo'),
    );
  }
  buildCounterLinkedDatasetMetadata--;
}

core.int buildCounterLinkedDatasetSource = 0;
api.LinkedDatasetSource buildLinkedDatasetSource() {
  final o = api.LinkedDatasetSource();
  buildCounterLinkedDatasetSource++;
  if (buildCounterLinkedDatasetSource < 3) {
    o.sourceDataset = buildDatasetReference();
  }
  buildCounterLinkedDatasetSource--;
  return o;
}

void checkLinkedDatasetSource(api.LinkedDatasetSource o) {
  buildCounterLinkedDatasetSource++;
  if (buildCounterLinkedDatasetSource < 3) {
    checkDatasetReference(o.sourceDataset!);
  }
  buildCounterLinkedDatasetSource--;
}

core.List<api.Model> buildUnnamed82() => [
      buildModel(),
      buildModel(),
    ];

void checkUnnamed82(core.List<api.Model> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkModel(o[0]);
  checkModel(o[1]);
}

core.int buildCounterListModelsResponse = 0;
api.ListModelsResponse buildListModelsResponse() {
  final o = api.ListModelsResponse();
  buildCounterListModelsResponse++;
  if (buildCounterListModelsResponse < 3) {
    o.models = buildUnnamed82();
    o.nextPageToken = 'foo';
  }
  buildCounterListModelsResponse--;
  return o;
}

void checkListModelsResponse(api.ListModelsResponse o) {
  buildCounterListModelsResponse++;
  if (buildCounterListModelsResponse < 3) {
    checkUnnamed82(o.models!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListModelsResponse--;
}

core.List<api.Routine> buildUnnamed83() => [
      buildRoutine(),
      buildRoutine(),
    ];

void checkUnnamed83(core.List<api.Routine> o) {
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
    o.routines = buildUnnamed83();
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
    checkUnnamed83(o.routines!);
  }
  buildCounterListRoutinesResponse--;
}

core.List<api.RowAccessPolicy> buildUnnamed84() => [
      buildRowAccessPolicy(),
      buildRowAccessPolicy(),
    ];

void checkUnnamed84(core.List<api.RowAccessPolicy> o) {
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
    o.rowAccessPolicies = buildUnnamed84();
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
    checkUnnamed84(o.rowAccessPolicies!);
  }
  buildCounterListRowAccessPoliciesResponse--;
}

core.int buildCounterLoadQueryStatistics = 0;
api.LoadQueryStatistics buildLoadQueryStatistics() {
  final o = api.LoadQueryStatistics();
  buildCounterLoadQueryStatistics++;
  if (buildCounterLoadQueryStatistics < 3) {
    o.badRecords = 'foo';
    o.bytesTransferred = 'foo';
    o.inputFileBytes = 'foo';
    o.inputFiles = 'foo';
    o.outputBytes = 'foo';
    o.outputRows = 'foo';
  }
  buildCounterLoadQueryStatistics--;
  return o;
}

void checkLoadQueryStatistics(api.LoadQueryStatistics o) {
  buildCounterLoadQueryStatistics++;
  if (buildCounterLoadQueryStatistics < 3) {
    unittest.expect(
      o.badRecords!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bytesTransferred!,
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
  buildCounterLoadQueryStatistics--;
}

core.int buildCounterMaterializedView = 0;
api.MaterializedView buildMaterializedView() {
  final o = api.MaterializedView();
  buildCounterMaterializedView++;
  if (buildCounterMaterializedView < 3) {
    o.chosen = true;
    o.estimatedBytesSaved = 'foo';
    o.rejectedReason = 'foo';
    o.tableReference = buildTableReference();
  }
  buildCounterMaterializedView--;
  return o;
}

void checkMaterializedView(api.MaterializedView o) {
  buildCounterMaterializedView++;
  if (buildCounterMaterializedView < 3) {
    unittest.expect(o.chosen!, unittest.isTrue);
    unittest.expect(
      o.estimatedBytesSaved!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rejectedReason!,
      unittest.equals('foo'),
    );
    checkTableReference(o.tableReference!);
  }
  buildCounterMaterializedView--;
}

core.int buildCounterMaterializedViewDefinition = 0;
api.MaterializedViewDefinition buildMaterializedViewDefinition() {
  final o = api.MaterializedViewDefinition();
  buildCounterMaterializedViewDefinition++;
  if (buildCounterMaterializedViewDefinition < 3) {
    o.allowNonIncrementalDefinition = true;
    o.enableRefresh = true;
    o.lastRefreshTime = 'foo';
    o.maxStaleness = 'foo';
    o.query = 'foo';
    o.refreshIntervalMs = 'foo';
  }
  buildCounterMaterializedViewDefinition--;
  return o;
}

void checkMaterializedViewDefinition(api.MaterializedViewDefinition o) {
  buildCounterMaterializedViewDefinition++;
  if (buildCounterMaterializedViewDefinition < 3) {
    unittest.expect(o.allowNonIncrementalDefinition!, unittest.isTrue);
    unittest.expect(o.enableRefresh!, unittest.isTrue);
    unittest.expect(
      o.lastRefreshTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxStaleness!,
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

core.List<api.MaterializedView> buildUnnamed85() => [
      buildMaterializedView(),
      buildMaterializedView(),
    ];

void checkUnnamed85(core.List<api.MaterializedView> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMaterializedView(o[0]);
  checkMaterializedView(o[1]);
}

core.int buildCounterMaterializedViewStatistics = 0;
api.MaterializedViewStatistics buildMaterializedViewStatistics() {
  final o = api.MaterializedViewStatistics();
  buildCounterMaterializedViewStatistics++;
  if (buildCounterMaterializedViewStatistics < 3) {
    o.materializedView = buildUnnamed85();
  }
  buildCounterMaterializedViewStatistics--;
  return o;
}

void checkMaterializedViewStatistics(api.MaterializedViewStatistics o) {
  buildCounterMaterializedViewStatistics++;
  if (buildCounterMaterializedViewStatistics < 3) {
    checkUnnamed85(o.materializedView!);
  }
  buildCounterMaterializedViewStatistics--;
}

core.int buildCounterMaterializedViewStatus = 0;
api.MaterializedViewStatus buildMaterializedViewStatus() {
  final o = api.MaterializedViewStatus();
  buildCounterMaterializedViewStatus++;
  if (buildCounterMaterializedViewStatus < 3) {
    o.lastRefreshStatus = buildErrorProto();
    o.refreshWatermark = 'foo';
  }
  buildCounterMaterializedViewStatus--;
  return o;
}

void checkMaterializedViewStatus(api.MaterializedViewStatus o) {
  buildCounterMaterializedViewStatus++;
  if (buildCounterMaterializedViewStatus < 3) {
    checkErrorProto(o.lastRefreshStatus!);
    unittest.expect(
      o.refreshWatermark!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaterializedViewStatus--;
}

core.List<api.TableMetadataCacheUsage> buildUnnamed86() => [
      buildTableMetadataCacheUsage(),
      buildTableMetadataCacheUsage(),
    ];

void checkUnnamed86(core.List<api.TableMetadataCacheUsage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableMetadataCacheUsage(o[0]);
  checkTableMetadataCacheUsage(o[1]);
}

core.int buildCounterMetadataCacheStatistics = 0;
api.MetadataCacheStatistics buildMetadataCacheStatistics() {
  final o = api.MetadataCacheStatistics();
  buildCounterMetadataCacheStatistics++;
  if (buildCounterMetadataCacheStatistics < 3) {
    o.tableMetadataCacheUsage = buildUnnamed86();
  }
  buildCounterMetadataCacheStatistics--;
  return o;
}

void checkMetadataCacheStatistics(api.MetadataCacheStatistics o) {
  buildCounterMetadataCacheStatistics++;
  if (buildCounterMetadataCacheStatistics < 3) {
    checkUnnamed86(o.tableMetadataCacheUsage!);
  }
  buildCounterMetadataCacheStatistics--;
}

core.List<api.HparamTuningTrial> buildUnnamed87() => [
      buildHparamTuningTrial(),
      buildHparamTuningTrial(),
    ];

void checkUnnamed87(core.List<api.HparamTuningTrial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHparamTuningTrial(o[0]);
  checkHparamTuningTrial(o[1]);
}

core.List<api.IterationResult> buildUnnamed88() => [
      buildIterationResult(),
      buildIterationResult(),
    ];

void checkUnnamed88(core.List<api.IterationResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIterationResult(o[0]);
  checkIterationResult(o[1]);
}

core.int buildCounterMlStatistics = 0;
api.MlStatistics buildMlStatistics() {
  final o = api.MlStatistics();
  buildCounterMlStatistics++;
  if (buildCounterMlStatistics < 3) {
    o.hparamTrials = buildUnnamed87();
    o.iterationResults = buildUnnamed88();
    o.maxIterations = 'foo';
    o.modelType = 'foo';
    o.trainingType = 'foo';
  }
  buildCounterMlStatistics--;
  return o;
}

void checkMlStatistics(api.MlStatistics o) {
  buildCounterMlStatistics++;
  if (buildCounterMlStatistics < 3) {
    checkUnnamed87(o.hparamTrials!);
    checkUnnamed88(o.iterationResults!);
    unittest.expect(
      o.maxIterations!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modelType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trainingType!,
      unittest.equals('foo'),
    );
  }
  buildCounterMlStatistics--;
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

core.List<api.HparamTuningTrial> buildUnnamed90() => [
      buildHparamTuningTrial(),
      buildHparamTuningTrial(),
    ];

void checkUnnamed90(core.List<api.HparamTuningTrial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHparamTuningTrial(o[0]);
  checkHparamTuningTrial(o[1]);
}

core.List<api.StandardSqlField> buildUnnamed91() => [
      buildStandardSqlField(),
      buildStandardSqlField(),
    ];

void checkUnnamed91(core.List<api.StandardSqlField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardSqlField(o[0]);
  checkStandardSqlField(o[1]);
}

core.Map<core.String, core.String> buildUnnamed92() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed92(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed93() => [
      'foo',
      'foo',
    ];

void checkUnnamed93(core.List<core.String> o) {
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

core.List<api.TrainingRun> buildUnnamed94() => [
      buildTrainingRun(),
      buildTrainingRun(),
    ];

void checkUnnamed94(core.List<api.TrainingRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrainingRun(o[0]);
  checkTrainingRun(o[1]);
}

core.List<api.TransformColumn> buildUnnamed95() => [
      buildTransformColumn(),
      buildTransformColumn(),
    ];

void checkUnnamed95(core.List<api.TransformColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransformColumn(o[0]);
  checkTransformColumn(o[1]);
}

core.int buildCounterModel = 0;
api.Model buildModel() {
  final o = api.Model();
  buildCounterModel++;
  if (buildCounterModel < 3) {
    o.bestTrialId = 'foo';
    o.creationTime = 'foo';
    o.defaultTrialId = 'foo';
    o.description = 'foo';
    o.encryptionConfiguration = buildEncryptionConfiguration();
    o.etag = 'foo';
    o.expirationTime = 'foo';
    o.featureColumns = buildUnnamed89();
    o.friendlyName = 'foo';
    o.hparamSearchSpaces = buildHparamSearchSpaces();
    o.hparamTrials = buildUnnamed90();
    o.labelColumns = buildUnnamed91();
    o.labels = buildUnnamed92();
    o.lastModifiedTime = 'foo';
    o.location = 'foo';
    o.modelReference = buildModelReference();
    o.modelType = 'foo';
    o.optimalTrialIds = buildUnnamed93();
    o.remoteModelInfo = buildRemoteModelInfo();
    o.trainingRuns = buildUnnamed94();
    o.transformColumns = buildUnnamed95();
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
      o.defaultTrialId!,
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
    checkUnnamed89(o.featureColumns!);
    unittest.expect(
      o.friendlyName!,
      unittest.equals('foo'),
    );
    checkHparamSearchSpaces(o.hparamSearchSpaces!);
    checkUnnamed90(o.hparamTrials!);
    checkUnnamed91(o.labelColumns!);
    checkUnnamed92(o.labels!);
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
    checkUnnamed93(o.optimalTrialIds!);
    checkRemoteModelInfo(o.remoteModelInfo!);
    checkUnnamed94(o.trainingRuns!);
    checkUnnamed95(o.transformColumns!);
  }
  buildCounterModel--;
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

core.int buildCounterModelDefinitionModelOptions = 0;
api.ModelDefinitionModelOptions buildModelDefinitionModelOptions() {
  final o = api.ModelDefinitionModelOptions();
  buildCounterModelDefinitionModelOptions++;
  if (buildCounterModelDefinitionModelOptions < 3) {
    o.labels = buildUnnamed96();
    o.lossType = 'foo';
    o.modelType = 'foo';
  }
  buildCounterModelDefinitionModelOptions--;
  return o;
}

void checkModelDefinitionModelOptions(api.ModelDefinitionModelOptions o) {
  buildCounterModelDefinitionModelOptions++;
  if (buildCounterModelDefinitionModelOptions < 3) {
    checkUnnamed96(o.labels!);
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

core.List<api.BqmlTrainingRun> buildUnnamed97() => [
      buildBqmlTrainingRun(),
      buildBqmlTrainingRun(),
    ];

void checkUnnamed97(core.List<api.BqmlTrainingRun> o) {
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
    o.trainingRuns = buildUnnamed97();
  }
  buildCounterModelDefinition--;
  return o;
}

void checkModelDefinition(api.ModelDefinition o) {
  buildCounterModelDefinition++;
  if (buildCounterModelDefinition < 3) {
    checkModelDefinitionModelOptions(o.modelOptions!);
    checkUnnamed97(o.trainingRuns!);
  }
  buildCounterModelDefinition--;
}

core.int buildCounterModelExtractOptions = 0;
api.ModelExtractOptions buildModelExtractOptions() {
  final o = api.ModelExtractOptions();
  buildCounterModelExtractOptions++;
  if (buildCounterModelExtractOptions < 3) {
    o.trialId = 'foo';
  }
  buildCounterModelExtractOptions--;
  return o;
}

void checkModelExtractOptions(api.ModelExtractOptions o) {
  buildCounterModelExtractOptions++;
  if (buildCounterModelExtractOptions < 3) {
    unittest.expect(
      o.trialId!,
      unittest.equals('foo'),
    );
  }
  buildCounterModelExtractOptions--;
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

core.List<api.ConfusionMatrix> buildUnnamed98() => [
      buildConfusionMatrix(),
      buildConfusionMatrix(),
    ];

void checkUnnamed98(core.List<api.ConfusionMatrix> o) {
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
    o.confusionMatrixList = buildUnnamed98();
  }
  buildCounterMultiClassClassificationMetrics--;
  return o;
}

void checkMultiClassClassificationMetrics(
    api.MultiClassClassificationMetrics o) {
  buildCounterMultiClassClassificationMetrics++;
  if (buildCounterMultiClassClassificationMetrics < 3) {
    checkAggregateClassificationMetrics(o.aggregateClassificationMetrics!);
    checkUnnamed98(o.confusionMatrixList!);
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

core.List<api.SkewSource> buildUnnamed99() => [
      buildSkewSource(),
      buildSkewSource(),
    ];

void checkUnnamed99(core.List<api.SkewSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSkewSource(o[0]);
  checkSkewSource(o[1]);
}

core.int buildCounterPartitionSkew = 0;
api.PartitionSkew buildPartitionSkew() {
  final o = api.PartitionSkew();
  buildCounterPartitionSkew++;
  if (buildCounterPartitionSkew < 3) {
    o.skewSources = buildUnnamed99();
  }
  buildCounterPartitionSkew--;
  return o;
}

void checkPartitionSkew(api.PartitionSkew o) {
  buildCounterPartitionSkew++;
  if (buildCounterPartitionSkew < 3) {
    checkUnnamed99(o.skewSources!);
  }
  buildCounterPartitionSkew--;
}

core.int buildCounterPartitionedColumn = 0;
api.PartitionedColumn buildPartitionedColumn() {
  final o = api.PartitionedColumn();
  buildCounterPartitionedColumn++;
  if (buildCounterPartitionedColumn < 3) {
    o.field = 'foo';
  }
  buildCounterPartitionedColumn--;
  return o;
}

void checkPartitionedColumn(api.PartitionedColumn o) {
  buildCounterPartitionedColumn++;
  if (buildCounterPartitionedColumn < 3) {
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
  }
  buildCounterPartitionedColumn--;
}

core.List<api.PartitionedColumn> buildUnnamed100() => [
      buildPartitionedColumn(),
      buildPartitionedColumn(),
    ];

void checkUnnamed100(core.List<api.PartitionedColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartitionedColumn(o[0]);
  checkPartitionedColumn(o[1]);
}

core.int buildCounterPartitioningDefinition = 0;
api.PartitioningDefinition buildPartitioningDefinition() {
  final o = api.PartitioningDefinition();
  buildCounterPartitioningDefinition++;
  if (buildCounterPartitioningDefinition < 3) {
    o.partitionedColumn = buildUnnamed100();
  }
  buildCounterPartitioningDefinition--;
  return o;
}

void checkPartitioningDefinition(api.PartitioningDefinition o) {
  buildCounterPartitioningDefinition++;
  if (buildCounterPartitioningDefinition < 3) {
    checkUnnamed100(o.partitionedColumn!);
  }
  buildCounterPartitioningDefinition--;
}

core.List<api.StagePerformanceChangeInsight> buildUnnamed101() => [
      buildStagePerformanceChangeInsight(),
      buildStagePerformanceChangeInsight(),
    ];

void checkUnnamed101(core.List<api.StagePerformanceChangeInsight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStagePerformanceChangeInsight(o[0]);
  checkStagePerformanceChangeInsight(o[1]);
}

core.List<api.StagePerformanceStandaloneInsight> buildUnnamed102() => [
      buildStagePerformanceStandaloneInsight(),
      buildStagePerformanceStandaloneInsight(),
    ];

void checkUnnamed102(core.List<api.StagePerformanceStandaloneInsight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStagePerformanceStandaloneInsight(o[0]);
  checkStagePerformanceStandaloneInsight(o[1]);
}

core.int buildCounterPerformanceInsights = 0;
api.PerformanceInsights buildPerformanceInsights() {
  final o = api.PerformanceInsights();
  buildCounterPerformanceInsights++;
  if (buildCounterPerformanceInsights < 3) {
    o.avgPreviousExecutionMs = 'foo';
    o.stagePerformanceChangeInsights = buildUnnamed101();
    o.stagePerformanceStandaloneInsights = buildUnnamed102();
  }
  buildCounterPerformanceInsights--;
  return o;
}

void checkPerformanceInsights(api.PerformanceInsights o) {
  buildCounterPerformanceInsights++;
  if (buildCounterPerformanceInsights < 3) {
    unittest.expect(
      o.avgPreviousExecutionMs!,
      unittest.equals('foo'),
    );
    checkUnnamed101(o.stagePerformanceChangeInsights!);
    checkUnnamed102(o.stagePerformanceStandaloneInsights!);
  }
  buildCounterPerformanceInsights--;
}

core.List<api.AuditConfig> buildUnnamed103() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed103(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed104() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed104(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed103();
    o.bindings = buildUnnamed104();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed103(o.auditConfigs!);
    checkUnnamed104(o.bindings!);
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

core.int buildCounterPrincipalComponentInfo = 0;
api.PrincipalComponentInfo buildPrincipalComponentInfo() {
  final o = api.PrincipalComponentInfo();
  buildCounterPrincipalComponentInfo++;
  if (buildCounterPrincipalComponentInfo < 3) {
    o.cumulativeExplainedVarianceRatio = 42.0;
    o.explainedVariance = 42.0;
    o.explainedVarianceRatio = 42.0;
    o.principalComponentId = 'foo';
  }
  buildCounterPrincipalComponentInfo--;
  return o;
}

void checkPrincipalComponentInfo(api.PrincipalComponentInfo o) {
  buildCounterPrincipalComponentInfo++;
  if (buildCounterPrincipalComponentInfo < 3) {
    unittest.expect(
      o.cumulativeExplainedVarianceRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.explainedVariance!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.explainedVarianceRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.principalComponentId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrincipalComponentInfo--;
}

core.int buildCounterPrivacyPolicy = 0;
api.PrivacyPolicy buildPrivacyPolicy() {
  final o = api.PrivacyPolicy();
  buildCounterPrivacyPolicy++;
  if (buildCounterPrivacyPolicy < 3) {
    o.aggregationThresholdPolicy = buildAggregationThresholdPolicy();
    o.differentialPrivacyPolicy = buildDifferentialPrivacyPolicy();
    o.joinRestrictionPolicy = buildJoinRestrictionPolicy();
  }
  buildCounterPrivacyPolicy--;
  return o;
}

void checkPrivacyPolicy(api.PrivacyPolicy o) {
  buildCounterPrivacyPolicy++;
  if (buildCounterPrivacyPolicy < 3) {
    checkAggregationThresholdPolicy(o.aggregationThresholdPolicy!);
    checkDifferentialPrivacyPolicy(o.differentialPrivacyPolicy!);
    checkJoinRestrictionPolicy(o.joinRestrictionPolicy!);
  }
  buildCounterPrivacyPolicy--;
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

core.List<api.ProjectListProjects> buildUnnamed105() => [
      buildProjectListProjects(),
      buildProjectListProjects(),
    ];

void checkUnnamed105(core.List<api.ProjectListProjects> o) {
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
    o.projects = buildUnnamed105();
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
    checkUnnamed105(o.projects!);
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

core.Map<core.String, core.Object?> buildUnnamed106() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed106(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
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
  var casted4 = (o['y']!) as core.Map;
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

core.int buildCounterQueryInfo = 0;
api.QueryInfo buildQueryInfo() {
  final o = api.QueryInfo();
  buildCounterQueryInfo++;
  if (buildCounterQueryInfo < 3) {
    o.optimizationDetails = buildUnnamed106();
  }
  buildCounterQueryInfo--;
  return o;
}

void checkQueryInfo(api.QueryInfo o) {
  buildCounterQueryInfo++;
  if (buildCounterQueryInfo < 3) {
    checkUnnamed106(o.optimizationDetails!);
  }
  buildCounterQueryInfo--;
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

core.List<api.QueryParameterTypeStructTypes> buildUnnamed107() => [
      buildQueryParameterTypeStructTypes(),
      buildQueryParameterTypeStructTypes(),
    ];

void checkUnnamed107(core.List<api.QueryParameterTypeStructTypes> o) {
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
    o.rangeElementType = buildQueryParameterType();
    o.structTypes = buildUnnamed107();
    o.type = 'foo';
  }
  buildCounterQueryParameterType--;
  return o;
}

void checkQueryParameterType(api.QueryParameterType o) {
  buildCounterQueryParameterType++;
  if (buildCounterQueryParameterType < 3) {
    checkQueryParameterType(o.arrayType!);
    checkQueryParameterType(o.rangeElementType!);
    checkUnnamed107(o.structTypes!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryParameterType--;
}

core.List<api.QueryParameterValue> buildUnnamed108() => [
      buildQueryParameterValue(),
      buildQueryParameterValue(),
    ];

void checkUnnamed108(core.List<api.QueryParameterValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameterValue(o[0]);
  checkQueryParameterValue(o[1]);
}

core.Map<core.String, api.QueryParameterValue> buildUnnamed109() => {
      'x': buildQueryParameterValue(),
      'y': buildQueryParameterValue(),
    };

void checkUnnamed109(core.Map<core.String, api.QueryParameterValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameterValue(o['x']!);
  checkQueryParameterValue(o['y']!);
}

core.int buildCounterQueryParameterValue = 0;
api.QueryParameterValue buildQueryParameterValue() {
  final o = api.QueryParameterValue();
  buildCounterQueryParameterValue++;
  if (buildCounterQueryParameterValue < 3) {
    o.arrayValues = buildUnnamed108();
    o.rangeValue = buildRangeValue();
    o.structValues = buildUnnamed109();
    o.value = 'foo';
  }
  buildCounterQueryParameterValue--;
  return o;
}

void checkQueryParameterValue(api.QueryParameterValue o) {
  buildCounterQueryParameterValue++;
  if (buildCounterQueryParameterValue < 3) {
    checkUnnamed108(o.arrayValues!);
    checkRangeValue(o.rangeValue!);
    checkUnnamed109(o.structValues!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryParameterValue--;
}

core.List<api.ConnectionProperty> buildUnnamed110() => [
      buildConnectionProperty(),
      buildConnectionProperty(),
    ];

void checkUnnamed110(core.List<api.ConnectionProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionProperty(o[0]);
  checkConnectionProperty(o[1]);
}

core.Map<core.String, core.String> buildUnnamed111() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed111(core.Map<core.String, core.String> o) {
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

core.List<api.QueryParameter> buildUnnamed112() => [
      buildQueryParameter(),
      buildQueryParameter(),
    ];

void checkUnnamed112(core.List<api.QueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameter(o[0]);
  checkQueryParameter(o[1]);
}

core.int buildCounterQueryRequest = 0;
api.QueryRequest buildQueryRequest() {
  final o = api.QueryRequest();
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    o.connectionProperties = buildUnnamed110();
    o.continuous = true;
    o.createSession = true;
    o.defaultDataset = buildDatasetReference();
    o.dryRun = true;
    o.formatOptions = buildDataFormatOptions();
    o.jobCreationMode = 'foo';
    o.kind = 'foo';
    o.labels = buildUnnamed111();
    o.location = 'foo';
    o.maxResults = 42;
    o.maximumBytesBilled = 'foo';
    o.parameterMode = 'foo';
    o.preserveNulls = true;
    o.query = 'foo';
    o.queryParameters = buildUnnamed112();
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
    checkUnnamed110(o.connectionProperties!);
    unittest.expect(o.continuous!, unittest.isTrue);
    unittest.expect(o.createSession!, unittest.isTrue);
    checkDatasetReference(o.defaultDataset!);
    unittest.expect(o.dryRun!, unittest.isTrue);
    checkDataFormatOptions(o.formatOptions!);
    unittest.expect(
      o.jobCreationMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed111(o.labels!);
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
    checkUnnamed112(o.queryParameters!);
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

core.List<api.ErrorProto> buildUnnamed113() => [
      buildErrorProto(),
      buildErrorProto(),
    ];

void checkUnnamed113(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

core.List<api.TableRow> buildUnnamed114() => [
      buildTableRow(),
      buildTableRow(),
    ];

void checkUnnamed114(core.List<api.TableRow> o) {
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
    o.errors = buildUnnamed113();
    o.jobComplete = true;
    o.jobCreationReason = buildJobCreationReason();
    o.jobReference = buildJobReference();
    o.kind = 'foo';
    o.numDmlAffectedRows = 'foo';
    o.pageToken = 'foo';
    o.queryId = 'foo';
    o.rows = buildUnnamed114();
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
    checkUnnamed113(o.errors!);
    unittest.expect(o.jobComplete!, unittest.isTrue);
    checkJobCreationReason(o.jobCreationReason!);
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
    unittest.expect(
      o.queryId!,
      unittest.equals('foo'),
    );
    checkUnnamed114(o.rows!);
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
    o.estimatedRunnableUnits = 'foo';
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
      o.estimatedRunnableUnits!,
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

core.int buildCounterRangeValue = 0;
api.RangeValue buildRangeValue() {
  final o = api.RangeValue();
  buildCounterRangeValue++;
  if (buildCounterRangeValue < 3) {
    o.end = buildQueryParameterValue();
    o.start = buildQueryParameterValue();
  }
  buildCounterRangeValue--;
  return o;
}

void checkRangeValue(api.RangeValue o) {
  buildCounterRangeValue++;
  if (buildCounterRangeValue < 3) {
    checkQueryParameterValue(o.end!);
    checkQueryParameterValue(o.start!);
  }
  buildCounterRangeValue--;
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

core.Map<core.String, core.String> buildUnnamed115() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed115(core.Map<core.String, core.String> o) {
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

core.int buildCounterRemoteFunctionOptions = 0;
api.RemoteFunctionOptions buildRemoteFunctionOptions() {
  final o = api.RemoteFunctionOptions();
  buildCounterRemoteFunctionOptions++;
  if (buildCounterRemoteFunctionOptions < 3) {
    o.connection = 'foo';
    o.endpoint = 'foo';
    o.maxBatchingRows = 'foo';
    o.userDefinedContext = buildUnnamed115();
  }
  buildCounterRemoteFunctionOptions--;
  return o;
}

void checkRemoteFunctionOptions(api.RemoteFunctionOptions o) {
  buildCounterRemoteFunctionOptions++;
  if (buildCounterRemoteFunctionOptions < 3) {
    unittest.expect(
      o.connection!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxBatchingRows!,
      unittest.equals('foo'),
    );
    checkUnnamed115(o.userDefinedContext!);
  }
  buildCounterRemoteFunctionOptions--;
}

core.int buildCounterRemoteModelInfo = 0;
api.RemoteModelInfo buildRemoteModelInfo() {
  final o = api.RemoteModelInfo();
  buildCounterRemoteModelInfo++;
  if (buildCounterRemoteModelInfo < 3) {
    o.connection = 'foo';
    o.endpoint = 'foo';
    o.maxBatchingRows = 'foo';
    o.remoteModelVersion = 'foo';
    o.remoteServiceType = 'foo';
    o.speechRecognizer = 'foo';
  }
  buildCounterRemoteModelInfo--;
  return o;
}

void checkRemoteModelInfo(api.RemoteModelInfo o) {
  buildCounterRemoteModelInfo++;
  if (buildCounterRemoteModelInfo < 3) {
    unittest.expect(
      o.connection!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxBatchingRows!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remoteModelVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remoteServiceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.speechRecognizer!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoteModelInfo--;
}

core.List<api.Argument> buildUnnamed116() => [
      buildArgument(),
      buildArgument(),
    ];

void checkUnnamed116(core.List<api.Argument> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArgument(o[0]);
  checkArgument(o[1]);
}

core.List<core.String> buildUnnamed117() => [
      'foo',
      'foo',
    ];

void checkUnnamed117(core.List<core.String> o) {
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
    o.arguments = buildUnnamed116();
    o.creationTime = 'foo';
    o.dataGovernanceType = 'foo';
    o.definitionBody = 'foo';
    o.description = 'foo';
    o.determinismLevel = 'foo';
    o.etag = 'foo';
    o.importedLibraries = buildUnnamed117();
    o.language = 'foo';
    o.lastModifiedTime = 'foo';
    o.remoteFunctionOptions = buildRemoteFunctionOptions();
    o.returnTableType = buildStandardSqlTableType();
    o.returnType = buildStandardSqlDataType();
    o.routineReference = buildRoutineReference();
    o.routineType = 'foo';
    o.securityMode = 'foo';
    o.sparkOptions = buildSparkOptions();
    o.strictMode = true;
  }
  buildCounterRoutine--;
  return o;
}

void checkRoutine(api.Routine o) {
  buildCounterRoutine++;
  if (buildCounterRoutine < 3) {
    checkUnnamed116(o.arguments!);
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataGovernanceType!,
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
    checkUnnamed117(o.importedLibraries!);
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    checkRemoteFunctionOptions(o.remoteFunctionOptions!);
    checkStandardSqlTableType(o.returnTableType!);
    checkStandardSqlDataType(o.returnType!);
    checkRoutineReference(o.routineReference!);
    unittest.expect(
      o.routineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.securityMode!,
      unittest.equals('foo'),
    );
    checkSparkOptions(o.sparkOptions!);
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

core.List<api.Entry> buildUnnamed118() => [
      buildEntry(),
      buildEntry(),
    ];

void checkUnnamed118(core.List<api.Entry> o) {
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
    o.entries = buildUnnamed118();
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
    checkUnnamed118(o.entries!);
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

core.int buildCounterScriptOptions = 0;
api.ScriptOptions buildScriptOptions() {
  final o = api.ScriptOptions();
  buildCounterScriptOptions++;
  if (buildCounterScriptOptions < 3) {
    o.keyResultStatement = 'foo';
    o.statementByteBudget = 'foo';
    o.statementTimeoutMs = 'foo';
  }
  buildCounterScriptOptions--;
  return o;
}

void checkScriptOptions(api.ScriptOptions o) {
  buildCounterScriptOptions++;
  if (buildCounterScriptOptions < 3) {
    unittest.expect(
      o.keyResultStatement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statementByteBudget!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statementTimeoutMs!,
      unittest.equals('foo'),
    );
  }
  buildCounterScriptOptions--;
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

core.List<api.ScriptStackFrame> buildUnnamed119() => [
      buildScriptStackFrame(),
      buildScriptStackFrame(),
    ];

void checkUnnamed119(core.List<api.ScriptStackFrame> o) {
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
    o.stackFrames = buildUnnamed119();
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
    checkUnnamed119(o.stackFrames!);
  }
  buildCounterScriptStatistics--;
}

core.List<api.IndexUnusedReason> buildUnnamed120() => [
      buildIndexUnusedReason(),
      buildIndexUnusedReason(),
    ];

void checkUnnamed120(core.List<api.IndexUnusedReason> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIndexUnusedReason(o[0]);
  checkIndexUnusedReason(o[1]);
}

core.int buildCounterSearchStatistics = 0;
api.SearchStatistics buildSearchStatistics() {
  final o = api.SearchStatistics();
  buildCounterSearchStatistics++;
  if (buildCounterSearchStatistics < 3) {
    o.indexUnusedReasons = buildUnnamed120();
    o.indexUsageMode = 'foo';
  }
  buildCounterSearchStatistics--;
  return o;
}

void checkSearchStatistics(api.SearchStatistics o) {
  buildCounterSearchStatistics++;
  if (buildCounterSearchStatistics < 3) {
    checkUnnamed120(o.indexUnusedReasons!);
    unittest.expect(
      o.indexUsageMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchStatistics--;
}

core.Map<core.String, core.String> buildUnnamed121() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed121(core.Map<core.String, core.String> o) {
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

core.int buildCounterSerDeInfo = 0;
api.SerDeInfo buildSerDeInfo() {
  final o = api.SerDeInfo();
  buildCounterSerDeInfo++;
  if (buildCounterSerDeInfo < 3) {
    o.name = 'foo';
    o.parameters = buildUnnamed121();
    o.serializationLibrary = 'foo';
  }
  buildCounterSerDeInfo--;
  return o;
}

void checkSerDeInfo(api.SerDeInfo o) {
  buildCounterSerDeInfo++;
  if (buildCounterSerDeInfo < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed121(o.parameters!);
    unittest.expect(
      o.serializationLibrary!,
      unittest.equals('foo'),
    );
  }
  buildCounterSerDeInfo--;
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

core.int buildCounterSkewSource = 0;
api.SkewSource buildSkewSource() {
  final o = api.SkewSource();
  buildCounterSkewSource++;
  if (buildCounterSkewSource < 3) {
    o.stageId = 'foo';
  }
  buildCounterSkewSource--;
  return o;
}

void checkSkewSource(api.SkewSource o) {
  buildCounterSkewSource++;
  if (buildCounterSkewSource < 3) {
    unittest.expect(
      o.stageId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSkewSource--;
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

core.int buildCounterSparkLoggingInfo = 0;
api.SparkLoggingInfo buildSparkLoggingInfo() {
  final o = api.SparkLoggingInfo();
  buildCounterSparkLoggingInfo++;
  if (buildCounterSparkLoggingInfo < 3) {
    o.projectId = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterSparkLoggingInfo--;
  return o;
}

void checkSparkLoggingInfo(api.SparkLoggingInfo o) {
  buildCounterSparkLoggingInfo++;
  if (buildCounterSparkLoggingInfo < 3) {
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSparkLoggingInfo--;
}

core.List<core.String> buildUnnamed122() => [
      'foo',
      'foo',
    ];

void checkUnnamed122(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed123() => [
      'foo',
      'foo',
    ];

void checkUnnamed123(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed124() => [
      'foo',
      'foo',
    ];

void checkUnnamed124(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed125() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed125(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed126() => [
      'foo',
      'foo',
    ];

void checkUnnamed126(core.List<core.String> o) {
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

core.int buildCounterSparkOptions = 0;
api.SparkOptions buildSparkOptions() {
  final o = api.SparkOptions();
  buildCounterSparkOptions++;
  if (buildCounterSparkOptions < 3) {
    o.archiveUris = buildUnnamed122();
    o.connection = 'foo';
    o.containerImage = 'foo';
    o.fileUris = buildUnnamed123();
    o.jarUris = buildUnnamed124();
    o.mainClass = 'foo';
    o.mainFileUri = 'foo';
    o.properties = buildUnnamed125();
    o.pyFileUris = buildUnnamed126();
    o.runtimeVersion = 'foo';
  }
  buildCounterSparkOptions--;
  return o;
}

void checkSparkOptions(api.SparkOptions o) {
  buildCounterSparkOptions++;
  if (buildCounterSparkOptions < 3) {
    checkUnnamed122(o.archiveUris!);
    unittest.expect(
      o.connection!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerImage!,
      unittest.equals('foo'),
    );
    checkUnnamed123(o.fileUris!);
    checkUnnamed124(o.jarUris!);
    unittest.expect(
      o.mainClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mainFileUri!,
      unittest.equals('foo'),
    );
    checkUnnamed125(o.properties!);
    checkUnnamed126(o.pyFileUris!);
    unittest.expect(
      o.runtimeVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterSparkOptions--;
}

core.Map<core.String, core.String> buildUnnamed127() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed127(core.Map<core.String, core.String> o) {
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

core.int buildCounterSparkStatistics = 0;
api.SparkStatistics buildSparkStatistics() {
  final o = api.SparkStatistics();
  buildCounterSparkStatistics++;
  if (buildCounterSparkStatistics < 3) {
    o.endpoints = buildUnnamed127();
    o.gcsStagingBucket = 'foo';
    o.kmsKeyName = 'foo';
    o.loggingInfo = buildSparkLoggingInfo();
    o.sparkJobId = 'foo';
    o.sparkJobLocation = 'foo';
  }
  buildCounterSparkStatistics--;
  return o;
}

void checkSparkStatistics(api.SparkStatistics o) {
  buildCounterSparkStatistics++;
  if (buildCounterSparkStatistics < 3) {
    checkUnnamed127(o.endpoints!);
    unittest.expect(
      o.gcsStagingBucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    checkSparkLoggingInfo(o.loggingInfo!);
    unittest.expect(
      o.sparkJobId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sparkJobLocation!,
      unittest.equals('foo'),
    );
  }
  buildCounterSparkStatistics--;
}

core.int buildCounterStagePerformanceChangeInsight = 0;
api.StagePerformanceChangeInsight buildStagePerformanceChangeInsight() {
  final o = api.StagePerformanceChangeInsight();
  buildCounterStagePerformanceChangeInsight++;
  if (buildCounterStagePerformanceChangeInsight < 3) {
    o.inputDataChange = buildInputDataChange();
    o.stageId = 'foo';
  }
  buildCounterStagePerformanceChangeInsight--;
  return o;
}

void checkStagePerformanceChangeInsight(api.StagePerformanceChangeInsight o) {
  buildCounterStagePerformanceChangeInsight++;
  if (buildCounterStagePerformanceChangeInsight < 3) {
    checkInputDataChange(o.inputDataChange!);
    unittest.expect(
      o.stageId!,
      unittest.equals('foo'),
    );
  }
  buildCounterStagePerformanceChangeInsight--;
}

core.List<api.BiEngineReason> buildUnnamed128() => [
      buildBiEngineReason(),
      buildBiEngineReason(),
    ];

void checkUnnamed128(core.List<api.BiEngineReason> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBiEngineReason(o[0]);
  checkBiEngineReason(o[1]);
}

core.List<api.HighCardinalityJoin> buildUnnamed129() => [
      buildHighCardinalityJoin(),
      buildHighCardinalityJoin(),
    ];

void checkUnnamed129(core.List<api.HighCardinalityJoin> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHighCardinalityJoin(o[0]);
  checkHighCardinalityJoin(o[1]);
}

core.int buildCounterStagePerformanceStandaloneInsight = 0;
api.StagePerformanceStandaloneInsight buildStagePerformanceStandaloneInsight() {
  final o = api.StagePerformanceStandaloneInsight();
  buildCounterStagePerformanceStandaloneInsight++;
  if (buildCounterStagePerformanceStandaloneInsight < 3) {
    o.biEngineReasons = buildUnnamed128();
    o.highCardinalityJoins = buildUnnamed129();
    o.insufficientShuffleQuota = true;
    o.partitionSkew = buildPartitionSkew();
    o.slotContention = true;
    o.stageId = 'foo';
  }
  buildCounterStagePerformanceStandaloneInsight--;
  return o;
}

void checkStagePerformanceStandaloneInsight(
    api.StagePerformanceStandaloneInsight o) {
  buildCounterStagePerformanceStandaloneInsight++;
  if (buildCounterStagePerformanceStandaloneInsight < 3) {
    checkUnnamed128(o.biEngineReasons!);
    checkUnnamed129(o.highCardinalityJoins!);
    unittest.expect(o.insufficientShuffleQuota!, unittest.isTrue);
    checkPartitionSkew(o.partitionSkew!);
    unittest.expect(o.slotContention!, unittest.isTrue);
    unittest.expect(
      o.stageId!,
      unittest.equals('foo'),
    );
  }
  buildCounterStagePerformanceStandaloneInsight--;
}

core.int buildCounterStandardSqlDataType = 0;
api.StandardSqlDataType buildStandardSqlDataType() {
  final o = api.StandardSqlDataType();
  buildCounterStandardSqlDataType++;
  if (buildCounterStandardSqlDataType < 3) {
    o.arrayElementType = buildStandardSqlDataType();
    o.rangeElementType = buildStandardSqlDataType();
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
    checkStandardSqlDataType(o.rangeElementType!);
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

core.List<api.StandardSqlField> buildUnnamed130() => [
      buildStandardSqlField(),
      buildStandardSqlField(),
    ];

void checkUnnamed130(core.List<api.StandardSqlField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardSqlField(o[0]);
  checkStandardSqlField(o[1]);
}

core.int buildCounterStandardSqlStructType = 0;
api.StandardSqlStructType buildStandardSqlStructType() {
  final o = api.StandardSqlStructType();
  buildCounterStandardSqlStructType++;
  if (buildCounterStandardSqlStructType < 3) {
    o.fields = buildUnnamed130();
  }
  buildCounterStandardSqlStructType--;
  return o;
}

void checkStandardSqlStructType(api.StandardSqlStructType o) {
  buildCounterStandardSqlStructType++;
  if (buildCounterStandardSqlStructType < 3) {
    checkUnnamed130(o.fields!);
  }
  buildCounterStandardSqlStructType--;
}

core.List<api.StandardSqlField> buildUnnamed131() => [
      buildStandardSqlField(),
      buildStandardSqlField(),
    ];

void checkUnnamed131(core.List<api.StandardSqlField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardSqlField(o[0]);
  checkStandardSqlField(o[1]);
}

core.int buildCounterStandardSqlTableType = 0;
api.StandardSqlTableType buildStandardSqlTableType() {
  final o = api.StandardSqlTableType();
  buildCounterStandardSqlTableType++;
  if (buildCounterStandardSqlTableType < 3) {
    o.columns = buildUnnamed131();
  }
  buildCounterStandardSqlTableType--;
  return o;
}

void checkStandardSqlTableType(api.StandardSqlTableType o) {
  buildCounterStandardSqlTableType++;
  if (buildCounterStandardSqlTableType < 3) {
    checkUnnamed131(o.columns!);
  }
  buildCounterStandardSqlTableType--;
}

core.int buildCounterStorageDescriptor = 0;
api.StorageDescriptor buildStorageDescriptor() {
  final o = api.StorageDescriptor();
  buildCounterStorageDescriptor++;
  if (buildCounterStorageDescriptor < 3) {
    o.inputFormat = 'foo';
    o.locationUri = 'foo';
    o.outputFormat = 'foo';
    o.serdeInfo = buildSerDeInfo();
  }
  buildCounterStorageDescriptor--;
  return o;
}

void checkStorageDescriptor(api.StorageDescriptor o) {
  buildCounterStorageDescriptor++;
  if (buildCounterStorageDescriptor < 3) {
    unittest.expect(
      o.inputFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputFormat!,
      unittest.equals('foo'),
    );
    checkSerDeInfo(o.serdeInfo!);
  }
  buildCounterStorageDescriptor--;
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

core.List<core.String> buildUnnamed132() => [
      'foo',
      'foo',
    ];

void checkUnnamed132(core.List<core.String> o) {
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

core.int buildCounterStringHparamSearchSpace = 0;
api.StringHparamSearchSpace buildStringHparamSearchSpace() {
  final o = api.StringHparamSearchSpace();
  buildCounterStringHparamSearchSpace++;
  if (buildCounterStringHparamSearchSpace < 3) {
    o.candidates = buildUnnamed132();
  }
  buildCounterStringHparamSearchSpace--;
  return o;
}

void checkStringHparamSearchSpace(api.StringHparamSearchSpace o) {
  buildCounterStringHparamSearchSpace++;
  if (buildCounterStringHparamSearchSpace < 3) {
    checkUnnamed132(o.candidates!);
  }
  buildCounterStringHparamSearchSpace--;
}

core.Map<core.String, api.StandardSqlDataType> buildUnnamed133() => {
      'x': buildStandardSqlDataType(),
      'y': buildStandardSqlDataType(),
    };

void checkUnnamed133(core.Map<core.String, api.StandardSqlDataType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardSqlDataType(o['x']!);
  checkStandardSqlDataType(o['y']!);
}

core.Map<core.String, core.Object?> buildUnnamed134() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed134(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterSystemVariables = 0;
api.SystemVariables buildSystemVariables() {
  final o = api.SystemVariables();
  buildCounterSystemVariables++;
  if (buildCounterSystemVariables < 3) {
    o.types = buildUnnamed133();
    o.values = buildUnnamed134();
  }
  buildCounterSystemVariables--;
  return o;
}

void checkSystemVariables(api.SystemVariables o) {
  buildCounterSystemVariables++;
  if (buildCounterSystemVariables < 3) {
    checkUnnamed133(o.types!);
    checkUnnamed134(o.values!);
  }
  buildCounterSystemVariables--;
}

core.Map<core.String, core.String> buildUnnamed135() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed135(core.Map<core.String, core.String> o) {
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

core.List<api.TableReference> buildUnnamed136() => [
      buildTableReference(),
      buildTableReference(),
    ];

void checkUnnamed136(core.List<api.TableReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableReference(o[0]);
  checkTableReference(o[1]);
}

core.Map<core.String, core.String> buildUnnamed137() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed137(core.Map<core.String, core.String> o) {
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
    o.biglakeConfiguration = buildBigLakeConfiguration();
    o.cloneDefinition = buildCloneDefinition();
    o.clustering = buildClustering();
    o.creationTime = 'foo';
    o.defaultCollation = 'foo';
    o.defaultRoundingMode = 'foo';
    o.description = 'foo';
    o.encryptionConfiguration = buildEncryptionConfiguration();
    o.etag = 'foo';
    o.expirationTime = 'foo';
    o.externalCatalogTableOptions = buildExternalCatalogTableOptions();
    o.externalDataConfiguration = buildExternalDataConfiguration();
    o.friendlyName = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.labels = buildUnnamed135();
    o.lastModifiedTime = 'foo';
    o.location = 'foo';
    o.materializedView = buildMaterializedViewDefinition();
    o.materializedViewStatus = buildMaterializedViewStatus();
    o.maxStaleness = 'foo';
    o.model = buildModelDefinition();
    o.numActiveLogicalBytes = 'foo';
    o.numActivePhysicalBytes = 'foo';
    o.numBytes = 'foo';
    o.numLongTermBytes = 'foo';
    o.numLongTermLogicalBytes = 'foo';
    o.numLongTermPhysicalBytes = 'foo';
    o.numPartitions = 'foo';
    o.numPhysicalBytes = 'foo';
    o.numRows = 'foo';
    o.numTimeTravelPhysicalBytes = 'foo';
    o.numTotalLogicalBytes = 'foo';
    o.numTotalPhysicalBytes = 'foo';
    o.partitionDefinition = buildPartitioningDefinition();
    o.rangePartitioning = buildRangePartitioning();
    o.replicas = buildUnnamed136();
    o.requirePartitionFilter = true;
    o.resourceTags = buildUnnamed137();
    o.schema = buildTableSchema();
    o.selfLink = 'foo';
    o.snapshotDefinition = buildSnapshotDefinition();
    o.streamingBuffer = buildStreamingbuffer();
    o.tableConstraints = buildTableConstraints();
    o.tableReference = buildTableReference();
    o.tableReplicationInfo = buildTableReplicationInfo();
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
    checkBigLakeConfiguration(o.biglakeConfiguration!);
    checkCloneDefinition(o.cloneDefinition!);
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
      o.defaultRoundingMode!,
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
    checkExternalCatalogTableOptions(o.externalCatalogTableOptions!);
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
    checkUnnamed135(o.labels!);
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    checkMaterializedViewDefinition(o.materializedView!);
    checkMaterializedViewStatus(o.materializedViewStatus!);
    unittest.expect(
      o.maxStaleness!,
      unittest.equals('foo'),
    );
    checkModelDefinition(o.model!);
    unittest.expect(
      o.numActiveLogicalBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numActivePhysicalBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numLongTermBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numLongTermLogicalBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numLongTermPhysicalBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numPartitions!,
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
    unittest.expect(
      o.numTimeTravelPhysicalBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numTotalLogicalBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numTotalPhysicalBytes!,
      unittest.equals('foo'),
    );
    checkPartitioningDefinition(o.partitionDefinition!);
    checkRangePartitioning(o.rangePartitioning!);
    checkUnnamed136(o.replicas!);
    unittest.expect(o.requirePartitionFilter!, unittest.isTrue);
    checkUnnamed137(o.resourceTags!);
    checkTableSchema(o.schema!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    checkSnapshotDefinition(o.snapshotDefinition!);
    checkStreamingbuffer(o.streamingBuffer!);
    checkTableConstraints(o.tableConstraints!);
    checkTableReference(o.tableReference!);
    checkTableReplicationInfo(o.tableReplicationInfo!);
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
    var casted7 = (o.v!) as core.Map;
    unittest.expect(casted7, unittest.hasLength(3));
    unittest.expect(
      casted7['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted7['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted7['string'],
      unittest.equals('foo'),
    );
  }
  buildCounterTableCell--;
}

core.int buildCounterTableConstraintsForeignKeysColumnReferences = 0;
api.TableConstraintsForeignKeysColumnReferences
    buildTableConstraintsForeignKeysColumnReferences() {
  final o = api.TableConstraintsForeignKeysColumnReferences();
  buildCounterTableConstraintsForeignKeysColumnReferences++;
  if (buildCounterTableConstraintsForeignKeysColumnReferences < 3) {
    o.referencedColumn = 'foo';
    o.referencingColumn = 'foo';
  }
  buildCounterTableConstraintsForeignKeysColumnReferences--;
  return o;
}

void checkTableConstraintsForeignKeysColumnReferences(
    api.TableConstraintsForeignKeysColumnReferences o) {
  buildCounterTableConstraintsForeignKeysColumnReferences++;
  if (buildCounterTableConstraintsForeignKeysColumnReferences < 3) {
    unittest.expect(
      o.referencedColumn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referencingColumn!,
      unittest.equals('foo'),
    );
  }
  buildCounterTableConstraintsForeignKeysColumnReferences--;
}

core.List<api.TableConstraintsForeignKeysColumnReferences> buildUnnamed138() =>
    [
      buildTableConstraintsForeignKeysColumnReferences(),
      buildTableConstraintsForeignKeysColumnReferences(),
    ];

void checkUnnamed138(
    core.List<api.TableConstraintsForeignKeysColumnReferences> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableConstraintsForeignKeysColumnReferences(o[0]);
  checkTableConstraintsForeignKeysColumnReferences(o[1]);
}

core.int buildCounterTableConstraintsForeignKeysReferencedTable = 0;
api.TableConstraintsForeignKeysReferencedTable
    buildTableConstraintsForeignKeysReferencedTable() {
  final o = api.TableConstraintsForeignKeysReferencedTable();
  buildCounterTableConstraintsForeignKeysReferencedTable++;
  if (buildCounterTableConstraintsForeignKeysReferencedTable < 3) {
    o.datasetId = 'foo';
    o.projectId = 'foo';
    o.tableId = 'foo';
  }
  buildCounterTableConstraintsForeignKeysReferencedTable--;
  return o;
}

void checkTableConstraintsForeignKeysReferencedTable(
    api.TableConstraintsForeignKeysReferencedTable o) {
  buildCounterTableConstraintsForeignKeysReferencedTable++;
  if (buildCounterTableConstraintsForeignKeysReferencedTable < 3) {
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
  buildCounterTableConstraintsForeignKeysReferencedTable--;
}

core.int buildCounterTableConstraintsForeignKeys = 0;
api.TableConstraintsForeignKeys buildTableConstraintsForeignKeys() {
  final o = api.TableConstraintsForeignKeys();
  buildCounterTableConstraintsForeignKeys++;
  if (buildCounterTableConstraintsForeignKeys < 3) {
    o.columnReferences = buildUnnamed138();
    o.name = 'foo';
    o.referencedTable = buildTableConstraintsForeignKeysReferencedTable();
  }
  buildCounterTableConstraintsForeignKeys--;
  return o;
}

void checkTableConstraintsForeignKeys(api.TableConstraintsForeignKeys o) {
  buildCounterTableConstraintsForeignKeys++;
  if (buildCounterTableConstraintsForeignKeys < 3) {
    checkUnnamed138(o.columnReferences!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkTableConstraintsForeignKeysReferencedTable(o.referencedTable!);
  }
  buildCounterTableConstraintsForeignKeys--;
}

core.List<api.TableConstraintsForeignKeys> buildUnnamed139() => [
      buildTableConstraintsForeignKeys(),
      buildTableConstraintsForeignKeys(),
    ];

void checkUnnamed139(core.List<api.TableConstraintsForeignKeys> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableConstraintsForeignKeys(o[0]);
  checkTableConstraintsForeignKeys(o[1]);
}

core.List<core.String> buildUnnamed140() => [
      'foo',
      'foo',
    ];

void checkUnnamed140(core.List<core.String> o) {
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

core.int buildCounterTableConstraintsPrimaryKey = 0;
api.TableConstraintsPrimaryKey buildTableConstraintsPrimaryKey() {
  final o = api.TableConstraintsPrimaryKey();
  buildCounterTableConstraintsPrimaryKey++;
  if (buildCounterTableConstraintsPrimaryKey < 3) {
    o.columns = buildUnnamed140();
  }
  buildCounterTableConstraintsPrimaryKey--;
  return o;
}

void checkTableConstraintsPrimaryKey(api.TableConstraintsPrimaryKey o) {
  buildCounterTableConstraintsPrimaryKey++;
  if (buildCounterTableConstraintsPrimaryKey < 3) {
    checkUnnamed140(o.columns!);
  }
  buildCounterTableConstraintsPrimaryKey--;
}

core.int buildCounterTableConstraints = 0;
api.TableConstraints buildTableConstraints() {
  final o = api.TableConstraints();
  buildCounterTableConstraints++;
  if (buildCounterTableConstraints < 3) {
    o.foreignKeys = buildUnnamed139();
    o.primaryKey = buildTableConstraintsPrimaryKey();
  }
  buildCounterTableConstraints--;
  return o;
}

void checkTableConstraints(api.TableConstraints o) {
  buildCounterTableConstraints++;
  if (buildCounterTableConstraints < 3) {
    checkUnnamed139(o.foreignKeys!);
    checkTableConstraintsPrimaryKey(o.primaryKey!);
  }
  buildCounterTableConstraints--;
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

core.List<api.TableDataInsertAllRequestRows> buildUnnamed141() => [
      buildTableDataInsertAllRequestRows(),
      buildTableDataInsertAllRequestRows(),
    ];

void checkUnnamed141(core.List<api.TableDataInsertAllRequestRows> o) {
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
    o.rows = buildUnnamed141();
    o.skipInvalidRows = true;
    o.templateSuffix = 'foo';
    o.traceId = 'foo';
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
    checkUnnamed141(o.rows!);
    unittest.expect(o.skipInvalidRows!, unittest.isTrue);
    unittest.expect(
      o.templateSuffix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.traceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterTableDataInsertAllRequest--;
}

core.List<api.ErrorProto> buildUnnamed142() => [
      buildErrorProto(),
      buildErrorProto(),
    ];

void checkUnnamed142(core.List<api.ErrorProto> o) {
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
    o.errors = buildUnnamed142();
    o.index = 42;
  }
  buildCounterTableDataInsertAllResponseInsertErrors--;
  return o;
}

void checkTableDataInsertAllResponseInsertErrors(
    api.TableDataInsertAllResponseInsertErrors o) {
  buildCounterTableDataInsertAllResponseInsertErrors++;
  if (buildCounterTableDataInsertAllResponseInsertErrors < 3) {
    checkUnnamed142(o.errors!);
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
  }
  buildCounterTableDataInsertAllResponseInsertErrors--;
}

core.List<api.TableDataInsertAllResponseInsertErrors> buildUnnamed143() => [
      buildTableDataInsertAllResponseInsertErrors(),
      buildTableDataInsertAllResponseInsertErrors(),
    ];

void checkUnnamed143(core.List<api.TableDataInsertAllResponseInsertErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableDataInsertAllResponseInsertErrors(o[0]);
  checkTableDataInsertAllResponseInsertErrors(o[1]);
}

core.int buildCounterTableDataInsertAllResponse = 0;
api.TableDataInsertAllResponse buildTableDataInsertAllResponse() {
  final o = api.TableDataInsertAllResponse();
  buildCounterTableDataInsertAllResponse++;
  if (buildCounterTableDataInsertAllResponse < 3) {
    o.insertErrors = buildUnnamed143();
    o.kind = 'foo';
  }
  buildCounterTableDataInsertAllResponse--;
  return o;
}

void checkTableDataInsertAllResponse(api.TableDataInsertAllResponse o) {
  buildCounterTableDataInsertAllResponse++;
  if (buildCounterTableDataInsertAllResponse < 3) {
    checkUnnamed143(o.insertErrors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterTableDataInsertAllResponse--;
}

core.List<api.TableRow> buildUnnamed144() => [
      buildTableRow(),
      buildTableRow(),
    ];

void checkUnnamed144(core.List<api.TableRow> o) {
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
    o.rows = buildUnnamed144();
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
    checkUnnamed144(o.rows!);
    unittest.expect(
      o.totalRows!,
      unittest.equals('foo'),
    );
  }
  buildCounterTableDataList--;
}

core.List<core.String> buildUnnamed145() => [
      'foo',
      'foo',
    ];

void checkUnnamed145(core.List<core.String> o) {
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
    o.names = buildUnnamed145();
  }
  buildCounterTableFieldSchemaCategories--;
  return o;
}

void checkTableFieldSchemaCategories(api.TableFieldSchemaCategories o) {
  buildCounterTableFieldSchemaCategories++;
  if (buildCounterTableFieldSchemaCategories < 3) {
    checkUnnamed145(o.names!);
  }
  buildCounterTableFieldSchemaCategories--;
}

core.List<api.TableFieldSchema> buildUnnamed146() => [
      buildTableFieldSchema(),
      buildTableFieldSchema(),
    ];

void checkUnnamed146(core.List<api.TableFieldSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableFieldSchema(o[0]);
  checkTableFieldSchema(o[1]);
}

core.List<core.String> buildUnnamed147() => [
      'foo',
      'foo',
    ];

void checkUnnamed147(core.List<core.String> o) {
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
    o.names = buildUnnamed147();
  }
  buildCounterTableFieldSchemaPolicyTags--;
  return o;
}

void checkTableFieldSchemaPolicyTags(api.TableFieldSchemaPolicyTags o) {
  buildCounterTableFieldSchemaPolicyTags++;
  if (buildCounterTableFieldSchemaPolicyTags < 3) {
    checkUnnamed147(o.names!);
  }
  buildCounterTableFieldSchemaPolicyTags--;
}

core.int buildCounterTableFieldSchemaRangeElementType = 0;
api.TableFieldSchemaRangeElementType buildTableFieldSchemaRangeElementType() {
  final o = api.TableFieldSchemaRangeElementType();
  buildCounterTableFieldSchemaRangeElementType++;
  if (buildCounterTableFieldSchemaRangeElementType < 3) {
    o.type = 'foo';
  }
  buildCounterTableFieldSchemaRangeElementType--;
  return o;
}

void checkTableFieldSchemaRangeElementType(
    api.TableFieldSchemaRangeElementType o) {
  buildCounterTableFieldSchemaRangeElementType++;
  if (buildCounterTableFieldSchemaRangeElementType < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterTableFieldSchemaRangeElementType--;
}

core.int buildCounterTableFieldSchema = 0;
api.TableFieldSchema buildTableFieldSchema() {
  final o = api.TableFieldSchema();
  buildCounterTableFieldSchema++;
  if (buildCounterTableFieldSchema < 3) {
    o.categories = buildTableFieldSchemaCategories();
    o.collation = 'foo';
    o.defaultValueExpression = 'foo';
    o.description = 'foo';
    o.fields = buildUnnamed146();
    o.maxLength = 'foo';
    o.mode = 'foo';
    o.name = 'foo';
    o.policyTags = buildTableFieldSchemaPolicyTags();
    o.precision = 'foo';
    o.rangeElementType = buildTableFieldSchemaRangeElementType();
    o.roundingMode = 'foo';
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
      o.collation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultValueExpression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed146(o.fields!);
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
    checkTableFieldSchemaRangeElementType(o.rangeElementType!);
    unittest.expect(
      o.roundingMode!,
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

core.Map<core.String, core.String> buildUnnamed148() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed148(core.Map<core.String, core.String> o) {
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
    o.privacyPolicy = buildPrivacyPolicy();
    o.useLegacySql = true;
  }
  buildCounterTableListTablesView--;
  return o;
}

void checkTableListTablesView(api.TableListTablesView o) {
  buildCounterTableListTablesView++;
  if (buildCounterTableListTablesView < 3) {
    checkPrivacyPolicy(o.privacyPolicy!);
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
    o.labels = buildUnnamed148();
    o.rangePartitioning = buildRangePartitioning();
    o.requirePartitionFilter = true;
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
    checkUnnamed148(o.labels!);
    checkRangePartitioning(o.rangePartitioning!);
    unittest.expect(o.requirePartitionFilter!, unittest.isTrue);
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

core.List<api.TableListTables> buildUnnamed149() => [
      buildTableListTables(),
      buildTableListTables(),
    ];

void checkUnnamed149(core.List<api.TableListTables> o) {
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
    o.tables = buildUnnamed149();
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
    checkUnnamed149(o.tables!);
    unittest.expect(
      o.totalItems!,
      unittest.equals(42),
    );
  }
  buildCounterTableList--;
}

core.int buildCounterTableMetadataCacheUsage = 0;
api.TableMetadataCacheUsage buildTableMetadataCacheUsage() {
  final o = api.TableMetadataCacheUsage();
  buildCounterTableMetadataCacheUsage++;
  if (buildCounterTableMetadataCacheUsage < 3) {
    o.explanation = 'foo';
    o.tableReference = buildTableReference();
    o.tableType = 'foo';
    o.unusedReason = 'foo';
  }
  buildCounterTableMetadataCacheUsage--;
  return o;
}

void checkTableMetadataCacheUsage(api.TableMetadataCacheUsage o) {
  buildCounterTableMetadataCacheUsage++;
  if (buildCounterTableMetadataCacheUsage < 3) {
    unittest.expect(
      o.explanation!,
      unittest.equals('foo'),
    );
    checkTableReference(o.tableReference!);
    unittest.expect(
      o.tableType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unusedReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterTableMetadataCacheUsage--;
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

core.int buildCounterTableReplicationInfo = 0;
api.TableReplicationInfo buildTableReplicationInfo() {
  final o = api.TableReplicationInfo();
  buildCounterTableReplicationInfo++;
  if (buildCounterTableReplicationInfo < 3) {
    o.replicatedSourceLastRefreshTime = 'foo';
    o.replicationError = buildErrorProto();
    o.replicationIntervalMs = 'foo';
    o.replicationStatus = 'foo';
    o.sourceTable = buildTableReference();
  }
  buildCounterTableReplicationInfo--;
  return o;
}

void checkTableReplicationInfo(api.TableReplicationInfo o) {
  buildCounterTableReplicationInfo++;
  if (buildCounterTableReplicationInfo < 3) {
    unittest.expect(
      o.replicatedSourceLastRefreshTime!,
      unittest.equals('foo'),
    );
    checkErrorProto(o.replicationError!);
    unittest.expect(
      o.replicationIntervalMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replicationStatus!,
      unittest.equals('foo'),
    );
    checkTableReference(o.sourceTable!);
  }
  buildCounterTableReplicationInfo--;
}

core.List<api.TableCell> buildUnnamed150() => [
      buildTableCell(),
      buildTableCell(),
    ];

void checkUnnamed150(core.List<api.TableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableCell(o[0]);
  checkTableCell(o[1]);
}

core.int buildCounterTableRow = 0;
api.TableRow buildTableRow() {
  final o = api.TableRow();
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    o.f = buildUnnamed150();
  }
  buildCounterTableRow--;
  return o;
}

void checkTableRow(api.TableRow o) {
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    checkUnnamed150(o.f!);
  }
  buildCounterTableRow--;
}

core.List<api.TableFieldSchema> buildUnnamed151() => [
      buildTableFieldSchema(),
      buildTableFieldSchema(),
    ];

void checkUnnamed151(core.List<api.TableFieldSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableFieldSchema(o[0]);
  checkTableFieldSchema(o[1]);
}

core.int buildCounterTableSchema = 0;
api.TableSchema buildTableSchema() {
  final o = api.TableSchema();
  buildCounterTableSchema++;
  if (buildCounterTableSchema < 3) {
    o.fields = buildUnnamed151();
  }
  buildCounterTableSchema--;
  return o;
}

void checkTableSchema(api.TableSchema o) {
  buildCounterTableSchema++;
  if (buildCounterTableSchema < 3) {
    checkUnnamed151(o.fields!);
  }
  buildCounterTableSchema--;
}

core.List<core.String> buildUnnamed152() => [
      'foo',
      'foo',
    ];

void checkUnnamed152(core.List<core.String> o) {
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
    o.permissions = buildUnnamed152();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed152(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed153() => [
      'foo',
      'foo',
    ];

void checkUnnamed153(core.List<core.String> o) {
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
    o.permissions = buildUnnamed153();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed153(o.permissions!);
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

core.List<core.String> buildUnnamed154() => [
      'foo',
      'foo',
    ];

void checkUnnamed154(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed155() => [
      'foo',
      'foo',
    ];

void checkUnnamed155(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed156() => [
      'foo',
      'foo',
    ];

void checkUnnamed156(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed157() => [
      'foo',
      'foo',
    ];

void checkUnnamed157(core.List<core.String> o) {
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

core.Map<core.String, core.double> buildUnnamed158() => {
      'x': 42.0,
      'y': 42.0,
    };

void checkUnnamed158(core.Map<core.String, core.double> o) {
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

core.List<core.String> buildUnnamed159() => [
      'foo',
      'foo',
    ];

void checkUnnamed159(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed160() => [
      'foo',
      'foo',
    ];

void checkUnnamed160(core.List<core.String> o) {
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
    o.activationFn = 'foo';
    o.adjustStepChanges = true;
    o.approxGlobalFeatureContrib = true;
    o.autoArima = true;
    o.autoArimaMaxOrder = 'foo';
    o.autoArimaMinOrder = 'foo';
    o.autoClassWeights = true;
    o.batchSize = 'foo';
    o.boosterType = 'foo';
    o.budgetHours = 42.0;
    o.calculatePValues = true;
    o.categoryEncodingMethod = 'foo';
    o.cleanSpikesAndDips = true;
    o.colorSpace = 'foo';
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
    o.enableGlobalExplain = true;
    o.feedbackType = 'foo';
    o.fitIntercept = true;
    o.hiddenUnits = buildUnnamed154();
    o.holidayRegion = 'foo';
    o.holidayRegions = buildUnnamed155();
    o.horizon = 'foo';
    o.hparamTuningObjectives = buildUnnamed156();
    o.includeDrift = true;
    o.initialLearnRate = 42.0;
    o.inputLabelColumns = buildUnnamed157();
    o.instanceWeightColumn = 'foo';
    o.integratedGradientsNumSteps = 'foo';
    o.itemColumn = 'foo';
    o.kmeansInitializationColumn = 'foo';
    o.kmeansInitializationMethod = 'foo';
    o.l1RegActivation = 42.0;
    o.l1Regularization = 42.0;
    o.l2Regularization = 42.0;
    o.labelClassWeights = buildUnnamed158();
    o.learnRate = 42.0;
    o.learnRateStrategy = 'foo';
    o.lossType = 'foo';
    o.maxIterations = 'foo';
    o.maxParallelTrials = 'foo';
    o.maxTimeSeriesLength = 'foo';
    o.maxTreeDepth = 'foo';
    o.minRelativeProgress = 42.0;
    o.minSplitLoss = 42.0;
    o.minTimeSeriesLength = 'foo';
    o.minTreeChildWeight = 'foo';
    o.modelRegistry = 'foo';
    o.modelUri = 'foo';
    o.nonSeasonalOrder = buildArimaOrder();
    o.numClusters = 'foo';
    o.numFactors = 'foo';
    o.numParallelTree = 'foo';
    o.numPrincipalComponents = 'foo';
    o.numTrials = 'foo';
    o.optimizationStrategy = 'foo';
    o.optimizer = 'foo';
    o.pcaExplainedVarianceRatio = 42.0;
    o.pcaSolver = 'foo';
    o.sampledShapleyNumPaths = 'foo';
    o.scaleFeatures = true;
    o.standardizeFeatures = true;
    o.subsample = 42.0;
    o.tfVersion = 'foo';
    o.timeSeriesDataColumn = 'foo';
    o.timeSeriesIdColumn = 'foo';
    o.timeSeriesIdColumns = buildUnnamed159();
    o.timeSeriesLengthFraction = 42.0;
    o.timeSeriesTimestampColumn = 'foo';
    o.treeMethod = 'foo';
    o.trendSmoothingWindowSize = 'foo';
    o.userColumn = 'foo';
    o.vertexAiModelVersionAliases = buildUnnamed160();
    o.walsAlpha = 42.0;
    o.warmStart = true;
    o.xgboostVersion = 'foo';
  }
  buildCounterTrainingOptions--;
  return o;
}

void checkTrainingOptions(api.TrainingOptions o) {
  buildCounterTrainingOptions++;
  if (buildCounterTrainingOptions < 3) {
    unittest.expect(
      o.activationFn!,
      unittest.equals('foo'),
    );
    unittest.expect(o.adjustStepChanges!, unittest.isTrue);
    unittest.expect(o.approxGlobalFeatureContrib!, unittest.isTrue);
    unittest.expect(o.autoArima!, unittest.isTrue);
    unittest.expect(
      o.autoArimaMaxOrder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.autoArimaMinOrder!,
      unittest.equals('foo'),
    );
    unittest.expect(o.autoClassWeights!, unittest.isTrue);
    unittest.expect(
      o.batchSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.boosterType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.budgetHours!,
      unittest.equals(42.0),
    );
    unittest.expect(o.calculatePValues!, unittest.isTrue);
    unittest.expect(
      o.categoryEncodingMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(o.cleanSpikesAndDips!, unittest.isTrue);
    unittest.expect(
      o.colorSpace!,
      unittest.equals('foo'),
    );
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
    unittest.expect(o.enableGlobalExplain!, unittest.isTrue);
    unittest.expect(
      o.feedbackType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.fitIntercept!, unittest.isTrue);
    checkUnnamed154(o.hiddenUnits!);
    unittest.expect(
      o.holidayRegion!,
      unittest.equals('foo'),
    );
    checkUnnamed155(o.holidayRegions!);
    unittest.expect(
      o.horizon!,
      unittest.equals('foo'),
    );
    checkUnnamed156(o.hparamTuningObjectives!);
    unittest.expect(o.includeDrift!, unittest.isTrue);
    unittest.expect(
      o.initialLearnRate!,
      unittest.equals(42.0),
    );
    checkUnnamed157(o.inputLabelColumns!);
    unittest.expect(
      o.instanceWeightColumn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.integratedGradientsNumSteps!,
      unittest.equals('foo'),
    );
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
      o.l1RegActivation!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.l1Regularization!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.l2Regularization!,
      unittest.equals(42.0),
    );
    checkUnnamed158(o.labelClassWeights!);
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
      o.maxParallelTrials!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxTimeSeriesLength!,
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
      o.minTimeSeriesLength!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minTreeChildWeight!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modelRegistry!,
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
      o.numPrincipalComponents!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numTrials!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.optimizationStrategy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.optimizer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pcaExplainedVarianceRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.pcaSolver!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sampledShapleyNumPaths!,
      unittest.equals('foo'),
    );
    unittest.expect(o.scaleFeatures!, unittest.isTrue);
    unittest.expect(o.standardizeFeatures!, unittest.isTrue);
    unittest.expect(
      o.subsample!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.tfVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeSeriesDataColumn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeSeriesIdColumn!,
      unittest.equals('foo'),
    );
    checkUnnamed159(o.timeSeriesIdColumns!);
    unittest.expect(
      o.timeSeriesLengthFraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.timeSeriesTimestampColumn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.treeMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trendSmoothingWindowSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userColumn!,
      unittest.equals('foo'),
    );
    checkUnnamed160(o.vertexAiModelVersionAliases!);
    unittest.expect(
      o.walsAlpha!,
      unittest.equals(42.0),
    );
    unittest.expect(o.warmStart!, unittest.isTrue);
    unittest.expect(
      o.xgboostVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterTrainingOptions--;
}

core.List<api.GlobalExplanation> buildUnnamed161() => [
      buildGlobalExplanation(),
      buildGlobalExplanation(),
    ];

void checkUnnamed161(core.List<api.GlobalExplanation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGlobalExplanation(o[0]);
  checkGlobalExplanation(o[1]);
}

core.List<api.IterationResult> buildUnnamed162() => [
      buildIterationResult(),
      buildIterationResult(),
    ];

void checkUnnamed162(core.List<api.IterationResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIterationResult(o[0]);
  checkIterationResult(o[1]);
}

core.int buildCounterTrainingRun = 0;
api.TrainingRun buildTrainingRun() {
  final o = api.TrainingRun();
  buildCounterTrainingRun++;
  if (buildCounterTrainingRun < 3) {
    o.classLevelGlobalExplanations = buildUnnamed161();
    o.dataSplitResult = buildDataSplitResult();
    o.evaluationMetrics = buildEvaluationMetrics();
    o.modelLevelGlobalExplanation = buildGlobalExplanation();
    o.results = buildUnnamed162();
    o.startTime = 'foo';
    o.trainingOptions = buildTrainingOptions();
    o.trainingStartTime = 'foo';
    o.vertexAiModelId = 'foo';
    o.vertexAiModelVersion = 'foo';
  }
  buildCounterTrainingRun--;
  return o;
}

void checkTrainingRun(api.TrainingRun o) {
  buildCounterTrainingRun++;
  if (buildCounterTrainingRun < 3) {
    checkUnnamed161(o.classLevelGlobalExplanations!);
    checkDataSplitResult(o.dataSplitResult!);
    checkEvaluationMetrics(o.evaluationMetrics!);
    checkGlobalExplanation(o.modelLevelGlobalExplanation!);
    checkUnnamed162(o.results!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    checkTrainingOptions(o.trainingOptions!);
    unittest.expect(
      o.trainingStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vertexAiModelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vertexAiModelVersion!,
      unittest.equals('foo'),
    );
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

core.int buildCounterTransformColumn = 0;
api.TransformColumn buildTransformColumn() {
  final o = api.TransformColumn();
  buildCounterTransformColumn++;
  if (buildCounterTransformColumn < 3) {
    o.name = 'foo';
    o.transformSql = 'foo';
    o.type = buildStandardSqlDataType();
  }
  buildCounterTransformColumn--;
  return o;
}

void checkTransformColumn(api.TransformColumn o) {
  buildCounterTransformColumn++;
  if (buildCounterTransformColumn < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transformSql!,
      unittest.equals('foo'),
    );
    checkStandardSqlDataType(o.type!);
  }
  buildCounterTransformColumn--;
}

core.int buildCounterUndeleteDatasetRequest = 0;
api.UndeleteDatasetRequest buildUndeleteDatasetRequest() {
  final o = api.UndeleteDatasetRequest();
  buildCounterUndeleteDatasetRequest++;
  if (buildCounterUndeleteDatasetRequest < 3) {
    o.deletionTime = 'foo';
  }
  buildCounterUndeleteDatasetRequest--;
  return o;
}

void checkUndeleteDatasetRequest(api.UndeleteDatasetRequest o) {
  buildCounterUndeleteDatasetRequest++;
  if (buildCounterUndeleteDatasetRequest < 3) {
    unittest.expect(
      o.deletionTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterUndeleteDatasetRequest--;
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

core.List<api.IndexUnusedReason> buildUnnamed163() => [
      buildIndexUnusedReason(),
      buildIndexUnusedReason(),
    ];

void checkUnnamed163(core.List<api.IndexUnusedReason> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIndexUnusedReason(o[0]);
  checkIndexUnusedReason(o[1]);
}

core.int buildCounterVectorSearchStatistics = 0;
api.VectorSearchStatistics buildVectorSearchStatistics() {
  final o = api.VectorSearchStatistics();
  buildCounterVectorSearchStatistics++;
  if (buildCounterVectorSearchStatistics < 3) {
    o.indexUnusedReasons = buildUnnamed163();
    o.indexUsageMode = 'foo';
  }
  buildCounterVectorSearchStatistics--;
  return o;
}

void checkVectorSearchStatistics(api.VectorSearchStatistics o) {
  buildCounterVectorSearchStatistics++;
  if (buildCounterVectorSearchStatistics < 3) {
    checkUnnamed163(o.indexUnusedReasons!);
    unittest.expect(
      o.indexUsageMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterVectorSearchStatistics--;
}

core.List<api.UserDefinedFunctionResource> buildUnnamed164() => [
      buildUserDefinedFunctionResource(),
      buildUserDefinedFunctionResource(),
    ];

void checkUnnamed164(core.List<api.UserDefinedFunctionResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserDefinedFunctionResource(o[0]);
  checkUserDefinedFunctionResource(o[1]);
}

core.int buildCounterViewDefinition = 0;
api.ViewDefinition buildViewDefinition() {
  final o = api.ViewDefinition();
  buildCounterViewDefinition++;
  if (buildCounterViewDefinition < 3) {
    o.privacyPolicy = buildPrivacyPolicy();
    o.query = 'foo';
    o.useExplicitColumnNames = true;
    o.useLegacySql = true;
    o.userDefinedFunctionResources = buildUnnamed164();
  }
  buildCounterViewDefinition--;
  return o;
}

void checkViewDefinition(api.ViewDefinition o) {
  buildCounterViewDefinition++;
  if (buildCounterViewDefinition < 3) {
    checkPrivacyPolicy(o.privacyPolicy!);
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useExplicitColumnNames!, unittest.isTrue);
    unittest.expect(o.useLegacySql!, unittest.isTrue);
    checkUnnamed164(o.userDefinedFunctionResources!);
  }
  buildCounterViewDefinition--;
}

core.List<core.String> buildUnnamed165() => [
      'foo',
      'foo',
    ];

void checkUnnamed165(core.List<core.String> o) {
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

  unittest.group('obj-schema-AggregationThresholdPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationThresholdPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationThresholdPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregationThresholdPolicy(od);
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

  unittest.group('obj-schema-BigLakeConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigLakeConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigLakeConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigLakeConfiguration(od);
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

  unittest.group('obj-schema-CloneDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloneDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloneDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloneDefinition(od);
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

  unittest.group('obj-schema-DataFormatOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataFormatOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataFormatOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataFormatOptions(od);
    });
  });

  unittest.group('obj-schema-DataMaskingStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataMaskingStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataMaskingStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataMaskingStatistics(od);
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

  unittest.group('obj-schema-DatasetTags', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatasetTags();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatasetTags.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatasetTags(od);
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

  unittest.group('obj-schema-DifferentialPrivacyPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDifferentialPrivacyPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DifferentialPrivacyPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDifferentialPrivacyPolicy(od);
    });
  });

  unittest.group('obj-schema-DimensionalityReductionMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionalityReductionMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionalityReductionMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionalityReductionMetrics(od);
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

  unittest.group('obj-schema-DoubleCandidates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoubleCandidates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoubleCandidates.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDoubleCandidates(od);
    });
  });

  unittest.group('obj-schema-DoubleHparamSearchSpace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoubleHparamSearchSpace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoubleHparamSearchSpace.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDoubleHparamSearchSpace(od);
    });
  });

  unittest.group('obj-schema-DoubleRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoubleRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoubleRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDoubleRange(od);
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

  unittest.group('obj-schema-Explanation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExplanation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Explanation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExplanation(od);
    });
  });

  unittest.group('obj-schema-ExportDataStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportDataStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportDataStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportDataStatistics(od);
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

  unittest.group('obj-schema-ExternalCatalogDatasetOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalCatalogDatasetOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalCatalogDatasetOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalCatalogDatasetOptions(od);
    });
  });

  unittest.group('obj-schema-ExternalCatalogTableOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalCatalogTableOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalCatalogTableOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalCatalogTableOptions(od);
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

  unittest.group('obj-schema-ExternalDatasetReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalDatasetReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalDatasetReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalDatasetReference(od);
    });
  });

  unittest.group('obj-schema-ExternalServiceCost', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalServiceCost();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalServiceCost.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalServiceCost(od);
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

  unittest.group('obj-schema-GlobalExplanation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGlobalExplanation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GlobalExplanation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGlobalExplanation(od);
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

  unittest.group('obj-schema-HighCardinalityJoin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHighCardinalityJoin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HighCardinalityJoin.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHighCardinalityJoin(od);
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

  unittest.group('obj-schema-HparamSearchSpaces', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHparamSearchSpaces();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HparamSearchSpaces.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHparamSearchSpaces(od);
    });
  });

  unittest.group('obj-schema-HparamTuningTrial', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHparamTuningTrial();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HparamTuningTrial.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHparamTuningTrial(od);
    });
  });

  unittest.group('obj-schema-IndexUnusedReason', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIndexUnusedReason();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IndexUnusedReason.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIndexUnusedReason(od);
    });
  });

  unittest.group('obj-schema-InputDataChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputDataChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputDataChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInputDataChange(od);
    });
  });

  unittest.group('obj-schema-IntArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IntArray.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIntArray(od);
    });
  });

  unittest.group('obj-schema-IntArrayHparamSearchSpace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntArrayHparamSearchSpace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntArrayHparamSearchSpace.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntArrayHparamSearchSpace(od);
    });
  });

  unittest.group('obj-schema-IntCandidates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntCandidates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntCandidates.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntCandidates(od);
    });
  });

  unittest.group('obj-schema-IntHparamSearchSpace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntHparamSearchSpace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntHparamSearchSpace.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntHparamSearchSpace(od);
    });
  });

  unittest.group('obj-schema-IntRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IntRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIntRange(od);
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

  unittest.group('obj-schema-JobCreationReason', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobCreationReason();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobCreationReason.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobCreationReason(od);
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

  unittest.group('obj-schema-JobStatistics5', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobStatistics5();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobStatistics5.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobStatistics5(od);
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

  unittest.group('obj-schema-JoinRestrictionPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJoinRestrictionPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JoinRestrictionPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJoinRestrictionPolicy(od);
    });
  });

  unittest.group('obj-schema-JsonObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJsonObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = oJson as core.Map<core.String, core.dynamic>;
      checkJsonObject(od);
    });
  });

  unittest.group('obj-schema-JsonOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJsonOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JsonOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJsonOptions(od);
    });
  });

  unittest.group('obj-schema-LinkedDatasetMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedDatasetMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedDatasetMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinkedDatasetMetadata(od);
    });
  });

  unittest.group('obj-schema-LinkedDatasetSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedDatasetSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedDatasetSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinkedDatasetSource(od);
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

  unittest.group('obj-schema-LoadQueryStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoadQueryStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoadQueryStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoadQueryStatistics(od);
    });
  });

  unittest.group('obj-schema-MaterializedView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaterializedView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaterializedView.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaterializedView(od);
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

  unittest.group('obj-schema-MaterializedViewStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaterializedViewStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaterializedViewStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaterializedViewStatistics(od);
    });
  });

  unittest.group('obj-schema-MaterializedViewStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaterializedViewStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaterializedViewStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaterializedViewStatus(od);
    });
  });

  unittest.group('obj-schema-MetadataCacheStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadataCacheStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetadataCacheStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetadataCacheStatistics(od);
    });
  });

  unittest.group('obj-schema-MlStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMlStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MlStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMlStatistics(od);
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

  unittest.group('obj-schema-ModelExtractOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModelExtractOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModelExtractOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModelExtractOptions(od);
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

  unittest.group('obj-schema-PartitionSkew', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitionSkew();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitionSkew.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartitionSkew(od);
    });
  });

  unittest.group('obj-schema-PartitionedColumn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitionedColumn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitionedColumn.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartitionedColumn(od);
    });
  });

  unittest.group('obj-schema-PartitioningDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitioningDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitioningDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartitioningDefinition(od);
    });
  });

  unittest.group('obj-schema-PerformanceInsights', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerformanceInsights();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerformanceInsights.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerformanceInsights(od);
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

  unittest.group('obj-schema-PrincipalComponentInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrincipalComponentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrincipalComponentInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrincipalComponentInfo(od);
    });
  });

  unittest.group('obj-schema-PrivacyPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivacyPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivacyPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrivacyPolicy(od);
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

  unittest.group('obj-schema-QueryInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.QueryInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQueryInfo(od);
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

  unittest.group('obj-schema-RangeValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRangeValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RangeValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRangeValue(od);
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

  unittest.group('obj-schema-RemoteFunctionOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoteFunctionOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoteFunctionOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoteFunctionOptions(od);
    });
  });

  unittest.group('obj-schema-RemoteModelInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoteModelInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoteModelInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoteModelInfo(od);
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

  unittest.group('obj-schema-ScriptOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScriptOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScriptOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScriptOptions(od);
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

  unittest.group('obj-schema-SearchStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchStatistics(od);
    });
  });

  unittest.group('obj-schema-SerDeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSerDeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SerDeInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSerDeInfo(od);
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

  unittest.group('obj-schema-SkewSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSkewSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SkewSource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSkewSource(od);
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

  unittest.group('obj-schema-SparkLoggingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkLoggingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkLoggingInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSparkLoggingInfo(od);
    });
  });

  unittest.group('obj-schema-SparkOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSparkOptions(od);
    });
  });

  unittest.group('obj-schema-SparkStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSparkStatistics(od);
    });
  });

  unittest.group('obj-schema-StagePerformanceChangeInsight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStagePerformanceChangeInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StagePerformanceChangeInsight.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStagePerformanceChangeInsight(od);
    });
  });

  unittest.group('obj-schema-StagePerformanceStandaloneInsight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStagePerformanceStandaloneInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StagePerformanceStandaloneInsight.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStagePerformanceStandaloneInsight(od);
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

  unittest.group('obj-schema-StorageDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStorageDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StorageDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStorageDescriptor(od);
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

  unittest.group('obj-schema-StringHparamSearchSpace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStringHparamSearchSpace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StringHparamSearchSpace.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStringHparamSearchSpace(od);
    });
  });

  unittest.group('obj-schema-SystemVariables', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemVariables();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemVariables.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemVariables(od);
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

  unittest.group('obj-schema-TableConstraintsForeignKeysColumnReferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableConstraintsForeignKeysColumnReferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableConstraintsForeignKeysColumnReferences.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableConstraintsForeignKeysColumnReferences(od);
    });
  });

  unittest.group('obj-schema-TableConstraintsForeignKeysReferencedTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableConstraintsForeignKeysReferencedTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableConstraintsForeignKeysReferencedTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableConstraintsForeignKeysReferencedTable(od);
    });
  });

  unittest.group('obj-schema-TableConstraintsForeignKeys', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableConstraintsForeignKeys();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableConstraintsForeignKeys.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableConstraintsForeignKeys(od);
    });
  });

  unittest.group('obj-schema-TableConstraintsPrimaryKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableConstraintsPrimaryKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableConstraintsPrimaryKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableConstraintsPrimaryKey(od);
    });
  });

  unittest.group('obj-schema-TableConstraints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableConstraints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableConstraints.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableConstraints(od);
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

  unittest.group('obj-schema-TableFieldSchemaRangeElementType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableFieldSchemaRangeElementType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableFieldSchemaRangeElementType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableFieldSchemaRangeElementType(od);
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

  unittest.group('obj-schema-TableMetadataCacheUsage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableMetadataCacheUsage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableMetadataCacheUsage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableMetadataCacheUsage(od);
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

  unittest.group('obj-schema-TableReplicationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableReplicationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableReplicationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableReplicationInfo(od);
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

  unittest.group('obj-schema-TransformColumn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransformColumn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransformColumn.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransformColumn(od);
    });
  });

  unittest.group('obj-schema-UndeleteDatasetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteDatasetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteDatasetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteDatasetRequest(od);
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

  unittest.group('obj-schema-VectorSearchStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVectorSearchStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VectorSearchStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVectorSearchStatistics(od);
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
        final path = req.url.path;
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

        final query = req.url.query;
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
      final arg_datasetView = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
          queryMap['datasetView']!.first,
          unittest.equals(arg_datasetView),
        );
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
      final response = await res.get(arg_projectId, arg_datasetId,
          datasetView: arg_datasetView, $fields: arg_$fields);
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

        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).datasets;
      final arg_request = buildUndeleteDatasetRequest();
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteDatasetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteDatasetRequest(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
      final response = await res.undelete(
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

        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
      final arg_formatOptions_useInt64Timestamp = true;
      final arg_location = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_startIndex = 'foo';
      final arg_timeoutMs = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
          queryMap['formatOptions.useInt64Timestamp']!.first,
          unittest.equals('$arg_formatOptions_useInt64Timestamp'),
        );
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
          formatOptions_useInt64Timestamp: arg_formatOptions_useInt64Timestamp,
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

        final path = req.url.path;
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

        final query = req.url.query;
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
      final arg_stateFilter = buildUnnamed165();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).routines;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = req.url.query;
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
      final res = api.BigqueryApi(mock).routines;
      final arg_request = buildRoutine();
      final arg_projectId = 'foo';
      final arg_datasetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Routine.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRoutine(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigqueryApi(mock).routines;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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
      final arg_formatOptions_useInt64Timestamp = true;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_selectedFields = 'foo';
      final arg_startIndex = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
          queryMap['formatOptions.useInt64Timestamp']!.first,
          unittest.equals('$arg_formatOptions_useInt64Timestamp'),
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
          formatOptions_useInt64Timestamp: arg_formatOptions_useInt64Timestamp,
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
        final path = req.url.path;
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

        final query = req.url.query;
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
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
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
          selectedFields: arg_selectedFields,
          view: arg_view,
          $fields: arg_$fields);
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

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
      final arg_autodetectSchema = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Table.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTable(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
          queryMap['autodetect_schema']!.first,
          unittest.equals('$arg_autodetectSchema'),
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
      final response = await res.patch(
          arg_request, arg_projectId, arg_datasetId, arg_tableId,
          autodetectSchema: arg_autodetectSchema, $fields: arg_$fields);
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

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = req.url.query;
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

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = req.url.query;
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
      final arg_autodetectSchema = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Table.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTable(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
          queryMap['autodetect_schema']!.first,
          unittest.equals('$arg_autodetectSchema'),
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
      final response = await res.update(
          arg_request, arg_projectId, arg_datasetId, arg_tableId,
          autodetectSchema: arg_autodetectSchema, $fields: arg_$fields);
      checkTable(response as api.Table);
    });
  });
}
