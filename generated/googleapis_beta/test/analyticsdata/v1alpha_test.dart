// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis_beta/analyticsdata/v1alpha.dart' as api;

import '../test_shared.dart';

core.List<api.RunPivotReportRequest> buildUnnamed7276() {
  var o = <api.RunPivotReportRequest>[];
  o.add(buildRunPivotReportRequest());
  o.add(buildRunPivotReportRequest());
  return o;
}

void checkUnnamed7276(core.List<api.RunPivotReportRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunPivotReportRequest(o[0] as api.RunPivotReportRequest);
  checkRunPivotReportRequest(o[1] as api.RunPivotReportRequest);
}

core.int buildCounterBatchRunPivotReportsRequest = 0;
api.BatchRunPivotReportsRequest buildBatchRunPivotReportsRequest() {
  var o = api.BatchRunPivotReportsRequest();
  buildCounterBatchRunPivotReportsRequest++;
  if (buildCounterBatchRunPivotReportsRequest < 3) {
    o.entity = buildEntity();
    o.requests = buildUnnamed7276();
  }
  buildCounterBatchRunPivotReportsRequest--;
  return o;
}

void checkBatchRunPivotReportsRequest(api.BatchRunPivotReportsRequest o) {
  buildCounterBatchRunPivotReportsRequest++;
  if (buildCounterBatchRunPivotReportsRequest < 3) {
    checkEntity(o.entity! as api.Entity);
    checkUnnamed7276(o.requests!);
  }
  buildCounterBatchRunPivotReportsRequest--;
}

core.List<api.RunPivotReportResponse> buildUnnamed7277() {
  var o = <api.RunPivotReportResponse>[];
  o.add(buildRunPivotReportResponse());
  o.add(buildRunPivotReportResponse());
  return o;
}

void checkUnnamed7277(core.List<api.RunPivotReportResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunPivotReportResponse(o[0] as api.RunPivotReportResponse);
  checkRunPivotReportResponse(o[1] as api.RunPivotReportResponse);
}

core.int buildCounterBatchRunPivotReportsResponse = 0;
api.BatchRunPivotReportsResponse buildBatchRunPivotReportsResponse() {
  var o = api.BatchRunPivotReportsResponse();
  buildCounterBatchRunPivotReportsResponse++;
  if (buildCounterBatchRunPivotReportsResponse < 3) {
    o.pivotReports = buildUnnamed7277();
  }
  buildCounterBatchRunPivotReportsResponse--;
  return o;
}

void checkBatchRunPivotReportsResponse(api.BatchRunPivotReportsResponse o) {
  buildCounterBatchRunPivotReportsResponse++;
  if (buildCounterBatchRunPivotReportsResponse < 3) {
    checkUnnamed7277(o.pivotReports!);
  }
  buildCounterBatchRunPivotReportsResponse--;
}

core.List<api.RunReportRequest> buildUnnamed7278() {
  var o = <api.RunReportRequest>[];
  o.add(buildRunReportRequest());
  o.add(buildRunReportRequest());
  return o;
}

void checkUnnamed7278(core.List<api.RunReportRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunReportRequest(o[0] as api.RunReportRequest);
  checkRunReportRequest(o[1] as api.RunReportRequest);
}

core.int buildCounterBatchRunReportsRequest = 0;
api.BatchRunReportsRequest buildBatchRunReportsRequest() {
  var o = api.BatchRunReportsRequest();
  buildCounterBatchRunReportsRequest++;
  if (buildCounterBatchRunReportsRequest < 3) {
    o.entity = buildEntity();
    o.requests = buildUnnamed7278();
  }
  buildCounterBatchRunReportsRequest--;
  return o;
}

void checkBatchRunReportsRequest(api.BatchRunReportsRequest o) {
  buildCounterBatchRunReportsRequest++;
  if (buildCounterBatchRunReportsRequest < 3) {
    checkEntity(o.entity! as api.Entity);
    checkUnnamed7278(o.requests!);
  }
  buildCounterBatchRunReportsRequest--;
}

core.List<api.RunReportResponse> buildUnnamed7279() {
  var o = <api.RunReportResponse>[];
  o.add(buildRunReportResponse());
  o.add(buildRunReportResponse());
  return o;
}

void checkUnnamed7279(core.List<api.RunReportResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunReportResponse(o[0] as api.RunReportResponse);
  checkRunReportResponse(o[1] as api.RunReportResponse);
}

core.int buildCounterBatchRunReportsResponse = 0;
api.BatchRunReportsResponse buildBatchRunReportsResponse() {
  var o = api.BatchRunReportsResponse();
  buildCounterBatchRunReportsResponse++;
  if (buildCounterBatchRunReportsResponse < 3) {
    o.reports = buildUnnamed7279();
  }
  buildCounterBatchRunReportsResponse--;
  return o;
}

void checkBatchRunReportsResponse(api.BatchRunReportsResponse o) {
  buildCounterBatchRunReportsResponse++;
  if (buildCounterBatchRunReportsResponse < 3) {
    checkUnnamed7279(o.reports!);
  }
  buildCounterBatchRunReportsResponse--;
}

core.int buildCounterBetweenFilter = 0;
api.BetweenFilter buildBetweenFilter() {
  var o = api.BetweenFilter();
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
    checkNumericValue(o.fromValue! as api.NumericValue);
    checkNumericValue(o.toValue! as api.NumericValue);
  }
  buildCounterBetweenFilter--;
}

