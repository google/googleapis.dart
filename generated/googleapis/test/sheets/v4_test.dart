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

import 'package:googleapis/sheets/v4.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddBandingRequest = 0;
api.AddBandingRequest buildAddBandingRequest() {
  final o = api.AddBandingRequest();
  buildCounterAddBandingRequest++;
  if (buildCounterAddBandingRequest < 3) {
    o.bandedRange = buildBandedRange();
  }
  buildCounterAddBandingRequest--;
  return o;
}

void checkAddBandingRequest(api.AddBandingRequest o) {
  buildCounterAddBandingRequest++;
  if (buildCounterAddBandingRequest < 3) {
    checkBandedRange(o.bandedRange!);
  }
  buildCounterAddBandingRequest--;
}

core.int buildCounterAddBandingResponse = 0;
api.AddBandingResponse buildAddBandingResponse() {
  final o = api.AddBandingResponse();
  buildCounterAddBandingResponse++;
  if (buildCounterAddBandingResponse < 3) {
    o.bandedRange = buildBandedRange();
  }
  buildCounterAddBandingResponse--;
  return o;
}

void checkAddBandingResponse(api.AddBandingResponse o) {
  buildCounterAddBandingResponse++;
  if (buildCounterAddBandingResponse < 3) {
    checkBandedRange(o.bandedRange!);
  }
  buildCounterAddBandingResponse--;
}

core.int buildCounterAddChartRequest = 0;
api.AddChartRequest buildAddChartRequest() {
  final o = api.AddChartRequest();
  buildCounterAddChartRequest++;
  if (buildCounterAddChartRequest < 3) {
    o.chart = buildEmbeddedChart();
  }
  buildCounterAddChartRequest--;
  return o;
}

void checkAddChartRequest(api.AddChartRequest o) {
  buildCounterAddChartRequest++;
  if (buildCounterAddChartRequest < 3) {
    checkEmbeddedChart(o.chart!);
  }
  buildCounterAddChartRequest--;
}

core.int buildCounterAddChartResponse = 0;
api.AddChartResponse buildAddChartResponse() {
  final o = api.AddChartResponse();
  buildCounterAddChartResponse++;
  if (buildCounterAddChartResponse < 3) {
    o.chart = buildEmbeddedChart();
  }
  buildCounterAddChartResponse--;
  return o;
}

void checkAddChartResponse(api.AddChartResponse o) {
  buildCounterAddChartResponse++;
  if (buildCounterAddChartResponse < 3) {
    checkEmbeddedChart(o.chart!);
  }
  buildCounterAddChartResponse--;
}

core.int buildCounterAddConditionalFormatRuleRequest = 0;
api.AddConditionalFormatRuleRequest buildAddConditionalFormatRuleRequest() {
  final o = api.AddConditionalFormatRuleRequest();
  buildCounterAddConditionalFormatRuleRequest++;
  if (buildCounterAddConditionalFormatRuleRequest < 3) {
    o.index = 42;
    o.rule = buildConditionalFormatRule();
  }
  buildCounterAddConditionalFormatRuleRequest--;
  return o;
}

void checkAddConditionalFormatRuleRequest(
    api.AddConditionalFormatRuleRequest o) {
  buildCounterAddConditionalFormatRuleRequest++;
  if (buildCounterAddConditionalFormatRuleRequest < 3) {
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    checkConditionalFormatRule(o.rule!);
  }
  buildCounterAddConditionalFormatRuleRequest--;
}

core.int buildCounterAddDataSourceRequest = 0;
api.AddDataSourceRequest buildAddDataSourceRequest() {
  final o = api.AddDataSourceRequest();
  buildCounterAddDataSourceRequest++;
  if (buildCounterAddDataSourceRequest < 3) {
    o.dataSource = buildDataSource();
  }
  buildCounterAddDataSourceRequest--;
  return o;
}

void checkAddDataSourceRequest(api.AddDataSourceRequest o) {
  buildCounterAddDataSourceRequest++;
  if (buildCounterAddDataSourceRequest < 3) {
    checkDataSource(o.dataSource!);
  }
  buildCounterAddDataSourceRequest--;
}

core.int buildCounterAddDataSourceResponse = 0;
api.AddDataSourceResponse buildAddDataSourceResponse() {
  final o = api.AddDataSourceResponse();
  buildCounterAddDataSourceResponse++;
  if (buildCounterAddDataSourceResponse < 3) {
    o.dataExecutionStatus = buildDataExecutionStatus();
    o.dataSource = buildDataSource();
  }
  buildCounterAddDataSourceResponse--;
  return o;
}

void checkAddDataSourceResponse(api.AddDataSourceResponse o) {
  buildCounterAddDataSourceResponse++;
  if (buildCounterAddDataSourceResponse < 3) {
    checkDataExecutionStatus(o.dataExecutionStatus!);
    checkDataSource(o.dataSource!);
  }
  buildCounterAddDataSourceResponse--;
}

core.int buildCounterAddDimensionGroupRequest = 0;
api.AddDimensionGroupRequest buildAddDimensionGroupRequest() {
  final o = api.AddDimensionGroupRequest();
  buildCounterAddDimensionGroupRequest++;
  if (buildCounterAddDimensionGroupRequest < 3) {
    o.range = buildDimensionRange();
  }
  buildCounterAddDimensionGroupRequest--;
  return o;
}

void checkAddDimensionGroupRequest(api.AddDimensionGroupRequest o) {
  buildCounterAddDimensionGroupRequest++;
  if (buildCounterAddDimensionGroupRequest < 3) {
    checkDimensionRange(o.range!);
  }
  buildCounterAddDimensionGroupRequest--;
}

core.List<api.DimensionGroup> buildUnnamed647() {
  final o = <api.DimensionGroup>[];
  o.add(buildDimensionGroup());
  o.add(buildDimensionGroup());
  return o;
}

void checkUnnamed647(core.List<api.DimensionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionGroup(o[0]);
  checkDimensionGroup(o[1]);
}

core.int buildCounterAddDimensionGroupResponse = 0;
api.AddDimensionGroupResponse buildAddDimensionGroupResponse() {
  final o = api.AddDimensionGroupResponse();
  buildCounterAddDimensionGroupResponse++;
  if (buildCounterAddDimensionGroupResponse < 3) {
    o.dimensionGroups = buildUnnamed647();
  }
  buildCounterAddDimensionGroupResponse--;
  return o;
}

void checkAddDimensionGroupResponse(api.AddDimensionGroupResponse o) {
  buildCounterAddDimensionGroupResponse++;
  if (buildCounterAddDimensionGroupResponse < 3) {
    checkUnnamed647(o.dimensionGroups!);
  }
  buildCounterAddDimensionGroupResponse--;
}

core.int buildCounterAddFilterViewRequest = 0;
api.AddFilterViewRequest buildAddFilterViewRequest() {
  final o = api.AddFilterViewRequest();
  buildCounterAddFilterViewRequest++;
  if (buildCounterAddFilterViewRequest < 3) {
    o.filter = buildFilterView();
  }
  buildCounterAddFilterViewRequest--;
  return o;
}

void checkAddFilterViewRequest(api.AddFilterViewRequest o) {
  buildCounterAddFilterViewRequest++;
  if (buildCounterAddFilterViewRequest < 3) {
    checkFilterView(o.filter!);
  }
  buildCounterAddFilterViewRequest--;
}

core.int buildCounterAddFilterViewResponse = 0;
api.AddFilterViewResponse buildAddFilterViewResponse() {
  final o = api.AddFilterViewResponse();
  buildCounterAddFilterViewResponse++;
  if (buildCounterAddFilterViewResponse < 3) {
    o.filter = buildFilterView();
  }
  buildCounterAddFilterViewResponse--;
  return o;
}

void checkAddFilterViewResponse(api.AddFilterViewResponse o) {
  buildCounterAddFilterViewResponse++;
  if (buildCounterAddFilterViewResponse < 3) {
    checkFilterView(o.filter!);
  }
  buildCounterAddFilterViewResponse--;
}

core.int buildCounterAddNamedRangeRequest = 0;
api.AddNamedRangeRequest buildAddNamedRangeRequest() {
  final o = api.AddNamedRangeRequest();
  buildCounterAddNamedRangeRequest++;
  if (buildCounterAddNamedRangeRequest < 3) {
    o.namedRange = buildNamedRange();
  }
  buildCounterAddNamedRangeRequest--;
  return o;
}

void checkAddNamedRangeRequest(api.AddNamedRangeRequest o) {
  buildCounterAddNamedRangeRequest++;
  if (buildCounterAddNamedRangeRequest < 3) {
    checkNamedRange(o.namedRange!);
  }
  buildCounterAddNamedRangeRequest--;
}

core.int buildCounterAddNamedRangeResponse = 0;
api.AddNamedRangeResponse buildAddNamedRangeResponse() {
  final o = api.AddNamedRangeResponse();
  buildCounterAddNamedRangeResponse++;
  if (buildCounterAddNamedRangeResponse < 3) {
    o.namedRange = buildNamedRange();
  }
  buildCounterAddNamedRangeResponse--;
  return o;
}

void checkAddNamedRangeResponse(api.AddNamedRangeResponse o) {
  buildCounterAddNamedRangeResponse++;
  if (buildCounterAddNamedRangeResponse < 3) {
    checkNamedRange(o.namedRange!);
  }
  buildCounterAddNamedRangeResponse--;
}

core.int buildCounterAddProtectedRangeRequest = 0;
api.AddProtectedRangeRequest buildAddProtectedRangeRequest() {
  final o = api.AddProtectedRangeRequest();
  buildCounterAddProtectedRangeRequest++;
  if (buildCounterAddProtectedRangeRequest < 3) {
    o.protectedRange = buildProtectedRange();
  }
  buildCounterAddProtectedRangeRequest--;
  return o;
}

void checkAddProtectedRangeRequest(api.AddProtectedRangeRequest o) {
  buildCounterAddProtectedRangeRequest++;
  if (buildCounterAddProtectedRangeRequest < 3) {
    checkProtectedRange(o.protectedRange!);
  }
  buildCounterAddProtectedRangeRequest--;
}

core.int buildCounterAddProtectedRangeResponse = 0;
api.AddProtectedRangeResponse buildAddProtectedRangeResponse() {
  final o = api.AddProtectedRangeResponse();
  buildCounterAddProtectedRangeResponse++;
  if (buildCounterAddProtectedRangeResponse < 3) {
    o.protectedRange = buildProtectedRange();
  }
  buildCounterAddProtectedRangeResponse--;
  return o;
}

void checkAddProtectedRangeResponse(api.AddProtectedRangeResponse o) {
  buildCounterAddProtectedRangeResponse++;
  if (buildCounterAddProtectedRangeResponse < 3) {
    checkProtectedRange(o.protectedRange!);
  }
  buildCounterAddProtectedRangeResponse--;
}

core.int buildCounterAddSheetRequest = 0;
api.AddSheetRequest buildAddSheetRequest() {
  final o = api.AddSheetRequest();
  buildCounterAddSheetRequest++;
  if (buildCounterAddSheetRequest < 3) {
    o.properties = buildSheetProperties();
  }
  buildCounterAddSheetRequest--;
  return o;
}

void checkAddSheetRequest(api.AddSheetRequest o) {
  buildCounterAddSheetRequest++;
  if (buildCounterAddSheetRequest < 3) {
    checkSheetProperties(o.properties!);
  }
  buildCounterAddSheetRequest--;
}

core.int buildCounterAddSheetResponse = 0;
api.AddSheetResponse buildAddSheetResponse() {
  final o = api.AddSheetResponse();
  buildCounterAddSheetResponse++;
  if (buildCounterAddSheetResponse < 3) {
    o.properties = buildSheetProperties();
  }
  buildCounterAddSheetResponse--;
  return o;
}

void checkAddSheetResponse(api.AddSheetResponse o) {
  buildCounterAddSheetResponse++;
  if (buildCounterAddSheetResponse < 3) {
    checkSheetProperties(o.properties!);
  }
  buildCounterAddSheetResponse--;
}

core.int buildCounterAddSlicerRequest = 0;
api.AddSlicerRequest buildAddSlicerRequest() {
  final o = api.AddSlicerRequest();
  buildCounterAddSlicerRequest++;
  if (buildCounterAddSlicerRequest < 3) {
    o.slicer = buildSlicer();
  }
  buildCounterAddSlicerRequest--;
  return o;
}

void checkAddSlicerRequest(api.AddSlicerRequest o) {
  buildCounterAddSlicerRequest++;
  if (buildCounterAddSlicerRequest < 3) {
    checkSlicer(o.slicer!);
  }
  buildCounterAddSlicerRequest--;
}

core.int buildCounterAddSlicerResponse = 0;
api.AddSlicerResponse buildAddSlicerResponse() {
  final o = api.AddSlicerResponse();
  buildCounterAddSlicerResponse++;
  if (buildCounterAddSlicerResponse < 3) {
    o.slicer = buildSlicer();
  }
  buildCounterAddSlicerResponse--;
  return o;
}

void checkAddSlicerResponse(api.AddSlicerResponse o) {
  buildCounterAddSlicerResponse++;
  if (buildCounterAddSlicerResponse < 3) {
    checkSlicer(o.slicer!);
  }
  buildCounterAddSlicerResponse--;
}

core.List<api.RowData> buildUnnamed648() {
  final o = <api.RowData>[];
  o.add(buildRowData());
  o.add(buildRowData());
  return o;
}

void checkUnnamed648(core.List<api.RowData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRowData(o[0]);
  checkRowData(o[1]);
}

core.int buildCounterAppendCellsRequest = 0;
api.AppendCellsRequest buildAppendCellsRequest() {
  final o = api.AppendCellsRequest();
  buildCounterAppendCellsRequest++;
  if (buildCounterAppendCellsRequest < 3) {
    o.fields = 'foo';
    o.rows = buildUnnamed648();
    o.sheetId = 42;
  }
  buildCounterAppendCellsRequest--;
  return o;
}

void checkAppendCellsRequest(api.AppendCellsRequest o) {
  buildCounterAppendCellsRequest++;
  if (buildCounterAppendCellsRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkUnnamed648(o.rows!);
    unittest.expect(
      o.sheetId!,
      unittest.equals(42),
    );
  }
  buildCounterAppendCellsRequest--;
}

core.int buildCounterAppendDimensionRequest = 0;
api.AppendDimensionRequest buildAppendDimensionRequest() {
  final o = api.AppendDimensionRequest();
  buildCounterAppendDimensionRequest++;
  if (buildCounterAppendDimensionRequest < 3) {
    o.dimension = 'foo';
    o.length = 42;
    o.sheetId = 42;
  }
  buildCounterAppendDimensionRequest--;
  return o;
}

void checkAppendDimensionRequest(api.AppendDimensionRequest o) {
  buildCounterAppendDimensionRequest++;
  if (buildCounterAppendDimensionRequest < 3) {
    unittest.expect(
      o.dimension!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.length!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sheetId!,
      unittest.equals(42),
    );
  }
  buildCounterAppendDimensionRequest--;
}

core.int buildCounterAppendValuesResponse = 0;
api.AppendValuesResponse buildAppendValuesResponse() {
  final o = api.AppendValuesResponse();
  buildCounterAppendValuesResponse++;
  if (buildCounterAppendValuesResponse < 3) {
    o.spreadsheetId = 'foo';
    o.tableRange = 'foo';
    o.updates = buildUpdateValuesResponse();
  }
  buildCounterAppendValuesResponse--;
  return o;
}

void checkAppendValuesResponse(api.AppendValuesResponse o) {
  buildCounterAppendValuesResponse++;
  if (buildCounterAppendValuesResponse < 3) {
    unittest.expect(
      o.spreadsheetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tableRange!,
      unittest.equals('foo'),
    );
    checkUpdateValuesResponse(o.updates!);
  }
  buildCounterAppendValuesResponse--;
}

core.int buildCounterAutoFillRequest = 0;
api.AutoFillRequest buildAutoFillRequest() {
  final o = api.AutoFillRequest();
  buildCounterAutoFillRequest++;
  if (buildCounterAutoFillRequest < 3) {
    o.range = buildGridRange();
    o.sourceAndDestination = buildSourceAndDestination();
    o.useAlternateSeries = true;
  }
  buildCounterAutoFillRequest--;
  return o;
}

void checkAutoFillRequest(api.AutoFillRequest o) {
  buildCounterAutoFillRequest++;
  if (buildCounterAutoFillRequest < 3) {
    checkGridRange(o.range!);
    checkSourceAndDestination(o.sourceAndDestination!);
    unittest.expect(o.useAlternateSeries!, unittest.isTrue);
  }
  buildCounterAutoFillRequest--;
}

core.int buildCounterAutoResizeDimensionsRequest = 0;
api.AutoResizeDimensionsRequest buildAutoResizeDimensionsRequest() {
  final o = api.AutoResizeDimensionsRequest();
  buildCounterAutoResizeDimensionsRequest++;
  if (buildCounterAutoResizeDimensionsRequest < 3) {
    o.dataSourceSheetDimensions = buildDataSourceSheetDimensionRange();
    o.dimensions = buildDimensionRange();
  }
  buildCounterAutoResizeDimensionsRequest--;
  return o;
}

void checkAutoResizeDimensionsRequest(api.AutoResizeDimensionsRequest o) {
  buildCounterAutoResizeDimensionsRequest++;
  if (buildCounterAutoResizeDimensionsRequest < 3) {
    checkDataSourceSheetDimensionRange(o.dataSourceSheetDimensions!);
    checkDimensionRange(o.dimensions!);
  }
  buildCounterAutoResizeDimensionsRequest--;
}

core.int buildCounterBandedRange = 0;
api.BandedRange buildBandedRange() {
  final o = api.BandedRange();
  buildCounterBandedRange++;
  if (buildCounterBandedRange < 3) {
    o.bandedRangeId = 42;
    o.columnProperties = buildBandingProperties();
    o.range = buildGridRange();
    o.rowProperties = buildBandingProperties();
  }
  buildCounterBandedRange--;
  return o;
}

void checkBandedRange(api.BandedRange o) {
  buildCounterBandedRange++;
  if (buildCounterBandedRange < 3) {
    unittest.expect(
      o.bandedRangeId!,
      unittest.equals(42),
    );
    checkBandingProperties(o.columnProperties!);
    checkGridRange(o.range!);
    checkBandingProperties(o.rowProperties!);
  }
  buildCounterBandedRange--;
}

core.int buildCounterBandingProperties = 0;
api.BandingProperties buildBandingProperties() {
  final o = api.BandingProperties();
  buildCounterBandingProperties++;
  if (buildCounterBandingProperties < 3) {
    o.firstBandColor = buildColor();
    o.firstBandColorStyle = buildColorStyle();
    o.footerColor = buildColor();
    o.footerColorStyle = buildColorStyle();
    o.headerColor = buildColor();
    o.headerColorStyle = buildColorStyle();
    o.secondBandColor = buildColor();
    o.secondBandColorStyle = buildColorStyle();
  }
  buildCounterBandingProperties--;
  return o;
}

void checkBandingProperties(api.BandingProperties o) {
  buildCounterBandingProperties++;
  if (buildCounterBandingProperties < 3) {
    checkColor(o.firstBandColor!);
    checkColorStyle(o.firstBandColorStyle!);
    checkColor(o.footerColor!);
    checkColorStyle(o.footerColorStyle!);
    checkColor(o.headerColor!);
    checkColorStyle(o.headerColorStyle!);
    checkColor(o.secondBandColor!);
    checkColorStyle(o.secondBandColorStyle!);
  }
  buildCounterBandingProperties--;
}

core.int buildCounterBaselineValueFormat = 0;
api.BaselineValueFormat buildBaselineValueFormat() {
  final o = api.BaselineValueFormat();
  buildCounterBaselineValueFormat++;
  if (buildCounterBaselineValueFormat < 3) {
    o.comparisonType = 'foo';
    o.description = 'foo';
    o.negativeColor = buildColor();
    o.negativeColorStyle = buildColorStyle();
    o.position = buildTextPosition();
    o.positiveColor = buildColor();
    o.positiveColorStyle = buildColorStyle();
    o.textFormat = buildTextFormat();
  }
  buildCounterBaselineValueFormat--;
  return o;
}

