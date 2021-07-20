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

import 'package:googleapis/analyticsreporting/v4.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.CustomDimension> buildUnnamed7588() => [
      buildCustomDimension(),
      buildCustomDimension(),
    ];

void checkUnnamed7588(core.List<api.CustomDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomDimension(o[0]);
  checkCustomDimension(o[1]);
}

core.int buildCounterActivity = 0;
api.Activity buildActivity() {
  final o = api.Activity();
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    o.activityTime = 'foo';
    o.activityType = 'foo';
    o.appview = buildScreenviewData();
    o.campaign = 'foo';
    o.channelGrouping = 'foo';
    o.customDimension = buildUnnamed7588();
    o.ecommerce = buildEcommerceData();
    o.event = buildEventData();
    o.goals = buildGoalSetData();
    o.hostname = 'foo';
    o.keyword = 'foo';
    o.landingPagePath = 'foo';
    o.medium = 'foo';
    o.pageview = buildPageviewData();
    o.source = 'foo';
  }
  buildCounterActivity--;
  return o;
}

void checkActivity(api.Activity o) {
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    unittest.expect(
      o.activityTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.activityType!,
      unittest.equals('foo'),
    );
    checkScreenviewData(o.appview!);
    unittest.expect(
      o.campaign!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.channelGrouping!,
      unittest.equals('foo'),
    );
    checkUnnamed7588(o.customDimension!);
    checkEcommerceData(o.ecommerce!);
    checkEventData(o.event!);
    checkGoalSetData(o.goals!);
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyword!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.landingPagePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.medium!,
      unittest.equals('foo'),
    );
    checkPageviewData(o.pageview!);
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
  }
  buildCounterActivity--;
}