core.int buildCounterCaseExpression = 0;
api.CaseExpression buildCaseExpression() {
  var o = api.CaseExpression();
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
  var o = api.Cohort();
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
    checkDateRange(o.dateRange! as api.DateRange);
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
  var o = api.CohortReportSettings();
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

core.List<api.Cohort> buildUnnamed7280() {
  var o = <api.Cohort>[];
  o.add(buildCohort());
  o.add(buildCohort());
  return o;
}

void checkUnnamed7280(core.List<api.Cohort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCohort(o[0] as api.Cohort);
  checkCohort(o[1] as api.Cohort);
}

core.int buildCounterCohortSpec = 0;
api.CohortSpec buildCohortSpec() {
  var o = api.CohortSpec();
  buildCounterCohortSpec++;
  if (buildCounterCohortSpec < 3) {
    o.cohortReportSettings = buildCohortReportSettings();
    o.cohorts = buildUnnamed7280();
    o.cohortsRange = buildCohortsRange();
  }
  buildCounterCohortSpec--;
  return o;
}

void checkCohortSpec(api.CohortSpec o) {
  buildCounterCohortSpec++;
  if (buildCounterCohortSpec < 3) {
    checkCohortReportSettings(
        o.cohortReportSettings! as api.CohortReportSettings);
    checkUnnamed7280(o.cohorts!);
    checkCohortsRange(o.cohortsRange! as api.CohortsRange);
  }
  buildCounterCohortSpec--;
}

core.int buildCounterCohortsRange = 0;
api.CohortsRange buildCohortsRange() {
  var o = api.CohortsRange();
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

core.List<core.String> buildUnnamed7281() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7281(core.List<core.String> o) {
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
  var o = api.ConcatenateExpression();
  buildCounterConcatenateExpression++;
  if (buildCounterConcatenateExpression < 3) {
    o.delimiter = 'foo';
    o.dimensionNames = buildUnnamed7281();
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
    checkUnnamed7281(o.dimensionNames!);
  }
  buildCounterConcatenateExpression--;
}

core.int buildCounterDateRange = 0;
api.DateRange buildDateRange() {
  var o = api.DateRange();
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
  var o = api.Dimension();
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
    checkDimensionExpression(o.dimensionExpression! as api.DimensionExpression);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterDimension--;
}

core.int buildCounterDimensionExpression = 0;
api.DimensionExpression buildDimensionExpression() {
  var o = api.DimensionExpression();
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
    checkConcatenateExpression(o.concatenate! as api.ConcatenateExpression);
    checkCaseExpression(o.lowerCase! as api.CaseExpression);
    checkCaseExpression(o.upperCase! as api.CaseExpression);
  }
  buildCounterDimensionExpression--;
}

core.int buildCounterDimensionHeader = 0;
api.DimensionHeader buildDimensionHeader() {
  var o = api.DimensionHeader();
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

core.List<core.String> buildUnnamed7282() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7282(core.List<core.String> o) {
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
  var o = api.DimensionMetadata();
  buildCounterDimensionMetadata++;
  if (buildCounterDimensionMetadata < 3) {
    o.apiName = 'foo';
    o.customDefinition = true;
    o.deprecatedApiNames = buildUnnamed7282();
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
    checkUnnamed7282(o.deprecatedApiNames!);
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
  var o = api.DimensionOrderBy();
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
  var o = api.DimensionValue();
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

core.int buildCounterEntity = 0;
api.Entity buildEntity() {
  var o = api.Entity();
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    o.propertyId = 'foo';
  }
  buildCounterEntity--;
  return o;
}

void checkEntity(api.Entity o) {
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    unittest.expect(
      o.propertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntity--;
}

core.int buildCounterFilter = 0;
api.Filter buildFilter() {
  var o = api.Filter();
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
    checkBetweenFilter(o.betweenFilter! as api.BetweenFilter);
    unittest.expect(
      o.fieldName!,
      unittest.equals('foo'),
    );
    checkInListFilter(o.inListFilter! as api.InListFilter);
    checkNumericFilter(o.numericFilter! as api.NumericFilter);
    checkStringFilter(o.stringFilter! as api.StringFilter);
  }
  buildCounterFilter--;
}

core.int buildCounterFilterExpression = 0;
api.FilterExpression buildFilterExpression() {
  var o = api.FilterExpression();
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
    checkFilterExpressionList(o.andGroup! as api.FilterExpressionList);
    checkFilter(o.filter! as api.Filter);
    checkFilterExpression(o.notExpression! as api.FilterExpression);
    checkFilterExpressionList(o.orGroup! as api.FilterExpressionList);
  }
  buildCounterFilterExpression--;
}

core.List<api.FilterExpression> buildUnnamed7283() {
  var o = <api.FilterExpression>[];
  o.add(buildFilterExpression());
  o.add(buildFilterExpression());
  return o;
}

void checkUnnamed7283(core.List<api.FilterExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterExpression(o[0] as api.FilterExpression);
  checkFilterExpression(o[1] as api.FilterExpression);
}

core.int buildCounterFilterExpressionList = 0;
api.FilterExpressionList buildFilterExpressionList() {
  var o = api.FilterExpressionList();
  buildCounterFilterExpressionList++;
  if (buildCounterFilterExpressionList < 3) {
    o.expressions = buildUnnamed7283();
  }
  buildCounterFilterExpressionList--;
  return o;
}

void checkFilterExpressionList(api.FilterExpressionList o) {
  buildCounterFilterExpressionList++;
  if (buildCounterFilterExpressionList < 3) {
    checkUnnamed7283(o.expressions!);
  }
  buildCounterFilterExpressionList--;
}

core.List<core.String> buildUnnamed7284() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7284(core.List<core.String> o) {
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
  var o = api.InListFilter();
  buildCounterInListFilter++;
  if (buildCounterInListFilter < 3) {
    o.caseSensitive = true;
    o.values = buildUnnamed7284();
  }
  buildCounterInListFilter--;
  return o;
}

void checkInListFilter(api.InListFilter o) {
  buildCounterInListFilter++;
  if (buildCounterInListFilter < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    checkUnnamed7284(o.values!);
  }
  buildCounterInListFilter--;
}

core.List<api.DimensionMetadata> buildUnnamed7285() {
  var o = <api.DimensionMetadata>[];
  o.add(buildDimensionMetadata());
  o.add(buildDimensionMetadata());
  return o;
}

void checkUnnamed7285(core.List<api.DimensionMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionMetadata(o[0] as api.DimensionMetadata);
  checkDimensionMetadata(o[1] as api.DimensionMetadata);
}

core.List<api.MetricMetadata> buildUnnamed7286() {
  var o = <api.MetricMetadata>[];
  o.add(buildMetricMetadata());
  o.add(buildMetricMetadata());
  return o;
}

void checkUnnamed7286(core.List<api.MetricMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricMetadata(o[0] as api.MetricMetadata);
  checkMetricMetadata(o[1] as api.MetricMetadata);
}

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  var o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.dimensions = buildUnnamed7285();
    o.metrics = buildUnnamed7286();
    o.name = 'foo';
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    checkUnnamed7285(o.dimensions!);
    checkUnnamed7286(o.metrics!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetadata--;
}

core.int buildCounterMetric = 0;
api.Metric buildMetric() {
  var o = api.Metric();
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
  var o = api.MetricHeader();
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

core.List<core.String> buildUnnamed7287() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7287(core.List<core.String> o) {
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
  var o = api.MetricMetadata();
  buildCounterMetricMetadata++;
  if (buildCounterMetricMetadata < 3) {
    o.apiName = 'foo';
    o.customDefinition = true;
    o.deprecatedApiNames = buildUnnamed7287();
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
    checkUnnamed7287(o.deprecatedApiNames!);
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
  var o = api.MetricOrderBy();
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
  var o = api.MetricValue();
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

core.int buildCounterNumericFilter = 0;
api.NumericFilter buildNumericFilter() {
  var o = api.NumericFilter();
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
    checkNumericValue(o.value! as api.NumericValue);
  }
  buildCounterNumericFilter--;
}

core.int buildCounterNumericValue = 0;
api.NumericValue buildNumericValue() {
  var o = api.NumericValue();
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
  var o = api.OrderBy();
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
    checkDimensionOrderBy(o.dimension! as api.DimensionOrderBy);
    checkMetricOrderBy(o.metric! as api.MetricOrderBy);
    checkPivotOrderBy(o.pivot! as api.PivotOrderBy);
  }
  buildCounterOrderBy--;
}

core.List<core.String> buildUnnamed7288() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7288(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7289() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7289(core.List<core.String> o) {
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

core.List<api.OrderBy> buildUnnamed7290() {
  var o = <api.OrderBy>[];
  o.add(buildOrderBy());
  o.add(buildOrderBy());
  return o;
}

void checkUnnamed7290(core.List<api.OrderBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderBy(o[0] as api.OrderBy);
  checkOrderBy(o[1] as api.OrderBy);
}

core.int buildCounterPivot = 0;
api.Pivot buildPivot() {
  var o = api.Pivot();
  buildCounterPivot++;
  if (buildCounterPivot < 3) {
    o.fieldNames = buildUnnamed7288();
    o.limit = 'foo';
    o.metricAggregations = buildUnnamed7289();
    o.offset = 'foo';
    o.orderBys = buildUnnamed7290();
  }
  buildCounterPivot--;
  return o;
}

void checkPivot(api.Pivot o) {
  buildCounterPivot++;
  if (buildCounterPivot < 3) {
    checkUnnamed7288(o.fieldNames!);
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    checkUnnamed7289(o.metricAggregations!);
    unittest.expect(
      o.offset!,
      unittest.equals('foo'),
    );
    checkUnnamed7290(o.orderBys!);
  }
  buildCounterPivot--;
}

core.List<api.DimensionValue> buildUnnamed7291() {
  var o = <api.DimensionValue>[];
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

void checkUnnamed7291(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0] as api.DimensionValue);
  checkDimensionValue(o[1] as api.DimensionValue);
}

core.int buildCounterPivotDimensionHeader = 0;
api.PivotDimensionHeader buildPivotDimensionHeader() {
  var o = api.PivotDimensionHeader();
  buildCounterPivotDimensionHeader++;
  if (buildCounterPivotDimensionHeader < 3) {
    o.dimensionValues = buildUnnamed7291();
  }
  buildCounterPivotDimensionHeader--;
  return o;
}

void checkPivotDimensionHeader(api.PivotDimensionHeader o) {
  buildCounterPivotDimensionHeader++;
  if (buildCounterPivotDimensionHeader < 3) {
    checkUnnamed7291(o.dimensionValues!);
  }
  buildCounterPivotDimensionHeader--;
}

core.List<api.PivotDimensionHeader> buildUnnamed7292() {
  var o = <api.PivotDimensionHeader>[];
  o.add(buildPivotDimensionHeader());
  o.add(buildPivotDimensionHeader());
  return o;
}

void checkUnnamed7292(core.List<api.PivotDimensionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotDimensionHeader(o[0] as api.PivotDimensionHeader);
  checkPivotDimensionHeader(o[1] as api.PivotDimensionHeader);
}

core.int buildCounterPivotHeader = 0;
api.PivotHeader buildPivotHeader() {
  var o = api.PivotHeader();
  buildCounterPivotHeader++;
  if (buildCounterPivotHeader < 3) {
    o.pivotDimensionHeaders = buildUnnamed7292();
    o.rowCount = 42;
  }
  buildCounterPivotHeader--;
  return o;
}

void checkPivotHeader(api.PivotHeader o) {
  buildCounterPivotHeader++;
  if (buildCounterPivotHeader < 3) {
    checkUnnamed7292(o.pivotDimensionHeaders!);
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
  }
  buildCounterPivotHeader--;
}

core.List<api.PivotSelection> buildUnnamed7293() {
  var o = <api.PivotSelection>[];
  o.add(buildPivotSelection());
  o.add(buildPivotSelection());
  return o;
}

void checkUnnamed7293(core.List<api.PivotSelection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotSelection(o[0] as api.PivotSelection);
  checkPivotSelection(o[1] as api.PivotSelection);
}

core.int buildCounterPivotOrderBy = 0;
api.PivotOrderBy buildPivotOrderBy() {
  var o = api.PivotOrderBy();
  buildCounterPivotOrderBy++;
  if (buildCounterPivotOrderBy < 3) {
    o.metricName = 'foo';
    o.pivotSelections = buildUnnamed7293();
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
    checkUnnamed7293(o.pivotSelections!);
  }
  buildCounterPivotOrderBy--;
}

core.int buildCounterPivotSelection = 0;
api.PivotSelection buildPivotSelection() {
  var o = api.PivotSelection();
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
  var o = api.PropertyQuota();
  buildCounterPropertyQuota++;
  if (buildCounterPropertyQuota < 3) {
    o.concurrentRequests = buildQuotaStatus();
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
    checkQuotaStatus(o.concurrentRequests! as api.QuotaStatus);
    checkQuotaStatus(o.serverErrorsPerProjectPerHour! as api.QuotaStatus);
    checkQuotaStatus(o.tokensPerDay! as api.QuotaStatus);
    checkQuotaStatus(o.tokensPerHour! as api.QuotaStatus);
  }
  buildCounterPropertyQuota--;
}

core.int buildCounterQuotaStatus = 0;
api.QuotaStatus buildQuotaStatus() {
  var o = api.QuotaStatus();
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
  var o = api.ResponseMetaData();
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

core.List<api.DimensionValue> buildUnnamed7294() {
  var o = <api.DimensionValue>[];
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

void checkUnnamed7294(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0] as api.DimensionValue);
  checkDimensionValue(o[1] as api.DimensionValue);
}

core.List<api.MetricValue> buildUnnamed7295() {
  var o = <api.MetricValue>[];
  o.add(buildMetricValue());
  o.add(buildMetricValue());
  return o;
}

void checkUnnamed7295(core.List<api.MetricValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValue(o[0] as api.MetricValue);
  checkMetricValue(o[1] as api.MetricValue);
}

core.int buildCounterRow = 0;
api.Row buildRow() {
  var o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.dimensionValues = buildUnnamed7294();
    o.metricValues = buildUnnamed7295();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    checkUnnamed7294(o.dimensionValues!);
    checkUnnamed7295(o.metricValues!);
  }
  buildCounterRow--;
}

core.List<api.DateRange> buildUnnamed7296() {
  var o = <api.DateRange>[];
  o.add(buildDateRange());
  o.add(buildDateRange());
  return o;
}

void checkUnnamed7296(core.List<api.DateRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRange(o[0] as api.DateRange);
  checkDateRange(o[1] as api.DateRange);
}

core.List<api.Dimension> buildUnnamed7297() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed7297(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0] as api.Dimension);
  checkDimension(o[1] as api.Dimension);
}

core.List<api.Metric> buildUnnamed7298() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed7298(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0] as api.Metric);
  checkMetric(o[1] as api.Metric);
}