void checkBaselineValueFormat(api.BaselineValueFormat o) {
  buildCounterBaselineValueFormat++;
  if (buildCounterBaselineValueFormat < 3) {
    unittest.expect(
      o.comparisonType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkColor(o.negativeColor!);
    checkColorStyle(o.negativeColorStyle!);
    checkTextPosition(o.position!);
    checkColor(o.positiveColor!);
    checkColorStyle(o.positiveColorStyle!);
    checkTextFormat(o.textFormat!);
  }
  buildCounterBaselineValueFormat--;
}

core.int buildCounterBasicChartAxis = 0;
api.BasicChartAxis buildBasicChartAxis() {
  final o = api.BasicChartAxis();
  buildCounterBasicChartAxis++;
  if (buildCounterBasicChartAxis < 3) {
    o.format = buildTextFormat();
    o.position = 'foo';
    o.title = 'foo';
    o.titleTextPosition = buildTextPosition();
    o.viewWindowOptions = buildChartAxisViewWindowOptions();
  }
  buildCounterBasicChartAxis--;
  return o;
}

void checkBasicChartAxis(api.BasicChartAxis o) {
  buildCounterBasicChartAxis++;
  if (buildCounterBasicChartAxis < 3) {
    checkTextFormat(o.format!);
    unittest.expect(
      o.position!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    checkTextPosition(o.titleTextPosition!);
    checkChartAxisViewWindowOptions(o.viewWindowOptions!);
  }
  buildCounterBasicChartAxis--;
}

core.int buildCounterBasicChartDomain = 0;
api.BasicChartDomain buildBasicChartDomain() {
  final o = api.BasicChartDomain();
  buildCounterBasicChartDomain++;
  if (buildCounterBasicChartDomain < 3) {
    o.domain = buildChartData();
    o.reversed = true;
  }
  buildCounterBasicChartDomain--;
  return o;
}

void checkBasicChartDomain(api.BasicChartDomain o) {
  buildCounterBasicChartDomain++;
  if (buildCounterBasicChartDomain < 3) {
    checkChartData(o.domain!);
    unittest.expect(o.reversed!, unittest.isTrue);
  }
  buildCounterBasicChartDomain--;
}

core.List<api.BasicSeriesDataPointStyleOverride> buildUnnamed649() {
  final o = <api.BasicSeriesDataPointStyleOverride>[];
  o.add(buildBasicSeriesDataPointStyleOverride());
  o.add(buildBasicSeriesDataPointStyleOverride());
  return o;
}

void checkUnnamed649(core.List<api.BasicSeriesDataPointStyleOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBasicSeriesDataPointStyleOverride(o[0]);
  checkBasicSeriesDataPointStyleOverride(o[1]);
}

core.int buildCounterBasicChartSeries = 0;
api.BasicChartSeries buildBasicChartSeries() {
  final o = api.BasicChartSeries();
  buildCounterBasicChartSeries++;
  if (buildCounterBasicChartSeries < 3) {
    o.color = buildColor();
    o.colorStyle = buildColorStyle();
    o.dataLabel = buildDataLabel();
    o.lineStyle = buildLineStyle();
    o.pointStyle = buildPointStyle();
    o.series = buildChartData();
    o.styleOverrides = buildUnnamed649();
    o.targetAxis = 'foo';
    o.type = 'foo';
  }
  buildCounterBasicChartSeries--;
  return o;
}

void checkBasicChartSeries(api.BasicChartSeries o) {
  buildCounterBasicChartSeries++;
  if (buildCounterBasicChartSeries < 3) {
    checkColor(o.color!);
    checkColorStyle(o.colorStyle!);
    checkDataLabel(o.dataLabel!);
    checkLineStyle(o.lineStyle!);
    checkPointStyle(o.pointStyle!);
    checkChartData(o.series!);
    checkUnnamed649(o.styleOverrides!);
    unittest.expect(
      o.targetAxis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterBasicChartSeries--;
}

core.List<api.BasicChartAxis> buildUnnamed650() {
  final o = <api.BasicChartAxis>[];
  o.add(buildBasicChartAxis());
  o.add(buildBasicChartAxis());
  return o;
}

void checkUnnamed650(core.List<api.BasicChartAxis> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBasicChartAxis(o[0]);
  checkBasicChartAxis(o[1]);
}

core.List<api.BasicChartDomain> buildUnnamed651() {
  final o = <api.BasicChartDomain>[];
  o.add(buildBasicChartDomain());
  o.add(buildBasicChartDomain());
  return o;
}

void checkUnnamed651(core.List<api.BasicChartDomain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBasicChartDomain(o[0]);
  checkBasicChartDomain(o[1]);
}

core.List<api.BasicChartSeries> buildUnnamed652() {
  final o = <api.BasicChartSeries>[];
  o.add(buildBasicChartSeries());
  o.add(buildBasicChartSeries());
  return o;
}

void checkUnnamed652(core.List<api.BasicChartSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBasicChartSeries(o[0]);
  checkBasicChartSeries(o[1]);
}

core.int buildCounterBasicChartSpec = 0;
api.BasicChartSpec buildBasicChartSpec() {
  final o = api.BasicChartSpec();
  buildCounterBasicChartSpec++;
  if (buildCounterBasicChartSpec < 3) {
    o.axis = buildUnnamed650();
    o.chartType = 'foo';
    o.compareMode = 'foo';
    o.domains = buildUnnamed651();
    o.headerCount = 42;
    o.interpolateNulls = true;
    o.legendPosition = 'foo';
    o.lineSmoothing = true;
    o.series = buildUnnamed652();
    o.stackedType = 'foo';
    o.threeDimensional = true;
    o.totalDataLabel = buildDataLabel();
  }
  buildCounterBasicChartSpec--;
  return o;
}

void checkBasicChartSpec(api.BasicChartSpec o) {
  buildCounterBasicChartSpec++;
  if (buildCounterBasicChartSpec < 3) {
    checkUnnamed650(o.axis!);
    unittest.expect(
      o.chartType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.compareMode!,
      unittest.equals('foo'),
    );
    checkUnnamed651(o.domains!);
    unittest.expect(
      o.headerCount!,
      unittest.equals(42),
    );
    unittest.expect(o.interpolateNulls!, unittest.isTrue);
    unittest.expect(
      o.legendPosition!,
      unittest.equals('foo'),
    );
    unittest.expect(o.lineSmoothing!, unittest.isTrue);
    checkUnnamed652(o.series!);
    unittest.expect(
      o.stackedType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.threeDimensional!, unittest.isTrue);
    checkDataLabel(o.totalDataLabel!);
  }
  buildCounterBasicChartSpec--;
}

core.Map<core.String, api.FilterCriteria> buildUnnamed653() {
  final o = <core.String, api.FilterCriteria>{};
  o['x'] = buildFilterCriteria();
  o['y'] = buildFilterCriteria();
  return o;
}

void checkUnnamed653(core.Map<core.String, api.FilterCriteria> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterCriteria(o['x']!);
  checkFilterCriteria(o['y']!);
}

core.List<api.FilterSpec> buildUnnamed654() {
  final o = <api.FilterSpec>[];
  o.add(buildFilterSpec());
  o.add(buildFilterSpec());
  return o;
}

void checkUnnamed654(core.List<api.FilterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterSpec(o[0]);
  checkFilterSpec(o[1]);
}

core.List<api.SortSpec> buildUnnamed655() {
  final o = <api.SortSpec>[];
  o.add(buildSortSpec());
  o.add(buildSortSpec());
  return o;
}

void checkUnnamed655(core.List<api.SortSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortSpec(o[0]);
  checkSortSpec(o[1]);
}

core.int buildCounterBasicFilter = 0;
api.BasicFilter buildBasicFilter() {
  final o = api.BasicFilter();
  buildCounterBasicFilter++;
  if (buildCounterBasicFilter < 3) {
    o.criteria = buildUnnamed653();
    o.filterSpecs = buildUnnamed654();
    o.range = buildGridRange();
    o.sortSpecs = buildUnnamed655();
  }
  buildCounterBasicFilter--;
  return o;
}

void checkBasicFilter(api.BasicFilter o) {
  buildCounterBasicFilter++;
  if (buildCounterBasicFilter < 3) {
    checkUnnamed653(o.criteria!);
    checkUnnamed654(o.filterSpecs!);
    checkGridRange(o.range!);
    checkUnnamed655(o.sortSpecs!);
  }
  buildCounterBasicFilter--;
}

core.int buildCounterBasicSeriesDataPointStyleOverride = 0;
api.BasicSeriesDataPointStyleOverride buildBasicSeriesDataPointStyleOverride() {
  final o = api.BasicSeriesDataPointStyleOverride();
  buildCounterBasicSeriesDataPointStyleOverride++;
  if (buildCounterBasicSeriesDataPointStyleOverride < 3) {
    o.color = buildColor();
    o.colorStyle = buildColorStyle();
    o.index = 42;
    o.pointStyle = buildPointStyle();
  }
  buildCounterBasicSeriesDataPointStyleOverride--;
  return o;
}

void checkBasicSeriesDataPointStyleOverride(
    api.BasicSeriesDataPointStyleOverride o) {
  buildCounterBasicSeriesDataPointStyleOverride++;
  if (buildCounterBasicSeriesDataPointStyleOverride < 3) {
    checkColor(o.color!);
    checkColorStyle(o.colorStyle!);
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    checkPointStyle(o.pointStyle!);
  }
  buildCounterBasicSeriesDataPointStyleOverride--;
}

core.List<api.DataFilter> buildUnnamed656() {
  final o = <api.DataFilter>[];
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

void checkUnnamed656(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0]);
  checkDataFilter(o[1]);
}

core.int buildCounterBatchClearValuesByDataFilterRequest = 0;
api.BatchClearValuesByDataFilterRequest
    buildBatchClearValuesByDataFilterRequest() {
  final o = api.BatchClearValuesByDataFilterRequest();
  buildCounterBatchClearValuesByDataFilterRequest++;
  if (buildCounterBatchClearValuesByDataFilterRequest < 3) {
    o.dataFilters = buildUnnamed656();
  }
  buildCounterBatchClearValuesByDataFilterRequest--;
  return o;
}

void checkBatchClearValuesByDataFilterRequest(
    api.BatchClearValuesByDataFilterRequest o) {
  buildCounterBatchClearValuesByDataFilterRequest++;
  if (buildCounterBatchClearValuesByDataFilterRequest < 3) {
    checkUnnamed656(o.dataFilters!);
  }
  buildCounterBatchClearValuesByDataFilterRequest--;
}

core.List<core.String> buildUnnamed657() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed657(core.List<core.String> o) {
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

core.int buildCounterBatchClearValuesByDataFilterResponse = 0;
api.BatchClearValuesByDataFilterResponse
    buildBatchClearValuesByDataFilterResponse() {
  final o = api.BatchClearValuesByDataFilterResponse();
  buildCounterBatchClearValuesByDataFilterResponse++;
  if (buildCounterBatchClearValuesByDataFilterResponse < 3) {
    o.clearedRanges = buildUnnamed657();
    o.spreadsheetId = 'foo';
  }
  buildCounterBatchClearValuesByDataFilterResponse--;
  return o;
}

void checkBatchClearValuesByDataFilterResponse(
    api.BatchClearValuesByDataFilterResponse o) {
  buildCounterBatchClearValuesByDataFilterResponse++;
  if (buildCounterBatchClearValuesByDataFilterResponse < 3) {
    checkUnnamed657(o.clearedRanges!);
    unittest.expect(
      o.spreadsheetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchClearValuesByDataFilterResponse--;
}

core.List<core.String> buildUnnamed658() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed658(core.List<core.String> o) {
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

core.int buildCounterBatchClearValuesRequest = 0;
api.BatchClearValuesRequest buildBatchClearValuesRequest() {
  final o = api.BatchClearValuesRequest();
  buildCounterBatchClearValuesRequest++;
  if (buildCounterBatchClearValuesRequest < 3) {
    o.ranges = buildUnnamed658();
  }
  buildCounterBatchClearValuesRequest--;
  return o;
}

void checkBatchClearValuesRequest(api.BatchClearValuesRequest o) {
  buildCounterBatchClearValuesRequest++;
  if (buildCounterBatchClearValuesRequest < 3) {
    checkUnnamed658(o.ranges!);
  }
  buildCounterBatchClearValuesRequest--;
}

core.List<core.String> buildUnnamed659() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed659(core.List<core.String> o) {
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

core.int buildCounterBatchClearValuesResponse = 0;
api.BatchClearValuesResponse buildBatchClearValuesResponse() {
  final o = api.BatchClearValuesResponse();
  buildCounterBatchClearValuesResponse++;
  if (buildCounterBatchClearValuesResponse < 3) {
    o.clearedRanges = buildUnnamed659();
    o.spreadsheetId = 'foo';
  }
  buildCounterBatchClearValuesResponse--;
  return o;
}

void checkBatchClearValuesResponse(api.BatchClearValuesResponse o) {
  buildCounterBatchClearValuesResponse++;
  if (buildCounterBatchClearValuesResponse < 3) {
    checkUnnamed659(o.clearedRanges!);
    unittest.expect(
      o.spreadsheetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchClearValuesResponse--;
}

core.List<api.DataFilter> buildUnnamed660() {
  final o = <api.DataFilter>[];
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

void checkUnnamed660(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0]);
  checkDataFilter(o[1]);
}

core.int buildCounterBatchGetValuesByDataFilterRequest = 0;
api.BatchGetValuesByDataFilterRequest buildBatchGetValuesByDataFilterRequest() {
  final o = api.BatchGetValuesByDataFilterRequest();
  buildCounterBatchGetValuesByDataFilterRequest++;
  if (buildCounterBatchGetValuesByDataFilterRequest < 3) {
    o.dataFilters = buildUnnamed660();
    o.dateTimeRenderOption = 'foo';
    o.majorDimension = 'foo';
    o.valueRenderOption = 'foo';
  }
  buildCounterBatchGetValuesByDataFilterRequest--;
  return o;
}

void checkBatchGetValuesByDataFilterRequest(
    api.BatchGetValuesByDataFilterRequest o) {
  buildCounterBatchGetValuesByDataFilterRequest++;
  if (buildCounterBatchGetValuesByDataFilterRequest < 3) {
    checkUnnamed660(o.dataFilters!);
    unittest.expect(
      o.dateTimeRenderOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.majorDimension!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueRenderOption!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchGetValuesByDataFilterRequest--;
}

core.List<api.MatchedValueRange> buildUnnamed661() {
  final o = <api.MatchedValueRange>[];
  o.add(buildMatchedValueRange());
  o.add(buildMatchedValueRange());
  return o;
}

void checkUnnamed661(core.List<api.MatchedValueRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchedValueRange(o[0]);
  checkMatchedValueRange(o[1]);
}

core.int buildCounterBatchGetValuesByDataFilterResponse = 0;
api.BatchGetValuesByDataFilterResponse
    buildBatchGetValuesByDataFilterResponse() {
  final o = api.BatchGetValuesByDataFilterResponse();
  buildCounterBatchGetValuesByDataFilterResponse++;
  if (buildCounterBatchGetValuesByDataFilterResponse < 3) {
    o.spreadsheetId = 'foo';
    o.valueRanges = buildUnnamed661();
  }
  buildCounterBatchGetValuesByDataFilterResponse--;
  return o;
}

void checkBatchGetValuesByDataFilterResponse(
    api.BatchGetValuesByDataFilterResponse o) {
  buildCounterBatchGetValuesByDataFilterResponse++;
  if (buildCounterBatchGetValuesByDataFilterResponse < 3) {
    unittest.expect(
      o.spreadsheetId!,
      unittest.equals('foo'),
    );
    checkUnnamed661(o.valueRanges!);
  }
  buildCounterBatchGetValuesByDataFilterResponse--;
}

core.List<api.ValueRange> buildUnnamed662() {
  final o = <api.ValueRange>[];
  o.add(buildValueRange());
  o.add(buildValueRange());
  return o;
}

void checkUnnamed662(core.List<api.ValueRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueRange(o[0]);
  checkValueRange(o[1]);
}

core.int buildCounterBatchGetValuesResponse = 0;
api.BatchGetValuesResponse buildBatchGetValuesResponse() {
  final o = api.BatchGetValuesResponse();
  buildCounterBatchGetValuesResponse++;
  if (buildCounterBatchGetValuesResponse < 3) {
    o.spreadsheetId = 'foo';
    o.valueRanges = buildUnnamed662();
  }
  buildCounterBatchGetValuesResponse--;
  return o;
}

void checkBatchGetValuesResponse(api.BatchGetValuesResponse o) {
  buildCounterBatchGetValuesResponse++;
  if (buildCounterBatchGetValuesResponse < 3) {
    unittest.expect(
      o.spreadsheetId!,
      unittest.equals('foo'),
    );
    checkUnnamed662(o.valueRanges!);
  }
  buildCounterBatchGetValuesResponse--;
}

core.List<api.Request> buildUnnamed663() {
  final o = <api.Request>[];
  o.add(buildRequest());
  o.add(buildRequest());
  return o;
}

void checkUnnamed663(core.List<api.Request> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRequest(o[0]);
  checkRequest(o[1]);
}

core.List<core.String> buildUnnamed664() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed664(core.List<core.String> o) {
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

core.int buildCounterBatchUpdateSpreadsheetRequest = 0;
api.BatchUpdateSpreadsheetRequest buildBatchUpdateSpreadsheetRequest() {
  final o = api.BatchUpdateSpreadsheetRequest();
  buildCounterBatchUpdateSpreadsheetRequest++;
  if (buildCounterBatchUpdateSpreadsheetRequest < 3) {
    o.includeSpreadsheetInResponse = true;
    o.requests = buildUnnamed663();
    o.responseIncludeGridData = true;
    o.responseRanges = buildUnnamed664();
  }
  buildCounterBatchUpdateSpreadsheetRequest--;
  return o;
}

void checkBatchUpdateSpreadsheetRequest(api.BatchUpdateSpreadsheetRequest o) {
  buildCounterBatchUpdateSpreadsheetRequest++;
  if (buildCounterBatchUpdateSpreadsheetRequest < 3) {
    unittest.expect(o.includeSpreadsheetInResponse!, unittest.isTrue);
    checkUnnamed663(o.requests!);
    unittest.expect(o.responseIncludeGridData!, unittest.isTrue);
    checkUnnamed664(o.responseRanges!);
  }
  buildCounterBatchUpdateSpreadsheetRequest--;
}

core.List<api.Response> buildUnnamed665() {
  final o = <api.Response>[];
  o.add(buildResponse());
  o.add(buildResponse());
  return o;
}

void checkUnnamed665(core.List<api.Response> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResponse(o[0]);
  checkResponse(o[1]);
}

core.int buildCounterBatchUpdateSpreadsheetResponse = 0;
api.BatchUpdateSpreadsheetResponse buildBatchUpdateSpreadsheetResponse() {
  final o = api.BatchUpdateSpreadsheetResponse();
  buildCounterBatchUpdateSpreadsheetResponse++;
  if (buildCounterBatchUpdateSpreadsheetResponse < 3) {
    o.replies = buildUnnamed665();
    o.spreadsheetId = 'foo';
    o.updatedSpreadsheet = buildSpreadsheet();
  }
  buildCounterBatchUpdateSpreadsheetResponse--;
  return o;
}

void checkBatchUpdateSpreadsheetResponse(api.BatchUpdateSpreadsheetResponse o) {
  buildCounterBatchUpdateSpreadsheetResponse++;
  if (buildCounterBatchUpdateSpreadsheetResponse < 3) {
    checkUnnamed665(o.replies!);
    unittest.expect(
      o.spreadsheetId!,
      unittest.equals('foo'),
    );
    checkSpreadsheet(o.updatedSpreadsheet!);
  }
  buildCounterBatchUpdateSpreadsheetResponse--;
}

core.List<api.DataFilterValueRange> buildUnnamed666() {
  final o = <api.DataFilterValueRange>[];
  o.add(buildDataFilterValueRange());
  o.add(buildDataFilterValueRange());
  return o;
}

void checkUnnamed666(core.List<api.DataFilterValueRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilterValueRange(o[0]);
  checkDataFilterValueRange(o[1]);
}

core.int buildCounterBatchUpdateValuesByDataFilterRequest = 0;
api.BatchUpdateValuesByDataFilterRequest
    buildBatchUpdateValuesByDataFilterRequest() {
  final o = api.BatchUpdateValuesByDataFilterRequest();
  buildCounterBatchUpdateValuesByDataFilterRequest++;
  if (buildCounterBatchUpdateValuesByDataFilterRequest < 3) {
    o.data = buildUnnamed666();
    o.includeValuesInResponse = true;
    o.responseDateTimeRenderOption = 'foo';
    o.responseValueRenderOption = 'foo';
    o.valueInputOption = 'foo';
  }
  buildCounterBatchUpdateValuesByDataFilterRequest--;
  return o;
}

void checkBatchUpdateValuesByDataFilterRequest(
    api.BatchUpdateValuesByDataFilterRequest o) {
  buildCounterBatchUpdateValuesByDataFilterRequest++;
  if (buildCounterBatchUpdateValuesByDataFilterRequest < 3) {
    checkUnnamed666(o.data!);
    unittest.expect(o.includeValuesInResponse!, unittest.isTrue);
    unittest.expect(
      o.responseDateTimeRenderOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseValueRenderOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueInputOption!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchUpdateValuesByDataFilterRequest--;
}

core.List<api.UpdateValuesByDataFilterResponse> buildUnnamed667() {
  final o = <api.UpdateValuesByDataFilterResponse>[];
  o.add(buildUpdateValuesByDataFilterResponse());
  o.add(buildUpdateValuesByDataFilterResponse());
  return o;
}

void checkUnnamed667(core.List<api.UpdateValuesByDataFilterResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateValuesByDataFilterResponse(o[0]);
  checkUpdateValuesByDataFilterResponse(o[1]);
}

core.int buildCounterBatchUpdateValuesByDataFilterResponse = 0;
api.BatchUpdateValuesByDataFilterResponse
    buildBatchUpdateValuesByDataFilterResponse() {
  final o = api.BatchUpdateValuesByDataFilterResponse();
  buildCounterBatchUpdateValuesByDataFilterResponse++;
  if (buildCounterBatchUpdateValuesByDataFilterResponse < 3) {
    o.responses = buildUnnamed667();
    o.spreadsheetId = 'foo';
    o.totalUpdatedCells = 42;
    o.totalUpdatedColumns = 42;
    o.totalUpdatedRows = 42;
    o.totalUpdatedSheets = 42;
  }
  buildCounterBatchUpdateValuesByDataFilterResponse--;
  return o;
}

void checkBatchUpdateValuesByDataFilterResponse(
    api.BatchUpdateValuesByDataFilterResponse o) {
  buildCounterBatchUpdateValuesByDataFilterResponse++;
  if (buildCounterBatchUpdateValuesByDataFilterResponse < 3) {
    checkUnnamed667(o.responses!);
    unittest.expect(
      o.spreadsheetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalUpdatedCells!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalUpdatedColumns!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalUpdatedRows!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalUpdatedSheets!,
      unittest.equals(42),
    );
  }
  buildCounterBatchUpdateValuesByDataFilterResponse--;
}

core.List<api.ValueRange> buildUnnamed668() {
  final o = <api.ValueRange>[];
  o.add(buildValueRange());
  o.add(buildValueRange());
  return o;
}

void checkUnnamed668(core.List<api.ValueRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueRange(o[0]);
  checkValueRange(o[1]);
}

core.int buildCounterBatchUpdateValuesRequest = 0;
api.BatchUpdateValuesRequest buildBatchUpdateValuesRequest() {
  final o = api.BatchUpdateValuesRequest();
  buildCounterBatchUpdateValuesRequest++;
  if (buildCounterBatchUpdateValuesRequest < 3) {
    o.data = buildUnnamed668();
    o.includeValuesInResponse = true;
    o.responseDateTimeRenderOption = 'foo';
    o.responseValueRenderOption = 'foo';
    o.valueInputOption = 'foo';
  }
  buildCounterBatchUpdateValuesRequest--;
  return o;
}

void checkBatchUpdateValuesRequest(api.BatchUpdateValuesRequest o) {
  buildCounterBatchUpdateValuesRequest++;
  if (buildCounterBatchUpdateValuesRequest < 3) {
    checkUnnamed668(o.data!);
    unittest.expect(o.includeValuesInResponse!, unittest.isTrue);
    unittest.expect(
      o.responseDateTimeRenderOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseValueRenderOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueInputOption!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchUpdateValuesRequest--;
}

core.List<api.UpdateValuesResponse> buildUnnamed669() {
  final o = <api.UpdateValuesResponse>[];
  o.add(buildUpdateValuesResponse());
  o.add(buildUpdateValuesResponse());
  return o;
}

void checkUnnamed669(core.List<api.UpdateValuesResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateValuesResponse(o[0]);
  checkUpdateValuesResponse(o[1]);
}

core.int buildCounterBatchUpdateValuesResponse = 0;
api.BatchUpdateValuesResponse buildBatchUpdateValuesResponse() {
  final o = api.BatchUpdateValuesResponse();
  buildCounterBatchUpdateValuesResponse++;
  if (buildCounterBatchUpdateValuesResponse < 3) {
    o.responses = buildUnnamed669();
    o.spreadsheetId = 'foo';
    o.totalUpdatedCells = 42;
    o.totalUpdatedColumns = 42;
    o.totalUpdatedRows = 42;
    o.totalUpdatedSheets = 42;
  }
  buildCounterBatchUpdateValuesResponse--;
  return o;
}

void checkBatchUpdateValuesResponse(api.BatchUpdateValuesResponse o) {
  buildCounterBatchUpdateValuesResponse++;
  if (buildCounterBatchUpdateValuesResponse < 3) {
    checkUnnamed669(o.responses!);
    unittest.expect(
      o.spreadsheetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalUpdatedCells!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalUpdatedColumns!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalUpdatedRows!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalUpdatedSheets!,
      unittest.equals(42),
    );
  }
  buildCounterBatchUpdateValuesResponse--;
}

core.int buildCounterBigQueryDataSourceSpec = 0;
api.BigQueryDataSourceSpec buildBigQueryDataSourceSpec() {
  final o = api.BigQueryDataSourceSpec();
  buildCounterBigQueryDataSourceSpec++;
  if (buildCounterBigQueryDataSourceSpec < 3) {
    o.projectId = 'foo';
    o.querySpec = buildBigQueryQuerySpec();
    o.tableSpec = buildBigQueryTableSpec();
  }
  buildCounterBigQueryDataSourceSpec--;
  return o;
}

void checkBigQueryDataSourceSpec(api.BigQueryDataSourceSpec o) {
  buildCounterBigQueryDataSourceSpec++;
  if (buildCounterBigQueryDataSourceSpec < 3) {
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkBigQueryQuerySpec(o.querySpec!);
    checkBigQueryTableSpec(o.tableSpec!);
  }
  buildCounterBigQueryDataSourceSpec--;
}

core.int buildCounterBigQueryQuerySpec = 0;
api.BigQueryQuerySpec buildBigQueryQuerySpec() {
  final o = api.BigQueryQuerySpec();
  buildCounterBigQueryQuerySpec++;
  if (buildCounterBigQueryQuerySpec < 3) {
    o.rawQuery = 'foo';
  }
  buildCounterBigQueryQuerySpec--;
  return o;
}

void checkBigQueryQuerySpec(api.BigQueryQuerySpec o) {
  buildCounterBigQueryQuerySpec++;
  if (buildCounterBigQueryQuerySpec < 3) {
    unittest.expect(
      o.rawQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterBigQueryQuerySpec--;
}

core.int buildCounterBigQueryTableSpec = 0;
api.BigQueryTableSpec buildBigQueryTableSpec() {
  final o = api.BigQueryTableSpec();
  buildCounterBigQueryTableSpec++;
  if (buildCounterBigQueryTableSpec < 3) {
    o.datasetId = 'foo';
    o.tableId = 'foo';
    o.tableProjectId = 'foo';
  }
  buildCounterBigQueryTableSpec--;
  return o;
}

void checkBigQueryTableSpec(api.BigQueryTableSpec o) {
  buildCounterBigQueryTableSpec++;
  if (buildCounterBigQueryTableSpec < 3) {
    unittest.expect(
      o.datasetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tableId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tableProjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBigQueryTableSpec--;
}

core.List<api.ConditionValue> buildUnnamed670() {
  final o = <api.ConditionValue>[];
  o.add(buildConditionValue());
  o.add(buildConditionValue());
  return o;
}

void checkUnnamed670(core.List<api.ConditionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConditionValue(o[0]);
  checkConditionValue(o[1]);
}

core.int buildCounterBooleanCondition = 0;
api.BooleanCondition buildBooleanCondition() {
  final o = api.BooleanCondition();
  buildCounterBooleanCondition++;
  if (buildCounterBooleanCondition < 3) {
    o.type = 'foo';
    o.values = buildUnnamed670();
  }
  buildCounterBooleanCondition--;
  return o;
}

void checkBooleanCondition(api.BooleanCondition o) {
  buildCounterBooleanCondition++;
  if (buildCounterBooleanCondition < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkUnnamed670(o.values!);
  }
  buildCounterBooleanCondition--;
}

core.int buildCounterBooleanRule = 0;
api.BooleanRule buildBooleanRule() {
  final o = api.BooleanRule();
  buildCounterBooleanRule++;
  if (buildCounterBooleanRule < 3) {
    o.condition = buildBooleanCondition();
    o.format = buildCellFormat();
  }
  buildCounterBooleanRule--;
  return o;
}

void checkBooleanRule(api.BooleanRule o) {
  buildCounterBooleanRule++;
  if (buildCounterBooleanRule < 3) {
    checkBooleanCondition(o.condition!);
    checkCellFormat(o.format!);
  }
  buildCounterBooleanRule--;
}

core.int buildCounterBorder = 0;
api.Border buildBorder() {
  final o = api.Border();
  buildCounterBorder++;
  if (buildCounterBorder < 3) {
    o.color = buildColor();
    o.colorStyle = buildColorStyle();
    o.style = 'foo';
    o.width = 42;
  }
  buildCounterBorder--;
  return o;
}

void checkBorder(api.Border o) {
  buildCounterBorder++;
  if (buildCounterBorder < 3) {
    checkColor(o.color!);
    checkColorStyle(o.colorStyle!);
    unittest.expect(
      o.style!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterBorder--;
}

core.int buildCounterBorders = 0;
api.Borders buildBorders() {
  final o = api.Borders();
  buildCounterBorders++;
  if (buildCounterBorders < 3) {
    o.bottom = buildBorder();
    o.left = buildBorder();
    o.right = buildBorder();
    o.top = buildBorder();
  }
  buildCounterBorders--;
  return o;
}

void checkBorders(api.Borders o) {
  buildCounterBorders++;
  if (buildCounterBorders < 3) {
    checkBorder(o.bottom!);
    checkBorder(o.left!);
    checkBorder(o.right!);
    checkBorder(o.top!);
  }
  buildCounterBorders--;
}

core.int buildCounterBubbleChartSpec = 0;
api.BubbleChartSpec buildBubbleChartSpec() {
  final o = api.BubbleChartSpec();
  buildCounterBubbleChartSpec++;
  if (buildCounterBubbleChartSpec < 3) {
    o.bubbleBorderColor = buildColor();
    o.bubbleBorderColorStyle = buildColorStyle();
    o.bubbleLabels = buildChartData();
    o.bubbleMaxRadiusSize = 42;
    o.bubbleMinRadiusSize = 42;
    o.bubbleOpacity = 42.0;
    o.bubbleSizes = buildChartData();
    o.bubbleTextStyle = buildTextFormat();
    o.domain = buildChartData();
    o.groupIds = buildChartData();
    o.legendPosition = 'foo';
    o.series = buildChartData();
  }
  buildCounterBubbleChartSpec--;
  return o;
}

void checkBubbleChartSpec(api.BubbleChartSpec o) {
  buildCounterBubbleChartSpec++;
  if (buildCounterBubbleChartSpec < 3) {
    checkColor(o.bubbleBorderColor!);
    checkColorStyle(o.bubbleBorderColorStyle!);
    checkChartData(o.bubbleLabels!);
    unittest.expect(
      o.bubbleMaxRadiusSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.bubbleMinRadiusSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.bubbleOpacity!,
      unittest.equals(42.0),
    );
    checkChartData(o.bubbleSizes!);
    checkTextFormat(o.bubbleTextStyle!);
    checkChartData(o.domain!);
    checkChartData(o.groupIds!);
    unittest.expect(
      o.legendPosition!,
      unittest.equals('foo'),
    );
    checkChartData(o.series!);
  }
  buildCounterBubbleChartSpec--;
}

core.List<api.CandlestickData> buildUnnamed671() {
  final o = <api.CandlestickData>[];
  o.add(buildCandlestickData());
  o.add(buildCandlestickData());
  return o;
}

void checkUnnamed671(core.List<api.CandlestickData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCandlestickData(o[0]);
  checkCandlestickData(o[1]);
}

core.int buildCounterCandlestickChartSpec = 0;
api.CandlestickChartSpec buildCandlestickChartSpec() {
  final o = api.CandlestickChartSpec();
  buildCounterCandlestickChartSpec++;
  if (buildCounterCandlestickChartSpec < 3) {
    o.data = buildUnnamed671();
    o.domain = buildCandlestickDomain();
  }
  buildCounterCandlestickChartSpec--;
  return o;
}

void checkCandlestickChartSpec(api.CandlestickChartSpec o) {
  buildCounterCandlestickChartSpec++;
  if (buildCounterCandlestickChartSpec < 3) {
    checkUnnamed671(o.data!);
    checkCandlestickDomain(o.domain!);
  }
  buildCounterCandlestickChartSpec--;
}

core.int buildCounterCandlestickData = 0;
api.CandlestickData buildCandlestickData() {
  final o = api.CandlestickData();
  buildCounterCandlestickData++;
  if (buildCounterCandlestickData < 3) {
    o.closeSeries = buildCandlestickSeries();
    o.highSeries = buildCandlestickSeries();
    o.lowSeries = buildCandlestickSeries();
    o.openSeries = buildCandlestickSeries();
  }
  buildCounterCandlestickData--;
  return o;
}

void checkCandlestickData(api.CandlestickData o) {
  buildCounterCandlestickData++;
  if (buildCounterCandlestickData < 3) {
    checkCandlestickSeries(o.closeSeries!);
    checkCandlestickSeries(o.highSeries!);
    checkCandlestickSeries(o.lowSeries!);
    checkCandlestickSeries(o.openSeries!);
  }
  buildCounterCandlestickData--;
}

core.int buildCounterCandlestickDomain = 0;
api.CandlestickDomain buildCandlestickDomain() {
  final o = api.CandlestickDomain();
  buildCounterCandlestickDomain++;
  if (buildCounterCandlestickDomain < 3) {
    o.data = buildChartData();
    o.reversed = true;
  }
  buildCounterCandlestickDomain--;
  return o;
}

void checkCandlestickDomain(api.CandlestickDomain o) {
  buildCounterCandlestickDomain++;
  if (buildCounterCandlestickDomain < 3) {
    checkChartData(o.data!);
    unittest.expect(o.reversed!, unittest.isTrue);
  }
  buildCounterCandlestickDomain--;
}

core.int buildCounterCandlestickSeries = 0;
api.CandlestickSeries buildCandlestickSeries() {
  final o = api.CandlestickSeries();
  buildCounterCandlestickSeries++;
  if (buildCounterCandlestickSeries < 3) {
    o.data = buildChartData();
  }
  buildCounterCandlestickSeries--;
  return o;
}

void checkCandlestickSeries(api.CandlestickSeries o) {
  buildCounterCandlestickSeries++;
  if (buildCounterCandlestickSeries < 3) {
    checkChartData(o.data!);
  }
  buildCounterCandlestickSeries--;
}

core.List<api.TextFormatRun> buildUnnamed672() {
  final o = <api.TextFormatRun>[];
  o.add(buildTextFormatRun());
  o.add(buildTextFormatRun());
  return o;
}

void checkUnnamed672(core.List<api.TextFormatRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextFormatRun(o[0]);
  checkTextFormatRun(o[1]);
}

core.int buildCounterCellData = 0;
api.CellData buildCellData() {
  final o = api.CellData();
  buildCounterCellData++;
  if (buildCounterCellData < 3) {
    o.dataSourceFormula = buildDataSourceFormula();
    o.dataSourceTable = buildDataSourceTable();
    o.dataValidation = buildDataValidationRule();
    o.effectiveFormat = buildCellFormat();
    o.effectiveValue = buildExtendedValue();
    o.formattedValue = 'foo';
    o.hyperlink = 'foo';
    o.note = 'foo';
    o.pivotTable = buildPivotTable();
    o.textFormatRuns = buildUnnamed672();
    o.userEnteredFormat = buildCellFormat();
    o.userEnteredValue = buildExtendedValue();
  }
  buildCounterCellData--;
  return o;
}

void checkCellData(api.CellData o) {
  buildCounterCellData++;
  if (buildCounterCellData < 3) {
    checkDataSourceFormula(o.dataSourceFormula!);
    checkDataSourceTable(o.dataSourceTable!);
    checkDataValidationRule(o.dataValidation!);
    checkCellFormat(o.effectiveFormat!);
    checkExtendedValue(o.effectiveValue!);
    unittest.expect(
      o.formattedValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hyperlink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.note!,
      unittest.equals('foo'),
    );
    checkPivotTable(o.pivotTable!);
    checkUnnamed672(o.textFormatRuns!);
    checkCellFormat(o.userEnteredFormat!);
    checkExtendedValue(o.userEnteredValue!);
  }
  buildCounterCellData--;
}

core.int buildCounterCellFormat = 0;
api.CellFormat buildCellFormat() {
  final o = api.CellFormat();
  buildCounterCellFormat++;
  if (buildCounterCellFormat < 3) {
    o.backgroundColor = buildColor();
    o.backgroundColorStyle = buildColorStyle();
    o.borders = buildBorders();
    o.horizontalAlignment = 'foo';
    o.hyperlinkDisplayType = 'foo';
    o.numberFormat = buildNumberFormat();
    o.padding = buildPadding();
    o.textDirection = 'foo';
    o.textFormat = buildTextFormat();
    o.textRotation = buildTextRotation();
    o.verticalAlignment = 'foo';
    o.wrapStrategy = 'foo';
  }
  buildCounterCellFormat--;
  return o;
}

void checkCellFormat(api.CellFormat o) {
  buildCounterCellFormat++;
  if (buildCounterCellFormat < 3) {
    checkColor(o.backgroundColor!);
    checkColorStyle(o.backgroundColorStyle!);
    checkBorders(o.borders!);
    unittest.expect(
      o.horizontalAlignment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hyperlinkDisplayType!,
      unittest.equals('foo'),
    );
    checkNumberFormat(o.numberFormat!);
    checkPadding(o.padding!);
    unittest.expect(
      o.textDirection!,
      unittest.equals('foo'),
    );
    checkTextFormat(o.textFormat!);
    checkTextRotation(o.textRotation!);
    unittest.expect(
      o.verticalAlignment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.wrapStrategy!,
      unittest.equals('foo'),
    );
  }
  buildCounterCellFormat--;
}

core.int buildCounterChartAxisViewWindowOptions = 0;
api.ChartAxisViewWindowOptions buildChartAxisViewWindowOptions() {
  final o = api.ChartAxisViewWindowOptions();
  buildCounterChartAxisViewWindowOptions++;
  if (buildCounterChartAxisViewWindowOptions < 3) {
    o.viewWindowMax = 42.0;
    o.viewWindowMin = 42.0;
    o.viewWindowMode = 'foo';
  }
  buildCounterChartAxisViewWindowOptions--;
  return o;
}

void checkChartAxisViewWindowOptions(api.ChartAxisViewWindowOptions o) {
  buildCounterChartAxisViewWindowOptions++;
  if (buildCounterChartAxisViewWindowOptions < 3) {
    unittest.expect(
      o.viewWindowMax!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.viewWindowMin!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.viewWindowMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterChartAxisViewWindowOptions--;
}

core.int buildCounterChartCustomNumberFormatOptions = 0;
api.ChartCustomNumberFormatOptions buildChartCustomNumberFormatOptions() {
  final o = api.ChartCustomNumberFormatOptions();
  buildCounterChartCustomNumberFormatOptions++;
  if (buildCounterChartCustomNumberFormatOptions < 3) {
    o.prefix = 'foo';
    o.suffix = 'foo';
  }
  buildCounterChartCustomNumberFormatOptions--;
  return o;
}

void checkChartCustomNumberFormatOptions(api.ChartCustomNumberFormatOptions o) {
  buildCounterChartCustomNumberFormatOptions++;
  if (buildCounterChartCustomNumberFormatOptions < 3) {
    unittest.expect(
      o.prefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.suffix!,
      unittest.equals('foo'),
    );
  }
  buildCounterChartCustomNumberFormatOptions--;
}

core.int buildCounterChartData = 0;
api.ChartData buildChartData() {
  final o = api.ChartData();
  buildCounterChartData++;
  if (buildCounterChartData < 3) {
    o.aggregateType = 'foo';
    o.columnReference = buildDataSourceColumnReference();
    o.groupRule = buildChartGroupRule();
    o.sourceRange = buildChartSourceRange();
  }
  buildCounterChartData--;
  return o;
}

void checkChartData(api.ChartData o) {
  buildCounterChartData++;
  if (buildCounterChartData < 3) {
    unittest.expect(
      o.aggregateType!,
      unittest.equals('foo'),
    );
    checkDataSourceColumnReference(o.columnReference!);
    checkChartGroupRule(o.groupRule!);
    checkChartSourceRange(o.sourceRange!);
  }
  buildCounterChartData--;
}

core.int buildCounterChartDateTimeRule = 0;
api.ChartDateTimeRule buildChartDateTimeRule() {
  final o = api.ChartDateTimeRule();
  buildCounterChartDateTimeRule++;
  if (buildCounterChartDateTimeRule < 3) {
    o.type = 'foo';
  }
  buildCounterChartDateTimeRule--;
  return o;
}

void checkChartDateTimeRule(api.ChartDateTimeRule o) {
  buildCounterChartDateTimeRule++;
  if (buildCounterChartDateTimeRule < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterChartDateTimeRule--;
}

core.int buildCounterChartGroupRule = 0;
api.ChartGroupRule buildChartGroupRule() {
  final o = api.ChartGroupRule();
  buildCounterChartGroupRule++;
  if (buildCounterChartGroupRule < 3) {
    o.dateTimeRule = buildChartDateTimeRule();
    o.histogramRule = buildChartHistogramRule();
  }
  buildCounterChartGroupRule--;
  return o;
}

void checkChartGroupRule(api.ChartGroupRule o) {
  buildCounterChartGroupRule++;
  if (buildCounterChartGroupRule < 3) {
    checkChartDateTimeRule(o.dateTimeRule!);
    checkChartHistogramRule(o.histogramRule!);
  }
  buildCounterChartGroupRule--;
}

core.int buildCounterChartHistogramRule = 0;
api.ChartHistogramRule buildChartHistogramRule() {
  final o = api.ChartHistogramRule();
  buildCounterChartHistogramRule++;
  if (buildCounterChartHistogramRule < 3) {
    o.intervalSize = 42.0;
    o.maxValue = 42.0;
    o.minValue = 42.0;
  }
  buildCounterChartHistogramRule--;
  return o;
}

void checkChartHistogramRule(api.ChartHistogramRule o) {
  buildCounterChartHistogramRule++;
  if (buildCounterChartHistogramRule < 3) {
    unittest.expect(
      o.intervalSize!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.maxValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minValue!,
      unittest.equals(42.0),
    );
  }
  buildCounterChartHistogramRule--;
}

core.List<api.GridRange> buildUnnamed673() {
  final o = <api.GridRange>[];
  o.add(buildGridRange());
  o.add(buildGridRange());
  return o;
}

void checkUnnamed673(core.List<api.GridRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGridRange(o[0]);
  checkGridRange(o[1]);
}

core.int buildCounterChartSourceRange = 0;
api.ChartSourceRange buildChartSourceRange() {
  final o = api.ChartSourceRange();
  buildCounterChartSourceRange++;
  if (buildCounterChartSourceRange < 3) {
    o.sources = buildUnnamed673();
  }
  buildCounterChartSourceRange--;
  return o;
}

void checkChartSourceRange(api.ChartSourceRange o) {
  buildCounterChartSourceRange++;
  if (buildCounterChartSourceRange < 3) {
    checkUnnamed673(o.sources!);
  }
  buildCounterChartSourceRange--;
}

core.List<api.FilterSpec> buildUnnamed674() {
  final o = <api.FilterSpec>[];
  o.add(buildFilterSpec());
  o.add(buildFilterSpec());
  return o;
}

void checkUnnamed674(core.List<api.FilterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterSpec(o[0]);
  checkFilterSpec(o[1]);
}

core.List<api.SortSpec> buildUnnamed675() {
  final o = <api.SortSpec>[];
  o.add(buildSortSpec());
  o.add(buildSortSpec());
  return o;
}

void checkUnnamed675(core.List<api.SortSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortSpec(o[0]);
  checkSortSpec(o[1]);
}

core.int buildCounterChartSpec = 0;
api.ChartSpec buildChartSpec() {
  final o = api.ChartSpec();
  buildCounterChartSpec++;
  if (buildCounterChartSpec < 3) {
    o.altText = 'foo';
    o.backgroundColor = buildColor();
    o.backgroundColorStyle = buildColorStyle();
    o.basicChart = buildBasicChartSpec();
    o.bubbleChart = buildBubbleChartSpec();
    o.candlestickChart = buildCandlestickChartSpec();
    o.dataSourceChartProperties = buildDataSourceChartProperties();
    o.filterSpecs = buildUnnamed674();
    o.fontName = 'foo';
    o.hiddenDimensionStrategy = 'foo';
    o.histogramChart = buildHistogramChartSpec();
    o.maximized = true;
    o.orgChart = buildOrgChartSpec();
    o.pieChart = buildPieChartSpec();
    o.scorecardChart = buildScorecardChartSpec();
    o.sortSpecs = buildUnnamed675();
    o.subtitle = 'foo';
    o.subtitleTextFormat = buildTextFormat();
    o.subtitleTextPosition = buildTextPosition();
    o.title = 'foo';
    o.titleTextFormat = buildTextFormat();
    o.titleTextPosition = buildTextPosition();
    o.treemapChart = buildTreemapChartSpec();
    o.waterfallChart = buildWaterfallChartSpec();
  }
  buildCounterChartSpec--;
  return o;
}

void checkChartSpec(api.ChartSpec o) {
  buildCounterChartSpec++;
  if (buildCounterChartSpec < 3) {
    unittest.expect(
      o.altText!,
      unittest.equals('foo'),
    );
    checkColor(o.backgroundColor!);
    checkColorStyle(o.backgroundColorStyle!);
    checkBasicChartSpec(o.basicChart!);
    checkBubbleChartSpec(o.bubbleChart!);
    checkCandlestickChartSpec(o.candlestickChart!);
    checkDataSourceChartProperties(o.dataSourceChartProperties!);
    checkUnnamed674(o.filterSpecs!);
    unittest.expect(
      o.fontName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hiddenDimensionStrategy!,
      unittest.equals('foo'),
    );
    checkHistogramChartSpec(o.histogramChart!);
    unittest.expect(o.maximized!, unittest.isTrue);
    checkOrgChartSpec(o.orgChart!);
    checkPieChartSpec(o.pieChart!);
    checkScorecardChartSpec(o.scorecardChart!);
    checkUnnamed675(o.sortSpecs!);
    unittest.expect(
      o.subtitle!,
      unittest.equals('foo'),
    );
    checkTextFormat(o.subtitleTextFormat!);
    checkTextPosition(o.subtitleTextPosition!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    checkTextFormat(o.titleTextFormat!);
    checkTextPosition(o.titleTextPosition!);
    checkTreemapChartSpec(o.treemapChart!);
    checkWaterfallChartSpec(o.waterfallChart!);
  }
  buildCounterChartSpec--;
}

core.int buildCounterClearBasicFilterRequest = 0;
api.ClearBasicFilterRequest buildClearBasicFilterRequest() {
  final o = api.ClearBasicFilterRequest();
  buildCounterClearBasicFilterRequest++;
  if (buildCounterClearBasicFilterRequest < 3) {
    o.sheetId = 42;
  }
  buildCounterClearBasicFilterRequest--;
  return o;
}

void checkClearBasicFilterRequest(api.ClearBasicFilterRequest o) {
  buildCounterClearBasicFilterRequest++;
  if (buildCounterClearBasicFilterRequest < 3) {
    unittest.expect(
      o.sheetId!,
      unittest.equals(42),
    );
  }
  buildCounterClearBasicFilterRequest--;
}

core.int buildCounterClearValuesRequest = 0;
api.ClearValuesRequest buildClearValuesRequest() {
  final o = api.ClearValuesRequest();
  buildCounterClearValuesRequest++;
  if (buildCounterClearValuesRequest < 3) {}
  buildCounterClearValuesRequest--;
  return o;
}

void checkClearValuesRequest(api.ClearValuesRequest o) {
  buildCounterClearValuesRequest++;
  if (buildCounterClearValuesRequest < 3) {}
  buildCounterClearValuesRequest--;
}

core.int buildCounterClearValuesResponse = 0;
api.ClearValuesResponse buildClearValuesResponse() {
  final o = api.ClearValuesResponse();
  buildCounterClearValuesResponse++;
  if (buildCounterClearValuesResponse < 3) {
    o.clearedRange = 'foo';
    o.spreadsheetId = 'foo';
  }
  buildCounterClearValuesResponse--;
  return o;
}

void checkClearValuesResponse(api.ClearValuesResponse o) {
  buildCounterClearValuesResponse++;
  if (buildCounterClearValuesResponse < 3) {
    unittest.expect(
      o.clearedRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spreadsheetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterClearValuesResponse--;
}

core.int buildCounterColor = 0;
api.Color buildColor() {
  final o = api.Color();
  buildCounterColor++;
  if (buildCounterColor < 3) {
    o.alpha = 42.0;
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterColor--;
  return o;
}

void checkColor(api.Color o) {
  buildCounterColor++;
  if (buildCounterColor < 3) {
    unittest.expect(
      o.alpha!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.blue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.green!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.red!,
      unittest.equals(42.0),
    );
  }
  buildCounterColor--;
}

core.int buildCounterColorStyle = 0;
api.ColorStyle buildColorStyle() {
  final o = api.ColorStyle();
  buildCounterColorStyle++;
  if (buildCounterColorStyle < 3) {
    o.rgbColor = buildColor();
    o.themeColor = 'foo';
  }
  buildCounterColorStyle--;
  return o;
}

void checkColorStyle(api.ColorStyle o) {
  buildCounterColorStyle++;
  if (buildCounterColorStyle < 3) {
    checkColor(o.rgbColor!);
    unittest.expect(
      o.themeColor!,
      unittest.equals('foo'),
    );
  }
  buildCounterColorStyle--;
}

core.int buildCounterConditionValue = 0;
api.ConditionValue buildConditionValue() {
  final o = api.ConditionValue();
  buildCounterConditionValue++;
  if (buildCounterConditionValue < 3) {
    o.relativeDate = 'foo';
    o.userEnteredValue = 'foo';
  }
  buildCounterConditionValue--;
  return o;
}

void checkConditionValue(api.ConditionValue o) {
  buildCounterConditionValue++;
  if (buildCounterConditionValue < 3) {
    unittest.expect(
      o.relativeDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userEnteredValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterConditionValue--;
}

core.List<api.GridRange> buildUnnamed676() {
  final o = <api.GridRange>[];
  o.add(buildGridRange());
  o.add(buildGridRange());
  return o;
}

void checkUnnamed676(core.List<api.GridRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGridRange(o[0]);
  checkGridRange(o[1]);
}

core.int buildCounterConditionalFormatRule = 0;
api.ConditionalFormatRule buildConditionalFormatRule() {
  final o = api.ConditionalFormatRule();
  buildCounterConditionalFormatRule++;
  if (buildCounterConditionalFormatRule < 3) {
    o.booleanRule = buildBooleanRule();
    o.gradientRule = buildGradientRule();
    o.ranges = buildUnnamed676();
  }
  buildCounterConditionalFormatRule--;
  return o;
}

void checkConditionalFormatRule(api.ConditionalFormatRule o) {
  buildCounterConditionalFormatRule++;
  if (buildCounterConditionalFormatRule < 3) {
    checkBooleanRule(o.booleanRule!);
    checkGradientRule(o.gradientRule!);
    checkUnnamed676(o.ranges!);
  }
  buildCounterConditionalFormatRule--;
}

core.int buildCounterCopyPasteRequest = 0;
api.CopyPasteRequest buildCopyPasteRequest() {
  final o = api.CopyPasteRequest();
  buildCounterCopyPasteRequest++;
  if (buildCounterCopyPasteRequest < 3) {
    o.destination = buildGridRange();
    o.pasteOrientation = 'foo';
    o.pasteType = 'foo';
    o.source = buildGridRange();
  }
  buildCounterCopyPasteRequest--;
  return o;
}

void checkCopyPasteRequest(api.CopyPasteRequest o) {
  buildCounterCopyPasteRequest++;
  if (buildCounterCopyPasteRequest < 3) {
    checkGridRange(o.destination!);
    unittest.expect(
      o.pasteOrientation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pasteType!,
      unittest.equals('foo'),
    );
    checkGridRange(o.source!);
  }
  buildCounterCopyPasteRequest--;
}

core.int buildCounterCopySheetToAnotherSpreadsheetRequest = 0;
api.CopySheetToAnotherSpreadsheetRequest
    buildCopySheetToAnotherSpreadsheetRequest() {
  final o = api.CopySheetToAnotherSpreadsheetRequest();
  buildCounterCopySheetToAnotherSpreadsheetRequest++;
  if (buildCounterCopySheetToAnotherSpreadsheetRequest < 3) {
    o.destinationSpreadsheetId = 'foo';
  }
  buildCounterCopySheetToAnotherSpreadsheetRequest--;
  return o;
}

void checkCopySheetToAnotherSpreadsheetRequest(
    api.CopySheetToAnotherSpreadsheetRequest o) {
  buildCounterCopySheetToAnotherSpreadsheetRequest++;
  if (buildCounterCopySheetToAnotherSpreadsheetRequest < 3) {
    unittest.expect(
      o.destinationSpreadsheetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCopySheetToAnotherSpreadsheetRequest--;
}

core.int buildCounterCreateDeveloperMetadataRequest = 0;
api.CreateDeveloperMetadataRequest buildCreateDeveloperMetadataRequest() {
  final o = api.CreateDeveloperMetadataRequest();
  buildCounterCreateDeveloperMetadataRequest++;
  if (buildCounterCreateDeveloperMetadataRequest < 3) {
    o.developerMetadata = buildDeveloperMetadata();
  }
  buildCounterCreateDeveloperMetadataRequest--;
  return o;
}

void checkCreateDeveloperMetadataRequest(api.CreateDeveloperMetadataRequest o) {
  buildCounterCreateDeveloperMetadataRequest++;
  if (buildCounterCreateDeveloperMetadataRequest < 3) {
    checkDeveloperMetadata(o.developerMetadata!);
  }
  buildCounterCreateDeveloperMetadataRequest--;
}

core.int buildCounterCreateDeveloperMetadataResponse = 0;
api.CreateDeveloperMetadataResponse buildCreateDeveloperMetadataResponse() {
  final o = api.CreateDeveloperMetadataResponse();
  buildCounterCreateDeveloperMetadataResponse++;
  if (buildCounterCreateDeveloperMetadataResponse < 3) {
    o.developerMetadata = buildDeveloperMetadata();
  }
  buildCounterCreateDeveloperMetadataResponse--;
  return o;
}

void checkCreateDeveloperMetadataResponse(
    api.CreateDeveloperMetadataResponse o) {
  buildCounterCreateDeveloperMetadataResponse++;
  if (buildCounterCreateDeveloperMetadataResponse < 3) {
    checkDeveloperMetadata(o.developerMetadata!);
  }
  buildCounterCreateDeveloperMetadataResponse--;
}

core.int buildCounterCutPasteRequest = 0;
api.CutPasteRequest buildCutPasteRequest() {
  final o = api.CutPasteRequest();
  buildCounterCutPasteRequest++;
  if (buildCounterCutPasteRequest < 3) {
    o.destination = buildGridCoordinate();
    o.pasteType = 'foo';
    o.source = buildGridRange();
  }
  buildCounterCutPasteRequest--;
  return o;
}

void checkCutPasteRequest(api.CutPasteRequest o) {
  buildCounterCutPasteRequest++;
  if (buildCounterCutPasteRequest < 3) {
    checkGridCoordinate(o.destination!);
    unittest.expect(
      o.pasteType!,
      unittest.equals('foo'),
    );
    checkGridRange(o.source!);
  }
  buildCounterCutPasteRequest--;
}

core.int buildCounterDataExecutionStatus = 0;
api.DataExecutionStatus buildDataExecutionStatus() {
  final o = api.DataExecutionStatus();
  buildCounterDataExecutionStatus++;
  if (buildCounterDataExecutionStatus < 3) {
    o.errorCode = 'foo';
    o.errorMessage = 'foo';
    o.lastRefreshTime = 'foo';
    o.state = 'foo';
  }
  buildCounterDataExecutionStatus--;
  return o;
}

void checkDataExecutionStatus(api.DataExecutionStatus o) {
  buildCounterDataExecutionStatus++;
  if (buildCounterDataExecutionStatus < 3) {
    unittest.expect(
      o.errorCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastRefreshTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataExecutionStatus--;
}

core.int buildCounterDataFilter = 0;
api.DataFilter buildDataFilter() {
  final o = api.DataFilter();
  buildCounterDataFilter++;
  if (buildCounterDataFilter < 3) {
    o.a1Range = 'foo';
    o.developerMetadataLookup = buildDeveloperMetadataLookup();
    o.gridRange = buildGridRange();
  }
  buildCounterDataFilter--;
  return o;
}

void checkDataFilter(api.DataFilter o) {
  buildCounterDataFilter++;
  if (buildCounterDataFilter < 3) {
    unittest.expect(
      o.a1Range!,
      unittest.equals('foo'),
    );
    checkDeveloperMetadataLookup(o.developerMetadataLookup!);
    checkGridRange(o.gridRange!);
  }
  buildCounterDataFilter--;
}

core.List<core.Object> buildUnnamed677() {
  final o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed677(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
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
  var casted2 = (o[1]) as core.Map;
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

core.List<core.List<core.Object>> buildUnnamed678() {
  final o = <core.List<core.Object>>[];
  o.add(buildUnnamed677());
  o.add(buildUnnamed677());
  return o;
}

void checkUnnamed678(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed677(o[0]);
  checkUnnamed677(o[1]);
}

core.int buildCounterDataFilterValueRange = 0;
api.DataFilterValueRange buildDataFilterValueRange() {
  final o = api.DataFilterValueRange();
  buildCounterDataFilterValueRange++;
  if (buildCounterDataFilterValueRange < 3) {
    o.dataFilter = buildDataFilter();
    o.majorDimension = 'foo';
    o.values = buildUnnamed678();
  }
  buildCounterDataFilterValueRange--;
  return o;
}

void checkDataFilterValueRange(api.DataFilterValueRange o) {
  buildCounterDataFilterValueRange++;
  if (buildCounterDataFilterValueRange < 3) {
    checkDataFilter(o.dataFilter!);
    unittest.expect(
      o.majorDimension!,
      unittest.equals('foo'),
    );
    checkUnnamed678(o.values!);
  }
  buildCounterDataFilterValueRange--;
}

core.int buildCounterDataLabel = 0;
api.DataLabel buildDataLabel() {
  final o = api.DataLabel();
  buildCounterDataLabel++;
  if (buildCounterDataLabel < 3) {
    o.customLabelData = buildChartData();
    o.placement = 'foo';
    o.textFormat = buildTextFormat();
    o.type = 'foo';
  }
  buildCounterDataLabel--;
  return o;
}

void checkDataLabel(api.DataLabel o) {
  buildCounterDataLabel++;
  if (buildCounterDataLabel < 3) {
    checkChartData(o.customLabelData!);
    unittest.expect(
      o.placement!,
      unittest.equals('foo'),
    );
    checkTextFormat(o.textFormat!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataLabel--;
}

core.List<api.DataSourceColumn> buildUnnamed679() {
  final o = <api.DataSourceColumn>[];
  o.add(buildDataSourceColumn());
  o.add(buildDataSourceColumn());
  return o;
}

void checkUnnamed679(core.List<api.DataSourceColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceColumn(o[0]);
  checkDataSourceColumn(o[1]);
}

core.int buildCounterDataSource = 0;
api.DataSource buildDataSource() {
  final o = api.DataSource();
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    o.calculatedColumns = buildUnnamed679();
    o.dataSourceId = 'foo';
    o.sheetId = 42;
    o.spec = buildDataSourceSpec();
  }
  buildCounterDataSource--;
  return o;
}

void checkDataSource(api.DataSource o) {
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    checkUnnamed679(o.calculatedColumns!);
    unittest.expect(
      o.dataSourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sheetId!,
      unittest.equals(42),
    );
    checkDataSourceSpec(o.spec!);
  }
  buildCounterDataSource--;
}

core.int buildCounterDataSourceChartProperties = 0;
api.DataSourceChartProperties buildDataSourceChartProperties() {
  final o = api.DataSourceChartProperties();
  buildCounterDataSourceChartProperties++;
  if (buildCounterDataSourceChartProperties < 3) {
    o.dataExecutionStatus = buildDataExecutionStatus();
    o.dataSourceId = 'foo';
  }
  buildCounterDataSourceChartProperties--;
  return o;
}

void checkDataSourceChartProperties(api.DataSourceChartProperties o) {
  buildCounterDataSourceChartProperties++;
  if (buildCounterDataSourceChartProperties < 3) {
    checkDataExecutionStatus(o.dataExecutionStatus!);
    unittest.expect(
      o.dataSourceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataSourceChartProperties--;
}

core.int buildCounterDataSourceColumn = 0;
api.DataSourceColumn buildDataSourceColumn() {
  final o = api.DataSourceColumn();
  buildCounterDataSourceColumn++;
  if (buildCounterDataSourceColumn < 3) {
    o.formula = 'foo';
    o.reference = buildDataSourceColumnReference();
  }
  buildCounterDataSourceColumn--;
  return o;
}

void checkDataSourceColumn(api.DataSourceColumn o) {
  buildCounterDataSourceColumn++;
  if (buildCounterDataSourceColumn < 3) {
    unittest.expect(
      o.formula!,
      unittest.equals('foo'),
    );
    checkDataSourceColumnReference(o.reference!);
  }
  buildCounterDataSourceColumn--;
}

core.int buildCounterDataSourceColumnReference = 0;
api.DataSourceColumnReference buildDataSourceColumnReference() {
  final o = api.DataSourceColumnReference();
  buildCounterDataSourceColumnReference++;
  if (buildCounterDataSourceColumnReference < 3) {
    o.name = 'foo';
  }
  buildCounterDataSourceColumnReference--;
  return o;
}

void checkDataSourceColumnReference(api.DataSourceColumnReference o) {
  buildCounterDataSourceColumnReference++;
  if (buildCounterDataSourceColumnReference < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataSourceColumnReference--;
}

core.int buildCounterDataSourceFormula = 0;
api.DataSourceFormula buildDataSourceFormula() {
  final o = api.DataSourceFormula();
  buildCounterDataSourceFormula++;
  if (buildCounterDataSourceFormula < 3) {
    o.dataExecutionStatus = buildDataExecutionStatus();
    o.dataSourceId = 'foo';
  }
  buildCounterDataSourceFormula--;
  return o;
}

void checkDataSourceFormula(api.DataSourceFormula o) {
  buildCounterDataSourceFormula++;
  if (buildCounterDataSourceFormula < 3) {
    checkDataExecutionStatus(o.dataExecutionStatus!);
    unittest.expect(
      o.dataSourceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataSourceFormula--;
}

core.int buildCounterDataSourceObjectReference = 0;
api.DataSourceObjectReference buildDataSourceObjectReference() {
  final o = api.DataSourceObjectReference();
  buildCounterDataSourceObjectReference++;
  if (buildCounterDataSourceObjectReference < 3) {
    o.chartId = 42;
    o.dataSourceFormulaCell = buildGridCoordinate();
    o.dataSourcePivotTableAnchorCell = buildGridCoordinate();
    o.dataSourceTableAnchorCell = buildGridCoordinate();
    o.sheetId = 'foo';
  }
  buildCounterDataSourceObjectReference--;
  return o;
}

void checkDataSourceObjectReference(api.DataSourceObjectReference o) {
  buildCounterDataSourceObjectReference++;
  if (buildCounterDataSourceObjectReference < 3) {
    unittest.expect(
      o.chartId!,
      unittest.equals(42),
    );
    checkGridCoordinate(o.dataSourceFormulaCell!);
    checkGridCoordinate(o.dataSourcePivotTableAnchorCell!);
    checkGridCoordinate(o.dataSourceTableAnchorCell!);
    unittest.expect(
      o.sheetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataSourceObjectReference--;
}

core.List<api.DataSourceObjectReference> buildUnnamed680() {
  final o = <api.DataSourceObjectReference>[];
  o.add(buildDataSourceObjectReference());
  o.add(buildDataSourceObjectReference());
  return o;
}

void checkUnnamed680(core.List<api.DataSourceObjectReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceObjectReference(o[0]);
  checkDataSourceObjectReference(o[1]);
}

core.int buildCounterDataSourceObjectReferences = 0;
api.DataSourceObjectReferences buildDataSourceObjectReferences() {
  final o = api.DataSourceObjectReferences();
  buildCounterDataSourceObjectReferences++;
  if (buildCounterDataSourceObjectReferences < 3) {
    o.references = buildUnnamed680();
  }
  buildCounterDataSourceObjectReferences--;
  return o;
}

void checkDataSourceObjectReferences(api.DataSourceObjectReferences o) {
  buildCounterDataSourceObjectReferences++;
  if (buildCounterDataSourceObjectReferences < 3) {
    checkUnnamed680(o.references!);
  }
  buildCounterDataSourceObjectReferences--;
}

core.int buildCounterDataSourceParameter = 0;
api.DataSourceParameter buildDataSourceParameter() {
  final o = api.DataSourceParameter();
  buildCounterDataSourceParameter++;
  if (buildCounterDataSourceParameter < 3) {
    o.name = 'foo';
    o.namedRangeId = 'foo';
    o.range = buildGridRange();
  }
  buildCounterDataSourceParameter--;
  return o;
}

void checkDataSourceParameter(api.DataSourceParameter o) {
  buildCounterDataSourceParameter++;
  if (buildCounterDataSourceParameter < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.namedRangeId!,
      unittest.equals('foo'),
    );
    checkGridRange(o.range!);
  }
  buildCounterDataSourceParameter--;
}

core.int buildCounterDataSourceRefreshDailySchedule = 0;
api.DataSourceRefreshDailySchedule buildDataSourceRefreshDailySchedule() {
  final o = api.DataSourceRefreshDailySchedule();
  buildCounterDataSourceRefreshDailySchedule++;
  if (buildCounterDataSourceRefreshDailySchedule < 3) {
    o.startTime = buildTimeOfDay();
  }
  buildCounterDataSourceRefreshDailySchedule--;
  return o;
}

void checkDataSourceRefreshDailySchedule(api.DataSourceRefreshDailySchedule o) {
  buildCounterDataSourceRefreshDailySchedule++;
  if (buildCounterDataSourceRefreshDailySchedule < 3) {
    checkTimeOfDay(o.startTime!);
  }
  buildCounterDataSourceRefreshDailySchedule--;
}

core.List<core.int> buildUnnamed681() {
  final o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed681(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterDataSourceRefreshMonthlySchedule = 0;
api.DataSourceRefreshMonthlySchedule buildDataSourceRefreshMonthlySchedule() {
  final o = api.DataSourceRefreshMonthlySchedule();
  buildCounterDataSourceRefreshMonthlySchedule++;
  if (buildCounterDataSourceRefreshMonthlySchedule < 3) {
    o.daysOfMonth = buildUnnamed681();
    o.startTime = buildTimeOfDay();
  }
  buildCounterDataSourceRefreshMonthlySchedule--;
  return o;
}

void checkDataSourceRefreshMonthlySchedule(
    api.DataSourceRefreshMonthlySchedule o) {
  buildCounterDataSourceRefreshMonthlySchedule++;
  if (buildCounterDataSourceRefreshMonthlySchedule < 3) {
    checkUnnamed681(o.daysOfMonth!);
    checkTimeOfDay(o.startTime!);
  }
  buildCounterDataSourceRefreshMonthlySchedule--;
}

core.int buildCounterDataSourceRefreshSchedule = 0;
api.DataSourceRefreshSchedule buildDataSourceRefreshSchedule() {
  final o = api.DataSourceRefreshSchedule();
  buildCounterDataSourceRefreshSchedule++;
  if (buildCounterDataSourceRefreshSchedule < 3) {
    o.dailySchedule = buildDataSourceRefreshDailySchedule();
    o.enabled = true;
    o.monthlySchedule = buildDataSourceRefreshMonthlySchedule();
    o.nextRun = buildInterval();
    o.refreshScope = 'foo';
    o.weeklySchedule = buildDataSourceRefreshWeeklySchedule();
  }
  buildCounterDataSourceRefreshSchedule--;
  return o;
}

void checkDataSourceRefreshSchedule(api.DataSourceRefreshSchedule o) {
  buildCounterDataSourceRefreshSchedule++;
  if (buildCounterDataSourceRefreshSchedule < 3) {
    checkDataSourceRefreshDailySchedule(o.dailySchedule!);
    unittest.expect(o.enabled!, unittest.isTrue);
    checkDataSourceRefreshMonthlySchedule(o.monthlySchedule!);
    checkInterval(o.nextRun!);
    unittest.expect(
      o.refreshScope!,
      unittest.equals('foo'),
    );
    checkDataSourceRefreshWeeklySchedule(o.weeklySchedule!);
  }
  buildCounterDataSourceRefreshSchedule--;
}

core.List<core.String> buildUnnamed682() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed682(core.List<core.String> o) {
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

core.int buildCounterDataSourceRefreshWeeklySchedule = 0;
api.DataSourceRefreshWeeklySchedule buildDataSourceRefreshWeeklySchedule() {
  final o = api.DataSourceRefreshWeeklySchedule();
  buildCounterDataSourceRefreshWeeklySchedule++;
  if (buildCounterDataSourceRefreshWeeklySchedule < 3) {
    o.daysOfWeek = buildUnnamed682();
    o.startTime = buildTimeOfDay();
  }
  buildCounterDataSourceRefreshWeeklySchedule--;
  return o;
}

void checkDataSourceRefreshWeeklySchedule(
    api.DataSourceRefreshWeeklySchedule o) {
  buildCounterDataSourceRefreshWeeklySchedule++;
  if (buildCounterDataSourceRefreshWeeklySchedule < 3) {
    checkUnnamed682(o.daysOfWeek!);
    checkTimeOfDay(o.startTime!);
  }
  buildCounterDataSourceRefreshWeeklySchedule--;
}

core.List<api.DataSourceColumnReference> buildUnnamed683() {
  final o = <api.DataSourceColumnReference>[];
  o.add(buildDataSourceColumnReference());
  o.add(buildDataSourceColumnReference());
  return o;
}

void checkUnnamed683(core.List<api.DataSourceColumnReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceColumnReference(o[0]);
  checkDataSourceColumnReference(o[1]);
}

core.int buildCounterDataSourceSheetDimensionRange = 0;
api.DataSourceSheetDimensionRange buildDataSourceSheetDimensionRange() {
  final o = api.DataSourceSheetDimensionRange();
  buildCounterDataSourceSheetDimensionRange++;
  if (buildCounterDataSourceSheetDimensionRange < 3) {
    o.columnReferences = buildUnnamed683();
    o.sheetId = 42;
  }
  buildCounterDataSourceSheetDimensionRange--;
  return o;
}

void checkDataSourceSheetDimensionRange(api.DataSourceSheetDimensionRange o) {
  buildCounterDataSourceSheetDimensionRange++;
  if (buildCounterDataSourceSheetDimensionRange < 3) {
    checkUnnamed683(o.columnReferences!);
    unittest.expect(
      o.sheetId!,
      unittest.equals(42),
    );
  }
  buildCounterDataSourceSheetDimensionRange--;
}

core.List<api.DataSourceColumn> buildUnnamed684() {
  final o = <api.DataSourceColumn>[];
  o.add(buildDataSourceColumn());
  o.add(buildDataSourceColumn());
  return o;
}

void checkUnnamed684(core.List<api.DataSourceColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceColumn(o[0]);
  checkDataSourceColumn(o[1]);
}

core.int buildCounterDataSourceSheetProperties = 0;
api.DataSourceSheetProperties buildDataSourceSheetProperties() {
  final o = api.DataSourceSheetProperties();
  buildCounterDataSourceSheetProperties++;
  if (buildCounterDataSourceSheetProperties < 3) {
    o.columns = buildUnnamed684();
    o.dataExecutionStatus = buildDataExecutionStatus();
    o.dataSourceId = 'foo';
  }
  buildCounterDataSourceSheetProperties--;
  return o;
}

void checkDataSourceSheetProperties(api.DataSourceSheetProperties o) {
  buildCounterDataSourceSheetProperties++;
  if (buildCounterDataSourceSheetProperties < 3) {
    checkUnnamed684(o.columns!);
    checkDataExecutionStatus(o.dataExecutionStatus!);
    unittest.expect(
      o.dataSourceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataSourceSheetProperties--;
}

core.List<api.DataSourceParameter> buildUnnamed685() {
  final o = <api.DataSourceParameter>[];
  o.add(buildDataSourceParameter());
  o.add(buildDataSourceParameter());
  return o;
}

void checkUnnamed685(core.List<api.DataSourceParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceParameter(o[0]);
  checkDataSourceParameter(o[1]);
}

core.int buildCounterDataSourceSpec = 0;
api.DataSourceSpec buildDataSourceSpec() {
  final o = api.DataSourceSpec();
  buildCounterDataSourceSpec++;
  if (buildCounterDataSourceSpec < 3) {
    o.bigQuery = buildBigQueryDataSourceSpec();
    o.parameters = buildUnnamed685();
  }
  buildCounterDataSourceSpec--;
  return o;
}

void checkDataSourceSpec(api.DataSourceSpec o) {
  buildCounterDataSourceSpec++;
  if (buildCounterDataSourceSpec < 3) {
    checkBigQueryDataSourceSpec(o.bigQuery!);
    checkUnnamed685(o.parameters!);
  }
  buildCounterDataSourceSpec--;
}

core.List<api.DataSourceColumnReference> buildUnnamed686() {
  final o = <api.DataSourceColumnReference>[];
  o.add(buildDataSourceColumnReference());
  o.add(buildDataSourceColumnReference());
  return o;
}

void checkUnnamed686(core.List<api.DataSourceColumnReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceColumnReference(o[0]);
  checkDataSourceColumnReference(o[1]);
}

core.List<api.FilterSpec> buildUnnamed687() {
  final o = <api.FilterSpec>[];
  o.add(buildFilterSpec());
  o.add(buildFilterSpec());
  return o;
}

void checkUnnamed687(core.List<api.FilterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterSpec(o[0]);
  checkFilterSpec(o[1]);
}

core.List<api.SortSpec> buildUnnamed688() {
  final o = <api.SortSpec>[];
  o.add(buildSortSpec());
  o.add(buildSortSpec());
  return o;
}

void checkUnnamed688(core.List<api.SortSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortSpec(o[0]);
  checkSortSpec(o[1]);
}

core.int buildCounterDataSourceTable = 0;
api.DataSourceTable buildDataSourceTable() {
  final o = api.DataSourceTable();
  buildCounterDataSourceTable++;
  if (buildCounterDataSourceTable < 3) {
    o.columnSelectionType = 'foo';
    o.columns = buildUnnamed686();
    o.dataExecutionStatus = buildDataExecutionStatus();
    o.dataSourceId = 'foo';
    o.filterSpecs = buildUnnamed687();
    o.rowLimit = 42;
    o.sortSpecs = buildUnnamed688();
  }
  buildCounterDataSourceTable--;
  return o;
}

void checkDataSourceTable(api.DataSourceTable o) {
  buildCounterDataSourceTable++;
  if (buildCounterDataSourceTable < 3) {
    unittest.expect(
      o.columnSelectionType!,
      unittest.equals('foo'),
    );
    checkUnnamed686(o.columns!);
    checkDataExecutionStatus(o.dataExecutionStatus!);
    unittest.expect(
      o.dataSourceId!,
      unittest.equals('foo'),
    );
    checkUnnamed687(o.filterSpecs!);
    unittest.expect(
      o.rowLimit!,
      unittest.equals(42),
    );
    checkUnnamed688(o.sortSpecs!);
  }
  buildCounterDataSourceTable--;
}

core.int buildCounterDataValidationRule = 0;
api.DataValidationRule buildDataValidationRule() {
  final o = api.DataValidationRule();
  buildCounterDataValidationRule++;
  if (buildCounterDataValidationRule < 3) {
    o.condition = buildBooleanCondition();
    o.inputMessage = 'foo';
    o.showCustomUi = true;
    o.strict = true;
  }
  buildCounterDataValidationRule--;
  return o;
}

void checkDataValidationRule(api.DataValidationRule o) {
  buildCounterDataValidationRule++;
  if (buildCounterDataValidationRule < 3) {
    checkBooleanCondition(o.condition!);
    unittest.expect(
      o.inputMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(o.showCustomUi!, unittest.isTrue);
    unittest.expect(o.strict!, unittest.isTrue);
  }
  buildCounterDataValidationRule--;
}

core.int buildCounterDateTimeRule = 0;
api.DateTimeRule buildDateTimeRule() {
  final o = api.DateTimeRule();
  buildCounterDateTimeRule++;
  if (buildCounterDateTimeRule < 3) {
    o.type = 'foo';
  }
  buildCounterDateTimeRule--;
  return o;
}

void checkDateTimeRule(api.DateTimeRule o) {
  buildCounterDateTimeRule++;
  if (buildCounterDateTimeRule < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDateTimeRule--;
}

core.int buildCounterDeleteBandingRequest = 0;
api.DeleteBandingRequest buildDeleteBandingRequest() {
  final o = api.DeleteBandingRequest();
  buildCounterDeleteBandingRequest++;
  if (buildCounterDeleteBandingRequest < 3) {
    o.bandedRangeId = 42;
  }
  buildCounterDeleteBandingRequest--;
  return o;
}

void checkDeleteBandingRequest(api.DeleteBandingRequest o) {
  buildCounterDeleteBandingRequest++;
  if (buildCounterDeleteBandingRequest < 3) {
    unittest.expect(
      o.bandedRangeId!,
      unittest.equals(42),
    );
  }
  buildCounterDeleteBandingRequest--;
}

core.int buildCounterDeleteConditionalFormatRuleRequest = 0;
api.DeleteConditionalFormatRuleRequest
    buildDeleteConditionalFormatRuleRequest() {
  final o = api.DeleteConditionalFormatRuleRequest();
  buildCounterDeleteConditionalFormatRuleRequest++;
  if (buildCounterDeleteConditionalFormatRuleRequest < 3) {
    o.index = 42;
    o.sheetId = 42;
  }
  buildCounterDeleteConditionalFormatRuleRequest--;
  return o;
}

void checkDeleteConditionalFormatRuleRequest(
    api.DeleteConditionalFormatRuleRequest o) {
  buildCounterDeleteConditionalFormatRuleRequest++;
  if (buildCounterDeleteConditionalFormatRuleRequest < 3) {
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sheetId!,
      unittest.equals(42),
    );
  }
  buildCounterDeleteConditionalFormatRuleRequest--;
}

core.int buildCounterDeleteConditionalFormatRuleResponse = 0;
api.DeleteConditionalFormatRuleResponse
    buildDeleteConditionalFormatRuleResponse() {
  final o = api.DeleteConditionalFormatRuleResponse();
  buildCounterDeleteConditionalFormatRuleResponse++;
  if (buildCounterDeleteConditionalFormatRuleResponse < 3) {
    o.rule = buildConditionalFormatRule();
  }
  buildCounterDeleteConditionalFormatRuleResponse--;
  return o;
}

void checkDeleteConditionalFormatRuleResponse(
    api.DeleteConditionalFormatRuleResponse o) {
  buildCounterDeleteConditionalFormatRuleResponse++;
  if (buildCounterDeleteConditionalFormatRuleResponse < 3) {
    checkConditionalFormatRule(o.rule!);
  }
  buildCounterDeleteConditionalFormatRuleResponse--;
}

core.int buildCounterDeleteDataSourceRequest = 0;
api.DeleteDataSourceRequest buildDeleteDataSourceRequest() {
  final o = api.DeleteDataSourceRequest();
  buildCounterDeleteDataSourceRequest++;
  if (buildCounterDeleteDataSourceRequest < 3) {
    o.dataSourceId = 'foo';
  }
  buildCounterDeleteDataSourceRequest--;
  return o;
}

void checkDeleteDataSourceRequest(api.DeleteDataSourceRequest o) {
  buildCounterDeleteDataSourceRequest++;
  if (buildCounterDeleteDataSourceRequest < 3) {
    unittest.expect(
      o.dataSourceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteDataSourceRequest--;
}

core.int buildCounterDeleteDeveloperMetadataRequest = 0;
api.DeleteDeveloperMetadataRequest buildDeleteDeveloperMetadataRequest() {
  final o = api.DeleteDeveloperMetadataRequest();
  buildCounterDeleteDeveloperMetadataRequest++;
  if (buildCounterDeleteDeveloperMetadataRequest < 3) {
    o.dataFilter = buildDataFilter();
  }
  buildCounterDeleteDeveloperMetadataRequest--;
  return o;
}

void checkDeleteDeveloperMetadataRequest(api.DeleteDeveloperMetadataRequest o) {
  buildCounterDeleteDeveloperMetadataRequest++;
  if (buildCounterDeleteDeveloperMetadataRequest < 3) {
    checkDataFilter(o.dataFilter!);
  }
  buildCounterDeleteDeveloperMetadataRequest--;
}

core.List<api.DeveloperMetadata> buildUnnamed689() {
  final o = <api.DeveloperMetadata>[];
  o.add(buildDeveloperMetadata());
  o.add(buildDeveloperMetadata());
  return o;
}

void checkUnnamed689(core.List<api.DeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeveloperMetadata(o[0]);
  checkDeveloperMetadata(o[1]);
}

core.int buildCounterDeleteDeveloperMetadataResponse = 0;
api.DeleteDeveloperMetadataResponse buildDeleteDeveloperMetadataResponse() {
  final o = api.DeleteDeveloperMetadataResponse();
  buildCounterDeleteDeveloperMetadataResponse++;
  if (buildCounterDeleteDeveloperMetadataResponse < 3) {
    o.deletedDeveloperMetadata = buildUnnamed689();
  }
  buildCounterDeleteDeveloperMetadataResponse--;
  return o;
}

void checkDeleteDeveloperMetadataResponse(
    api.DeleteDeveloperMetadataResponse o) {
  buildCounterDeleteDeveloperMetadataResponse++;
  if (buildCounterDeleteDeveloperMetadataResponse < 3) {
    checkUnnamed689(o.deletedDeveloperMetadata!);
  }
  buildCounterDeleteDeveloperMetadataResponse--;
}

core.int buildCounterDeleteDimensionGroupRequest = 0;
api.DeleteDimensionGroupRequest buildDeleteDimensionGroupRequest() {
  final o = api.DeleteDimensionGroupRequest();
  buildCounterDeleteDimensionGroupRequest++;
  if (buildCounterDeleteDimensionGroupRequest < 3) {
    o.range = buildDimensionRange();
  }
  buildCounterDeleteDimensionGroupRequest--;
  return o;
}

void checkDeleteDimensionGroupRequest(api.DeleteDimensionGroupRequest o) {
  buildCounterDeleteDimensionGroupRequest++;
  if (buildCounterDeleteDimensionGroupRequest < 3) {
    checkDimensionRange(o.range!);
  }
  buildCounterDeleteDimensionGroupRequest--;
}

core.List<api.DimensionGroup> buildUnnamed690() {
  final o = <api.DimensionGroup>[];
  o.add(buildDimensionGroup());
  o.add(buildDimensionGroup());
  return o;
}

void checkUnnamed690(core.List<api.DimensionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionGroup(o[0]);
  checkDimensionGroup(o[1]);
}

core.int buildCounterDeleteDimensionGroupResponse = 0;
api.DeleteDimensionGroupResponse buildDeleteDimensionGroupResponse() {
  final o = api.DeleteDimensionGroupResponse();
  buildCounterDeleteDimensionGroupResponse++;
  if (buildCounterDeleteDimensionGroupResponse < 3) {
    o.dimensionGroups = buildUnnamed690();
  }
  buildCounterDeleteDimensionGroupResponse--;
  return o;
}

void checkDeleteDimensionGroupResponse(api.DeleteDimensionGroupResponse o) {
  buildCounterDeleteDimensionGroupResponse++;
  if (buildCounterDeleteDimensionGroupResponse < 3) {
    checkUnnamed690(o.dimensionGroups!);
  }
  buildCounterDeleteDimensionGroupResponse--;
}

core.int buildCounterDeleteDimensionRequest = 0;
api.DeleteDimensionRequest buildDeleteDimensionRequest() {
  final o = api.DeleteDimensionRequest();
  buildCounterDeleteDimensionRequest++;
  if (buildCounterDeleteDimensionRequest < 3) {
    o.range = buildDimensionRange();
  }
  buildCounterDeleteDimensionRequest--;
  return o;
}

void checkDeleteDimensionRequest(api.DeleteDimensionRequest o) {
  buildCounterDeleteDimensionRequest++;
  if (buildCounterDeleteDimensionRequest < 3) {
    checkDimensionRange(o.range!);
  }
  buildCounterDeleteDimensionRequest--;
}

core.List<api.DimensionRange> buildUnnamed691() {
  final o = <api.DimensionRange>[];
  o.add(buildDimensionRange());
  o.add(buildDimensionRange());
  return o;
}

void checkUnnamed691(core.List<api.DimensionRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionRange(o[0]);
  checkDimensionRange(o[1]);
}

core.int buildCounterDeleteDuplicatesRequest = 0;
api.DeleteDuplicatesRequest buildDeleteDuplicatesRequest() {
  final o = api.DeleteDuplicatesRequest();
  buildCounterDeleteDuplicatesRequest++;
  if (buildCounterDeleteDuplicatesRequest < 3) {
    o.comparisonColumns = buildUnnamed691();
    o.range = buildGridRange();
  }
  buildCounterDeleteDuplicatesRequest--;
  return o;
}

void checkDeleteDuplicatesRequest(api.DeleteDuplicatesRequest o) {
  buildCounterDeleteDuplicatesRequest++;
  if (buildCounterDeleteDuplicatesRequest < 3) {
    checkUnnamed691(o.comparisonColumns!);
    checkGridRange(o.range!);
  }
  buildCounterDeleteDuplicatesRequest--;
}

core.int buildCounterDeleteDuplicatesResponse = 0;
api.DeleteDuplicatesResponse buildDeleteDuplicatesResponse() {
  final o = api.DeleteDuplicatesResponse();
  buildCounterDeleteDuplicatesResponse++;
  if (buildCounterDeleteDuplicatesResponse < 3) {
    o.duplicatesRemovedCount = 42;
  }
  buildCounterDeleteDuplicatesResponse--;
  return o;
}

void checkDeleteDuplicatesResponse(api.DeleteDuplicatesResponse o) {
  buildCounterDeleteDuplicatesResponse++;
  if (buildCounterDeleteDuplicatesResponse < 3) {
    unittest.expect(
      o.duplicatesRemovedCount!,
      unittest.equals(42),
    );
  }
  buildCounterDeleteDuplicatesResponse--;
}

core.int buildCounterDeleteEmbeddedObjectRequest = 0;
api.DeleteEmbeddedObjectRequest buildDeleteEmbeddedObjectRequest() {
  final o = api.DeleteEmbeddedObjectRequest();
  buildCounterDeleteEmbeddedObjectRequest++;
  if (buildCounterDeleteEmbeddedObjectRequest < 3) {
    o.objectId = 42;
  }
  buildCounterDeleteEmbeddedObjectRequest--;
  return o;
}

void checkDeleteEmbeddedObjectRequest(api.DeleteEmbeddedObjectRequest o) {
  buildCounterDeleteEmbeddedObjectRequest++;
  if (buildCounterDeleteEmbeddedObjectRequest < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals(42),
    );
  }
  buildCounterDeleteEmbeddedObjectRequest--;
}

core.int buildCounterDeleteFilterViewRequest = 0;
api.DeleteFilterViewRequest buildDeleteFilterViewRequest() {
  final o = api.DeleteFilterViewRequest();
  buildCounterDeleteFilterViewRequest++;
  if (buildCounterDeleteFilterViewRequest < 3) {
    o.filterId = 42;
  }
  buildCounterDeleteFilterViewRequest--;
  return o;
}

void checkDeleteFilterViewRequest(api.DeleteFilterViewRequest o) {
  buildCounterDeleteFilterViewRequest++;
  if (buildCounterDeleteFilterViewRequest < 3) {
    unittest.expect(
      o.filterId!,
      unittest.equals(42),
    );
  }
  buildCounterDeleteFilterViewRequest--;
}

core.int buildCounterDeleteNamedRangeRequest = 0;
api.DeleteNamedRangeRequest buildDeleteNamedRangeRequest() {
  final o = api.DeleteNamedRangeRequest();
  buildCounterDeleteNamedRangeRequest++;
  if (buildCounterDeleteNamedRangeRequest < 3) {
    o.namedRangeId = 'foo';
  }
  buildCounterDeleteNamedRangeRequest--;
  return o;
}

void checkDeleteNamedRangeRequest(api.DeleteNamedRangeRequest o) {
  buildCounterDeleteNamedRangeRequest++;
  if (buildCounterDeleteNamedRangeRequest < 3) {
    unittest.expect(
      o.namedRangeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteNamedRangeRequest--;
}

core.int buildCounterDeleteProtectedRangeRequest = 0;
api.DeleteProtectedRangeRequest buildDeleteProtectedRangeRequest() {
  final o = api.DeleteProtectedRangeRequest();
  buildCounterDeleteProtectedRangeRequest++;
  if (buildCounterDeleteProtectedRangeRequest < 3) {
    o.protectedRangeId = 42;
  }
  buildCounterDeleteProtectedRangeRequest--;
  return o;
}

void checkDeleteProtectedRangeRequest(api.DeleteProtectedRangeRequest o) {
  buildCounterDeleteProtectedRangeRequest++;
  if (buildCounterDeleteProtectedRangeRequest < 3) {
    unittest.expect(
      o.protectedRangeId!,
      unittest.equals(42),
    );
  }
  buildCounterDeleteProtectedRangeRequest--;
}

core.int buildCounterDeleteRangeRequest = 0;
api.DeleteRangeRequest buildDeleteRangeRequest() {
  final o = api.DeleteRangeRequest();
  buildCounterDeleteRangeRequest++;
  if (buildCounterDeleteRangeRequest < 3) {
    o.range = buildGridRange();
    o.shiftDimension = 'foo';
  }
  buildCounterDeleteRangeRequest--;
  return o;
}

void checkDeleteRangeRequest(api.DeleteRangeRequest o) {
  buildCounterDeleteRangeRequest++;
  if (buildCounterDeleteRangeRequest < 3) {
    checkGridRange(o.range!);
    unittest.expect(
      o.shiftDimension!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteRangeRequest--;
}

core.int buildCounterDeleteSheetRequest = 0;
api.DeleteSheetRequest buildDeleteSheetRequest() {
  final o = api.DeleteSheetRequest();
  buildCounterDeleteSheetRequest++;
  if (buildCounterDeleteSheetRequest < 3) {
    o.sheetId = 42;
  }
  buildCounterDeleteSheetRequest--;
  return o;
}

void checkDeleteSheetRequest(api.DeleteSheetRequest o) {
  buildCounterDeleteSheetRequest++;
  if (buildCounterDeleteSheetRequest < 3) {
    unittest.expect(
      o.sheetId!,
      unittest.equals(42),
    );
  }
  buildCounterDeleteSheetRequest--;
}

core.int buildCounterDeveloperMetadata = 0;
api.DeveloperMetadata buildDeveloperMetadata() {
  final o = api.DeveloperMetadata();
  buildCounterDeveloperMetadata++;
  if (buildCounterDeveloperMetadata < 3) {
    o.location = buildDeveloperMetadataLocation();
    o.metadataId = 42;
    o.metadataKey = 'foo';
    o.metadataValue = 'foo';
    o.visibility = 'foo';
  }
  buildCounterDeveloperMetadata--;
  return o;
}

void checkDeveloperMetadata(api.DeveloperMetadata o) {
  buildCounterDeveloperMetadata++;
  if (buildCounterDeveloperMetadata < 3) {
    checkDeveloperMetadataLocation(o.location!);
    unittest.expect(
      o.metadataId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.metadataKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metadataValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visibility!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeveloperMetadata--;
}

core.int buildCounterDeveloperMetadataLocation = 0;
api.DeveloperMetadataLocation buildDeveloperMetadataLocation() {
  final o = api.DeveloperMetadataLocation();
  buildCounterDeveloperMetadataLocation++;
  if (buildCounterDeveloperMetadataLocation < 3) {
    o.dimensionRange = buildDimensionRange();
    o.locationType = 'foo';
    o.sheetId = 42;
    o.spreadsheet = true;
  }
  buildCounterDeveloperMetadataLocation--;
  return o;
}

void checkDeveloperMetadataLocation(api.DeveloperMetadataLocation o) {
  buildCounterDeveloperMetadataLocation++;
  if (buildCounterDeveloperMetadataLocation < 3) {
    checkDimensionRange(o.dimensionRange!);
    unittest.expect(
      o.locationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sheetId!,
      unittest.equals(42),
    );
    unittest.expect(o.spreadsheet!, unittest.isTrue);
  }
  buildCounterDeveloperMetadataLocation--;
}

core.int buildCounterDeveloperMetadataLookup = 0;
api.DeveloperMetadataLookup buildDeveloperMetadataLookup() {
  final o = api.DeveloperMetadataLookup();
  buildCounterDeveloperMetadataLookup++;
  if (buildCounterDeveloperMetadataLookup < 3) {
    o.locationMatchingStrategy = 'foo';
    o.locationType = 'foo';
    o.metadataId = 42;
    o.metadataKey = 'foo';
    o.metadataLocation = buildDeveloperMetadataLocation();
    o.metadataValue = 'foo';
    o.visibility = 'foo';
  }
  buildCounterDeveloperMetadataLookup--;
  return o;
}

void checkDeveloperMetadataLookup(api.DeveloperMetadataLookup o) {
  buildCounterDeveloperMetadataLookup++;
  if (buildCounterDeveloperMetadataLookup < 3) {
    unittest.expect(
      o.locationMatchingStrategy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metadataId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.metadataKey!,
      unittest.equals('foo'),
    );
    checkDeveloperMetadataLocation(o.metadataLocation!);
    unittest.expect(
      o.metadataValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visibility!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeveloperMetadataLookup--;
}

core.int buildCounterDimensionGroup = 0;
api.DimensionGroup buildDimensionGroup() {
  final o = api.DimensionGroup();
  buildCounterDimensionGroup++;
  if (buildCounterDimensionGroup < 3) {
    o.collapsed = true;
    o.depth = 42;
    o.range = buildDimensionRange();
  }
  buildCounterDimensionGroup--;
  return o;
}

void checkDimensionGroup(api.DimensionGroup o) {
  buildCounterDimensionGroup++;
  if (buildCounterDimensionGroup < 3) {
    unittest.expect(o.collapsed!, unittest.isTrue);
    unittest.expect(
      o.depth!,
      unittest.equals(42),
    );
    checkDimensionRange(o.range!);
  }
  buildCounterDimensionGroup--;
}

core.List<api.DeveloperMetadata> buildUnnamed692() {
  final o = <api.DeveloperMetadata>[];
  o.add(buildDeveloperMetadata());
  o.add(buildDeveloperMetadata());
  return o;
}

void checkUnnamed692(core.List<api.DeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeveloperMetadata(o[0]);
  checkDeveloperMetadata(o[1]);
}

core.int buildCounterDimensionProperties = 0;
api.DimensionProperties buildDimensionProperties() {
  final o = api.DimensionProperties();
  buildCounterDimensionProperties++;
  if (buildCounterDimensionProperties < 3) {
    o.dataSourceColumnReference = buildDataSourceColumnReference();
    o.developerMetadata = buildUnnamed692();
    o.hiddenByFilter = true;
    o.hiddenByUser = true;
    o.pixelSize = 42;
  }
  buildCounterDimensionProperties--;
  return o;
}

void checkDimensionProperties(api.DimensionProperties o) {
  buildCounterDimensionProperties++;
  if (buildCounterDimensionProperties < 3) {
    checkDataSourceColumnReference(o.dataSourceColumnReference!);
    checkUnnamed692(o.developerMetadata!);
    unittest.expect(o.hiddenByFilter!, unittest.isTrue);
    unittest.expect(o.hiddenByUser!, unittest.isTrue);
    unittest.expect(
      o.pixelSize!,
      unittest.equals(42),
    );
  }
  buildCounterDimensionProperties--;
}

core.int buildCounterDimensionRange = 0;
api.DimensionRange buildDimensionRange() {
  final o = api.DimensionRange();
  buildCounterDimensionRange++;
  if (buildCounterDimensionRange < 3) {
    o.dimension = 'foo';
    o.endIndex = 42;
    o.sheetId = 42;
    o.startIndex = 42;
  }
  buildCounterDimensionRange--;
  return o;
}

void checkDimensionRange(api.DimensionRange o) {
  buildCounterDimensionRange++;
  if (buildCounterDimensionRange < 3) {
    unittest.expect(
      o.dimension!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sheetId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
  }
  buildCounterDimensionRange--;
}

core.int buildCounterDuplicateFilterViewRequest = 0;
api.DuplicateFilterViewRequest buildDuplicateFilterViewRequest() {
  final o = api.DuplicateFilterViewRequest();
  buildCounterDuplicateFilterViewRequest++;
  if (buildCounterDuplicateFilterViewRequest < 3) {
    o.filterId = 42;
  }
  buildCounterDuplicateFilterViewRequest--;
  return o;
}

void checkDuplicateFilterViewRequest(api.DuplicateFilterViewRequest o) {
  buildCounterDuplicateFilterViewRequest++;
  if (buildCounterDuplicateFilterViewRequest < 3) {
    unittest.expect(
      o.filterId!,
      unittest.equals(42),
    );
  }
  buildCounterDuplicateFilterViewRequest--;
}

core.int buildCounterDuplicateFilterViewResponse = 0;
api.DuplicateFilterViewResponse buildDuplicateFilterViewResponse() {
  final o = api.DuplicateFilterViewResponse();
  buildCounterDuplicateFilterViewResponse++;
  if (buildCounterDuplicateFilterViewResponse < 3) {
    o.filter = buildFilterView();
  }
  buildCounterDuplicateFilterViewResponse--;
  return o;
}

void checkDuplicateFilterViewResponse(api.DuplicateFilterViewResponse o) {
  buildCounterDuplicateFilterViewResponse++;
  if (buildCounterDuplicateFilterViewResponse < 3) {
    checkFilterView(o.filter!);
  }
  buildCounterDuplicateFilterViewResponse--;
}

core.int buildCounterDuplicateSheetRequest = 0;
api.DuplicateSheetRequest buildDuplicateSheetRequest() {
  final o = api.DuplicateSheetRequest();
  buildCounterDuplicateSheetRequest++;
  if (buildCounterDuplicateSheetRequest < 3) {
    o.insertSheetIndex = 42;
    o.newSheetId = 42;
    o.newSheetName = 'foo';
    o.sourceSheetId = 42;
  }
  buildCounterDuplicateSheetRequest--;
  return o;
}

void checkDuplicateSheetRequest(api.DuplicateSheetRequest o) {
  buildCounterDuplicateSheetRequest++;
  if (buildCounterDuplicateSheetRequest < 3) {
    unittest.expect(
      o.insertSheetIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.newSheetId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.newSheetName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceSheetId!,
      unittest.equals(42),
    );
  }
  buildCounterDuplicateSheetRequest--;
}

core.int buildCounterDuplicateSheetResponse = 0;
api.DuplicateSheetResponse buildDuplicateSheetResponse() {
  final o = api.DuplicateSheetResponse();
  buildCounterDuplicateSheetResponse++;
  if (buildCounterDuplicateSheetResponse < 3) {
    o.properties = buildSheetProperties();
  }
  buildCounterDuplicateSheetResponse--;
  return o;
}

void checkDuplicateSheetResponse(api.DuplicateSheetResponse o) {
  buildCounterDuplicateSheetResponse++;
  if (buildCounterDuplicateSheetResponse < 3) {
    checkSheetProperties(o.properties!);
  }
  buildCounterDuplicateSheetResponse--;
}

core.List<core.String> buildUnnamed693() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed693(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed694() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed694(core.List<core.String> o) {
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

core.int buildCounterEditors = 0;
api.Editors buildEditors() {
  final o = api.Editors();
  buildCounterEditors++;
  if (buildCounterEditors < 3) {
    o.domainUsersCanEdit = true;
    o.groups = buildUnnamed693();
    o.users = buildUnnamed694();
  }
  buildCounterEditors--;
  return o;
}

void checkEditors(api.Editors o) {
  buildCounterEditors++;
  if (buildCounterEditors < 3) {
    unittest.expect(o.domainUsersCanEdit!, unittest.isTrue);
    checkUnnamed693(o.groups!);
    checkUnnamed694(o.users!);
  }
  buildCounterEditors--;
}

core.int buildCounterEmbeddedChart = 0;
api.EmbeddedChart buildEmbeddedChart() {
  final o = api.EmbeddedChart();
  buildCounterEmbeddedChart++;
  if (buildCounterEmbeddedChart < 3) {
    o.border = buildEmbeddedObjectBorder();
    o.chartId = 42;
    o.position = buildEmbeddedObjectPosition();
    o.spec = buildChartSpec();
  }
  buildCounterEmbeddedChart--;
  return o;
}

void checkEmbeddedChart(api.EmbeddedChart o) {
  buildCounterEmbeddedChart++;
  if (buildCounterEmbeddedChart < 3) {
    checkEmbeddedObjectBorder(o.border!);
    unittest.expect(
      o.chartId!,
      unittest.equals(42),
    );
    checkEmbeddedObjectPosition(o.position!);
    checkChartSpec(o.spec!);
  }
  buildCounterEmbeddedChart--;
}

core.int buildCounterEmbeddedObjectBorder = 0;
api.EmbeddedObjectBorder buildEmbeddedObjectBorder() {
  final o = api.EmbeddedObjectBorder();
  buildCounterEmbeddedObjectBorder++;
  if (buildCounterEmbeddedObjectBorder < 3) {
    o.color = buildColor();
    o.colorStyle = buildColorStyle();
  }
  buildCounterEmbeddedObjectBorder--;
  return o;
}

void checkEmbeddedObjectBorder(api.EmbeddedObjectBorder o) {
  buildCounterEmbeddedObjectBorder++;
  if (buildCounterEmbeddedObjectBorder < 3) {
    checkColor(o.color!);
    checkColorStyle(o.colorStyle!);
  }
  buildCounterEmbeddedObjectBorder--;
}

core.int buildCounterEmbeddedObjectPosition = 0;
api.EmbeddedObjectPosition buildEmbeddedObjectPosition() {
  final o = api.EmbeddedObjectPosition();
  buildCounterEmbeddedObjectPosition++;
  if (buildCounterEmbeddedObjectPosition < 3) {
    o.newSheet = true;
    o.overlayPosition = buildOverlayPosition();
    o.sheetId = 42;
  }
  buildCounterEmbeddedObjectPosition--;
  return o;
}

void checkEmbeddedObjectPosition(api.EmbeddedObjectPosition o) {
  buildCounterEmbeddedObjectPosition++;
  if (buildCounterEmbeddedObjectPosition < 3) {
    unittest.expect(o.newSheet!, unittest.isTrue);
    checkOverlayPosition(o.overlayPosition!);
    unittest.expect(
      o.sheetId!,
      unittest.equals(42),
    );
  }
  buildCounterEmbeddedObjectPosition--;
}

core.int buildCounterErrorValue = 0;
api.ErrorValue buildErrorValue() {
  final o = api.ErrorValue();
  buildCounterErrorValue++;
  if (buildCounterErrorValue < 3) {
    o.message = 'foo';
    o.type = 'foo';
  }
  buildCounterErrorValue--;
  return o;
}

void checkErrorValue(api.ErrorValue o) {
  buildCounterErrorValue++;
  if (buildCounterErrorValue < 3) {
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterErrorValue--;
}

core.int buildCounterExtendedValue = 0;
api.ExtendedValue buildExtendedValue() {
  final o = api.ExtendedValue();
  buildCounterExtendedValue++;
  if (buildCounterExtendedValue < 3) {
    o.boolValue = true;
    o.errorValue = buildErrorValue();
    o.formulaValue = 'foo';
    o.numberValue = 42.0;
    o.stringValue = 'foo';
  }
  buildCounterExtendedValue--;
  return o;
}

void checkExtendedValue(api.ExtendedValue o) {
  buildCounterExtendedValue++;
  if (buildCounterExtendedValue < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    checkErrorValue(o.errorValue!);
    unittest.expect(
      o.formulaValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numberValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterExtendedValue--;
}

core.List<core.String> buildUnnamed695() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed695(core.List<core.String> o) {
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

core.int buildCounterFilterCriteria = 0;
api.FilterCriteria buildFilterCriteria() {
  final o = api.FilterCriteria();
  buildCounterFilterCriteria++;
  if (buildCounterFilterCriteria < 3) {
    o.condition = buildBooleanCondition();
    o.hiddenValues = buildUnnamed695();
    o.visibleBackgroundColor = buildColor();
    o.visibleBackgroundColorStyle = buildColorStyle();
    o.visibleForegroundColor = buildColor();
    o.visibleForegroundColorStyle = buildColorStyle();
  }
  buildCounterFilterCriteria--;
  return o;
}

void checkFilterCriteria(api.FilterCriteria o) {
  buildCounterFilterCriteria++;
  if (buildCounterFilterCriteria < 3) {
    checkBooleanCondition(o.condition!);
    checkUnnamed695(o.hiddenValues!);
    checkColor(o.visibleBackgroundColor!);
    checkColorStyle(o.visibleBackgroundColorStyle!);
    checkColor(o.visibleForegroundColor!);
    checkColorStyle(o.visibleForegroundColorStyle!);
  }
  buildCounterFilterCriteria--;
}

core.int buildCounterFilterSpec = 0;
api.FilterSpec buildFilterSpec() {
  final o = api.FilterSpec();
  buildCounterFilterSpec++;
  if (buildCounterFilterSpec < 3) {
    o.columnIndex = 42;
    o.dataSourceColumnReference = buildDataSourceColumnReference();
    o.filterCriteria = buildFilterCriteria();
  }
  buildCounterFilterSpec--;
  return o;
}

void checkFilterSpec(api.FilterSpec o) {
  buildCounterFilterSpec++;
  if (buildCounterFilterSpec < 3) {
    unittest.expect(
      o.columnIndex!,
      unittest.equals(42),
    );
    checkDataSourceColumnReference(o.dataSourceColumnReference!);
    checkFilterCriteria(o.filterCriteria!);
  }
  buildCounterFilterSpec--;
}

core.Map<core.String, api.FilterCriteria> buildUnnamed696() {
  final o = <core.String, api.FilterCriteria>{};
  o['x'] = buildFilterCriteria();
  o['y'] = buildFilterCriteria();
  return o;
}

void checkUnnamed696(core.Map<core.String, api.FilterCriteria> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterCriteria(o['x']!);
  checkFilterCriteria(o['y']!);
}

core.List<api.FilterSpec> buildUnnamed697() {
  final o = <api.FilterSpec>[];
  o.add(buildFilterSpec());
  o.add(buildFilterSpec());
  return o;
}

void checkUnnamed697(core.List<api.FilterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterSpec(o[0]);
  checkFilterSpec(o[1]);
}

core.List<api.SortSpec> buildUnnamed698() {
  final o = <api.SortSpec>[];
  o.add(buildSortSpec());
  o.add(buildSortSpec());
  return o;
}

void checkUnnamed698(core.List<api.SortSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortSpec(o[0]);
  checkSortSpec(o[1]);
}

core.int buildCounterFilterView = 0;
api.FilterView buildFilterView() {
  final o = api.FilterView();
  buildCounterFilterView++;
  if (buildCounterFilterView < 3) {
    o.criteria = buildUnnamed696();
    o.filterSpecs = buildUnnamed697();
    o.filterViewId = 42;
    o.namedRangeId = 'foo';
    o.range = buildGridRange();
    o.sortSpecs = buildUnnamed698();
    o.title = 'foo';
  }
  buildCounterFilterView--;
  return o;
}

void checkFilterView(api.FilterView o) {
  buildCounterFilterView++;
  if (buildCounterFilterView < 3) {
    checkUnnamed696(o.criteria!);
    checkUnnamed697(o.filterSpecs!);
    unittest.expect(
      o.filterViewId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.namedRangeId!,
      unittest.equals('foo'),
    );
    checkGridRange(o.range!);
    checkUnnamed698(o.sortSpecs!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterFilterView--;
}

core.int buildCounterFindReplaceRequest = 0;
api.FindReplaceRequest buildFindReplaceRequest() {
  final o = api.FindReplaceRequest();
  buildCounterFindReplaceRequest++;
  if (buildCounterFindReplaceRequest < 3) {
    o.allSheets = true;
    o.find = 'foo';
    o.includeFormulas = true;
    o.matchCase = true;
    o.matchEntireCell = true;
    o.range = buildGridRange();
    o.replacement = 'foo';
    o.searchByRegex = true;
    o.sheetId = 42;
  }
  buildCounterFindReplaceRequest--;
  return o;
}

void checkFindReplaceRequest(api.FindReplaceRequest o) {
  buildCounterFindReplaceRequest++;
  if (buildCounterFindReplaceRequest < 3) {
    unittest.expect(o.allSheets!, unittest.isTrue);
    unittest.expect(
      o.find!,
      unittest.equals('foo'),
    );
    unittest.expect(o.includeFormulas!, unittest.isTrue);
    unittest.expect(o.matchCase!, unittest.isTrue);
    unittest.expect(o.matchEntireCell!, unittest.isTrue);
    checkGridRange(o.range!);
    unittest.expect(
      o.replacement!,
      unittest.equals('foo'),
    );
    unittest.expect(o.searchByRegex!, unittest.isTrue);
    unittest.expect(
      o.sheetId!,
      unittest.equals(42),
    );
  }
  buildCounterFindReplaceRequest--;
}

core.int buildCounterFindReplaceResponse = 0;
api.FindReplaceResponse buildFindReplaceResponse() {
  final o = api.FindReplaceResponse();
  buildCounterFindReplaceResponse++;
  if (buildCounterFindReplaceResponse < 3) {
    o.formulasChanged = 42;
    o.occurrencesChanged = 42;
    o.rowsChanged = 42;
    o.sheetsChanged = 42;
    o.valuesChanged = 42;
  }
  buildCounterFindReplaceResponse--;
  return o;
}

void checkFindReplaceResponse(api.FindReplaceResponse o) {
  buildCounterFindReplaceResponse++;
  if (buildCounterFindReplaceResponse < 3) {
    unittest.expect(
      o.formulasChanged!,
      unittest.equals(42),
    );
    unittest.expect(
      o.occurrencesChanged!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rowsChanged!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sheetsChanged!,
      unittest.equals(42),
    );
    unittest.expect(
      o.valuesChanged!,
      unittest.equals(42),
    );
  }
  buildCounterFindReplaceResponse--;
}

core.List<api.DataFilter> buildUnnamed699() {
  final o = <api.DataFilter>[];
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

void checkUnnamed699(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0]);
  checkDataFilter(o[1]);
}

core.int buildCounterGetSpreadsheetByDataFilterRequest = 0;
api.GetSpreadsheetByDataFilterRequest buildGetSpreadsheetByDataFilterRequest() {
  final o = api.GetSpreadsheetByDataFilterRequest();
  buildCounterGetSpreadsheetByDataFilterRequest++;
  if (buildCounterGetSpreadsheetByDataFilterRequest < 3) {
    o.dataFilters = buildUnnamed699();
    o.includeGridData = true;
  }
  buildCounterGetSpreadsheetByDataFilterRequest--;
  return o;
}

void checkGetSpreadsheetByDataFilterRequest(
    api.GetSpreadsheetByDataFilterRequest o) {
  buildCounterGetSpreadsheetByDataFilterRequest++;
  if (buildCounterGetSpreadsheetByDataFilterRequest < 3) {
    checkUnnamed699(o.dataFilters!);
    unittest.expect(o.includeGridData!, unittest.isTrue);
  }
  buildCounterGetSpreadsheetByDataFilterRequest--;
}

core.int buildCounterGradientRule = 0;
api.GradientRule buildGradientRule() {
  final o = api.GradientRule();
  buildCounterGradientRule++;
  if (buildCounterGradientRule < 3) {
    o.maxpoint = buildInterpolationPoint();
    o.midpoint = buildInterpolationPoint();
    o.minpoint = buildInterpolationPoint();
  }
  buildCounterGradientRule--;
  return o;
}

void checkGradientRule(api.GradientRule o) {
  buildCounterGradientRule++;
  if (buildCounterGradientRule < 3) {
    checkInterpolationPoint(o.maxpoint!);
    checkInterpolationPoint(o.midpoint!);
    checkInterpolationPoint(o.minpoint!);
  }
  buildCounterGradientRule--;
}

core.int buildCounterGridCoordinate = 0;
api.GridCoordinate buildGridCoordinate() {
  final o = api.GridCoordinate();
  buildCounterGridCoordinate++;
  if (buildCounterGridCoordinate < 3) {
    o.columnIndex = 42;
    o.rowIndex = 42;
    o.sheetId = 42;
  }
  buildCounterGridCoordinate--;
  return o;
}

void checkGridCoordinate(api.GridCoordinate o) {
  buildCounterGridCoordinate++;
  if (buildCounterGridCoordinate < 3) {
    unittest.expect(
      o.columnIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rowIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sheetId!,
      unittest.equals(42),
    );
  }
  buildCounterGridCoordinate--;
}

core.List<api.DimensionProperties> buildUnnamed700() {
  final o = <api.DimensionProperties>[];
  o.add(buildDimensionProperties());
  o.add(buildDimensionProperties());
  return o;
}

void checkUnnamed700(core.List<api.DimensionProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionProperties(o[0]);
  checkDimensionProperties(o[1]);
}

core.List<api.RowData> buildUnnamed701() {
  final o = <api.RowData>[];
  o.add(buildRowData());
  o.add(buildRowData());
  return o;
}

void checkUnnamed701(core.List<api.RowData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRowData(o[0]);
  checkRowData(o[1]);
}

core.List<api.DimensionProperties> buildUnnamed702() {
  final o = <api.DimensionProperties>[];
  o.add(buildDimensionProperties());
  o.add(buildDimensionProperties());
  return o;
}

void checkUnnamed702(core.List<api.DimensionProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionProperties(o[0]);
  checkDimensionProperties(o[1]);
}

core.int buildCounterGridData = 0;
api.GridData buildGridData() {
  final o = api.GridData();
  buildCounterGridData++;
  if (buildCounterGridData < 3) {
    o.columnMetadata = buildUnnamed700();
    o.rowData = buildUnnamed701();
    o.rowMetadata = buildUnnamed702();
    o.startColumn = 42;
    o.startRow = 42;
  }
  buildCounterGridData--;
  return o;
}

void checkGridData(api.GridData o) {
  buildCounterGridData++;
  if (buildCounterGridData < 3) {
    checkUnnamed700(o.columnMetadata!);
    checkUnnamed701(o.rowData!);
    checkUnnamed702(o.rowMetadata!);
    unittest.expect(
      o.startColumn!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startRow!,
      unittest.equals(42),
    );
  }
  buildCounterGridData--;
}

core.int buildCounterGridProperties = 0;
api.GridProperties buildGridProperties() {
  final o = api.GridProperties();
  buildCounterGridProperties++;
  if (buildCounterGridProperties < 3) {
    o.columnCount = 42;
    o.columnGroupControlAfter = true;
    o.frozenColumnCount = 42;
    o.frozenRowCount = 42;
    o.hideGridlines = true;
    o.rowCount = 42;
    o.rowGroupControlAfter = true;
  }
  buildCounterGridProperties--;
  return o;
}

void checkGridProperties(api.GridProperties o) {
  buildCounterGridProperties++;
  if (buildCounterGridProperties < 3) {
    unittest.expect(
      o.columnCount!,
      unittest.equals(42),
    );
    unittest.expect(o.columnGroupControlAfter!, unittest.isTrue);
    unittest.expect(
      o.frozenColumnCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.frozenRowCount!,
      unittest.equals(42),
    );
    unittest.expect(o.hideGridlines!, unittest.isTrue);
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
    unittest.expect(o.rowGroupControlAfter!, unittest.isTrue);
  }
  buildCounterGridProperties--;
}

core.int buildCounterGridRange = 0;
api.GridRange buildGridRange() {
  final o = api.GridRange();
  buildCounterGridRange++;
  if (buildCounterGridRange < 3) {
    o.endColumnIndex = 42;
    o.endRowIndex = 42;
    o.sheetId = 42;
    o.startColumnIndex = 42;
    o.startRowIndex = 42;
  }
  buildCounterGridRange--;
  return o;
}

void checkGridRange(api.GridRange o) {
  buildCounterGridRange++;
  if (buildCounterGridRange < 3) {
    unittest.expect(
      o.endColumnIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.endRowIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sheetId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startColumnIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startRowIndex!,
      unittest.equals(42),
    );
  }
  buildCounterGridRange--;
}

core.List<api.HistogramSeries> buildUnnamed703() {
  final o = <api.HistogramSeries>[];
  o.add(buildHistogramSeries());
  o.add(buildHistogramSeries());
  return o;
}

void checkUnnamed703(core.List<api.HistogramSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistogramSeries(o[0]);
  checkHistogramSeries(o[1]);
}

core.int buildCounterHistogramChartSpec = 0;
api.HistogramChartSpec buildHistogramChartSpec() {
  final o = api.HistogramChartSpec();
  buildCounterHistogramChartSpec++;
  if (buildCounterHistogramChartSpec < 3) {
    o.bucketSize = 42.0;
    o.legendPosition = 'foo';
    o.outlierPercentile = 42.0;
    o.series = buildUnnamed703();
    o.showItemDividers = true;
  }
  buildCounterHistogramChartSpec--;
  return o;
}

void checkHistogramChartSpec(api.HistogramChartSpec o) {
  buildCounterHistogramChartSpec++;
  if (buildCounterHistogramChartSpec < 3) {
    unittest.expect(
      o.bucketSize!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.legendPosition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outlierPercentile!,
      unittest.equals(42.0),
    );
    checkUnnamed703(o.series!);
    unittest.expect(o.showItemDividers!, unittest.isTrue);
  }
  buildCounterHistogramChartSpec--;
}

core.int buildCounterHistogramRule = 0;
api.HistogramRule buildHistogramRule() {
  final o = api.HistogramRule();
  buildCounterHistogramRule++;
  if (buildCounterHistogramRule < 3) {
    o.end = 42.0;
    o.interval = 42.0;
    o.start = 42.0;
  }
  buildCounterHistogramRule--;
  return o;
}

void checkHistogramRule(api.HistogramRule o) {
  buildCounterHistogramRule++;
  if (buildCounterHistogramRule < 3) {
    unittest.expect(
      o.end!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.interval!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.start!,
      unittest.equals(42.0),
    );
  }
  buildCounterHistogramRule--;
}

core.int buildCounterHistogramSeries = 0;
api.HistogramSeries buildHistogramSeries() {
  final o = api.HistogramSeries();
  buildCounterHistogramSeries++;
  if (buildCounterHistogramSeries < 3) {
    o.barColor = buildColor();
    o.barColorStyle = buildColorStyle();
    o.data = buildChartData();
  }
  buildCounterHistogramSeries--;
  return o;
}

void checkHistogramSeries(api.HistogramSeries o) {
  buildCounterHistogramSeries++;
  if (buildCounterHistogramSeries < 3) {
    checkColor(o.barColor!);
    checkColorStyle(o.barColorStyle!);
    checkChartData(o.data!);
  }
  buildCounterHistogramSeries--;
}

core.int buildCounterInsertDimensionRequest = 0;
api.InsertDimensionRequest buildInsertDimensionRequest() {
  final o = api.InsertDimensionRequest();
  buildCounterInsertDimensionRequest++;
  if (buildCounterInsertDimensionRequest < 3) {
    o.inheritFromBefore = true;
    o.range = buildDimensionRange();
  }
  buildCounterInsertDimensionRequest--;
  return o;
}

void checkInsertDimensionRequest(api.InsertDimensionRequest o) {
  buildCounterInsertDimensionRequest++;
  if (buildCounterInsertDimensionRequest < 3) {
    unittest.expect(o.inheritFromBefore!, unittest.isTrue);
    checkDimensionRange(o.range!);
  }
  buildCounterInsertDimensionRequest--;
}

core.int buildCounterInsertRangeRequest = 0;
api.InsertRangeRequest buildInsertRangeRequest() {
  final o = api.InsertRangeRequest();
  buildCounterInsertRangeRequest++;
  if (buildCounterInsertRangeRequest < 3) {
    o.range = buildGridRange();
    o.shiftDimension = 'foo';
  }
  buildCounterInsertRangeRequest--;
  return o;
}

void checkInsertRangeRequest(api.InsertRangeRequest o) {
  buildCounterInsertRangeRequest++;
  if (buildCounterInsertRangeRequest < 3) {
    checkGridRange(o.range!);
    unittest.expect(
      o.shiftDimension!,
      unittest.equals('foo'),
    );
  }
  buildCounterInsertRangeRequest--;
}

core.int buildCounterInterpolationPoint = 0;
api.InterpolationPoint buildInterpolationPoint() {
  final o = api.InterpolationPoint();
  buildCounterInterpolationPoint++;
  if (buildCounterInterpolationPoint < 3) {
    o.color = buildColor();
    o.colorStyle = buildColorStyle();
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterInterpolationPoint--;
  return o;
}

void checkInterpolationPoint(api.InterpolationPoint o) {
  buildCounterInterpolationPoint++;
  if (buildCounterInterpolationPoint < 3) {
    checkColor(o.color!);
    checkColorStyle(o.colorStyle!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterInterpolationPoint--;
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
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterInterval--;
}

core.int buildCounterIterativeCalculationSettings = 0;
api.IterativeCalculationSettings buildIterativeCalculationSettings() {
  final o = api.IterativeCalculationSettings();
  buildCounterIterativeCalculationSettings++;
  if (buildCounterIterativeCalculationSettings < 3) {
    o.convergenceThreshold = 42.0;
    o.maxIterations = 42;
  }
  buildCounterIterativeCalculationSettings--;
  return o;
}

void checkIterativeCalculationSettings(api.IterativeCalculationSettings o) {
  buildCounterIterativeCalculationSettings++;
  if (buildCounterIterativeCalculationSettings < 3) {
    unittest.expect(
      o.convergenceThreshold!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.maxIterations!,
      unittest.equals(42),
    );
  }
  buildCounterIterativeCalculationSettings--;
}

core.int buildCounterKeyValueFormat = 0;
api.KeyValueFormat buildKeyValueFormat() {
  final o = api.KeyValueFormat();
  buildCounterKeyValueFormat++;
  if (buildCounterKeyValueFormat < 3) {
    o.position = buildTextPosition();
    o.textFormat = buildTextFormat();
  }
  buildCounterKeyValueFormat--;
  return o;
}

void checkKeyValueFormat(api.KeyValueFormat o) {
  buildCounterKeyValueFormat++;
  if (buildCounterKeyValueFormat < 3) {
    checkTextPosition(o.position!);
    checkTextFormat(o.textFormat!);
  }
  buildCounterKeyValueFormat--;
}

core.int buildCounterLineStyle = 0;
api.LineStyle buildLineStyle() {
  final o = api.LineStyle();
  buildCounterLineStyle++;
  if (buildCounterLineStyle < 3) {
    o.type = 'foo';
    o.width = 42;
  }
  buildCounterLineStyle--;
  return o;
}

void checkLineStyle(api.LineStyle o) {
  buildCounterLineStyle++;
  if (buildCounterLineStyle < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterLineStyle--;
}

core.int buildCounterLink = 0;
api.Link buildLink() {
  final o = api.Link();
  buildCounterLink++;
  if (buildCounterLink < 3) {
    o.uri = 'foo';
  }
  buildCounterLink--;
  return o;
}

void checkLink(api.Link o) {
  buildCounterLink++;
  if (buildCounterLink < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterLink--;
}

core.List<api.ManualRuleGroup> buildUnnamed704() {
  final o = <api.ManualRuleGroup>[];
  o.add(buildManualRuleGroup());
  o.add(buildManualRuleGroup());
  return o;
}

void checkUnnamed704(core.List<api.ManualRuleGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManualRuleGroup(o[0]);
  checkManualRuleGroup(o[1]);
}

core.int buildCounterManualRule = 0;
api.ManualRule buildManualRule() {
  final o = api.ManualRule();
  buildCounterManualRule++;
  if (buildCounterManualRule < 3) {
    o.groups = buildUnnamed704();
  }
  buildCounterManualRule--;
  return o;
}

void checkManualRule(api.ManualRule o) {
  buildCounterManualRule++;
  if (buildCounterManualRule < 3) {
    checkUnnamed704(o.groups!);
  }
  buildCounterManualRule--;
}

core.List<api.ExtendedValue> buildUnnamed705() {
  final o = <api.ExtendedValue>[];
  o.add(buildExtendedValue());
  o.add(buildExtendedValue());
  return o;
}

void checkUnnamed705(core.List<api.ExtendedValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtendedValue(o[0]);
  checkExtendedValue(o[1]);
}

core.int buildCounterManualRuleGroup = 0;
api.ManualRuleGroup buildManualRuleGroup() {
  final o = api.ManualRuleGroup();
  buildCounterManualRuleGroup++;
  if (buildCounterManualRuleGroup < 3) {
    o.groupName = buildExtendedValue();
    o.items = buildUnnamed705();
  }
  buildCounterManualRuleGroup--;
  return o;
}

void checkManualRuleGroup(api.ManualRuleGroup o) {
  buildCounterManualRuleGroup++;
  if (buildCounterManualRuleGroup < 3) {
    checkExtendedValue(o.groupName!);
    checkUnnamed705(o.items!);
  }
  buildCounterManualRuleGroup--;
}

core.List<api.DataFilter> buildUnnamed706() {
  final o = <api.DataFilter>[];
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

void checkUnnamed706(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0]);
  checkDataFilter(o[1]);
}

core.int buildCounterMatchedDeveloperMetadata = 0;
api.MatchedDeveloperMetadata buildMatchedDeveloperMetadata() {
  final o = api.MatchedDeveloperMetadata();
  buildCounterMatchedDeveloperMetadata++;
  if (buildCounterMatchedDeveloperMetadata < 3) {
    o.dataFilters = buildUnnamed706();
    o.developerMetadata = buildDeveloperMetadata();
  }
  buildCounterMatchedDeveloperMetadata--;
  return o;
}

void checkMatchedDeveloperMetadata(api.MatchedDeveloperMetadata o) {
  buildCounterMatchedDeveloperMetadata++;
  if (buildCounterMatchedDeveloperMetadata < 3) {
    checkUnnamed706(o.dataFilters!);
    checkDeveloperMetadata(o.developerMetadata!);
  }
  buildCounterMatchedDeveloperMetadata--;
}

core.List<api.DataFilter> buildUnnamed707() {
  final o = <api.DataFilter>[];
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

void checkUnnamed707(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0]);
  checkDataFilter(o[1]);
}

core.int buildCounterMatchedValueRange = 0;
api.MatchedValueRange buildMatchedValueRange() {
  final o = api.MatchedValueRange();
  buildCounterMatchedValueRange++;
  if (buildCounterMatchedValueRange < 3) {
    o.dataFilters = buildUnnamed707();
    o.valueRange = buildValueRange();
  }
  buildCounterMatchedValueRange--;
  return o;
}

void checkMatchedValueRange(api.MatchedValueRange o) {
  buildCounterMatchedValueRange++;
  if (buildCounterMatchedValueRange < 3) {
    checkUnnamed707(o.dataFilters!);
    checkValueRange(o.valueRange!);
  }
  buildCounterMatchedValueRange--;
}

core.int buildCounterMergeCellsRequest = 0;
api.MergeCellsRequest buildMergeCellsRequest() {
  final o = api.MergeCellsRequest();
  buildCounterMergeCellsRequest++;
  if (buildCounterMergeCellsRequest < 3) {
    o.mergeType = 'foo';
    o.range = buildGridRange();
  }
  buildCounterMergeCellsRequest--;
  return o;
}

void checkMergeCellsRequest(api.MergeCellsRequest o) {
  buildCounterMergeCellsRequest++;
  if (buildCounterMergeCellsRequest < 3) {
    unittest.expect(
      o.mergeType!,
      unittest.equals('foo'),
    );
    checkGridRange(o.range!);
  }
  buildCounterMergeCellsRequest--;
}

core.int buildCounterMoveDimensionRequest = 0;
api.MoveDimensionRequest buildMoveDimensionRequest() {
  final o = api.MoveDimensionRequest();
  buildCounterMoveDimensionRequest++;
  if (buildCounterMoveDimensionRequest < 3) {
    o.destinationIndex = 42;
    o.source = buildDimensionRange();
  }
  buildCounterMoveDimensionRequest--;
  return o;
}

void checkMoveDimensionRequest(api.MoveDimensionRequest o) {
  buildCounterMoveDimensionRequest++;
  if (buildCounterMoveDimensionRequest < 3) {
    unittest.expect(
      o.destinationIndex!,
      unittest.equals(42),
    );
    checkDimensionRange(o.source!);
  }
  buildCounterMoveDimensionRequest--;
}

core.int buildCounterNamedRange = 0;
api.NamedRange buildNamedRange() {
  final o = api.NamedRange();
  buildCounterNamedRange++;
  if (buildCounterNamedRange < 3) {
    o.name = 'foo';
    o.namedRangeId = 'foo';
    o.range = buildGridRange();
  }
  buildCounterNamedRange--;
  return o;
}

void checkNamedRange(api.NamedRange o) {
  buildCounterNamedRange++;
  if (buildCounterNamedRange < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.namedRangeId!,
      unittest.equals('foo'),
    );
    checkGridRange(o.range!);
  }
  buildCounterNamedRange--;
}

core.int buildCounterNumberFormat = 0;
api.NumberFormat buildNumberFormat() {
  final o = api.NumberFormat();
  buildCounterNumberFormat++;
  if (buildCounterNumberFormat < 3) {
    o.pattern = 'foo';
    o.type = 'foo';
  }
  buildCounterNumberFormat--;
  return o;
}

void checkNumberFormat(api.NumberFormat o) {
  buildCounterNumberFormat++;
  if (buildCounterNumberFormat < 3) {
    unittest.expect(
      o.pattern!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterNumberFormat--;
}

core.int buildCounterOrgChartSpec = 0;
api.OrgChartSpec buildOrgChartSpec() {
  final o = api.OrgChartSpec();
  buildCounterOrgChartSpec++;
  if (buildCounterOrgChartSpec < 3) {
    o.labels = buildChartData();
    o.nodeColor = buildColor();
    o.nodeColorStyle = buildColorStyle();
    o.nodeSize = 'foo';
    o.parentLabels = buildChartData();
    o.selectedNodeColor = buildColor();
    o.selectedNodeColorStyle = buildColorStyle();
    o.tooltips = buildChartData();
  }
  buildCounterOrgChartSpec--;
  return o;
}

void checkOrgChartSpec(api.OrgChartSpec o) {
  buildCounterOrgChartSpec++;
  if (buildCounterOrgChartSpec < 3) {
    checkChartData(o.labels!);
    checkColor(o.nodeColor!);
    checkColorStyle(o.nodeColorStyle!);
    unittest.expect(
      o.nodeSize!,
      unittest.equals('foo'),
    );
    checkChartData(o.parentLabels!);
    checkColor(o.selectedNodeColor!);
    checkColorStyle(o.selectedNodeColorStyle!);
    checkChartData(o.tooltips!);
  }
  buildCounterOrgChartSpec--;
}

core.int buildCounterOverlayPosition = 0;
api.OverlayPosition buildOverlayPosition() {
  final o = api.OverlayPosition();
  buildCounterOverlayPosition++;
  if (buildCounterOverlayPosition < 3) {
    o.anchorCell = buildGridCoordinate();
    o.heightPixels = 42;
    o.offsetXPixels = 42;
    o.offsetYPixels = 42;
    o.widthPixels = 42;
  }
  buildCounterOverlayPosition--;
  return o;
}

void checkOverlayPosition(api.OverlayPosition o) {
  buildCounterOverlayPosition++;
  if (buildCounterOverlayPosition < 3) {
    checkGridCoordinate(o.anchorCell!);
    unittest.expect(
      o.heightPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.offsetXPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.offsetYPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.widthPixels!,
      unittest.equals(42),
    );
  }
  buildCounterOverlayPosition--;
}

core.int buildCounterPadding = 0;
api.Padding buildPadding() {
  final o = api.Padding();
  buildCounterPadding++;
  if (buildCounterPadding < 3) {
    o.bottom = 42;
    o.left = 42;
    o.right = 42;
    o.top = 42;
  }
  buildCounterPadding--;
  return o;
}

void checkPadding(api.Padding o) {
  buildCounterPadding++;
  if (buildCounterPadding < 3) {
    unittest.expect(
      o.bottom!,
      unittest.equals(42),
    );
    unittest.expect(
      o.left!,
      unittest.equals(42),
    );
    unittest.expect(
      o.right!,
      unittest.equals(42),
    );
    unittest.expect(
      o.top!,
      unittest.equals(42),
    );
  }
  buildCounterPadding--;
}

core.int buildCounterPasteDataRequest = 0;
api.PasteDataRequest buildPasteDataRequest() {
  final o = api.PasteDataRequest();
  buildCounterPasteDataRequest++;
  if (buildCounterPasteDataRequest < 3) {
    o.coordinate = buildGridCoordinate();
    o.data = 'foo';
    o.delimiter = 'foo';
    o.html = true;
    o.type = 'foo';
  }
  buildCounterPasteDataRequest--;
  return o;
}

void checkPasteDataRequest(api.PasteDataRequest o) {
  buildCounterPasteDataRequest++;
  if (buildCounterPasteDataRequest < 3) {
    checkGridCoordinate(o.coordinate!);
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.delimiter!,
      unittest.equals('foo'),
    );
    unittest.expect(o.html!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterPasteDataRequest--;
}

core.int buildCounterPieChartSpec = 0;
api.PieChartSpec buildPieChartSpec() {
  final o = api.PieChartSpec();
  buildCounterPieChartSpec++;
  if (buildCounterPieChartSpec < 3) {
    o.domain = buildChartData();
    o.legendPosition = 'foo';
    o.pieHole = 42.0;
    o.series = buildChartData();
    o.threeDimensional = true;
  }
  buildCounterPieChartSpec--;
  return o;
}

void checkPieChartSpec(api.PieChartSpec o) {
  buildCounterPieChartSpec++;
  if (buildCounterPieChartSpec < 3) {
    checkChartData(o.domain!);
    unittest.expect(
      o.legendPosition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pieHole!,
      unittest.equals(42.0),
    );
    checkChartData(o.series!);
    unittest.expect(o.threeDimensional!, unittest.isTrue);
  }
  buildCounterPieChartSpec--;
}

core.List<core.String> buildUnnamed708() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed708(core.List<core.String> o) {
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

core.int buildCounterPivotFilterCriteria = 0;
api.PivotFilterCriteria buildPivotFilterCriteria() {
  final o = api.PivotFilterCriteria();
  buildCounterPivotFilterCriteria++;
  if (buildCounterPivotFilterCriteria < 3) {
    o.condition = buildBooleanCondition();
    o.visibleByDefault = true;
    o.visibleValues = buildUnnamed708();
  }
  buildCounterPivotFilterCriteria--;
  return o;
}

void checkPivotFilterCriteria(api.PivotFilterCriteria o) {
  buildCounterPivotFilterCriteria++;
  if (buildCounterPivotFilterCriteria < 3) {
    checkBooleanCondition(o.condition!);
    unittest.expect(o.visibleByDefault!, unittest.isTrue);
    checkUnnamed708(o.visibleValues!);
  }
  buildCounterPivotFilterCriteria--;
}

core.int buildCounterPivotFilterSpec = 0;
api.PivotFilterSpec buildPivotFilterSpec() {
  final o = api.PivotFilterSpec();
  buildCounterPivotFilterSpec++;
  if (buildCounterPivotFilterSpec < 3) {
    o.columnOffsetIndex = 42;
    o.dataSourceColumnReference = buildDataSourceColumnReference();
    o.filterCriteria = buildPivotFilterCriteria();
  }
  buildCounterPivotFilterSpec--;
  return o;
}

void checkPivotFilterSpec(api.PivotFilterSpec o) {
  buildCounterPivotFilterSpec++;
  if (buildCounterPivotFilterSpec < 3) {
    unittest.expect(
      o.columnOffsetIndex!,
      unittest.equals(42),
    );
    checkDataSourceColumnReference(o.dataSourceColumnReference!);
    checkPivotFilterCriteria(o.filterCriteria!);
  }
  buildCounterPivotFilterSpec--;
}

core.List<api.PivotGroupValueMetadata> buildUnnamed709() {
  final o = <api.PivotGroupValueMetadata>[];
  o.add(buildPivotGroupValueMetadata());
  o.add(buildPivotGroupValueMetadata());
  return o;
}

void checkUnnamed709(core.List<api.PivotGroupValueMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotGroupValueMetadata(o[0]);
  checkPivotGroupValueMetadata(o[1]);
}

core.int buildCounterPivotGroup = 0;
api.PivotGroup buildPivotGroup() {
  final o = api.PivotGroup();
  buildCounterPivotGroup++;
  if (buildCounterPivotGroup < 3) {
    o.dataSourceColumnReference = buildDataSourceColumnReference();
    o.groupLimit = buildPivotGroupLimit();
    o.groupRule = buildPivotGroupRule();
    o.label = 'foo';
    o.repeatHeadings = true;
    o.showTotals = true;
    o.sortOrder = 'foo';
    o.sourceColumnOffset = 42;
    o.valueBucket = buildPivotGroupSortValueBucket();
    o.valueMetadata = buildUnnamed709();
  }
  buildCounterPivotGroup--;
  return o;
}

void checkPivotGroup(api.PivotGroup o) {
  buildCounterPivotGroup++;
  if (buildCounterPivotGroup < 3) {
    checkDataSourceColumnReference(o.dataSourceColumnReference!);
    checkPivotGroupLimit(o.groupLimit!);
    checkPivotGroupRule(o.groupRule!);
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(o.repeatHeadings!, unittest.isTrue);
    unittest.expect(o.showTotals!, unittest.isTrue);
    unittest.expect(
      o.sortOrder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceColumnOffset!,
      unittest.equals(42),
    );
    checkPivotGroupSortValueBucket(o.valueBucket!);
    checkUnnamed709(o.valueMetadata!);
  }
  buildCounterPivotGroup--;
}

core.int buildCounterPivotGroupLimit = 0;
api.PivotGroupLimit buildPivotGroupLimit() {
  final o = api.PivotGroupLimit();
  buildCounterPivotGroupLimit++;
  if (buildCounterPivotGroupLimit < 3) {
    o.applyOrder = 42;
    o.countLimit = 42;
  }
  buildCounterPivotGroupLimit--;
  return o;
}

void checkPivotGroupLimit(api.PivotGroupLimit o) {
  buildCounterPivotGroupLimit++;
  if (buildCounterPivotGroupLimit < 3) {
    unittest.expect(
      o.applyOrder!,
      unittest.equals(42),
    );
    unittest.expect(
      o.countLimit!,
      unittest.equals(42),
    );
  }
  buildCounterPivotGroupLimit--;
}

core.int buildCounterPivotGroupRule = 0;
api.PivotGroupRule buildPivotGroupRule() {
  final o = api.PivotGroupRule();
  buildCounterPivotGroupRule++;
  if (buildCounterPivotGroupRule < 3) {
    o.dateTimeRule = buildDateTimeRule();
    o.histogramRule = buildHistogramRule();
    o.manualRule = buildManualRule();
  }
  buildCounterPivotGroupRule--;
  return o;
}

void checkPivotGroupRule(api.PivotGroupRule o) {
  buildCounterPivotGroupRule++;
  if (buildCounterPivotGroupRule < 3) {
    checkDateTimeRule(o.dateTimeRule!);
    checkHistogramRule(o.histogramRule!);
    checkManualRule(o.manualRule!);
  }
  buildCounterPivotGroupRule--;
}

core.List<api.ExtendedValue> buildUnnamed710() {
  final o = <api.ExtendedValue>[];
  o.add(buildExtendedValue());
  o.add(buildExtendedValue());
  return o;
}

void checkUnnamed710(core.List<api.ExtendedValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtendedValue(o[0]);
  checkExtendedValue(o[1]);
}

core.int buildCounterPivotGroupSortValueBucket = 0;
api.PivotGroupSortValueBucket buildPivotGroupSortValueBucket() {
  final o = api.PivotGroupSortValueBucket();
  buildCounterPivotGroupSortValueBucket++;
  if (buildCounterPivotGroupSortValueBucket < 3) {
    o.buckets = buildUnnamed710();
    o.valuesIndex = 42;
  }
  buildCounterPivotGroupSortValueBucket--;
  return o;
}

void checkPivotGroupSortValueBucket(api.PivotGroupSortValueBucket o) {
  buildCounterPivotGroupSortValueBucket++;
  if (buildCounterPivotGroupSortValueBucket < 3) {
    checkUnnamed710(o.buckets!);
    unittest.expect(
      o.valuesIndex!,
      unittest.equals(42),
    );
  }
  buildCounterPivotGroupSortValueBucket--;
}

core.int buildCounterPivotGroupValueMetadata = 0;
api.PivotGroupValueMetadata buildPivotGroupValueMetadata() {
  final o = api.PivotGroupValueMetadata();
  buildCounterPivotGroupValueMetadata++;
  if (buildCounterPivotGroupValueMetadata < 3) {
    o.collapsed = true;
    o.value = buildExtendedValue();
  }
  buildCounterPivotGroupValueMetadata--;
  return o;
}

void checkPivotGroupValueMetadata(api.PivotGroupValueMetadata o) {
  buildCounterPivotGroupValueMetadata++;
  if (buildCounterPivotGroupValueMetadata < 3) {
    unittest.expect(o.collapsed!, unittest.isTrue);
    checkExtendedValue(o.value!);
  }
  buildCounterPivotGroupValueMetadata--;
}

core.List<api.PivotGroup> buildUnnamed711() {
  final o = <api.PivotGroup>[];
  o.add(buildPivotGroup());
  o.add(buildPivotGroup());
  return o;
}

void checkUnnamed711(core.List<api.PivotGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotGroup(o[0]);
  checkPivotGroup(o[1]);
}

core.Map<core.String, api.PivotFilterCriteria> buildUnnamed712() {
  final o = <core.String, api.PivotFilterCriteria>{};
  o['x'] = buildPivotFilterCriteria();
  o['y'] = buildPivotFilterCriteria();
  return o;
}

void checkUnnamed712(core.Map<core.String, api.PivotFilterCriteria> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotFilterCriteria(o['x']!);
  checkPivotFilterCriteria(o['y']!);
}

core.List<api.PivotFilterSpec> buildUnnamed713() {
  final o = <api.PivotFilterSpec>[];
  o.add(buildPivotFilterSpec());
  o.add(buildPivotFilterSpec());
  return o;
}

void checkUnnamed713(core.List<api.PivotFilterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotFilterSpec(o[0]);
  checkPivotFilterSpec(o[1]);
}

core.List<api.PivotGroup> buildUnnamed714() {
  final o = <api.PivotGroup>[];
  o.add(buildPivotGroup());
  o.add(buildPivotGroup());
  return o;
}

void checkUnnamed714(core.List<api.PivotGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotGroup(o[0]);
  checkPivotGroup(o[1]);
}

core.List<api.PivotValue> buildUnnamed715() {
  final o = <api.PivotValue>[];
  o.add(buildPivotValue());
  o.add(buildPivotValue());
  return o;
}

void checkUnnamed715(core.List<api.PivotValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotValue(o[0]);
  checkPivotValue(o[1]);
}

core.int buildCounterPivotTable = 0;
api.PivotTable buildPivotTable() {
  final o = api.PivotTable();
  buildCounterPivotTable++;
  if (buildCounterPivotTable < 3) {
    o.columns = buildUnnamed711();
    o.criteria = buildUnnamed712();
    o.dataExecutionStatus = buildDataExecutionStatus();
    o.dataSourceId = 'foo';
    o.filterSpecs = buildUnnamed713();
    o.rows = buildUnnamed714();
    o.source = buildGridRange();
    o.valueLayout = 'foo';
    o.values = buildUnnamed715();
  }
  buildCounterPivotTable--;
  return o;
}

void checkPivotTable(api.PivotTable o) {
  buildCounterPivotTable++;
  if (buildCounterPivotTable < 3) {
    checkUnnamed711(o.columns!);
    checkUnnamed712(o.criteria!);
    checkDataExecutionStatus(o.dataExecutionStatus!);
    unittest.expect(
      o.dataSourceId!,
      unittest.equals('foo'),
    );
    checkUnnamed713(o.filterSpecs!);
    checkUnnamed714(o.rows!);
    checkGridRange(o.source!);
    unittest.expect(
      o.valueLayout!,
      unittest.equals('foo'),
    );
    checkUnnamed715(o.values!);
  }
  buildCounterPivotTable--;
}

core.int buildCounterPivotValue = 0;
api.PivotValue buildPivotValue() {
  final o = api.PivotValue();
  buildCounterPivotValue++;
  if (buildCounterPivotValue < 3) {
    o.calculatedDisplayType = 'foo';
    o.dataSourceColumnReference = buildDataSourceColumnReference();
    o.formula = 'foo';
    o.name = 'foo';
    o.sourceColumnOffset = 42;
    o.summarizeFunction = 'foo';
  }
  buildCounterPivotValue--;
  return o;
}

void checkPivotValue(api.PivotValue o) {
  buildCounterPivotValue++;
  if (buildCounterPivotValue < 3) {
    unittest.expect(
      o.calculatedDisplayType!,
      unittest.equals('foo'),
    );
    checkDataSourceColumnReference(o.dataSourceColumnReference!);
    unittest.expect(
      o.formula!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceColumnOffset!,
      unittest.equals(42),
    );
    unittest.expect(
      o.summarizeFunction!,
      unittest.equals('foo'),
    );
  }
  buildCounterPivotValue--;
}

core.int buildCounterPointStyle = 0;
api.PointStyle buildPointStyle() {
  final o = api.PointStyle();
  buildCounterPointStyle++;
  if (buildCounterPointStyle < 3) {
    o.shape = 'foo';
    o.size = 42.0;
  }
  buildCounterPointStyle--;
  return o;
}

void checkPointStyle(api.PointStyle o) {
  buildCounterPointStyle++;
  if (buildCounterPointStyle < 3) {
    unittest.expect(
      o.shape!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.size!,
      unittest.equals(42.0),
    );
  }
  buildCounterPointStyle--;
}

core.List<api.GridRange> buildUnnamed716() {
  final o = <api.GridRange>[];
  o.add(buildGridRange());
  o.add(buildGridRange());
  return o;
}

void checkUnnamed716(core.List<api.GridRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGridRange(o[0]);
  checkGridRange(o[1]);
}

core.int buildCounterProtectedRange = 0;
api.ProtectedRange buildProtectedRange() {
  final o = api.ProtectedRange();
  buildCounterProtectedRange++;
  if (buildCounterProtectedRange < 3) {
    o.description = 'foo';
    o.editors = buildEditors();
    o.namedRangeId = 'foo';
    o.protectedRangeId = 42;
    o.range = buildGridRange();
    o.requestingUserCanEdit = true;
    o.unprotectedRanges = buildUnnamed716();
    o.warningOnly = true;
  }
  buildCounterProtectedRange--;
  return o;
}

void checkProtectedRange(api.ProtectedRange o) {
  buildCounterProtectedRange++;
  if (buildCounterProtectedRange < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkEditors(o.editors!);
    unittest.expect(
      o.namedRangeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protectedRangeId!,
      unittest.equals(42),
    );
    checkGridRange(o.range!);
    unittest.expect(o.requestingUserCanEdit!, unittest.isTrue);
    checkUnnamed716(o.unprotectedRanges!);
    unittest.expect(o.warningOnly!, unittest.isTrue);
  }
  buildCounterProtectedRange--;
}

core.int buildCounterRandomizeRangeRequest = 0;
api.RandomizeRangeRequest buildRandomizeRangeRequest() {
  final o = api.RandomizeRangeRequest();
  buildCounterRandomizeRangeRequest++;
  if (buildCounterRandomizeRangeRequest < 3) {
    o.range = buildGridRange();
  }
  buildCounterRandomizeRangeRequest--;
  return o;
}

void checkRandomizeRangeRequest(api.RandomizeRangeRequest o) {
  buildCounterRandomizeRangeRequest++;
  if (buildCounterRandomizeRangeRequest < 3) {
    checkGridRange(o.range!);
  }
  buildCounterRandomizeRangeRequest--;
}

core.int buildCounterRefreshDataSourceObjectExecutionStatus = 0;
api.RefreshDataSourceObjectExecutionStatus
    buildRefreshDataSourceObjectExecutionStatus() {
  final o = api.RefreshDataSourceObjectExecutionStatus();
  buildCounterRefreshDataSourceObjectExecutionStatus++;
  if (buildCounterRefreshDataSourceObjectExecutionStatus < 3) {
    o.dataExecutionStatus = buildDataExecutionStatus();
    o.reference = buildDataSourceObjectReference();
  }
  buildCounterRefreshDataSourceObjectExecutionStatus--;
  return o;
}

void checkRefreshDataSourceObjectExecutionStatus(
    api.RefreshDataSourceObjectExecutionStatus o) {
  buildCounterRefreshDataSourceObjectExecutionStatus++;
  if (buildCounterRefreshDataSourceObjectExecutionStatus < 3) {
    checkDataExecutionStatus(o.dataExecutionStatus!);
    checkDataSourceObjectReference(o.reference!);
  }
  buildCounterRefreshDataSourceObjectExecutionStatus--;
}

core.int buildCounterRefreshDataSourceRequest = 0;
api.RefreshDataSourceRequest buildRefreshDataSourceRequest() {
  final o = api.RefreshDataSourceRequest();
  buildCounterRefreshDataSourceRequest++;
  if (buildCounterRefreshDataSourceRequest < 3) {
    o.dataSourceId = 'foo';
    o.force = true;
    o.isAll = true;
    o.references = buildDataSourceObjectReferences();
  }
  buildCounterRefreshDataSourceRequest--;
  return o;
}

void checkRefreshDataSourceRequest(api.RefreshDataSourceRequest o) {
  buildCounterRefreshDataSourceRequest++;
  if (buildCounterRefreshDataSourceRequest < 3) {
    unittest.expect(
      o.dataSourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.force!, unittest.isTrue);
    unittest.expect(o.isAll!, unittest.isTrue);
    checkDataSourceObjectReferences(o.references!);
  }
  buildCounterRefreshDataSourceRequest--;
}

core.List<api.RefreshDataSourceObjectExecutionStatus> buildUnnamed717() {
  final o = <api.RefreshDataSourceObjectExecutionStatus>[];
  o.add(buildRefreshDataSourceObjectExecutionStatus());
  o.add(buildRefreshDataSourceObjectExecutionStatus());
  return o;
}

void checkUnnamed717(core.List<api.RefreshDataSourceObjectExecutionStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRefreshDataSourceObjectExecutionStatus(o[0]);
  checkRefreshDataSourceObjectExecutionStatus(o[1]);
}

core.int buildCounterRefreshDataSourceResponse = 0;
api.RefreshDataSourceResponse buildRefreshDataSourceResponse() {
  final o = api.RefreshDataSourceResponse();
  buildCounterRefreshDataSourceResponse++;
  if (buildCounterRefreshDataSourceResponse < 3) {
    o.statuses = buildUnnamed717();
  }
  buildCounterRefreshDataSourceResponse--;
  return o;
}

void checkRefreshDataSourceResponse(api.RefreshDataSourceResponse o) {
  buildCounterRefreshDataSourceResponse++;
  if (buildCounterRefreshDataSourceResponse < 3) {
    checkUnnamed717(o.statuses!);
  }
  buildCounterRefreshDataSourceResponse--;
}

core.int buildCounterRepeatCellRequest = 0;
api.RepeatCellRequest buildRepeatCellRequest() {
  final o = api.RepeatCellRequest();
  buildCounterRepeatCellRequest++;
  if (buildCounterRepeatCellRequest < 3) {
    o.cell = buildCellData();
    o.fields = 'foo';
    o.range = buildGridRange();
  }
  buildCounterRepeatCellRequest--;
  return o;
}

void checkRepeatCellRequest(api.RepeatCellRequest o) {
  buildCounterRepeatCellRequest++;
  if (buildCounterRepeatCellRequest < 3) {
    checkCellData(o.cell!);
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkGridRange(o.range!);
  }
  buildCounterRepeatCellRequest--;
}

core.int buildCounterRequest = 0;
api.Request buildRequest() {
  final o = api.Request();
  buildCounterRequest++;
  if (buildCounterRequest < 3) {
    o.addBanding = buildAddBandingRequest();
    o.addChart = buildAddChartRequest();
    o.addConditionalFormatRule = buildAddConditionalFormatRuleRequest();
    o.addDataSource = buildAddDataSourceRequest();
    o.addDimensionGroup = buildAddDimensionGroupRequest();
    o.addFilterView = buildAddFilterViewRequest();
    o.addNamedRange = buildAddNamedRangeRequest();
    o.addProtectedRange = buildAddProtectedRangeRequest();
    o.addSheet = buildAddSheetRequest();
    o.addSlicer = buildAddSlicerRequest();
    o.appendCells = buildAppendCellsRequest();
    o.appendDimension = buildAppendDimensionRequest();
    o.autoFill = buildAutoFillRequest();
    o.autoResizeDimensions = buildAutoResizeDimensionsRequest();
    o.clearBasicFilter = buildClearBasicFilterRequest();
    o.copyPaste = buildCopyPasteRequest();
    o.createDeveloperMetadata = buildCreateDeveloperMetadataRequest();
    o.cutPaste = buildCutPasteRequest();
    o.deleteBanding = buildDeleteBandingRequest();
    o.deleteConditionalFormatRule = buildDeleteConditionalFormatRuleRequest();
    o.deleteDataSource = buildDeleteDataSourceRequest();
    o.deleteDeveloperMetadata = buildDeleteDeveloperMetadataRequest();
    o.deleteDimension = buildDeleteDimensionRequest();
    o.deleteDimensionGroup = buildDeleteDimensionGroupRequest();
    o.deleteDuplicates = buildDeleteDuplicatesRequest();
    o.deleteEmbeddedObject = buildDeleteEmbeddedObjectRequest();
    o.deleteFilterView = buildDeleteFilterViewRequest();
    o.deleteNamedRange = buildDeleteNamedRangeRequest();
    o.deleteProtectedRange = buildDeleteProtectedRangeRequest();
    o.deleteRange = buildDeleteRangeRequest();
    o.deleteSheet = buildDeleteSheetRequest();
    o.duplicateFilterView = buildDuplicateFilterViewRequest();
    o.duplicateSheet = buildDuplicateSheetRequest();
    o.findReplace = buildFindReplaceRequest();
    o.insertDimension = buildInsertDimensionRequest();
    o.insertRange = buildInsertRangeRequest();
    o.mergeCells = buildMergeCellsRequest();
    o.moveDimension = buildMoveDimensionRequest();
    o.pasteData = buildPasteDataRequest();
    o.randomizeRange = buildRandomizeRangeRequest();
    o.refreshDataSource = buildRefreshDataSourceRequest();
    o.repeatCell = buildRepeatCellRequest();
    o.setBasicFilter = buildSetBasicFilterRequest();
    o.setDataValidation = buildSetDataValidationRequest();
    o.sortRange = buildSortRangeRequest();
    o.textToColumns = buildTextToColumnsRequest();
    o.trimWhitespace = buildTrimWhitespaceRequest();
    o.unmergeCells = buildUnmergeCellsRequest();
    o.updateBanding = buildUpdateBandingRequest();
    o.updateBorders = buildUpdateBordersRequest();
    o.updateCells = buildUpdateCellsRequest();
    o.updateChartSpec = buildUpdateChartSpecRequest();
    o.updateConditionalFormatRule = buildUpdateConditionalFormatRuleRequest();
    o.updateDataSource = buildUpdateDataSourceRequest();
    o.updateDeveloperMetadata = buildUpdateDeveloperMetadataRequest();
    o.updateDimensionGroup = buildUpdateDimensionGroupRequest();
    o.updateDimensionProperties = buildUpdateDimensionPropertiesRequest();
    o.updateEmbeddedObjectBorder = buildUpdateEmbeddedObjectBorderRequest();
    o.updateEmbeddedObjectPosition = buildUpdateEmbeddedObjectPositionRequest();
    o.updateFilterView = buildUpdateFilterViewRequest();
    o.updateNamedRange = buildUpdateNamedRangeRequest();
    o.updateProtectedRange = buildUpdateProtectedRangeRequest();
    o.updateSheetProperties = buildUpdateSheetPropertiesRequest();
    o.updateSlicerSpec = buildUpdateSlicerSpecRequest();
    o.updateSpreadsheetProperties = buildUpdateSpreadsheetPropertiesRequest();
  }
  buildCounterRequest--;
  return o;
}

void checkRequest(api.Request o) {
  buildCounterRequest++;
  if (buildCounterRequest < 3) {
    checkAddBandingRequest(o.addBanding!);
    checkAddChartRequest(o.addChart!);
    checkAddConditionalFormatRuleRequest(o.addConditionalFormatRule!);
    checkAddDataSourceRequest(o.addDataSource!);
    checkAddDimensionGroupRequest(o.addDimensionGroup!);
    checkAddFilterViewRequest(o.addFilterView!);
    checkAddNamedRangeRequest(o.addNamedRange!);
    checkAddProtectedRangeRequest(o.addProtectedRange!);
    checkAddSheetRequest(o.addSheet!);
    checkAddSlicerRequest(o.addSlicer!);
    checkAppendCellsRequest(o.appendCells!);
    checkAppendDimensionRequest(o.appendDimension!);
    checkAutoFillRequest(o.autoFill!);
    checkAutoResizeDimensionsRequest(o.autoResizeDimensions!);
    checkClearBasicFilterRequest(o.clearBasicFilter!);
    checkCopyPasteRequest(o.copyPaste!);
    checkCreateDeveloperMetadataRequest(o.createDeveloperMetadata!);
    checkCutPasteRequest(o.cutPaste!);
    checkDeleteBandingRequest(o.deleteBanding!);
    checkDeleteConditionalFormatRuleRequest(o.deleteConditionalFormatRule!);
    checkDeleteDataSourceRequest(o.deleteDataSource!);
    checkDeleteDeveloperMetadataRequest(o.deleteDeveloperMetadata!);
    checkDeleteDimensionRequest(o.deleteDimension!);
    checkDeleteDimensionGroupRequest(o.deleteDimensionGroup!);
    checkDeleteDuplicatesRequest(o.deleteDuplicates!);
    checkDeleteEmbeddedObjectRequest(o.deleteEmbeddedObject!);
    checkDeleteFilterViewRequest(o.deleteFilterView!);
    checkDeleteNamedRangeRequest(o.deleteNamedRange!);
    checkDeleteProtectedRangeRequest(o.deleteProtectedRange!);
    checkDeleteRangeRequest(o.deleteRange!);
    checkDeleteSheetRequest(o.deleteSheet!);
    checkDuplicateFilterViewRequest(o.duplicateFilterView!);
    checkDuplicateSheetRequest(o.duplicateSheet!);
    checkFindReplaceRequest(o.findReplace!);
    checkInsertDimensionRequest(o.insertDimension!);
    checkInsertRangeRequest(o.insertRange!);
    checkMergeCellsRequest(o.mergeCells!);
    checkMoveDimensionRequest(o.moveDimension!);
    checkPasteDataRequest(o.pasteData!);
    checkRandomizeRangeRequest(o.randomizeRange!);
    checkRefreshDataSourceRequest(o.refreshDataSource!);
    checkRepeatCellRequest(o.repeatCell!);
    checkSetBasicFilterRequest(o.setBasicFilter!);
    checkSetDataValidationRequest(o.setDataValidation!);
    checkSortRangeRequest(o.sortRange!);
    checkTextToColumnsRequest(o.textToColumns!);
    checkTrimWhitespaceRequest(o.trimWhitespace!);
    checkUnmergeCellsRequest(o.unmergeCells!);
    checkUpdateBandingRequest(o.updateBanding!);
    checkUpdateBordersRequest(o.updateBorders!);
    checkUpdateCellsRequest(o.updateCells!);
    checkUpdateChartSpecRequest(o.updateChartSpec!);
    checkUpdateConditionalFormatRuleRequest(o.updateConditionalFormatRule!);
    checkUpdateDataSourceRequest(o.updateDataSource!);
    checkUpdateDeveloperMetadataRequest(o.updateDeveloperMetadata!);
    checkUpdateDimensionGroupRequest(o.updateDimensionGroup!);
    checkUpdateDimensionPropertiesRequest(o.updateDimensionProperties!);
    checkUpdateEmbeddedObjectBorderRequest(o.updateEmbeddedObjectBorder!);
    checkUpdateEmbeddedObjectPositionRequest(o.updateEmbeddedObjectPosition!);
    checkUpdateFilterViewRequest(o.updateFilterView!);
    checkUpdateNamedRangeRequest(o.updateNamedRange!);
    checkUpdateProtectedRangeRequest(o.updateProtectedRange!);
    checkUpdateSheetPropertiesRequest(o.updateSheetProperties!);
    checkUpdateSlicerSpecRequest(o.updateSlicerSpec!);
    checkUpdateSpreadsheetPropertiesRequest(o.updateSpreadsheetProperties!);
  }
  buildCounterRequest--;
}

core.int buildCounterResponse = 0;
api.Response buildResponse() {
  final o = api.Response();
  buildCounterResponse++;
  if (buildCounterResponse < 3) {
    o.addBanding = buildAddBandingResponse();
    o.addChart = buildAddChartResponse();
    o.addDataSource = buildAddDataSourceResponse();
    o.addDimensionGroup = buildAddDimensionGroupResponse();
    o.addFilterView = buildAddFilterViewResponse();
    o.addNamedRange = buildAddNamedRangeResponse();
    o.addProtectedRange = buildAddProtectedRangeResponse();
    o.addSheet = buildAddSheetResponse();
    o.addSlicer = buildAddSlicerResponse();
    o.createDeveloperMetadata = buildCreateDeveloperMetadataResponse();
    o.deleteConditionalFormatRule = buildDeleteConditionalFormatRuleResponse();
    o.deleteDeveloperMetadata = buildDeleteDeveloperMetadataResponse();
    o.deleteDimensionGroup = buildDeleteDimensionGroupResponse();
    o.deleteDuplicates = buildDeleteDuplicatesResponse();
    o.duplicateFilterView = buildDuplicateFilterViewResponse();
    o.duplicateSheet = buildDuplicateSheetResponse();
    o.findReplace = buildFindReplaceResponse();
    o.refreshDataSource = buildRefreshDataSourceResponse();
    o.trimWhitespace = buildTrimWhitespaceResponse();
    o.updateConditionalFormatRule = buildUpdateConditionalFormatRuleResponse();
    o.updateDataSource = buildUpdateDataSourceResponse();
    o.updateDeveloperMetadata = buildUpdateDeveloperMetadataResponse();
    o.updateEmbeddedObjectPosition =
        buildUpdateEmbeddedObjectPositionResponse();
  }
  buildCounterResponse--;
  return o;
}

void checkResponse(api.Response o) {
  buildCounterResponse++;
  if (buildCounterResponse < 3) {
    checkAddBandingResponse(o.addBanding!);
    checkAddChartResponse(o.addChart!);
    checkAddDataSourceResponse(o.addDataSource!);
    checkAddDimensionGroupResponse(o.addDimensionGroup!);
    checkAddFilterViewResponse(o.addFilterView!);
    checkAddNamedRangeResponse(o.addNamedRange!);
    checkAddProtectedRangeResponse(o.addProtectedRange!);
    checkAddSheetResponse(o.addSheet!);
    checkAddSlicerResponse(o.addSlicer!);
    checkCreateDeveloperMetadataResponse(o.createDeveloperMetadata!);
    checkDeleteConditionalFormatRuleResponse(o.deleteConditionalFormatRule!);
    checkDeleteDeveloperMetadataResponse(o.deleteDeveloperMetadata!);
    checkDeleteDimensionGroupResponse(o.deleteDimensionGroup!);
    checkDeleteDuplicatesResponse(o.deleteDuplicates!);
    checkDuplicateFilterViewResponse(o.duplicateFilterView!);
    checkDuplicateSheetResponse(o.duplicateSheet!);
    checkFindReplaceResponse(o.findReplace!);
    checkRefreshDataSourceResponse(o.refreshDataSource!);
    checkTrimWhitespaceResponse(o.trimWhitespace!);
    checkUpdateConditionalFormatRuleResponse(o.updateConditionalFormatRule!);
    checkUpdateDataSourceResponse(o.updateDataSource!);
    checkUpdateDeveloperMetadataResponse(o.updateDeveloperMetadata!);
    checkUpdateEmbeddedObjectPositionResponse(o.updateEmbeddedObjectPosition!);
  }
  buildCounterResponse--;
}

core.List<api.CellData> buildUnnamed718() {
  final o = <api.CellData>[];
  o.add(buildCellData());
  o.add(buildCellData());
  return o;
}

void checkUnnamed718(core.List<api.CellData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCellData(o[0]);
  checkCellData(o[1]);
}

core.int buildCounterRowData = 0;
api.RowData buildRowData() {
  final o = api.RowData();
  buildCounterRowData++;
  if (buildCounterRowData < 3) {
    o.values = buildUnnamed718();
  }
  buildCounterRowData--;
  return o;
}

void checkRowData(api.RowData o) {
  buildCounterRowData++;
  if (buildCounterRowData < 3) {
    checkUnnamed718(o.values!);
  }
  buildCounterRowData--;
}

core.int buildCounterScorecardChartSpec = 0;
api.ScorecardChartSpec buildScorecardChartSpec() {
  final o = api.ScorecardChartSpec();
  buildCounterScorecardChartSpec++;
  if (buildCounterScorecardChartSpec < 3) {
    o.aggregateType = 'foo';
    o.baselineValueData = buildChartData();
    o.baselineValueFormat = buildBaselineValueFormat();
    o.customFormatOptions = buildChartCustomNumberFormatOptions();
    o.keyValueData = buildChartData();
    o.keyValueFormat = buildKeyValueFormat();
    o.numberFormatSource = 'foo';
    o.scaleFactor = 42.0;
  }
  buildCounterScorecardChartSpec--;
  return o;
}

void checkScorecardChartSpec(api.ScorecardChartSpec o) {
  buildCounterScorecardChartSpec++;
  if (buildCounterScorecardChartSpec < 3) {
    unittest.expect(
      o.aggregateType!,
      unittest.equals('foo'),
    );
    checkChartData(o.baselineValueData!);
    checkBaselineValueFormat(o.baselineValueFormat!);
    checkChartCustomNumberFormatOptions(o.customFormatOptions!);
    checkChartData(o.keyValueData!);
    checkKeyValueFormat(o.keyValueFormat!);
    unittest.expect(
      o.numberFormatSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scaleFactor!,
      unittest.equals(42.0),
    );
  }
  buildCounterScorecardChartSpec--;
}

core.List<api.DataFilter> buildUnnamed719() {
  final o = <api.DataFilter>[];
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

void checkUnnamed719(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0]);
  checkDataFilter(o[1]);
}

core.int buildCounterSearchDeveloperMetadataRequest = 0;
api.SearchDeveloperMetadataRequest buildSearchDeveloperMetadataRequest() {
  final o = api.SearchDeveloperMetadataRequest();
  buildCounterSearchDeveloperMetadataRequest++;
  if (buildCounterSearchDeveloperMetadataRequest < 3) {
    o.dataFilters = buildUnnamed719();
  }
  buildCounterSearchDeveloperMetadataRequest--;
  return o;
}

void checkSearchDeveloperMetadataRequest(api.SearchDeveloperMetadataRequest o) {
  buildCounterSearchDeveloperMetadataRequest++;
  if (buildCounterSearchDeveloperMetadataRequest < 3) {
    checkUnnamed719(o.dataFilters!);
  }
  buildCounterSearchDeveloperMetadataRequest--;
}

core.List<api.MatchedDeveloperMetadata> buildUnnamed720() {
  final o = <api.MatchedDeveloperMetadata>[];
  o.add(buildMatchedDeveloperMetadata());
  o.add(buildMatchedDeveloperMetadata());
  return o;
}

void checkUnnamed720(core.List<api.MatchedDeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchedDeveloperMetadata(o[0]);
  checkMatchedDeveloperMetadata(o[1]);
}

core.int buildCounterSearchDeveloperMetadataResponse = 0;
api.SearchDeveloperMetadataResponse buildSearchDeveloperMetadataResponse() {
  final o = api.SearchDeveloperMetadataResponse();
  buildCounterSearchDeveloperMetadataResponse++;
  if (buildCounterSearchDeveloperMetadataResponse < 3) {
    o.matchedDeveloperMetadata = buildUnnamed720();
  }
  buildCounterSearchDeveloperMetadataResponse--;
  return o;
}

void checkSearchDeveloperMetadataResponse(
    api.SearchDeveloperMetadataResponse o) {
  buildCounterSearchDeveloperMetadataResponse++;
  if (buildCounterSearchDeveloperMetadataResponse < 3) {
    checkUnnamed720(o.matchedDeveloperMetadata!);
  }
  buildCounterSearchDeveloperMetadataResponse--;
}

core.int buildCounterSetBasicFilterRequest = 0;
api.SetBasicFilterRequest buildSetBasicFilterRequest() {
  final o = api.SetBasicFilterRequest();
  buildCounterSetBasicFilterRequest++;
  if (buildCounterSetBasicFilterRequest < 3) {
    o.filter = buildBasicFilter();
  }
  buildCounterSetBasicFilterRequest--;
  return o;
}

void checkSetBasicFilterRequest(api.SetBasicFilterRequest o) {
  buildCounterSetBasicFilterRequest++;
  if (buildCounterSetBasicFilterRequest < 3) {
    checkBasicFilter(o.filter!);
  }
  buildCounterSetBasicFilterRequest--;
}

core.int buildCounterSetDataValidationRequest = 0;
api.SetDataValidationRequest buildSetDataValidationRequest() {
  final o = api.SetDataValidationRequest();
  buildCounterSetDataValidationRequest++;
  if (buildCounterSetDataValidationRequest < 3) {
    o.range = buildGridRange();
    o.rule = buildDataValidationRule();
  }
  buildCounterSetDataValidationRequest--;
  return o;
}

void checkSetDataValidationRequest(api.SetDataValidationRequest o) {
  buildCounterSetDataValidationRequest++;
  if (buildCounterSetDataValidationRequest < 3) {
    checkGridRange(o.range!);
    checkDataValidationRule(o.rule!);
  }
  buildCounterSetDataValidationRequest--;
}

core.List<api.BandedRange> buildUnnamed721() {
  final o = <api.BandedRange>[];
  o.add(buildBandedRange());
  o.add(buildBandedRange());
  return o;
}

void checkUnnamed721(core.List<api.BandedRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBandedRange(o[0]);
  checkBandedRange(o[1]);
}

core.List<api.EmbeddedChart> buildUnnamed722() {
  final o = <api.EmbeddedChart>[];
  o.add(buildEmbeddedChart());
  o.add(buildEmbeddedChart());
  return o;
}

void checkUnnamed722(core.List<api.EmbeddedChart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmbeddedChart(o[0]);
  checkEmbeddedChart(o[1]);
}

core.List<api.DimensionGroup> buildUnnamed723() {
  final o = <api.DimensionGroup>[];
  o.add(buildDimensionGroup());
  o.add(buildDimensionGroup());
  return o;
}

void checkUnnamed723(core.List<api.DimensionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionGroup(o[0]);
  checkDimensionGroup(o[1]);
}

core.List<api.ConditionalFormatRule> buildUnnamed724() {
  final o = <api.ConditionalFormatRule>[];
  o.add(buildConditionalFormatRule());
  o.add(buildConditionalFormatRule());
  return o;
}

void checkUnnamed724(core.List<api.ConditionalFormatRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConditionalFormatRule(o[0]);
  checkConditionalFormatRule(o[1]);
}

core.List<api.GridData> buildUnnamed725() {
  final o = <api.GridData>[];
  o.add(buildGridData());
  o.add(buildGridData());
  return o;
}

void checkUnnamed725(core.List<api.GridData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGridData(o[0]);
  checkGridData(o[1]);
}

core.List<api.DeveloperMetadata> buildUnnamed726() {
  final o = <api.DeveloperMetadata>[];
  o.add(buildDeveloperMetadata());
  o.add(buildDeveloperMetadata());
  return o;
}

void checkUnnamed726(core.List<api.DeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeveloperMetadata(o[0]);
  checkDeveloperMetadata(o[1]);
}

core.List<api.FilterView> buildUnnamed727() {
  final o = <api.FilterView>[];
  o.add(buildFilterView());
  o.add(buildFilterView());
  return o;
}

void checkUnnamed727(core.List<api.FilterView> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterView(o[0]);
  checkFilterView(o[1]);
}

core.List<api.GridRange> buildUnnamed728() {
  final o = <api.GridRange>[];
  o.add(buildGridRange());
  o.add(buildGridRange());
  return o;
}

void checkUnnamed728(core.List<api.GridRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGridRange(o[0]);
  checkGridRange(o[1]);
}

core.List<api.ProtectedRange> buildUnnamed729() {
  final o = <api.ProtectedRange>[];
  o.add(buildProtectedRange());
  o.add(buildProtectedRange());
  return o;
}

void checkUnnamed729(core.List<api.ProtectedRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProtectedRange(o[0]);
  checkProtectedRange(o[1]);
}

core.List<api.DimensionGroup> buildUnnamed730() {
  final o = <api.DimensionGroup>[];
  o.add(buildDimensionGroup());
  o.add(buildDimensionGroup());
  return o;
}

void checkUnnamed730(core.List<api.DimensionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionGroup(o[0]);
  checkDimensionGroup(o[1]);
}

core.List<api.Slicer> buildUnnamed731() {
  final o = <api.Slicer>[];
  o.add(buildSlicer());
  o.add(buildSlicer());
  return o;
}

void checkUnnamed731(core.List<api.Slicer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSlicer(o[0]);
  checkSlicer(o[1]);
}

core.int buildCounterSheet = 0;
api.Sheet buildSheet() {
  final o = api.Sheet();
  buildCounterSheet++;
  if (buildCounterSheet < 3) {
    o.bandedRanges = buildUnnamed721();
    o.basicFilter = buildBasicFilter();
    o.charts = buildUnnamed722();
    o.columnGroups = buildUnnamed723();
    o.conditionalFormats = buildUnnamed724();
    o.data = buildUnnamed725();
    o.developerMetadata = buildUnnamed726();
    o.filterViews = buildUnnamed727();
    o.merges = buildUnnamed728();
    o.properties = buildSheetProperties();
    o.protectedRanges = buildUnnamed729();
    o.rowGroups = buildUnnamed730();
    o.slicers = buildUnnamed731();
  }
  buildCounterSheet--;
  return o;
}

void checkSheet(api.Sheet o) {
  buildCounterSheet++;
  if (buildCounterSheet < 3) {
    checkUnnamed721(o.bandedRanges!);
    checkBasicFilter(o.basicFilter!);
    checkUnnamed722(o.charts!);
    checkUnnamed723(o.columnGroups!);
    checkUnnamed724(o.conditionalFormats!);
    checkUnnamed725(o.data!);
    checkUnnamed726(o.developerMetadata!);
    checkUnnamed727(o.filterViews!);
    checkUnnamed728(o.merges!);
    checkSheetProperties(o.properties!);
    checkUnnamed729(o.protectedRanges!);
    checkUnnamed730(o.rowGroups!);
    checkUnnamed731(o.slicers!);
  }
  buildCounterSheet--;
}

core.int buildCounterSheetProperties = 0;
api.SheetProperties buildSheetProperties() {
  final o = api.SheetProperties();
  buildCounterSheetProperties++;
  if (buildCounterSheetProperties < 3) {
    o.dataSourceSheetProperties = buildDataSourceSheetProperties();
    o.gridProperties = buildGridProperties();
    o.hidden = true;
    o.index = 42;
    o.rightToLeft = true;
    o.sheetId = 42;
    o.sheetType = 'foo';
    o.tabColor = buildColor();
    o.tabColorStyle = buildColorStyle();
    o.title = 'foo';
  }
  buildCounterSheetProperties--;
  return o;
}

void checkSheetProperties(api.SheetProperties o) {
  buildCounterSheetProperties++;
  if (buildCounterSheetProperties < 3) {
    checkDataSourceSheetProperties(o.dataSourceSheetProperties!);
    checkGridProperties(o.gridProperties!);
    unittest.expect(o.hidden!, unittest.isTrue);
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(o.rightToLeft!, unittest.isTrue);
    unittest.expect(
      o.sheetId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sheetType!,
      unittest.equals('foo'),
    );
    checkColor(o.tabColor!);
    checkColorStyle(o.tabColorStyle!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterSheetProperties--;
}

core.int buildCounterSlicer = 0;
api.Slicer buildSlicer() {
  final o = api.Slicer();
  buildCounterSlicer++;
  if (buildCounterSlicer < 3) {
    o.position = buildEmbeddedObjectPosition();
    o.slicerId = 42;
    o.spec = buildSlicerSpec();
  }
  buildCounterSlicer--;
  return o;
}

void checkSlicer(api.Slicer o) {
  buildCounterSlicer++;
  if (buildCounterSlicer < 3) {
    checkEmbeddedObjectPosition(o.position!);
    unittest.expect(
      o.slicerId!,
      unittest.equals(42),
    );
    checkSlicerSpec(o.spec!);
  }
  buildCounterSlicer--;
}

core.int buildCounterSlicerSpec = 0;
api.SlicerSpec buildSlicerSpec() {
  final o = api.SlicerSpec();
  buildCounterSlicerSpec++;
  if (buildCounterSlicerSpec < 3) {
    o.applyToPivotTables = true;
    o.backgroundColor = buildColor();
    o.backgroundColorStyle = buildColorStyle();
    o.columnIndex = 42;
    o.dataRange = buildGridRange();
    o.filterCriteria = buildFilterCriteria();
    o.horizontalAlignment = 'foo';
    o.textFormat = buildTextFormat();
    o.title = 'foo';
  }
  buildCounterSlicerSpec--;
  return o;
}

void checkSlicerSpec(api.SlicerSpec o) {
  buildCounterSlicerSpec++;
  if (buildCounterSlicerSpec < 3) {
    unittest.expect(o.applyToPivotTables!, unittest.isTrue);
    checkColor(o.backgroundColor!);
    checkColorStyle(o.backgroundColorStyle!);
    unittest.expect(
      o.columnIndex!,
      unittest.equals(42),
    );
    checkGridRange(o.dataRange!);
    checkFilterCriteria(o.filterCriteria!);
    unittest.expect(
      o.horizontalAlignment!,
      unittest.equals('foo'),
    );
    checkTextFormat(o.textFormat!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterSlicerSpec--;
}

core.List<api.SortSpec> buildUnnamed732() {
  final o = <api.SortSpec>[];
  o.add(buildSortSpec());
  o.add(buildSortSpec());
  return o;
}

void checkUnnamed732(core.List<api.SortSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortSpec(o[0]);
  checkSortSpec(o[1]);
}

core.int buildCounterSortRangeRequest = 0;
api.SortRangeRequest buildSortRangeRequest() {
  final o = api.SortRangeRequest();
  buildCounterSortRangeRequest++;
  if (buildCounterSortRangeRequest < 3) {
    o.range = buildGridRange();
    o.sortSpecs = buildUnnamed732();
  }
  buildCounterSortRangeRequest--;
  return o;
}

void checkSortRangeRequest(api.SortRangeRequest o) {
  buildCounterSortRangeRequest++;
  if (buildCounterSortRangeRequest < 3) {
    checkGridRange(o.range!);
    checkUnnamed732(o.sortSpecs!);
  }
  buildCounterSortRangeRequest--;
}

core.int buildCounterSortSpec = 0;
api.SortSpec buildSortSpec() {
  final o = api.SortSpec();
  buildCounterSortSpec++;
  if (buildCounterSortSpec < 3) {
    o.backgroundColor = buildColor();
    o.backgroundColorStyle = buildColorStyle();
    o.dataSourceColumnReference = buildDataSourceColumnReference();
    o.dimensionIndex = 42;
    o.foregroundColor = buildColor();
    o.foregroundColorStyle = buildColorStyle();
    o.sortOrder = 'foo';
  }
  buildCounterSortSpec--;
  return o;
}

void checkSortSpec(api.SortSpec o) {
  buildCounterSortSpec++;
  if (buildCounterSortSpec < 3) {
    checkColor(o.backgroundColor!);
    checkColorStyle(o.backgroundColorStyle!);
    checkDataSourceColumnReference(o.dataSourceColumnReference!);
    unittest.expect(
      o.dimensionIndex!,
      unittest.equals(42),
    );
    checkColor(o.foregroundColor!);
    checkColorStyle(o.foregroundColorStyle!);
    unittest.expect(
      o.sortOrder!,
      unittest.equals('foo'),
    );
  }
  buildCounterSortSpec--;
}

core.int buildCounterSourceAndDestination = 0;
api.SourceAndDestination buildSourceAndDestination() {
  final o = api.SourceAndDestination();
  buildCounterSourceAndDestination++;
  if (buildCounterSourceAndDestination < 3) {
    o.dimension = 'foo';
    o.fillLength = 42;
    o.source = buildGridRange();
  }
  buildCounterSourceAndDestination--;
  return o;
}

void checkSourceAndDestination(api.SourceAndDestination o) {
  buildCounterSourceAndDestination++;
  if (buildCounterSourceAndDestination < 3) {
    unittest.expect(
      o.dimension!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fillLength!,
      unittest.equals(42),
    );
    checkGridRange(o.source!);
  }
  buildCounterSourceAndDestination--;
}

core.List<api.DataSourceRefreshSchedule> buildUnnamed733() {
  final o = <api.DataSourceRefreshSchedule>[];
  o.add(buildDataSourceRefreshSchedule());
  o.add(buildDataSourceRefreshSchedule());
  return o;
}

void checkUnnamed733(core.List<api.DataSourceRefreshSchedule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceRefreshSchedule(o[0]);
  checkDataSourceRefreshSchedule(o[1]);
}

core.List<api.DataSource> buildUnnamed734() {
  final o = <api.DataSource>[];
  o.add(buildDataSource());
  o.add(buildDataSource());
  return o;
}

void checkUnnamed734(core.List<api.DataSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSource(o[0]);
  checkDataSource(o[1]);
}

core.List<api.DeveloperMetadata> buildUnnamed735() {
  final o = <api.DeveloperMetadata>[];
  o.add(buildDeveloperMetadata());
  o.add(buildDeveloperMetadata());
  return o;
}

void checkUnnamed735(core.List<api.DeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeveloperMetadata(o[0]);
  checkDeveloperMetadata(o[1]);
}

core.List<api.NamedRange> buildUnnamed736() {
  final o = <api.NamedRange>[];
  o.add(buildNamedRange());
  o.add(buildNamedRange());
  return o;
}

void checkUnnamed736(core.List<api.NamedRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedRange(o[0]);
  checkNamedRange(o[1]);
}

core.List<api.Sheet> buildUnnamed737() {
  final o = <api.Sheet>[];
  o.add(buildSheet());
  o.add(buildSheet());
  return o;
}

void checkUnnamed737(core.List<api.Sheet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSheet(o[0]);
  checkSheet(o[1]);
}

core.int buildCounterSpreadsheet = 0;
api.Spreadsheet buildSpreadsheet() {
  final o = api.Spreadsheet();
  buildCounterSpreadsheet++;
  if (buildCounterSpreadsheet < 3) {
    o.dataSourceSchedules = buildUnnamed733();
    o.dataSources = buildUnnamed734();
    o.developerMetadata = buildUnnamed735();
    o.namedRanges = buildUnnamed736();
    o.properties = buildSpreadsheetProperties();
    o.sheets = buildUnnamed737();
    o.spreadsheetId = 'foo';
    o.spreadsheetUrl = 'foo';
  }
  buildCounterSpreadsheet--;
  return o;
}

void checkSpreadsheet(api.Spreadsheet o) {
  buildCounterSpreadsheet++;
  if (buildCounterSpreadsheet < 3) {
    checkUnnamed733(o.dataSourceSchedules!);
    checkUnnamed734(o.dataSources!);
    checkUnnamed735(o.developerMetadata!);
    checkUnnamed736(o.namedRanges!);
    checkSpreadsheetProperties(o.properties!);
    checkUnnamed737(o.sheets!);
    unittest.expect(
      o.spreadsheetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spreadsheetUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterSpreadsheet--;
}

core.int buildCounterSpreadsheetProperties = 0;
api.SpreadsheetProperties buildSpreadsheetProperties() {
  final o = api.SpreadsheetProperties();
  buildCounterSpreadsheetProperties++;
  if (buildCounterSpreadsheetProperties < 3) {
    o.autoRecalc = 'foo';
    o.defaultFormat = buildCellFormat();
    o.iterativeCalculationSettings = buildIterativeCalculationSettings();
    o.locale = 'foo';
    o.spreadsheetTheme = buildSpreadsheetTheme();
    o.timeZone = 'foo';
    o.title = 'foo';
  }
  buildCounterSpreadsheetProperties--;
  return o;
}

void checkSpreadsheetProperties(api.SpreadsheetProperties o) {
  buildCounterSpreadsheetProperties++;
  if (buildCounterSpreadsheetProperties < 3) {
    unittest.expect(
      o.autoRecalc!,
      unittest.equals('foo'),
    );
    checkCellFormat(o.defaultFormat!);
    checkIterativeCalculationSettings(o.iterativeCalculationSettings!);
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    checkSpreadsheetTheme(o.spreadsheetTheme!);
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterSpreadsheetProperties--;
}

core.List<api.ThemeColorPair> buildUnnamed738() {
  final o = <api.ThemeColorPair>[];
  o.add(buildThemeColorPair());
  o.add(buildThemeColorPair());
  return o;
}

void checkUnnamed738(core.List<api.ThemeColorPair> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThemeColorPair(o[0]);
  checkThemeColorPair(o[1]);
}

core.int buildCounterSpreadsheetTheme = 0;
api.SpreadsheetTheme buildSpreadsheetTheme() {
  final o = api.SpreadsheetTheme();
  buildCounterSpreadsheetTheme++;
  if (buildCounterSpreadsheetTheme < 3) {
    o.primaryFontFamily = 'foo';
    o.themeColors = buildUnnamed738();
  }
  buildCounterSpreadsheetTheme--;
  return o;
}

void checkSpreadsheetTheme(api.SpreadsheetTheme o) {
  buildCounterSpreadsheetTheme++;
  if (buildCounterSpreadsheetTheme < 3) {
    unittest.expect(
      o.primaryFontFamily!,
      unittest.equals('foo'),
    );
    checkUnnamed738(o.themeColors!);
  }
  buildCounterSpreadsheetTheme--;
}

core.int buildCounterTextFormat = 0;
api.TextFormat buildTextFormat() {
  final o = api.TextFormat();
  buildCounterTextFormat++;
  if (buildCounterTextFormat < 3) {
    o.bold = true;
    o.fontFamily = 'foo';
    o.fontSize = 42;
    o.foregroundColor = buildColor();
    o.foregroundColorStyle = buildColorStyle();
    o.italic = true;
    o.link = buildLink();
    o.strikethrough = true;
    o.underline = true;
  }
  buildCounterTextFormat--;
  return o;
}

void checkTextFormat(api.TextFormat o) {
  buildCounterTextFormat++;
  if (buildCounterTextFormat < 3) {
    unittest.expect(o.bold!, unittest.isTrue);
    unittest.expect(
      o.fontFamily!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fontSize!,
      unittest.equals(42),
    );
    checkColor(o.foregroundColor!);
    checkColorStyle(o.foregroundColorStyle!);
    unittest.expect(o.italic!, unittest.isTrue);
    checkLink(o.link!);
    unittest.expect(o.strikethrough!, unittest.isTrue);
    unittest.expect(o.underline!, unittest.isTrue);
  }
  buildCounterTextFormat--;
}

core.int buildCounterTextFormatRun = 0;
api.TextFormatRun buildTextFormatRun() {
  final o = api.TextFormatRun();
  buildCounterTextFormatRun++;
  if (buildCounterTextFormatRun < 3) {
    o.format = buildTextFormat();
    o.startIndex = 42;
  }
  buildCounterTextFormatRun--;
  return o;
}

void checkTextFormatRun(api.TextFormatRun o) {
  buildCounterTextFormatRun++;
  if (buildCounterTextFormatRun < 3) {
    checkTextFormat(o.format!);
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
  }
  buildCounterTextFormatRun--;
}

core.int buildCounterTextPosition = 0;
api.TextPosition buildTextPosition() {
  final o = api.TextPosition();
  buildCounterTextPosition++;
  if (buildCounterTextPosition < 3) {
    o.horizontalAlignment = 'foo';
  }
  buildCounterTextPosition--;
  return o;
}

void checkTextPosition(api.TextPosition o) {
  buildCounterTextPosition++;
  if (buildCounterTextPosition < 3) {
    unittest.expect(
      o.horizontalAlignment!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextPosition--;
}

core.int buildCounterTextRotation = 0;
api.TextRotation buildTextRotation() {
  final o = api.TextRotation();
  buildCounterTextRotation++;
  if (buildCounterTextRotation < 3) {
    o.angle = 42;
    o.vertical = true;
  }
  buildCounterTextRotation--;
  return o;
}

void checkTextRotation(api.TextRotation o) {
  buildCounterTextRotation++;
  if (buildCounterTextRotation < 3) {
    unittest.expect(
      o.angle!,
      unittest.equals(42),
    );
    unittest.expect(o.vertical!, unittest.isTrue);
  }
  buildCounterTextRotation--;
}

core.int buildCounterTextToColumnsRequest = 0;
api.TextToColumnsRequest buildTextToColumnsRequest() {
  final o = api.TextToColumnsRequest();
  buildCounterTextToColumnsRequest++;
  if (buildCounterTextToColumnsRequest < 3) {
    o.delimiter = 'foo';
    o.delimiterType = 'foo';
    o.source = buildGridRange();
  }
  buildCounterTextToColumnsRequest--;
  return o;
}

void checkTextToColumnsRequest(api.TextToColumnsRequest o) {
  buildCounterTextToColumnsRequest++;
  if (buildCounterTextToColumnsRequest < 3) {
    unittest.expect(
      o.delimiter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.delimiterType!,
      unittest.equals('foo'),
    );
    checkGridRange(o.source!);
  }
  buildCounterTextToColumnsRequest--;
}

core.int buildCounterThemeColorPair = 0;
api.ThemeColorPair buildThemeColorPair() {
  final o = api.ThemeColorPair();
  buildCounterThemeColorPair++;
  if (buildCounterThemeColorPair < 3) {
    o.color = buildColorStyle();
    o.colorType = 'foo';
  }
  buildCounterThemeColorPair--;
  return o;
}

void checkThemeColorPair(api.ThemeColorPair o) {
  buildCounterThemeColorPair++;
  if (buildCounterThemeColorPair < 3) {
    checkColorStyle(o.color!);
    unittest.expect(
      o.colorType!,
      unittest.equals('foo'),
    );
  }
  buildCounterThemeColorPair--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(
      o.hours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals(42),
    );
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterTreemapChartColorScale = 0;
api.TreemapChartColorScale buildTreemapChartColorScale() {
  final o = api.TreemapChartColorScale();
  buildCounterTreemapChartColorScale++;
  if (buildCounterTreemapChartColorScale < 3) {
    o.maxValueColor = buildColor();
    o.maxValueColorStyle = buildColorStyle();
    o.midValueColor = buildColor();
    o.midValueColorStyle = buildColorStyle();
    o.minValueColor = buildColor();
    o.minValueColorStyle = buildColorStyle();
    o.noDataColor = buildColor();
    o.noDataColorStyle = buildColorStyle();
  }
  buildCounterTreemapChartColorScale--;
  return o;
}

void checkTreemapChartColorScale(api.TreemapChartColorScale o) {
  buildCounterTreemapChartColorScale++;
  if (buildCounterTreemapChartColorScale < 3) {
    checkColor(o.maxValueColor!);
    checkColorStyle(o.maxValueColorStyle!);
    checkColor(o.midValueColor!);
    checkColorStyle(o.midValueColorStyle!);
    checkColor(o.minValueColor!);
    checkColorStyle(o.minValueColorStyle!);
    checkColor(o.noDataColor!);
    checkColorStyle(o.noDataColorStyle!);
  }
  buildCounterTreemapChartColorScale--;
}

core.int buildCounterTreemapChartSpec = 0;
api.TreemapChartSpec buildTreemapChartSpec() {
  final o = api.TreemapChartSpec();
  buildCounterTreemapChartSpec++;
  if (buildCounterTreemapChartSpec < 3) {
    o.colorData = buildChartData();
    o.colorScale = buildTreemapChartColorScale();
    o.headerColor = buildColor();
    o.headerColorStyle = buildColorStyle();
    o.hideTooltips = true;
    o.hintedLevels = 42;
    o.labels = buildChartData();
    o.levels = 42;
    o.maxValue = 42.0;
    o.minValue = 42.0;
    o.parentLabels = buildChartData();
    o.sizeData = buildChartData();
    o.textFormat = buildTextFormat();
  }
  buildCounterTreemapChartSpec--;
  return o;
}

void checkTreemapChartSpec(api.TreemapChartSpec o) {
  buildCounterTreemapChartSpec++;
  if (buildCounterTreemapChartSpec < 3) {
    checkChartData(o.colorData!);
    checkTreemapChartColorScale(o.colorScale!);
    checkColor(o.headerColor!);
    checkColorStyle(o.headerColorStyle!);
    unittest.expect(o.hideTooltips!, unittest.isTrue);
    unittest.expect(
      o.hintedLevels!,
      unittest.equals(42),
    );
    checkChartData(o.labels!);
    unittest.expect(
      o.levels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minValue!,
      unittest.equals(42.0),
    );
    checkChartData(o.parentLabels!);
    checkChartData(o.sizeData!);
    checkTextFormat(o.textFormat!);
  }
  buildCounterTreemapChartSpec--;
}

core.int buildCounterTrimWhitespaceRequest = 0;
api.TrimWhitespaceRequest buildTrimWhitespaceRequest() {
  final o = api.TrimWhitespaceRequest();
  buildCounterTrimWhitespaceRequest++;
  if (buildCounterTrimWhitespaceRequest < 3) {
    o.range = buildGridRange();
  }
  buildCounterTrimWhitespaceRequest--;
  return o;
}

void checkTrimWhitespaceRequest(api.TrimWhitespaceRequest o) {
  buildCounterTrimWhitespaceRequest++;
  if (buildCounterTrimWhitespaceRequest < 3) {
    checkGridRange(o.range!);
  }
  buildCounterTrimWhitespaceRequest--;
}

core.int buildCounterTrimWhitespaceResponse = 0;
api.TrimWhitespaceResponse buildTrimWhitespaceResponse() {
  final o = api.TrimWhitespaceResponse();
  buildCounterTrimWhitespaceResponse++;
  if (buildCounterTrimWhitespaceResponse < 3) {
    o.cellsChangedCount = 42;
  }
  buildCounterTrimWhitespaceResponse--;
  return o;
}

void checkTrimWhitespaceResponse(api.TrimWhitespaceResponse o) {
  buildCounterTrimWhitespaceResponse++;
  if (buildCounterTrimWhitespaceResponse < 3) {
    unittest.expect(
      o.cellsChangedCount!,
      unittest.equals(42),
    );
  }
  buildCounterTrimWhitespaceResponse--;
}

core.int buildCounterUnmergeCellsRequest = 0;
api.UnmergeCellsRequest buildUnmergeCellsRequest() {
  final o = api.UnmergeCellsRequest();
  buildCounterUnmergeCellsRequest++;
  if (buildCounterUnmergeCellsRequest < 3) {
    o.range = buildGridRange();
  }
  buildCounterUnmergeCellsRequest--;
  return o;
}

void checkUnmergeCellsRequest(api.UnmergeCellsRequest o) {
  buildCounterUnmergeCellsRequest++;
  if (buildCounterUnmergeCellsRequest < 3) {
    checkGridRange(o.range!);
  }
  buildCounterUnmergeCellsRequest--;
}

core.int buildCounterUpdateBandingRequest = 0;
api.UpdateBandingRequest buildUpdateBandingRequest() {
  final o = api.UpdateBandingRequest();
  buildCounterUpdateBandingRequest++;
  if (buildCounterUpdateBandingRequest < 3) {
    o.bandedRange = buildBandedRange();
    o.fields = 'foo';
  }
  buildCounterUpdateBandingRequest--;
  return o;
}

void checkUpdateBandingRequest(api.UpdateBandingRequest o) {
  buildCounterUpdateBandingRequest++;
  if (buildCounterUpdateBandingRequest < 3) {
    checkBandedRange(o.bandedRange!);
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateBandingRequest--;
}

core.int buildCounterUpdateBordersRequest = 0;
api.UpdateBordersRequest buildUpdateBordersRequest() {
  final o = api.UpdateBordersRequest();
  buildCounterUpdateBordersRequest++;
  if (buildCounterUpdateBordersRequest < 3) {
    o.bottom = buildBorder();
    o.innerHorizontal = buildBorder();
    o.innerVertical = buildBorder();
    o.left = buildBorder();
    o.range = buildGridRange();
    o.right = buildBorder();
    o.top = buildBorder();
  }
  buildCounterUpdateBordersRequest--;
  return o;
}

void checkUpdateBordersRequest(api.UpdateBordersRequest o) {
  buildCounterUpdateBordersRequest++;
  if (buildCounterUpdateBordersRequest < 3) {
    checkBorder(o.bottom!);
    checkBorder(o.innerHorizontal!);
    checkBorder(o.innerVertical!);
    checkBorder(o.left!);
    checkGridRange(o.range!);
    checkBorder(o.right!);
    checkBorder(o.top!);
  }
  buildCounterUpdateBordersRequest--;
}

core.List<api.RowData> buildUnnamed739() {
  final o = <api.RowData>[];
  o.add(buildRowData());
  o.add(buildRowData());
  return o;
}

void checkUnnamed739(core.List<api.RowData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRowData(o[0]);
  checkRowData(o[1]);
}

core.int buildCounterUpdateCellsRequest = 0;
api.UpdateCellsRequest buildUpdateCellsRequest() {
  final o = api.UpdateCellsRequest();
  buildCounterUpdateCellsRequest++;
  if (buildCounterUpdateCellsRequest < 3) {
    o.fields = 'foo';
    o.range = buildGridRange();
    o.rows = buildUnnamed739();
    o.start = buildGridCoordinate();
  }
  buildCounterUpdateCellsRequest--;
  return o;
}

void checkUpdateCellsRequest(api.UpdateCellsRequest o) {
  buildCounterUpdateCellsRequest++;
  if (buildCounterUpdateCellsRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkGridRange(o.range!);
    checkUnnamed739(o.rows!);
    checkGridCoordinate(o.start!);
  }
  buildCounterUpdateCellsRequest--;
}

core.int buildCounterUpdateChartSpecRequest = 0;
api.UpdateChartSpecRequest buildUpdateChartSpecRequest() {
  final o = api.UpdateChartSpecRequest();
  buildCounterUpdateChartSpecRequest++;
  if (buildCounterUpdateChartSpecRequest < 3) {
    o.chartId = 42;
    o.spec = buildChartSpec();
  }
  buildCounterUpdateChartSpecRequest--;
  return o;
}

void checkUpdateChartSpecRequest(api.UpdateChartSpecRequest o) {
  buildCounterUpdateChartSpecRequest++;
  if (buildCounterUpdateChartSpecRequest < 3) {
    unittest.expect(
      o.chartId!,
      unittest.equals(42),
    );
    checkChartSpec(o.spec!);
  }
  buildCounterUpdateChartSpecRequest--;
}

core.int buildCounterUpdateConditionalFormatRuleRequest = 0;
api.UpdateConditionalFormatRuleRequest
    buildUpdateConditionalFormatRuleRequest() {
  final o = api.UpdateConditionalFormatRuleRequest();
  buildCounterUpdateConditionalFormatRuleRequest++;
  if (buildCounterUpdateConditionalFormatRuleRequest < 3) {
    o.index = 42;
    o.newIndex = 42;
    o.rule = buildConditionalFormatRule();
    o.sheetId = 42;
  }
  buildCounterUpdateConditionalFormatRuleRequest--;
  return o;
}

void checkUpdateConditionalFormatRuleRequest(
    api.UpdateConditionalFormatRuleRequest o) {
  buildCounterUpdateConditionalFormatRuleRequest++;
  if (buildCounterUpdateConditionalFormatRuleRequest < 3) {
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.newIndex!,
      unittest.equals(42),
    );
    checkConditionalFormatRule(o.rule!);
    unittest.expect(
      o.sheetId!,
      unittest.equals(42),
    );
  }
  buildCounterUpdateConditionalFormatRuleRequest--;
}

core.int buildCounterUpdateConditionalFormatRuleResponse = 0;
api.UpdateConditionalFormatRuleResponse
    buildUpdateConditionalFormatRuleResponse() {
  final o = api.UpdateConditionalFormatRuleResponse();
  buildCounterUpdateConditionalFormatRuleResponse++;
  if (buildCounterUpdateConditionalFormatRuleResponse < 3) {
    o.newIndex = 42;
    o.newRule = buildConditionalFormatRule();
    o.oldIndex = 42;
    o.oldRule = buildConditionalFormatRule();
  }
  buildCounterUpdateConditionalFormatRuleResponse--;
  return o;
}

void checkUpdateConditionalFormatRuleResponse(
    api.UpdateConditionalFormatRuleResponse o) {
  buildCounterUpdateConditionalFormatRuleResponse++;
  if (buildCounterUpdateConditionalFormatRuleResponse < 3) {
    unittest.expect(
      o.newIndex!,
      unittest.equals(42),
    );
    checkConditionalFormatRule(o.newRule!);
    unittest.expect(
      o.oldIndex!,
      unittest.equals(42),
    );
    checkConditionalFormatRule(o.oldRule!);
  }
  buildCounterUpdateConditionalFormatRuleResponse--;
}

core.int buildCounterUpdateDataSourceRequest = 0;
api.UpdateDataSourceRequest buildUpdateDataSourceRequest() {
  final o = api.UpdateDataSourceRequest();
  buildCounterUpdateDataSourceRequest++;
  if (buildCounterUpdateDataSourceRequest < 3) {
    o.dataSource = buildDataSource();
    o.fields = 'foo';
  }
  buildCounterUpdateDataSourceRequest--;
  return o;
}

void checkUpdateDataSourceRequest(api.UpdateDataSourceRequest o) {
  buildCounterUpdateDataSourceRequest++;
  if (buildCounterUpdateDataSourceRequest < 3) {
    checkDataSource(o.dataSource!);
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateDataSourceRequest--;
}

core.int buildCounterUpdateDataSourceResponse = 0;
api.UpdateDataSourceResponse buildUpdateDataSourceResponse() {
  final o = api.UpdateDataSourceResponse();
  buildCounterUpdateDataSourceResponse++;
  if (buildCounterUpdateDataSourceResponse < 3) {
    o.dataExecutionStatus = buildDataExecutionStatus();
    o.dataSource = buildDataSource();
  }
  buildCounterUpdateDataSourceResponse--;
  return o;
}

void checkUpdateDataSourceResponse(api.UpdateDataSourceResponse o) {
  buildCounterUpdateDataSourceResponse++;
  if (buildCounterUpdateDataSourceResponse < 3) {
    checkDataExecutionStatus(o.dataExecutionStatus!);
    checkDataSource(o.dataSource!);
  }
  buildCounterUpdateDataSourceResponse--;
}

core.List<api.DataFilter> buildUnnamed740() {
  final o = <api.DataFilter>[];
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

void checkUnnamed740(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0]);
  checkDataFilter(o[1]);
}

core.int buildCounterUpdateDeveloperMetadataRequest = 0;
api.UpdateDeveloperMetadataRequest buildUpdateDeveloperMetadataRequest() {
  final o = api.UpdateDeveloperMetadataRequest();
  buildCounterUpdateDeveloperMetadataRequest++;
  if (buildCounterUpdateDeveloperMetadataRequest < 3) {
    o.dataFilters = buildUnnamed740();
    o.developerMetadata = buildDeveloperMetadata();
    o.fields = 'foo';
  }
  buildCounterUpdateDeveloperMetadataRequest--;
  return o;
}

void checkUpdateDeveloperMetadataRequest(api.UpdateDeveloperMetadataRequest o) {
  buildCounterUpdateDeveloperMetadataRequest++;
  if (buildCounterUpdateDeveloperMetadataRequest < 3) {
    checkUnnamed740(o.dataFilters!);
    checkDeveloperMetadata(o.developerMetadata!);
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateDeveloperMetadataRequest--;
}

core.List<api.DeveloperMetadata> buildUnnamed741() {
  final o = <api.DeveloperMetadata>[];
  o.add(buildDeveloperMetadata());
  o.add(buildDeveloperMetadata());
  return o;
}

void checkUnnamed741(core.List<api.DeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeveloperMetadata(o[0]);
  checkDeveloperMetadata(o[1]);
}

core.int buildCounterUpdateDeveloperMetadataResponse = 0;
api.UpdateDeveloperMetadataResponse buildUpdateDeveloperMetadataResponse() {
  final o = api.UpdateDeveloperMetadataResponse();
  buildCounterUpdateDeveloperMetadataResponse++;
  if (buildCounterUpdateDeveloperMetadataResponse < 3) {
    o.developerMetadata = buildUnnamed741();
  }
  buildCounterUpdateDeveloperMetadataResponse--;
  return o;
}

void checkUpdateDeveloperMetadataResponse(
    api.UpdateDeveloperMetadataResponse o) {
  buildCounterUpdateDeveloperMetadataResponse++;
  if (buildCounterUpdateDeveloperMetadataResponse < 3) {
    checkUnnamed741(o.developerMetadata!);
  }
  buildCounterUpdateDeveloperMetadataResponse--;
}

core.int buildCounterUpdateDimensionGroupRequest = 0;
api.UpdateDimensionGroupRequest buildUpdateDimensionGroupRequest() {
  final o = api.UpdateDimensionGroupRequest();
  buildCounterUpdateDimensionGroupRequest++;
  if (buildCounterUpdateDimensionGroupRequest < 3) {
    o.dimensionGroup = buildDimensionGroup();
    o.fields = 'foo';
  }
  buildCounterUpdateDimensionGroupRequest--;
  return o;
}

void checkUpdateDimensionGroupRequest(api.UpdateDimensionGroupRequest o) {
  buildCounterUpdateDimensionGroupRequest++;
  if (buildCounterUpdateDimensionGroupRequest < 3) {
    checkDimensionGroup(o.dimensionGroup!);
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateDimensionGroupRequest--;
}

core.int buildCounterUpdateDimensionPropertiesRequest = 0;
api.UpdateDimensionPropertiesRequest buildUpdateDimensionPropertiesRequest() {
  final o = api.UpdateDimensionPropertiesRequest();
  buildCounterUpdateDimensionPropertiesRequest++;
  if (buildCounterUpdateDimensionPropertiesRequest < 3) {
    o.dataSourceSheetRange = buildDataSourceSheetDimensionRange();
    o.fields = 'foo';
    o.properties = buildDimensionProperties();
    o.range = buildDimensionRange();
  }
  buildCounterUpdateDimensionPropertiesRequest--;
  return o;
}

void checkUpdateDimensionPropertiesRequest(
    api.UpdateDimensionPropertiesRequest o) {
  buildCounterUpdateDimensionPropertiesRequest++;
  if (buildCounterUpdateDimensionPropertiesRequest < 3) {
    checkDataSourceSheetDimensionRange(o.dataSourceSheetRange!);
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkDimensionProperties(o.properties!);
    checkDimensionRange(o.range!);
  }
  buildCounterUpdateDimensionPropertiesRequest--;
}

core.int buildCounterUpdateEmbeddedObjectBorderRequest = 0;
api.UpdateEmbeddedObjectBorderRequest buildUpdateEmbeddedObjectBorderRequest() {
  final o = api.UpdateEmbeddedObjectBorderRequest();
  buildCounterUpdateEmbeddedObjectBorderRequest++;
  if (buildCounterUpdateEmbeddedObjectBorderRequest < 3) {
    o.border = buildEmbeddedObjectBorder();
    o.fields = 'foo';
    o.objectId = 42;
  }
  buildCounterUpdateEmbeddedObjectBorderRequest--;
  return o;
}

void checkUpdateEmbeddedObjectBorderRequest(
    api.UpdateEmbeddedObjectBorderRequest o) {
  buildCounterUpdateEmbeddedObjectBorderRequest++;
  if (buildCounterUpdateEmbeddedObjectBorderRequest < 3) {
    checkEmbeddedObjectBorder(o.border!);
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals(42),
    );
  }
  buildCounterUpdateEmbeddedObjectBorderRequest--;
}

core.int buildCounterUpdateEmbeddedObjectPositionRequest = 0;
api.UpdateEmbeddedObjectPositionRequest
    buildUpdateEmbeddedObjectPositionRequest() {
  final o = api.UpdateEmbeddedObjectPositionRequest();
  buildCounterUpdateEmbeddedObjectPositionRequest++;
  if (buildCounterUpdateEmbeddedObjectPositionRequest < 3) {
    o.fields = 'foo';
    o.newPosition = buildEmbeddedObjectPosition();
    o.objectId = 42;
  }
  buildCounterUpdateEmbeddedObjectPositionRequest--;
  return o;
}

void checkUpdateEmbeddedObjectPositionRequest(
    api.UpdateEmbeddedObjectPositionRequest o) {
  buildCounterUpdateEmbeddedObjectPositionRequest++;
  if (buildCounterUpdateEmbeddedObjectPositionRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkEmbeddedObjectPosition(o.newPosition!);
    unittest.expect(
      o.objectId!,
      unittest.equals(42),
    );
  }
  buildCounterUpdateEmbeddedObjectPositionRequest--;
}

core.int buildCounterUpdateEmbeddedObjectPositionResponse = 0;
api.UpdateEmbeddedObjectPositionResponse
    buildUpdateEmbeddedObjectPositionResponse() {
  final o = api.UpdateEmbeddedObjectPositionResponse();
  buildCounterUpdateEmbeddedObjectPositionResponse++;
  if (buildCounterUpdateEmbeddedObjectPositionResponse < 3) {
    o.position = buildEmbeddedObjectPosition();
  }
  buildCounterUpdateEmbeddedObjectPositionResponse--;
  return o;
}

void checkUpdateEmbeddedObjectPositionResponse(
    api.UpdateEmbeddedObjectPositionResponse o) {
  buildCounterUpdateEmbeddedObjectPositionResponse++;
  if (buildCounterUpdateEmbeddedObjectPositionResponse < 3) {
    checkEmbeddedObjectPosition(o.position!);
  }
  buildCounterUpdateEmbeddedObjectPositionResponse--;
}

core.int buildCounterUpdateFilterViewRequest = 0;
api.UpdateFilterViewRequest buildUpdateFilterViewRequest() {
  final o = api.UpdateFilterViewRequest();
  buildCounterUpdateFilterViewRequest++;
  if (buildCounterUpdateFilterViewRequest < 3) {
    o.fields = 'foo';
    o.filter = buildFilterView();
  }
  buildCounterUpdateFilterViewRequest--;
  return o;
}

void checkUpdateFilterViewRequest(api.UpdateFilterViewRequest o) {
  buildCounterUpdateFilterViewRequest++;
  if (buildCounterUpdateFilterViewRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkFilterView(o.filter!);
  }
  buildCounterUpdateFilterViewRequest--;
}

core.int buildCounterUpdateNamedRangeRequest = 0;
api.UpdateNamedRangeRequest buildUpdateNamedRangeRequest() {
  final o = api.UpdateNamedRangeRequest();
  buildCounterUpdateNamedRangeRequest++;
  if (buildCounterUpdateNamedRangeRequest < 3) {
    o.fields = 'foo';
    o.namedRange = buildNamedRange();
  }
  buildCounterUpdateNamedRangeRequest--;
  return o;
}

void checkUpdateNamedRangeRequest(api.UpdateNamedRangeRequest o) {
  buildCounterUpdateNamedRangeRequest++;
  if (buildCounterUpdateNamedRangeRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkNamedRange(o.namedRange!);
  }
  buildCounterUpdateNamedRangeRequest--;
}

core.int buildCounterUpdateProtectedRangeRequest = 0;
api.UpdateProtectedRangeRequest buildUpdateProtectedRangeRequest() {
  final o = api.UpdateProtectedRangeRequest();
  buildCounterUpdateProtectedRangeRequest++;
  if (buildCounterUpdateProtectedRangeRequest < 3) {
    o.fields = 'foo';
    o.protectedRange = buildProtectedRange();
  }
  buildCounterUpdateProtectedRangeRequest--;
  return o;
}

void checkUpdateProtectedRangeRequest(api.UpdateProtectedRangeRequest o) {
  buildCounterUpdateProtectedRangeRequest++;
  if (buildCounterUpdateProtectedRangeRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkProtectedRange(o.protectedRange!);
  }
  buildCounterUpdateProtectedRangeRequest--;
}

core.int buildCounterUpdateSheetPropertiesRequest = 0;
api.UpdateSheetPropertiesRequest buildUpdateSheetPropertiesRequest() {
  final o = api.UpdateSheetPropertiesRequest();
  buildCounterUpdateSheetPropertiesRequest++;
  if (buildCounterUpdateSheetPropertiesRequest < 3) {
    o.fields = 'foo';
    o.properties = buildSheetProperties();
  }
  buildCounterUpdateSheetPropertiesRequest--;
  return o;
}

void checkUpdateSheetPropertiesRequest(api.UpdateSheetPropertiesRequest o) {
  buildCounterUpdateSheetPropertiesRequest++;
  if (buildCounterUpdateSheetPropertiesRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkSheetProperties(o.properties!);
  }
  buildCounterUpdateSheetPropertiesRequest--;
}

core.int buildCounterUpdateSlicerSpecRequest = 0;
api.UpdateSlicerSpecRequest buildUpdateSlicerSpecRequest() {
  final o = api.UpdateSlicerSpecRequest();
  buildCounterUpdateSlicerSpecRequest++;
  if (buildCounterUpdateSlicerSpecRequest < 3) {
    o.fields = 'foo';
    o.slicerId = 42;
    o.spec = buildSlicerSpec();
  }
  buildCounterUpdateSlicerSpecRequest--;
  return o;
}

void checkUpdateSlicerSpecRequest(api.UpdateSlicerSpecRequest o) {
  buildCounterUpdateSlicerSpecRequest++;
  if (buildCounterUpdateSlicerSpecRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.slicerId!,
      unittest.equals(42),
    );
    checkSlicerSpec(o.spec!);
  }
  buildCounterUpdateSlicerSpecRequest--;
}

core.int buildCounterUpdateSpreadsheetPropertiesRequest = 0;
api.UpdateSpreadsheetPropertiesRequest
    buildUpdateSpreadsheetPropertiesRequest() {
  final o = api.UpdateSpreadsheetPropertiesRequest();
  buildCounterUpdateSpreadsheetPropertiesRequest++;
  if (buildCounterUpdateSpreadsheetPropertiesRequest < 3) {
    o.fields = 'foo';
    o.properties = buildSpreadsheetProperties();
  }
  buildCounterUpdateSpreadsheetPropertiesRequest--;
  return o;
}

void checkUpdateSpreadsheetPropertiesRequest(
    api.UpdateSpreadsheetPropertiesRequest o) {
  buildCounterUpdateSpreadsheetPropertiesRequest++;
  if (buildCounterUpdateSpreadsheetPropertiesRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkSpreadsheetProperties(o.properties!);
  }
  buildCounterUpdateSpreadsheetPropertiesRequest--;
}

core.int buildCounterUpdateValuesByDataFilterResponse = 0;
api.UpdateValuesByDataFilterResponse buildUpdateValuesByDataFilterResponse() {
  final o = api.UpdateValuesByDataFilterResponse();
  buildCounterUpdateValuesByDataFilterResponse++;
  if (buildCounterUpdateValuesByDataFilterResponse < 3) {
    o.dataFilter = buildDataFilter();
    o.updatedCells = 42;
    o.updatedColumns = 42;
    o.updatedData = buildValueRange();
    o.updatedRange = 'foo';
    o.updatedRows = 42;
  }
  buildCounterUpdateValuesByDataFilterResponse--;
  return o;
}

void checkUpdateValuesByDataFilterResponse(
    api.UpdateValuesByDataFilterResponse o) {
  buildCounterUpdateValuesByDataFilterResponse++;
  if (buildCounterUpdateValuesByDataFilterResponse < 3) {
    checkDataFilter(o.dataFilter!);
    unittest.expect(
      o.updatedCells!,
      unittest.equals(42),
    );
    unittest.expect(
      o.updatedColumns!,
      unittest.equals(42),
    );
    checkValueRange(o.updatedData!);
    unittest.expect(
      o.updatedRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updatedRows!,
      unittest.equals(42),
    );
  }
  buildCounterUpdateValuesByDataFilterResponse--;
}

core.int buildCounterUpdateValuesResponse = 0;
api.UpdateValuesResponse buildUpdateValuesResponse() {
  final o = api.UpdateValuesResponse();
  buildCounterUpdateValuesResponse++;
  if (buildCounterUpdateValuesResponse < 3) {
    o.spreadsheetId = 'foo';
    o.updatedCells = 42;
    o.updatedColumns = 42;
    o.updatedData = buildValueRange();
    o.updatedRange = 'foo';
    o.updatedRows = 42;
  }
  buildCounterUpdateValuesResponse--;
  return o;
}

void checkUpdateValuesResponse(api.UpdateValuesResponse o) {
  buildCounterUpdateValuesResponse++;
  if (buildCounterUpdateValuesResponse < 3) {
    unittest.expect(
      o.spreadsheetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updatedCells!,
      unittest.equals(42),
    );
    unittest.expect(
      o.updatedColumns!,
      unittest.equals(42),
    );
    checkValueRange(o.updatedData!);
    unittest.expect(
      o.updatedRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updatedRows!,
      unittest.equals(42),
    );
  }
  buildCounterUpdateValuesResponse--;
}

core.List<core.Object> buildUnnamed742() {
  final o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed742(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o[0]) as core.Map;
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
  var casted4 = (o[1]) as core.Map;
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

core.List<core.List<core.Object>> buildUnnamed743() {
  final o = <core.List<core.Object>>[];
  o.add(buildUnnamed742());
  o.add(buildUnnamed742());
  return o;
}

void checkUnnamed743(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed742(o[0]);
  checkUnnamed742(o[1]);
}

core.int buildCounterValueRange = 0;
api.ValueRange buildValueRange() {
  final o = api.ValueRange();
  buildCounterValueRange++;
  if (buildCounterValueRange < 3) {
    o.majorDimension = 'foo';
    o.range = 'foo';
    o.values = buildUnnamed743();
  }
  buildCounterValueRange--;
  return o;
}

void checkValueRange(api.ValueRange o) {
  buildCounterValueRange++;
  if (buildCounterValueRange < 3) {
    unittest.expect(
      o.majorDimension!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.range!,
      unittest.equals('foo'),
    );
    checkUnnamed743(o.values!);
  }
  buildCounterValueRange--;
}

core.int buildCounterWaterfallChartColumnStyle = 0;
api.WaterfallChartColumnStyle buildWaterfallChartColumnStyle() {
  final o = api.WaterfallChartColumnStyle();
  buildCounterWaterfallChartColumnStyle++;
  if (buildCounterWaterfallChartColumnStyle < 3) {
    o.color = buildColor();
    o.colorStyle = buildColorStyle();
    o.label = 'foo';
  }
  buildCounterWaterfallChartColumnStyle--;
  return o;
}

void checkWaterfallChartColumnStyle(api.WaterfallChartColumnStyle o) {
  buildCounterWaterfallChartColumnStyle++;
  if (buildCounterWaterfallChartColumnStyle < 3) {
    checkColor(o.color!);
    checkColorStyle(o.colorStyle!);
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
  }
  buildCounterWaterfallChartColumnStyle--;
}

core.int buildCounterWaterfallChartCustomSubtotal = 0;
api.WaterfallChartCustomSubtotal buildWaterfallChartCustomSubtotal() {
  final o = api.WaterfallChartCustomSubtotal();
  buildCounterWaterfallChartCustomSubtotal++;
  if (buildCounterWaterfallChartCustomSubtotal < 3) {
    o.dataIsSubtotal = true;
    o.label = 'foo';
    o.subtotalIndex = 42;
  }
  buildCounterWaterfallChartCustomSubtotal--;
  return o;
}

void checkWaterfallChartCustomSubtotal(api.WaterfallChartCustomSubtotal o) {
  buildCounterWaterfallChartCustomSubtotal++;
  if (buildCounterWaterfallChartCustomSubtotal < 3) {
    unittest.expect(o.dataIsSubtotal!, unittest.isTrue);
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subtotalIndex!,
      unittest.equals(42),
    );
  }
  buildCounterWaterfallChartCustomSubtotal--;
}

core.int buildCounterWaterfallChartDomain = 0;
api.WaterfallChartDomain buildWaterfallChartDomain() {
  final o = api.WaterfallChartDomain();
  buildCounterWaterfallChartDomain++;
  if (buildCounterWaterfallChartDomain < 3) {
    o.data = buildChartData();
    o.reversed = true;
  }
  buildCounterWaterfallChartDomain--;
  return o;
}

void checkWaterfallChartDomain(api.WaterfallChartDomain o) {
  buildCounterWaterfallChartDomain++;
  if (buildCounterWaterfallChartDomain < 3) {
    checkChartData(o.data!);
    unittest.expect(o.reversed!, unittest.isTrue);
  }
  buildCounterWaterfallChartDomain--;
}

core.List<api.WaterfallChartCustomSubtotal> buildUnnamed744() {
  final o = <api.WaterfallChartCustomSubtotal>[];
  o.add(buildWaterfallChartCustomSubtotal());
  o.add(buildWaterfallChartCustomSubtotal());
  return o;
}

void checkUnnamed744(core.List<api.WaterfallChartCustomSubtotal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWaterfallChartCustomSubtotal(o[0]);
  checkWaterfallChartCustomSubtotal(o[1]);
}

core.int buildCounterWaterfallChartSeries = 0;
api.WaterfallChartSeries buildWaterfallChartSeries() {
  final o = api.WaterfallChartSeries();
  buildCounterWaterfallChartSeries++;
  if (buildCounterWaterfallChartSeries < 3) {
    o.customSubtotals = buildUnnamed744();
    o.data = buildChartData();
    o.dataLabel = buildDataLabel();
    o.hideTrailingSubtotal = true;
    o.negativeColumnsStyle = buildWaterfallChartColumnStyle();
    o.positiveColumnsStyle = buildWaterfallChartColumnStyle();
    o.subtotalColumnsStyle = buildWaterfallChartColumnStyle();
  }
  buildCounterWaterfallChartSeries--;
  return o;
}

void checkWaterfallChartSeries(api.WaterfallChartSeries o) {
  buildCounterWaterfallChartSeries++;
  if (buildCounterWaterfallChartSeries < 3) {
    checkUnnamed744(o.customSubtotals!);
    checkChartData(o.data!);
    checkDataLabel(o.dataLabel!);
    unittest.expect(o.hideTrailingSubtotal!, unittest.isTrue);
    checkWaterfallChartColumnStyle(o.negativeColumnsStyle!);
    checkWaterfallChartColumnStyle(o.positiveColumnsStyle!);
    checkWaterfallChartColumnStyle(o.subtotalColumnsStyle!);
  }
  buildCounterWaterfallChartSeries--;
}

core.List<api.WaterfallChartSeries> buildUnnamed745() {
  final o = <api.WaterfallChartSeries>[];
  o.add(buildWaterfallChartSeries());
  o.add(buildWaterfallChartSeries());
  return o;
}

void checkUnnamed745(core.List<api.WaterfallChartSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWaterfallChartSeries(o[0]);
  checkWaterfallChartSeries(o[1]);
}

core.int buildCounterWaterfallChartSpec = 0;
api.WaterfallChartSpec buildWaterfallChartSpec() {
  final o = api.WaterfallChartSpec();
  buildCounterWaterfallChartSpec++;
  if (buildCounterWaterfallChartSpec < 3) {
    o.connectorLineStyle = buildLineStyle();
    o.domain = buildWaterfallChartDomain();
    o.firstValueIsTotal = true;
    o.hideConnectorLines = true;
    o.series = buildUnnamed745();
    o.stackedType = 'foo';
    o.totalDataLabel = buildDataLabel();
  }
  buildCounterWaterfallChartSpec--;
  return o;
}

void checkWaterfallChartSpec(api.WaterfallChartSpec o) {
  buildCounterWaterfallChartSpec++;
  if (buildCounterWaterfallChartSpec < 3) {
    checkLineStyle(o.connectorLineStyle!);
    checkWaterfallChartDomain(o.domain!);
    unittest.expect(o.firstValueIsTotal!, unittest.isTrue);
    unittest.expect(o.hideConnectorLines!, unittest.isTrue);
    checkUnnamed745(o.series!);
    unittest.expect(
      o.stackedType!,
      unittest.equals('foo'),
    );
    checkDataLabel(o.totalDataLabel!);
  }
  buildCounterWaterfallChartSpec--;
}

core.List<core.String> buildUnnamed746() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed746(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed747() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed747(core.List<core.String> o) {
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
  unittest.group('obj-schema-AddBandingRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddBandingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddBandingRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddBandingRequest(od);
    });
  });

  unittest.group('obj-schema-AddBandingResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddBandingResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddBandingResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddBandingResponse(od);
    });
  });

  unittest.group('obj-schema-AddChartRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddChartRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddChartRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddChartRequest(od);
    });
  });

  unittest.group('obj-schema-AddChartResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddChartResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddChartResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddChartResponse(od);
    });
  });

  unittest.group('obj-schema-AddConditionalFormatRuleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddConditionalFormatRuleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddConditionalFormatRuleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddConditionalFormatRuleRequest(od);
    });
  });

  unittest.group('obj-schema-AddDataSourceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddDataSourceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddDataSourceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddDataSourceRequest(od);
    });
  });

  unittest.group('obj-schema-AddDataSourceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddDataSourceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddDataSourceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddDataSourceResponse(od);
    });
  });

  unittest.group('obj-schema-AddDimensionGroupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddDimensionGroupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddDimensionGroupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddDimensionGroupRequest(od);
    });
  });

  unittest.group('obj-schema-AddDimensionGroupResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddDimensionGroupResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddDimensionGroupResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddDimensionGroupResponse(od);
    });
  });

  unittest.group('obj-schema-AddFilterViewRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddFilterViewRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddFilterViewRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddFilterViewRequest(od);
    });
  });

  unittest.group('obj-schema-AddFilterViewResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddFilterViewResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddFilterViewResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddFilterViewResponse(od);
    });
  });

  unittest.group('obj-schema-AddNamedRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddNamedRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddNamedRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddNamedRangeRequest(od);
    });
  });

  unittest.group('obj-schema-AddNamedRangeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddNamedRangeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddNamedRangeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddNamedRangeResponse(od);
    });
  });

  unittest.group('obj-schema-AddProtectedRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddProtectedRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddProtectedRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddProtectedRangeRequest(od);
    });
  });

  unittest.group('obj-schema-AddProtectedRangeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddProtectedRangeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddProtectedRangeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddProtectedRangeResponse(od);
    });
  });

  unittest.group('obj-schema-AddSheetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddSheetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddSheetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddSheetRequest(od);
    });
  });

  unittest.group('obj-schema-AddSheetResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddSheetResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddSheetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddSheetResponse(od);
    });
  });

  unittest.group('obj-schema-AddSlicerRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddSlicerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddSlicerRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddSlicerRequest(od);
    });
  });

  unittest.group('obj-schema-AddSlicerResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddSlicerResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddSlicerResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddSlicerResponse(od);
    });
  });

  unittest.group('obj-schema-AppendCellsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppendCellsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppendCellsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppendCellsRequest(od);
    });
  });

  unittest.group('obj-schema-AppendDimensionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppendDimensionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppendDimensionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppendDimensionRequest(od);
    });
  });

  unittest.group('obj-schema-AppendValuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppendValuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppendValuesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppendValuesResponse(od);
    });
  });

  unittest.group('obj-schema-AutoFillRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoFillRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoFillRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoFillRequest(od);
    });
  });

  unittest.group('obj-schema-AutoResizeDimensionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoResizeDimensionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoResizeDimensionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoResizeDimensionsRequest(od);
    });
  });

  unittest.group('obj-schema-BandedRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBandedRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BandedRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBandedRange(od);
    });
  });

  unittest.group('obj-schema-BandingProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBandingProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BandingProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBandingProperties(od);
    });
  });

  unittest.group('obj-schema-BaselineValueFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBaselineValueFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BaselineValueFormat.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBaselineValueFormat(od);
    });
  });

  unittest.group('obj-schema-BasicChartAxis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicChartAxis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasicChartAxis.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBasicChartAxis(od);
    });
  });

  unittest.group('obj-schema-BasicChartDomain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicChartDomain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasicChartDomain.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBasicChartDomain(od);
    });
  });

  unittest.group('obj-schema-BasicChartSeries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicChartSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasicChartSeries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBasicChartSeries(od);
    });
  });

  unittest.group('obj-schema-BasicChartSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicChartSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasicChartSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBasicChartSpec(od);
    });
  });

  unittest.group('obj-schema-BasicFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasicFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBasicFilter(od);
    });
  });

  unittest.group('obj-schema-BasicSeriesDataPointStyleOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicSeriesDataPointStyleOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasicSeriesDataPointStyleOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBasicSeriesDataPointStyleOverride(od);
    });
  });

  unittest.group('obj-schema-BatchClearValuesByDataFilterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchClearValuesByDataFilterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchClearValuesByDataFilterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchClearValuesByDataFilterRequest(od);
    });
  });

  unittest.group('obj-schema-BatchClearValuesByDataFilterResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchClearValuesByDataFilterResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchClearValuesByDataFilterResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchClearValuesByDataFilterResponse(od);
    });
  });

  unittest.group('obj-schema-BatchClearValuesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchClearValuesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchClearValuesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchClearValuesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchClearValuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchClearValuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchClearValuesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchClearValuesResponse(od);
    });
  });

  unittest.group('obj-schema-BatchGetValuesByDataFilterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetValuesByDataFilterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetValuesByDataFilterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetValuesByDataFilterRequest(od);
    });
  });

  unittest.group('obj-schema-BatchGetValuesByDataFilterResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetValuesByDataFilterResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetValuesByDataFilterResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetValuesByDataFilterResponse(od);
    });
  });

  unittest.group('obj-schema-BatchGetValuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetValuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetValuesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetValuesResponse(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateSpreadsheetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateSpreadsheetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateSpreadsheetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateSpreadsheetRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateSpreadsheetResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateSpreadsheetResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateSpreadsheetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateSpreadsheetResponse(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateValuesByDataFilterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateValuesByDataFilterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateValuesByDataFilterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateValuesByDataFilterRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateValuesByDataFilterResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateValuesByDataFilterResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateValuesByDataFilterResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateValuesByDataFilterResponse(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateValuesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateValuesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateValuesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateValuesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateValuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateValuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateValuesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateValuesResponse(od);
    });
  });

  unittest.group('obj-schema-BigQueryDataSourceSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryDataSourceSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryDataSourceSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigQueryDataSourceSpec(od);
    });
  });

  unittest.group('obj-schema-BigQueryQuerySpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryQuerySpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryQuerySpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigQueryQuerySpec(od);
    });
  });

  unittest.group('obj-schema-BigQueryTableSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryTableSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryTableSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigQueryTableSpec(od);
    });
  });

  unittest.group('obj-schema-BooleanCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBooleanCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BooleanCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBooleanCondition(od);
    });
  });

  unittest.group('obj-schema-BooleanRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBooleanRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BooleanRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBooleanRule(od);
    });
  });

  unittest.group('obj-schema-Border', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBorder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Border.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBorder(od);
    });
  });

  unittest.group('obj-schema-Borders', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBorders();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Borders.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBorders(od);
    });
  });

  unittest.group('obj-schema-BubbleChartSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBubbleChartSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BubbleChartSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBubbleChartSpec(od);
    });
  });

  unittest.group('obj-schema-CandlestickChartSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCandlestickChartSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CandlestickChartSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCandlestickChartSpec(od);
    });
  });

  unittest.group('obj-schema-CandlestickData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCandlestickData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CandlestickData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCandlestickData(od);
    });
  });

  unittest.group('obj-schema-CandlestickDomain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCandlestickDomain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CandlestickDomain.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCandlestickDomain(od);
    });
  });

  unittest.group('obj-schema-CandlestickSeries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCandlestickSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CandlestickSeries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCandlestickSeries(od);
    });
  });

  unittest.group('obj-schema-CellData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCellData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CellData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCellData(od);
    });
  });

  unittest.group('obj-schema-CellFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCellFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CellFormat.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCellFormat(od);
    });
  });

  unittest.group('obj-schema-ChartAxisViewWindowOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChartAxisViewWindowOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChartAxisViewWindowOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChartAxisViewWindowOptions(od);
    });
  });

  unittest.group('obj-schema-ChartCustomNumberFormatOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChartCustomNumberFormatOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChartCustomNumberFormatOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChartCustomNumberFormatOptions(od);
    });
  });

  unittest.group('obj-schema-ChartData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChartData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ChartData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChartData(od);
    });
  });

  unittest.group('obj-schema-ChartDateTimeRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChartDateTimeRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChartDateTimeRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChartDateTimeRule(od);
    });
  });

  unittest.group('obj-schema-ChartGroupRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChartGroupRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChartGroupRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChartGroupRule(od);
    });
  });

  unittest.group('obj-schema-ChartHistogramRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChartHistogramRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChartHistogramRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChartHistogramRule(od);
    });
  });

  unittest.group('obj-schema-ChartSourceRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChartSourceRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChartSourceRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChartSourceRange(od);
    });
  });

  unittest.group('obj-schema-ChartSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChartSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ChartSpec.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChartSpec(od);
    });
  });

  unittest.group('obj-schema-ClearBasicFilterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClearBasicFilterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClearBasicFilterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClearBasicFilterRequest(od);
    });
  });

  unittest.group('obj-schema-ClearValuesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClearValuesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClearValuesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClearValuesRequest(od);
    });
  });

  unittest.group('obj-schema-ClearValuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClearValuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClearValuesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClearValuesResponse(od);
    });
  });

  unittest.group('obj-schema-Color', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Color.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkColor(od);
    });
  });

  unittest.group('obj-schema-ColorStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColorStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ColorStyle.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkColorStyle(od);
    });
  });

  unittest.group('obj-schema-ConditionValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConditionValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConditionValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConditionValue(od);
    });
  });

  unittest.group('obj-schema-ConditionalFormatRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConditionalFormatRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConditionalFormatRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConditionalFormatRule(od);
    });
  });

  unittest.group('obj-schema-CopyPasteRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCopyPasteRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CopyPasteRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCopyPasteRequest(od);
    });
  });

  unittest.group('obj-schema-CopySheetToAnotherSpreadsheetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCopySheetToAnotherSpreadsheetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CopySheetToAnotherSpreadsheetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCopySheetToAnotherSpreadsheetRequest(od);
    });
  });

  unittest.group('obj-schema-CreateDeveloperMetadataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateDeveloperMetadataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateDeveloperMetadataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateDeveloperMetadataRequest(od);
    });
  });

  unittest.group('obj-schema-CreateDeveloperMetadataResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateDeveloperMetadataResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateDeveloperMetadataResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateDeveloperMetadataResponse(od);
    });
  });

  unittest.group('obj-schema-CutPasteRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCutPasteRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CutPasteRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCutPasteRequest(od);
    });
  });

  unittest.group('obj-schema-DataExecutionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataExecutionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataExecutionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataExecutionStatus(od);
    });
  });

  unittest.group('obj-schema-DataFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DataFilter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDataFilter(od);
    });
  });

  unittest.group('obj-schema-DataFilterValueRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataFilterValueRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataFilterValueRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataFilterValueRange(od);
    });
  });

  unittest.group('obj-schema-DataLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DataLabel.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDataLabel(od);
    });
  });

  unittest.group('obj-schema-DataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DataSource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDataSource(od);
    });
  });

  unittest.group('obj-schema-DataSourceChartProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceChartProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceChartProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceChartProperties(od);
    });
  });

  unittest.group('obj-schema-DataSourceColumn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceColumn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceColumn.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceColumn(od);
    });
  });

  unittest.group('obj-schema-DataSourceColumnReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceColumnReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceColumnReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceColumnReference(od);
    });
  });

  unittest.group('obj-schema-DataSourceFormula', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceFormula();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceFormula.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceFormula(od);
    });
  });

  unittest.group('obj-schema-DataSourceObjectReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceObjectReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceObjectReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceObjectReference(od);
    });
  });

  unittest.group('obj-schema-DataSourceObjectReferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceObjectReferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceObjectReferences.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceObjectReferences(od);
    });
  });

  unittest.group('obj-schema-DataSourceParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceParameter(od);
    });
  });

  unittest.group('obj-schema-DataSourceRefreshDailySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceRefreshDailySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceRefreshDailySchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceRefreshDailySchedule(od);
    });
  });

  unittest.group('obj-schema-DataSourceRefreshMonthlySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceRefreshMonthlySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceRefreshMonthlySchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceRefreshMonthlySchedule(od);
    });
  });

  unittest.group('obj-schema-DataSourceRefreshSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceRefreshSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceRefreshSchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceRefreshSchedule(od);
    });
  });

  unittest.group('obj-schema-DataSourceRefreshWeeklySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceRefreshWeeklySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceRefreshWeeklySchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceRefreshWeeklySchedule(od);
    });
  });

  unittest.group('obj-schema-DataSourceSheetDimensionRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceSheetDimensionRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceSheetDimensionRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceSheetDimensionRange(od);
    });
  });

  unittest.group('obj-schema-DataSourceSheetProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceSheetProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceSheetProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceSheetProperties(od);
    });
  });

  unittest.group('obj-schema-DataSourceSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceSpec(od);
    });
  });

  unittest.group('obj-schema-DataSourceTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceTable(od);
    });
  });

  unittest.group('obj-schema-DataValidationRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataValidationRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataValidationRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataValidationRule(od);
    });
  });

  unittest.group('obj-schema-DateTimeRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateTimeRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateTimeRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDateTimeRule(od);
    });
  });

  unittest.group('obj-schema-DeleteBandingRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteBandingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteBandingRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteBandingRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteConditionalFormatRuleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteConditionalFormatRuleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteConditionalFormatRuleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteConditionalFormatRuleRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteConditionalFormatRuleResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteConditionalFormatRuleResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteConditionalFormatRuleResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteConditionalFormatRuleResponse(od);
    });
  });

  unittest.group('obj-schema-DeleteDataSourceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteDataSourceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteDataSourceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteDataSourceRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteDeveloperMetadataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteDeveloperMetadataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteDeveloperMetadataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteDeveloperMetadataRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteDeveloperMetadataResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteDeveloperMetadataResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteDeveloperMetadataResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteDeveloperMetadataResponse(od);
    });
  });

  unittest.group('obj-schema-DeleteDimensionGroupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteDimensionGroupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteDimensionGroupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteDimensionGroupRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteDimensionGroupResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteDimensionGroupResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteDimensionGroupResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteDimensionGroupResponse(od);
    });
  });

  unittest.group('obj-schema-DeleteDimensionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteDimensionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteDimensionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteDimensionRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteDuplicatesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteDuplicatesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteDuplicatesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteDuplicatesRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteDuplicatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteDuplicatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteDuplicatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteDuplicatesResponse(od);
    });
  });

  unittest.group('obj-schema-DeleteEmbeddedObjectRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteEmbeddedObjectRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteEmbeddedObjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteEmbeddedObjectRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteFilterViewRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteFilterViewRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteFilterViewRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteFilterViewRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteNamedRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteNamedRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteNamedRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteNamedRangeRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteProtectedRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteProtectedRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteProtectedRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteProtectedRangeRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteRangeRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteSheetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteSheetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteSheetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteSheetRequest(od);
    });
  });

  unittest.group('obj-schema-DeveloperMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeveloperMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeveloperMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeveloperMetadata(od);
    });
  });

  unittest.group('obj-schema-DeveloperMetadataLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeveloperMetadataLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeveloperMetadataLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeveloperMetadataLocation(od);
    });
  });

  unittest.group('obj-schema-DeveloperMetadataLookup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeveloperMetadataLookup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeveloperMetadataLookup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeveloperMetadataLookup(od);
    });
  });

  unittest.group('obj-schema-DimensionGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionGroup(od);
    });
  });

  unittest.group('obj-schema-DimensionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionProperties(od);
    });
  });

  unittest.group('obj-schema-DimensionRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionRange(od);
    });
  });

  unittest.group('obj-schema-DuplicateFilterViewRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDuplicateFilterViewRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DuplicateFilterViewRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDuplicateFilterViewRequest(od);
    });
  });

  unittest.group('obj-schema-DuplicateFilterViewResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDuplicateFilterViewResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DuplicateFilterViewResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDuplicateFilterViewResponse(od);
    });
  });

  unittest.group('obj-schema-DuplicateSheetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDuplicateSheetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DuplicateSheetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDuplicateSheetRequest(od);
    });
  });

  unittest.group('obj-schema-DuplicateSheetResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDuplicateSheetResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DuplicateSheetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDuplicateSheetResponse(od);
    });
  });

  unittest.group('obj-schema-Editors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEditors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Editors.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEditors(od);
    });
  });

  unittest.group('obj-schema-EmbeddedChart', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmbeddedChart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmbeddedChart.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmbeddedChart(od);
    });
  });

  unittest.group('obj-schema-EmbeddedObjectBorder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmbeddedObjectBorder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmbeddedObjectBorder.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmbeddedObjectBorder(od);
    });
  });

  unittest.group('obj-schema-EmbeddedObjectPosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmbeddedObjectPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmbeddedObjectPosition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmbeddedObjectPosition(od);
    });
  });

  unittest.group('obj-schema-ErrorValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ErrorValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkErrorValue(od);
    });
  });

  unittest.group('obj-schema-ExtendedValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtendedValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtendedValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExtendedValue(od);
    });
  });

  unittest.group('obj-schema-FilterCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilterCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilterCriteria(od);
    });
  });

  unittest.group('obj-schema-FilterSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FilterSpec.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilterSpec(od);
    });
  });

  unittest.group('obj-schema-FilterView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FilterView.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilterView(od);
    });
  });

  unittest.group('obj-schema-FindReplaceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindReplaceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindReplaceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFindReplaceRequest(od);
    });
  });

  unittest.group('obj-schema-FindReplaceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindReplaceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindReplaceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFindReplaceResponse(od);
    });
  });

  unittest.group('obj-schema-GetSpreadsheetByDataFilterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetSpreadsheetByDataFilterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetSpreadsheetByDataFilterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetSpreadsheetByDataFilterRequest(od);
    });
  });

  unittest.group('obj-schema-GradientRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGradientRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GradientRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGradientRule(od);
    });
  });

  unittest.group('obj-schema-GridCoordinate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGridCoordinate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GridCoordinate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGridCoordinate(od);
    });
  });

  unittest.group('obj-schema-GridData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGridData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GridData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGridData(od);
    });
  });

  unittest.group('obj-schema-GridProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGridProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GridProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGridProperties(od);
    });
  });

  unittest.group('obj-schema-GridRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGridRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GridRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGridRange(od);
    });
  });

  unittest.group('obj-schema-HistogramChartSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHistogramChartSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HistogramChartSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHistogramChartSpec(od);
    });
  });

  unittest.group('obj-schema-HistogramRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHistogramRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HistogramRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHistogramRule(od);
    });
  });

  unittest.group('obj-schema-HistogramSeries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHistogramSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HistogramSeries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHistogramSeries(od);
    });
  });

  unittest.group('obj-schema-InsertDimensionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertDimensionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertDimensionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsertDimensionRequest(od);
    });
  });

  unittest.group('obj-schema-InsertRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsertRangeRequest(od);
    });
  });

  unittest.group('obj-schema-InterpolationPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterpolationPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InterpolationPoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInterpolationPoint(od);
    });
  });

  unittest.group('obj-schema-Interval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Interval.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInterval(od);
    });
  });

  unittest.group('obj-schema-IterativeCalculationSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIterativeCalculationSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IterativeCalculationSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIterativeCalculationSettings(od);
    });
  });

  unittest.group('obj-schema-KeyValueFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyValueFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeyValueFormat.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyValueFormat(od);
    });
  });

  unittest.group('obj-schema-LineStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLineStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LineStyle.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLineStyle(od);
    });
  });

  unittest.group('obj-schema-Link', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Link.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLink(od);
    });
  });

  unittest.group('obj-schema-ManualRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManualRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ManualRule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkManualRule(od);
    });
  });

  unittest.group('obj-schema-ManualRuleGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManualRuleGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManualRuleGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManualRuleGroup(od);
    });
  });

  unittest.group('obj-schema-MatchedDeveloperMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMatchedDeveloperMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MatchedDeveloperMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMatchedDeveloperMetadata(od);
    });
  });

  unittest.group('obj-schema-MatchedValueRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMatchedValueRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MatchedValueRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMatchedValueRange(od);
    });
  });

  unittest.group('obj-schema-MergeCellsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMergeCellsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MergeCellsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMergeCellsRequest(od);
    });
  });

  unittest.group('obj-schema-MoveDimensionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoveDimensionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MoveDimensionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMoveDimensionRequest(od);
    });
  });

  unittest.group('obj-schema-NamedRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamedRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NamedRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNamedRange(od);
    });
  });

  unittest.group('obj-schema-NumberFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNumberFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NumberFormat.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNumberFormat(od);
    });
  });

  unittest.group('obj-schema-OrgChartSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrgChartSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrgChartSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrgChartSpec(od);
    });
  });

  unittest.group('obj-schema-OverlayPosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOverlayPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OverlayPosition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOverlayPosition(od);
    });
  });

  unittest.group('obj-schema-Padding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPadding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Padding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPadding(od);
    });
  });

  unittest.group('obj-schema-PasteDataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPasteDataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PasteDataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPasteDataRequest(od);
    });
  });

  unittest.group('obj-schema-PieChartSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPieChartSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PieChartSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPieChartSpec(od);
    });
  });

  unittest.group('obj-schema-PivotFilterCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotFilterCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PivotFilterCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPivotFilterCriteria(od);
    });
  });

  unittest.group('obj-schema-PivotFilterSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotFilterSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PivotFilterSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPivotFilterSpec(od);
    });
  });

  unittest.group('obj-schema-PivotGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PivotGroup.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPivotGroup(od);
    });
  });

  unittest.group('obj-schema-PivotGroupLimit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotGroupLimit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PivotGroupLimit.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPivotGroupLimit(od);
    });
  });

  unittest.group('obj-schema-PivotGroupRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotGroupRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PivotGroupRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPivotGroupRule(od);
    });
  });

  unittest.group('obj-schema-PivotGroupSortValueBucket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotGroupSortValueBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PivotGroupSortValueBucket.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPivotGroupSortValueBucket(od);
    });
  });

  unittest.group('obj-schema-PivotGroupValueMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotGroupValueMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PivotGroupValueMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPivotGroupValueMetadata(od);
    });
  });

  unittest.group('obj-schema-PivotTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PivotTable.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPivotTable(od);
    });
  });

  unittest.group('obj-schema-PivotValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPivotValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PivotValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPivotValue(od);
    });
  });

  unittest.group('obj-schema-PointStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPointStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PointStyle.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPointStyle(od);
    });
  });

  unittest.group('obj-schema-ProtectedRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProtectedRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProtectedRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProtectedRange(od);
    });
  });

  unittest.group('obj-schema-RandomizeRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRandomizeRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RandomizeRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRandomizeRangeRequest(od);
    });
  });

  unittest.group('obj-schema-RefreshDataSourceObjectExecutionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRefreshDataSourceObjectExecutionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RefreshDataSourceObjectExecutionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRefreshDataSourceObjectExecutionStatus(od);
    });
  });

  unittest.group('obj-schema-RefreshDataSourceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRefreshDataSourceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RefreshDataSourceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRefreshDataSourceRequest(od);
    });
  });

  unittest.group('obj-schema-RefreshDataSourceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRefreshDataSourceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RefreshDataSourceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRefreshDataSourceResponse(od);
    });
  });

  unittest.group('obj-schema-RepeatCellRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepeatCellRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepeatCellRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepeatCellRequest(od);
    });
  });

  unittest.group('obj-schema-Request', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Request.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRequest(od);
    });
  });

  unittest.group('obj-schema-Response', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Response.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResponse(od);
    });
  });

  unittest.group('obj-schema-RowData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRowData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RowData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRowData(od);
    });
  });

  unittest.group('obj-schema-ScorecardChartSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScorecardChartSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScorecardChartSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScorecardChartSpec(od);
    });
  });

  unittest.group('obj-schema-SearchDeveloperMetadataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchDeveloperMetadataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchDeveloperMetadataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchDeveloperMetadataRequest(od);
    });
  });

  unittest.group('obj-schema-SearchDeveloperMetadataResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchDeveloperMetadataResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchDeveloperMetadataResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchDeveloperMetadataResponse(od);
    });
  });

  unittest.group('obj-schema-SetBasicFilterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetBasicFilterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetBasicFilterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetBasicFilterRequest(od);
    });
  });

  unittest.group('obj-schema-SetDataValidationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetDataValidationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetDataValidationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetDataValidationRequest(od);
    });
  });

  unittest.group('obj-schema-Sheet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSheet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Sheet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSheet(od);
    });
  });

  unittest.group('obj-schema-SheetProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSheetProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SheetProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSheetProperties(od);
    });
  });

  unittest.group('obj-schema-Slicer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlicer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Slicer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSlicer(od);
    });
  });

  unittest.group('obj-schema-SlicerSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlicerSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SlicerSpec.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSlicerSpec(od);
    });
  });

  unittest.group('obj-schema-SortRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSortRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SortRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSortRangeRequest(od);
    });
  });

  unittest.group('obj-schema-SortSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSortSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SortSpec.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSortSpec(od);
    });
  });

  unittest.group('obj-schema-SourceAndDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceAndDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceAndDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceAndDestination(od);
    });
  });

  unittest.group('obj-schema-Spreadsheet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpreadsheet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Spreadsheet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpreadsheet(od);
    });
  });

  unittest.group('obj-schema-SpreadsheetProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpreadsheetProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpreadsheetProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpreadsheetProperties(od);
    });
  });

  unittest.group('obj-schema-SpreadsheetTheme', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpreadsheetTheme();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpreadsheetTheme.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpreadsheetTheme(od);
    });
  });

  unittest.group('obj-schema-TextFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TextFormat.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextFormat(od);
    });
  });

  unittest.group('obj-schema-TextFormatRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextFormatRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextFormatRun.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextFormatRun(od);
    });
  });

  unittest.group('obj-schema-TextPosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextPosition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextPosition(od);
    });
  });

  unittest.group('obj-schema-TextRotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextRotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextRotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextRotation(od);
    });
  });

  unittest.group('obj-schema-TextToColumnsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextToColumnsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextToColumnsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextToColumnsRequest(od);
    });
  });

  unittest.group('obj-schema-ThemeColorPair', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThemeColorPair();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThemeColorPair.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThemeColorPair(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeOfDay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-TreemapChartColorScale', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTreemapChartColorScale();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TreemapChartColorScale.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTreemapChartColorScale(od);
    });
  });

  unittest.group('obj-schema-TreemapChartSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTreemapChartSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TreemapChartSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTreemapChartSpec(od);
    });
  });

  unittest.group('obj-schema-TrimWhitespaceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrimWhitespaceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrimWhitespaceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTrimWhitespaceRequest(od);
    });
  });

  unittest.group('obj-schema-TrimWhitespaceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrimWhitespaceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrimWhitespaceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTrimWhitespaceResponse(od);
    });
  });

  unittest.group('obj-schema-UnmergeCellsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnmergeCellsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnmergeCellsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnmergeCellsRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateBandingRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateBandingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateBandingRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateBandingRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateBordersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateBordersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateBordersRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateBordersRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateCellsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateCellsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateCellsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateCellsRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateChartSpecRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateChartSpecRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateChartSpecRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateChartSpecRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateConditionalFormatRuleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateConditionalFormatRuleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateConditionalFormatRuleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateConditionalFormatRuleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateConditionalFormatRuleResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateConditionalFormatRuleResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateConditionalFormatRuleResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateConditionalFormatRuleResponse(od);
    });
  });

  unittest.group('obj-schema-UpdateDataSourceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDataSourceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDataSourceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDataSourceRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateDataSourceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDataSourceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDataSourceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDataSourceResponse(od);
    });
  });

  unittest.group('obj-schema-UpdateDeveloperMetadataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDeveloperMetadataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDeveloperMetadataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDeveloperMetadataRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateDeveloperMetadataResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDeveloperMetadataResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDeveloperMetadataResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDeveloperMetadataResponse(od);
    });
  });

  unittest.group('obj-schema-UpdateDimensionGroupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDimensionGroupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDimensionGroupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDimensionGroupRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateDimensionPropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDimensionPropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDimensionPropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDimensionPropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateEmbeddedObjectBorderRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateEmbeddedObjectBorderRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateEmbeddedObjectBorderRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateEmbeddedObjectBorderRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateEmbeddedObjectPositionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateEmbeddedObjectPositionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateEmbeddedObjectPositionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateEmbeddedObjectPositionRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateEmbeddedObjectPositionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateEmbeddedObjectPositionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateEmbeddedObjectPositionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateEmbeddedObjectPositionResponse(od);
    });
  });

  unittest.group('obj-schema-UpdateFilterViewRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateFilterViewRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateFilterViewRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateFilterViewRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateNamedRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateNamedRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateNamedRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateNamedRangeRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateProtectedRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateProtectedRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateProtectedRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateProtectedRangeRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateSheetPropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSheetPropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSheetPropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateSheetPropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateSlicerSpecRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSlicerSpecRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSlicerSpecRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateSlicerSpecRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateSpreadsheetPropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSpreadsheetPropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSpreadsheetPropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateSpreadsheetPropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateValuesByDataFilterResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateValuesByDataFilterResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateValuesByDataFilterResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateValuesByDataFilterResponse(od);
    });
  });

  unittest.group('obj-schema-UpdateValuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateValuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateValuesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateValuesResponse(od);
    });
  });

  unittest.group('obj-schema-ValueRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValueRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ValueRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkValueRange(od);
    });
  });

  unittest.group('obj-schema-WaterfallChartColumnStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWaterfallChartColumnStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WaterfallChartColumnStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWaterfallChartColumnStyle(od);
    });
  });

  unittest.group('obj-schema-WaterfallChartCustomSubtotal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWaterfallChartCustomSubtotal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WaterfallChartCustomSubtotal.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWaterfallChartCustomSubtotal(od);
    });
  });

  unittest.group('obj-schema-WaterfallChartDomain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWaterfallChartDomain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WaterfallChartDomain.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWaterfallChartDomain(od);
    });
  });

  unittest.group('obj-schema-WaterfallChartSeries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWaterfallChartSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WaterfallChartSeries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWaterfallChartSeries(od);
    });
  });

  unittest.group('obj-schema-WaterfallChartSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWaterfallChartSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WaterfallChartSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWaterfallChartSpec(od);
    });
  });

  unittest.group('resource-SpreadsheetsResource', () {
    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets;
      final arg_request = buildBatchUpdateSpreadsheetRequest();
      final arg_spreadsheetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdateSpreadsheetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateSpreadsheetRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        index = path.indexOf(':batchUpdate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals(':batchUpdate'),
        );
        pathOffset += 12;

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
        final resp = convert.json.encode(buildBatchUpdateSpreadsheetResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchUpdate(arg_request, arg_spreadsheetId,
          $fields: arg_$fields);
      checkBatchUpdateSpreadsheetResponse(
          response as api.BatchUpdateSpreadsheetResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets;
      final arg_request = buildSpreadsheet();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Spreadsheet.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSpreadsheet(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v4/spreadsheets'),
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
        final resp = convert.json.encode(buildSpreadsheet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkSpreadsheet(response as api.Spreadsheet);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets;
      final arg_spreadsheetId = 'foo';
      final arg_includeGridData = true;
      final arg_ranges = buildUnnamed746();
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
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
          queryMap['includeGridData']!.first,
          unittest.equals('$arg_includeGridData'),
        );
        unittest.expect(
          queryMap['ranges']!,
          unittest.equals(arg_ranges),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSpreadsheet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_spreadsheetId,
          includeGridData: arg_includeGridData,
          ranges: arg_ranges,
          $fields: arg_$fields);
      checkSpreadsheet(response as api.Spreadsheet);
    });

    unittest.test('method--getByDataFilter', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets;
      final arg_request = buildGetSpreadsheetByDataFilterRequest();
      final arg_spreadsheetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetSpreadsheetByDataFilterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetSpreadsheetByDataFilterRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        index = path.indexOf(':getByDataFilter', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals(':getByDataFilter'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildSpreadsheet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getByDataFilter(arg_request, arg_spreadsheetId,
          $fields: arg_$fields);
      checkSpreadsheet(response as api.Spreadsheet);
    });
  });

  unittest.group('resource-SpreadsheetsDeveloperMetadataResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets.developerMetadata;
      final arg_spreadsheetId = 'foo';
      final arg_metadataId = 42;
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        index = path.indexOf('/developerMetadata/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/developerMetadata/'),
        );
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_metadataId'),
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
        final resp = convert.json.encode(buildDeveloperMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_spreadsheetId, arg_metadataId,
          $fields: arg_$fields);
      checkDeveloperMetadata(response as api.DeveloperMetadata);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets.developerMetadata;
      final arg_request = buildSearchDeveloperMetadataRequest();
      final arg_spreadsheetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchDeveloperMetadataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchDeveloperMetadataRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        index = path.indexOf('/developerMetadata:search', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/developerMetadata:search'),
        );
        pathOffset += 25;

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
        final resp =
            convert.json.encode(buildSearchDeveloperMetadataResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_request, arg_spreadsheetId,
          $fields: arg_$fields);
      checkSearchDeveloperMetadataResponse(
          response as api.SearchDeveloperMetadataResponse);
    });
  });

  unittest.group('resource-SpreadsheetsSheetsResource', () {
    unittest.test('method--copyTo', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets.sheets;
      final arg_request = buildCopySheetToAnotherSpreadsheetRequest();
      final arg_spreadsheetId = 'foo';
      final arg_sheetId = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CopySheetToAnotherSpreadsheetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCopySheetToAnotherSpreadsheetRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        index = path.indexOf('/sheets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/sheets/'),
        );
        pathOffset += 8;
        index = path.indexOf(':copyTo', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':copyTo'),
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
        final resp = convert.json.encode(buildSheetProperties());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.copyTo(
          arg_request, arg_spreadsheetId, arg_sheetId,
          $fields: arg_$fields);
      checkSheetProperties(response as api.SheetProperties);
    });
  });

  unittest.group('resource-SpreadsheetsValuesResource', () {
    unittest.test('method--append', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets.values;
      final arg_request = buildValueRange();
      final arg_spreadsheetId = 'foo';
      final arg_range = 'foo';
      final arg_includeValuesInResponse = true;
      final arg_insertDataOption = 'foo';
      final arg_responseDateTimeRenderOption = 'foo';
      final arg_responseValueRenderOption = 'foo';
      final arg_valueInputOption = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ValueRange.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkValueRange(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        index = path.indexOf('/values/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/values/'),
        );
        pathOffset += 8;
        index = path.indexOf(':append', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_range'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':append'),
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
          queryMap['includeValuesInResponse']!.first,
          unittest.equals('$arg_includeValuesInResponse'),
        );
        unittest.expect(
          queryMap['insertDataOption']!.first,
          unittest.equals(arg_insertDataOption),
        );
        unittest.expect(
          queryMap['responseDateTimeRenderOption']!.first,
          unittest.equals(arg_responseDateTimeRenderOption),
        );
        unittest.expect(
          queryMap['responseValueRenderOption']!.first,
          unittest.equals(arg_responseValueRenderOption),
        );
        unittest.expect(
          queryMap['valueInputOption']!.first,
          unittest.equals(arg_valueInputOption),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAppendValuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.append(
          arg_request, arg_spreadsheetId, arg_range,
          includeValuesInResponse: arg_includeValuesInResponse,
          insertDataOption: arg_insertDataOption,
          responseDateTimeRenderOption: arg_responseDateTimeRenderOption,
          responseValueRenderOption: arg_responseValueRenderOption,
          valueInputOption: arg_valueInputOption,
          $fields: arg_$fields);
      checkAppendValuesResponse(response as api.AppendValuesResponse);
    });

    unittest.test('method--batchClear', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets.values;
      final arg_request = buildBatchClearValuesRequest();
      final arg_spreadsheetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchClearValuesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchClearValuesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        index = path.indexOf('/values:batchClear', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/values:batchClear'),
        );
        pathOffset += 18;

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
        final resp = convert.json.encode(buildBatchClearValuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchClear(arg_request, arg_spreadsheetId,
          $fields: arg_$fields);
      checkBatchClearValuesResponse(response as api.BatchClearValuesResponse);
    });

    unittest.test('method--batchClearByDataFilter', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets.values;
      final arg_request = buildBatchClearValuesByDataFilterRequest();
      final arg_spreadsheetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchClearValuesByDataFilterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchClearValuesByDataFilterRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        index = path.indexOf('/values:batchClearByDataFilter', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('/values:batchClearByDataFilter'),
        );
        pathOffset += 30;

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
        final resp =
            convert.json.encode(buildBatchClearValuesByDataFilterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchClearByDataFilter(
          arg_request, arg_spreadsheetId,
          $fields: arg_$fields);
      checkBatchClearValuesByDataFilterResponse(
          response as api.BatchClearValuesByDataFilterResponse);
    });

    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets.values;
      final arg_spreadsheetId = 'foo';
      final arg_dateTimeRenderOption = 'foo';
      final arg_majorDimension = 'foo';
      final arg_ranges = buildUnnamed747();
      final arg_valueRenderOption = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        index = path.indexOf('/values:batchGet', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/values:batchGet'),
        );
        pathOffset += 16;

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
          queryMap['dateTimeRenderOption']!.first,
          unittest.equals(arg_dateTimeRenderOption),
        );
        unittest.expect(
          queryMap['majorDimension']!.first,
          unittest.equals(arg_majorDimension),
        );
        unittest.expect(
          queryMap['ranges']!,
          unittest.equals(arg_ranges),
        );
        unittest.expect(
          queryMap['valueRenderOption']!.first,
          unittest.equals(arg_valueRenderOption),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBatchGetValuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_spreadsheetId,
          dateTimeRenderOption: arg_dateTimeRenderOption,
          majorDimension: arg_majorDimension,
          ranges: arg_ranges,
          valueRenderOption: arg_valueRenderOption,
          $fields: arg_$fields);
      checkBatchGetValuesResponse(response as api.BatchGetValuesResponse);
    });

    unittest.test('method--batchGetByDataFilter', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets.values;
      final arg_request = buildBatchGetValuesByDataFilterRequest();
      final arg_spreadsheetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchGetValuesByDataFilterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchGetValuesByDataFilterRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        index = path.indexOf('/values:batchGetByDataFilter', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('/values:batchGetByDataFilter'),
        );
        pathOffset += 28;

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
        final resp =
            convert.json.encode(buildBatchGetValuesByDataFilterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGetByDataFilter(
          arg_request, arg_spreadsheetId,
          $fields: arg_$fields);
      checkBatchGetValuesByDataFilterResponse(
          response as api.BatchGetValuesByDataFilterResponse);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets.values;
      final arg_request = buildBatchUpdateValuesRequest();
      final arg_spreadsheetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdateValuesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateValuesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        index = path.indexOf('/values:batchUpdate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/values:batchUpdate'),
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
        final resp = convert.json.encode(buildBatchUpdateValuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchUpdate(arg_request, arg_spreadsheetId,
          $fields: arg_$fields);
      checkBatchUpdateValuesResponse(response as api.BatchUpdateValuesResponse);
    });

    unittest.test('method--batchUpdateByDataFilter', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets.values;
      final arg_request = buildBatchUpdateValuesByDataFilterRequest();
      final arg_spreadsheetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdateValuesByDataFilterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateValuesByDataFilterRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        index = path.indexOf('/values:batchUpdateByDataFilter', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('/values:batchUpdateByDataFilter'),
        );
        pathOffset += 31;

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
        final resp =
            convert.json.encode(buildBatchUpdateValuesByDataFilterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchUpdateByDataFilter(
          arg_request, arg_spreadsheetId,
          $fields: arg_$fields);
      checkBatchUpdateValuesByDataFilterResponse(
          response as api.BatchUpdateValuesByDataFilterResponse);
    });

    unittest.test('method--clear', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets.values;
      final arg_request = buildClearValuesRequest();
      final arg_spreadsheetId = 'foo';
      final arg_range = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ClearValuesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkClearValuesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        index = path.indexOf('/values/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/values/'),
        );
        pathOffset += 8;
        index = path.indexOf(':clear', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_range'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals(':clear'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildClearValuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.clear(
          arg_request, arg_spreadsheetId, arg_range,
          $fields: arg_$fields);
      checkClearValuesResponse(response as api.ClearValuesResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets.values;
      final arg_spreadsheetId = 'foo';
      final arg_range = 'foo';
      final arg_dateTimeRenderOption = 'foo';
      final arg_majorDimension = 'foo';
      final arg_valueRenderOption = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        index = path.indexOf('/values/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/values/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_range'),
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
          queryMap['dateTimeRenderOption']!.first,
          unittest.equals(arg_dateTimeRenderOption),
        );
        unittest.expect(
          queryMap['majorDimension']!.first,
          unittest.equals(arg_majorDimension),
        );
        unittest.expect(
          queryMap['valueRenderOption']!.first,
          unittest.equals(arg_valueRenderOption),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildValueRange());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_spreadsheetId, arg_range,
          dateTimeRenderOption: arg_dateTimeRenderOption,
          majorDimension: arg_majorDimension,
          valueRenderOption: arg_valueRenderOption,
          $fields: arg_$fields);
      checkValueRange(response as api.ValueRange);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.SheetsApi(mock).spreadsheets.values;
      final arg_request = buildValueRange();
      final arg_spreadsheetId = 'foo';
      final arg_range = 'foo';
      final arg_includeValuesInResponse = true;
      final arg_responseDateTimeRenderOption = 'foo';
      final arg_responseValueRenderOption = 'foo';
      final arg_valueInputOption = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ValueRange.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkValueRange(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v4/spreadsheets/'),
        );
        pathOffset += 16;
        index = path.indexOf('/values/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_spreadsheetId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/values/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_range'),
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
          queryMap['includeValuesInResponse']!.first,
          unittest.equals('$arg_includeValuesInResponse'),
        );
        unittest.expect(
          queryMap['responseDateTimeRenderOption']!.first,
          unittest.equals(arg_responseDateTimeRenderOption),
        );
        unittest.expect(
          queryMap['responseValueRenderOption']!.first,
          unittest.equals(arg_responseValueRenderOption),
        );
        unittest.expect(
          queryMap['valueInputOption']!.first,
          unittest.equals(arg_valueInputOption),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUpdateValuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_spreadsheetId, arg_range,
          includeValuesInResponse: arg_includeValuesInResponse,
          responseDateTimeRenderOption: arg_responseDateTimeRenderOption,
          responseValueRenderOption: arg_responseValueRenderOption,
          valueInputOption: arg_valueInputOption,
          $fields: arg_$fields);
      checkUpdateValuesResponse(response as api.UpdateValuesResponse);
    });
  });
}