core.int buildCounterCohort = 0;
api.Cohort buildCohort() {
  final o = api.Cohort();
  buildCounterCohort++;
  if (buildCounterCohort < 3) {
    o.dateRange = buildDateRange();
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterCohort--;
  return o;
}

void checkCohort(api.Cohort o) {
  buildCounterCohort++;
  if (buildCounterCohort < 3) {
    checkDateRange(o.dateRange!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCohort--;
}

core.List<api.Cohort> buildUnnamed7589() => [
      buildCohort(),
      buildCohort(),
    ];

void checkUnnamed7589(core.List<api.Cohort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCohort(o[0]);
  checkCohort(o[1]);
}

core.int buildCounterCohortGroup = 0;
api.CohortGroup buildCohortGroup() {
  final o = api.CohortGroup();
  buildCounterCohortGroup++;
  if (buildCounterCohortGroup < 3) {
    o.cohorts = buildUnnamed7589();
    o.lifetimeValue = true;
  }
  buildCounterCohortGroup--;
  return o;
}

void checkCohortGroup(api.CohortGroup o) {
  buildCounterCohortGroup++;
  if (buildCounterCohortGroup < 3) {
    checkUnnamed7589(o.cohorts!);
    unittest.expect(o.lifetimeValue!, unittest.isTrue);
  }
  buildCounterCohortGroup--;
}

core.List<core.String> buildUnnamed7590() => [
      'foo',
      'foo',
    ];

void checkUnnamed7590(core.List<core.String> o) {
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

core.int buildCounterColumnHeader = 0;
api.ColumnHeader buildColumnHeader() {
  final o = api.ColumnHeader();
  buildCounterColumnHeader++;
  if (buildCounterColumnHeader < 3) {
    o.dimensions = buildUnnamed7590();
    o.metricHeader = buildMetricHeader();
  }
  buildCounterColumnHeader--;
  return o;
}

void checkColumnHeader(api.ColumnHeader o) {
  buildCounterColumnHeader++;
  if (buildCounterColumnHeader < 3) {
    checkUnnamed7590(o.dimensions!);
    checkMetricHeader(o.metricHeader!);
  }
  buildCounterColumnHeader--;
}

core.int buildCounterCustomDimension = 0;
api.CustomDimension buildCustomDimension() {
  final o = api.CustomDimension();
  buildCounterCustomDimension++;
  if (buildCounterCustomDimension < 3) {
    o.index = 42;
    o.value = 'foo';
  }
  buildCounterCustomDimension--;
  return o;
}

void checkCustomDimension(api.CustomDimension o) {
  buildCounterCustomDimension++;
  if (buildCounterCustomDimension < 3) {
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomDimension--;
}

core.int buildCounterDateRange = 0;
api.DateRange buildDateRange() {
  final o = api.DateRange();
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    o.endDate = 'foo';
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
      o.startDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterDateRange--;
}

core.List<api.PivotValueRegion> buildUnnamed7591() => [
      buildPivotValueRegion(),
      buildPivotValueRegion(),
    ];

void checkUnnamed7591(core.List<api.PivotValueRegion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotValueRegion(o[0]);
  checkPivotValueRegion(o[1]);
}

core.List<core.String> buildUnnamed7592() => [
      'foo',
      'foo',
    ];

void checkUnnamed7592(core.List<core.String> o) {
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

core.int buildCounterDateRangeValues = 0;
api.DateRangeValues buildDateRangeValues() {
  final o = api.DateRangeValues();
  buildCounterDateRangeValues++;
  if (buildCounterDateRangeValues < 3) {
    o.pivotValueRegions = buildUnnamed7591();
    o.values = buildUnnamed7592();
  }
  buildCounterDateRangeValues--;
  return o;
}

void checkDateRangeValues(api.DateRangeValues o) {
  buildCounterDateRangeValues++;
  if (buildCounterDateRangeValues < 3) {
    checkUnnamed7591(o.pivotValueRegions!);
    checkUnnamed7592(o.values!);
  }
  buildCounterDateRangeValues--;
}

core.List<core.String> buildUnnamed7593() => [
      'foo',
      'foo',
    ];

void checkUnnamed7593(core.List<core.String> o) {
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

core.int buildCounterDimension = 0;
api.Dimension buildDimension() {
  final o = api.Dimension();
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    o.histogramBuckets = buildUnnamed7593();
    o.name = 'foo';
  }
  buildCounterDimension--;
  return o;
}

void checkDimension(api.Dimension o) {
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    checkUnnamed7593(o.histogramBuckets!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterDimension--;
}

core.List<core.String> buildUnnamed7594() => [
      'foo',
      'foo',
    ];

void checkUnnamed7594(core.List<core.String> o) {
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

core.int buildCounterDimensionFilter = 0;
api.DimensionFilter buildDimensionFilter() {
  final o = api.DimensionFilter();
  buildCounterDimensionFilter++;
  if (buildCounterDimensionFilter < 3) {
    o.caseSensitive = true;
    o.dimensionName = 'foo';
    o.expressions = buildUnnamed7594();
    o.not = true;
    o.operator = 'foo';
  }
  buildCounterDimensionFilter--;
  return o;
}

void checkDimensionFilter(api.DimensionFilter o) {
  buildCounterDimensionFilter++;
  if (buildCounterDimensionFilter < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    unittest.expect(
      o.dimensionName!,
      unittest.equals('foo'),
    );
    checkUnnamed7594(o.expressions!);
    unittest.expect(o.not!, unittest.isTrue);
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
  }
  buildCounterDimensionFilter--;
}

core.List<api.DimensionFilter> buildUnnamed7595() => [
      buildDimensionFilter(),
      buildDimensionFilter(),
    ];

void checkUnnamed7595(core.List<api.DimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionFilter(o[0]);
  checkDimensionFilter(o[1]);
}

core.int buildCounterDimensionFilterClause = 0;
api.DimensionFilterClause buildDimensionFilterClause() {
  final o = api.DimensionFilterClause();
  buildCounterDimensionFilterClause++;
  if (buildCounterDimensionFilterClause < 3) {
    o.filters = buildUnnamed7595();
    o.operator = 'foo';
  }
  buildCounterDimensionFilterClause--;
  return o;
}

void checkDimensionFilterClause(api.DimensionFilterClause o) {
  buildCounterDimensionFilterClause++;
  if (buildCounterDimensionFilterClause < 3) {
    checkUnnamed7595(o.filters!);
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
  }
  buildCounterDimensionFilterClause--;
}

core.int buildCounterDynamicSegment = 0;
api.DynamicSegment buildDynamicSegment() {
  final o = api.DynamicSegment();
  buildCounterDynamicSegment++;
  if (buildCounterDynamicSegment < 3) {
    o.name = 'foo';
    o.sessionSegment = buildSegmentDefinition();
    o.userSegment = buildSegmentDefinition();
  }
  buildCounterDynamicSegment--;
  return o;
}

void checkDynamicSegment(api.DynamicSegment o) {
  buildCounterDynamicSegment++;
  if (buildCounterDynamicSegment < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSegmentDefinition(o.sessionSegment!);
    checkSegmentDefinition(o.userSegment!);
  }
  buildCounterDynamicSegment--;
}

core.List<api.ProductData> buildUnnamed7596() => [
      buildProductData(),
      buildProductData(),
    ];

void checkUnnamed7596(core.List<api.ProductData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductData(o[0]);
  checkProductData(o[1]);
}

core.int buildCounterEcommerceData = 0;
api.EcommerceData buildEcommerceData() {
  final o = api.EcommerceData();
  buildCounterEcommerceData++;
  if (buildCounterEcommerceData < 3) {
    o.actionType = 'foo';
    o.ecommerceType = 'foo';
    o.products = buildUnnamed7596();
    o.transaction = buildTransactionData();
  }
  buildCounterEcommerceData--;
  return o;
}

void checkEcommerceData(api.EcommerceData o) {
  buildCounterEcommerceData++;
  if (buildCounterEcommerceData < 3) {
    unittest.expect(
      o.actionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ecommerceType!,
      unittest.equals('foo'),
    );
    checkUnnamed7596(o.products!);
    checkTransactionData(o.transaction!);
  }
  buildCounterEcommerceData--;
}

core.int buildCounterEventData = 0;
api.EventData buildEventData() {
  final o = api.EventData();
  buildCounterEventData++;
  if (buildCounterEventData < 3) {
    o.eventAction = 'foo';
    o.eventCategory = 'foo';
    o.eventCount = 'foo';
    o.eventLabel = 'foo';
    o.eventValue = 'foo';
  }
  buildCounterEventData--;
  return o;
}

void checkEventData(api.EventData o) {
  buildCounterEventData++;
  if (buildCounterEventData < 3) {
    unittest.expect(
      o.eventAction!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventCategory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventData--;
}

core.List<api.ReportRequest> buildUnnamed7597() => [
      buildReportRequest(),
      buildReportRequest(),
    ];

void checkUnnamed7597(core.List<api.ReportRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRequest(o[0]);
  checkReportRequest(o[1]);
}

core.int buildCounterGetReportsRequest = 0;
api.GetReportsRequest buildGetReportsRequest() {
  final o = api.GetReportsRequest();
  buildCounterGetReportsRequest++;
  if (buildCounterGetReportsRequest < 3) {
    o.reportRequests = buildUnnamed7597();
    o.useResourceQuotas = true;
  }
  buildCounterGetReportsRequest--;
  return o;
}

void checkGetReportsRequest(api.GetReportsRequest o) {
  buildCounterGetReportsRequest++;
  if (buildCounterGetReportsRequest < 3) {
    checkUnnamed7597(o.reportRequests!);
    unittest.expect(o.useResourceQuotas!, unittest.isTrue);
  }
  buildCounterGetReportsRequest--;
}

core.List<api.Report> buildUnnamed7598() => [
      buildReport(),
      buildReport(),
    ];

void checkUnnamed7598(core.List<api.Report> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReport(o[0]);
  checkReport(o[1]);
}

core.int buildCounterGetReportsResponse = 0;
api.GetReportsResponse buildGetReportsResponse() {
  final o = api.GetReportsResponse();
  buildCounterGetReportsResponse++;
  if (buildCounterGetReportsResponse < 3) {
    o.queryCost = 42;
    o.reports = buildUnnamed7598();
    o.resourceQuotasRemaining = buildResourceQuotasRemaining();
  }
  buildCounterGetReportsResponse--;
  return o;
}

void checkGetReportsResponse(api.GetReportsResponse o) {
  buildCounterGetReportsResponse++;
  if (buildCounterGetReportsResponse < 3) {
    unittest.expect(
      o.queryCost!,
      unittest.equals(42),
    );
    checkUnnamed7598(o.reports!);
    checkResourceQuotasRemaining(o.resourceQuotasRemaining!);
  }
  buildCounterGetReportsResponse--;
}

core.int buildCounterGoalData = 0;
api.GoalData buildGoalData() {
  final o = api.GoalData();
  buildCounterGoalData++;
  if (buildCounterGoalData < 3) {
    o.goalCompletionLocation = 'foo';
    o.goalCompletions = 'foo';
    o.goalIndex = 42;
    o.goalName = 'foo';
    o.goalPreviousStep1 = 'foo';
    o.goalPreviousStep2 = 'foo';
    o.goalPreviousStep3 = 'foo';
    o.goalValue = 42.0;
  }
  buildCounterGoalData--;
  return o;
}

void checkGoalData(api.GoalData o) {
  buildCounterGoalData++;
  if (buildCounterGoalData < 3) {
    unittest.expect(
      o.goalCompletionLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.goalCompletions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.goalIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.goalName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.goalPreviousStep1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.goalPreviousStep2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.goalPreviousStep3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.goalValue!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoalData--;
}

core.List<api.GoalData> buildUnnamed7599() => [
      buildGoalData(),
      buildGoalData(),
    ];

void checkUnnamed7599(core.List<api.GoalData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoalData(o[0]);
  checkGoalData(o[1]);
}

core.int buildCounterGoalSetData = 0;
api.GoalSetData buildGoalSetData() {
  final o = api.GoalSetData();
  buildCounterGoalSetData++;
  if (buildCounterGoalSetData < 3) {
    o.goals = buildUnnamed7599();
  }
  buildCounterGoalSetData--;
  return o;
}

void checkGoalSetData(api.GoalSetData o) {
  buildCounterGoalSetData++;
  if (buildCounterGoalSetData < 3) {
    checkUnnamed7599(o.goals!);
  }
  buildCounterGoalSetData--;
}

core.int buildCounterMetric = 0;
api.Metric buildMetric() {
  final o = api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.alias = 'foo';
    o.expression = 'foo';
    o.formattingType = 'foo';
  }
  buildCounterMetric--;
  return o;
}

void checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    unittest.expect(
      o.alias!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formattingType!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetric--;
}

core.int buildCounterMetricFilter = 0;
api.MetricFilter buildMetricFilter() {
  final o = api.MetricFilter();
  buildCounterMetricFilter++;
  if (buildCounterMetricFilter < 3) {
    o.comparisonValue = 'foo';
    o.metricName = 'foo';
    o.not = true;
    o.operator = 'foo';
  }
  buildCounterMetricFilter--;
  return o;
}

void checkMetricFilter(api.MetricFilter o) {
  buildCounterMetricFilter++;
  if (buildCounterMetricFilter < 3) {
    unittest.expect(
      o.comparisonValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metricName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.not!, unittest.isTrue);
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricFilter--;
}

core.List<api.MetricFilter> buildUnnamed7600() => [
      buildMetricFilter(),
      buildMetricFilter(),
    ];

void checkUnnamed7600(core.List<api.MetricFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricFilter(o[0]);
  checkMetricFilter(o[1]);
}

core.int buildCounterMetricFilterClause = 0;
api.MetricFilterClause buildMetricFilterClause() {
  final o = api.MetricFilterClause();
  buildCounterMetricFilterClause++;
  if (buildCounterMetricFilterClause < 3) {
    o.filters = buildUnnamed7600();
    o.operator = 'foo';
  }
  buildCounterMetricFilterClause--;
  return o;
}

void checkMetricFilterClause(api.MetricFilterClause o) {
  buildCounterMetricFilterClause++;
  if (buildCounterMetricFilterClause < 3) {
    checkUnnamed7600(o.filters!);
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricFilterClause--;
}

core.List<api.MetricHeaderEntry> buildUnnamed7601() => [
      buildMetricHeaderEntry(),
      buildMetricHeaderEntry(),
    ];

void checkUnnamed7601(core.List<api.MetricHeaderEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricHeaderEntry(o[0]);
  checkMetricHeaderEntry(o[1]);
}

core.List<api.PivotHeader> buildUnnamed7602() => [
      buildPivotHeader(),
      buildPivotHeader(),
    ];

void checkUnnamed7602(core.List<api.PivotHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotHeader(o[0]);
  checkPivotHeader(o[1]);
}

core.int buildCounterMetricHeader = 0;
api.MetricHeader buildMetricHeader() {
  final o = api.MetricHeader();
  buildCounterMetricHeader++;
  if (buildCounterMetricHeader < 3) {
    o.metricHeaderEntries = buildUnnamed7601();
    o.pivotHeaders = buildUnnamed7602();
  }
  buildCounterMetricHeader--;
  return o;
}

void checkMetricHeader(api.MetricHeader o) {
  buildCounterMetricHeader++;
  if (buildCounterMetricHeader < 3) {
    checkUnnamed7601(o.metricHeaderEntries!);
    checkUnnamed7602(o.pivotHeaders!);
  }
  buildCounterMetricHeader--;
}

core.int buildCounterMetricHeaderEntry = 0;
api.MetricHeaderEntry buildMetricHeaderEntry() {
  final o = api.MetricHeaderEntry();
  buildCounterMetricHeaderEntry++;
  if (buildCounterMetricHeaderEntry < 3) {
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterMetricHeaderEntry--;
  return o;
}

void checkMetricHeaderEntry(api.MetricHeaderEntry o) {
  buildCounterMetricHeaderEntry++;
  if (buildCounterMetricHeaderEntry < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricHeaderEntry--;
}

core.List<api.SegmentFilterClause> buildUnnamed7603() => [
      buildSegmentFilterClause(),
      buildSegmentFilterClause(),
    ];

void checkUnnamed7603(core.List<api.SegmentFilterClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegmentFilterClause(o[0]);
  checkSegmentFilterClause(o[1]);
}

core.int buildCounterOrFiltersForSegment = 0;
api.OrFiltersForSegment buildOrFiltersForSegment() {
  final o = api.OrFiltersForSegment();
  buildCounterOrFiltersForSegment++;
  if (buildCounterOrFiltersForSegment < 3) {
    o.segmentFilterClauses = buildUnnamed7603();
  }
  buildCounterOrFiltersForSegment--;
  return o;
}

void checkOrFiltersForSegment(api.OrFiltersForSegment o) {
  buildCounterOrFiltersForSegment++;
  if (buildCounterOrFiltersForSegment < 3) {
    checkUnnamed7603(o.segmentFilterClauses!);
  }
  buildCounterOrFiltersForSegment--;
}

core.int buildCounterOrderBy = 0;
api.OrderBy buildOrderBy() {
  final o = api.OrderBy();
  buildCounterOrderBy++;
  if (buildCounterOrderBy < 3) {
    o.fieldName = 'foo';
    o.orderType = 'foo';
    o.sortOrder = 'foo';
  }
  buildCounterOrderBy--;
  return o;
}

void checkOrderBy(api.OrderBy o) {
  buildCounterOrderBy++;
  if (buildCounterOrderBy < 3) {
    unittest.expect(
      o.fieldName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sortOrder!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderBy--;
}

core.int buildCounterPageviewData = 0;
api.PageviewData buildPageviewData() {
  final o = api.PageviewData();
  buildCounterPageviewData++;
  if (buildCounterPageviewData < 3) {
    o.pagePath = 'foo';
    o.pageTitle = 'foo';
  }
  buildCounterPageviewData--;
  return o;
}

void checkPageviewData(api.PageviewData o) {
  buildCounterPageviewData++;
  if (buildCounterPageviewData < 3) {
    unittest.expect(
      o.pagePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageTitle!,
      unittest.equals('foo'),
    );
  }
  buildCounterPageviewData--;
}

core.List<api.DimensionFilterClause> buildUnnamed7604() => [
      buildDimensionFilterClause(),
      buildDimensionFilterClause(),
    ];

void checkUnnamed7604(core.List<api.DimensionFilterClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionFilterClause(o[0]);
  checkDimensionFilterClause(o[1]);
}

core.List<api.Dimension> buildUnnamed7605() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed7605(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed7606() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed7606(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterPivot = 0;
api.Pivot buildPivot() {
  final o = api.Pivot();
  buildCounterPivot++;
  if (buildCounterPivot < 3) {
    o.dimensionFilterClauses = buildUnnamed7604();
    o.dimensions = buildUnnamed7605();
    o.maxGroupCount = 42;
    o.metrics = buildUnnamed7606();
    o.startGroup = 42;
  }
  buildCounterPivot--;
  return o;
}

void checkPivot(api.Pivot o) {
  buildCounterPivot++;
  if (buildCounterPivot < 3) {
    checkUnnamed7604(o.dimensionFilterClauses!);
    checkUnnamed7605(o.dimensions!);
    unittest.expect(
      o.maxGroupCount!,
      unittest.equals(42),
    );
    checkUnnamed7606(o.metrics!);
    unittest.expect(
      o.startGroup!,
      unittest.equals(42),
    );
  }
  buildCounterPivot--;
}

core.List<api.PivotHeaderEntry> buildUnnamed7607() => [
      buildPivotHeaderEntry(),
      buildPivotHeaderEntry(),
    ];

void checkUnnamed7607(core.List<api.PivotHeaderEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotHeaderEntry(o[0]);
  checkPivotHeaderEntry(o[1]);
}

core.int buildCounterPivotHeader = 0;
api.PivotHeader buildPivotHeader() {
  final o = api.PivotHeader();
  buildCounterPivotHeader++;
  if (buildCounterPivotHeader < 3) {
    o.pivotHeaderEntries = buildUnnamed7607();
    o.totalPivotGroupsCount = 42;
  }
  buildCounterPivotHeader--;
  return o;
}

void checkPivotHeader(api.PivotHeader o) {
  buildCounterPivotHeader++;
  if (buildCounterPivotHeader < 3) {
    checkUnnamed7607(o.pivotHeaderEntries!);
    unittest.expect(
      o.totalPivotGroupsCount!,
      unittest.equals(42),
    );
  }
  buildCounterPivotHeader--;
}

core.List<core.String> buildUnnamed7608() => [
      'foo',
      'foo',
    ];

void checkUnnamed7608(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7609() => [
      'foo',
      'foo',
    ];

void checkUnnamed7609(core.List<core.String> o) {
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

core.int buildCounterPivotHeaderEntry = 0;
api.PivotHeaderEntry buildPivotHeaderEntry() {
  final o = api.PivotHeaderEntry();
  buildCounterPivotHeaderEntry++;
  if (buildCounterPivotHeaderEntry < 3) {
    o.dimensionNames = buildUnnamed7608();
    o.dimensionValues = buildUnnamed7609();
    o.metric = buildMetricHeaderEntry();
  }
  buildCounterPivotHeaderEntry--;
  return o;
}

void checkPivotHeaderEntry(api.PivotHeaderEntry o) {
  buildCounterPivotHeaderEntry++;
  if (buildCounterPivotHeaderEntry < 3) {
    checkUnnamed7608(o.dimensionNames!);
    checkUnnamed7609(o.dimensionValues!);
    checkMetricHeaderEntry(o.metric!);
  }
  buildCounterPivotHeaderEntry--;
}

core.List<core.String> buildUnnamed7610() => [
      'foo',
      'foo',
    ];

void checkUnnamed7610(core.List<core.String> o) {
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

core.int buildCounterPivotValueRegion = 0;
api.PivotValueRegion buildPivotValueRegion() {
  final o = api.PivotValueRegion();
  buildCounterPivotValueRegion++;
  if (buildCounterPivotValueRegion < 3) {
    o.values = buildUnnamed7610();
  }
  buildCounterPivotValueRegion--;
  return o;
}

void checkPivotValueRegion(api.PivotValueRegion o) {
  buildCounterPivotValueRegion++;
  if (buildCounterPivotValueRegion < 3) {
    checkUnnamed7610(o.values!);
  }
  buildCounterPivotValueRegion--;
}

core.int buildCounterProductData = 0;
api.ProductData buildProductData() {
  final o = api.ProductData();
  buildCounterProductData++;
  if (buildCounterProductData < 3) {
    o.itemRevenue = 42.0;
    o.productName = 'foo';
    o.productQuantity = 'foo';
    o.productSku = 'foo';
  }
  buildCounterProductData--;
  return o;
}

void checkProductData(api.ProductData o) {
  buildCounterProductData++;
  if (buildCounterProductData < 3) {
    unittest.expect(
      o.itemRevenue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.productName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productQuantity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productSku!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductData--;
}

core.int buildCounterReport = 0;
api.Report buildReport() {
  final o = api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.columnHeader = buildColumnHeader();
    o.data = buildReportData();
    o.nextPageToken = 'foo';
  }
  buildCounterReport--;
  return o;
}

void checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    checkColumnHeader(o.columnHeader!);
    checkReportData(o.data!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterReport--;
}

core.List<api.DateRangeValues> buildUnnamed7611() => [
      buildDateRangeValues(),
      buildDateRangeValues(),
    ];

void checkUnnamed7611(core.List<api.DateRangeValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRangeValues(o[0]);
  checkDateRangeValues(o[1]);
}

core.List<api.DateRangeValues> buildUnnamed7612() => [
      buildDateRangeValues(),
      buildDateRangeValues(),
    ];

void checkUnnamed7612(core.List<api.DateRangeValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRangeValues(o[0]);
  checkDateRangeValues(o[1]);
}

core.List<api.ReportRow> buildUnnamed7613() => [
      buildReportRow(),
      buildReportRow(),
    ];

void checkUnnamed7613(core.List<api.ReportRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRow(o[0]);
  checkReportRow(o[1]);
}

core.List<core.String> buildUnnamed7614() => [
      'foo',
      'foo',
    ];

void checkUnnamed7614(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7615() => [
      'foo',
      'foo',
    ];

void checkUnnamed7615(core.List<core.String> o) {
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

core.List<api.DateRangeValues> buildUnnamed7616() => [
      buildDateRangeValues(),
      buildDateRangeValues(),
    ];

void checkUnnamed7616(core.List<api.DateRangeValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRangeValues(o[0]);
  checkDateRangeValues(o[1]);
}

core.int buildCounterReportData = 0;
api.ReportData buildReportData() {
  final o = api.ReportData();
  buildCounterReportData++;
  if (buildCounterReportData < 3) {
    o.dataLastRefreshed = 'foo';
    o.isDataGolden = true;
    o.maximums = buildUnnamed7611();
    o.minimums = buildUnnamed7612();
    o.rowCount = 42;
    o.rows = buildUnnamed7613();
    o.samplesReadCounts = buildUnnamed7614();
    o.samplingSpaceSizes = buildUnnamed7615();
    o.totals = buildUnnamed7616();
  }
  buildCounterReportData--;
  return o;
}

void checkReportData(api.ReportData o) {
  buildCounterReportData++;
  if (buildCounterReportData < 3) {
    unittest.expect(
      o.dataLastRefreshed!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDataGolden!, unittest.isTrue);
    checkUnnamed7611(o.maximums!);
    checkUnnamed7612(o.minimums!);
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
    checkUnnamed7613(o.rows!);
    checkUnnamed7614(o.samplesReadCounts!);
    checkUnnamed7615(o.samplingSpaceSizes!);
    checkUnnamed7616(o.totals!);
  }
  buildCounterReportData--;
}

core.List<api.DateRange> buildUnnamed7617() => [
      buildDateRange(),
      buildDateRange(),
    ];

void checkUnnamed7617(core.List<api.DateRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRange(o[0]);
  checkDateRange(o[1]);
}

core.List<api.DimensionFilterClause> buildUnnamed7618() => [
      buildDimensionFilterClause(),
      buildDimensionFilterClause(),
    ];

void checkUnnamed7618(core.List<api.DimensionFilterClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionFilterClause(o[0]);
  checkDimensionFilterClause(o[1]);
}

core.List<api.Dimension> buildUnnamed7619() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed7619(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.MetricFilterClause> buildUnnamed7620() => [
      buildMetricFilterClause(),
      buildMetricFilterClause(),
    ];

void checkUnnamed7620(core.List<api.MetricFilterClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricFilterClause(o[0]);
  checkMetricFilterClause(o[1]);
}

core.List<api.Metric> buildUnnamed7621() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed7621(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.OrderBy> buildUnnamed7622() => [
      buildOrderBy(),
      buildOrderBy(),
    ];

void checkUnnamed7622(core.List<api.OrderBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderBy(o[0]);
  checkOrderBy(o[1]);
}

core.List<api.Pivot> buildUnnamed7623() => [
      buildPivot(),
      buildPivot(),
    ];

void checkUnnamed7623(core.List<api.Pivot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivot(o[0]);
  checkPivot(o[1]);
}

core.List<api.Segment> buildUnnamed7624() => [
      buildSegment(),
      buildSegment(),
    ];

void checkUnnamed7624(core.List<api.Segment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegment(o[0]);
  checkSegment(o[1]);
}

core.int buildCounterReportRequest = 0;
api.ReportRequest buildReportRequest() {
  final o = api.ReportRequest();
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    o.cohortGroup = buildCohortGroup();
    o.dateRanges = buildUnnamed7617();
    o.dimensionFilterClauses = buildUnnamed7618();
    o.dimensions = buildUnnamed7619();
    o.filtersExpression = 'foo';
    o.hideTotals = true;
    o.hideValueRanges = true;
    o.includeEmptyRows = true;
    o.metricFilterClauses = buildUnnamed7620();
    o.metrics = buildUnnamed7621();
    o.orderBys = buildUnnamed7622();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.pivots = buildUnnamed7623();
    o.samplingLevel = 'foo';
    o.segments = buildUnnamed7624();
    o.viewId = 'foo';
  }
  buildCounterReportRequest--;
  return o;
}

void checkReportRequest(api.ReportRequest o) {
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    checkCohortGroup(o.cohortGroup!);
    checkUnnamed7617(o.dateRanges!);
    checkUnnamed7618(o.dimensionFilterClauses!);
    checkUnnamed7619(o.dimensions!);
    unittest.expect(
      o.filtersExpression!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hideTotals!, unittest.isTrue);
    unittest.expect(o.hideValueRanges!, unittest.isTrue);
    unittest.expect(o.includeEmptyRows!, unittest.isTrue);
    checkUnnamed7620(o.metricFilterClauses!);
    checkUnnamed7621(o.metrics!);
    checkUnnamed7622(o.orderBys!);
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7623(o.pivots!);
    unittest.expect(
      o.samplingLevel!,
      unittest.equals('foo'),
    );
    checkUnnamed7624(o.segments!);
    unittest.expect(
      o.viewId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportRequest--;
}

core.List<core.String> buildUnnamed7625() => [
      'foo',
      'foo',
    ];

void checkUnnamed7625(core.List<core.String> o) {
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

core.List<api.DateRangeValues> buildUnnamed7626() => [
      buildDateRangeValues(),
      buildDateRangeValues(),
    ];

void checkUnnamed7626(core.List<api.DateRangeValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRangeValues(o[0]);
  checkDateRangeValues(o[1]);
}

core.int buildCounterReportRow = 0;
api.ReportRow buildReportRow() {
  final o = api.ReportRow();
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    o.dimensions = buildUnnamed7625();
    o.metrics = buildUnnamed7626();
  }
  buildCounterReportRow--;
  return o;
}

void checkReportRow(api.ReportRow o) {
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    checkUnnamed7625(o.dimensions!);
    checkUnnamed7626(o.metrics!);
  }
  buildCounterReportRow--;
}

core.int buildCounterResourceQuotasRemaining = 0;
api.ResourceQuotasRemaining buildResourceQuotasRemaining() {
  final o = api.ResourceQuotasRemaining();
  buildCounterResourceQuotasRemaining++;
  if (buildCounterResourceQuotasRemaining < 3) {
    o.dailyQuotaTokensRemaining = 42;
    o.hourlyQuotaTokensRemaining = 42;
  }
  buildCounterResourceQuotasRemaining--;
  return o;
}

void checkResourceQuotasRemaining(api.ResourceQuotasRemaining o) {
  buildCounterResourceQuotasRemaining++;
  if (buildCounterResourceQuotasRemaining < 3) {
    unittest.expect(
      o.dailyQuotaTokensRemaining!,
      unittest.equals(42),
    );
    unittest.expect(
      o.hourlyQuotaTokensRemaining!,
      unittest.equals(42),
    );
  }
  buildCounterResourceQuotasRemaining--;
}

core.int buildCounterScreenviewData = 0;
api.ScreenviewData buildScreenviewData() {
  final o = api.ScreenviewData();
  buildCounterScreenviewData++;
  if (buildCounterScreenviewData < 3) {
    o.appName = 'foo';
    o.mobileDeviceBranding = 'foo';
    o.mobileDeviceModel = 'foo';
    o.screenName = 'foo';
  }
  buildCounterScreenviewData--;
  return o;
}

void checkScreenviewData(api.ScreenviewData o) {
  buildCounterScreenviewData++;
  if (buildCounterScreenviewData < 3) {
    unittest.expect(
      o.appName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mobileDeviceBranding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mobileDeviceModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.screenName!,
      unittest.equals('foo'),
    );
  }
  buildCounterScreenviewData--;
}

core.List<core.String> buildUnnamed7627() => [
      'foo',
      'foo',
    ];

void checkUnnamed7627(core.List<core.String> o) {
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

core.int buildCounterSearchUserActivityRequest = 0;
api.SearchUserActivityRequest buildSearchUserActivityRequest() {
  final o = api.SearchUserActivityRequest();
  buildCounterSearchUserActivityRequest++;
  if (buildCounterSearchUserActivityRequest < 3) {
    o.activityTypes = buildUnnamed7627();
    o.dateRange = buildDateRange();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.user = buildUser();
    o.viewId = 'foo';
  }
  buildCounterSearchUserActivityRequest--;
  return o;
}

void checkSearchUserActivityRequest(api.SearchUserActivityRequest o) {
  buildCounterSearchUserActivityRequest++;
  if (buildCounterSearchUserActivityRequest < 3) {
    checkUnnamed7627(o.activityTypes!);
    checkDateRange(o.dateRange!);
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    checkUser(o.user!);
    unittest.expect(
      o.viewId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchUserActivityRequest--;
}

core.List<api.UserActivitySession> buildUnnamed7628() => [
      buildUserActivitySession(),
      buildUserActivitySession(),
    ];

void checkUnnamed7628(core.List<api.UserActivitySession> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserActivitySession(o[0]);
  checkUserActivitySession(o[1]);
}

core.int buildCounterSearchUserActivityResponse = 0;
api.SearchUserActivityResponse buildSearchUserActivityResponse() {
  final o = api.SearchUserActivityResponse();
  buildCounterSearchUserActivityResponse++;
  if (buildCounterSearchUserActivityResponse < 3) {
    o.nextPageToken = 'foo';
    o.sampleRate = 42.0;
    o.sessions = buildUnnamed7628();
    o.totalRows = 42;
  }
  buildCounterSearchUserActivityResponse--;
  return o;
}

void checkSearchUserActivityResponse(api.SearchUserActivityResponse o) {
  buildCounterSearchUserActivityResponse++;
  if (buildCounterSearchUserActivityResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sampleRate!,
      unittest.equals(42.0),
    );
    checkUnnamed7628(o.sessions!);
    unittest.expect(
      o.totalRows!,
      unittest.equals(42),
    );
  }
  buildCounterSearchUserActivityResponse--;
}

core.int buildCounterSegment = 0;
api.Segment buildSegment() {
  final o = api.Segment();
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    o.dynamicSegment = buildDynamicSegment();
    o.segmentId = 'foo';
  }
  buildCounterSegment--;
  return o;
}

void checkSegment(api.Segment o) {
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    checkDynamicSegment(o.dynamicSegment!);
    unittest.expect(
      o.segmentId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSegment--;
}

core.List<api.SegmentFilter> buildUnnamed7629() => [
      buildSegmentFilter(),
      buildSegmentFilter(),
    ];

void checkUnnamed7629(core.List<api.SegmentFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegmentFilter(o[0]);
  checkSegmentFilter(o[1]);
}

core.int buildCounterSegmentDefinition = 0;
api.SegmentDefinition buildSegmentDefinition() {
  final o = api.SegmentDefinition();
  buildCounterSegmentDefinition++;
  if (buildCounterSegmentDefinition < 3) {
    o.segmentFilters = buildUnnamed7629();
  }
  buildCounterSegmentDefinition--;
  return o;
}

void checkSegmentDefinition(api.SegmentDefinition o) {
  buildCounterSegmentDefinition++;
  if (buildCounterSegmentDefinition < 3) {
    checkUnnamed7629(o.segmentFilters!);
  }
  buildCounterSegmentDefinition--;
}

core.List<core.String> buildUnnamed7630() => [
      'foo',
      'foo',
    ];

void checkUnnamed7630(core.List<core.String> o) {
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

core.int buildCounterSegmentDimensionFilter = 0;
api.SegmentDimensionFilter buildSegmentDimensionFilter() {
  final o = api.SegmentDimensionFilter();
  buildCounterSegmentDimensionFilter++;
  if (buildCounterSegmentDimensionFilter < 3) {
    o.caseSensitive = true;
    o.dimensionName = 'foo';
    o.expressions = buildUnnamed7630();
    o.maxComparisonValue = 'foo';
    o.minComparisonValue = 'foo';
    o.operator = 'foo';
  }
  buildCounterSegmentDimensionFilter--;
  return o;
}

void checkSegmentDimensionFilter(api.SegmentDimensionFilter o) {
  buildCounterSegmentDimensionFilter++;
  if (buildCounterSegmentDimensionFilter < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    unittest.expect(
      o.dimensionName!,
      unittest.equals('foo'),
    );
    checkUnnamed7630(o.expressions!);
    unittest.expect(
      o.maxComparisonValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minComparisonValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
  }
  buildCounterSegmentDimensionFilter--;
}

core.int buildCounterSegmentFilter = 0;
api.SegmentFilter buildSegmentFilter() {
  final o = api.SegmentFilter();
  buildCounterSegmentFilter++;
  if (buildCounterSegmentFilter < 3) {
    o.not = true;
    o.sequenceSegment = buildSequenceSegment();
    o.simpleSegment = buildSimpleSegment();
  }
  buildCounterSegmentFilter--;
  return o;
}

void checkSegmentFilter(api.SegmentFilter o) {
  buildCounterSegmentFilter++;
  if (buildCounterSegmentFilter < 3) {
    unittest.expect(o.not!, unittest.isTrue);
    checkSequenceSegment(o.sequenceSegment!);
    checkSimpleSegment(o.simpleSegment!);
  }
  buildCounterSegmentFilter--;
}

core.int buildCounterSegmentFilterClause = 0;
api.SegmentFilterClause buildSegmentFilterClause() {
  final o = api.SegmentFilterClause();
  buildCounterSegmentFilterClause++;
  if (buildCounterSegmentFilterClause < 3) {
    o.dimensionFilter = buildSegmentDimensionFilter();
    o.metricFilter = buildSegmentMetricFilter();
    o.not = true;
  }
  buildCounterSegmentFilterClause--;
  return o;
}

void checkSegmentFilterClause(api.SegmentFilterClause o) {
  buildCounterSegmentFilterClause++;
  if (buildCounterSegmentFilterClause < 3) {
    checkSegmentDimensionFilter(o.dimensionFilter!);
    checkSegmentMetricFilter(o.metricFilter!);
    unittest.expect(o.not!, unittest.isTrue);
  }
  buildCounterSegmentFilterClause--;
}

core.int buildCounterSegmentMetricFilter = 0;
api.SegmentMetricFilter buildSegmentMetricFilter() {
  final o = api.SegmentMetricFilter();
  buildCounterSegmentMetricFilter++;
  if (buildCounterSegmentMetricFilter < 3) {
    o.comparisonValue = 'foo';
    o.maxComparisonValue = 'foo';
    o.metricName = 'foo';
    o.operator = 'foo';
    o.scope = 'foo';
  }
  buildCounterSegmentMetricFilter--;
  return o;
}

void checkSegmentMetricFilter(api.SegmentMetricFilter o) {
  buildCounterSegmentMetricFilter++;
  if (buildCounterSegmentMetricFilter < 3) {
    unittest.expect(
      o.comparisonValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxComparisonValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metricName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
  }
  buildCounterSegmentMetricFilter--;
}

core.List<api.OrFiltersForSegment> buildUnnamed7631() => [
      buildOrFiltersForSegment(),
      buildOrFiltersForSegment(),
    ];

void checkUnnamed7631(core.List<api.OrFiltersForSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrFiltersForSegment(o[0]);
  checkOrFiltersForSegment(o[1]);
}

core.int buildCounterSegmentSequenceStep = 0;
api.SegmentSequenceStep buildSegmentSequenceStep() {
  final o = api.SegmentSequenceStep();
  buildCounterSegmentSequenceStep++;
  if (buildCounterSegmentSequenceStep < 3) {
    o.matchType = 'foo';
    o.orFiltersForSegment = buildUnnamed7631();
  }
  buildCounterSegmentSequenceStep--;
  return o;
}

void checkSegmentSequenceStep(api.SegmentSequenceStep o) {
  buildCounterSegmentSequenceStep++;
  if (buildCounterSegmentSequenceStep < 3) {
    unittest.expect(
      o.matchType!,
      unittest.equals('foo'),
    );
    checkUnnamed7631(o.orFiltersForSegment!);
  }
  buildCounterSegmentSequenceStep--;
}

core.List<api.SegmentSequenceStep> buildUnnamed7632() => [
      buildSegmentSequenceStep(),
      buildSegmentSequenceStep(),
    ];

void checkUnnamed7632(core.List<api.SegmentSequenceStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegmentSequenceStep(o[0]);
  checkSegmentSequenceStep(o[1]);
}

core.int buildCounterSequenceSegment = 0;
api.SequenceSegment buildSequenceSegment() {
  final o = api.SequenceSegment();
  buildCounterSequenceSegment++;
  if (buildCounterSequenceSegment < 3) {
    o.firstStepShouldMatchFirstHit = true;
    o.segmentSequenceSteps = buildUnnamed7632();
  }
  buildCounterSequenceSegment--;
  return o;
}

void checkSequenceSegment(api.SequenceSegment o) {
  buildCounterSequenceSegment++;
  if (buildCounterSequenceSegment < 3) {
    unittest.expect(o.firstStepShouldMatchFirstHit!, unittest.isTrue);
    checkUnnamed7632(o.segmentSequenceSteps!);
  }
  buildCounterSequenceSegment--;
}

core.List<api.OrFiltersForSegment> buildUnnamed7633() => [
      buildOrFiltersForSegment(),
      buildOrFiltersForSegment(),
    ];

void checkUnnamed7633(core.List<api.OrFiltersForSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrFiltersForSegment(o[0]);
  checkOrFiltersForSegment(o[1]);
}

core.int buildCounterSimpleSegment = 0;
api.SimpleSegment buildSimpleSegment() {
  final o = api.SimpleSegment();
  buildCounterSimpleSegment++;
  if (buildCounterSimpleSegment < 3) {
    o.orFiltersForSegment = buildUnnamed7633();
  }
  buildCounterSimpleSegment--;
  return o;
}

void checkSimpleSegment(api.SimpleSegment o) {
  buildCounterSimpleSegment++;
  if (buildCounterSimpleSegment < 3) {
    checkUnnamed7633(o.orFiltersForSegment!);
  }
  buildCounterSimpleSegment--;
}

core.int buildCounterTransactionData = 0;
api.TransactionData buildTransactionData() {
  final o = api.TransactionData();
  buildCounterTransactionData++;
  if (buildCounterTransactionData < 3) {
    o.transactionId = 'foo';
    o.transactionRevenue = 42.0;
    o.transactionShipping = 42.0;
    o.transactionTax = 42.0;
  }
  buildCounterTransactionData--;
  return o;
}

void checkTransactionData(api.TransactionData o) {
  buildCounterTransactionData++;
  if (buildCounterTransactionData < 3) {
    unittest.expect(
      o.transactionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transactionRevenue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.transactionShipping!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.transactionTax!,
      unittest.equals(42.0),
    );
  }
  buildCounterTransactionData--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  final o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.type = 'foo';
    o.userId = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUser--;
}

core.List<api.Activity> buildUnnamed7634() => [
      buildActivity(),
      buildActivity(),
    ];

void checkUnnamed7634(core.List<api.Activity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivity(o[0]);
  checkActivity(o[1]);
}

core.int buildCounterUserActivitySession = 0;
api.UserActivitySession buildUserActivitySession() {
  final o = api.UserActivitySession();
  buildCounterUserActivitySession++;
  if (buildCounterUserActivitySession < 3) {
    o.activities = buildUnnamed7634();
    o.dataSource = 'foo';
    o.deviceCategory = 'foo';
    o.platform = 'foo';
    o.sessionDate = 'foo';
    o.sessionId = 'foo';
  }
  buildCounterUserActivitySession--;
  return o;
}

void checkUserActivitySession(api.UserActivitySession o) {
  buildCounterUserActivitySession++;
  if (buildCounterUserActivitySession < 3) {
    checkUnnamed7634(o.activities!);
    unittest.expect(
      o.dataSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceCategory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platform!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sessionDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sessionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserActivitySession--;
}

void main() {
  unittest.group('obj-schema-Activity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Activity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkActivity(od);
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

  unittest.group('obj-schema-CohortGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCohortGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CohortGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCohortGroup(od);
    });
  });

  unittest.group('obj-schema-ColumnHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColumnHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ColumnHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkColumnHeader(od);
    });
  });

  unittest.group('obj-schema-CustomDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomDimension(od);
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

  unittest.group('obj-schema-DateRangeValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateRangeValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateRangeValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDateRangeValues(od);
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

  unittest.group('obj-schema-DimensionFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionFilter(od);
    });
  });

  unittest.group('obj-schema-DimensionFilterClause', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionFilterClause();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionFilterClause.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionFilterClause(od);
    });
  });

  unittest.group('obj-schema-DynamicSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDynamicSegment(od);
    });
  });

  unittest.group('obj-schema-EcommerceData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEcommerceData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EcommerceData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEcommerceData(od);
    });
  });

  unittest.group('obj-schema-EventData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EventData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEventData(od);
    });
  });

  unittest.group('obj-schema-GetReportsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetReportsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetReportsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetReportsRequest(od);
    });
  });

  unittest.group('obj-schema-GetReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetReportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetReportsResponse(od);
    });
  });

  unittest.group('obj-schema-GoalData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoalData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoalData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoalData(od);
    });
  });

  unittest.group('obj-schema-GoalSetData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoalSetData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoalSetData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoalSetData(od);
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

  unittest.group('obj-schema-MetricFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricFilter(od);
    });
  });

  unittest.group('obj-schema-MetricFilterClause', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricFilterClause();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricFilterClause.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricFilterClause(od);
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

  unittest.group('obj-schema-MetricHeaderEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricHeaderEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricHeaderEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricHeaderEntry(od);
    });
  });

  unittest.group('obj-schema-OrFiltersForSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrFiltersForSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrFiltersForSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrFiltersForSegment(od);
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

  unittest.group('obj-schema-PageviewData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageviewData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PageviewData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPageviewData(od);
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

  unittest.group('obj-schema-PivotHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PivotHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPivotHeader(od);
    });
  });

  unittest.group('obj-schema-PivotHeaderEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotHeaderEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PivotHeaderEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPivotHeaderEntry(od);
    });
  });

  unittest.group('obj-schema-PivotValueRegion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotValueRegion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PivotValueRegion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPivotValueRegion(od);
    });
  });

  unittest.group('obj-schema-ProductData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductData(od);
    });
  });

  unittest.group('obj-schema-Report', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Report.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReport(od);
    });
  });

  unittest.group('obj-schema-ReportData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ReportData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReportData(od);
    });
  });

  unittest.group('obj-schema-ReportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportRequest(od);
    });
  });

  unittest.group('obj-schema-ReportRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ReportRow.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReportRow(od);
    });
  });

  unittest.group('obj-schema-ResourceQuotasRemaining', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceQuotasRemaining();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceQuotasRemaining.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceQuotasRemaining(od);
    });
  });

  unittest.group('obj-schema-ScreenviewData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScreenviewData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScreenviewData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScreenviewData(od);
    });
  });

  unittest.group('obj-schema-SearchUserActivityRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchUserActivityRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchUserActivityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchUserActivityRequest(od);
    });
  });

  unittest.group('obj-schema-SearchUserActivityResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchUserActivityResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchUserActivityResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchUserActivityResponse(od);
    });
  });

  unittest.group('obj-schema-Segment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Segment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSegment(od);
    });
  });

  unittest.group('obj-schema-SegmentDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSegmentDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SegmentDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSegmentDefinition(od);
    });
  });

  unittest.group('obj-schema-SegmentDimensionFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSegmentDimensionFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SegmentDimensionFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSegmentDimensionFilter(od);
    });
  });

  unittest.group('obj-schema-SegmentFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSegmentFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SegmentFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSegmentFilter(od);
    });
  });

  unittest.group('obj-schema-SegmentFilterClause', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSegmentFilterClause();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SegmentFilterClause.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSegmentFilterClause(od);
    });
  });

  unittest.group('obj-schema-SegmentMetricFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSegmentMetricFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SegmentMetricFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSegmentMetricFilter(od);
    });
  });

  unittest.group('obj-schema-SegmentSequenceStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSegmentSequenceStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SegmentSequenceStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSegmentSequenceStep(od);
    });
  });

  unittest.group('obj-schema-SequenceSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSequenceSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SequenceSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSequenceSegment(od);
    });
  });

  unittest.group('obj-schema-SimpleSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSimpleSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SimpleSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSimpleSegment(od);
    });
  });

  unittest.group('obj-schema-TransactionData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransactionData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransactionData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransactionData(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od);
    });
  });

  unittest.group('obj-schema-UserActivitySession', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserActivitySession();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserActivitySession.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserActivitySession(od);
    });
  });

  unittest.group('resource-ReportsResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsReportingApi(mock).reports;
      final arg_request = buildGetReportsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetReportsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetReportsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('v4/reports:batchGet'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildGetReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_request, $fields: arg_$fields);
      checkGetReportsResponse(response as api.GetReportsResponse);
    });
  });

  unittest.group('resource-UserActivityResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsReportingApi(mock).userActivity;
      final arg_request = buildSearchUserActivityRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchUserActivityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchUserActivityRequest(obj);

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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('v4/userActivity:search'),
        );
        pathOffset += 22;

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
        final resp = convert.json.encode(buildSearchUserActivityResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_request, $fields: arg_$fields);
      checkSearchUserActivityResponse(
          response as api.SearchUserActivityResponse);
    });
  });
}