core.List<api.Pivot> buildUnnamed7299() {
  var o = <api.Pivot>[];
  o.add(buildPivot());
  o.add(buildPivot());
  return o;
}

void checkUnnamed7299(core.List<api.Pivot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivot(o[0] as api.Pivot);
  checkPivot(o[1] as api.Pivot);
}

core.int buildCounterRunPivotReportRequest = 0;
api.RunPivotReportRequest buildRunPivotReportRequest() {
  var o = api.RunPivotReportRequest();
  buildCounterRunPivotReportRequest++;
  if (buildCounterRunPivotReportRequest < 3) {
    o.cohortSpec = buildCohortSpec();
    o.currencyCode = 'foo';
    o.dateRanges = buildUnnamed7296();
    o.dimensionFilter = buildFilterExpression();
    o.dimensions = buildUnnamed7297();
    o.entity = buildEntity();
    o.keepEmptyRows = true;
    o.metricFilter = buildFilterExpression();
    o.metrics = buildUnnamed7298();
    o.pivots = buildUnnamed7299();
    o.returnPropertyQuota = true;
  }
  buildCounterRunPivotReportRequest--;
  return o;
}

void checkRunPivotReportRequest(api.RunPivotReportRequest o) {
  buildCounterRunPivotReportRequest++;
  if (buildCounterRunPivotReportRequest < 3) {
    checkCohortSpec(o.cohortSpec! as api.CohortSpec);
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    checkUnnamed7296(o.dateRanges!);
    checkFilterExpression(o.dimensionFilter! as api.FilterExpression);
    checkUnnamed7297(o.dimensions!);
    checkEntity(o.entity! as api.Entity);
    unittest.expect(o.keepEmptyRows!, unittest.isTrue);
    checkFilterExpression(o.metricFilter! as api.FilterExpression);
    checkUnnamed7298(o.metrics!);
    checkUnnamed7299(o.pivots!);
    unittest.expect(o.returnPropertyQuota!, unittest.isTrue);
  }
  buildCounterRunPivotReportRequest--;
}

