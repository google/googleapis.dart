// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/monitoring/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAggregation = 0;
api.Aggregation buildAggregation() {
  final o = api.Aggregation();
  buildCounterAggregation++;
  if (buildCounterAggregation < 3) {
    o.alignmentPeriod = 'foo';
    o.crossSeriesReducer = 'foo';
    o.groupByFields = buildUnnamed0();
    o.perSeriesAligner = 'foo';
  }
  buildCounterAggregation--;
  return o;
}

void checkAggregation(api.Aggregation o) {
  buildCounterAggregation++;
  if (buildCounterAggregation < 3) {
    unittest.expect(o.alignmentPeriod!, unittest.equals('foo'));
    unittest.expect(o.crossSeriesReducer!, unittest.equals('foo'));
    checkUnnamed0(o.groupByFields!);
    unittest.expect(o.perSeriesAligner!, unittest.equals('foo'));
  }
  buildCounterAggregation--;
}

core.List<api.Parameter> buildUnnamed1() => [
  buildParameter(),
  buildParameter(),
];

void checkUnnamed1(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.int buildCounterAggregationFunction = 0;
api.AggregationFunction buildAggregationFunction() {
  final o = api.AggregationFunction();
  buildCounterAggregationFunction++;
  if (buildCounterAggregationFunction < 3) {
    o.parameters = buildUnnamed1();
    o.type = 'foo';
  }
  buildCounterAggregationFunction--;
  return o;
}

void checkAggregationFunction(api.AggregationFunction o) {
  buildCounterAggregationFunction++;
  if (buildCounterAggregationFunction < 3) {
    checkUnnamed1(o.parameters!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterAggregationFunction--;
}

core.int buildCounterAlertChart = 0;
api.AlertChart buildAlertChart() {
  final o = api.AlertChart();
  buildCounterAlertChart++;
  if (buildCounterAlertChart < 3) {
    o.name = 'foo';
  }
  buildCounterAlertChart--;
  return o;
}

void checkAlertChart(api.AlertChart o) {
  buildCounterAlertChart++;
  if (buildCounterAlertChart < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterAlertChart--;
}

core.int buildCounterAxis = 0;
api.Axis buildAxis() {
  final o = api.Axis();
  buildCounterAxis++;
  if (buildCounterAxis < 3) {
    o.label = 'foo';
    o.scale = 'foo';
  }
  buildCounterAxis--;
  return o;
}

void checkAxis(api.Axis o) {
  buildCounterAxis++;
  if (buildCounterAxis < 3) {
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.scale!, unittest.equals('foo'));
  }
  buildCounterAxis--;
}

core.int buildCounterBreakdown = 0;
api.Breakdown buildBreakdown() {
  final o = api.Breakdown();
  buildCounterBreakdown++;
  if (buildCounterBreakdown < 3) {
    o.aggregationFunction = buildAggregationFunction();
    o.column = 'foo';
    o.limit = 42;
    o.sortOrder = 'foo';
  }
  buildCounterBreakdown--;
  return o;
}

void checkBreakdown(api.Breakdown o) {
  buildCounterBreakdown++;
  if (buildCounterBreakdown < 3) {
    checkAggregationFunction(o.aggregationFunction!);
    unittest.expect(o.column!, unittest.equals('foo'));
    unittest.expect(o.limit!, unittest.equals(42));
    unittest.expect(o.sortOrder!, unittest.equals('foo'));
  }
  buildCounterBreakdown--;
}

core.int buildCounterChartOptions = 0;
api.ChartOptions buildChartOptions() {
  final o = api.ChartOptions();
  buildCounterChartOptions++;
  if (buildCounterChartOptions < 3) {
    o.displayHorizontal = true;
    o.mode = 'foo';
  }
  buildCounterChartOptions--;
  return o;
}

void checkChartOptions(api.ChartOptions o) {
  buildCounterChartOptions++;
  if (buildCounterChartOptions < 3) {
    unittest.expect(o.displayHorizontal!, unittest.isTrue);
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterChartOptions--;
}

core.int buildCounterCollapsibleGroup = 0;
api.CollapsibleGroup buildCollapsibleGroup() {
  final o = api.CollapsibleGroup();
  buildCounterCollapsibleGroup++;
  if (buildCounterCollapsibleGroup < 3) {
    o.collapsed = true;
  }
  buildCounterCollapsibleGroup--;
  return o;
}

void checkCollapsibleGroup(api.CollapsibleGroup o) {
  buildCounterCollapsibleGroup++;
  if (buildCounterCollapsibleGroup < 3) {
    unittest.expect(o.collapsed!, unittest.isTrue);
  }
  buildCounterCollapsibleGroup--;
}

core.List<api.Widget> buildUnnamed2() => [buildWidget(), buildWidget()];

void checkUnnamed2(core.List<api.Widget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWidget(o[0]);
  checkWidget(o[1]);
}

core.int buildCounterColumn = 0;
api.Column buildColumn() {
  final o = api.Column();
  buildCounterColumn++;
  if (buildCounterColumn < 3) {
    o.weight = 'foo';
    o.widgets = buildUnnamed2();
  }
  buildCounterColumn--;
  return o;
}

void checkColumn(api.Column o) {
  buildCounterColumn++;
  if (buildCounterColumn < 3) {
    unittest.expect(o.weight!, unittest.equals('foo'));
    checkUnnamed2(o.widgets!);
  }
  buildCounterColumn--;
}

core.List<api.Column> buildUnnamed3() => [buildColumn(), buildColumn()];

void checkUnnamed3(core.List<api.Column> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColumn(o[0]);
  checkColumn(o[1]);
}

core.int buildCounterColumnLayout = 0;
api.ColumnLayout buildColumnLayout() {
  final o = api.ColumnLayout();
  buildCounterColumnLayout++;
  if (buildCounterColumnLayout < 3) {
    o.columns = buildUnnamed3();
  }
  buildCounterColumnLayout--;
  return o;
}

void checkColumnLayout(api.ColumnLayout o) {
  buildCounterColumnLayout++;
  if (buildCounterColumnLayout < 3) {
    checkUnnamed3(o.columns!);
  }
  buildCounterColumnLayout--;
}

core.List<api.Threshold> buildUnnamed4() => [
  buildThreshold(),
  buildThreshold(),
];

void checkUnnamed4(core.List<api.Threshold> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreshold(o[0]);
  checkThreshold(o[1]);
}

core.int buildCounterColumnSettings = 0;
api.ColumnSettings buildColumnSettings() {
  final o = api.ColumnSettings();
  buildCounterColumnSettings++;
  if (buildCounterColumnSettings < 3) {
    o.alignment = 'foo';
    o.column = 'foo';
    o.displayName = 'foo';
    o.thresholds = buildUnnamed4();
    o.visible = true;
  }
  buildCounterColumnSettings--;
  return o;
}

void checkColumnSettings(api.ColumnSettings o) {
  buildCounterColumnSettings++;
  if (buildCounterColumnSettings < 3) {
    unittest.expect(o.alignment!, unittest.equals('foo'));
    unittest.expect(o.column!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed4(o.thresholds!);
    unittest.expect(o.visible!, unittest.isTrue);
  }
  buildCounterColumnSettings--;
}

core.int buildCounterColumnSortingOptions = 0;
api.ColumnSortingOptions buildColumnSortingOptions() {
  final o = api.ColumnSortingOptions();
  buildCounterColumnSortingOptions++;
  if (buildCounterColumnSortingOptions < 3) {
    o.column = 'foo';
    o.direction = 'foo';
  }
  buildCounterColumnSortingOptions--;
  return o;
}

void checkColumnSortingOptions(api.ColumnSortingOptions o) {
  buildCounterColumnSortingOptions++;
  if (buildCounterColumnSortingOptions < 3) {
    unittest.expect(o.column!, unittest.equals('foo'));
    unittest.expect(o.direction!, unittest.equals('foo'));
  }
  buildCounterColumnSortingOptions--;
}

core.List<api.DashboardFilter> buildUnnamed5() => [
  buildDashboardFilter(),
  buildDashboardFilter(),
];

void checkUnnamed5(core.List<api.DashboardFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDashboardFilter(o[0]);
  checkDashboardFilter(o[1]);
}

core.Map<core.String, core.String> buildUnnamed6() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed6(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterDashboard = 0;
api.Dashboard buildDashboard() {
  final o = api.Dashboard();
  buildCounterDashboard++;
  if (buildCounterDashboard < 3) {
    o.annotations = buildDashboardAnnotations();
    o.columnLayout = buildColumnLayout();
    o.dashboardFilters = buildUnnamed5();
    o.displayName = 'foo';
    o.etag = 'foo';
    o.gridLayout = buildGridLayout();
    o.labels = buildUnnamed6();
    o.mosaicLayout = buildMosaicLayout();
    o.name = 'foo';
    o.rowLayout = buildRowLayout();
  }
  buildCounterDashboard--;
  return o;
}

void checkDashboard(api.Dashboard o) {
  buildCounterDashboard++;
  if (buildCounterDashboard < 3) {
    checkDashboardAnnotations(o.annotations!);
    checkColumnLayout(o.columnLayout!);
    checkUnnamed5(o.dashboardFilters!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkGridLayout(o.gridLayout!);
    checkUnnamed6(o.labels!);
    checkMosaicLayout(o.mosaicLayout!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkRowLayout(o.rowLayout!);
  }
  buildCounterDashboard--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.EventAnnotation> buildUnnamed8() => [
  buildEventAnnotation(),
  buildEventAnnotation(),
];

void checkUnnamed8(core.List<api.EventAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventAnnotation(o[0]);
  checkEventAnnotation(o[1]);
}

core.int buildCounterDashboardAnnotations = 0;
api.DashboardAnnotations buildDashboardAnnotations() {
  final o = api.DashboardAnnotations();
  buildCounterDashboardAnnotations++;
  if (buildCounterDashboardAnnotations < 3) {
    o.defaultResourceNames = buildUnnamed7();
    o.eventAnnotations = buildUnnamed8();
  }
  buildCounterDashboardAnnotations--;
  return o;
}

void checkDashboardAnnotations(api.DashboardAnnotations o) {
  buildCounterDashboardAnnotations++;
  if (buildCounterDashboardAnnotations < 3) {
    checkUnnamed7(o.defaultResourceNames!);
    checkUnnamed8(o.eventAnnotations!);
  }
  buildCounterDashboardAnnotations--;
}

core.int buildCounterDashboardFilter = 0;
api.DashboardFilter buildDashboardFilter() {
  final o = api.DashboardFilter();
  buildCounterDashboardFilter++;
  if (buildCounterDashboardFilter < 3) {
    o.filterType = 'foo';
    o.labelKey = 'foo';
    o.stringArray = buildStringArray();
    o.stringArrayValue = buildStringArray();
    o.stringValue = 'foo';
    o.templateVariable = 'foo';
    o.timeSeriesQuery = buildTimeSeriesQuery();
    o.valueType = 'foo';
  }
  buildCounterDashboardFilter--;
  return o;
}

void checkDashboardFilter(api.DashboardFilter o) {
  buildCounterDashboardFilter++;
  if (buildCounterDashboardFilter < 3) {
    unittest.expect(o.filterType!, unittest.equals('foo'));
    unittest.expect(o.labelKey!, unittest.equals('foo'));
    checkStringArray(o.stringArray!);
    checkStringArray(o.stringArrayValue!);
    unittest.expect(o.stringValue!, unittest.equals('foo'));
    unittest.expect(o.templateVariable!, unittest.equals('foo'));
    checkTimeSeriesQuery(o.timeSeriesQuery!);
    unittest.expect(o.valueType!, unittest.equals('foo'));
  }
  buildCounterDashboardFilter--;
}

core.List<api.Breakdown> buildUnnamed9() => [
  buildBreakdown(),
  buildBreakdown(),
];

void checkUnnamed9(core.List<api.Breakdown> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBreakdown(o[0]);
  checkBreakdown(o[1]);
}

core.List<api.Dimension> buildUnnamed10() => [
  buildDimension(),
  buildDimension(),
];

void checkUnnamed10(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Measure> buildUnnamed11() => [buildMeasure(), buildMeasure()];

void checkUnnamed11(core.List<api.Measure> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMeasure(o[0]);
  checkMeasure(o[1]);
}

core.List<api.ColumnSortingOptions> buildUnnamed12() => [
  buildColumnSortingOptions(),
  buildColumnSortingOptions(),
];

void checkUnnamed12(core.List<api.ColumnSortingOptions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColumnSortingOptions(o[0]);
  checkColumnSortingOptions(o[1]);
}

core.int buildCounterDataSet = 0;
api.DataSet buildDataSet() {
  final o = api.DataSet();
  buildCounterDataSet++;
  if (buildCounterDataSet < 3) {
    o.breakdowns = buildUnnamed9();
    o.dimensions = buildUnnamed10();
    o.legendTemplate = 'foo';
    o.measures = buildUnnamed11();
    o.minAlignmentPeriod = 'foo';
    o.plotType = 'foo';
    o.sort = buildUnnamed12();
    o.targetAxis = 'foo';
    o.timeSeriesQuery = buildTimeSeriesQuery();
  }
  buildCounterDataSet--;
  return o;
}

void checkDataSet(api.DataSet o) {
  buildCounterDataSet++;
  if (buildCounterDataSet < 3) {
    checkUnnamed9(o.breakdowns!);
    checkUnnamed10(o.dimensions!);
    unittest.expect(o.legendTemplate!, unittest.equals('foo'));
    checkUnnamed11(o.measures!);
    unittest.expect(o.minAlignmentPeriod!, unittest.equals('foo'));
    unittest.expect(o.plotType!, unittest.equals('foo'));
    checkUnnamed12(o.sort!);
    unittest.expect(o.targetAxis!, unittest.equals('foo'));
    checkTimeSeriesQuery(o.timeSeriesQuery!);
  }
  buildCounterDataSet--;
}

core.int buildCounterDimension = 0;
api.Dimension buildDimension() {
  final o = api.Dimension();
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    o.column = 'foo';
    o.columnType = 'foo';
    o.floatBinSize = 42.0;
    o.maxBinCount = 42;
    o.numericBinSize = 42;
    o.sortColumn = 'foo';
    o.sortOrder = 'foo';
    o.timeBinSize = 'foo';
  }
  buildCounterDimension--;
  return o;
}

void checkDimension(api.Dimension o) {
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    unittest.expect(o.column!, unittest.equals('foo'));
    unittest.expect(o.columnType!, unittest.equals('foo'));
    unittest.expect(o.floatBinSize!, unittest.equals(42.0));
    unittest.expect(o.maxBinCount!, unittest.equals(42));
    unittest.expect(o.numericBinSize!, unittest.equals(42));
    unittest.expect(o.sortColumn!, unittest.equals('foo'));
    unittest.expect(o.sortOrder!, unittest.equals('foo'));
    unittest.expect(o.timeBinSize!, unittest.equals('foo'));
  }
  buildCounterDimension--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterErrorReportingPanel = 0;
api.ErrorReportingPanel buildErrorReportingPanel() {
  final o = api.ErrorReportingPanel();
  buildCounterErrorReportingPanel++;
  if (buildCounterErrorReportingPanel < 3) {
    o.projectNames = buildUnnamed13();
    o.services = buildUnnamed14();
    o.versions = buildUnnamed15();
  }
  buildCounterErrorReportingPanel--;
  return o;
}

void checkErrorReportingPanel(api.ErrorReportingPanel o) {
  buildCounterErrorReportingPanel++;
  if (buildCounterErrorReportingPanel < 3) {
    checkUnnamed13(o.projectNames!);
    checkUnnamed14(o.services!);
    checkUnnamed15(o.versions!);
  }
  buildCounterErrorReportingPanel--;
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEventAnnotation = 0;
api.EventAnnotation buildEventAnnotation() {
  final o = api.EventAnnotation();
  buildCounterEventAnnotation++;
  if (buildCounterEventAnnotation < 3) {
    o.displayName = 'foo';
    o.enabled = true;
    o.eventType = 'foo';
    o.filter = 'foo';
    o.resourceNames = buildUnnamed16();
  }
  buildCounterEventAnnotation--;
  return o;
}

void checkEventAnnotation(api.EventAnnotation o) {
  buildCounterEventAnnotation++;
  if (buildCounterEventAnnotation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.eventType!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed16(o.resourceNames!);
  }
  buildCounterEventAnnotation--;
}

core.int buildCounterGaugeView = 0;
api.GaugeView buildGaugeView() {
  final o = api.GaugeView();
  buildCounterGaugeView++;
  if (buildCounterGaugeView < 3) {
    o.lowerBound = 42.0;
    o.upperBound = 42.0;
  }
  buildCounterGaugeView--;
  return o;
}

void checkGaugeView(api.GaugeView o) {
  buildCounterGaugeView++;
  if (buildCounterGaugeView < 3) {
    unittest.expect(o.lowerBound!, unittest.equals(42.0));
    unittest.expect(o.upperBound!, unittest.equals(42.0));
  }
  buildCounterGaugeView--;
}

core.List<api.Widget> buildUnnamed17() => [buildWidget(), buildWidget()];

void checkUnnamed17(core.List<api.Widget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWidget(o[0]);
  checkWidget(o[1]);
}

core.int buildCounterGridLayout = 0;
api.GridLayout buildGridLayout() {
  final o = api.GridLayout();
  buildCounterGridLayout++;
  if (buildCounterGridLayout < 3) {
    o.columns = 'foo';
    o.widgets = buildUnnamed17();
  }
  buildCounterGridLayout--;
  return o;
}

void checkGridLayout(api.GridLayout o) {
  buildCounterGridLayout++;
  if (buildCounterGridLayout < 3) {
    unittest.expect(o.columns!, unittest.equals('foo'));
    checkUnnamed17(o.widgets!);
  }
  buildCounterGridLayout--;
}

core.Map<core.String, core.Object?> buildUnnamed18() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed19() => [
  buildUnnamed18(),
  buildUnnamed18(),
];

void checkUnnamed19(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed18(o[0]);
  checkUnnamed18(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed19();
  }
  buildCounterHttpBody--;
  return o;
}

void checkHttpBody(api.HttpBody o) {
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    unittest.expect(o.contentType!, unittest.equals('foo'));
    unittest.expect(o.data!, unittest.equals('foo'));
    checkUnnamed19(o.extensions!);
  }
  buildCounterHttpBody--;
}

core.List<api.MonitoredResource> buildUnnamed20() => [
  buildMonitoredResource(),
  buildMonitoredResource(),
];

void checkUnnamed20(core.List<api.MonitoredResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResource(o[0]);
  checkMonitoredResource(o[1]);
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIncidentList = 0;
api.IncidentList buildIncidentList() {
  final o = api.IncidentList();
  buildCounterIncidentList++;
  if (buildCounterIncidentList < 3) {
    o.monitoredResources = buildUnnamed20();
    o.policyNames = buildUnnamed21();
  }
  buildCounterIncidentList--;
  return o;
}

void checkIncidentList(api.IncidentList o) {
  buildCounterIncidentList++;
  if (buildCounterIncidentList < 3) {
    checkUnnamed20(o.monitoredResources!);
    checkUnnamed21(o.policyNames!);
  }
  buildCounterIncidentList--;
}

core.int buildCounterInterval = 0;
api.Interval buildInterval() {
  final o = api.Interval();
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterInterval--;
  return o;
}

void checkInterval(api.Interval o) {
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterInterval--;
}

core.List<api.Dashboard> buildUnnamed22() => [
  buildDashboard(),
  buildDashboard(),
];

void checkUnnamed22(core.List<api.Dashboard> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDashboard(o[0]);
  checkDashboard(o[1]);
}

core.int buildCounterListDashboardsResponse = 0;
api.ListDashboardsResponse buildListDashboardsResponse() {
  final o = api.ListDashboardsResponse();
  buildCounterListDashboardsResponse++;
  if (buildCounterListDashboardsResponse < 3) {
    o.dashboards = buildUnnamed22();
    o.nextPageToken = 'foo';
  }
  buildCounterListDashboardsResponse--;
  return o;
}

void checkListDashboardsResponse(api.ListDashboardsResponse o) {
  buildCounterListDashboardsResponse++;
  if (buildCounterListDashboardsResponse < 3) {
    checkUnnamed22(o.dashboards!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDashboardsResponse--;
}

core.List<api.MetricsScope> buildUnnamed23() => [
  buildMetricsScope(),
  buildMetricsScope(),
];

void checkUnnamed23(core.List<api.MetricsScope> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricsScope(o[0]);
  checkMetricsScope(o[1]);
}

core.int buildCounterListMetricsScopesByMonitoredProjectResponse = 0;
api.ListMetricsScopesByMonitoredProjectResponse
buildListMetricsScopesByMonitoredProjectResponse() {
  final o = api.ListMetricsScopesByMonitoredProjectResponse();
  buildCounterListMetricsScopesByMonitoredProjectResponse++;
  if (buildCounterListMetricsScopesByMonitoredProjectResponse < 3) {
    o.metricsScopes = buildUnnamed23();
  }
  buildCounterListMetricsScopesByMonitoredProjectResponse--;
  return o;
}

void checkListMetricsScopesByMonitoredProjectResponse(
  api.ListMetricsScopesByMonitoredProjectResponse o,
) {
  buildCounterListMetricsScopesByMonitoredProjectResponse++;
  if (buildCounterListMetricsScopesByMonitoredProjectResponse < 3) {
    checkUnnamed23(o.metricsScopes!);
  }
  buildCounterListMetricsScopesByMonitoredProjectResponse--;
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLogsPanel = 0;
api.LogsPanel buildLogsPanel() {
  final o = api.LogsPanel();
  buildCounterLogsPanel++;
  if (buildCounterLogsPanel < 3) {
    o.filter = 'foo';
    o.resourceNames = buildUnnamed24();
  }
  buildCounterLogsPanel--;
  return o;
}

void checkLogsPanel(api.LogsPanel o) {
  buildCounterLogsPanel++;
  if (buildCounterLogsPanel < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed24(o.resourceNames!);
  }
  buildCounterLogsPanel--;
}

core.int buildCounterMeasure = 0;
api.Measure buildMeasure() {
  final o = api.Measure();
  buildCounterMeasure++;
  if (buildCounterMeasure < 3) {
    o.aggregationFunction = buildAggregationFunction();
    o.column = 'foo';
  }
  buildCounterMeasure--;
  return o;
}

void checkMeasure(api.Measure o) {
  buildCounterMeasure++;
  if (buildCounterMeasure < 3) {
    checkAggregationFunction(o.aggregationFunction!);
    unittest.expect(o.column!, unittest.equals('foo'));
  }
  buildCounterMeasure--;
}

core.List<api.MonitoredProject> buildUnnamed25() => [
  buildMonitoredProject(),
  buildMonitoredProject(),
];

void checkUnnamed25(core.List<api.MonitoredProject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredProject(o[0]);
  checkMonitoredProject(o[1]);
}

core.int buildCounterMetricsScope = 0;
api.MetricsScope buildMetricsScope() {
  final o = api.MetricsScope();
  buildCounterMetricsScope++;
  if (buildCounterMetricsScope < 3) {
    o.createTime = 'foo';
    o.monitoredProjects = buildUnnamed25();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMetricsScope--;
  return o;
}

void checkMetricsScope(api.MetricsScope o) {
  buildCounterMetricsScope++;
  if (buildCounterMetricsScope < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed25(o.monitoredProjects!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterMetricsScope--;
}

core.int buildCounterMonitoredProject = 0;
api.MonitoredProject buildMonitoredProject() {
  final o = api.MonitoredProject();
  buildCounterMonitoredProject++;
  if (buildCounterMonitoredProject < 3) {
    o.createTime = 'foo';
    o.isTombstoned = true;
    o.name = 'foo';
  }
  buildCounterMonitoredProject--;
  return o;
}

void checkMonitoredProject(api.MonitoredProject o) {
  buildCounterMonitoredProject++;
  if (buildCounterMonitoredProject < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.isTombstoned!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterMonitoredProject--;
}

core.Map<core.String, core.String> buildUnnamed26() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed26(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterMonitoredResource = 0;
api.MonitoredResource buildMonitoredResource() {
  final o = api.MonitoredResource();
  buildCounterMonitoredResource++;
  if (buildCounterMonitoredResource < 3) {
    o.labels = buildUnnamed26();
    o.type = 'foo';
  }
  buildCounterMonitoredResource--;
  return o;
}

void checkMonitoredResource(api.MonitoredResource o) {
  buildCounterMonitoredResource++;
  if (buildCounterMonitoredResource < 3) {
    checkUnnamed26(o.labels!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterMonitoredResource--;
}

core.List<api.Tile> buildUnnamed27() => [buildTile(), buildTile()];

void checkUnnamed27(core.List<api.Tile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTile(o[0]);
  checkTile(o[1]);
}

core.int buildCounterMosaicLayout = 0;
api.MosaicLayout buildMosaicLayout() {
  final o = api.MosaicLayout();
  buildCounterMosaicLayout++;
  if (buildCounterMosaicLayout < 3) {
    o.columns = 42;
    o.tiles = buildUnnamed27();
  }
  buildCounterMosaicLayout--;
  return o;
}

void checkMosaicLayout(api.MosaicLayout o) {
  buildCounterMosaicLayout++;
  if (buildCounterMosaicLayout < 3) {
    unittest.expect(o.columns!, unittest.equals(42));
    checkUnnamed27(o.tiles!);
  }
  buildCounterMosaicLayout--;
}

core.Map<core.String, core.Object?> buildUnnamed28() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed28(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed29() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed28();
    o.name = 'foo';
    o.response = buildUnnamed29();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed28(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed29(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOpsAnalyticsQuery = 0;
api.OpsAnalyticsQuery buildOpsAnalyticsQuery() {
  final o = api.OpsAnalyticsQuery();
  buildCounterOpsAnalyticsQuery++;
  if (buildCounterOpsAnalyticsQuery < 3) {
    o.sql = 'foo';
  }
  buildCounterOpsAnalyticsQuery--;
  return o;
}

void checkOpsAnalyticsQuery(api.OpsAnalyticsQuery o) {
  buildCounterOpsAnalyticsQuery++;
  if (buildCounterOpsAnalyticsQuery < 3) {
    unittest.expect(o.sql!, unittest.equals('foo'));
  }
  buildCounterOpsAnalyticsQuery--;
}

core.int buildCounterParameter = 0;
api.Parameter buildParameter() {
  final o = api.Parameter();
  buildCounterParameter++;
  if (buildCounterParameter < 3) {
    o.doubleValue = 42.0;
    o.intValue = 'foo';
  }
  buildCounterParameter--;
  return o;
}

void checkParameter(api.Parameter o) {
  buildCounterParameter++;
  if (buildCounterParameter < 3) {
    unittest.expect(o.doubleValue!, unittest.equals(42.0));
    unittest.expect(o.intValue!, unittest.equals('foo'));
  }
  buildCounterParameter--;
}

core.int buildCounterPickTimeSeriesFilter = 0;
api.PickTimeSeriesFilter buildPickTimeSeriesFilter() {
  final o = api.PickTimeSeriesFilter();
  buildCounterPickTimeSeriesFilter++;
  if (buildCounterPickTimeSeriesFilter < 3) {
    o.direction = 'foo';
    o.interval = buildInterval();
    o.numTimeSeries = 42;
    o.rankingMethod = 'foo';
  }
  buildCounterPickTimeSeriesFilter--;
  return o;
}

void checkPickTimeSeriesFilter(api.PickTimeSeriesFilter o) {
  buildCounterPickTimeSeriesFilter++;
  if (buildCounterPickTimeSeriesFilter < 3) {
    unittest.expect(o.direction!, unittest.equals('foo'));
    checkInterval(o.interval!);
    unittest.expect(o.numTimeSeries!, unittest.equals(42));
    unittest.expect(o.rankingMethod!, unittest.equals('foo'));
  }
  buildCounterPickTimeSeriesFilter--;
}

core.List<api.PieChartDataSet> buildUnnamed30() => [
  buildPieChartDataSet(),
  buildPieChartDataSet(),
];

void checkUnnamed30(core.List<api.PieChartDataSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPieChartDataSet(o[0]);
  checkPieChartDataSet(o[1]);
}

core.int buildCounterPieChart = 0;
api.PieChart buildPieChart() {
  final o = api.PieChart();
  buildCounterPieChart++;
  if (buildCounterPieChart < 3) {
    o.chartType = 'foo';
    o.dataSets = buildUnnamed30();
    o.showLabels = true;
  }
  buildCounterPieChart--;
  return o;
}

void checkPieChart(api.PieChart o) {
  buildCounterPieChart++;
  if (buildCounterPieChart < 3) {
    unittest.expect(o.chartType!, unittest.equals('foo'));
    checkUnnamed30(o.dataSets!);
    unittest.expect(o.showLabels!, unittest.isTrue);
  }
  buildCounterPieChart--;
}

core.List<api.Dimension> buildUnnamed31() => [
  buildDimension(),
  buildDimension(),
];

void checkUnnamed31(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Measure> buildUnnamed32() => [buildMeasure(), buildMeasure()];

void checkUnnamed32(core.List<api.Measure> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMeasure(o[0]);
  checkMeasure(o[1]);
}

core.int buildCounterPieChartDataSet = 0;
api.PieChartDataSet buildPieChartDataSet() {
  final o = api.PieChartDataSet();
  buildCounterPieChartDataSet++;
  if (buildCounterPieChartDataSet < 3) {
    o.dimensions = buildUnnamed31();
    o.measures = buildUnnamed32();
    o.minAlignmentPeriod = 'foo';
    o.sliceNameTemplate = 'foo';
    o.timeSeriesQuery = buildTimeSeriesQuery();
  }
  buildCounterPieChartDataSet--;
  return o;
}

void checkPieChartDataSet(api.PieChartDataSet o) {
  buildCounterPieChartDataSet++;
  if (buildCounterPieChartDataSet < 3) {
    checkUnnamed31(o.dimensions!);
    checkUnnamed32(o.measures!);
    unittest.expect(o.minAlignmentPeriod!, unittest.equals('foo'));
    unittest.expect(o.sliceNameTemplate!, unittest.equals('foo'));
    checkTimeSeriesQuery(o.timeSeriesQuery!);
  }
  buildCounterPieChartDataSet--;
}

core.int buildCounterQueryExemplarsRequest = 0;
api.QueryExemplarsRequest buildQueryExemplarsRequest() {
  final o = api.QueryExemplarsRequest();
  buildCounterQueryExemplarsRequest++;
  if (buildCounterQueryExemplarsRequest < 3) {
    o.end = 'foo';
    o.query = 'foo';
    o.start = 'foo';
  }
  buildCounterQueryExemplarsRequest--;
  return o;
}

void checkQueryExemplarsRequest(api.QueryExemplarsRequest o) {
  buildCounterQueryExemplarsRequest++;
  if (buildCounterQueryExemplarsRequest < 3) {
    unittest.expect(o.end!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
    unittest.expect(o.start!, unittest.equals('foo'));
  }
  buildCounterQueryExemplarsRequest--;
}

core.int buildCounterQueryInstantRequest = 0;
api.QueryInstantRequest buildQueryInstantRequest() {
  final o = api.QueryInstantRequest();
  buildCounterQueryInstantRequest++;
  if (buildCounterQueryInstantRequest < 3) {
    o.query = 'foo';
    o.time = 'foo';
    o.timeout = 'foo';
  }
  buildCounterQueryInstantRequest--;
  return o;
}

void checkQueryInstantRequest(api.QueryInstantRequest o) {
  buildCounterQueryInstantRequest++;
  if (buildCounterQueryInstantRequest < 3) {
    unittest.expect(o.query!, unittest.equals('foo'));
    unittest.expect(o.time!, unittest.equals('foo'));
    unittest.expect(o.timeout!, unittest.equals('foo'));
  }
  buildCounterQueryInstantRequest--;
}

core.int buildCounterQueryLabelsRequest = 0;
api.QueryLabelsRequest buildQueryLabelsRequest() {
  final o = api.QueryLabelsRequest();
  buildCounterQueryLabelsRequest++;
  if (buildCounterQueryLabelsRequest < 3) {
    o.end = 'foo';
    o.match = 'foo';
    o.start = 'foo';
  }
  buildCounterQueryLabelsRequest--;
  return o;
}

void checkQueryLabelsRequest(api.QueryLabelsRequest o) {
  buildCounterQueryLabelsRequest++;
  if (buildCounterQueryLabelsRequest < 3) {
    unittest.expect(o.end!, unittest.equals('foo'));
    unittest.expect(o.match!, unittest.equals('foo'));
    unittest.expect(o.start!, unittest.equals('foo'));
  }
  buildCounterQueryLabelsRequest--;
}

core.int buildCounterQueryRangeRequest = 0;
api.QueryRangeRequest buildQueryRangeRequest() {
  final o = api.QueryRangeRequest();
  buildCounterQueryRangeRequest++;
  if (buildCounterQueryRangeRequest < 3) {
    o.end = 'foo';
    o.query = 'foo';
    o.start = 'foo';
    o.step = 'foo';
    o.timeout = 'foo';
  }
  buildCounterQueryRangeRequest--;
  return o;
}

void checkQueryRangeRequest(api.QueryRangeRequest o) {
  buildCounterQueryRangeRequest++;
  if (buildCounterQueryRangeRequest < 3) {
    unittest.expect(o.end!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
    unittest.expect(o.start!, unittest.equals('foo'));
    unittest.expect(o.step!, unittest.equals('foo'));
    unittest.expect(o.timeout!, unittest.equals('foo'));
  }
  buildCounterQueryRangeRequest--;
}

core.int buildCounterQuerySeriesRequest = 0;
api.QuerySeriesRequest buildQuerySeriesRequest() {
  final o = api.QuerySeriesRequest();
  buildCounterQuerySeriesRequest++;
  if (buildCounterQuerySeriesRequest < 3) {
    o.end = 'foo';
    o.start = 'foo';
  }
  buildCounterQuerySeriesRequest--;
  return o;
}

void checkQuerySeriesRequest(api.QuerySeriesRequest o) {
  buildCounterQuerySeriesRequest++;
  if (buildCounterQuerySeriesRequest < 3) {
    unittest.expect(o.end!, unittest.equals('foo'));
    unittest.expect(o.start!, unittest.equals('foo'));
  }
  buildCounterQuerySeriesRequest--;
}

core.int buildCounterRatioPart = 0;
api.RatioPart buildRatioPart() {
  final o = api.RatioPart();
  buildCounterRatioPart++;
  if (buildCounterRatioPart < 3) {
    o.aggregation = buildAggregation();
    o.filter = 'foo';
  }
  buildCounterRatioPart--;
  return o;
}

void checkRatioPart(api.RatioPart o) {
  buildCounterRatioPart++;
  if (buildCounterRatioPart < 3) {
    checkAggregation(o.aggregation!);
    unittest.expect(o.filter!, unittest.equals('foo'));
  }
  buildCounterRatioPart--;
}

core.List<api.Widget> buildUnnamed33() => [buildWidget(), buildWidget()];

void checkUnnamed33(core.List<api.Widget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWidget(o[0]);
  checkWidget(o[1]);
}

core.int buildCounterRow = 0;
api.Row buildRow() {
  final o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.weight = 'foo';
    o.widgets = buildUnnamed33();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    unittest.expect(o.weight!, unittest.equals('foo'));
    checkUnnamed33(o.widgets!);
  }
  buildCounterRow--;
}

core.List<api.Row> buildUnnamed34() => [buildRow(), buildRow()];

void checkUnnamed34(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterRowLayout = 0;
api.RowLayout buildRowLayout() {
  final o = api.RowLayout();
  buildCounterRowLayout++;
  if (buildCounterRowLayout < 3) {
    o.rows = buildUnnamed34();
  }
  buildCounterRowLayout--;
  return o;
}

void checkRowLayout(api.RowLayout o) {
  buildCounterRowLayout++;
  if (buildCounterRowLayout < 3) {
    checkUnnamed34(o.rows!);
  }
  buildCounterRowLayout--;
}

core.List<api.Breakdown> buildUnnamed35() => [
  buildBreakdown(),
  buildBreakdown(),
];

void checkUnnamed35(core.List<api.Breakdown> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBreakdown(o[0]);
  checkBreakdown(o[1]);
}

core.List<api.Dimension> buildUnnamed36() => [
  buildDimension(),
  buildDimension(),
];

void checkUnnamed36(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Measure> buildUnnamed37() => [buildMeasure(), buildMeasure()];

void checkUnnamed37(core.List<api.Measure> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMeasure(o[0]);
  checkMeasure(o[1]);
}

core.List<api.Threshold> buildUnnamed38() => [
  buildThreshold(),
  buildThreshold(),
];

void checkUnnamed38(core.List<api.Threshold> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreshold(o[0]);
  checkThreshold(o[1]);
}

core.int buildCounterScorecard = 0;
api.Scorecard buildScorecard() {
  final o = api.Scorecard();
  buildCounterScorecard++;
  if (buildCounterScorecard < 3) {
    o.blankView = buildEmpty();
    o.breakdowns = buildUnnamed35();
    o.dimensions = buildUnnamed36();
    o.gaugeView = buildGaugeView();
    o.measures = buildUnnamed37();
    o.sparkChartView = buildSparkChartView();
    o.thresholds = buildUnnamed38();
    o.timeSeriesQuery = buildTimeSeriesQuery();
  }
  buildCounterScorecard--;
  return o;
}

void checkScorecard(api.Scorecard o) {
  buildCounterScorecard++;
  if (buildCounterScorecard < 3) {
    checkEmpty(o.blankView!);
    checkUnnamed35(o.breakdowns!);
    checkUnnamed36(o.dimensions!);
    checkGaugeView(o.gaugeView!);
    checkUnnamed37(o.measures!);
    checkSparkChartView(o.sparkChartView!);
    checkUnnamed38(o.thresholds!);
    checkTimeSeriesQuery(o.timeSeriesQuery!);
  }
  buildCounterScorecard--;
}

core.int buildCounterSectionHeader = 0;
api.SectionHeader buildSectionHeader() {
  final o = api.SectionHeader();
  buildCounterSectionHeader++;
  if (buildCounterSectionHeader < 3) {
    o.dividerBelow = true;
    o.subtitle = 'foo';
  }
  buildCounterSectionHeader--;
  return o;
}

void checkSectionHeader(api.SectionHeader o) {
  buildCounterSectionHeader++;
  if (buildCounterSectionHeader < 3) {
    unittest.expect(o.dividerBelow!, unittest.isTrue);
    unittest.expect(o.subtitle!, unittest.equals('foo'));
  }
  buildCounterSectionHeader--;
}

core.int buildCounterSingleViewGroup = 0;
api.SingleViewGroup buildSingleViewGroup() {
  final o = api.SingleViewGroup();
  buildCounterSingleViewGroup++;
  if (buildCounterSingleViewGroup < 3) {
    o.displayType = 'foo';
  }
  buildCounterSingleViewGroup--;
  return o;
}

void checkSingleViewGroup(api.SingleViewGroup o) {
  buildCounterSingleViewGroup++;
  if (buildCounterSingleViewGroup < 3) {
    unittest.expect(o.displayType!, unittest.equals('foo'));
  }
  buildCounterSingleViewGroup--;
}

core.int buildCounterSparkChartView = 0;
api.SparkChartView buildSparkChartView() {
  final o = api.SparkChartView();
  buildCounterSparkChartView++;
  if (buildCounterSparkChartView < 3) {
    o.minAlignmentPeriod = 'foo';
    o.sparkChartType = 'foo';
  }
  buildCounterSparkChartView--;
  return o;
}

void checkSparkChartView(api.SparkChartView o) {
  buildCounterSparkChartView++;
  if (buildCounterSparkChartView < 3) {
    unittest.expect(o.minAlignmentPeriod!, unittest.equals('foo'));
    unittest.expect(o.sparkChartType!, unittest.equals('foo'));
  }
  buildCounterSparkChartView--;
}

core.int buildCounterStatisticalTimeSeriesFilter = 0;
api.StatisticalTimeSeriesFilter buildStatisticalTimeSeriesFilter() {
  final o = api.StatisticalTimeSeriesFilter();
  buildCounterStatisticalTimeSeriesFilter++;
  if (buildCounterStatisticalTimeSeriesFilter < 3) {
    o.numTimeSeries = 42;
    o.rankingMethod = 'foo';
  }
  buildCounterStatisticalTimeSeriesFilter--;
  return o;
}

void checkStatisticalTimeSeriesFilter(api.StatisticalTimeSeriesFilter o) {
  buildCounterStatisticalTimeSeriesFilter++;
  if (buildCounterStatisticalTimeSeriesFilter < 3) {
    unittest.expect(o.numTimeSeries!, unittest.equals(42));
    unittest.expect(o.rankingMethod!, unittest.equals('foo'));
  }
  buildCounterStatisticalTimeSeriesFilter--;
}

core.Map<core.String, core.Object?> buildUnnamed39() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed39(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed40() => [
  buildUnnamed39(),
  buildUnnamed39(),
];

void checkUnnamed40(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed39(o[0]);
  checkUnnamed39(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed40();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed40(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringArray = 0;
api.StringArray buildStringArray() {
  final o = api.StringArray();
  buildCounterStringArray++;
  if (buildCounterStringArray < 3) {
    o.values = buildUnnamed41();
  }
  buildCounterStringArray--;
  return o;
}

void checkStringArray(api.StringArray o) {
  buildCounterStringArray++;
  if (buildCounterStringArray < 3) {
    checkUnnamed41(o.values!);
  }
  buildCounterStringArray--;
}

core.int buildCounterTableDataSet = 0;
api.TableDataSet buildTableDataSet() {
  final o = api.TableDataSet();
  buildCounterTableDataSet++;
  if (buildCounterTableDataSet < 3) {
    o.minAlignmentPeriod = 'foo';
    o.tableDisplayOptions = buildTableDisplayOptions();
    o.tableTemplate = 'foo';
    o.timeSeriesQuery = buildTimeSeriesQuery();
  }
  buildCounterTableDataSet--;
  return o;
}

void checkTableDataSet(api.TableDataSet o) {
  buildCounterTableDataSet++;
  if (buildCounterTableDataSet < 3) {
    unittest.expect(o.minAlignmentPeriod!, unittest.equals('foo'));
    checkTableDisplayOptions(o.tableDisplayOptions!);
    unittest.expect(o.tableTemplate!, unittest.equals('foo'));
    checkTimeSeriesQuery(o.timeSeriesQuery!);
  }
  buildCounterTableDataSet--;
}

core.List<core.String> buildUnnamed42() => ['foo', 'foo'];

void checkUnnamed42(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTableDisplayOptions = 0;
api.TableDisplayOptions buildTableDisplayOptions() {
  final o = api.TableDisplayOptions();
  buildCounterTableDisplayOptions++;
  if (buildCounterTableDisplayOptions < 3) {
    o.shownColumns = buildUnnamed42();
  }
  buildCounterTableDisplayOptions--;
  return o;
}

void checkTableDisplayOptions(api.TableDisplayOptions o) {
  buildCounterTableDisplayOptions++;
  if (buildCounterTableDisplayOptions < 3) {
    checkUnnamed42(o.shownColumns!);
  }
  buildCounterTableDisplayOptions--;
}

core.int buildCounterTemplateVariableCondition = 0;
api.TemplateVariableCondition buildTemplateVariableCondition() {
  final o = api.TemplateVariableCondition();
  buildCounterTemplateVariableCondition++;
  if (buildCounterTemplateVariableCondition < 3) {
    o.comparator = 'foo';
    o.templateVariable = 'foo';
    o.templateVariableValue = 'foo';
  }
  buildCounterTemplateVariableCondition--;
  return o;
}

void checkTemplateVariableCondition(api.TemplateVariableCondition o) {
  buildCounterTemplateVariableCondition++;
  if (buildCounterTemplateVariableCondition < 3) {
    unittest.expect(o.comparator!, unittest.equals('foo'));
    unittest.expect(o.templateVariable!, unittest.equals('foo'));
    unittest.expect(o.templateVariableValue!, unittest.equals('foo'));
  }
  buildCounterTemplateVariableCondition--;
}

core.int buildCounterText = 0;
api.Text buildText() {
  final o = api.Text();
  buildCounterText++;
  if (buildCounterText < 3) {
    o.content = 'foo';
    o.format = 'foo';
    o.style = buildTextStyle();
  }
  buildCounterText--;
  return o;
}

void checkText(api.Text o) {
  buildCounterText++;
  if (buildCounterText < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.format!, unittest.equals('foo'));
    checkTextStyle(o.style!);
  }
  buildCounterText--;
}

core.int buildCounterTextStyle = 0;
api.TextStyle buildTextStyle() {
  final o = api.TextStyle();
  buildCounterTextStyle++;
  if (buildCounterTextStyle < 3) {
    o.backgroundColor = 'foo';
    o.fontSize = 'foo';
    o.horizontalAlignment = 'foo';
    o.padding = 'foo';
    o.pointerLocation = 'foo';
    o.textColor = 'foo';
    o.verticalAlignment = 'foo';
  }
  buildCounterTextStyle--;
  return o;
}

void checkTextStyle(api.TextStyle o) {
  buildCounterTextStyle++;
  if (buildCounterTextStyle < 3) {
    unittest.expect(o.backgroundColor!, unittest.equals('foo'));
    unittest.expect(o.fontSize!, unittest.equals('foo'));
    unittest.expect(o.horizontalAlignment!, unittest.equals('foo'));
    unittest.expect(o.padding!, unittest.equals('foo'));
    unittest.expect(o.pointerLocation!, unittest.equals('foo'));
    unittest.expect(o.textColor!, unittest.equals('foo'));
    unittest.expect(o.verticalAlignment!, unittest.equals('foo'));
  }
  buildCounterTextStyle--;
}

core.int buildCounterThreshold = 0;
api.Threshold buildThreshold() {
  final o = api.Threshold();
  buildCounterThreshold++;
  if (buildCounterThreshold < 3) {
    o.color = 'foo';
    o.direction = 'foo';
    o.label = 'foo';
    o.targetAxis = 'foo';
    o.value = 42.0;
  }
  buildCounterThreshold--;
  return o;
}

void checkThreshold(api.Threshold o) {
  buildCounterThreshold++;
  if (buildCounterThreshold < 3) {
    unittest.expect(o.color!, unittest.equals('foo'));
    unittest.expect(o.direction!, unittest.equals('foo'));
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.targetAxis!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals(42.0));
  }
  buildCounterThreshold--;
}

core.int buildCounterTile = 0;
api.Tile buildTile() {
  final o = api.Tile();
  buildCounterTile++;
  if (buildCounterTile < 3) {
    o.height = 42;
    o.widget = buildWidget();
    o.width = 42;
    o.xPos = 42;
    o.yPos = 42;
  }
  buildCounterTile--;
  return o;
}

void checkTile(api.Tile o) {
  buildCounterTile++;
  if (buildCounterTile < 3) {
    unittest.expect(o.height!, unittest.equals(42));
    checkWidget(o.widget!);
    unittest.expect(o.width!, unittest.equals(42));
    unittest.expect(o.xPos!, unittest.equals(42));
    unittest.expect(o.yPos!, unittest.equals(42));
  }
  buildCounterTile--;
}

core.int buildCounterTimeSeriesFilter = 0;
api.TimeSeriesFilter buildTimeSeriesFilter() {
  final o = api.TimeSeriesFilter();
  buildCounterTimeSeriesFilter++;
  if (buildCounterTimeSeriesFilter < 3) {
    o.aggregation = buildAggregation();
    o.filter = 'foo';
    o.pickTimeSeriesFilter = buildPickTimeSeriesFilter();
    o.secondaryAggregation = buildAggregation();
    o.statisticalTimeSeriesFilter = buildStatisticalTimeSeriesFilter();
  }
  buildCounterTimeSeriesFilter--;
  return o;
}

void checkTimeSeriesFilter(api.TimeSeriesFilter o) {
  buildCounterTimeSeriesFilter++;
  if (buildCounterTimeSeriesFilter < 3) {
    checkAggregation(o.aggregation!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkPickTimeSeriesFilter(o.pickTimeSeriesFilter!);
    checkAggregation(o.secondaryAggregation!);
    checkStatisticalTimeSeriesFilter(o.statisticalTimeSeriesFilter!);
  }
  buildCounterTimeSeriesFilter--;
}

core.int buildCounterTimeSeriesFilterRatio = 0;
api.TimeSeriesFilterRatio buildTimeSeriesFilterRatio() {
  final o = api.TimeSeriesFilterRatio();
  buildCounterTimeSeriesFilterRatio++;
  if (buildCounterTimeSeriesFilterRatio < 3) {
    o.denominator = buildRatioPart();
    o.numerator = buildRatioPart();
    o.pickTimeSeriesFilter = buildPickTimeSeriesFilter();
    o.secondaryAggregation = buildAggregation();
    o.statisticalTimeSeriesFilter = buildStatisticalTimeSeriesFilter();
  }
  buildCounterTimeSeriesFilterRatio--;
  return o;
}

void checkTimeSeriesFilterRatio(api.TimeSeriesFilterRatio o) {
  buildCounterTimeSeriesFilterRatio++;
  if (buildCounterTimeSeriesFilterRatio < 3) {
    checkRatioPart(o.denominator!);
    checkRatioPart(o.numerator!);
    checkPickTimeSeriesFilter(o.pickTimeSeriesFilter!);
    checkAggregation(o.secondaryAggregation!);
    checkStatisticalTimeSeriesFilter(o.statisticalTimeSeriesFilter!);
  }
  buildCounterTimeSeriesFilterRatio--;
}

core.int buildCounterTimeSeriesQuery = 0;
api.TimeSeriesQuery buildTimeSeriesQuery() {
  final o = api.TimeSeriesQuery();
  buildCounterTimeSeriesQuery++;
  if (buildCounterTimeSeriesQuery < 3) {
    o.opsAnalyticsQuery = buildOpsAnalyticsQuery();
    o.outputFullDuration = true;
    o.prometheusQuery = 'foo';
    o.timeSeriesFilter = buildTimeSeriesFilter();
    o.timeSeriesFilterRatio = buildTimeSeriesFilterRatio();
    o.timeSeriesQueryLanguage = 'foo';
    o.unitOverride = 'foo';
  }
  buildCounterTimeSeriesQuery--;
  return o;
}

void checkTimeSeriesQuery(api.TimeSeriesQuery o) {
  buildCounterTimeSeriesQuery++;
  if (buildCounterTimeSeriesQuery < 3) {
    checkOpsAnalyticsQuery(o.opsAnalyticsQuery!);
    unittest.expect(o.outputFullDuration!, unittest.isTrue);
    unittest.expect(o.prometheusQuery!, unittest.equals('foo'));
    checkTimeSeriesFilter(o.timeSeriesFilter!);
    checkTimeSeriesFilterRatio(o.timeSeriesFilterRatio!);
    unittest.expect(o.timeSeriesQueryLanguage!, unittest.equals('foo'));
    unittest.expect(o.unitOverride!, unittest.equals('foo'));
  }
  buildCounterTimeSeriesQuery--;
}

core.List<api.ColumnSettings> buildUnnamed43() => [
  buildColumnSettings(),
  buildColumnSettings(),
];

void checkUnnamed43(core.List<api.ColumnSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColumnSettings(o[0]);
  checkColumnSettings(o[1]);
}

core.List<api.TableDataSet> buildUnnamed44() => [
  buildTableDataSet(),
  buildTableDataSet(),
];

void checkUnnamed44(core.List<api.TableDataSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableDataSet(o[0]);
  checkTableDataSet(o[1]);
}

core.int buildCounterTimeSeriesTable = 0;
api.TimeSeriesTable buildTimeSeriesTable() {
  final o = api.TimeSeriesTable();
  buildCounterTimeSeriesTable++;
  if (buildCounterTimeSeriesTable < 3) {
    o.columnSettings = buildUnnamed43();
    o.dataSets = buildUnnamed44();
    o.metricVisualization = 'foo';
  }
  buildCounterTimeSeriesTable--;
  return o;
}

void checkTimeSeriesTable(api.TimeSeriesTable o) {
  buildCounterTimeSeriesTable++;
  if (buildCounterTimeSeriesTable < 3) {
    checkUnnamed43(o.columnSettings!);
    checkUnnamed44(o.dataSets!);
    unittest.expect(o.metricVisualization!, unittest.equals('foo'));
  }
  buildCounterTimeSeriesTable--;
}

core.List<api.TreemapDataSet> buildUnnamed45() => [
  buildTreemapDataSet(),
  buildTreemapDataSet(),
];

void checkUnnamed45(core.List<api.TreemapDataSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTreemapDataSet(o[0]);
  checkTreemapDataSet(o[1]);
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTreemap = 0;
api.Treemap buildTreemap() {
  final o = api.Treemap();
  buildCounterTreemap++;
  if (buildCounterTreemap < 3) {
    o.dataSets = buildUnnamed45();
    o.treemapHierarchy = buildUnnamed46();
  }
  buildCounterTreemap--;
  return o;
}

void checkTreemap(api.Treemap o) {
  buildCounterTreemap++;
  if (buildCounterTreemap < 3) {
    checkUnnamed45(o.dataSets!);
    checkUnnamed46(o.treemapHierarchy!);
  }
  buildCounterTreemap--;
}

core.List<api.Breakdown> buildUnnamed47() => [
  buildBreakdown(),
  buildBreakdown(),
];

void checkUnnamed47(core.List<api.Breakdown> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBreakdown(o[0]);
  checkBreakdown(o[1]);
}

core.List<api.Measure> buildUnnamed48() => [buildMeasure(), buildMeasure()];

void checkUnnamed48(core.List<api.Measure> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMeasure(o[0]);
  checkMeasure(o[1]);
}

core.int buildCounterTreemapDataSet = 0;
api.TreemapDataSet buildTreemapDataSet() {
  final o = api.TreemapDataSet();
  buildCounterTreemapDataSet++;
  if (buildCounterTreemapDataSet < 3) {
    o.breakdowns = buildUnnamed47();
    o.measures = buildUnnamed48();
    o.timeSeriesQuery = buildTimeSeriesQuery();
  }
  buildCounterTreemapDataSet--;
  return o;
}

void checkTreemapDataSet(api.TreemapDataSet o) {
  buildCounterTreemapDataSet++;
  if (buildCounterTreemapDataSet < 3) {
    checkUnnamed47(o.breakdowns!);
    checkUnnamed48(o.measures!);
    checkTimeSeriesQuery(o.timeSeriesQuery!);
  }
  buildCounterTreemapDataSet--;
}

core.int buildCounterVisibilityCondition = 0;
api.VisibilityCondition buildVisibilityCondition() {
  final o = api.VisibilityCondition();
  buildCounterVisibilityCondition++;
  if (buildCounterVisibilityCondition < 3) {
    o.templateVariableCondition = buildTemplateVariableCondition();
  }
  buildCounterVisibilityCondition--;
  return o;
}

void checkVisibilityCondition(api.VisibilityCondition o) {
  buildCounterVisibilityCondition++;
  if (buildCounterVisibilityCondition < 3) {
    checkTemplateVariableCondition(o.templateVariableCondition!);
  }
  buildCounterVisibilityCondition--;
}

core.int buildCounterWidget = 0;
api.Widget buildWidget() {
  final o = api.Widget();
  buildCounterWidget++;
  if (buildCounterWidget < 3) {
    o.alertChart = buildAlertChart();
    o.blank = buildEmpty();
    o.collapsibleGroup = buildCollapsibleGroup();
    o.errorReportingPanel = buildErrorReportingPanel();
    o.id = 'foo';
    o.incidentList = buildIncidentList();
    o.logsPanel = buildLogsPanel();
    o.pieChart = buildPieChart();
    o.scorecard = buildScorecard();
    o.sectionHeader = buildSectionHeader();
    o.singleViewGroup = buildSingleViewGroup();
    o.text = buildText();
    o.timeSeriesTable = buildTimeSeriesTable();
    o.title = 'foo';
    o.treemap = buildTreemap();
    o.visibilityCondition = buildVisibilityCondition();
    o.xyChart = buildXyChart();
  }
  buildCounterWidget--;
  return o;
}

void checkWidget(api.Widget o) {
  buildCounterWidget++;
  if (buildCounterWidget < 3) {
    checkAlertChart(o.alertChart!);
    checkEmpty(o.blank!);
    checkCollapsibleGroup(o.collapsibleGroup!);
    checkErrorReportingPanel(o.errorReportingPanel!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkIncidentList(o.incidentList!);
    checkLogsPanel(o.logsPanel!);
    checkPieChart(o.pieChart!);
    checkScorecard(o.scorecard!);
    checkSectionHeader(o.sectionHeader!);
    checkSingleViewGroup(o.singleViewGroup!);
    checkText(o.text!);
    checkTimeSeriesTable(o.timeSeriesTable!);
    unittest.expect(o.title!, unittest.equals('foo'));
    checkTreemap(o.treemap!);
    checkVisibilityCondition(o.visibilityCondition!);
    checkXyChart(o.xyChart!);
  }
  buildCounterWidget--;
}

core.List<api.DataSet> buildUnnamed49() => [buildDataSet(), buildDataSet()];

void checkUnnamed49(core.List<api.DataSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSet(o[0]);
  checkDataSet(o[1]);
}

core.List<api.Threshold> buildUnnamed50() => [
  buildThreshold(),
  buildThreshold(),
];

void checkUnnamed50(core.List<api.Threshold> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreshold(o[0]);
  checkThreshold(o[1]);
}

core.int buildCounterXyChart = 0;
api.XyChart buildXyChart() {
  final o = api.XyChart();
  buildCounterXyChart++;
  if (buildCounterXyChart < 3) {
    o.chartOptions = buildChartOptions();
    o.dataSets = buildUnnamed49();
    o.thresholds = buildUnnamed50();
    o.timeshiftDuration = 'foo';
    o.xAxis = buildAxis();
    o.y2Axis = buildAxis();
    o.yAxis = buildAxis();
  }
  buildCounterXyChart--;
  return o;
}

void checkXyChart(api.XyChart o) {
  buildCounterXyChart++;
  if (buildCounterXyChart < 3) {
    checkChartOptions(o.chartOptions!);
    checkUnnamed49(o.dataSets!);
    checkUnnamed50(o.thresholds!);
    unittest.expect(o.timeshiftDuration!, unittest.equals('foo'));
    checkAxis(o.xAxis!);
    checkAxis(o.y2Axis!);
    checkAxis(o.yAxis!);
  }
  buildCounterXyChart--;
}

void main() {
  unittest.group('obj-schema-Aggregation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Aggregation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregation(od);
    });
  });

  unittest.group('obj-schema-AggregationFunction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationFunction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationFunction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregationFunction(od);
    });
  });

  unittest.group('obj-schema-AlertChart', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlertChart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AlertChart.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAlertChart(od);
    });
  });

  unittest.group('obj-schema-Axis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAxis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Axis.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAxis(od);
    });
  });

  unittest.group('obj-schema-Breakdown', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBreakdown();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Breakdown.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBreakdown(od);
    });
  });

  unittest.group('obj-schema-ChartOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChartOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChartOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChartOptions(od);
    });
  });

  unittest.group('obj-schema-CollapsibleGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCollapsibleGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CollapsibleGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCollapsibleGroup(od);
    });
  });

  unittest.group('obj-schema-Column', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColumn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Column.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkColumn(od);
    });
  });

  unittest.group('obj-schema-ColumnLayout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColumnLayout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ColumnLayout.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkColumnLayout(od);
    });
  });

  unittest.group('obj-schema-ColumnSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColumnSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ColumnSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkColumnSettings(od);
    });
  });

  unittest.group('obj-schema-ColumnSortingOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColumnSortingOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ColumnSortingOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkColumnSortingOptions(od);
    });
  });

  unittest.group('obj-schema-Dashboard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDashboard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Dashboard.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDashboard(od);
    });
  });

  unittest.group('obj-schema-DashboardAnnotations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDashboardAnnotations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DashboardAnnotations.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDashboardAnnotations(od);
    });
  });

  unittest.group('obj-schema-DashboardFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDashboardFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DashboardFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDashboardFilter(od);
    });
  });

  unittest.group('obj-schema-DataSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataSet(od);
    });
  });

  unittest.group('obj-schema-Dimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Dimension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDimension(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ErrorReportingPanel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorReportingPanel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ErrorReportingPanel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkErrorReportingPanel(od);
    });
  });

  unittest.group('obj-schema-EventAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventAnnotation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventAnnotation(od);
    });
  });

  unittest.group('obj-schema-GaugeView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGaugeView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GaugeView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGaugeView(od);
    });
  });

  unittest.group('obj-schema-GridLayout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGridLayout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GridLayout.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGridLayout(od);
    });
  });

  unittest.group('obj-schema-HttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpBody.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpBody(od);
    });
  });

  unittest.group('obj-schema-IncidentList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIncidentList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IncidentList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIncidentList(od);
    });
  });

  unittest.group('obj-schema-Interval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Interval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterval(od);
    });
  });

  unittest.group('obj-schema-ListDashboardsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDashboardsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDashboardsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDashboardsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMetricsScopesByMonitoredProjectResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMetricsScopesByMonitoredProjectResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMetricsScopesByMonitoredProjectResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMetricsScopesByMonitoredProjectResponse(od);
    });
  });

  unittest.group('obj-schema-LogsPanel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogsPanel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LogsPanel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLogsPanel(od);
    });
  });

  unittest.group('obj-schema-Measure', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMeasure();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Measure.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMeasure(od);
    });
  });

  unittest.group('obj-schema-MetricsScope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricsScope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricsScope.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetricsScope(od);
    });
  });

  unittest.group('obj-schema-MonitoredProject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoredProject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoredProject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMonitoredProject(od);
    });
  });

  unittest.group('obj-schema-MonitoredResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoredResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoredResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMonitoredResource(od);
    });
  });

  unittest.group('obj-schema-MosaicLayout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMosaicLayout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MosaicLayout.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMosaicLayout(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-OpsAnalyticsQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOpsAnalyticsQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OpsAnalyticsQuery.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOpsAnalyticsQuery(od);
    });
  });

  unittest.group('obj-schema-Parameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Parameter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParameter(od);
    });
  });

  unittest.group('obj-schema-PickTimeSeriesFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPickTimeSeriesFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PickTimeSeriesFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPickTimeSeriesFilter(od);
    });
  });

  unittest.group('obj-schema-PieChart', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPieChart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PieChart.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPieChart(od);
    });
  });

  unittest.group('obj-schema-PieChartDataSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPieChartDataSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PieChartDataSet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPieChartDataSet(od);
    });
  });

  unittest.group('obj-schema-QueryExemplarsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryExemplarsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryExemplarsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryExemplarsRequest(od);
    });
  });

  unittest.group('obj-schema-QueryInstantRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryInstantRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryInstantRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryInstantRequest(od);
    });
  });

  unittest.group('obj-schema-QueryLabelsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryLabelsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryLabelsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryLabelsRequest(od);
    });
  });

  unittest.group('obj-schema-QueryRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryRangeRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryRangeRequest(od);
    });
  });

  unittest.group('obj-schema-QuerySeriesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuerySeriesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuerySeriesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQuerySeriesRequest(od);
    });
  });

  unittest.group('obj-schema-RatioPart', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRatioPart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RatioPart.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRatioPart(od);
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

  unittest.group('obj-schema-RowLayout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRowLayout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RowLayout.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRowLayout(od);
    });
  });

  unittest.group('obj-schema-Scorecard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScorecard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Scorecard.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScorecard(od);
    });
  });

  unittest.group('obj-schema-SectionHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSectionHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SectionHeader.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSectionHeader(od);
    });
  });

  unittest.group('obj-schema-SingleViewGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSingleViewGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SingleViewGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSingleViewGroup(od);
    });
  });

  unittest.group('obj-schema-SparkChartView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkChartView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkChartView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkChartView(od);
    });
  });

  unittest.group('obj-schema-StatisticalTimeSeriesFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatisticalTimeSeriesFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StatisticalTimeSeriesFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatisticalTimeSeriesFilter(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-StringArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStringArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StringArray.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStringArray(od);
    });
  });

  unittest.group('obj-schema-TableDataSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableDataSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableDataSet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableDataSet(od);
    });
  });

  unittest.group('obj-schema-TableDisplayOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableDisplayOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableDisplayOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableDisplayOptions(od);
    });
  });

  unittest.group('obj-schema-TemplateVariableCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTemplateVariableCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TemplateVariableCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTemplateVariableCondition(od);
    });
  });

  unittest.group('obj-schema-Text', () {
    unittest.test('to-json--from-json', () async {
      final o = buildText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Text.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkText(od);
    });
  });

  unittest.group('obj-schema-TextStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextStyle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextStyle(od);
    });
  });

  unittest.group('obj-schema-Threshold', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThreshold();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Threshold.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkThreshold(od);
    });
  });

  unittest.group('obj-schema-Tile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Tile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTile(od);
    });
  });

  unittest.group('obj-schema-TimeSeriesFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeSeriesFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeSeriesFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeSeriesFilter(od);
    });
  });

  unittest.group('obj-schema-TimeSeriesFilterRatio', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeSeriesFilterRatio();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeSeriesFilterRatio.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeSeriesFilterRatio(od);
    });
  });

  unittest.group('obj-schema-TimeSeriesQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeSeriesQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeSeriesQuery.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeSeriesQuery(od);
    });
  });

  unittest.group('obj-schema-TimeSeriesTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeSeriesTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeSeriesTable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeSeriesTable(od);
    });
  });

  unittest.group('obj-schema-Treemap', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTreemap();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Treemap.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTreemap(od);
    });
  });

  unittest.group('obj-schema-TreemapDataSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTreemapDataSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TreemapDataSet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTreemapDataSet(od);
    });
  });

  unittest.group('obj-schema-VisibilityCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVisibilityCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VisibilityCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVisibilityCondition(od);
    });
  });

  unittest.group('obj-schema-Widget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWidget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Widget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWidget(od);
    });
  });

  unittest.group('obj-schema-XyChart', () {
    unittest.test('to-json--from-json', () async {
      final o = buildXyChart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.XyChart.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkXyChart(od);
    });
  });

  unittest.group('resource-LocationsGlobalMetricsScopesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).locations.global.metricsScopes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildMetricsScope());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMetricsScope(response as api.MetricsScope);
    });

    unittest.test('method--listMetricsScopesByMonitoredProject', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).locations.global.metricsScopes;
      final arg_monitoredResourceContainer = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 69),
            unittest.equals(
              'v1/locations/global/metricsScopes:listMetricsScopesByMonitoredProject',
            ),
          );
          pathOffset += 69;

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
            queryMap['monitoredResourceContainer']!.first,
            unittest.equals(arg_monitoredResourceContainer),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListMetricsScopesByMonitoredProjectResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listMetricsScopesByMonitoredProject(
        monitoredResourceContainer: arg_monitoredResourceContainer,
        $fields: arg_$fields,
      );
      checkListMetricsScopesByMonitoredProjectResponse(
        response as api.ListMetricsScopesByMonitoredProjectResponse,
      );
    });
  });

  unittest.group('resource-LocationsGlobalMetricsScopesProjectsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.MonitoringApi(mock).locations.global.metricsScopes.projects;
      final arg_request = buildMonitoredProject();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MonitoredProject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMonitoredProject(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.MonitoringApi(mock).locations.global.metricsScopes.projects;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsDashboardsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.dashboards;
      final arg_request = buildDashboard();
      final arg_parent = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Dashboard.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDashboard(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDashboard());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkDashboard(response as api.Dashboard);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.dashboards;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.dashboards;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDashboard());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDashboard(response as api.Dashboard);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.dashboards;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListDashboardsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDashboardsResponse(response as api.ListDashboardsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.dashboards;
      final arg_request = buildDashboard();
      final arg_name = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Dashboard.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDashboard(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDashboard());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkDashboard(response as api.Dashboard);
    });
  });

  unittest.group('resource-ProjectsLocationPrometheusApiV1Resource', () {
    unittest.test('method--labels', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.location.prometheus.api.v1;
      final arg_request = buildQueryLabelsRequest();
      final arg_name = 'foo';
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.QueryLabelsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkQueryLabelsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.labels(
        arg_request,
        arg_name,
        arg_location,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.location.prometheus.api.v1;
      final arg_request = buildQueryInstantRequest();
      final arg_name = 'foo';
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.QueryInstantRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkQueryInstantRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.query(
        arg_request,
        arg_name,
        arg_location,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--queryExemplars', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.location.prometheus.api.v1;
      final arg_request = buildQueryExemplarsRequest();
      final arg_name = 'foo';
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.QueryExemplarsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkQueryExemplarsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.queryExemplars(
        arg_request,
        arg_name,
        arg_location,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--queryRange', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.location.prometheus.api.v1;
      final arg_request = buildQueryRangeRequest();
      final arg_name = 'foo';
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.QueryRangeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkQueryRangeRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.queryRange(
        arg_request,
        arg_name,
        arg_location,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--series', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.location.prometheus.api.v1;
      final arg_request = buildQuerySeriesRequest();
      final arg_name = 'foo';
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.QuerySeriesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkQuerySeriesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.series(
        arg_request,
        arg_name,
        arg_location,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });
  });

  unittest.group('resource-ProjectsLocationPrometheusApiV1LabelResource', () {
    unittest.test('method--values', () async {
      final mock = HttpServerMock();
      final res =
          api.MonitoringApi(mock).projects.location.prometheus.api.v1.label;
      final arg_name = 'foo';
      final arg_location = 'foo';
      final arg_label = 'foo';
      final arg_end = 'foo';
      final arg_match = 'foo';
      final arg_start = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          unittest.expect(queryMap['end']!.first, unittest.equals(arg_end));
          unittest.expect(queryMap['match']!.first, unittest.equals(arg_match));
          unittest.expect(queryMap['start']!.first, unittest.equals(arg_start));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.values(
        arg_name,
        arg_location,
        arg_label,
        end: arg_end,
        match: arg_match,
        start: arg_start,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });
  });

  unittest.group('resource-ProjectsLocationPrometheusApiV1MetadataResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.MonitoringApi(mock).projects.location.prometheus.api.v1.metadata;
      final arg_name = 'foo';
      final arg_location = 'foo';
      final arg_limit = 'foo';
      final arg_metric = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          unittest.expect(queryMap['limit']!.first, unittest.equals(arg_limit));
          unittest.expect(
            queryMap['metric']!.first,
            unittest.equals(arg_metric),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        arg_location,
        limit: arg_limit,
        metric: arg_metric,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });
  });
}
