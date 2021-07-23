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

import 'package:googleapis_beta/analyticsdata/v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.RunPivotReportRequest> buildUnnamed7871() => [
      buildRunPivotReportRequest(),
      buildRunPivotReportRequest(),
    ];

void checkUnnamed7871(core.List<api.RunPivotReportRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunPivotReportRequest(o[0]);
  checkRunPivotReportRequest(o[1]);
}

core.int buildCounterBatchRunPivotReportsRequest = 0;
api.BatchRunPivotReportsRequest buildBatchRunPivotReportsRequest() {
  final o = api.BatchRunPivotReportsRequest();
  buildCounterBatchRunPivotReportsRequest++;
  if (buildCounterBatchRunPivotReportsRequest < 3) {
    o.requests = buildUnnamed7871();
  }
  buildCounterBatchRunPivotReportsRequest--;
  return o;
}

void checkBatchRunPivotReportsRequest(api.BatchRunPivotReportsRequest o) {
  buildCounterBatchRunPivotReportsRequest++;
  if (buildCounterBatchRunPivotReportsRequest < 3) {
    checkUnnamed7871(o.requests!);
  }
  buildCounterBatchRunPivotReportsRequest--;
}

core.List<api.RunPivotReportResponse> buildUnnamed7872() => [
      buildRunPivotReportResponse(),
      buildRunPivotReportResponse(),
    ];

void checkUnnamed7872(core.List<api.RunPivotReportResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunPivotReportResponse(o[0]);
  checkRunPivotReportResponse(o[1]);
}

core.int buildCounterBatchRunPivotReportsResponse = 0;
api.BatchRunPivotReportsResponse buildBatchRunPivotReportsResponse() {
  final o = api.BatchRunPivotReportsResponse();
  buildCounterBatchRunPivotReportsResponse++;
  if (buildCounterBatchRunPivotReportsResponse < 3) {
    o.kind = 'foo';
    o.pivotReports = buildUnnamed7872();
  }
  buildCounterBatchRunPivotReportsResponse--;
  return o;
}

void checkBatchRunPivotReportsResponse(api.BatchRunPivotReportsResponse o) {
  buildCounterBatchRunPivotReportsResponse++;
  if (buildCounterBatchRunPivotReportsResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed7872(o.pivotReports!);
  }
  buildCounterBatchRunPivotReportsResponse--;
}

core.List<api.RunReportRequest> buildUnnamed7873() => [
      buildRunReportRequest(),
      buildRunReportRequest(),
    ];

void checkUnnamed7873(core.List<api.RunReportRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunReportRequest(o[0]);
  checkRunReportRequest(o[1]);
}

core.int buildCounterBatchRunReportsRequest = 0;
api.BatchRunReportsRequest buildBatchRunReportsRequest() {
  final o = api.BatchRunReportsRequest();
  buildCounterBatchRunReportsRequest++;
  if (buildCounterBatchRunReportsRequest < 3) {
    o.requests = buildUnnamed7873();
  }
  buildCounterBatchRunReportsRequest--;
  return o;
}

void checkBatchRunReportsRequest(api.BatchRunReportsRequest o) {
  buildCounterBatchRunReportsRequest++;
  if (buildCounterBatchRunReportsRequest < 3) {
    checkUnnamed7873(o.requests!);
  }
  buildCounterBatchRunReportsRequest--;
}

core.List<api.RunReportResponse> buildUnnamed7874() => [
      buildRunReportResponse(),
      buildRunReportResponse(),
    ];

void checkUnnamed7874(core.List<api.RunReportResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunReportResponse(o[0]);
  checkRunReportResponse(o[1]);
}

core.int buildCounterBatchRunReportsResponse = 0;
api.BatchRunReportsResponse buildBatchRunReportsResponse() {
  final o = api.BatchRunReportsResponse();
  buildCounterBatchRunReportsResponse++;
  if (buildCounterBatchRunReportsResponse < 3) {
    o.kind = 'foo';
    o.reports = buildUnnamed7874();
  }
  buildCounterBatchRunReportsResponse--;
  return o;
}

void checkBatchRunReportsResponse(api.BatchRunReportsResponse o) {
  buildCounterBatchRunReportsResponse++;
  if (buildCounterBatchRunReportsResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed7874(o.reports!);
  }
  buildCounterBatchRunReportsResponse--;
}

core.int buildCounterBetweenFilter = 0;
api.BetweenFilter buildBetweenFilter() {
  final o = api.BetweenFilter();
  buildCounterBetweenFilter++;
  if (buildCounterBetweenFilter < 3) {
    o.fromValue = buildNumericValue();
    o.toValue = buildNumericValue();
  }
  buildCounterBetweenFilter--;
  return o;
}

void checkBetweenFilter(api.BetweenFilter o) {
  buildCounterBetweenFilter++;
  if (buildCounterBetweenFilter < 3) {
    checkNumericValue(o.fromValue!);
    checkNumericValue(o.toValue!);
  }
  buildCounterBetweenFilter--;
}

core.int buildCounterCaseExpression = 0;
api.CaseExpression buildCaseExpression() {
  final o = api.CaseExpression();
  buildCounterCaseExpression++;
  if (buildCounterCaseExpression < 3) {
    o.dimensionName = 'foo';
  }
  buildCounterCaseExpression--;
  return o;
}