core.List<api.Row> buildUnnamed7300() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed7300(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.List<api.DimensionHeader> buildUnnamed7301() {
  var o = <api.DimensionHeader>[];
  o.add(buildDimensionHeader());
  o.add(buildDimensionHeader());
  return o;
}

void checkUnnamed7301(core.List<api.DimensionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionHeader(o[0] as api.DimensionHeader);
  checkDimensionHeader(o[1] as api.DimensionHeader);
}

core.List<api.MetricHeader> buildUnnamed7302() {
  var o = <api.MetricHeader>[];
  o.add(buildMetricHeader());
  o.add(buildMetricHeader());
  return o;
}

void checkUnnamed7302(core.List<api.MetricHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricHeader(o[0] as api.MetricHeader);
  checkMetricHeader(o[1] as api.MetricHeader);
}

core.List<api.PivotHeader> buildUnnamed7303() {
  var o = <api.PivotHeader>[];
  o.add(buildPivotHeader());
  o.add(buildPivotHeader());
  return o;
}

void checkUnnamed7303(core.List<api.PivotHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotHeader(o[0] as api.PivotHeader);
  checkPivotHeader(o[1] as api.PivotHeader);
}

core.List<api.Row> buildUnnamed7304() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed7304(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.int buildCounterRunPivotReportResponse = 0;
api.RunPivotReportResponse buildRunPivotReportResponse() {
  var o = api.RunPivotReportResponse();
  buildCounterRunPivotReportResponse++;
  if (buildCounterRunPivotReportResponse < 3) {
    o.aggregates = buildUnnamed7300();
    o.dimensionHeaders = buildUnnamed7301();
    o.metadata = buildResponseMetaData();
    o.metricHeaders = buildUnnamed7302();
    o.pivotHeaders = buildUnnamed7303();
    o.propertyQuota = buildPropertyQuota();
    o.rows = buildUnnamed7304();
  }
  buildCounterRunPivotReportResponse--;
  return o;
}

void checkRunPivotReportResponse(api.RunPivotReportResponse o) {
  buildCounterRunPivotReportResponse++;
  if (buildCounterRunPivotReportResponse < 3) {
    checkUnnamed7300(o.aggregates!);
    checkUnnamed7301(o.dimensionHeaders!);
    checkResponseMetaData(o.metadata! as api.ResponseMetaData);
    checkUnnamed7302(o.metricHeaders!);
    checkUnnamed7303(o.pivotHeaders!);
    checkPropertyQuota(o.propertyQuota! as api.PropertyQuota);
    checkUnnamed7304(o.rows!);
  }
  buildCounterRunPivotReportResponse--;
}

core.List<api.Dimension> buildUnnamed7305() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed7305(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0] as api.Dimension);
  checkDimension(o[1] as api.Dimension);
}

