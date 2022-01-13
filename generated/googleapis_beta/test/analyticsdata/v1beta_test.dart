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

core.int buildCounterActiveMetricRestriction = 0;
api.ActiveMetricRestriction buildActiveMetricRestriction() {
  final o = api.ActiveMetricRestriction();
  buildCounterActiveMetricRestriction++;
  if (buildCounterActiveMetricRestriction < 3) {
    o.metricName = 'foo';
    o.restrictedMetricTypes = buildUnnamed0();
  }
  buildCounterActiveMetricRestriction--;
  return o;
}

void checkActiveMetricRestriction(api.ActiveMetricRestriction o) {
  buildCounterActiveMetricRestriction++;
  if (buildCounterActiveMetricRestriction < 3) {
    unittest.expect(
      o.metricName!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.restrictedMetricTypes!);
  }
  buildCounterActiveMetricRestriction--;
}

core.List<api.RunPivotReportRequest> buildUnnamed1() => [
      buildRunPivotReportRequest(),
      buildRunPivotReportRequest(),
    ];

void checkUnnamed1(core.List<api.RunPivotReportRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunPivotReportRequest(o[0]);
  checkRunPivotReportRequest(o[1]);
}

core.int buildCounterBatchRunPivotReportsRequest = 0;
api.BatchRunPivotReportsRequest buildBatchRunPivotReportsRequest() {
  final o = api.BatchRunPivotReportsRequest();
  buildCounterBatchRunPivotReportsRequest++;
  if (buildCounterBatchRunPivotReportsRequest < 3) {
    o.requests = buildUnnamed1();
  }
  buildCounterBatchRunPivotReportsRequest--;
  return o;
}

void checkBatchRunPivotReportsRequest(api.BatchRunPivotReportsRequest o) {
  buildCounterBatchRunPivotReportsRequest++;
  if (buildCounterBatchRunPivotReportsRequest < 3) {
    checkUnnamed1(o.requests!);
  }
  buildCounterBatchRunPivotReportsRequest--;
}

core.List<api.RunPivotReportResponse> buildUnnamed2() => [
      buildRunPivotReportResponse(),
      buildRunPivotReportResponse(),
    ];

void checkUnnamed2(core.List<api.RunPivotReportResponse> o) {
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
    o.pivotReports = buildUnnamed2();
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
    checkUnnamed2(o.pivotReports!);
  }
  buildCounterBatchRunPivotReportsResponse--;
}

core.List<api.RunReportRequest> buildUnnamed3() => [
      buildRunReportRequest(),
      buildRunReportRequest(),
    ];

void checkUnnamed3(core.List<api.RunReportRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunReportRequest(o[0]);
  checkRunReportRequest(o[1]);
}

core.int buildCounterBatchRunReportsRequest = 0;
api.BatchRunReportsRequest buildBatchRunReportsRequest() {
  final o = api.BatchRunReportsRequest();
  buildCounterBatchRunReportsRequest++;
  if (buildCounterBatchRunReportsRequest < 3) {
    o.requests = buildUnnamed3();
  }
  buildCounterBatchRunReportsRequest--;
  return o;
}

void checkBatchRunReportsRequest(api.BatchRunReportsRequest o) {
  buildCounterBatchRunReportsRequest++;
  if (buildCounterBatchRunReportsRequest < 3) {
    checkUnnamed3(o.requests!);
  }
  buildCounterBatchRunReportsRequest--;
}

core.List<api.RunReportResponse> buildUnnamed4() => [
      buildRunReportResponse(),
      buildRunReportResponse(),
    ];