void checkCaseExpression(api.CaseExpression o) {
  buildCounterCaseExpression++;
  if (buildCounterCaseExpression < 3) {
    unittest.expect(
      o.dimensionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterCaseExpression--;
}

core.int buildCounterCohort = 0;
api.Cohort buildCohort() {
  final o = api.Cohort();
  buildCounterCohort++;
  if (buildCounterCohort < 3) {
    o.dateRange = buildDateRange();
    o.dimension = 'foo';
    o.name = 'foo';
  }
  buildCounterCohort--;
  return o;
}

void checkCohort(api.Cohort o) {
  buildCounterCohort++;
  if (buildCounterCohort < 3) {
    checkDateRange(o.dateRange!);
    unittest.expect(
      o.dimension!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterCohort--;
}

core.int buildCounterCohortReportSettings = 0;
api.CohortReportSettings buildCohortReportSettings() {
  final o = api.CohortReportSettings();
  buildCounterCohortReportSettings++;
  if (buildCounterCohortReportSettings < 3) {
    o.accumulate = true;
  }
  buildCounterCohortReportSettings--;
  return o;
}

void checkCohortReportSettings(api.CohortReportSettings o) {
  buildCounterCohortReportSettings++;
  if (buildCounterCohortReportSettings < 3) {
    unittest.expect(o.accumulate!, unittest.isTrue);
  }
  buildCounterCohortReportSettings--;
}

core.List<api.Cohort> buildUnnamed7875() => [
      buildCohort(),
      buildCohort(),
    ];

void checkUnnamed7875(core.List<api.Cohort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCohort(o[0]);
  checkCohort(o[1]);
}

core.int buildCounterCohortSpec = 0;
api.CohortSpec buildCohortSpec() {
  final o = api.CohortSpec();
  buildCounterCohortSpec++;
  if (buildCounterCohortSpec < 3) {
    o.cohortReportSettings = buildCohortReportSettings();
    o.cohorts = buildUnnamed7875();
    o.cohortsRange = buildCohortsRange();
  }
  buildCounterCohortSpec--;
  return o;
}

void checkCohortSpec(api.CohortSpec o) {
  buildCounterCohortSpec++;
  if (buildCounterCohortSpec < 3) {
    checkCohortReportSettings(o.cohortReportSettings!);
    checkUnnamed7875(o.cohorts!);
    checkCohortsRange(o.cohortsRange!);
  }
  buildCounterCohortSpec--;
}

core.int buildCounterCohortsRange = 0;
api.CohortsRange buildCohortsRange() {
  final o = api.CohortsRange();
  buildCounterCohortsRange++;
  if (buildCounterCohortsRange < 3) {
    o.endOffset = 42;
    o.granularity = 'foo';
    o.startOffset = 42;
  }
  buildCounterCohortsRange--;
  return o;
}

void checkCohortsRange(api.CohortsRange o) {
  buildCounterCohortsRange++;
  if (buildCounterCohortsRange < 3) {
    unittest.expect(
      o.endOffset!,
      unittest.equals(42),
    );
    unittest.expect(
      o.granularity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startOffset!,
      unittest.equals(42),
    );
  }
  buildCounterCohortsRange--;
}

core.List<core.String> buildUnnamed7876() => [
      'foo',
      'foo',
    ];

void checkUnnamed7876(core.List<core.String> o) {
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

core.int buildCounterConcatenateExpression = 0;
api.ConcatenateExpression buildConcatenateExpression() {
  final o = api.ConcatenateExpression();
  buildCounterConcatenateExpression++;
  if (buildCounterConcatenateExpression < 3) {
    o.delimiter = 'foo';
    o.dimensionNames = buildUnnamed7876();
  }
  buildCounterConcatenateExpression--;
  return o;
}

void checkConcatenateExpression(api.ConcatenateExpression o) {
  buildCounterConcatenateExpression++;
  if (buildCounterConcatenateExpression < 3) {
    unittest.expect(
      o.delimiter!,
      unittest.equals('foo'),
    );
    checkUnnamed7876(o.dimensionNames!);
  }
  buildCounterConcatenateExpression--;
}

core.int buildCounterDateRange = 0;
api.DateRange buildDateRange() {
  final o = api.DateRange();
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    o.endDate = 'foo';
    o.name = 'foo';
    o.startDate = 'foo';
  }
  buildCounterDateRange--;
  return o;
}

void checkDateRange(api.DateRange o) {
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterDateRange--;
}

core.int buildCounterDimension = 0;
api.Dimension buildDimension() {
  final o = api.Dimension();
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    o.dimensionExpression = buildDimensionExpression();
    o.name = 'foo';
  }
  buildCounterDimension--;
  return o;
}

void checkDimension(api.Dimension o) {
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    checkDimensionExpression(o.dimensionExpression!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterDimension--;
}

core.int buildCounterDimensionExpression = 0;
api.DimensionExpression buildDimensionExpression() {
  final o = api.DimensionExpression();
  buildCounterDimensionExpression++;
  if (buildCounterDimensionExpression < 3) {
    o.concatenate = buildConcatenateExpression();
    o.lowerCase = buildCaseExpression();
    o.upperCase = buildCaseExpression();
  }
  buildCounterDimensionExpression--;
  return o;
}

void checkDimensionExpression(api.DimensionExpression o) {
  buildCounterDimensionExpression++;
  if (buildCounterDimensionExpression < 3) {
    checkConcatenateExpression(o.concatenate!);
    checkCaseExpression(o.lowerCase!);
    checkCaseExpression(o.upperCase!);
  }
  buildCounterDimensionExpression--;
}

core.int buildCounterDimensionHeader = 0;
api.DimensionHeader buildDimensionHeader() {
  final o = api.DimensionHeader();
  buildCounterDimensionHeader++;
  if (buildCounterDimensionHeader < 3) {
    o.name = 'foo';
  }
  buildCounterDimensionHeader--;
  return o;
}

void checkDimensionHeader(api.DimensionHeader o) {
  buildCounterDimensionHeader++;
  if (buildCounterDimensionHeader < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterDimensionHeader--;
}

core.List<core.String> buildUnnamed7877() => [
      'foo',
      'foo',
    ];

void checkUnnamed7877(core.List<core.String> o) {
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

core.int buildCounterDimensionMetadata = 0;
api.DimensionMetadata buildDimensionMetadata() {
  final o = api.DimensionMetadata();
  buildCounterDimensionMetadata++;
  if (buildCounterDimensionMetadata < 3) {
    o.apiName = 'foo';
    o.customDefinition = true;
    o.deprecatedApiNames = buildUnnamed7877();
    o.description = 'foo';
    o.uiName = 'foo';
  }
  buildCounterDimensionMetadata--;
  return o;
}

void checkDimensionMetadata(api.DimensionMetadata o) {
  buildCounterDimensionMetadata++;
  if (buildCounterDimensionMetadata < 3) {
    unittest.expect(
      o.apiName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.customDefinition!, unittest.isTrue);
    checkUnnamed7877(o.deprecatedApiNames!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uiName!,
      unittest.equals('foo'),
    );
  }
  buildCounterDimensionMetadata--;
}

core.int buildCounterDimensionOrderBy = 0;
api.DimensionOrderBy buildDimensionOrderBy() {
  final o = api.DimensionOrderBy();
  buildCounterDimensionOrderBy++;
  if (buildCounterDimensionOrderBy < 3) {
    o.dimensionName = 'foo';
    o.orderType = 'foo';
  }
  buildCounterDimensionOrderBy--;
  return o;
}

void checkDimensionOrderBy(api.DimensionOrderBy o) {
  buildCounterDimensionOrderBy++;
  if (buildCounterDimensionOrderBy < 3) {
    unittest.expect(
      o.dimensionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDimensionOrderBy--;
}

core.int buildCounterDimensionValue = 0;
api.DimensionValue buildDimensionValue() {
  final o = api.DimensionValue();
  buildCounterDimensionValue++;
  if (buildCounterDimensionValue < 3) {
    o.value = 'foo';
  }
  buildCounterDimensionValue--;
  return o;
}

void checkDimensionValue(api.DimensionValue o) {
  buildCounterDimensionValue++;
  if (buildCounterDimensionValue < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterDimensionValue--;
}

core.int buildCounterFilter = 0;
api.Filter buildFilter() {
  final o = api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.betweenFilter = buildBetweenFilter();
    o.fieldName = 'foo';
    o.inListFilter = buildInListFilter();
    o.numericFilter = buildNumericFilter();
    o.stringFilter = buildStringFilter();
  }
  buildCounterFilter--;
  return o;
}

void checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    checkBetweenFilter(o.betweenFilter!);
    unittest.expect(
      o.fieldName!,
      unittest.equals('foo'),
    );
    checkInListFilter(o.inListFilter!);
    checkNumericFilter(o.numericFilter!);
    checkStringFilter(o.stringFilter!);
  }
  buildCounterFilter--;
}

core.int buildCounterFilterExpression = 0;
api.FilterExpression buildFilterExpression() {
  final o = api.FilterExpression();
  buildCounterFilterExpression++;
  if (buildCounterFilterExpression < 3) {
    o.andGroup = buildFilterExpressionList();
    o.filter = buildFilter();
    o.notExpression = buildFilterExpression();
    o.orGroup = buildFilterExpressionList();
  }
  buildCounterFilterExpression--;
  return o;
}

void checkFilterExpression(api.FilterExpression o) {
  buildCounterFilterExpression++;
  if (buildCounterFilterExpression < 3) {
    checkFilterExpressionList(o.andGroup!);
    checkFilter(o.filter!);
    checkFilterExpression(o.notExpression!);
    checkFilterExpressionList(o.orGroup!);
  }
  buildCounterFilterExpression--;
}

core.List<api.FilterExpression> buildUnnamed7878() => [
      buildFilterExpression(),
      buildFilterExpression(),
    ];

void checkUnnamed7878(core.List<api.FilterExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterExpression(o[0]);
  checkFilterExpression(o[1]);
}

core.int buildCounterFilterExpressionList = 0;
api.FilterExpressionList buildFilterExpressionList() {
  final o = api.FilterExpressionList();
  buildCounterFilterExpressionList++;
  if (buildCounterFilterExpressionList < 3) {
    o.expressions = buildUnnamed7878();
  }
  buildCounterFilterExpressionList--;
  return o;
}

void checkFilterExpressionList(api.FilterExpressionList o) {
  buildCounterFilterExpressionList++;
  if (buildCounterFilterExpressionList < 3) {
    checkUnnamed7878(o.expressions!);
  }
  buildCounterFilterExpressionList--;
}

core.List<core.String> buildUnnamed7879() => [
      'foo',
      'foo',
    ];

void checkUnnamed7879(core.List<core.String> o) {
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

core.int buildCounterInListFilter = 0;
api.InListFilter buildInListFilter() {
  final o = api.InListFilter();
  buildCounterInListFilter++;
  if (buildCounterInListFilter < 3) {
    o.caseSensitive = true;
    o.values = buildUnnamed7879();
  }
  buildCounterInListFilter--;
  return o;
}

void checkInListFilter(api.InListFilter o) {
  buildCounterInListFilter++;
  if (buildCounterInListFilter < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    checkUnnamed7879(o.values!);
  }
  buildCounterInListFilter--;
}

core.List<api.DimensionMetadata> buildUnnamed7880() => [
      buildDimensionMetadata(),
      buildDimensionMetadata(),
    ];

void checkUnnamed7880(core.List<api.DimensionMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionMetadata(o[0]);
  checkDimensionMetadata(o[1]);
}

core.List<api.MetricMetadata> buildUnnamed7881() => [
      buildMetricMetadata(),
      buildMetricMetadata(),
    ];

void checkUnnamed7881(core.List<api.MetricMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricMetadata(o[0]);
  checkMetricMetadata(o[1]);
}

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  final o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.dimensions = buildUnnamed7880();
    o.metrics = buildUnnamed7881();
    o.name = 'foo';
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    checkUnnamed7880(o.dimensions!);
    checkUnnamed7881(o.metrics!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetadata--;
}

core.int buildCounterMetric = 0;
api.Metric buildMetric() {
  final o = api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.expression = 'foo';
    o.invisible = true;
    o.name = 'foo';
  }
  buildCounterMetric--;
  return o;
}

void checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(o.invisible!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetric--;
}

core.int buildCounterMetricHeader = 0;
api.MetricHeader buildMetricHeader() {
  final o = api.MetricHeader();
  buildCounterMetricHeader++;
  if (buildCounterMetricHeader < 3) {
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterMetricHeader--;
  return o;
}

void checkMetricHeader(api.MetricHeader o) {
  buildCounterMetricHeader++;
  if (buildCounterMetricHeader < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricHeader--;
}

core.List<core.String> buildUnnamed7882() => [
      'foo',
      'foo',
    ];

void checkUnnamed7882(core.List<core.String> o) {
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

core.int buildCounterMetricMetadata = 0;
api.MetricMetadata buildMetricMetadata() {
  final o = api.MetricMetadata();
  buildCounterMetricMetadata++;
  if (buildCounterMetricMetadata < 3) {
    o.apiName = 'foo';
    o.customDefinition = true;
    o.deprecatedApiNames = buildUnnamed7882();
    o.description = 'foo';
    o.expression = 'foo';
    o.type = 'foo';
    o.uiName = 'foo';
  }
  buildCounterMetricMetadata--;
  return o;
}

void checkMetricMetadata(api.MetricMetadata o) {
  buildCounterMetricMetadata++;
  if (buildCounterMetricMetadata < 3) {
    unittest.expect(
      o.apiName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.customDefinition!, unittest.isTrue);
    checkUnnamed7882(o.deprecatedApiNames!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uiName!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricMetadata--;
}

core.int buildCounterMetricOrderBy = 0;
api.MetricOrderBy buildMetricOrderBy() {
  final o = api.MetricOrderBy();
  buildCounterMetricOrderBy++;
  if (buildCounterMetricOrderBy < 3) {
    o.metricName = 'foo';
  }
  buildCounterMetricOrderBy--;
  return o;
}

void checkMetricOrderBy(api.MetricOrderBy o) {
  buildCounterMetricOrderBy++;
  if (buildCounterMetricOrderBy < 3) {
    unittest.expect(
      o.metricName!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricOrderBy--;
}

core.int buildCounterMetricValue = 0;
api.MetricValue buildMetricValue() {
  final o = api.MetricValue();
  buildCounterMetricValue++;
  if (buildCounterMetricValue < 3) {
    o.value = 'foo';
  }
  buildCounterMetricValue--;
  return o;
}

void checkMetricValue(api.MetricValue o) {
  buildCounterMetricValue++;
  if (buildCounterMetricValue < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricValue--;
}

core.int buildCounterMinuteRange = 0;
api.MinuteRange buildMinuteRange() {
  final o = api.MinuteRange();
  buildCounterMinuteRange++;
  if (buildCounterMinuteRange < 3) {
    o.endMinutesAgo = 42;
    o.name = 'foo';
    o.startMinutesAgo = 42;
  }
  buildCounterMinuteRange--;
  return o;
}

void checkMinuteRange(api.MinuteRange o) {
  buildCounterMinuteRange++;
  if (buildCounterMinuteRange < 3) {
    unittest.expect(
      o.endMinutesAgo!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startMinutesAgo!,
      unittest.equals(42),
    );
  }
  buildCounterMinuteRange--;
}

core.int buildCounterNumericFilter = 0;
api.NumericFilter buildNumericFilter() {
  final o = api.NumericFilter();
  buildCounterNumericFilter++;
  if (buildCounterNumericFilter < 3) {
    o.operation = 'foo';
    o.value = buildNumericValue();
  }
  buildCounterNumericFilter--;
  return o;
}

void checkNumericFilter(api.NumericFilter o) {
  buildCounterNumericFilter++;
  if (buildCounterNumericFilter < 3) {
    unittest.expect(
      o.operation!,
      unittest.equals('foo'),
    );
    checkNumericValue(o.value!);
  }
  buildCounterNumericFilter--;
}

core.int buildCounterNumericValue = 0;
api.NumericValue buildNumericValue() {
  final o = api.NumericValue();
  buildCounterNumericValue++;
  if (buildCounterNumericValue < 3) {
    o.doubleValue = 42.0;
    o.int64Value = 'foo';
  }
  buildCounterNumericValue--;
  return o;
}

void checkNumericValue(api.NumericValue o) {
  buildCounterNumericValue++;
  if (buildCounterNumericValue < 3) {
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.int64Value!,
      unittest.equals('foo'),
    );
  }
  buildCounterNumericValue--;
}

core.int buildCounterOrderBy = 0;
api.OrderBy buildOrderBy() {
  final o = api.OrderBy();
  buildCounterOrderBy++;
  if (buildCounterOrderBy < 3) {
    o.desc = true;
    o.dimension = buildDimensionOrderBy();
    o.metric = buildMetricOrderBy();
    o.pivot = buildPivotOrderBy();
  }
  buildCounterOrderBy--;
  return o;
}

void checkOrderBy(api.OrderBy o) {
  buildCounterOrderBy++;
  if (buildCounterOrderBy < 3) {
    unittest.expect(o.desc!, unittest.isTrue);
    checkDimensionOrderBy(o.dimension!);
    checkMetricOrderBy(o.metric!);
    checkPivotOrderBy(o.pivot!);
  }
  buildCounterOrderBy--;
}

core.List<core.String> buildUnnamed7883() => [
      'foo',
      'foo',
    ];

void checkUnnamed7883(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7884() => [
      'foo',
      'foo',
    ];

void checkUnnamed7884(core.List<core.String> o) {
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

core.List<api.OrderBy> buildUnnamed7885() => [
      buildOrderBy(),
      buildOrderBy(),
    ];

void checkUnnamed7885(core.List<api.OrderBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderBy(o[0]);
  checkOrderBy(o[1]);
}

core.int buildCounterPivot = 0;
api.Pivot buildPivot() {
  final o = api.Pivot();
  buildCounterPivot++;
  if (buildCounterPivot < 3) {
    o.fieldNames = buildUnnamed7883();
    o.limit = 'foo';
    o.metricAggregations = buildUnnamed7884();
    o.offset = 'foo';
    o.orderBys = buildUnnamed7885();
  }
  buildCounterPivot--;
  return o;
}

void checkPivot(api.Pivot o) {
  buildCounterPivot++;
  if (buildCounterPivot < 3) {
    checkUnnamed7883(o.fieldNames!);
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    checkUnnamed7884(o.metricAggregations!);
    unittest.expect(
      o.offset!,
      unittest.equals('foo'),
    );
    checkUnnamed7885(o.orderBys!);
  }
  buildCounterPivot--;
}

core.List<api.DimensionValue> buildUnnamed7886() => [
      buildDimensionValue(),
      buildDimensionValue(),
    ];

void checkUnnamed7886(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.int buildCounterPivotDimensionHeader = 0;
api.PivotDimensionHeader buildPivotDimensionHeader() {
  final o = api.PivotDimensionHeader();
  buildCounterPivotDimensionHeader++;
  if (buildCounterPivotDimensionHeader < 3) {
    o.dimensionValues = buildUnnamed7886();
  }
  buildCounterPivotDimensionHeader--;
  return o;
}

void checkPivotDimensionHeader(api.PivotDimensionHeader o) {
  buildCounterPivotDimensionHeader++;
  if (buildCounterPivotDimensionHeader < 3) {
    checkUnnamed7886(o.dimensionValues!);
  }
  buildCounterPivotDimensionHeader--;
}

core.List<api.PivotDimensionHeader> buildUnnamed7887() => [
      buildPivotDimensionHeader(),
      buildPivotDimensionHeader(),
    ];

void checkUnnamed7887(core.List<api.PivotDimensionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotDimensionHeader(o[0]);
  checkPivotDimensionHeader(o[1]);
}

core.int buildCounterPivotHeader = 0;
api.PivotHeader buildPivotHeader() {
  final o = api.PivotHeader();
  buildCounterPivotHeader++;
  if (buildCounterPivotHeader < 3) {
    o.pivotDimensionHeaders = buildUnnamed7887();
    o.rowCount = 42;
  }
  buildCounterPivotHeader--;
  return o;
}

void checkPivotHeader(api.PivotHeader o) {
  buildCounterPivotHeader++;
  if (buildCounterPivotHeader < 3) {
    checkUnnamed7887(o.pivotDimensionHeaders!);
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
  }
  buildCounterPivotHeader--;
}

core.List<api.PivotSelection> buildUnnamed7888() => [
      buildPivotSelection(),
      buildPivotSelection(),
    ];

void checkUnnamed7888(core.List<api.PivotSelection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotSelection(o[0]);
  checkPivotSelection(o[1]);
}

core.int buildCounterPivotOrderBy = 0;
api.PivotOrderBy buildPivotOrderBy() {
  final o = api.PivotOrderBy();
  buildCounterPivotOrderBy++;
  if (buildCounterPivotOrderBy < 3) {
    o.metricName = 'foo';
    o.pivotSelections = buildUnnamed7888();
  }
  buildCounterPivotOrderBy--;
  return o;
}

void checkPivotOrderBy(api.PivotOrderBy o) {
  buildCounterPivotOrderBy++;
  if (buildCounterPivotOrderBy < 3) {
    unittest.expect(
      o.metricName!,
      unittest.equals('foo'),
    );
    checkUnnamed7888(o.pivotSelections!);
  }
  buildCounterPivotOrderBy--;
}

core.int buildCounterPivotSelection = 0;
api.PivotSelection buildPivotSelection() {
  final o = api.PivotSelection();
  buildCounterPivotSelection++;
  if (buildCounterPivotSelection < 3) {
    o.dimensionName = 'foo';
    o.dimensionValue = 'foo';
  }
  buildCounterPivotSelection--;
  return o;
}

void checkPivotSelection(api.PivotSelection o) {
  buildCounterPivotSelection++;
  if (buildCounterPivotSelection < 3) {
    unittest.expect(
      o.dimensionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dimensionValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterPivotSelection--;
}

core.int buildCounterPropertyQuota = 0;
api.PropertyQuota buildPropertyQuota() {
  final o = api.PropertyQuota();
  buildCounterPropertyQuota++;
  if (buildCounterPropertyQuota < 3) {
    o.concurrentRequests = buildQuotaStatus();
    o.potentiallyThresholdedRequestsPerHour = buildQuotaStatus();
    o.serverErrorsPerProjectPerHour = buildQuotaStatus();
    o.tokensPerDay = buildQuotaStatus();
    o.tokensPerHour = buildQuotaStatus();
  }
  buildCounterPropertyQuota--;
  return o;
}

void checkPropertyQuota(api.PropertyQuota o) {
  buildCounterPropertyQuota++;
  if (buildCounterPropertyQuota < 3) {
    checkQuotaStatus(o.concurrentRequests!);
    checkQuotaStatus(o.potentiallyThresholdedRequestsPerHour!);
    checkQuotaStatus(o.serverErrorsPerProjectPerHour!);
    checkQuotaStatus(o.tokensPerDay!);
    checkQuotaStatus(o.tokensPerHour!);
  }
  buildCounterPropertyQuota--;
}

core.int buildCounterQuotaStatus = 0;
api.QuotaStatus buildQuotaStatus() {
  final o = api.QuotaStatus();
  buildCounterQuotaStatus++;
  if (buildCounterQuotaStatus < 3) {
    o.consumed = 42;
    o.remaining = 42;
  }
  buildCounterQuotaStatus--;
  return o;
}

void checkQuotaStatus(api.QuotaStatus o) {
  buildCounterQuotaStatus++;
  if (buildCounterQuotaStatus < 3) {
    unittest.expect(
      o.consumed!,
      unittest.equals(42),
    );
    unittest.expect(
      o.remaining!,
      unittest.equals(42),
    );
  }
  buildCounterQuotaStatus--;
}

core.int buildCounterResponseMetaData = 0;
api.ResponseMetaData buildResponseMetaData() {
  final o = api.ResponseMetaData();
  buildCounterResponseMetaData++;
  if (buildCounterResponseMetaData < 3) {
    o.dataLossFromOtherRow = true;
  }
  buildCounterResponseMetaData--;
  return o;
}

void checkResponseMetaData(api.ResponseMetaData o) {
  buildCounterResponseMetaData++;
  if (buildCounterResponseMetaData < 3) {
    unittest.expect(o.dataLossFromOtherRow!, unittest.isTrue);
  }
  buildCounterResponseMetaData--;
}

core.List<api.DimensionValue> buildUnnamed7889() => [
      buildDimensionValue(),
      buildDimensionValue(),
    ];

void checkUnnamed7889(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<api.MetricValue> buildUnnamed7890() => [
      buildMetricValue(),
      buildMetricValue(),
    ];

void checkUnnamed7890(core.List<api.MetricValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValue(o[0]);
  checkMetricValue(o[1]);
}

core.int buildCounterRow = 0;
api.Row buildRow() {
  final o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.dimensionValues = buildUnnamed7889();
    o.metricValues = buildUnnamed7890();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    checkUnnamed7889(o.dimensionValues!);
    checkUnnamed7890(o.metricValues!);
  }
  buildCounterRow--;
}

core.List<api.DateRange> buildUnnamed7891() => [
      buildDateRange(),
      buildDateRange(),
    ];

void checkUnnamed7891(core.List<api.DateRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRange(o[0]);
  checkDateRange(o[1]);
}

core.List<api.Dimension> buildUnnamed7892() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed7892(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed7893() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed7893(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.Pivot> buildUnnamed7894() => [
      buildPivot(),
      buildPivot(),
    ];

void checkUnnamed7894(core.List<api.Pivot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivot(o[0]);
  checkPivot(o[1]);
}

core.int buildCounterRunPivotReportRequest = 0;
api.RunPivotReportRequest buildRunPivotReportRequest() {
  final o = api.RunPivotReportRequest();
  buildCounterRunPivotReportRequest++;
  if (buildCounterRunPivotReportRequest < 3) {
    o.cohortSpec = buildCohortSpec();
    o.currencyCode = 'foo';
    o.dateRanges = buildUnnamed7891();
    o.dimensionFilter = buildFilterExpression();
    o.dimensions = buildUnnamed7892();
    o.keepEmptyRows = true;
    o.metricFilter = buildFilterExpression();
    o.metrics = buildUnnamed7893();
    o.pivots = buildUnnamed7894();
    o.property = 'foo';
    o.returnPropertyQuota = true;
  }
  buildCounterRunPivotReportRequest--;
  return o;
}

void checkRunPivotReportRequest(api.RunPivotReportRequest o) {
  buildCounterRunPivotReportRequest++;
  if (buildCounterRunPivotReportRequest < 3) {
    checkCohortSpec(o.cohortSpec!);
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    checkUnnamed7891(o.dateRanges!);
    checkFilterExpression(o.dimensionFilter!);
    checkUnnamed7892(o.dimensions!);
    unittest.expect(o.keepEmptyRows!, unittest.isTrue);
    checkFilterExpression(o.metricFilter!);
    checkUnnamed7893(o.metrics!);
    checkUnnamed7894(o.pivots!);
    unittest.expect(
      o.property!,
      unittest.equals('foo'),
    );
    unittest.expect(o.returnPropertyQuota!, unittest.isTrue);
  }
  buildCounterRunPivotReportRequest--;
}

core.List<api.Row> buildUnnamed7895() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed7895(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.List<api.DimensionHeader> buildUnnamed7896() => [
      buildDimensionHeader(),
      buildDimensionHeader(),
    ];

void checkUnnamed7896(core.List<api.DimensionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionHeader(o[0]);
  checkDimensionHeader(o[1]);
}

core.List<api.MetricHeader> buildUnnamed7897() => [
      buildMetricHeader(),
      buildMetricHeader(),
    ];

void checkUnnamed7897(core.List<api.MetricHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricHeader(o[0]);
  checkMetricHeader(o[1]);
}

core.List<api.PivotHeader> buildUnnamed7898() => [
      buildPivotHeader(),
      buildPivotHeader(),
    ];

void checkUnnamed7898(core.List<api.PivotHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotHeader(o[0]);
  checkPivotHeader(o[1]);
}

core.List<api.Row> buildUnnamed7899() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed7899(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterRunPivotReportResponse = 0;
api.RunPivotReportResponse buildRunPivotReportResponse() {
  final o = api.RunPivotReportResponse();
  buildCounterRunPivotReportResponse++;
  if (buildCounterRunPivotReportResponse < 3) {
    o.aggregates = buildUnnamed7895();
    o.dimensionHeaders = buildUnnamed7896();
    o.kind = 'foo';
    o.metadata = buildResponseMetaData();
    o.metricHeaders = buildUnnamed7897();
    o.pivotHeaders = buildUnnamed7898();
    o.propertyQuota = buildPropertyQuota();
    o.rows = buildUnnamed7899();
  }
  buildCounterRunPivotReportResponse--;
  return o;
}

void checkRunPivotReportResponse(api.RunPivotReportResponse o) {
  buildCounterRunPivotReportResponse++;
  if (buildCounterRunPivotReportResponse < 3) {
    checkUnnamed7895(o.aggregates!);
    checkUnnamed7896(o.dimensionHeaders!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkResponseMetaData(o.metadata!);
    checkUnnamed7897(o.metricHeaders!);
    checkUnnamed7898(o.pivotHeaders!);
    checkPropertyQuota(o.propertyQuota!);
    checkUnnamed7899(o.rows!);
  }
  buildCounterRunPivotReportResponse--;
}

core.List<api.Dimension> buildUnnamed7900() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed7900(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<core.String> buildUnnamed7901() => [
      'foo',
      'foo',
    ];

void checkUnnamed7901(core.List<core.String> o) {
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

core.List<api.Metric> buildUnnamed7902() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed7902(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.MinuteRange> buildUnnamed7903() => [
      buildMinuteRange(),
      buildMinuteRange(),
    ];

void checkUnnamed7903(core.List<api.MinuteRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMinuteRange(o[0]);
  checkMinuteRange(o[1]);
}

core.List<api.OrderBy> buildUnnamed7904() => [
      buildOrderBy(),
      buildOrderBy(),
    ];

void checkUnnamed7904(core.List<api.OrderBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderBy(o[0]);
  checkOrderBy(o[1]);
}

core.int buildCounterRunRealtimeReportRequest = 0;
api.RunRealtimeReportRequest buildRunRealtimeReportRequest() {
  final o = api.RunRealtimeReportRequest();
  buildCounterRunRealtimeReportRequest++;
  if (buildCounterRunRealtimeReportRequest < 3) {
    o.dimensionFilter = buildFilterExpression();
    o.dimensions = buildUnnamed7900();
    o.limit = 'foo';
    o.metricAggregations = buildUnnamed7901();
    o.metricFilter = buildFilterExpression();
    o.metrics = buildUnnamed7902();
    o.minuteRanges = buildUnnamed7903();
    o.orderBys = buildUnnamed7904();
    o.returnPropertyQuota = true;
  }
  buildCounterRunRealtimeReportRequest--;
  return o;
}

void checkRunRealtimeReportRequest(api.RunRealtimeReportRequest o) {
  buildCounterRunRealtimeReportRequest++;
  if (buildCounterRunRealtimeReportRequest < 3) {
    checkFilterExpression(o.dimensionFilter!);
    checkUnnamed7900(o.dimensions!);
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    checkUnnamed7901(o.metricAggregations!);
    checkFilterExpression(o.metricFilter!);
    checkUnnamed7902(o.metrics!);
    checkUnnamed7903(o.minuteRanges!);
    checkUnnamed7904(o.orderBys!);
    unittest.expect(o.returnPropertyQuota!, unittest.isTrue);
  }
  buildCounterRunRealtimeReportRequest--;
}

core.List<api.DimensionHeader> buildUnnamed7905() => [
      buildDimensionHeader(),
      buildDimensionHeader(),
    ];

void checkUnnamed7905(core.List<api.DimensionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionHeader(o[0]);
  checkDimensionHeader(o[1]);
}

core.List<api.Row> buildUnnamed7906() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed7906(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.List<api.MetricHeader> buildUnnamed7907() => [
      buildMetricHeader(),
      buildMetricHeader(),
    ];

void checkUnnamed7907(core.List<api.MetricHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricHeader(o[0]);
  checkMetricHeader(o[1]);
}

core.List<api.Row> buildUnnamed7908() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed7908(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.List<api.Row> buildUnnamed7909() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed7909(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.List<api.Row> buildUnnamed7910() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed7910(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterRunRealtimeReportResponse = 0;
api.RunRealtimeReportResponse buildRunRealtimeReportResponse() {
  final o = api.RunRealtimeReportResponse();
  buildCounterRunRealtimeReportResponse++;
  if (buildCounterRunRealtimeReportResponse < 3) {
    o.dimensionHeaders = buildUnnamed7905();
    o.kind = 'foo';
    o.maximums = buildUnnamed7906();
    o.metricHeaders = buildUnnamed7907();
    o.minimums = buildUnnamed7908();
    o.propertyQuota = buildPropertyQuota();
    o.rowCount = 42;
    o.rows = buildUnnamed7909();
    o.totals = buildUnnamed7910();
  }
  buildCounterRunRealtimeReportResponse--;
  return o;
}

void checkRunRealtimeReportResponse(api.RunRealtimeReportResponse o) {
  buildCounterRunRealtimeReportResponse++;
  if (buildCounterRunRealtimeReportResponse < 3) {
    checkUnnamed7905(o.dimensionHeaders!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed7906(o.maximums!);
    checkUnnamed7907(o.metricHeaders!);
    checkUnnamed7908(o.minimums!);
    checkPropertyQuota(o.propertyQuota!);
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
    checkUnnamed7909(o.rows!);
    checkUnnamed7910(o.totals!);
  }
  buildCounterRunRealtimeReportResponse--;
}

core.List<api.DateRange> buildUnnamed7911() => [
      buildDateRange(),
      buildDateRange(),
    ];

void checkUnnamed7911(core.List<api.DateRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRange(o[0]);
  checkDateRange(o[1]);
}

core.List<api.Dimension> buildUnnamed7912() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed7912(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<core.String> buildUnnamed7913() => [
      'foo',
      'foo',
    ];

void checkUnnamed7913(core.List<core.String> o) {
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

core.List<api.Metric> buildUnnamed7914() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed7914(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.OrderBy> buildUnnamed7915() => [
      buildOrderBy(),
      buildOrderBy(),
    ];

void checkUnnamed7915(core.List<api.OrderBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderBy(o[0]);
  checkOrderBy(o[1]);
}

core.int buildCounterRunReportRequest = 0;
api.RunReportRequest buildRunReportRequest() {
  final o = api.RunReportRequest();
  buildCounterRunReportRequest++;
  if (buildCounterRunReportRequest < 3) {
    o.cohortSpec = buildCohortSpec();
    o.currencyCode = 'foo';
    o.dateRanges = buildUnnamed7911();
    o.dimensionFilter = buildFilterExpression();
    o.dimensions = buildUnnamed7912();
    o.keepEmptyRows = true;
    o.limit = 'foo';
    o.metricAggregations = buildUnnamed7913();
    o.metricFilter = buildFilterExpression();
    o.metrics = buildUnnamed7914();
    o.offset = 'foo';
    o.orderBys = buildUnnamed7915();
    o.property = 'foo';
    o.returnPropertyQuota = true;
  }
  buildCounterRunReportRequest--;
  return o;
}

void checkRunReportRequest(api.RunReportRequest o) {
  buildCounterRunReportRequest++;
  if (buildCounterRunReportRequest < 3) {
    checkCohortSpec(o.cohortSpec!);
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    checkUnnamed7911(o.dateRanges!);
    checkFilterExpression(o.dimensionFilter!);
    checkUnnamed7912(o.dimensions!);
    unittest.expect(o.keepEmptyRows!, unittest.isTrue);
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    checkUnnamed7913(o.metricAggregations!);
    checkFilterExpression(o.metricFilter!);
    checkUnnamed7914(o.metrics!);
    unittest.expect(
      o.offset!,
      unittest.equals('foo'),
    );
    checkUnnamed7915(o.orderBys!);
    unittest.expect(
      o.property!,
      unittest.equals('foo'),
    );
    unittest.expect(o.returnPropertyQuota!, unittest.isTrue);
  }
  buildCounterRunReportRequest--;
}

core.List<api.DimensionHeader> buildUnnamed7916() => [
      buildDimensionHeader(),
      buildDimensionHeader(),
    ];

void checkUnnamed7916(core.List<api.DimensionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionHeader(o[0]);
  checkDimensionHeader(o[1]);
}

core.List<api.Row> buildUnnamed7917() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed7917(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.List<api.MetricHeader> buildUnnamed7918() => [
      buildMetricHeader(),
      buildMetricHeader(),
    ];

void checkUnnamed7918(core.List<api.MetricHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricHeader(o[0]);
  checkMetricHeader(o[1]);
}

core.List<api.Row> buildUnnamed7919() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed7919(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.List<api.Row> buildUnnamed7920() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed7920(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.List<api.Row> buildUnnamed7921() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed7921(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterRunReportResponse = 0;
api.RunReportResponse buildRunReportResponse() {
  final o = api.RunReportResponse();
  buildCounterRunReportResponse++;
  if (buildCounterRunReportResponse < 3) {
    o.dimensionHeaders = buildUnnamed7916();
    o.kind = 'foo';
    o.maximums = buildUnnamed7917();
    o.metadata = buildResponseMetaData();
    o.metricHeaders = buildUnnamed7918();
    o.minimums = buildUnnamed7919();
    o.propertyQuota = buildPropertyQuota();
    o.rowCount = 42;
    o.rows = buildUnnamed7920();
    o.totals = buildUnnamed7921();
  }
  buildCounterRunReportResponse--;
  return o;
}

void checkRunReportResponse(api.RunReportResponse o) {
  buildCounterRunReportResponse++;
  if (buildCounterRunReportResponse < 3) {
    checkUnnamed7916(o.dimensionHeaders!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed7917(o.maximums!);
    checkResponseMetaData(o.metadata!);
    checkUnnamed7918(o.metricHeaders!);
    checkUnnamed7919(o.minimums!);
    checkPropertyQuota(o.propertyQuota!);
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
    checkUnnamed7920(o.rows!);
    checkUnnamed7921(o.totals!);
  }
  buildCounterRunReportResponse--;
}

core.int buildCounterStringFilter = 0;
api.StringFilter buildStringFilter() {
  final o = api.StringFilter();
  buildCounterStringFilter++;
  if (buildCounterStringFilter < 3) {
    o.caseSensitive = true;
    o.matchType = 'foo';
    o.value = 'foo';
  }
  buildCounterStringFilter--;
  return o;
}

void checkStringFilter(api.StringFilter o) {
  buildCounterStringFilter++;
  if (buildCounterStringFilter < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    unittest.expect(
      o.matchType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterStringFilter--;
}

void main() {
  unittest.group('obj-schema-BatchRunPivotReportsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchRunPivotReportsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchRunPivotReportsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchRunPivotReportsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchRunPivotReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchRunPivotReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchRunPivotReportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchRunPivotReportsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchRunReportsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchRunReportsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchRunReportsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchRunReportsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchRunReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchRunReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchRunReportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchRunReportsResponse(od);
    });
  });

  unittest.group('obj-schema-BetweenFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBetweenFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BetweenFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBetweenFilter(od);
    });
  });

  unittest.group('obj-schema-CaseExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCaseExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CaseExpression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCaseExpression(od);
    });
  });

  unittest.group('obj-schema-Cohort', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCohort();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Cohort.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCohort(od);
    });
  });

  unittest.group('obj-schema-CohortReportSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCohortReportSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CohortReportSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCohortReportSettings(od);
    });
  });

  unittest.group('obj-schema-CohortSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCohortSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CohortSpec.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCohortSpec(od);
    });
  });

  unittest.group('obj-schema-CohortsRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCohortsRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CohortsRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCohortsRange(od);
    });
  });

  unittest.group('obj-schema-ConcatenateExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConcatenateExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConcatenateExpression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConcatenateExpression(od);
    });
  });

  unittest.group('obj-schema-DateRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DateRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDateRange(od);
    });
  });

  unittest.group('obj-schema-Dimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Dimension.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDimension(od);
    });
  });

  unittest.group('obj-schema-DimensionExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionExpression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionExpression(od);
    });
  });

  unittest.group('obj-schema-DimensionHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionHeader(od);
    });
  });

  unittest.group('obj-schema-DimensionMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionMetadata(od);
    });
  });

  unittest.group('obj-schema-DimensionOrderBy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionOrderBy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionOrderBy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionOrderBy(od);
    });
  });

  unittest.group('obj-schema-DimensionValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionValue(od);
    });
  });

  unittest.group('obj-schema-Filter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Filter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilter(od);
    });
  });

  unittest.group('obj-schema-FilterExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilterExpression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilterExpression(od);
    });
  });

  unittest.group('obj-schema-FilterExpressionList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterExpressionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilterExpressionList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilterExpressionList(od);
    });
  });

  unittest.group('obj-schema-InListFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInListFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InListFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInListFilter(od);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metadata.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetadata(od);
    });
  });

  unittest.group('obj-schema-Metric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metric.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetric(od);
    });
  });

  unittest.group('obj-schema-MetricHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricHeader(od);
    });
  });

  unittest.group('obj-schema-MetricMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricMetadata(od);
    });
  });

  unittest.group('obj-schema-MetricOrderBy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricOrderBy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricOrderBy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricOrderBy(od);
    });
  });

  unittest.group('obj-schema-MetricValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricValue(od);
    });
  });

  unittest.group('obj-schema-MinuteRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMinuteRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MinuteRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMinuteRange(od);
    });
  });

  unittest.group('obj-schema-NumericFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNumericFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NumericFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNumericFilter(od);
    });
  });

  unittest.group('obj-schema-NumericValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNumericValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NumericValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNumericValue(od);
    });
  });

  unittest.group('obj-schema-OrderBy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderBy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OrderBy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOrderBy(od);
    });
  });

  unittest.group('obj-schema-Pivot', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Pivot.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPivot(od);
    });
  });

  unittest.group('obj-schema-PivotDimensionHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotDimensionHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PivotDimensionHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPivotDimensionHeader(od);
    });
  });

  unittest.group('obj-schema-PivotHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PivotHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPivotHeader(od);
    });
  });

  unittest.group('obj-schema-PivotOrderBy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotOrderBy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PivotOrderBy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPivotOrderBy(od);
    });
  });

  unittest.group('obj-schema-PivotSelection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotSelection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PivotSelection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPivotSelection(od);
    });
  });

  unittest.group('obj-schema-PropertyQuota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPropertyQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PropertyQuota.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPropertyQuota(od);
    });
  });

  unittest.group('obj-schema-QuotaStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuotaStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuotaStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQuotaStatus(od);
    });
  });

  unittest.group('obj-schema-ResponseMetaData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponseMetaData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResponseMetaData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponseMetaData(od);
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

  unittest.group('obj-schema-RunPivotReportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunPivotReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunPivotReportRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunPivotReportRequest(od);
    });
  });

  unittest.group('obj-schema-RunPivotReportResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunPivotReportResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunPivotReportResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunPivotReportResponse(od);
    });
  });

  unittest.group('obj-schema-RunRealtimeReportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunRealtimeReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunRealtimeReportRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunRealtimeReportRequest(od);
    });
  });

  unittest.group('obj-schema-RunRealtimeReportResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunRealtimeReportResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunRealtimeReportResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunRealtimeReportResponse(od);
    });
  });

  unittest.group('obj-schema-RunReportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunReportRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunReportRequest(od);
    });
  });

  unittest.group('obj-schema-RunReportResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunReportResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunReportResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunReportResponse(od);
    });
  });

  unittest.group('obj-schema-StringFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStringFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StringFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStringFilter(od);
    });
  });

  unittest.group('resource-PropertiesResource', () {
    unittest.test('method--batchRunPivotReports', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsDataApi(mock).properties;
      final arg_request = buildBatchRunPivotReportsRequest();
      final arg_property = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchRunPivotReportsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchRunPivotReportsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildBatchRunPivotReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchRunPivotReports(arg_request, arg_property,
          $fields: arg_$fields);
      checkBatchRunPivotReportsResponse(
          response as api.BatchRunPivotReportsResponse);
    });

    unittest.test('method--batchRunReports', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsDataApi(mock).properties;
      final arg_request = buildBatchRunReportsRequest();
      final arg_property = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchRunReportsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchRunReportsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildBatchRunReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchRunReports(arg_request, arg_property,
          $fields: arg_$fields);
      checkBatchRunReportsResponse(response as api.BatchRunReportsResponse);
    });

    unittest.test('method--getMetadata', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsDataApi(mock).properties;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getMetadata(arg_name, $fields: arg_$fields);
      checkMetadata(response as api.Metadata);
    });

    unittest.test('method--runPivotReport', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsDataApi(mock).properties;
      final arg_request = buildRunPivotReportRequest();
      final arg_property = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RunPivotReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunPivotReportRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildRunPivotReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.runPivotReport(arg_request, arg_property,
          $fields: arg_$fields);
      checkRunPivotReportResponse(response as api.RunPivotReportResponse);
    });

    unittest.test('method--runRealtimeReport', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsDataApi(mock).properties;
      final arg_request = buildRunRealtimeReportRequest();
      final arg_property = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RunRealtimeReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunRealtimeReportRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildRunRealtimeReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.runRealtimeReport(arg_request, arg_property,
          $fields: arg_$fields);
      checkRunRealtimeReportResponse(response as api.RunRealtimeReportResponse);
    });

    unittest.test('method--runReport', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsDataApi(mock).properties;
      final arg_request = buildRunReportRequest();
      final arg_property = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RunReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunReportRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildRunReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.runReport(arg_request, arg_property, $fields: arg_$fields);
      checkRunReportResponse(response as api.RunReportResponse);
    });
  });
}