core.List<core.String> buildUnnamed7306() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7306(core.List<core.String> o) {
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

core.List<api.Metric> buildUnnamed7307() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed7307(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0] as api.Metric);
  checkMetric(o[1] as api.Metric);
}

core.List<api.OrderBy> buildUnnamed7308() {
  var o = <api.OrderBy>[];
  o.add(buildOrderBy());
  o.add(buildOrderBy());
  return o;
}

void checkUnnamed7308(core.List<api.OrderBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderBy(o[0] as api.OrderBy);
  checkOrderBy(o[1] as api.OrderBy);
}

core.int buildCounterRunRealtimeReportRequest = 0;
api.RunRealtimeReportRequest buildRunRealtimeReportRequest() {
  var o = api.RunRealtimeReportRequest();
  buildCounterRunRealtimeReportRequest++;
  if (buildCounterRunRealtimeReportRequest < 3) {
    o.dimensionFilter = buildFilterExpression();
    o.dimensions = buildUnnamed7305();
    o.limit = 'foo';
    o.metricAggregations = buildUnnamed7306();
    o.metricFilter = buildFilterExpression();
    o.metrics = buildUnnamed7307();
    o.orderBys = buildUnnamed7308();
    o.returnPropertyQuota = true;
  }
  buildCounterRunRealtimeReportRequest--;
  return o;
}

void checkRunRealtimeReportRequest(api.RunRealtimeReportRequest o) {
  buildCounterRunRealtimeReportRequest++;
  if (buildCounterRunRealtimeReportRequest < 3) {
    checkFilterExpression(o.dimensionFilter! as api.FilterExpression);
    checkUnnamed7305(o.dimensions!);
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    checkUnnamed7306(o.metricAggregations!);
    checkFilterExpression(o.metricFilter! as api.FilterExpression);
    checkUnnamed7307(o.metrics!);
    checkUnnamed7308(o.orderBys!);
    unittest.expect(o.returnPropertyQuota!, unittest.isTrue);
  }
  buildCounterRunRealtimeReportRequest--;
}

core.List<api.DimensionHeader> buildUnnamed7309() {
  var o = <api.DimensionHeader>[];
  o.add(buildDimensionHeader());
  o.add(buildDimensionHeader());
  return o;
}

void checkUnnamed7309(core.List<api.DimensionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionHeader(o[0] as api.DimensionHeader);
  checkDimensionHeader(o[1] as api.DimensionHeader);
}