void checkUnnamed4(core.List<api.RunReportResponse> o) {
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
    o.reports = buildUnnamed4();
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
    checkUnnamed4(o.reports!);
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

core.List<api.Dimension> buildUnnamed5() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed5(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed6() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed6(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterCheckCompatibilityRequest = 0;
api.CheckCompatibilityRequest buildCheckCompatibilityRequest() {
  final o = api.CheckCompatibilityRequest();
  buildCounterCheckCompatibilityRequest++;
  if (buildCounterCheckCompatibilityRequest < 3) {
    o.compatibilityFilter = 'foo';
    o.dimensionFilter = buildFilterExpression();
    o.dimensions = buildUnnamed5();
    o.metricFilter = buildFilterExpression();
    o.metrics = buildUnnamed6();
  }
  buildCounterCheckCompatibilityRequest--;
  return o;
}

void checkCheckCompatibilityRequest(api.CheckCompatibilityRequest o) {
  buildCounterCheckCompatibilityRequest++;
  if (buildCounterCheckCompatibilityRequest < 3) {
    unittest.expect(
      o.compatibilityFilter!,
      unittest.equals('foo'),
    );
    checkFilterExpression(o.dimensionFilter!);
    checkUnnamed5(o.dimensions!);
    checkFilterExpression(o.metricFilter!);
    checkUnnamed6(o.metrics!);
  }
  buildCounterCheckCompatibilityRequest--;
}

core.List<api.DimensionCompatibility> buildUnnamed7() => [
      buildDimensionCompatibility(),
      buildDimensionCompatibility(),
    ];

void checkUnnamed7(core.List<api.DimensionCompatibility> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionCompatibility(o[0]);
  checkDimensionCompatibility(o[1]);
}

core.List<api.MetricCompatibility> buildUnnamed8() => [
      buildMetricCompatibility(),
      buildMetricCompatibility(),
    ];

void checkUnnamed8(core.List<api.MetricCompatibility> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricCompatibility(o[0]);
  checkMetricCompatibility(o[1]);
}

core.int buildCounterCheckCompatibilityResponse = 0;
api.CheckCompatibilityResponse buildCheckCompatibilityResponse() {
  final o = api.CheckCompatibilityResponse();
  buildCounterCheckCompatibilityResponse++;
  if (buildCounterCheckCompatibilityResponse < 3) {
    o.dimensionCompatibilities = buildUnnamed7();
    o.metricCompatibilities = buildUnnamed8();
  }
  buildCounterCheckCompatibilityResponse--;
  return o;
}

void checkCheckCompatibilityResponse(api.CheckCompatibilityResponse o) {
  buildCounterCheckCompatibilityResponse++;
  if (buildCounterCheckCompatibilityResponse < 3) {
    checkUnnamed7(o.dimensionCompatibilities!);
    checkUnnamed8(o.metricCompatibilities!);
  }
  buildCounterCheckCompatibilityResponse--;
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

core.List<api.Cohort> buildUnnamed9() => [
      buildCohort(),
      buildCohort(),
    ];

void checkUnnamed9(core.List<api.Cohort> o) {
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
    o.cohorts = buildUnnamed9();
    o.cohortsRange = buildCohortsRange();
  }
  buildCounterCohortSpec--;
  return o;
}

void checkCohortSpec(api.CohortSpec o) {
  buildCounterCohortSpec++;
  if (buildCounterCohortSpec < 3) {
    checkCohortReportSettings(o.cohortReportSettings!);
    checkUnnamed9(o.cohorts!);
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

core.int buildCounterConcatenateExpression = 0;
api.ConcatenateExpression buildConcatenateExpression() {
  final o = api.ConcatenateExpression();
  buildCounterConcatenateExpression++;
  if (buildCounterConcatenateExpression < 3) {
    o.delimiter = 'foo';
    o.dimensionNames = buildUnnamed10();
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
    checkUnnamed10(o.dimensionNames!);
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

core.int buildCounterDimensionCompatibility = 0;
api.DimensionCompatibility buildDimensionCompatibility() {
  final o = api.DimensionCompatibility();
  buildCounterDimensionCompatibility++;
  if (buildCounterDimensionCompatibility < 3) {
    o.compatibility = 'foo';
    o.dimensionMetadata = buildDimensionMetadata();
  }
  buildCounterDimensionCompatibility--;
  return o;
}

void checkDimensionCompatibility(api.DimensionCompatibility o) {
  buildCounterDimensionCompatibility++;
  if (buildCounterDimensionCompatibility < 3) {
    unittest.expect(
      o.compatibility!,
      unittest.equals('foo'),
    );
    checkDimensionMetadata(o.dimensionMetadata!);
  }
  buildCounterDimensionCompatibility--;
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

core.int buildCounterDimensionMetadata = 0;
api.DimensionMetadata buildDimensionMetadata() {
  final o = api.DimensionMetadata();
  buildCounterDimensionMetadata++;
  if (buildCounterDimensionMetadata < 3) {
    o.apiName = 'foo';
    o.category = 'foo';
    o.customDefinition = true;
    o.deprecatedApiNames = buildUnnamed11();
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
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(o.customDefinition!, unittest.isTrue);
    checkUnnamed11(o.deprecatedApiNames!);
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

core.List<api.FilterExpression> buildUnnamed12() => [
      buildFilterExpression(),
      buildFilterExpression(),
    ];

void checkUnnamed12(core.List<api.FilterExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterExpression(o[0]);
  checkFilterExpression(o[1]);
}

core.int buildCounterFilterExpressionList = 0;
api.FilterExpressionList buildFilterExpressionList() {
  final o = api.FilterExpressionList();
  buildCounterFilterExpressionList++;
  if (buildCounterFilterExpressionList < 3) {
    o.expressions = buildUnnamed12();
  }
  buildCounterFilterExpressionList--;
  return o;
}

void checkFilterExpressionList(api.FilterExpressionList o) {
  buildCounterFilterExpressionList++;
  if (buildCounterFilterExpressionList < 3) {
    checkUnnamed12(o.expressions!);
  }
  buildCounterFilterExpressionList--;
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

core.int buildCounterInListFilter = 0;
api.InListFilter buildInListFilter() {
  final o = api.InListFilter();
  buildCounterInListFilter++;
  if (buildCounterInListFilter < 3) {
    o.caseSensitive = true;
    o.values = buildUnnamed13();
  }
  buildCounterInListFilter--;
  return o;
}

void checkInListFilter(api.InListFilter o) {
  buildCounterInListFilter++;
  if (buildCounterInListFilter < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    checkUnnamed13(o.values!);
  }
  buildCounterInListFilter--;
}

core.List<api.DimensionMetadata> buildUnnamed14() => [
      buildDimensionMetadata(),
      buildDimensionMetadata(),
    ];

void checkUnnamed14(core.List<api.DimensionMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionMetadata(o[0]);
  checkDimensionMetadata(o[1]);
}

core.List<api.MetricMetadata> buildUnnamed15() => [
      buildMetricMetadata(),
      buildMetricMetadata(),
    ];

void checkUnnamed15(core.List<api.MetricMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricMetadata(o[0]);
  checkMetricMetadata(o[1]);
}

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  final o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.dimensions = buildUnnamed14();
    o.metrics = buildUnnamed15();
    o.name = 'foo';
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    checkUnnamed14(o.dimensions!);
    checkUnnamed15(o.metrics!);
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

core.int buildCounterMetricCompatibility = 0;
api.MetricCompatibility buildMetricCompatibility() {
  final o = api.MetricCompatibility();
  buildCounterMetricCompatibility++;
  if (buildCounterMetricCompatibility < 3) {
    o.compatibility = 'foo';
    o.metricMetadata = buildMetricMetadata();
  }
  buildCounterMetricCompatibility--;
  return o;
}

void checkMetricCompatibility(api.MetricCompatibility o) {
  buildCounterMetricCompatibility++;
  if (buildCounterMetricCompatibility < 3) {
    unittest.expect(
      o.compatibility!,
      unittest.equals('foo'),
    );
    checkMetricMetadata(o.metricMetadata!);
  }
  buildCounterMetricCompatibility--;
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

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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
    o.blockedReasons = buildUnnamed16();
    o.category = 'foo';
    o.customDefinition = true;
    o.deprecatedApiNames = buildUnnamed17();
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
    checkUnnamed16(o.blockedReasons!);
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(o.customDefinition!, unittest.isTrue);
    checkUnnamed17(o.deprecatedApiNames!);
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

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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

core.List<api.OrderBy> buildUnnamed20() => [
      buildOrderBy(),
      buildOrderBy(),
    ];

void checkUnnamed20(core.List<api.OrderBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderBy(o[0]);
  checkOrderBy(o[1]);
}

core.int buildCounterPivot = 0;
api.Pivot buildPivot() {
  final o = api.Pivot();
  buildCounterPivot++;
  if (buildCounterPivot < 3) {
    o.fieldNames = buildUnnamed18();
    o.limit = 'foo';
    o.metricAggregations = buildUnnamed19();
    o.offset = 'foo';
    o.orderBys = buildUnnamed20();
  }
  buildCounterPivot--;
  return o;
}

void checkPivot(api.Pivot o) {
  buildCounterPivot++;
  if (buildCounterPivot < 3) {
    checkUnnamed18(o.fieldNames!);
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.metricAggregations!);
    unittest.expect(
      o.offset!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.orderBys!);
  }
  buildCounterPivot--;
}

core.List<api.DimensionValue> buildUnnamed21() => [
      buildDimensionValue(),
      buildDimensionValue(),
    ];

void checkUnnamed21(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.int buildCounterPivotDimensionHeader = 0;
api.PivotDimensionHeader buildPivotDimensionHeader() {
  final o = api.PivotDimensionHeader();
  buildCounterPivotDimensionHeader++;
  if (buildCounterPivotDimensionHeader < 3) {
    o.dimensionValues = buildUnnamed21();
  }
  buildCounterPivotDimensionHeader--;
  return o;
}

void checkPivotDimensionHeader(api.PivotDimensionHeader o) {
  buildCounterPivotDimensionHeader++;
  if (buildCounterPivotDimensionHeader < 3) {
    checkUnnamed21(o.dimensionValues!);
  }
  buildCounterPivotDimensionHeader--;
}

core.List<api.PivotDimensionHeader> buildUnnamed22() => [
      buildPivotDimensionHeader(),
      buildPivotDimensionHeader(),
    ];

void checkUnnamed22(core.List<api.PivotDimensionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotDimensionHeader(o[0]);
  checkPivotDimensionHeader(o[1]);
}

core.int buildCounterPivotHeader = 0;
api.PivotHeader buildPivotHeader() {
  final o = api.PivotHeader();
  buildCounterPivotHeader++;
  if (buildCounterPivotHeader < 3) {
    o.pivotDimensionHeaders = buildUnnamed22();
    o.rowCount = 42;
  }
  buildCounterPivotHeader--;
  return o;
}

void checkPivotHeader(api.PivotHeader o) {
  buildCounterPivotHeader++;
  if (buildCounterPivotHeader < 3) {
    checkUnnamed22(o.pivotDimensionHeaders!);
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
  }
  buildCounterPivotHeader--;
}

core.List<api.PivotSelection> buildUnnamed23() => [
      buildPivotSelection(),
      buildPivotSelection(),
    ];

void checkUnnamed23(core.List<api.PivotSelection> o) {
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
    o.pivotSelections = buildUnnamed23();
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
    checkUnnamed23(o.pivotSelections!);
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
    o.currencyCode = 'foo';
    o.dataLossFromOtherRow = true;
    o.emptyReason = 'foo';
    o.schemaRestrictionResponse = buildSchemaRestrictionResponse();
    o.subjectToThresholding = true;
    o.timeZone = 'foo';
  }
  buildCounterResponseMetaData--;
  return o;
}

void checkResponseMetaData(api.ResponseMetaData o) {
  buildCounterResponseMetaData++;
  if (buildCounterResponseMetaData < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.dataLossFromOtherRow!, unittest.isTrue);
    unittest.expect(
      o.emptyReason!,
      unittest.equals('foo'),
    );
    checkSchemaRestrictionResponse(o.schemaRestrictionResponse!);
    unittest.expect(o.subjectToThresholding!, unittest.isTrue);
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterResponseMetaData--;
}

core.List<api.DimensionValue> buildUnnamed24() => [
      buildDimensionValue(),
      buildDimensionValue(),
    ];

void checkUnnamed24(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<api.MetricValue> buildUnnamed25() => [
      buildMetricValue(),
      buildMetricValue(),
    ];

void checkUnnamed25(core.List<api.MetricValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValue(o[0]);
  checkMetricValue(o[1]);
}

core.int buildCounterRow = 0;
api.Row buildRow() {
  final o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.dimensionValues = buildUnnamed24();
    o.metricValues = buildUnnamed25();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    checkUnnamed24(o.dimensionValues!);
    checkUnnamed25(o.metricValues!);
  }
  buildCounterRow--;
}

core.List<api.DateRange> buildUnnamed26() => [
      buildDateRange(),
      buildDateRange(),
    ];

void checkUnnamed26(core.List<api.DateRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRange(o[0]);
  checkDateRange(o[1]);
}

core.List<api.Dimension> buildUnnamed27() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed27(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed28() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed28(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.Pivot> buildUnnamed29() => [
      buildPivot(),
      buildPivot(),
    ];

void checkUnnamed29(core.List<api.Pivot> o) {
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
    o.dateRanges = buildUnnamed26();
    o.dimensionFilter = buildFilterExpression();
    o.dimensions = buildUnnamed27();
    o.keepEmptyRows = true;
    o.metricFilter = buildFilterExpression();
    o.metrics = buildUnnamed28();
    o.pivots = buildUnnamed29();
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
    checkUnnamed26(o.dateRanges!);
    checkFilterExpression(o.dimensionFilter!);
    checkUnnamed27(o.dimensions!);
    unittest.expect(o.keepEmptyRows!, unittest.isTrue);
    checkFilterExpression(o.metricFilter!);
    checkUnnamed28(o.metrics!);
    checkUnnamed29(o.pivots!);
    unittest.expect(
      o.property!,
      unittest.equals('foo'),
    );
    unittest.expect(o.returnPropertyQuota!, unittest.isTrue);
  }
  buildCounterRunPivotReportRequest--;
}

core.List<api.Row> buildUnnamed30() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed30(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.List<api.DimensionHeader> buildUnnamed31() => [
      buildDimensionHeader(),
      buildDimensionHeader(),
    ];

void checkUnnamed31(core.List<api.DimensionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionHeader(o[0]);
  checkDimensionHeader(o[1]);
}

core.List<api.MetricHeader> buildUnnamed32() => [
      buildMetricHeader(),
      buildMetricHeader(),
    ];

void checkUnnamed32(core.List<api.MetricHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricHeader(o[0]);
  checkMetricHeader(o[1]);
}

core.List<api.PivotHeader> buildUnnamed33() => [
      buildPivotHeader(),
      buildPivotHeader(),
    ];

void checkUnnamed33(core.List<api.PivotHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotHeader(o[0]);
  checkPivotHeader(o[1]);
}

core.List<api.Row> buildUnnamed34() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed34(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterRunPivotReportResponse = 0;
api.RunPivotReportResponse buildRunPivotReportResponse() {
  final o = api.RunPivotReportResponse();
  buildCounterRunPivotReportResponse++;
  if (buildCounterRunPivotReportResponse < 3) {
    o.aggregates = buildUnnamed30();
    o.dimensionHeaders = buildUnnamed31();
    o.kind = 'foo';
    o.metadata = buildResponseMetaData();
    o.metricHeaders = buildUnnamed32();
    o.pivotHeaders = buildUnnamed33();
    o.propertyQuota = buildPropertyQuota();
    o.rows = buildUnnamed34();
  }
  buildCounterRunPivotReportResponse--;
  return o;
}

void checkRunPivotReportResponse(api.RunPivotReportResponse o) {
  buildCounterRunPivotReportResponse++;
  if (buildCounterRunPivotReportResponse < 3) {
    checkUnnamed30(o.aggregates!);
    checkUnnamed31(o.dimensionHeaders!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkResponseMetaData(o.metadata!);
    checkUnnamed32(o.metricHeaders!);
    checkUnnamed33(o.pivotHeaders!);
    checkPropertyQuota(o.propertyQuota!);
    checkUnnamed34(o.rows!);
  }
  buildCounterRunPivotReportResponse--;
}

core.List<api.Dimension> buildUnnamed35() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed35(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
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

core.List<api.Metric> buildUnnamed37() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed37(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.MinuteRange> buildUnnamed38() => [
      buildMinuteRange(),
      buildMinuteRange(),
    ];

void checkUnnamed38(core.List<api.MinuteRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMinuteRange(o[0]);
  checkMinuteRange(o[1]);
}

core.List<api.OrderBy> buildUnnamed39() => [
      buildOrderBy(),
      buildOrderBy(),
    ];

void checkUnnamed39(core.List<api.OrderBy> o) {
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
    o.dimensions = buildUnnamed35();
    o.limit = 'foo';
    o.metricAggregations = buildUnnamed36();
    o.metricFilter = buildFilterExpression();
    o.metrics = buildUnnamed37();
    o.minuteRanges = buildUnnamed38();
    o.orderBys = buildUnnamed39();
    o.returnPropertyQuota = true;
  }
  buildCounterRunRealtimeReportRequest--;
  return o;
}

void checkRunRealtimeReportRequest(api.RunRealtimeReportRequest o) {
  buildCounterRunRealtimeReportRequest++;
  if (buildCounterRunRealtimeReportRequest < 3) {
    checkFilterExpression(o.dimensionFilter!);
    checkUnnamed35(o.dimensions!);
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.metricAggregations!);
    checkFilterExpression(o.metricFilter!);
    checkUnnamed37(o.metrics!);
    checkUnnamed38(o.minuteRanges!);
    checkUnnamed39(o.orderBys!);
    unittest.expect(o.returnPropertyQuota!, unittest.isTrue);
  }
  buildCounterRunRealtimeReportRequest--;
}

core.List<api.DimensionHeader> buildUnnamed40() => [
      buildDimensionHeader(),
      buildDimensionHeader(),
    ];

void checkUnnamed40(core.List<api.DimensionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionHeader(o[0]);
  checkDimensionHeader(o[1]);
}

core.List<api.Row> buildUnnamed41() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed41(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.List<api.MetricHeader> buildUnnamed42() => [
      buildMetricHeader(),
      buildMetricHeader(),
    ];

void checkUnnamed42(core.List<api.MetricHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricHeader(o[0]);
  checkMetricHeader(o[1]);
}

core.List<api.Row> buildUnnamed43() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed43(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.List<api.Row> buildUnnamed44() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed44(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.List<api.Row> buildUnnamed45() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed45(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterRunRealtimeReportResponse = 0;
api.RunRealtimeReportResponse buildRunRealtimeReportResponse() {
  final o = api.RunRealtimeReportResponse();
  buildCounterRunRealtimeReportResponse++;
  if (buildCounterRunRealtimeReportResponse < 3) {
    o.dimensionHeaders = buildUnnamed40();
    o.kind = 'foo';
    o.maximums = buildUnnamed41();
    o.metricHeaders = buildUnnamed42();
    o.minimums = buildUnnamed43();
    o.propertyQuota = buildPropertyQuota();
    o.rowCount = 42;
    o.rows = buildUnnamed44();
    o.totals = buildUnnamed45();
  }
  buildCounterRunRealtimeReportResponse--;
  return o;
}

void checkRunRealtimeReportResponse(api.RunRealtimeReportResponse o) {
  buildCounterRunRealtimeReportResponse++;
  if (buildCounterRunRealtimeReportResponse < 3) {
    checkUnnamed40(o.dimensionHeaders!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.maximums!);
    checkUnnamed42(o.metricHeaders!);
    checkUnnamed43(o.minimums!);
    checkPropertyQuota(o.propertyQuota!);
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
    checkUnnamed44(o.rows!);
    checkUnnamed45(o.totals!);
  }
  buildCounterRunRealtimeReportResponse--;
}

core.List<api.DateRange> buildUnnamed46() => [
      buildDateRange(),
      buildDateRange(),
    ];

void checkUnnamed46(core.List<api.DateRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRange(o[0]);
  checkDateRange(o[1]);
}

core.List<api.Dimension> buildUnnamed47() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed47(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
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

core.List<api.Metric> buildUnnamed49() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed49(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.OrderBy> buildUnnamed50() => [
      buildOrderBy(),
      buildOrderBy(),
    ];

void checkUnnamed50(core.List<api.OrderBy> o) {
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
    o.dateRanges = buildUnnamed46();
    o.dimensionFilter = buildFilterExpression();
    o.dimensions = buildUnnamed47();
    o.keepEmptyRows = true;
    o.limit = 'foo';
    o.metricAggregations = buildUnnamed48();
    o.metricFilter = buildFilterExpression();
    o.metrics = buildUnnamed49();
    o.offset = 'foo';
    o.orderBys = buildUnnamed50();
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
    checkUnnamed46(o.dateRanges!);
    checkFilterExpression(o.dimensionFilter!);
    checkUnnamed47(o.dimensions!);
    unittest.expect(o.keepEmptyRows!, unittest.isTrue);
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.metricAggregations!);
    checkFilterExpression(o.metricFilter!);
    checkUnnamed49(o.metrics!);
    unittest.expect(
      o.offset!,
      unittest.equals('foo'),
    );
    checkUnnamed50(o.orderBys!);
    unittest.expect(
      o.property!,
      unittest.equals('foo'),
    );
    unittest.expect(o.returnPropertyQuota!, unittest.isTrue);
  }
  buildCounterRunReportRequest--;
}

core.List<api.DimensionHeader> buildUnnamed51() => [
      buildDimensionHeader(),
      buildDimensionHeader(),
    ];

void checkUnnamed51(core.List<api.DimensionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionHeader(o[0]);
  checkDimensionHeader(o[1]);
}

core.List<api.Row> buildUnnamed52() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed52(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.List<api.MetricHeader> buildUnnamed53() => [
      buildMetricHeader(),
      buildMetricHeader(),
    ];

void checkUnnamed53(core.List<api.MetricHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricHeader(o[0]);
  checkMetricHeader(o[1]);
}

core.List<api.Row> buildUnnamed54() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed54(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.List<api.Row> buildUnnamed55() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed55(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.List<api.Row> buildUnnamed56() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed56(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterRunReportResponse = 0;
api.RunReportResponse buildRunReportResponse() {
  final o = api.RunReportResponse();
  buildCounterRunReportResponse++;
  if (buildCounterRunReportResponse < 3) {
    o.dimensionHeaders = buildUnnamed51();
    o.kind = 'foo';
    o.maximums = buildUnnamed52();
    o.metadata = buildResponseMetaData();
    o.metricHeaders = buildUnnamed53();
    o.minimums = buildUnnamed54();
    o.propertyQuota = buildPropertyQuota();
    o.rowCount = 42;
    o.rows = buildUnnamed55();
    o.totals = buildUnnamed56();
  }
  buildCounterRunReportResponse--;
  return o;
}

void checkRunReportResponse(api.RunReportResponse o) {
  buildCounterRunReportResponse++;
  if (buildCounterRunReportResponse < 3) {
    checkUnnamed51(o.dimensionHeaders!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.maximums!);
    checkResponseMetaData(o.metadata!);
    checkUnnamed53(o.metricHeaders!);
    checkUnnamed54(o.minimums!);
    checkPropertyQuota(o.propertyQuota!);
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
    checkUnnamed55(o.rows!);
    checkUnnamed56(o.totals!);
  }
  buildCounterRunReportResponse--;
}

core.List<api.ActiveMetricRestriction> buildUnnamed57() => [
      buildActiveMetricRestriction(),
      buildActiveMetricRestriction(),
    ];

void checkUnnamed57(core.List<api.ActiveMetricRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActiveMetricRestriction(o[0]);
  checkActiveMetricRestriction(o[1]);
}

core.int buildCounterSchemaRestrictionResponse = 0;
api.SchemaRestrictionResponse buildSchemaRestrictionResponse() {
  final o = api.SchemaRestrictionResponse();
  buildCounterSchemaRestrictionResponse++;
  if (buildCounterSchemaRestrictionResponse < 3) {
    o.activeMetricRestrictions = buildUnnamed57();
  }
  buildCounterSchemaRestrictionResponse--;
  return o;
}

void checkSchemaRestrictionResponse(api.SchemaRestrictionResponse o) {
  buildCounterSchemaRestrictionResponse++;
  if (buildCounterSchemaRestrictionResponse < 3) {
    checkUnnamed57(o.activeMetricRestrictions!);
  }
  buildCounterSchemaRestrictionResponse--;
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
  unittest.group('obj-schema-ActiveMetricRestriction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActiveMetricRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActiveMetricRestriction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActiveMetricRestriction(od);
    });
  });

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

  unittest.group('obj-schema-CheckCompatibilityRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckCompatibilityRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckCompatibilityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCheckCompatibilityRequest(od);
    });
  });

  unittest.group('obj-schema-CheckCompatibilityResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckCompatibilityResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckCompatibilityResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCheckCompatibilityResponse(od);
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

  unittest.group('obj-schema-DimensionCompatibility', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionCompatibility();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionCompatibility.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionCompatibility(od);
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

  unittest.group('obj-schema-MetricCompatibility', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricCompatibility();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricCompatibility.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricCompatibility(od);
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

  unittest.group('obj-schema-SchemaRestrictionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaRestrictionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaRestrictionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchemaRestrictionResponse(od);
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

    unittest.test('method--checkCompatibility', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsDataApi(mock).properties;
      final arg_request = buildCheckCompatibilityRequest();
      final arg_property = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CheckCompatibilityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCheckCompatibilityRequest(obj);

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
        final resp = convert.json.encode(buildCheckCompatibilityResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.checkCompatibility(arg_request, arg_property,
          $fields: arg_$fields);
      checkCheckCompatibilityResponse(
          response as api.CheckCompatibilityResponse);
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