core.List<api.Row> buildUnnamed7310() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed7310(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.List<api.MetricHeader> buildUnnamed7311() {
  var o = <api.MetricHeader>[];
  o.add(buildMetricHeader());
  o.add(buildMetricHeader());
  return o;
}

void checkUnnamed7311(core.List<api.MetricHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricHeader(o[0] as api.MetricHeader);
  checkMetricHeader(o[1] as api.MetricHeader);
}

core.List<api.Row> buildUnnamed7312() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed7312(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.List<api.Row> buildUnnamed7313() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed7313(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.List<api.Row> buildUnnamed7314() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed7314(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.int buildCounterRunRealtimeReportResponse = 0;
api.RunRealtimeReportResponse buildRunRealtimeReportResponse() {
  var o = api.RunRealtimeReportResponse();
  buildCounterRunRealtimeReportResponse++;
  if (buildCounterRunRealtimeReportResponse < 3) {
    o.dimensionHeaders = buildUnnamed7309();
    o.maximums = buildUnnamed7310();
    o.metricHeaders = buildUnnamed7311();
    o.minimums = buildUnnamed7312();
    o.propertyQuota = buildPropertyQuota();
    o.rowCount = 42;
    o.rows = buildUnnamed7313();
    o.totals = buildUnnamed7314();
  }
  buildCounterRunRealtimeReportResponse--;
  return o;
}

void checkRunRealtimeReportResponse(api.RunRealtimeReportResponse o) {
  buildCounterRunRealtimeReportResponse++;
  if (buildCounterRunRealtimeReportResponse < 3) {
    checkUnnamed7309(o.dimensionHeaders!);
    checkUnnamed7310(o.maximums!);
    checkUnnamed7311(o.metricHeaders!);
    checkUnnamed7312(o.minimums!);
    checkPropertyQuota(o.propertyQuota! as api.PropertyQuota);
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
    checkUnnamed7313(o.rows!);
    checkUnnamed7314(o.totals!);
  }
  buildCounterRunRealtimeReportResponse--;
}

core.List<api.DateRange> buildUnnamed7315() {
  var o = <api.DateRange>[];
  o.add(buildDateRange());
  o.add(buildDateRange());
  return o;
}

void checkUnnamed7315(core.List<api.DateRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRange(o[0] as api.DateRange);
  checkDateRange(o[1] as api.DateRange);
}

core.List<api.Dimension> buildUnnamed7316() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed7316(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0] as api.Dimension);
  checkDimension(o[1] as api.Dimension);
}

core.List<core.String> buildUnnamed7317() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7317(core.List<core.String> o) {
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

core.List<api.Metric> buildUnnamed7318() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed7318(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0] as api.Metric);
  checkMetric(o[1] as api.Metric);
}

core.List<api.OrderBy> buildUnnamed7319() {
  var o = <api.OrderBy>[];
  o.add(buildOrderBy());
  o.add(buildOrderBy());
  return o;
}

void checkUnnamed7319(core.List<api.OrderBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderBy(o[0] as api.OrderBy);
  checkOrderBy(o[1] as api.OrderBy);
}

core.int buildCounterRunReportRequest = 0;
api.RunReportRequest buildRunReportRequest() {
  var o = api.RunReportRequest();
  buildCounterRunReportRequest++;
  if (buildCounterRunReportRequest < 3) {
    o.cohortSpec = buildCohortSpec();
    o.currencyCode = 'foo';
    o.dateRanges = buildUnnamed7315();
    o.dimensionFilter = buildFilterExpression();
    o.dimensions = buildUnnamed7316();
    o.entity = buildEntity();
    o.keepEmptyRows = true;
    o.limit = 'foo';
    o.metricAggregations = buildUnnamed7317();
    o.metricFilter = buildFilterExpression();
    o.metrics = buildUnnamed7318();
    o.offset = 'foo';
    o.orderBys = buildUnnamed7319();
    o.returnPropertyQuota = true;
  }
  buildCounterRunReportRequest--;
  return o;
}

void checkRunReportRequest(api.RunReportRequest o) {
  buildCounterRunReportRequest++;
  if (buildCounterRunReportRequest < 3) {
    checkCohortSpec(o.cohortSpec! as api.CohortSpec);
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    checkUnnamed7315(o.dateRanges!);
    checkFilterExpression(o.dimensionFilter! as api.FilterExpression);
    checkUnnamed7316(o.dimensions!);
    checkEntity(o.entity! as api.Entity);
    unittest.expect(o.keepEmptyRows!, unittest.isTrue);
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    checkUnnamed7317(o.metricAggregations!);
    checkFilterExpression(o.metricFilter! as api.FilterExpression);
    checkUnnamed7318(o.metrics!);
    unittest.expect(
      o.offset!,
      unittest.equals('foo'),
    );
    checkUnnamed7319(o.orderBys!);
    unittest.expect(o.returnPropertyQuota!, unittest.isTrue);
  }
  buildCounterRunReportRequest--;
}

core.List<api.DimensionHeader> buildUnnamed7320() {
  var o = <api.DimensionHeader>[];
  o.add(buildDimensionHeader());
  o.add(buildDimensionHeader());
  return o;
}

void checkUnnamed7320(core.List<api.DimensionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionHeader(o[0] as api.DimensionHeader);
  checkDimensionHeader(o[1] as api.DimensionHeader);
}

core.List<api.Row> buildUnnamed7321() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed7321(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.List<api.MetricHeader> buildUnnamed7322() {
  var o = <api.MetricHeader>[];
  o.add(buildMetricHeader());
  o.add(buildMetricHeader());
  return o;
}

void checkUnnamed7322(core.List<api.MetricHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricHeader(o[0] as api.MetricHeader);
  checkMetricHeader(o[1] as api.MetricHeader);
}

core.List<api.Row> buildUnnamed7323() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed7323(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.List<api.Row> buildUnnamed7324() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed7324(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.List<api.Row> buildUnnamed7325() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed7325(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.int buildCounterRunReportResponse = 0;
api.RunReportResponse buildRunReportResponse() {
  var o = api.RunReportResponse();
  buildCounterRunReportResponse++;
  if (buildCounterRunReportResponse < 3) {
    o.dimensionHeaders = buildUnnamed7320();
    o.maximums = buildUnnamed7321();
    o.metadata = buildResponseMetaData();
    o.metricHeaders = buildUnnamed7322();
    o.minimums = buildUnnamed7323();
    o.propertyQuota = buildPropertyQuota();
    o.rowCount = 42;
    o.rows = buildUnnamed7324();
    o.totals = buildUnnamed7325();
  }
  buildCounterRunReportResponse--;
  return o;
}

void checkRunReportResponse(api.RunReportResponse o) {
  buildCounterRunReportResponse++;
  if (buildCounterRunReportResponse < 3) {
    checkUnnamed7320(o.dimensionHeaders!);
    checkUnnamed7321(o.maximums!);
    checkResponseMetaData(o.metadata! as api.ResponseMetaData);
    checkUnnamed7322(o.metricHeaders!);
    checkUnnamed7323(o.minimums!);
    checkPropertyQuota(o.propertyQuota! as api.PropertyQuota);
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
    checkUnnamed7324(o.rows!);
    checkUnnamed7325(o.totals!);
  }
  buildCounterRunReportResponse--;
}

core.int buildCounterStringFilter = 0;
api.StringFilter buildStringFilter() {
  var o = api.StringFilter();
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
    unittest.test('to-json--from-json', () {
      var o = buildBatchRunPivotReportsRequest();
      var od = api.BatchRunPivotReportsRequest.fromJson(o.toJson());
      checkBatchRunPivotReportsRequest(od as api.BatchRunPivotReportsRequest);
    });
  });

  unittest.group('obj-schema-BatchRunPivotReportsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchRunPivotReportsResponse();
      var od = api.BatchRunPivotReportsResponse.fromJson(o.toJson());
      checkBatchRunPivotReportsResponse(od as api.BatchRunPivotReportsResponse);
    });
  });

  unittest.group('obj-schema-BatchRunReportsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchRunReportsRequest();
      var od = api.BatchRunReportsRequest.fromJson(o.toJson());
      checkBatchRunReportsRequest(od as api.BatchRunReportsRequest);
    });
  });

  unittest.group('obj-schema-BatchRunReportsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchRunReportsResponse();
      var od = api.BatchRunReportsResponse.fromJson(o.toJson());
      checkBatchRunReportsResponse(od as api.BatchRunReportsResponse);
    });
  });

  unittest.group('obj-schema-BetweenFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildBetweenFilter();
      var od = api.BetweenFilter.fromJson(o.toJson());
      checkBetweenFilter(od as api.BetweenFilter);
    });
  });

  unittest.group('obj-schema-CaseExpression', () {
    unittest.test('to-json--from-json', () {
      var o = buildCaseExpression();
      var od = api.CaseExpression.fromJson(o.toJson());
      checkCaseExpression(od as api.CaseExpression);
    });
  });

  unittest.group('obj-schema-Cohort', () {
    unittest.test('to-json--from-json', () {
      var o = buildCohort();
      var od = api.Cohort.fromJson(o.toJson());
      checkCohort(od as api.Cohort);
    });
  });

  unittest.group('obj-schema-CohortReportSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildCohortReportSettings();
      var od = api.CohortReportSettings.fromJson(o.toJson());
      checkCohortReportSettings(od as api.CohortReportSettings);
    });
  });

  unittest.group('obj-schema-CohortSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildCohortSpec();
      var od = api.CohortSpec.fromJson(o.toJson());
      checkCohortSpec(od as api.CohortSpec);
    });
  });

  unittest.group('obj-schema-CohortsRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildCohortsRange();
      var od = api.CohortsRange.fromJson(o.toJson());
      checkCohortsRange(od as api.CohortsRange);
    });
  });

  unittest.group('obj-schema-ConcatenateExpression', () {
    unittest.test('to-json--from-json', () {
      var o = buildConcatenateExpression();
      var od = api.ConcatenateExpression.fromJson(o.toJson());
      checkConcatenateExpression(od as api.ConcatenateExpression);
    });
  });

  unittest.group('obj-schema-DateRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildDateRange();
      var od = api.DateRange.fromJson(o.toJson());
      checkDateRange(od as api.DateRange);
    });
  });

  unittest.group('obj-schema-Dimension', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimension();
      var od = api.Dimension.fromJson(o.toJson());
      checkDimension(od as api.Dimension);
    });
  });

  unittest.group('obj-schema-DimensionExpression', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensionExpression();
      var od = api.DimensionExpression.fromJson(o.toJson());
      checkDimensionExpression(od as api.DimensionExpression);
    });
  });

  unittest.group('obj-schema-DimensionHeader', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensionHeader();
      var od = api.DimensionHeader.fromJson(o.toJson());
      checkDimensionHeader(od as api.DimensionHeader);
    });
  });

  unittest.group('obj-schema-DimensionMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensionMetadata();
      var od = api.DimensionMetadata.fromJson(o.toJson());
      checkDimensionMetadata(od as api.DimensionMetadata);
    });
  });

  unittest.group('obj-schema-DimensionOrderBy', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensionOrderBy();
      var od = api.DimensionOrderBy.fromJson(o.toJson());
      checkDimensionOrderBy(od as api.DimensionOrderBy);
    });
  });

  unittest.group('obj-schema-DimensionValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensionValue();
      var od = api.DimensionValue.fromJson(o.toJson());
      checkDimensionValue(od as api.DimensionValue);
    });
  });

  unittest.group('obj-schema-Entity', () {
    unittest.test('to-json--from-json', () {
      var o = buildEntity();
      var od = api.Entity.fromJson(o.toJson());
      checkEntity(od as api.Entity);
    });
  });

  unittest.group('obj-schema-Filter', () {
    unittest.test('to-json--from-json', () {
      var o = buildFilter();
      var od = api.Filter.fromJson(o.toJson());
      checkFilter(od as api.Filter);
    });
  });

  unittest.group('obj-schema-FilterExpression', () {
    unittest.test('to-json--from-json', () {
      var o = buildFilterExpression();
      var od = api.FilterExpression.fromJson(o.toJson());
      checkFilterExpression(od as api.FilterExpression);
    });
  });

  unittest.group('obj-schema-FilterExpressionList', () {
    unittest.test('to-json--from-json', () {
      var o = buildFilterExpressionList();
      var od = api.FilterExpressionList.fromJson(o.toJson());
      checkFilterExpressionList(od as api.FilterExpressionList);
    });
  });

  unittest.group('obj-schema-InListFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildInListFilter();
      var od = api.InListFilter.fromJson(o.toJson());
      checkInListFilter(od as api.InListFilter);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetadata();
      var od = api.Metadata.fromJson(o.toJson());
      checkMetadata(od as api.Metadata);
    });
  });

  unittest.group('obj-schema-Metric', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetric();
      var od = api.Metric.fromJson(o.toJson());
      checkMetric(od as api.Metric);
    });
  });

  unittest.group('obj-schema-MetricHeader', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricHeader();
      var od = api.MetricHeader.fromJson(o.toJson());
      checkMetricHeader(od as api.MetricHeader);
    });
  });

  unittest.group('obj-schema-MetricMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricMetadata();
      var od = api.MetricMetadata.fromJson(o.toJson());
      checkMetricMetadata(od as api.MetricMetadata);
    });
  });

  unittest.group('obj-schema-MetricOrderBy', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricOrderBy();
      var od = api.MetricOrderBy.fromJson(o.toJson());
      checkMetricOrderBy(od as api.MetricOrderBy);
    });
  });

  unittest.group('obj-schema-MetricValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricValue();
      var od = api.MetricValue.fromJson(o.toJson());
      checkMetricValue(od as api.MetricValue);
    });
  });

  unittest.group('obj-schema-NumericFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildNumericFilter();
      var od = api.NumericFilter.fromJson(o.toJson());
      checkNumericFilter(od as api.NumericFilter);
    });
  });

  unittest.group('obj-schema-NumericValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildNumericValue();
      var od = api.NumericValue.fromJson(o.toJson());
      checkNumericValue(od as api.NumericValue);
    });
  });

  unittest.group('obj-schema-OrderBy', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderBy();
      var od = api.OrderBy.fromJson(o.toJson());
      checkOrderBy(od as api.OrderBy);
    });
  });

  unittest.group('obj-schema-Pivot', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivot();
      var od = api.Pivot.fromJson(o.toJson());
      checkPivot(od as api.Pivot);
    });
  });

  unittest.group('obj-schema-PivotDimensionHeader', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotDimensionHeader();
      var od = api.PivotDimensionHeader.fromJson(o.toJson());
      checkPivotDimensionHeader(od as api.PivotDimensionHeader);
    });
  });

  unittest.group('obj-schema-PivotHeader', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotHeader();
      var od = api.PivotHeader.fromJson(o.toJson());
      checkPivotHeader(od as api.PivotHeader);
    });
  });

  unittest.group('obj-schema-PivotOrderBy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotOrderBy();
      var od = api.PivotOrderBy.fromJson(o.toJson());
      checkPivotOrderBy(od as api.PivotOrderBy);
    });
  });

  unittest.group('obj-schema-PivotSelection', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotSelection();
      var od = api.PivotSelection.fromJson(o.toJson());
      checkPivotSelection(od as api.PivotSelection);
    });
  });

  unittest.group('obj-schema-PropertyQuota', () {
    unittest.test('to-json--from-json', () {
      var o = buildPropertyQuota();
      var od = api.PropertyQuota.fromJson(o.toJson());
      checkPropertyQuota(od as api.PropertyQuota);
    });
  });

  unittest.group('obj-schema-QuotaStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildQuotaStatus();
      var od = api.QuotaStatus.fromJson(o.toJson());
      checkQuotaStatus(od as api.QuotaStatus);
    });
  });

  unittest.group('obj-schema-ResponseMetaData', () {
    unittest.test('to-json--from-json', () {
      var o = buildResponseMetaData();
      var od = api.ResponseMetaData.fromJson(o.toJson());
      checkResponseMetaData(od as api.ResponseMetaData);
    });
  });

  unittest.group('obj-schema-Row', () {
    unittest.test('to-json--from-json', () {
      var o = buildRow();
      var od = api.Row.fromJson(o.toJson());
      checkRow(od as api.Row);
    });
  });

  unittest.group('obj-schema-RunPivotReportRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRunPivotReportRequest();
      var od = api.RunPivotReportRequest.fromJson(o.toJson());
      checkRunPivotReportRequest(od as api.RunPivotReportRequest);
    });
  });

  unittest.group('obj-schema-RunPivotReportResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRunPivotReportResponse();
      var od = api.RunPivotReportResponse.fromJson(o.toJson());
      checkRunPivotReportResponse(od as api.RunPivotReportResponse);
    });
  });

  unittest.group('obj-schema-RunRealtimeReportRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRunRealtimeReportRequest();
      var od = api.RunRealtimeReportRequest.fromJson(o.toJson());
      checkRunRealtimeReportRequest(od as api.RunRealtimeReportRequest);
    });
  });

  unittest.group('obj-schema-RunRealtimeReportResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRunRealtimeReportResponse();
      var od = api.RunRealtimeReportResponse.fromJson(o.toJson());
      checkRunRealtimeReportResponse(od as api.RunRealtimeReportResponse);
    });
  });

  unittest.group('obj-schema-RunReportRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRunReportRequest();
      var od = api.RunReportRequest.fromJson(o.toJson());
      checkRunReportRequest(od as api.RunReportRequest);
    });
  });

  unittest.group('obj-schema-RunReportResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRunReportResponse();
      var od = api.RunReportResponse.fromJson(o.toJson());
      checkRunReportResponse(od as api.RunReportResponse);
    });
  });

  unittest.group('obj-schema-StringFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildStringFilter();
      var od = api.StringFilter.fromJson(o.toJson());
      checkStringFilter(od as api.StringFilter);
    });
  });

  unittest.group('resource-PropertiesResource', () {
    unittest.test('method--getMetadata', () {
      var mock = HttpServerMock();
      var res = api.AnalyticsDataApi(mock).properties;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1alpha/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getMetadata(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMetadata(response as api.Metadata);
      })));
    });

    unittest.test('method--runRealtimeReport', () {
      var mock = HttpServerMock();
      var res = api.AnalyticsDataApi(mock).properties;
      var arg_request = buildRunRealtimeReportRequest();
      var arg_property = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RunRealtimeReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunRealtimeReportRequest(obj as api.RunRealtimeReportRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1alpha/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRunRealtimeReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .runRealtimeReport(arg_request, arg_property, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRunRealtimeReportResponse(
            response as api.RunRealtimeReportResponse);
      })));
    });
  });

  unittest.group('resource-V1alphaResource', () {
    unittest.test('method--batchRunPivotReports', () {
      var mock = HttpServerMock();
      var res = api.AnalyticsDataApi(mock).v1alpha;
      var arg_request = buildBatchRunPivotReportsRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchRunPivotReportsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchRunPivotReportsRequest(
            obj as api.BatchRunPivotReportsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals("v1alpha:batchRunPivotReports"),
        );
        pathOffset += 28;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchRunPivotReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchRunPivotReports(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchRunPivotReportsResponse(
            response as api.BatchRunPivotReportsResponse);
      })));
    });

    unittest.test('method--batchRunReports', () {
      var mock = HttpServerMock();
      var res = api.AnalyticsDataApi(mock).v1alpha;
      var arg_request = buildBatchRunReportsRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchRunReportsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchRunReportsRequest(obj as api.BatchRunReportsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals("v1alpha:batchRunReports"),
        );
        pathOffset += 23;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchRunReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchRunReports(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchRunReportsResponse(response as api.BatchRunReportsResponse);
      })));
    });

    unittest.test('method--runPivotReport', () {
      var mock = HttpServerMock();
      var res = api.AnalyticsDataApi(mock).v1alpha;
      var arg_request = buildRunPivotReportRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RunPivotReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunPivotReportRequest(obj as api.RunPivotReportRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals("v1alpha:runPivotReport"),
        );
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRunPivotReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .runPivotReport(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRunPivotReportResponse(response as api.RunPivotReportResponse);
      })));
    });

    unittest.test('method--runReport', () {
      var mock = HttpServerMock();
      var res = api.AnalyticsDataApi(mock).v1alpha;
      var arg_request = buildRunReportRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RunReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunReportRequest(obj as api.RunReportRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v1alpha:runReport"),
        );
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRunReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .runReport(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRunReportResponse(response as api.RunReportResponse);
      })));
    });
  });
}
