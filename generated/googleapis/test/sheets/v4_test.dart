// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/sheets/v4.dart' as api;

import '../test_shared.dart';

core.int buildCounterAddBandingRequest = 0;
api.AddBandingRequest buildAddBandingRequest() {
  var o = api.AddBandingRequest();
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
    checkBandedRange(o.bandedRange as api.BandedRange);
  }
  buildCounterAddBandingRequest--;
}

core.int buildCounterAddBandingResponse = 0;
api.AddBandingResponse buildAddBandingResponse() {
  var o = api.AddBandingResponse();
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
    checkBandedRange(o.bandedRange as api.BandedRange);
  }
  buildCounterAddBandingResponse--;
}

core.int buildCounterAddChartRequest = 0;
api.AddChartRequest buildAddChartRequest() {
  var o = api.AddChartRequest();
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
    checkEmbeddedChart(o.chart as api.EmbeddedChart);
  }
  buildCounterAddChartRequest--;
}

core.int buildCounterAddChartResponse = 0;
api.AddChartResponse buildAddChartResponse() {
  var o = api.AddChartResponse();
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
    checkEmbeddedChart(o.chart as api.EmbeddedChart);
  }
  buildCounterAddChartResponse--;
}

core.int buildCounterAddConditionalFormatRuleRequest = 0;
api.AddConditionalFormatRuleRequest buildAddConditionalFormatRuleRequest() {
  var o = api.AddConditionalFormatRuleRequest();
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
    unittest.expect(o.index, unittest.equals(42));
    checkConditionalFormatRule(o.rule as api.ConditionalFormatRule);
  }
  buildCounterAddConditionalFormatRuleRequest--;
}

core.int buildCounterAddDataSourceRequest = 0;
api.AddDataSourceRequest buildAddDataSourceRequest() {
  var o = api.AddDataSourceRequest();
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
    checkDataSource(o.dataSource as api.DataSource);
  }
  buildCounterAddDataSourceRequest--;
}

core.int buildCounterAddDataSourceResponse = 0;
api.AddDataSourceResponse buildAddDataSourceResponse() {
  var o = api.AddDataSourceResponse();
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
    checkDataExecutionStatus(o.dataExecutionStatus as api.DataExecutionStatus);
    checkDataSource(o.dataSource as api.DataSource);
  }
  buildCounterAddDataSourceResponse--;
}

core.int buildCounterAddDimensionGroupRequest = 0;
api.AddDimensionGroupRequest buildAddDimensionGroupRequest() {
  var o = api.AddDimensionGroupRequest();
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
    checkDimensionRange(o.range as api.DimensionRange);
  }
  buildCounterAddDimensionGroupRequest--;
}

core.List<api.DimensionGroup> buildUnnamed451() {
  var o = <api.DimensionGroup>[];
  o.add(buildDimensionGroup());
  o.add(buildDimensionGroup());
  return o;
}

void checkUnnamed451(core.List<api.DimensionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionGroup(o[0] as api.DimensionGroup);
  checkDimensionGroup(o[1] as api.DimensionGroup);
}

core.int buildCounterAddDimensionGroupResponse = 0;
api.AddDimensionGroupResponse buildAddDimensionGroupResponse() {
  var o = api.AddDimensionGroupResponse();
  buildCounterAddDimensionGroupResponse++;
  if (buildCounterAddDimensionGroupResponse < 3) {
    o.dimensionGroups = buildUnnamed451();
  }
  buildCounterAddDimensionGroupResponse--;
  return o;
}

void checkAddDimensionGroupResponse(api.AddDimensionGroupResponse o) {
  buildCounterAddDimensionGroupResponse++;
  if (buildCounterAddDimensionGroupResponse < 3) {
    checkUnnamed451(o.dimensionGroups);
  }
  buildCounterAddDimensionGroupResponse--;
}

core.int buildCounterAddFilterViewRequest = 0;
api.AddFilterViewRequest buildAddFilterViewRequest() {
  var o = api.AddFilterViewRequest();
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
    checkFilterView(o.filter as api.FilterView);
  }
  buildCounterAddFilterViewRequest--;
}

core.int buildCounterAddFilterViewResponse = 0;
api.AddFilterViewResponse buildAddFilterViewResponse() {
  var o = api.AddFilterViewResponse();
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
    checkFilterView(o.filter as api.FilterView);
  }
  buildCounterAddFilterViewResponse--;
}

core.int buildCounterAddNamedRangeRequest = 0;
api.AddNamedRangeRequest buildAddNamedRangeRequest() {
  var o = api.AddNamedRangeRequest();
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
    checkNamedRange(o.namedRange as api.NamedRange);
  }
  buildCounterAddNamedRangeRequest--;
}

core.int buildCounterAddNamedRangeResponse = 0;
api.AddNamedRangeResponse buildAddNamedRangeResponse() {
  var o = api.AddNamedRangeResponse();
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
    checkNamedRange(o.namedRange as api.NamedRange);
  }
  buildCounterAddNamedRangeResponse--;
}

core.int buildCounterAddProtectedRangeRequest = 0;
api.AddProtectedRangeRequest buildAddProtectedRangeRequest() {
  var o = api.AddProtectedRangeRequest();
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
    checkProtectedRange(o.protectedRange as api.ProtectedRange);
  }
  buildCounterAddProtectedRangeRequest--;
}

core.int buildCounterAddProtectedRangeResponse = 0;
api.AddProtectedRangeResponse buildAddProtectedRangeResponse() {
  var o = api.AddProtectedRangeResponse();
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
    checkProtectedRange(o.protectedRange as api.ProtectedRange);
  }
  buildCounterAddProtectedRangeResponse--;
}

core.int buildCounterAddSheetRequest = 0;
api.AddSheetRequest buildAddSheetRequest() {
  var o = api.AddSheetRequest();
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
    checkSheetProperties(o.properties as api.SheetProperties);
  }
  buildCounterAddSheetRequest--;
}

core.int buildCounterAddSheetResponse = 0;
api.AddSheetResponse buildAddSheetResponse() {
  var o = api.AddSheetResponse();
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
    checkSheetProperties(o.properties as api.SheetProperties);
  }
  buildCounterAddSheetResponse--;
}

core.int buildCounterAddSlicerRequest = 0;
api.AddSlicerRequest buildAddSlicerRequest() {
  var o = api.AddSlicerRequest();
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
    checkSlicer(o.slicer as api.Slicer);
  }
  buildCounterAddSlicerRequest--;
}

core.int buildCounterAddSlicerResponse = 0;
api.AddSlicerResponse buildAddSlicerResponse() {
  var o = api.AddSlicerResponse();
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
    checkSlicer(o.slicer as api.Slicer);
  }
  buildCounterAddSlicerResponse--;
}

core.List<api.RowData> buildUnnamed452() {
  var o = <api.RowData>[];
  o.add(buildRowData());
  o.add(buildRowData());
  return o;
}

void checkUnnamed452(core.List<api.RowData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRowData(o[0] as api.RowData);
  checkRowData(o[1] as api.RowData);
}

core.int buildCounterAppendCellsRequest = 0;
api.AppendCellsRequest buildAppendCellsRequest() {
  var o = api.AppendCellsRequest();
  buildCounterAppendCellsRequest++;
  if (buildCounterAppendCellsRequest < 3) {
    o.fields = 'foo';
    o.rows = buildUnnamed452();
    o.sheetId = 42;
  }
  buildCounterAppendCellsRequest--;
  return o;
}

void checkAppendCellsRequest(api.AppendCellsRequest o) {
  buildCounterAppendCellsRequest++;
  if (buildCounterAppendCellsRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkUnnamed452(o.rows);
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterAppendCellsRequest--;
}

core.int buildCounterAppendDimensionRequest = 0;
api.AppendDimensionRequest buildAppendDimensionRequest() {
  var o = api.AppendDimensionRequest();
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
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.length, unittest.equals(42));
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterAppendDimensionRequest--;
}

core.int buildCounterAppendValuesResponse = 0;
api.AppendValuesResponse buildAppendValuesResponse() {
  var o = api.AppendValuesResponse();
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
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    unittest.expect(o.tableRange, unittest.equals('foo'));
    checkUpdateValuesResponse(o.updates as api.UpdateValuesResponse);
  }
  buildCounterAppendValuesResponse--;
}

core.int buildCounterAutoFillRequest = 0;
api.AutoFillRequest buildAutoFillRequest() {
  var o = api.AutoFillRequest();
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
    checkGridRange(o.range as api.GridRange);
    checkSourceAndDestination(
        o.sourceAndDestination as api.SourceAndDestination);
    unittest.expect(o.useAlternateSeries, unittest.isTrue);
  }
  buildCounterAutoFillRequest--;
}

core.int buildCounterAutoResizeDimensionsRequest = 0;
api.AutoResizeDimensionsRequest buildAutoResizeDimensionsRequest() {
  var o = api.AutoResizeDimensionsRequest();
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
    checkDataSourceSheetDimensionRange(
        o.dataSourceSheetDimensions as api.DataSourceSheetDimensionRange);
    checkDimensionRange(o.dimensions as api.DimensionRange);
  }
  buildCounterAutoResizeDimensionsRequest--;
}

core.int buildCounterBandedRange = 0;
api.BandedRange buildBandedRange() {
  var o = api.BandedRange();
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
    unittest.expect(o.bandedRangeId, unittest.equals(42));
    checkBandingProperties(o.columnProperties as api.BandingProperties);
    checkGridRange(o.range as api.GridRange);
    checkBandingProperties(o.rowProperties as api.BandingProperties);
  }
  buildCounterBandedRange--;
}

core.int buildCounterBandingProperties = 0;
api.BandingProperties buildBandingProperties() {
  var o = api.BandingProperties();
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
    checkColor(o.firstBandColor as api.Color);
    checkColorStyle(o.firstBandColorStyle as api.ColorStyle);
    checkColor(o.footerColor as api.Color);
    checkColorStyle(o.footerColorStyle as api.ColorStyle);
    checkColor(o.headerColor as api.Color);
    checkColorStyle(o.headerColorStyle as api.ColorStyle);
    checkColor(o.secondBandColor as api.Color);
    checkColorStyle(o.secondBandColorStyle as api.ColorStyle);
  }
  buildCounterBandingProperties--;
}

core.int buildCounterBaselineValueFormat = 0;
api.BaselineValueFormat buildBaselineValueFormat() {
  var o = api.BaselineValueFormat();
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
    unittest.expect(o.comparisonType, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkColor(o.negativeColor as api.Color);
    checkColorStyle(o.negativeColorStyle as api.ColorStyle);
    checkTextPosition(o.position as api.TextPosition);
    checkColor(o.positiveColor as api.Color);
    checkColorStyle(o.positiveColorStyle as api.ColorStyle);
    checkTextFormat(o.textFormat as api.TextFormat);
  }
  buildCounterBaselineValueFormat--;
}

core.int buildCounterBasicChartAxis = 0;
api.BasicChartAxis buildBasicChartAxis() {
  var o = api.BasicChartAxis();
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
    checkTextFormat(o.format as api.TextFormat);
    unittest.expect(o.position, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    checkTextPosition(o.titleTextPosition as api.TextPosition);
    checkChartAxisViewWindowOptions(
        o.viewWindowOptions as api.ChartAxisViewWindowOptions);
  }
  buildCounterBasicChartAxis--;
}

core.int buildCounterBasicChartDomain = 0;
api.BasicChartDomain buildBasicChartDomain() {
  var o = api.BasicChartDomain();
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
    checkChartData(o.domain as api.ChartData);
    unittest.expect(o.reversed, unittest.isTrue);
  }
  buildCounterBasicChartDomain--;
}

core.int buildCounterBasicChartSeries = 0;
api.BasicChartSeries buildBasicChartSeries() {
  var o = api.BasicChartSeries();
  buildCounterBasicChartSeries++;
  if (buildCounterBasicChartSeries < 3) {
    o.color = buildColor();
    o.colorStyle = buildColorStyle();
    o.lineStyle = buildLineStyle();
    o.series = buildChartData();
    o.targetAxis = 'foo';
    o.type = 'foo';
  }
  buildCounterBasicChartSeries--;
  return o;
}

void checkBasicChartSeries(api.BasicChartSeries o) {
  buildCounterBasicChartSeries++;
  if (buildCounterBasicChartSeries < 3) {
    checkColor(o.color as api.Color);
    checkColorStyle(o.colorStyle as api.ColorStyle);
    checkLineStyle(o.lineStyle as api.LineStyle);
    checkChartData(o.series as api.ChartData);
    unittest.expect(o.targetAxis, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBasicChartSeries--;
}

core.List<api.BasicChartAxis> buildUnnamed453() {
  var o = <api.BasicChartAxis>[];
  o.add(buildBasicChartAxis());
  o.add(buildBasicChartAxis());
  return o;
}

void checkUnnamed453(core.List<api.BasicChartAxis> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBasicChartAxis(o[0] as api.BasicChartAxis);
  checkBasicChartAxis(o[1] as api.BasicChartAxis);
}

core.List<api.BasicChartDomain> buildUnnamed454() {
  var o = <api.BasicChartDomain>[];
  o.add(buildBasicChartDomain());
  o.add(buildBasicChartDomain());
  return o;
}

void checkUnnamed454(core.List<api.BasicChartDomain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBasicChartDomain(o[0] as api.BasicChartDomain);
  checkBasicChartDomain(o[1] as api.BasicChartDomain);
}

core.List<api.BasicChartSeries> buildUnnamed455() {
  var o = <api.BasicChartSeries>[];
  o.add(buildBasicChartSeries());
  o.add(buildBasicChartSeries());
  return o;
}

void checkUnnamed455(core.List<api.BasicChartSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBasicChartSeries(o[0] as api.BasicChartSeries);
  checkBasicChartSeries(o[1] as api.BasicChartSeries);
}

core.int buildCounterBasicChartSpec = 0;
api.BasicChartSpec buildBasicChartSpec() {
  var o = api.BasicChartSpec();
  buildCounterBasicChartSpec++;
  if (buildCounterBasicChartSpec < 3) {
    o.axis = buildUnnamed453();
    o.chartType = 'foo';
    o.compareMode = 'foo';
    o.domains = buildUnnamed454();
    o.headerCount = 42;
    o.interpolateNulls = true;
    o.legendPosition = 'foo';
    o.lineSmoothing = true;
    o.series = buildUnnamed455();
    o.stackedType = 'foo';
    o.threeDimensional = true;
  }
  buildCounterBasicChartSpec--;
  return o;
}

void checkBasicChartSpec(api.BasicChartSpec o) {
  buildCounterBasicChartSpec++;
  if (buildCounterBasicChartSpec < 3) {
    checkUnnamed453(o.axis);
    unittest.expect(o.chartType, unittest.equals('foo'));
    unittest.expect(o.compareMode, unittest.equals('foo'));
    checkUnnamed454(o.domains);
    unittest.expect(o.headerCount, unittest.equals(42));
    unittest.expect(o.interpolateNulls, unittest.isTrue);
    unittest.expect(o.legendPosition, unittest.equals('foo'));
    unittest.expect(o.lineSmoothing, unittest.isTrue);
    checkUnnamed455(o.series);
    unittest.expect(o.stackedType, unittest.equals('foo'));
    unittest.expect(o.threeDimensional, unittest.isTrue);
  }
  buildCounterBasicChartSpec--;
}

core.Map<core.String, api.FilterCriteria> buildUnnamed456() {
  var o = <core.String, api.FilterCriteria>{};
  o['x'] = buildFilterCriteria();
  o['y'] = buildFilterCriteria();
  return o;
}

void checkUnnamed456(core.Map<core.String, api.FilterCriteria> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterCriteria(o['x'] as api.FilterCriteria);
  checkFilterCriteria(o['y'] as api.FilterCriteria);
}

core.List<api.FilterSpec> buildUnnamed457() {
  var o = <api.FilterSpec>[];
  o.add(buildFilterSpec());
  o.add(buildFilterSpec());
  return o;
}

void checkUnnamed457(core.List<api.FilterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterSpec(o[0] as api.FilterSpec);
  checkFilterSpec(o[1] as api.FilterSpec);
}

core.List<api.SortSpec> buildUnnamed458() {
  var o = <api.SortSpec>[];
  o.add(buildSortSpec());
  o.add(buildSortSpec());
  return o;
}

void checkUnnamed458(core.List<api.SortSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortSpec(o[0] as api.SortSpec);
  checkSortSpec(o[1] as api.SortSpec);
}

core.int buildCounterBasicFilter = 0;
api.BasicFilter buildBasicFilter() {
  var o = api.BasicFilter();
  buildCounterBasicFilter++;
  if (buildCounterBasicFilter < 3) {
    o.criteria = buildUnnamed456();
    o.filterSpecs = buildUnnamed457();
    o.range = buildGridRange();
    o.sortSpecs = buildUnnamed458();
  }
  buildCounterBasicFilter--;
  return o;
}

void checkBasicFilter(api.BasicFilter o) {
  buildCounterBasicFilter++;
  if (buildCounterBasicFilter < 3) {
    checkUnnamed456(o.criteria);
    checkUnnamed457(o.filterSpecs);
    checkGridRange(o.range as api.GridRange);
    checkUnnamed458(o.sortSpecs);
  }
  buildCounterBasicFilter--;
}

core.List<api.DataFilter> buildUnnamed459() {
  var o = <api.DataFilter>[];
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

void checkUnnamed459(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0] as api.DataFilter);
  checkDataFilter(o[1] as api.DataFilter);
}

core.int buildCounterBatchClearValuesByDataFilterRequest = 0;
api.BatchClearValuesByDataFilterRequest
    buildBatchClearValuesByDataFilterRequest() {
  var o = api.BatchClearValuesByDataFilterRequest();
  buildCounterBatchClearValuesByDataFilterRequest++;
  if (buildCounterBatchClearValuesByDataFilterRequest < 3) {
    o.dataFilters = buildUnnamed459();
  }
  buildCounterBatchClearValuesByDataFilterRequest--;
  return o;
}

void checkBatchClearValuesByDataFilterRequest(
    api.BatchClearValuesByDataFilterRequest o) {
  buildCounterBatchClearValuesByDataFilterRequest++;
  if (buildCounterBatchClearValuesByDataFilterRequest < 3) {
    checkUnnamed459(o.dataFilters);
  }
  buildCounterBatchClearValuesByDataFilterRequest--;
}

core.List<core.String> buildUnnamed460() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed460(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchClearValuesByDataFilterResponse = 0;
api.BatchClearValuesByDataFilterResponse
    buildBatchClearValuesByDataFilterResponse() {
  var o = api.BatchClearValuesByDataFilterResponse();
  buildCounterBatchClearValuesByDataFilterResponse++;
  if (buildCounterBatchClearValuesByDataFilterResponse < 3) {
    o.clearedRanges = buildUnnamed460();
    o.spreadsheetId = 'foo';
  }
  buildCounterBatchClearValuesByDataFilterResponse--;
  return o;
}

void checkBatchClearValuesByDataFilterResponse(
    api.BatchClearValuesByDataFilterResponse o) {
  buildCounterBatchClearValuesByDataFilterResponse++;
  if (buildCounterBatchClearValuesByDataFilterResponse < 3) {
    checkUnnamed460(o.clearedRanges);
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
  }
  buildCounterBatchClearValuesByDataFilterResponse--;
}

core.List<core.String> buildUnnamed461() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed461(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchClearValuesRequest = 0;
api.BatchClearValuesRequest buildBatchClearValuesRequest() {
  var o = api.BatchClearValuesRequest();
  buildCounterBatchClearValuesRequest++;
  if (buildCounterBatchClearValuesRequest < 3) {
    o.ranges = buildUnnamed461();
  }
  buildCounterBatchClearValuesRequest--;
  return o;
}

void checkBatchClearValuesRequest(api.BatchClearValuesRequest o) {
  buildCounterBatchClearValuesRequest++;
  if (buildCounterBatchClearValuesRequest < 3) {
    checkUnnamed461(o.ranges);
  }
  buildCounterBatchClearValuesRequest--;
}

core.List<core.String> buildUnnamed462() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed462(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchClearValuesResponse = 0;
api.BatchClearValuesResponse buildBatchClearValuesResponse() {
  var o = api.BatchClearValuesResponse();
  buildCounterBatchClearValuesResponse++;
  if (buildCounterBatchClearValuesResponse < 3) {
    o.clearedRanges = buildUnnamed462();
    o.spreadsheetId = 'foo';
  }
  buildCounterBatchClearValuesResponse--;
  return o;
}

void checkBatchClearValuesResponse(api.BatchClearValuesResponse o) {
  buildCounterBatchClearValuesResponse++;
  if (buildCounterBatchClearValuesResponse < 3) {
    checkUnnamed462(o.clearedRanges);
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
  }
  buildCounterBatchClearValuesResponse--;
}

core.List<api.DataFilter> buildUnnamed463() {
  var o = <api.DataFilter>[];
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

void checkUnnamed463(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0] as api.DataFilter);
  checkDataFilter(o[1] as api.DataFilter);
}

core.int buildCounterBatchGetValuesByDataFilterRequest = 0;
api.BatchGetValuesByDataFilterRequest buildBatchGetValuesByDataFilterRequest() {
  var o = api.BatchGetValuesByDataFilterRequest();
  buildCounterBatchGetValuesByDataFilterRequest++;
  if (buildCounterBatchGetValuesByDataFilterRequest < 3) {
    o.dataFilters = buildUnnamed463();
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
    checkUnnamed463(o.dataFilters);
    unittest.expect(o.dateTimeRenderOption, unittest.equals('foo'));
    unittest.expect(o.majorDimension, unittest.equals('foo'));
    unittest.expect(o.valueRenderOption, unittest.equals('foo'));
  }
  buildCounterBatchGetValuesByDataFilterRequest--;
}

core.List<api.MatchedValueRange> buildUnnamed464() {
  var o = <api.MatchedValueRange>[];
  o.add(buildMatchedValueRange());
  o.add(buildMatchedValueRange());
  return o;
}

void checkUnnamed464(core.List<api.MatchedValueRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchedValueRange(o[0] as api.MatchedValueRange);
  checkMatchedValueRange(o[1] as api.MatchedValueRange);
}

core.int buildCounterBatchGetValuesByDataFilterResponse = 0;
api.BatchGetValuesByDataFilterResponse
    buildBatchGetValuesByDataFilterResponse() {
  var o = api.BatchGetValuesByDataFilterResponse();
  buildCounterBatchGetValuesByDataFilterResponse++;
  if (buildCounterBatchGetValuesByDataFilterResponse < 3) {
    o.spreadsheetId = 'foo';
    o.valueRanges = buildUnnamed464();
  }
  buildCounterBatchGetValuesByDataFilterResponse--;
  return o;
}

void checkBatchGetValuesByDataFilterResponse(
    api.BatchGetValuesByDataFilterResponse o) {
  buildCounterBatchGetValuesByDataFilterResponse++;
  if (buildCounterBatchGetValuesByDataFilterResponse < 3) {
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    checkUnnamed464(o.valueRanges);
  }
  buildCounterBatchGetValuesByDataFilterResponse--;
}

core.List<api.ValueRange> buildUnnamed465() {
  var o = <api.ValueRange>[];
  o.add(buildValueRange());
  o.add(buildValueRange());
  return o;
}

void checkUnnamed465(core.List<api.ValueRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueRange(o[0] as api.ValueRange);
  checkValueRange(o[1] as api.ValueRange);
}

core.int buildCounterBatchGetValuesResponse = 0;
api.BatchGetValuesResponse buildBatchGetValuesResponse() {
  var o = api.BatchGetValuesResponse();
  buildCounterBatchGetValuesResponse++;
  if (buildCounterBatchGetValuesResponse < 3) {
    o.spreadsheetId = 'foo';
    o.valueRanges = buildUnnamed465();
  }
  buildCounterBatchGetValuesResponse--;
  return o;
}

void checkBatchGetValuesResponse(api.BatchGetValuesResponse o) {
  buildCounterBatchGetValuesResponse++;
  if (buildCounterBatchGetValuesResponse < 3) {
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    checkUnnamed465(o.valueRanges);
  }
  buildCounterBatchGetValuesResponse--;
}

core.List<api.Request> buildUnnamed466() {
  var o = <api.Request>[];
  o.add(buildRequest());
  o.add(buildRequest());
  return o;
}

void checkUnnamed466(core.List<api.Request> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRequest(o[0] as api.Request);
  checkRequest(o[1] as api.Request);
}

core.List<core.String> buildUnnamed467() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed467(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchUpdateSpreadsheetRequest = 0;
api.BatchUpdateSpreadsheetRequest buildBatchUpdateSpreadsheetRequest() {
  var o = api.BatchUpdateSpreadsheetRequest();
  buildCounterBatchUpdateSpreadsheetRequest++;
  if (buildCounterBatchUpdateSpreadsheetRequest < 3) {
    o.includeSpreadsheetInResponse = true;
    o.requests = buildUnnamed466();
    o.responseIncludeGridData = true;
    o.responseRanges = buildUnnamed467();
  }
  buildCounterBatchUpdateSpreadsheetRequest--;
  return o;
}

void checkBatchUpdateSpreadsheetRequest(api.BatchUpdateSpreadsheetRequest o) {
  buildCounterBatchUpdateSpreadsheetRequest++;
  if (buildCounterBatchUpdateSpreadsheetRequest < 3) {
    unittest.expect(o.includeSpreadsheetInResponse, unittest.isTrue);
    checkUnnamed466(o.requests);
    unittest.expect(o.responseIncludeGridData, unittest.isTrue);
    checkUnnamed467(o.responseRanges);
  }
  buildCounterBatchUpdateSpreadsheetRequest--;
}

core.List<api.Response> buildUnnamed468() {
  var o = <api.Response>[];
  o.add(buildResponse());
  o.add(buildResponse());
  return o;
}

void checkUnnamed468(core.List<api.Response> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResponse(o[0] as api.Response);
  checkResponse(o[1] as api.Response);
}

core.int buildCounterBatchUpdateSpreadsheetResponse = 0;
api.BatchUpdateSpreadsheetResponse buildBatchUpdateSpreadsheetResponse() {
  var o = api.BatchUpdateSpreadsheetResponse();
  buildCounterBatchUpdateSpreadsheetResponse++;
  if (buildCounterBatchUpdateSpreadsheetResponse < 3) {
    o.replies = buildUnnamed468();
    o.spreadsheetId = 'foo';
    o.updatedSpreadsheet = buildSpreadsheet();
  }
  buildCounterBatchUpdateSpreadsheetResponse--;
  return o;
}

void checkBatchUpdateSpreadsheetResponse(api.BatchUpdateSpreadsheetResponse o) {
  buildCounterBatchUpdateSpreadsheetResponse++;
  if (buildCounterBatchUpdateSpreadsheetResponse < 3) {
    checkUnnamed468(o.replies);
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    checkSpreadsheet(o.updatedSpreadsheet as api.Spreadsheet);
  }
  buildCounterBatchUpdateSpreadsheetResponse--;
}

core.List<api.DataFilterValueRange> buildUnnamed469() {
  var o = <api.DataFilterValueRange>[];
  o.add(buildDataFilterValueRange());
  o.add(buildDataFilterValueRange());
  return o;
}

void checkUnnamed469(core.List<api.DataFilterValueRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilterValueRange(o[0] as api.DataFilterValueRange);
  checkDataFilterValueRange(o[1] as api.DataFilterValueRange);
}

core.int buildCounterBatchUpdateValuesByDataFilterRequest = 0;
api.BatchUpdateValuesByDataFilterRequest
    buildBatchUpdateValuesByDataFilterRequest() {
  var o = api.BatchUpdateValuesByDataFilterRequest();
  buildCounterBatchUpdateValuesByDataFilterRequest++;
  if (buildCounterBatchUpdateValuesByDataFilterRequest < 3) {
    o.data = buildUnnamed469();
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
    checkUnnamed469(o.data);
    unittest.expect(o.includeValuesInResponse, unittest.isTrue);
    unittest.expect(o.responseDateTimeRenderOption, unittest.equals('foo'));
    unittest.expect(o.responseValueRenderOption, unittest.equals('foo'));
    unittest.expect(o.valueInputOption, unittest.equals('foo'));
  }
  buildCounterBatchUpdateValuesByDataFilterRequest--;
}

core.List<api.UpdateValuesByDataFilterResponse> buildUnnamed470() {
  var o = <api.UpdateValuesByDataFilterResponse>[];
  o.add(buildUpdateValuesByDataFilterResponse());
  o.add(buildUpdateValuesByDataFilterResponse());
  return o;
}

void checkUnnamed470(core.List<api.UpdateValuesByDataFilterResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateValuesByDataFilterResponse(
      o[0] as api.UpdateValuesByDataFilterResponse);
  checkUpdateValuesByDataFilterResponse(
      o[1] as api.UpdateValuesByDataFilterResponse);
}

core.int buildCounterBatchUpdateValuesByDataFilterResponse = 0;
api.BatchUpdateValuesByDataFilterResponse
    buildBatchUpdateValuesByDataFilterResponse() {
  var o = api.BatchUpdateValuesByDataFilterResponse();
  buildCounterBatchUpdateValuesByDataFilterResponse++;
  if (buildCounterBatchUpdateValuesByDataFilterResponse < 3) {
    o.responses = buildUnnamed470();
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
    checkUnnamed470(o.responses);
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    unittest.expect(o.totalUpdatedCells, unittest.equals(42));
    unittest.expect(o.totalUpdatedColumns, unittest.equals(42));
    unittest.expect(o.totalUpdatedRows, unittest.equals(42));
    unittest.expect(o.totalUpdatedSheets, unittest.equals(42));
  }
  buildCounterBatchUpdateValuesByDataFilterResponse--;
}

core.List<api.ValueRange> buildUnnamed471() {
  var o = <api.ValueRange>[];
  o.add(buildValueRange());
  o.add(buildValueRange());
  return o;
}

void checkUnnamed471(core.List<api.ValueRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueRange(o[0] as api.ValueRange);
  checkValueRange(o[1] as api.ValueRange);
}

core.int buildCounterBatchUpdateValuesRequest = 0;
api.BatchUpdateValuesRequest buildBatchUpdateValuesRequest() {
  var o = api.BatchUpdateValuesRequest();
  buildCounterBatchUpdateValuesRequest++;
  if (buildCounterBatchUpdateValuesRequest < 3) {
    o.data = buildUnnamed471();
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
    checkUnnamed471(o.data);
    unittest.expect(o.includeValuesInResponse, unittest.isTrue);
    unittest.expect(o.responseDateTimeRenderOption, unittest.equals('foo'));
    unittest.expect(o.responseValueRenderOption, unittest.equals('foo'));
    unittest.expect(o.valueInputOption, unittest.equals('foo'));
  }
  buildCounterBatchUpdateValuesRequest--;
}

core.List<api.UpdateValuesResponse> buildUnnamed472() {
  var o = <api.UpdateValuesResponse>[];
  o.add(buildUpdateValuesResponse());
  o.add(buildUpdateValuesResponse());
  return o;
}

void checkUnnamed472(core.List<api.UpdateValuesResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateValuesResponse(o[0] as api.UpdateValuesResponse);
  checkUpdateValuesResponse(o[1] as api.UpdateValuesResponse);
}

core.int buildCounterBatchUpdateValuesResponse = 0;
api.BatchUpdateValuesResponse buildBatchUpdateValuesResponse() {
  var o = api.BatchUpdateValuesResponse();
  buildCounterBatchUpdateValuesResponse++;
  if (buildCounterBatchUpdateValuesResponse < 3) {
    o.responses = buildUnnamed472();
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
    checkUnnamed472(o.responses);
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    unittest.expect(o.totalUpdatedCells, unittest.equals(42));
    unittest.expect(o.totalUpdatedColumns, unittest.equals(42));
    unittest.expect(o.totalUpdatedRows, unittest.equals(42));
    unittest.expect(o.totalUpdatedSheets, unittest.equals(42));
  }
  buildCounterBatchUpdateValuesResponse--;
}

core.int buildCounterBigQueryDataSourceSpec = 0;
api.BigQueryDataSourceSpec buildBigQueryDataSourceSpec() {
  var o = api.BigQueryDataSourceSpec();
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
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkBigQueryQuerySpec(o.querySpec as api.BigQueryQuerySpec);
    checkBigQueryTableSpec(o.tableSpec as api.BigQueryTableSpec);
  }
  buildCounterBigQueryDataSourceSpec--;
}

core.int buildCounterBigQueryQuerySpec = 0;
api.BigQueryQuerySpec buildBigQueryQuerySpec() {
  var o = api.BigQueryQuerySpec();
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
    unittest.expect(o.rawQuery, unittest.equals('foo'));
  }
  buildCounterBigQueryQuerySpec--;
}

core.int buildCounterBigQueryTableSpec = 0;
api.BigQueryTableSpec buildBigQueryTableSpec() {
  var o = api.BigQueryTableSpec();
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
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.tableId, unittest.equals('foo'));
    unittest.expect(o.tableProjectId, unittest.equals('foo'));
  }
  buildCounterBigQueryTableSpec--;
}

core.List<api.ConditionValue> buildUnnamed473() {
  var o = <api.ConditionValue>[];
  o.add(buildConditionValue());
  o.add(buildConditionValue());
  return o;
}

void checkUnnamed473(core.List<api.ConditionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConditionValue(o[0] as api.ConditionValue);
  checkConditionValue(o[1] as api.ConditionValue);
}

core.int buildCounterBooleanCondition = 0;
api.BooleanCondition buildBooleanCondition() {
  var o = api.BooleanCondition();
  buildCounterBooleanCondition++;
  if (buildCounterBooleanCondition < 3) {
    o.type = 'foo';
    o.values = buildUnnamed473();
  }
  buildCounterBooleanCondition--;
  return o;
}

void checkBooleanCondition(api.BooleanCondition o) {
  buildCounterBooleanCondition++;
  if (buildCounterBooleanCondition < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    checkUnnamed473(o.values);
  }
  buildCounterBooleanCondition--;
}

core.int buildCounterBooleanRule = 0;
api.BooleanRule buildBooleanRule() {
  var o = api.BooleanRule();
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
    checkBooleanCondition(o.condition as api.BooleanCondition);
    checkCellFormat(o.format as api.CellFormat);
  }
  buildCounterBooleanRule--;
}

core.int buildCounterBorder = 0;
api.Border buildBorder() {
  var o = api.Border();
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
    checkColor(o.color as api.Color);
    checkColorStyle(o.colorStyle as api.ColorStyle);
    unittest.expect(o.style, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterBorder--;
}

core.int buildCounterBorders = 0;
api.Borders buildBorders() {
  var o = api.Borders();
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
    checkBorder(o.bottom as api.Border);
    checkBorder(o.left as api.Border);
    checkBorder(o.right as api.Border);
    checkBorder(o.top as api.Border);
  }
  buildCounterBorders--;
}

core.int buildCounterBubbleChartSpec = 0;
api.BubbleChartSpec buildBubbleChartSpec() {
  var o = api.BubbleChartSpec();
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
    checkColor(o.bubbleBorderColor as api.Color);
    checkColorStyle(o.bubbleBorderColorStyle as api.ColorStyle);
    checkChartData(o.bubbleLabels as api.ChartData);
    unittest.expect(o.bubbleMaxRadiusSize, unittest.equals(42));
    unittest.expect(o.bubbleMinRadiusSize, unittest.equals(42));
    unittest.expect(o.bubbleOpacity, unittest.equals(42.0));
    checkChartData(o.bubbleSizes as api.ChartData);
    checkTextFormat(o.bubbleTextStyle as api.TextFormat);
    checkChartData(o.domain as api.ChartData);
    checkChartData(o.groupIds as api.ChartData);
    unittest.expect(o.legendPosition, unittest.equals('foo'));
    checkChartData(o.series as api.ChartData);
  }
  buildCounterBubbleChartSpec--;
}

core.List<api.CandlestickData> buildUnnamed474() {
  var o = <api.CandlestickData>[];
  o.add(buildCandlestickData());
  o.add(buildCandlestickData());
  return o;
}

void checkUnnamed474(core.List<api.CandlestickData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCandlestickData(o[0] as api.CandlestickData);
  checkCandlestickData(o[1] as api.CandlestickData);
}

core.int buildCounterCandlestickChartSpec = 0;
api.CandlestickChartSpec buildCandlestickChartSpec() {
  var o = api.CandlestickChartSpec();
  buildCounterCandlestickChartSpec++;
  if (buildCounterCandlestickChartSpec < 3) {
    o.data = buildUnnamed474();
    o.domain = buildCandlestickDomain();
  }
  buildCounterCandlestickChartSpec--;
  return o;
}

void checkCandlestickChartSpec(api.CandlestickChartSpec o) {
  buildCounterCandlestickChartSpec++;
  if (buildCounterCandlestickChartSpec < 3) {
    checkUnnamed474(o.data);
    checkCandlestickDomain(o.domain as api.CandlestickDomain);
  }
  buildCounterCandlestickChartSpec--;
}

core.int buildCounterCandlestickData = 0;
api.CandlestickData buildCandlestickData() {
  var o = api.CandlestickData();
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
    checkCandlestickSeries(o.closeSeries as api.CandlestickSeries);
    checkCandlestickSeries(o.highSeries as api.CandlestickSeries);
    checkCandlestickSeries(o.lowSeries as api.CandlestickSeries);
    checkCandlestickSeries(o.openSeries as api.CandlestickSeries);
  }
  buildCounterCandlestickData--;
}

core.int buildCounterCandlestickDomain = 0;
api.CandlestickDomain buildCandlestickDomain() {
  var o = api.CandlestickDomain();
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
    checkChartData(o.data as api.ChartData);
    unittest.expect(o.reversed, unittest.isTrue);
  }
  buildCounterCandlestickDomain--;
}

core.int buildCounterCandlestickSeries = 0;
api.CandlestickSeries buildCandlestickSeries() {
  var o = api.CandlestickSeries();
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
    checkChartData(o.data as api.ChartData);
  }
  buildCounterCandlestickSeries--;
}

core.List<api.TextFormatRun> buildUnnamed475() {
  var o = <api.TextFormatRun>[];
  o.add(buildTextFormatRun());
  o.add(buildTextFormatRun());
  return o;
}

void checkUnnamed475(core.List<api.TextFormatRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextFormatRun(o[0] as api.TextFormatRun);
  checkTextFormatRun(o[1] as api.TextFormatRun);
}

core.int buildCounterCellData = 0;
api.CellData buildCellData() {
  var o = api.CellData();
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
    o.textFormatRuns = buildUnnamed475();
    o.userEnteredFormat = buildCellFormat();
    o.userEnteredValue = buildExtendedValue();
  }
  buildCounterCellData--;
  return o;
}

void checkCellData(api.CellData o) {
  buildCounterCellData++;
  if (buildCounterCellData < 3) {
    checkDataSourceFormula(o.dataSourceFormula as api.DataSourceFormula);
    checkDataSourceTable(o.dataSourceTable as api.DataSourceTable);
    checkDataValidationRule(o.dataValidation as api.DataValidationRule);
    checkCellFormat(o.effectiveFormat as api.CellFormat);
    checkExtendedValue(o.effectiveValue as api.ExtendedValue);
    unittest.expect(o.formattedValue, unittest.equals('foo'));
    unittest.expect(o.hyperlink, unittest.equals('foo'));
    unittest.expect(o.note, unittest.equals('foo'));
    checkPivotTable(o.pivotTable as api.PivotTable);
    checkUnnamed475(o.textFormatRuns);
    checkCellFormat(o.userEnteredFormat as api.CellFormat);
    checkExtendedValue(o.userEnteredValue as api.ExtendedValue);
  }
  buildCounterCellData--;
}

core.int buildCounterCellFormat = 0;
api.CellFormat buildCellFormat() {
  var o = api.CellFormat();
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
    checkColor(o.backgroundColor as api.Color);
    checkColorStyle(o.backgroundColorStyle as api.ColorStyle);
    checkBorders(o.borders as api.Borders);
    unittest.expect(o.horizontalAlignment, unittest.equals('foo'));
    unittest.expect(o.hyperlinkDisplayType, unittest.equals('foo'));
    checkNumberFormat(o.numberFormat as api.NumberFormat);
    checkPadding(o.padding as api.Padding);
    unittest.expect(o.textDirection, unittest.equals('foo'));
    checkTextFormat(o.textFormat as api.TextFormat);
    checkTextRotation(o.textRotation as api.TextRotation);
    unittest.expect(o.verticalAlignment, unittest.equals('foo'));
    unittest.expect(o.wrapStrategy, unittest.equals('foo'));
  }
  buildCounterCellFormat--;
}

core.int buildCounterChartAxisViewWindowOptions = 0;
api.ChartAxisViewWindowOptions buildChartAxisViewWindowOptions() {
  var o = api.ChartAxisViewWindowOptions();
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
    unittest.expect(o.viewWindowMax, unittest.equals(42.0));
    unittest.expect(o.viewWindowMin, unittest.equals(42.0));
    unittest.expect(o.viewWindowMode, unittest.equals('foo'));
  }
  buildCounterChartAxisViewWindowOptions--;
}

core.int buildCounterChartCustomNumberFormatOptions = 0;
api.ChartCustomNumberFormatOptions buildChartCustomNumberFormatOptions() {
  var o = api.ChartCustomNumberFormatOptions();
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
    unittest.expect(o.prefix, unittest.equals('foo'));
    unittest.expect(o.suffix, unittest.equals('foo'));
  }
  buildCounterChartCustomNumberFormatOptions--;
}

core.int buildCounterChartData = 0;
api.ChartData buildChartData() {
  var o = api.ChartData();
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
    unittest.expect(o.aggregateType, unittest.equals('foo'));
    checkDataSourceColumnReference(
        o.columnReference as api.DataSourceColumnReference);
    checkChartGroupRule(o.groupRule as api.ChartGroupRule);
    checkChartSourceRange(o.sourceRange as api.ChartSourceRange);
  }
  buildCounterChartData--;
}

core.int buildCounterChartDateTimeRule = 0;
api.ChartDateTimeRule buildChartDateTimeRule() {
  var o = api.ChartDateTimeRule();
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
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChartDateTimeRule--;
}

core.int buildCounterChartGroupRule = 0;
api.ChartGroupRule buildChartGroupRule() {
  var o = api.ChartGroupRule();
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
    checkChartDateTimeRule(o.dateTimeRule as api.ChartDateTimeRule);
    checkChartHistogramRule(o.histogramRule as api.ChartHistogramRule);
  }
  buildCounterChartGroupRule--;
}

core.int buildCounterChartHistogramRule = 0;
api.ChartHistogramRule buildChartHistogramRule() {
  var o = api.ChartHistogramRule();
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
    unittest.expect(o.intervalSize, unittest.equals(42.0));
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
  }
  buildCounterChartHistogramRule--;
}

core.List<api.GridRange> buildUnnamed476() {
  var o = <api.GridRange>[];
  o.add(buildGridRange());
  o.add(buildGridRange());
  return o;
}

void checkUnnamed476(core.List<api.GridRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGridRange(o[0] as api.GridRange);
  checkGridRange(o[1] as api.GridRange);
}

core.int buildCounterChartSourceRange = 0;
api.ChartSourceRange buildChartSourceRange() {
  var o = api.ChartSourceRange();
  buildCounterChartSourceRange++;
  if (buildCounterChartSourceRange < 3) {
    o.sources = buildUnnamed476();
  }
  buildCounterChartSourceRange--;
  return o;
}

void checkChartSourceRange(api.ChartSourceRange o) {
  buildCounterChartSourceRange++;
  if (buildCounterChartSourceRange < 3) {
    checkUnnamed476(o.sources);
  }
  buildCounterChartSourceRange--;
}

core.List<api.FilterSpec> buildUnnamed477() {
  var o = <api.FilterSpec>[];
  o.add(buildFilterSpec());
  o.add(buildFilterSpec());
  return o;
}

void checkUnnamed477(core.List<api.FilterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterSpec(o[0] as api.FilterSpec);
  checkFilterSpec(o[1] as api.FilterSpec);
}

core.List<api.SortSpec> buildUnnamed478() {
  var o = <api.SortSpec>[];
  o.add(buildSortSpec());
  o.add(buildSortSpec());
  return o;
}

void checkUnnamed478(core.List<api.SortSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortSpec(o[0] as api.SortSpec);
  checkSortSpec(o[1] as api.SortSpec);
}

core.int buildCounterChartSpec = 0;
api.ChartSpec buildChartSpec() {
  var o = api.ChartSpec();
  buildCounterChartSpec++;
  if (buildCounterChartSpec < 3) {
    o.altText = 'foo';
    o.backgroundColor = buildColor();
    o.backgroundColorStyle = buildColorStyle();
    o.basicChart = buildBasicChartSpec();
    o.bubbleChart = buildBubbleChartSpec();
    o.candlestickChart = buildCandlestickChartSpec();
    o.dataSourceChartProperties = buildDataSourceChartProperties();
    o.filterSpecs = buildUnnamed477();
    o.fontName = 'foo';
    o.hiddenDimensionStrategy = 'foo';
    o.histogramChart = buildHistogramChartSpec();
    o.maximized = true;
    o.orgChart = buildOrgChartSpec();
    o.pieChart = buildPieChartSpec();
    o.scorecardChart = buildScorecardChartSpec();
    o.sortSpecs = buildUnnamed478();
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
    unittest.expect(o.altText, unittest.equals('foo'));
    checkColor(o.backgroundColor as api.Color);
    checkColorStyle(o.backgroundColorStyle as api.ColorStyle);
    checkBasicChartSpec(o.basicChart as api.BasicChartSpec);
    checkBubbleChartSpec(o.bubbleChart as api.BubbleChartSpec);
    checkCandlestickChartSpec(o.candlestickChart as api.CandlestickChartSpec);
    checkDataSourceChartProperties(
        o.dataSourceChartProperties as api.DataSourceChartProperties);
    checkUnnamed477(o.filterSpecs);
    unittest.expect(o.fontName, unittest.equals('foo'));
    unittest.expect(o.hiddenDimensionStrategy, unittest.equals('foo'));
    checkHistogramChartSpec(o.histogramChart as api.HistogramChartSpec);
    unittest.expect(o.maximized, unittest.isTrue);
    checkOrgChartSpec(o.orgChart as api.OrgChartSpec);
    checkPieChartSpec(o.pieChart as api.PieChartSpec);
    checkScorecardChartSpec(o.scorecardChart as api.ScorecardChartSpec);
    checkUnnamed478(o.sortSpecs);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    checkTextFormat(o.subtitleTextFormat as api.TextFormat);
    checkTextPosition(o.subtitleTextPosition as api.TextPosition);
    unittest.expect(o.title, unittest.equals('foo'));
    checkTextFormat(o.titleTextFormat as api.TextFormat);
    checkTextPosition(o.titleTextPosition as api.TextPosition);
    checkTreemapChartSpec(o.treemapChart as api.TreemapChartSpec);
    checkWaterfallChartSpec(o.waterfallChart as api.WaterfallChartSpec);
  }
  buildCounterChartSpec--;
}

core.int buildCounterClearBasicFilterRequest = 0;
api.ClearBasicFilterRequest buildClearBasicFilterRequest() {
  var o = api.ClearBasicFilterRequest();
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
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterClearBasicFilterRequest--;
}

core.int buildCounterClearValuesRequest = 0;
api.ClearValuesRequest buildClearValuesRequest() {
  var o = api.ClearValuesRequest();
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
  var o = api.ClearValuesResponse();
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
    unittest.expect(o.clearedRange, unittest.equals('foo'));
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
  }
  buildCounterClearValuesResponse--;
}

core.int buildCounterColor = 0;
api.Color buildColor() {
  var o = api.Color();
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
    unittest.expect(o.alpha, unittest.equals(42.0));
    unittest.expect(o.blue, unittest.equals(42.0));
    unittest.expect(o.green, unittest.equals(42.0));
    unittest.expect(o.red, unittest.equals(42.0));
  }
  buildCounterColor--;
}

core.int buildCounterColorStyle = 0;
api.ColorStyle buildColorStyle() {
  var o = api.ColorStyle();
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
    checkColor(o.rgbColor as api.Color);
    unittest.expect(o.themeColor, unittest.equals('foo'));
  }
  buildCounterColorStyle--;
}

core.int buildCounterConditionValue = 0;
api.ConditionValue buildConditionValue() {
  var o = api.ConditionValue();
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
    unittest.expect(o.relativeDate, unittest.equals('foo'));
    unittest.expect(o.userEnteredValue, unittest.equals('foo'));
  }
  buildCounterConditionValue--;
}

core.List<api.GridRange> buildUnnamed479() {
  var o = <api.GridRange>[];
  o.add(buildGridRange());
  o.add(buildGridRange());
  return o;
}

void checkUnnamed479(core.List<api.GridRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGridRange(o[0] as api.GridRange);
  checkGridRange(o[1] as api.GridRange);
}

core.int buildCounterConditionalFormatRule = 0;
api.ConditionalFormatRule buildConditionalFormatRule() {
  var o = api.ConditionalFormatRule();
  buildCounterConditionalFormatRule++;
  if (buildCounterConditionalFormatRule < 3) {
    o.booleanRule = buildBooleanRule();
    o.gradientRule = buildGradientRule();
    o.ranges = buildUnnamed479();
  }
  buildCounterConditionalFormatRule--;
  return o;
}

void checkConditionalFormatRule(api.ConditionalFormatRule o) {
  buildCounterConditionalFormatRule++;
  if (buildCounterConditionalFormatRule < 3) {
    checkBooleanRule(o.booleanRule as api.BooleanRule);
    checkGradientRule(o.gradientRule as api.GradientRule);
    checkUnnamed479(o.ranges);
  }
  buildCounterConditionalFormatRule--;
}

core.int buildCounterCopyPasteRequest = 0;
api.CopyPasteRequest buildCopyPasteRequest() {
  var o = api.CopyPasteRequest();
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
    checkGridRange(o.destination as api.GridRange);
    unittest.expect(o.pasteOrientation, unittest.equals('foo'));
    unittest.expect(o.pasteType, unittest.equals('foo'));
    checkGridRange(o.source as api.GridRange);
  }
  buildCounterCopyPasteRequest--;
}

core.int buildCounterCopySheetToAnotherSpreadsheetRequest = 0;
api.CopySheetToAnotherSpreadsheetRequest
    buildCopySheetToAnotherSpreadsheetRequest() {
  var o = api.CopySheetToAnotherSpreadsheetRequest();
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
    unittest.expect(o.destinationSpreadsheetId, unittest.equals('foo'));
  }
  buildCounterCopySheetToAnotherSpreadsheetRequest--;
}

core.int buildCounterCreateDeveloperMetadataRequest = 0;
api.CreateDeveloperMetadataRequest buildCreateDeveloperMetadataRequest() {
  var o = api.CreateDeveloperMetadataRequest();
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
    checkDeveloperMetadata(o.developerMetadata as api.DeveloperMetadata);
  }
  buildCounterCreateDeveloperMetadataRequest--;
}

core.int buildCounterCreateDeveloperMetadataResponse = 0;
api.CreateDeveloperMetadataResponse buildCreateDeveloperMetadataResponse() {
  var o = api.CreateDeveloperMetadataResponse();
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
    checkDeveloperMetadata(o.developerMetadata as api.DeveloperMetadata);
  }
  buildCounterCreateDeveloperMetadataResponse--;
}

core.int buildCounterCutPasteRequest = 0;
api.CutPasteRequest buildCutPasteRequest() {
  var o = api.CutPasteRequest();
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
    checkGridCoordinate(o.destination as api.GridCoordinate);
    unittest.expect(o.pasteType, unittest.equals('foo'));
    checkGridRange(o.source as api.GridRange);
  }
  buildCounterCutPasteRequest--;
}

core.int buildCounterDataExecutionStatus = 0;
api.DataExecutionStatus buildDataExecutionStatus() {
  var o = api.DataExecutionStatus();
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
    unittest.expect(o.errorCode, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.lastRefreshTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterDataExecutionStatus--;
}

core.int buildCounterDataFilter = 0;
api.DataFilter buildDataFilter() {
  var o = api.DataFilter();
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
    unittest.expect(o.a1Range, unittest.equals('foo'));
    checkDeveloperMetadataLookup(
        o.developerMetadataLookup as api.DeveloperMetadataLookup);
    checkGridRange(o.gridRange as api.GridRange);
  }
  buildCounterDataFilter--;
}

core.List<core.Object> buildUnnamed480() {
  var o = <core.Object>[];
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

void checkUnnamed480(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o[1]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.List<core.Object>> buildUnnamed481() {
  var o = <core.List<core.Object>>[];
  o.add(buildUnnamed480());
  o.add(buildUnnamed480());
  return o;
}

void checkUnnamed481(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed480(o[0]);
  checkUnnamed480(o[1]);
}

core.int buildCounterDataFilterValueRange = 0;
api.DataFilterValueRange buildDataFilterValueRange() {
  var o = api.DataFilterValueRange();
  buildCounterDataFilterValueRange++;
  if (buildCounterDataFilterValueRange < 3) {
    o.dataFilter = buildDataFilter();
    o.majorDimension = 'foo';
    o.values = buildUnnamed481();
  }
  buildCounterDataFilterValueRange--;
  return o;
}

void checkDataFilterValueRange(api.DataFilterValueRange o) {
  buildCounterDataFilterValueRange++;
  if (buildCounterDataFilterValueRange < 3) {
    checkDataFilter(o.dataFilter as api.DataFilter);
    unittest.expect(o.majorDimension, unittest.equals('foo'));
    checkUnnamed481(o.values);
  }
  buildCounterDataFilterValueRange--;
}

core.List<api.DataSourceColumn> buildUnnamed482() {
  var o = <api.DataSourceColumn>[];
  o.add(buildDataSourceColumn());
  o.add(buildDataSourceColumn());
  return o;
}

void checkUnnamed482(core.List<api.DataSourceColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceColumn(o[0] as api.DataSourceColumn);
  checkDataSourceColumn(o[1] as api.DataSourceColumn);
}

core.int buildCounterDataSource = 0;
api.DataSource buildDataSource() {
  var o = api.DataSource();
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    o.calculatedColumns = buildUnnamed482();
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
    checkUnnamed482(o.calculatedColumns);
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
    unittest.expect(o.sheetId, unittest.equals(42));
    checkDataSourceSpec(o.spec as api.DataSourceSpec);
  }
  buildCounterDataSource--;
}

core.int buildCounterDataSourceChartProperties = 0;
api.DataSourceChartProperties buildDataSourceChartProperties() {
  var o = api.DataSourceChartProperties();
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
    checkDataExecutionStatus(o.dataExecutionStatus as api.DataExecutionStatus);
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
  }
  buildCounterDataSourceChartProperties--;
}

core.int buildCounterDataSourceColumn = 0;
api.DataSourceColumn buildDataSourceColumn() {
  var o = api.DataSourceColumn();
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
    unittest.expect(o.formula, unittest.equals('foo'));
    checkDataSourceColumnReference(
        o.reference as api.DataSourceColumnReference);
  }
  buildCounterDataSourceColumn--;
}

core.int buildCounterDataSourceColumnReference = 0;
api.DataSourceColumnReference buildDataSourceColumnReference() {
  var o = api.DataSourceColumnReference();
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
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterDataSourceColumnReference--;
}

core.int buildCounterDataSourceFormula = 0;
api.DataSourceFormula buildDataSourceFormula() {
  var o = api.DataSourceFormula();
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
    checkDataExecutionStatus(o.dataExecutionStatus as api.DataExecutionStatus);
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
  }
  buildCounterDataSourceFormula--;
}

core.int buildCounterDataSourceObjectReference = 0;
api.DataSourceObjectReference buildDataSourceObjectReference() {
  var o = api.DataSourceObjectReference();
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
    unittest.expect(o.chartId, unittest.equals(42));
    checkGridCoordinate(o.dataSourceFormulaCell as api.GridCoordinate);
    checkGridCoordinate(o.dataSourcePivotTableAnchorCell as api.GridCoordinate);
    checkGridCoordinate(o.dataSourceTableAnchorCell as api.GridCoordinate);
    unittest.expect(o.sheetId, unittest.equals('foo'));
  }
  buildCounterDataSourceObjectReference--;
}

core.List<api.DataSourceObjectReference> buildUnnamed483() {
  var o = <api.DataSourceObjectReference>[];
  o.add(buildDataSourceObjectReference());
  o.add(buildDataSourceObjectReference());
  return o;
}

void checkUnnamed483(core.List<api.DataSourceObjectReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceObjectReference(o[0] as api.DataSourceObjectReference);
  checkDataSourceObjectReference(o[1] as api.DataSourceObjectReference);
}

core.int buildCounterDataSourceObjectReferences = 0;
api.DataSourceObjectReferences buildDataSourceObjectReferences() {
  var o = api.DataSourceObjectReferences();
  buildCounterDataSourceObjectReferences++;
  if (buildCounterDataSourceObjectReferences < 3) {
    o.references = buildUnnamed483();
  }
  buildCounterDataSourceObjectReferences--;
  return o;
}

void checkDataSourceObjectReferences(api.DataSourceObjectReferences o) {
  buildCounterDataSourceObjectReferences++;
  if (buildCounterDataSourceObjectReferences < 3) {
    checkUnnamed483(o.references);
  }
  buildCounterDataSourceObjectReferences--;
}

core.int buildCounterDataSourceParameter = 0;
api.DataSourceParameter buildDataSourceParameter() {
  var o = api.DataSourceParameter();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
    checkGridRange(o.range as api.GridRange);
  }
  buildCounterDataSourceParameter--;
}

core.int buildCounterDataSourceRefreshDailySchedule = 0;
api.DataSourceRefreshDailySchedule buildDataSourceRefreshDailySchedule() {
  var o = api.DataSourceRefreshDailySchedule();
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
    checkTimeOfDay(o.startTime as api.TimeOfDay);
  }
  buildCounterDataSourceRefreshDailySchedule--;
}

core.List<core.int> buildUnnamed484() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed484(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterDataSourceRefreshMonthlySchedule = 0;
api.DataSourceRefreshMonthlySchedule buildDataSourceRefreshMonthlySchedule() {
  var o = api.DataSourceRefreshMonthlySchedule();
  buildCounterDataSourceRefreshMonthlySchedule++;
  if (buildCounterDataSourceRefreshMonthlySchedule < 3) {
    o.daysOfMonth = buildUnnamed484();
    o.startTime = buildTimeOfDay();
  }
  buildCounterDataSourceRefreshMonthlySchedule--;
  return o;
}

void checkDataSourceRefreshMonthlySchedule(
    api.DataSourceRefreshMonthlySchedule o) {
  buildCounterDataSourceRefreshMonthlySchedule++;
  if (buildCounterDataSourceRefreshMonthlySchedule < 3) {
    checkUnnamed484(o.daysOfMonth);
    checkTimeOfDay(o.startTime as api.TimeOfDay);
  }
  buildCounterDataSourceRefreshMonthlySchedule--;
}

core.int buildCounterDataSourceRefreshSchedule = 0;
api.DataSourceRefreshSchedule buildDataSourceRefreshSchedule() {
  var o = api.DataSourceRefreshSchedule();
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
    checkDataSourceRefreshDailySchedule(
        o.dailySchedule as api.DataSourceRefreshDailySchedule);
    unittest.expect(o.enabled, unittest.isTrue);
    checkDataSourceRefreshMonthlySchedule(
        o.monthlySchedule as api.DataSourceRefreshMonthlySchedule);
    checkInterval(o.nextRun as api.Interval);
    unittest.expect(o.refreshScope, unittest.equals('foo'));
    checkDataSourceRefreshWeeklySchedule(
        o.weeklySchedule as api.DataSourceRefreshWeeklySchedule);
  }
  buildCounterDataSourceRefreshSchedule--;
}

core.List<core.String> buildUnnamed485() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed485(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDataSourceRefreshWeeklySchedule = 0;
api.DataSourceRefreshWeeklySchedule buildDataSourceRefreshWeeklySchedule() {
  var o = api.DataSourceRefreshWeeklySchedule();
  buildCounterDataSourceRefreshWeeklySchedule++;
  if (buildCounterDataSourceRefreshWeeklySchedule < 3) {
    o.daysOfWeek = buildUnnamed485();
    o.startTime = buildTimeOfDay();
  }
  buildCounterDataSourceRefreshWeeklySchedule--;
  return o;
}

void checkDataSourceRefreshWeeklySchedule(
    api.DataSourceRefreshWeeklySchedule o) {
  buildCounterDataSourceRefreshWeeklySchedule++;
  if (buildCounterDataSourceRefreshWeeklySchedule < 3) {
    checkUnnamed485(o.daysOfWeek);
    checkTimeOfDay(o.startTime as api.TimeOfDay);
  }
  buildCounterDataSourceRefreshWeeklySchedule--;
}

core.List<api.DataSourceColumnReference> buildUnnamed486() {
  var o = <api.DataSourceColumnReference>[];
  o.add(buildDataSourceColumnReference());
  o.add(buildDataSourceColumnReference());
  return o;
}

void checkUnnamed486(core.List<api.DataSourceColumnReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceColumnReference(o[0] as api.DataSourceColumnReference);
  checkDataSourceColumnReference(o[1] as api.DataSourceColumnReference);
}

core.int buildCounterDataSourceSheetDimensionRange = 0;
api.DataSourceSheetDimensionRange buildDataSourceSheetDimensionRange() {
  var o = api.DataSourceSheetDimensionRange();
  buildCounterDataSourceSheetDimensionRange++;
  if (buildCounterDataSourceSheetDimensionRange < 3) {
    o.columnReferences = buildUnnamed486();
    o.sheetId = 42;
  }
  buildCounterDataSourceSheetDimensionRange--;
  return o;
}

void checkDataSourceSheetDimensionRange(api.DataSourceSheetDimensionRange o) {
  buildCounterDataSourceSheetDimensionRange++;
  if (buildCounterDataSourceSheetDimensionRange < 3) {
    checkUnnamed486(o.columnReferences);
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterDataSourceSheetDimensionRange--;
}

core.List<api.DataSourceColumn> buildUnnamed487() {
  var o = <api.DataSourceColumn>[];
  o.add(buildDataSourceColumn());
  o.add(buildDataSourceColumn());
  return o;
}

void checkUnnamed487(core.List<api.DataSourceColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceColumn(o[0] as api.DataSourceColumn);
  checkDataSourceColumn(o[1] as api.DataSourceColumn);
}

core.int buildCounterDataSourceSheetProperties = 0;
api.DataSourceSheetProperties buildDataSourceSheetProperties() {
  var o = api.DataSourceSheetProperties();
  buildCounterDataSourceSheetProperties++;
  if (buildCounterDataSourceSheetProperties < 3) {
    o.columns = buildUnnamed487();
    o.dataExecutionStatus = buildDataExecutionStatus();
    o.dataSourceId = 'foo';
  }
  buildCounterDataSourceSheetProperties--;
  return o;
}

void checkDataSourceSheetProperties(api.DataSourceSheetProperties o) {
  buildCounterDataSourceSheetProperties++;
  if (buildCounterDataSourceSheetProperties < 3) {
    checkUnnamed487(o.columns);
    checkDataExecutionStatus(o.dataExecutionStatus as api.DataExecutionStatus);
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
  }
  buildCounterDataSourceSheetProperties--;
}

core.List<api.DataSourceParameter> buildUnnamed488() {
  var o = <api.DataSourceParameter>[];
  o.add(buildDataSourceParameter());
  o.add(buildDataSourceParameter());
  return o;
}

void checkUnnamed488(core.List<api.DataSourceParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceParameter(o[0] as api.DataSourceParameter);
  checkDataSourceParameter(o[1] as api.DataSourceParameter);
}

core.int buildCounterDataSourceSpec = 0;
api.DataSourceSpec buildDataSourceSpec() {
  var o = api.DataSourceSpec();
  buildCounterDataSourceSpec++;
  if (buildCounterDataSourceSpec < 3) {
    o.bigQuery = buildBigQueryDataSourceSpec();
    o.parameters = buildUnnamed488();
  }
  buildCounterDataSourceSpec--;
  return o;
}

void checkDataSourceSpec(api.DataSourceSpec o) {
  buildCounterDataSourceSpec++;
  if (buildCounterDataSourceSpec < 3) {
    checkBigQueryDataSourceSpec(o.bigQuery as api.BigQueryDataSourceSpec);
    checkUnnamed488(o.parameters);
  }
  buildCounterDataSourceSpec--;
}

core.List<api.DataSourceColumnReference> buildUnnamed489() {
  var o = <api.DataSourceColumnReference>[];
  o.add(buildDataSourceColumnReference());
  o.add(buildDataSourceColumnReference());
  return o;
}

void checkUnnamed489(core.List<api.DataSourceColumnReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceColumnReference(o[0] as api.DataSourceColumnReference);
  checkDataSourceColumnReference(o[1] as api.DataSourceColumnReference);
}

core.List<api.FilterSpec> buildUnnamed490() {
  var o = <api.FilterSpec>[];
  o.add(buildFilterSpec());
  o.add(buildFilterSpec());
  return o;
}

void checkUnnamed490(core.List<api.FilterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterSpec(o[0] as api.FilterSpec);
  checkFilterSpec(o[1] as api.FilterSpec);
}

core.List<api.SortSpec> buildUnnamed491() {
  var o = <api.SortSpec>[];
  o.add(buildSortSpec());
  o.add(buildSortSpec());
  return o;
}

void checkUnnamed491(core.List<api.SortSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortSpec(o[0] as api.SortSpec);
  checkSortSpec(o[1] as api.SortSpec);
}

core.int buildCounterDataSourceTable = 0;
api.DataSourceTable buildDataSourceTable() {
  var o = api.DataSourceTable();
  buildCounterDataSourceTable++;
  if (buildCounterDataSourceTable < 3) {
    o.columnSelectionType = 'foo';
    o.columns = buildUnnamed489();
    o.dataExecutionStatus = buildDataExecutionStatus();
    o.dataSourceId = 'foo';
    o.filterSpecs = buildUnnamed490();
    o.rowLimit = 42;
    o.sortSpecs = buildUnnamed491();
  }
  buildCounterDataSourceTable--;
  return o;
}

void checkDataSourceTable(api.DataSourceTable o) {
  buildCounterDataSourceTable++;
  if (buildCounterDataSourceTable < 3) {
    unittest.expect(o.columnSelectionType, unittest.equals('foo'));
    checkUnnamed489(o.columns);
    checkDataExecutionStatus(o.dataExecutionStatus as api.DataExecutionStatus);
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
    checkUnnamed490(o.filterSpecs);
    unittest.expect(o.rowLimit, unittest.equals(42));
    checkUnnamed491(o.sortSpecs);
  }
  buildCounterDataSourceTable--;
}

core.int buildCounterDataValidationRule = 0;
api.DataValidationRule buildDataValidationRule() {
  var o = api.DataValidationRule();
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
    checkBooleanCondition(o.condition as api.BooleanCondition);
    unittest.expect(o.inputMessage, unittest.equals('foo'));
    unittest.expect(o.showCustomUi, unittest.isTrue);
    unittest.expect(o.strict, unittest.isTrue);
  }
  buildCounterDataValidationRule--;
}

core.int buildCounterDateTimeRule = 0;
api.DateTimeRule buildDateTimeRule() {
  var o = api.DateTimeRule();
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
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDateTimeRule--;
}

core.int buildCounterDeleteBandingRequest = 0;
api.DeleteBandingRequest buildDeleteBandingRequest() {
  var o = api.DeleteBandingRequest();
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
    unittest.expect(o.bandedRangeId, unittest.equals(42));
  }
  buildCounterDeleteBandingRequest--;
}

core.int buildCounterDeleteConditionalFormatRuleRequest = 0;
api.DeleteConditionalFormatRuleRequest
    buildDeleteConditionalFormatRuleRequest() {
  var o = api.DeleteConditionalFormatRuleRequest();
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
    unittest.expect(o.index, unittest.equals(42));
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterDeleteConditionalFormatRuleRequest--;
}

core.int buildCounterDeleteConditionalFormatRuleResponse = 0;
api.DeleteConditionalFormatRuleResponse
    buildDeleteConditionalFormatRuleResponse() {
  var o = api.DeleteConditionalFormatRuleResponse();
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
    checkConditionalFormatRule(o.rule as api.ConditionalFormatRule);
  }
  buildCounterDeleteConditionalFormatRuleResponse--;
}

core.int buildCounterDeleteDataSourceRequest = 0;
api.DeleteDataSourceRequest buildDeleteDataSourceRequest() {
  var o = api.DeleteDataSourceRequest();
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
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
  }
  buildCounterDeleteDataSourceRequest--;
}

core.int buildCounterDeleteDeveloperMetadataRequest = 0;
api.DeleteDeveloperMetadataRequest buildDeleteDeveloperMetadataRequest() {
  var o = api.DeleteDeveloperMetadataRequest();
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
    checkDataFilter(o.dataFilter as api.DataFilter);
  }
  buildCounterDeleteDeveloperMetadataRequest--;
}

core.List<api.DeveloperMetadata> buildUnnamed492() {
  var o = <api.DeveloperMetadata>[];
  o.add(buildDeveloperMetadata());
  o.add(buildDeveloperMetadata());
  return o;
}

void checkUnnamed492(core.List<api.DeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeveloperMetadata(o[0] as api.DeveloperMetadata);
  checkDeveloperMetadata(o[1] as api.DeveloperMetadata);
}

core.int buildCounterDeleteDeveloperMetadataResponse = 0;
api.DeleteDeveloperMetadataResponse buildDeleteDeveloperMetadataResponse() {
  var o = api.DeleteDeveloperMetadataResponse();
  buildCounterDeleteDeveloperMetadataResponse++;
  if (buildCounterDeleteDeveloperMetadataResponse < 3) {
    o.deletedDeveloperMetadata = buildUnnamed492();
  }
  buildCounterDeleteDeveloperMetadataResponse--;
  return o;
}

void checkDeleteDeveloperMetadataResponse(
    api.DeleteDeveloperMetadataResponse o) {
  buildCounterDeleteDeveloperMetadataResponse++;
  if (buildCounterDeleteDeveloperMetadataResponse < 3) {
    checkUnnamed492(o.deletedDeveloperMetadata);
  }
  buildCounterDeleteDeveloperMetadataResponse--;
}

core.int buildCounterDeleteDimensionGroupRequest = 0;
api.DeleteDimensionGroupRequest buildDeleteDimensionGroupRequest() {
  var o = api.DeleteDimensionGroupRequest();
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
    checkDimensionRange(o.range as api.DimensionRange);
  }
  buildCounterDeleteDimensionGroupRequest--;
}

core.List<api.DimensionGroup> buildUnnamed493() {
  var o = <api.DimensionGroup>[];
  o.add(buildDimensionGroup());
  o.add(buildDimensionGroup());
  return o;
}

void checkUnnamed493(core.List<api.DimensionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionGroup(o[0] as api.DimensionGroup);
  checkDimensionGroup(o[1] as api.DimensionGroup);
}

core.int buildCounterDeleteDimensionGroupResponse = 0;
api.DeleteDimensionGroupResponse buildDeleteDimensionGroupResponse() {
  var o = api.DeleteDimensionGroupResponse();
  buildCounterDeleteDimensionGroupResponse++;
  if (buildCounterDeleteDimensionGroupResponse < 3) {
    o.dimensionGroups = buildUnnamed493();
  }
  buildCounterDeleteDimensionGroupResponse--;
  return o;
}

void checkDeleteDimensionGroupResponse(api.DeleteDimensionGroupResponse o) {
  buildCounterDeleteDimensionGroupResponse++;
  if (buildCounterDeleteDimensionGroupResponse < 3) {
    checkUnnamed493(o.dimensionGroups);
  }
  buildCounterDeleteDimensionGroupResponse--;
}

core.int buildCounterDeleteDimensionRequest = 0;
api.DeleteDimensionRequest buildDeleteDimensionRequest() {
  var o = api.DeleteDimensionRequest();
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
    checkDimensionRange(o.range as api.DimensionRange);
  }
  buildCounterDeleteDimensionRequest--;
}

core.List<api.DimensionRange> buildUnnamed494() {
  var o = <api.DimensionRange>[];
  o.add(buildDimensionRange());
  o.add(buildDimensionRange());
  return o;
}

void checkUnnamed494(core.List<api.DimensionRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionRange(o[0] as api.DimensionRange);
  checkDimensionRange(o[1] as api.DimensionRange);
}

core.int buildCounterDeleteDuplicatesRequest = 0;
api.DeleteDuplicatesRequest buildDeleteDuplicatesRequest() {
  var o = api.DeleteDuplicatesRequest();
  buildCounterDeleteDuplicatesRequest++;
  if (buildCounterDeleteDuplicatesRequest < 3) {
    o.comparisonColumns = buildUnnamed494();
    o.range = buildGridRange();
  }
  buildCounterDeleteDuplicatesRequest--;
  return o;
}

void checkDeleteDuplicatesRequest(api.DeleteDuplicatesRequest o) {
  buildCounterDeleteDuplicatesRequest++;
  if (buildCounterDeleteDuplicatesRequest < 3) {
    checkUnnamed494(o.comparisonColumns);
    checkGridRange(o.range as api.GridRange);
  }
  buildCounterDeleteDuplicatesRequest--;
}

core.int buildCounterDeleteDuplicatesResponse = 0;
api.DeleteDuplicatesResponse buildDeleteDuplicatesResponse() {
  var o = api.DeleteDuplicatesResponse();
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
    unittest.expect(o.duplicatesRemovedCount, unittest.equals(42));
  }
  buildCounterDeleteDuplicatesResponse--;
}

core.int buildCounterDeleteEmbeddedObjectRequest = 0;
api.DeleteEmbeddedObjectRequest buildDeleteEmbeddedObjectRequest() {
  var o = api.DeleteEmbeddedObjectRequest();
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
    unittest.expect(o.objectId, unittest.equals(42));
  }
  buildCounterDeleteEmbeddedObjectRequest--;
}

core.int buildCounterDeleteFilterViewRequest = 0;
api.DeleteFilterViewRequest buildDeleteFilterViewRequest() {
  var o = api.DeleteFilterViewRequest();
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
    unittest.expect(o.filterId, unittest.equals(42));
  }
  buildCounterDeleteFilterViewRequest--;
}

core.int buildCounterDeleteNamedRangeRequest = 0;
api.DeleteNamedRangeRequest buildDeleteNamedRangeRequest() {
  var o = api.DeleteNamedRangeRequest();
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
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
  }
  buildCounterDeleteNamedRangeRequest--;
}

core.int buildCounterDeleteProtectedRangeRequest = 0;
api.DeleteProtectedRangeRequest buildDeleteProtectedRangeRequest() {
  var o = api.DeleteProtectedRangeRequest();
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
    unittest.expect(o.protectedRangeId, unittest.equals(42));
  }
  buildCounterDeleteProtectedRangeRequest--;
}

core.int buildCounterDeleteRangeRequest = 0;
api.DeleteRangeRequest buildDeleteRangeRequest() {
  var o = api.DeleteRangeRequest();
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
    checkGridRange(o.range as api.GridRange);
    unittest.expect(o.shiftDimension, unittest.equals('foo'));
  }
  buildCounterDeleteRangeRequest--;
}

core.int buildCounterDeleteSheetRequest = 0;
api.DeleteSheetRequest buildDeleteSheetRequest() {
  var o = api.DeleteSheetRequest();
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
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterDeleteSheetRequest--;
}

core.int buildCounterDeveloperMetadata = 0;
api.DeveloperMetadata buildDeveloperMetadata() {
  var o = api.DeveloperMetadata();
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
    checkDeveloperMetadataLocation(o.location as api.DeveloperMetadataLocation);
    unittest.expect(o.metadataId, unittest.equals(42));
    unittest.expect(o.metadataKey, unittest.equals('foo'));
    unittest.expect(o.metadataValue, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterDeveloperMetadata--;
}

core.int buildCounterDeveloperMetadataLocation = 0;
api.DeveloperMetadataLocation buildDeveloperMetadataLocation() {
  var o = api.DeveloperMetadataLocation();
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
    checkDimensionRange(o.dimensionRange as api.DimensionRange);
    unittest.expect(o.locationType, unittest.equals('foo'));
    unittest.expect(o.sheetId, unittest.equals(42));
    unittest.expect(o.spreadsheet, unittest.isTrue);
  }
  buildCounterDeveloperMetadataLocation--;
}

core.int buildCounterDeveloperMetadataLookup = 0;
api.DeveloperMetadataLookup buildDeveloperMetadataLookup() {
  var o = api.DeveloperMetadataLookup();
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
    unittest.expect(o.locationMatchingStrategy, unittest.equals('foo'));
    unittest.expect(o.locationType, unittest.equals('foo'));
    unittest.expect(o.metadataId, unittest.equals(42));
    unittest.expect(o.metadataKey, unittest.equals('foo'));
    checkDeveloperMetadataLocation(
        o.metadataLocation as api.DeveloperMetadataLocation);
    unittest.expect(o.metadataValue, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterDeveloperMetadataLookup--;
}

core.int buildCounterDimensionGroup = 0;
api.DimensionGroup buildDimensionGroup() {
  var o = api.DimensionGroup();
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
    unittest.expect(o.collapsed, unittest.isTrue);
    unittest.expect(o.depth, unittest.equals(42));
    checkDimensionRange(o.range as api.DimensionRange);
  }
  buildCounterDimensionGroup--;
}

core.List<api.DeveloperMetadata> buildUnnamed495() {
  var o = <api.DeveloperMetadata>[];
  o.add(buildDeveloperMetadata());
  o.add(buildDeveloperMetadata());
  return o;
}

void checkUnnamed495(core.List<api.DeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeveloperMetadata(o[0] as api.DeveloperMetadata);
  checkDeveloperMetadata(o[1] as api.DeveloperMetadata);
}

core.int buildCounterDimensionProperties = 0;
api.DimensionProperties buildDimensionProperties() {
  var o = api.DimensionProperties();
  buildCounterDimensionProperties++;
  if (buildCounterDimensionProperties < 3) {
    o.dataSourceColumnReference = buildDataSourceColumnReference();
    o.developerMetadata = buildUnnamed495();
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
    checkDataSourceColumnReference(
        o.dataSourceColumnReference as api.DataSourceColumnReference);
    checkUnnamed495(o.developerMetadata);
    unittest.expect(o.hiddenByFilter, unittest.isTrue);
    unittest.expect(o.hiddenByUser, unittest.isTrue);
    unittest.expect(o.pixelSize, unittest.equals(42));
  }
  buildCounterDimensionProperties--;
}

core.int buildCounterDimensionRange = 0;
api.DimensionRange buildDimensionRange() {
  var o = api.DimensionRange();
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
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.endIndex, unittest.equals(42));
    unittest.expect(o.sheetId, unittest.equals(42));
    unittest.expect(o.startIndex, unittest.equals(42));
  }
  buildCounterDimensionRange--;
}

core.int buildCounterDuplicateFilterViewRequest = 0;
api.DuplicateFilterViewRequest buildDuplicateFilterViewRequest() {
  var o = api.DuplicateFilterViewRequest();
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
    unittest.expect(o.filterId, unittest.equals(42));
  }
  buildCounterDuplicateFilterViewRequest--;
}

core.int buildCounterDuplicateFilterViewResponse = 0;
api.DuplicateFilterViewResponse buildDuplicateFilterViewResponse() {
  var o = api.DuplicateFilterViewResponse();
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
    checkFilterView(o.filter as api.FilterView);
  }
  buildCounterDuplicateFilterViewResponse--;
}

core.int buildCounterDuplicateSheetRequest = 0;
api.DuplicateSheetRequest buildDuplicateSheetRequest() {
  var o = api.DuplicateSheetRequest();
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
    unittest.expect(o.insertSheetIndex, unittest.equals(42));
    unittest.expect(o.newSheetId, unittest.equals(42));
    unittest.expect(o.newSheetName, unittest.equals('foo'));
    unittest.expect(o.sourceSheetId, unittest.equals(42));
  }
  buildCounterDuplicateSheetRequest--;
}

core.int buildCounterDuplicateSheetResponse = 0;
api.DuplicateSheetResponse buildDuplicateSheetResponse() {
  var o = api.DuplicateSheetResponse();
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
    checkSheetProperties(o.properties as api.SheetProperties);
  }
  buildCounterDuplicateSheetResponse--;
}

core.List<core.String> buildUnnamed496() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed496(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed497() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed497(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEditors = 0;
api.Editors buildEditors() {
  var o = api.Editors();
  buildCounterEditors++;
  if (buildCounterEditors < 3) {
    o.domainUsersCanEdit = true;
    o.groups = buildUnnamed496();
    o.users = buildUnnamed497();
  }
  buildCounterEditors--;
  return o;
}

void checkEditors(api.Editors o) {
  buildCounterEditors++;
  if (buildCounterEditors < 3) {
    unittest.expect(o.domainUsersCanEdit, unittest.isTrue);
    checkUnnamed496(o.groups);
    checkUnnamed497(o.users);
  }
  buildCounterEditors--;
}

core.int buildCounterEmbeddedChart = 0;
api.EmbeddedChart buildEmbeddedChart() {
  var o = api.EmbeddedChart();
  buildCounterEmbeddedChart++;
  if (buildCounterEmbeddedChart < 3) {
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
    unittest.expect(o.chartId, unittest.equals(42));
    checkEmbeddedObjectPosition(o.position as api.EmbeddedObjectPosition);
    checkChartSpec(o.spec as api.ChartSpec);
  }
  buildCounterEmbeddedChart--;
}

core.int buildCounterEmbeddedObjectPosition = 0;
api.EmbeddedObjectPosition buildEmbeddedObjectPosition() {
  var o = api.EmbeddedObjectPosition();
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
    unittest.expect(o.newSheet, unittest.isTrue);
    checkOverlayPosition(o.overlayPosition as api.OverlayPosition);
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterEmbeddedObjectPosition--;
}

core.int buildCounterErrorValue = 0;
api.ErrorValue buildErrorValue() {
  var o = api.ErrorValue();
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
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterErrorValue--;
}

core.int buildCounterExtendedValue = 0;
api.ExtendedValue buildExtendedValue() {
  var o = api.ExtendedValue();
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
    unittest.expect(o.boolValue, unittest.isTrue);
    checkErrorValue(o.errorValue as api.ErrorValue);
    unittest.expect(o.formulaValue, unittest.equals('foo'));
    unittest.expect(o.numberValue, unittest.equals(42.0));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterExtendedValue--;
}

core.List<core.String> buildUnnamed498() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed498(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFilterCriteria = 0;
api.FilterCriteria buildFilterCriteria() {
  var o = api.FilterCriteria();
  buildCounterFilterCriteria++;
  if (buildCounterFilterCriteria < 3) {
    o.condition = buildBooleanCondition();
    o.hiddenValues = buildUnnamed498();
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
    checkBooleanCondition(o.condition as api.BooleanCondition);
    checkUnnamed498(o.hiddenValues);
    checkColor(o.visibleBackgroundColor as api.Color);
    checkColorStyle(o.visibleBackgroundColorStyle as api.ColorStyle);
    checkColor(o.visibleForegroundColor as api.Color);
    checkColorStyle(o.visibleForegroundColorStyle as api.ColorStyle);
  }
  buildCounterFilterCriteria--;
}

core.int buildCounterFilterSpec = 0;
api.FilterSpec buildFilterSpec() {
  var o = api.FilterSpec();
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
    unittest.expect(o.columnIndex, unittest.equals(42));
    checkDataSourceColumnReference(
        o.dataSourceColumnReference as api.DataSourceColumnReference);
    checkFilterCriteria(o.filterCriteria as api.FilterCriteria);
  }
  buildCounterFilterSpec--;
}

core.Map<core.String, api.FilterCriteria> buildUnnamed499() {
  var o = <core.String, api.FilterCriteria>{};
  o['x'] = buildFilterCriteria();
  o['y'] = buildFilterCriteria();
  return o;
}

void checkUnnamed499(core.Map<core.String, api.FilterCriteria> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterCriteria(o['x'] as api.FilterCriteria);
  checkFilterCriteria(o['y'] as api.FilterCriteria);
}

core.List<api.FilterSpec> buildUnnamed500() {
  var o = <api.FilterSpec>[];
  o.add(buildFilterSpec());
  o.add(buildFilterSpec());
  return o;
}

void checkUnnamed500(core.List<api.FilterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterSpec(o[0] as api.FilterSpec);
  checkFilterSpec(o[1] as api.FilterSpec);
}

core.List<api.SortSpec> buildUnnamed501() {
  var o = <api.SortSpec>[];
  o.add(buildSortSpec());
  o.add(buildSortSpec());
  return o;
}

void checkUnnamed501(core.List<api.SortSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortSpec(o[0] as api.SortSpec);
  checkSortSpec(o[1] as api.SortSpec);
}

core.int buildCounterFilterView = 0;
api.FilterView buildFilterView() {
  var o = api.FilterView();
  buildCounterFilterView++;
  if (buildCounterFilterView < 3) {
    o.criteria = buildUnnamed499();
    o.filterSpecs = buildUnnamed500();
    o.filterViewId = 42;
    o.namedRangeId = 'foo';
    o.range = buildGridRange();
    o.sortSpecs = buildUnnamed501();
    o.title = 'foo';
  }
  buildCounterFilterView--;
  return o;
}

void checkFilterView(api.FilterView o) {
  buildCounterFilterView++;
  if (buildCounterFilterView < 3) {
    checkUnnamed499(o.criteria);
    checkUnnamed500(o.filterSpecs);
    unittest.expect(o.filterViewId, unittest.equals(42));
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
    checkGridRange(o.range as api.GridRange);
    checkUnnamed501(o.sortSpecs);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterFilterView--;
}

core.int buildCounterFindReplaceRequest = 0;
api.FindReplaceRequest buildFindReplaceRequest() {
  var o = api.FindReplaceRequest();
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
    unittest.expect(o.allSheets, unittest.isTrue);
    unittest.expect(o.find, unittest.equals('foo'));
    unittest.expect(o.includeFormulas, unittest.isTrue);
    unittest.expect(o.matchCase, unittest.isTrue);
    unittest.expect(o.matchEntireCell, unittest.isTrue);
    checkGridRange(o.range as api.GridRange);
    unittest.expect(o.replacement, unittest.equals('foo'));
    unittest.expect(o.searchByRegex, unittest.isTrue);
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterFindReplaceRequest--;
}

core.int buildCounterFindReplaceResponse = 0;
api.FindReplaceResponse buildFindReplaceResponse() {
  var o = api.FindReplaceResponse();
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
    unittest.expect(o.formulasChanged, unittest.equals(42));
    unittest.expect(o.occurrencesChanged, unittest.equals(42));
    unittest.expect(o.rowsChanged, unittest.equals(42));
    unittest.expect(o.sheetsChanged, unittest.equals(42));
    unittest.expect(o.valuesChanged, unittest.equals(42));
  }
  buildCounterFindReplaceResponse--;
}

core.List<api.DataFilter> buildUnnamed502() {
  var o = <api.DataFilter>[];
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

void checkUnnamed502(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0] as api.DataFilter);
  checkDataFilter(o[1] as api.DataFilter);
}

core.int buildCounterGetSpreadsheetByDataFilterRequest = 0;
api.GetSpreadsheetByDataFilterRequest buildGetSpreadsheetByDataFilterRequest() {
  var o = api.GetSpreadsheetByDataFilterRequest();
  buildCounterGetSpreadsheetByDataFilterRequest++;
  if (buildCounterGetSpreadsheetByDataFilterRequest < 3) {
    o.dataFilters = buildUnnamed502();
    o.includeGridData = true;
  }
  buildCounterGetSpreadsheetByDataFilterRequest--;
  return o;
}

void checkGetSpreadsheetByDataFilterRequest(
    api.GetSpreadsheetByDataFilterRequest o) {
  buildCounterGetSpreadsheetByDataFilterRequest++;
  if (buildCounterGetSpreadsheetByDataFilterRequest < 3) {
    checkUnnamed502(o.dataFilters);
    unittest.expect(o.includeGridData, unittest.isTrue);
  }
  buildCounterGetSpreadsheetByDataFilterRequest--;
}

core.int buildCounterGradientRule = 0;
api.GradientRule buildGradientRule() {
  var o = api.GradientRule();
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
    checkInterpolationPoint(o.maxpoint as api.InterpolationPoint);
    checkInterpolationPoint(o.midpoint as api.InterpolationPoint);
    checkInterpolationPoint(o.minpoint as api.InterpolationPoint);
  }
  buildCounterGradientRule--;
}

core.int buildCounterGridCoordinate = 0;
api.GridCoordinate buildGridCoordinate() {
  var o = api.GridCoordinate();
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
    unittest.expect(o.columnIndex, unittest.equals(42));
    unittest.expect(o.rowIndex, unittest.equals(42));
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterGridCoordinate--;
}

core.List<api.DimensionProperties> buildUnnamed503() {
  var o = <api.DimensionProperties>[];
  o.add(buildDimensionProperties());
  o.add(buildDimensionProperties());
  return o;
}

void checkUnnamed503(core.List<api.DimensionProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionProperties(o[0] as api.DimensionProperties);
  checkDimensionProperties(o[1] as api.DimensionProperties);
}

core.List<api.RowData> buildUnnamed504() {
  var o = <api.RowData>[];
  o.add(buildRowData());
  o.add(buildRowData());
  return o;
}

void checkUnnamed504(core.List<api.RowData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRowData(o[0] as api.RowData);
  checkRowData(o[1] as api.RowData);
}

core.List<api.DimensionProperties> buildUnnamed505() {
  var o = <api.DimensionProperties>[];
  o.add(buildDimensionProperties());
  o.add(buildDimensionProperties());
  return o;
}

void checkUnnamed505(core.List<api.DimensionProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionProperties(o[0] as api.DimensionProperties);
  checkDimensionProperties(o[1] as api.DimensionProperties);
}

core.int buildCounterGridData = 0;
api.GridData buildGridData() {
  var o = api.GridData();
  buildCounterGridData++;
  if (buildCounterGridData < 3) {
    o.columnMetadata = buildUnnamed503();
    o.rowData = buildUnnamed504();
    o.rowMetadata = buildUnnamed505();
    o.startColumn = 42;
    o.startRow = 42;
  }
  buildCounterGridData--;
  return o;
}

void checkGridData(api.GridData o) {
  buildCounterGridData++;
  if (buildCounterGridData < 3) {
    checkUnnamed503(o.columnMetadata);
    checkUnnamed504(o.rowData);
    checkUnnamed505(o.rowMetadata);
    unittest.expect(o.startColumn, unittest.equals(42));
    unittest.expect(o.startRow, unittest.equals(42));
  }
  buildCounterGridData--;
}

core.int buildCounterGridProperties = 0;
api.GridProperties buildGridProperties() {
  var o = api.GridProperties();
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
    unittest.expect(o.columnCount, unittest.equals(42));
    unittest.expect(o.columnGroupControlAfter, unittest.isTrue);
    unittest.expect(o.frozenColumnCount, unittest.equals(42));
    unittest.expect(o.frozenRowCount, unittest.equals(42));
    unittest.expect(o.hideGridlines, unittest.isTrue);
    unittest.expect(o.rowCount, unittest.equals(42));
    unittest.expect(o.rowGroupControlAfter, unittest.isTrue);
  }
  buildCounterGridProperties--;
}

core.int buildCounterGridRange = 0;
api.GridRange buildGridRange() {
  var o = api.GridRange();
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
    unittest.expect(o.endColumnIndex, unittest.equals(42));
    unittest.expect(o.endRowIndex, unittest.equals(42));
    unittest.expect(o.sheetId, unittest.equals(42));
    unittest.expect(o.startColumnIndex, unittest.equals(42));
    unittest.expect(o.startRowIndex, unittest.equals(42));
  }
  buildCounterGridRange--;
}

core.List<api.HistogramSeries> buildUnnamed506() {
  var o = <api.HistogramSeries>[];
  o.add(buildHistogramSeries());
  o.add(buildHistogramSeries());
  return o;
}

void checkUnnamed506(core.List<api.HistogramSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistogramSeries(o[0] as api.HistogramSeries);
  checkHistogramSeries(o[1] as api.HistogramSeries);
}

core.int buildCounterHistogramChartSpec = 0;
api.HistogramChartSpec buildHistogramChartSpec() {
  var o = api.HistogramChartSpec();
  buildCounterHistogramChartSpec++;
  if (buildCounterHistogramChartSpec < 3) {
    o.bucketSize = 42.0;
    o.legendPosition = 'foo';
    o.outlierPercentile = 42.0;
    o.series = buildUnnamed506();
    o.showItemDividers = true;
  }
  buildCounterHistogramChartSpec--;
  return o;
}

void checkHistogramChartSpec(api.HistogramChartSpec o) {
  buildCounterHistogramChartSpec++;
  if (buildCounterHistogramChartSpec < 3) {
    unittest.expect(o.bucketSize, unittest.equals(42.0));
    unittest.expect(o.legendPosition, unittest.equals('foo'));
    unittest.expect(o.outlierPercentile, unittest.equals(42.0));
    checkUnnamed506(o.series);
    unittest.expect(o.showItemDividers, unittest.isTrue);
  }
  buildCounterHistogramChartSpec--;
}

core.int buildCounterHistogramRule = 0;
api.HistogramRule buildHistogramRule() {
  var o = api.HistogramRule();
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
    unittest.expect(o.end, unittest.equals(42.0));
    unittest.expect(o.interval, unittest.equals(42.0));
    unittest.expect(o.start, unittest.equals(42.0));
  }
  buildCounterHistogramRule--;
}

core.int buildCounterHistogramSeries = 0;
api.HistogramSeries buildHistogramSeries() {
  var o = api.HistogramSeries();
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
    checkColor(o.barColor as api.Color);
    checkColorStyle(o.barColorStyle as api.ColorStyle);
    checkChartData(o.data as api.ChartData);
  }
  buildCounterHistogramSeries--;
}

core.int buildCounterInsertDimensionRequest = 0;
api.InsertDimensionRequest buildInsertDimensionRequest() {
  var o = api.InsertDimensionRequest();
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
    unittest.expect(o.inheritFromBefore, unittest.isTrue);
    checkDimensionRange(o.range as api.DimensionRange);
  }
  buildCounterInsertDimensionRequest--;
}

core.int buildCounterInsertRangeRequest = 0;
api.InsertRangeRequest buildInsertRangeRequest() {
  var o = api.InsertRangeRequest();
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
    checkGridRange(o.range as api.GridRange);
    unittest.expect(o.shiftDimension, unittest.equals('foo'));
  }
  buildCounterInsertRangeRequest--;
}

core.int buildCounterInterpolationPoint = 0;
api.InterpolationPoint buildInterpolationPoint() {
  var o = api.InterpolationPoint();
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
    checkColor(o.color as api.Color);
    checkColorStyle(o.colorStyle as api.ColorStyle);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterInterpolationPoint--;
}

core.int buildCounterInterval = 0;
api.Interval buildInterval() {
  var o = api.Interval();
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
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterInterval--;
}

core.int buildCounterIterativeCalculationSettings = 0;
api.IterativeCalculationSettings buildIterativeCalculationSettings() {
  var o = api.IterativeCalculationSettings();
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
    unittest.expect(o.convergenceThreshold, unittest.equals(42.0));
    unittest.expect(o.maxIterations, unittest.equals(42));
  }
  buildCounterIterativeCalculationSettings--;
}

core.int buildCounterKeyValueFormat = 0;
api.KeyValueFormat buildKeyValueFormat() {
  var o = api.KeyValueFormat();
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
    checkTextPosition(o.position as api.TextPosition);
    checkTextFormat(o.textFormat as api.TextFormat);
  }
  buildCounterKeyValueFormat--;
}

core.int buildCounterLineStyle = 0;
api.LineStyle buildLineStyle() {
  var o = api.LineStyle();
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
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterLineStyle--;
}

core.List<api.ManualRuleGroup> buildUnnamed507() {
  var o = <api.ManualRuleGroup>[];
  o.add(buildManualRuleGroup());
  o.add(buildManualRuleGroup());
  return o;
}

void checkUnnamed507(core.List<api.ManualRuleGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManualRuleGroup(o[0] as api.ManualRuleGroup);
  checkManualRuleGroup(o[1] as api.ManualRuleGroup);
}

core.int buildCounterManualRule = 0;
api.ManualRule buildManualRule() {
  var o = api.ManualRule();
  buildCounterManualRule++;
  if (buildCounterManualRule < 3) {
    o.groups = buildUnnamed507();
  }
  buildCounterManualRule--;
  return o;
}

void checkManualRule(api.ManualRule o) {
  buildCounterManualRule++;
  if (buildCounterManualRule < 3) {
    checkUnnamed507(o.groups);
  }
  buildCounterManualRule--;
}

core.List<api.ExtendedValue> buildUnnamed508() {
  var o = <api.ExtendedValue>[];
  o.add(buildExtendedValue());
  o.add(buildExtendedValue());
  return o;
}

void checkUnnamed508(core.List<api.ExtendedValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtendedValue(o[0] as api.ExtendedValue);
  checkExtendedValue(o[1] as api.ExtendedValue);
}

core.int buildCounterManualRuleGroup = 0;
api.ManualRuleGroup buildManualRuleGroup() {
  var o = api.ManualRuleGroup();
  buildCounterManualRuleGroup++;
  if (buildCounterManualRuleGroup < 3) {
    o.groupName = buildExtendedValue();
    o.items = buildUnnamed508();
  }
  buildCounterManualRuleGroup--;
  return o;
}

void checkManualRuleGroup(api.ManualRuleGroup o) {
  buildCounterManualRuleGroup++;
  if (buildCounterManualRuleGroup < 3) {
    checkExtendedValue(o.groupName as api.ExtendedValue);
    checkUnnamed508(o.items);
  }
  buildCounterManualRuleGroup--;
}

core.List<api.DataFilter> buildUnnamed509() {
  var o = <api.DataFilter>[];
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

void checkUnnamed509(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0] as api.DataFilter);
  checkDataFilter(o[1] as api.DataFilter);
}

core.int buildCounterMatchedDeveloperMetadata = 0;
api.MatchedDeveloperMetadata buildMatchedDeveloperMetadata() {
  var o = api.MatchedDeveloperMetadata();
  buildCounterMatchedDeveloperMetadata++;
  if (buildCounterMatchedDeveloperMetadata < 3) {
    o.dataFilters = buildUnnamed509();
    o.developerMetadata = buildDeveloperMetadata();
  }
  buildCounterMatchedDeveloperMetadata--;
  return o;
}

void checkMatchedDeveloperMetadata(api.MatchedDeveloperMetadata o) {
  buildCounterMatchedDeveloperMetadata++;
  if (buildCounterMatchedDeveloperMetadata < 3) {
    checkUnnamed509(o.dataFilters);
    checkDeveloperMetadata(o.developerMetadata as api.DeveloperMetadata);
  }
  buildCounterMatchedDeveloperMetadata--;
}

core.List<api.DataFilter> buildUnnamed510() {
  var o = <api.DataFilter>[];
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

void checkUnnamed510(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0] as api.DataFilter);
  checkDataFilter(o[1] as api.DataFilter);
}

core.int buildCounterMatchedValueRange = 0;
api.MatchedValueRange buildMatchedValueRange() {
  var o = api.MatchedValueRange();
  buildCounterMatchedValueRange++;
  if (buildCounterMatchedValueRange < 3) {
    o.dataFilters = buildUnnamed510();
    o.valueRange = buildValueRange();
  }
  buildCounterMatchedValueRange--;
  return o;
}

void checkMatchedValueRange(api.MatchedValueRange o) {
  buildCounterMatchedValueRange++;
  if (buildCounterMatchedValueRange < 3) {
    checkUnnamed510(o.dataFilters);
    checkValueRange(o.valueRange as api.ValueRange);
  }
  buildCounterMatchedValueRange--;
}

core.int buildCounterMergeCellsRequest = 0;
api.MergeCellsRequest buildMergeCellsRequest() {
  var o = api.MergeCellsRequest();
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
    unittest.expect(o.mergeType, unittest.equals('foo'));
    checkGridRange(o.range as api.GridRange);
  }
  buildCounterMergeCellsRequest--;
}

core.int buildCounterMoveDimensionRequest = 0;
api.MoveDimensionRequest buildMoveDimensionRequest() {
  var o = api.MoveDimensionRequest();
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
    unittest.expect(o.destinationIndex, unittest.equals(42));
    checkDimensionRange(o.source as api.DimensionRange);
  }
  buildCounterMoveDimensionRequest--;
}

core.int buildCounterNamedRange = 0;
api.NamedRange buildNamedRange() {
  var o = api.NamedRange();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
    checkGridRange(o.range as api.GridRange);
  }
  buildCounterNamedRange--;
}

core.int buildCounterNumberFormat = 0;
api.NumberFormat buildNumberFormat() {
  var o = api.NumberFormat();
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
    unittest.expect(o.pattern, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterNumberFormat--;
}

core.int buildCounterOrgChartSpec = 0;
api.OrgChartSpec buildOrgChartSpec() {
  var o = api.OrgChartSpec();
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
    checkChartData(o.labels as api.ChartData);
    checkColor(o.nodeColor as api.Color);
    checkColorStyle(o.nodeColorStyle as api.ColorStyle);
    unittest.expect(o.nodeSize, unittest.equals('foo'));
    checkChartData(o.parentLabels as api.ChartData);
    checkColor(o.selectedNodeColor as api.Color);
    checkColorStyle(o.selectedNodeColorStyle as api.ColorStyle);
    checkChartData(o.tooltips as api.ChartData);
  }
  buildCounterOrgChartSpec--;
}

core.int buildCounterOverlayPosition = 0;
api.OverlayPosition buildOverlayPosition() {
  var o = api.OverlayPosition();
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
    checkGridCoordinate(o.anchorCell as api.GridCoordinate);
    unittest.expect(o.heightPixels, unittest.equals(42));
    unittest.expect(o.offsetXPixels, unittest.equals(42));
    unittest.expect(o.offsetYPixels, unittest.equals(42));
    unittest.expect(o.widthPixels, unittest.equals(42));
  }
  buildCounterOverlayPosition--;
}

core.int buildCounterPadding = 0;
api.Padding buildPadding() {
  var o = api.Padding();
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
    unittest.expect(o.bottom, unittest.equals(42));
    unittest.expect(o.left, unittest.equals(42));
    unittest.expect(o.right, unittest.equals(42));
    unittest.expect(o.top, unittest.equals(42));
  }
  buildCounterPadding--;
}

core.int buildCounterPasteDataRequest = 0;
api.PasteDataRequest buildPasteDataRequest() {
  var o = api.PasteDataRequest();
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
    checkGridCoordinate(o.coordinate as api.GridCoordinate);
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.delimiter, unittest.equals('foo'));
    unittest.expect(o.html, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterPasteDataRequest--;
}

core.int buildCounterPieChartSpec = 0;
api.PieChartSpec buildPieChartSpec() {
  var o = api.PieChartSpec();
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
    checkChartData(o.domain as api.ChartData);
    unittest.expect(o.legendPosition, unittest.equals('foo'));
    unittest.expect(o.pieHole, unittest.equals(42.0));
    checkChartData(o.series as api.ChartData);
    unittest.expect(o.threeDimensional, unittest.isTrue);
  }
  buildCounterPieChartSpec--;
}

core.List<core.String> buildUnnamed511() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed511(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPivotFilterCriteria = 0;
api.PivotFilterCriteria buildPivotFilterCriteria() {
  var o = api.PivotFilterCriteria();
  buildCounterPivotFilterCriteria++;
  if (buildCounterPivotFilterCriteria < 3) {
    o.visibleValues = buildUnnamed511();
  }
  buildCounterPivotFilterCriteria--;
  return o;
}

void checkPivotFilterCriteria(api.PivotFilterCriteria o) {
  buildCounterPivotFilterCriteria++;
  if (buildCounterPivotFilterCriteria < 3) {
    checkUnnamed511(o.visibleValues);
  }
  buildCounterPivotFilterCriteria--;
}

core.int buildCounterPivotFilterSpec = 0;
api.PivotFilterSpec buildPivotFilterSpec() {
  var o = api.PivotFilterSpec();
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
    unittest.expect(o.columnOffsetIndex, unittest.equals(42));
    checkDataSourceColumnReference(
        o.dataSourceColumnReference as api.DataSourceColumnReference);
    checkPivotFilterCriteria(o.filterCriteria as api.PivotFilterCriteria);
  }
  buildCounterPivotFilterSpec--;
}

core.List<api.PivotGroupValueMetadata> buildUnnamed512() {
  var o = <api.PivotGroupValueMetadata>[];
  o.add(buildPivotGroupValueMetadata());
  o.add(buildPivotGroupValueMetadata());
  return o;
}

void checkUnnamed512(core.List<api.PivotGroupValueMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotGroupValueMetadata(o[0] as api.PivotGroupValueMetadata);
  checkPivotGroupValueMetadata(o[1] as api.PivotGroupValueMetadata);
}

core.int buildCounterPivotGroup = 0;
api.PivotGroup buildPivotGroup() {
  var o = api.PivotGroup();
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
    o.valueMetadata = buildUnnamed512();
  }
  buildCounterPivotGroup--;
  return o;
}

void checkPivotGroup(api.PivotGroup o) {
  buildCounterPivotGroup++;
  if (buildCounterPivotGroup < 3) {
    checkDataSourceColumnReference(
        o.dataSourceColumnReference as api.DataSourceColumnReference);
    checkPivotGroupLimit(o.groupLimit as api.PivotGroupLimit);
    checkPivotGroupRule(o.groupRule as api.PivotGroupRule);
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.repeatHeadings, unittest.isTrue);
    unittest.expect(o.showTotals, unittest.isTrue);
    unittest.expect(o.sortOrder, unittest.equals('foo'));
    unittest.expect(o.sourceColumnOffset, unittest.equals(42));
    checkPivotGroupSortValueBucket(
        o.valueBucket as api.PivotGroupSortValueBucket);
    checkUnnamed512(o.valueMetadata);
  }
  buildCounterPivotGroup--;
}

core.int buildCounterPivotGroupLimit = 0;
api.PivotGroupLimit buildPivotGroupLimit() {
  var o = api.PivotGroupLimit();
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
    unittest.expect(o.applyOrder, unittest.equals(42));
    unittest.expect(o.countLimit, unittest.equals(42));
  }
  buildCounterPivotGroupLimit--;
}

core.int buildCounterPivotGroupRule = 0;
api.PivotGroupRule buildPivotGroupRule() {
  var o = api.PivotGroupRule();
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
    checkDateTimeRule(o.dateTimeRule as api.DateTimeRule);
    checkHistogramRule(o.histogramRule as api.HistogramRule);
    checkManualRule(o.manualRule as api.ManualRule);
  }
  buildCounterPivotGroupRule--;
}

core.List<api.ExtendedValue> buildUnnamed513() {
  var o = <api.ExtendedValue>[];
  o.add(buildExtendedValue());
  o.add(buildExtendedValue());
  return o;
}

void checkUnnamed513(core.List<api.ExtendedValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtendedValue(o[0] as api.ExtendedValue);
  checkExtendedValue(o[1] as api.ExtendedValue);
}

core.int buildCounterPivotGroupSortValueBucket = 0;
api.PivotGroupSortValueBucket buildPivotGroupSortValueBucket() {
  var o = api.PivotGroupSortValueBucket();
  buildCounterPivotGroupSortValueBucket++;
  if (buildCounterPivotGroupSortValueBucket < 3) {
    o.buckets = buildUnnamed513();
    o.valuesIndex = 42;
  }
  buildCounterPivotGroupSortValueBucket--;
  return o;
}

void checkPivotGroupSortValueBucket(api.PivotGroupSortValueBucket o) {
  buildCounterPivotGroupSortValueBucket++;
  if (buildCounterPivotGroupSortValueBucket < 3) {
    checkUnnamed513(o.buckets);
    unittest.expect(o.valuesIndex, unittest.equals(42));
  }
  buildCounterPivotGroupSortValueBucket--;
}

core.int buildCounterPivotGroupValueMetadata = 0;
api.PivotGroupValueMetadata buildPivotGroupValueMetadata() {
  var o = api.PivotGroupValueMetadata();
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
    unittest.expect(o.collapsed, unittest.isTrue);
    checkExtendedValue(o.value as api.ExtendedValue);
  }
  buildCounterPivotGroupValueMetadata--;
}

core.List<api.PivotGroup> buildUnnamed514() {
  var o = <api.PivotGroup>[];
  o.add(buildPivotGroup());
  o.add(buildPivotGroup());
  return o;
}

void checkUnnamed514(core.List<api.PivotGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotGroup(o[0] as api.PivotGroup);
  checkPivotGroup(o[1] as api.PivotGroup);
}

core.Map<core.String, api.PivotFilterCriteria> buildUnnamed515() {
  var o = <core.String, api.PivotFilterCriteria>{};
  o['x'] = buildPivotFilterCriteria();
  o['y'] = buildPivotFilterCriteria();
  return o;
}

void checkUnnamed515(core.Map<core.String, api.PivotFilterCriteria> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotFilterCriteria(o['x'] as api.PivotFilterCriteria);
  checkPivotFilterCriteria(o['y'] as api.PivotFilterCriteria);
}

core.List<api.PivotFilterSpec> buildUnnamed516() {
  var o = <api.PivotFilterSpec>[];
  o.add(buildPivotFilterSpec());
  o.add(buildPivotFilterSpec());
  return o;
}

void checkUnnamed516(core.List<api.PivotFilterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotFilterSpec(o[0] as api.PivotFilterSpec);
  checkPivotFilterSpec(o[1] as api.PivotFilterSpec);
}

core.List<api.PivotGroup> buildUnnamed517() {
  var o = <api.PivotGroup>[];
  o.add(buildPivotGroup());
  o.add(buildPivotGroup());
  return o;
}

void checkUnnamed517(core.List<api.PivotGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotGroup(o[0] as api.PivotGroup);
  checkPivotGroup(o[1] as api.PivotGroup);
}

core.List<api.PivotValue> buildUnnamed518() {
  var o = <api.PivotValue>[];
  o.add(buildPivotValue());
  o.add(buildPivotValue());
  return o;
}

void checkUnnamed518(core.List<api.PivotValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotValue(o[0] as api.PivotValue);
  checkPivotValue(o[1] as api.PivotValue);
}

core.int buildCounterPivotTable = 0;
api.PivotTable buildPivotTable() {
  var o = api.PivotTable();
  buildCounterPivotTable++;
  if (buildCounterPivotTable < 3) {
    o.columns = buildUnnamed514();
    o.criteria = buildUnnamed515();
    o.dataExecutionStatus = buildDataExecutionStatus();
    o.dataSourceId = 'foo';
    o.filterSpecs = buildUnnamed516();
    o.rows = buildUnnamed517();
    o.source = buildGridRange();
    o.valueLayout = 'foo';
    o.values = buildUnnamed518();
  }
  buildCounterPivotTable--;
  return o;
}

void checkPivotTable(api.PivotTable o) {
  buildCounterPivotTable++;
  if (buildCounterPivotTable < 3) {
    checkUnnamed514(o.columns);
    checkUnnamed515(o.criteria);
    checkDataExecutionStatus(o.dataExecutionStatus as api.DataExecutionStatus);
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
    checkUnnamed516(o.filterSpecs);
    checkUnnamed517(o.rows);
    checkGridRange(o.source as api.GridRange);
    unittest.expect(o.valueLayout, unittest.equals('foo'));
    checkUnnamed518(o.values);
  }
  buildCounterPivotTable--;
}

core.int buildCounterPivotValue = 0;
api.PivotValue buildPivotValue() {
  var o = api.PivotValue();
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
    unittest.expect(o.calculatedDisplayType, unittest.equals('foo'));
    checkDataSourceColumnReference(
        o.dataSourceColumnReference as api.DataSourceColumnReference);
    unittest.expect(o.formula, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sourceColumnOffset, unittest.equals(42));
    unittest.expect(o.summarizeFunction, unittest.equals('foo'));
  }
  buildCounterPivotValue--;
}

core.List<api.GridRange> buildUnnamed519() {
  var o = <api.GridRange>[];
  o.add(buildGridRange());
  o.add(buildGridRange());
  return o;
}

void checkUnnamed519(core.List<api.GridRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGridRange(o[0] as api.GridRange);
  checkGridRange(o[1] as api.GridRange);
}

core.int buildCounterProtectedRange = 0;
api.ProtectedRange buildProtectedRange() {
  var o = api.ProtectedRange();
  buildCounterProtectedRange++;
  if (buildCounterProtectedRange < 3) {
    o.description = 'foo';
    o.editors = buildEditors();
    o.namedRangeId = 'foo';
    o.protectedRangeId = 42;
    o.range = buildGridRange();
    o.requestingUserCanEdit = true;
    o.unprotectedRanges = buildUnnamed519();
    o.warningOnly = true;
  }
  buildCounterProtectedRange--;
  return o;
}

void checkProtectedRange(api.ProtectedRange o) {
  buildCounterProtectedRange++;
  if (buildCounterProtectedRange < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkEditors(o.editors as api.Editors);
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
    unittest.expect(o.protectedRangeId, unittest.equals(42));
    checkGridRange(o.range as api.GridRange);
    unittest.expect(o.requestingUserCanEdit, unittest.isTrue);
    checkUnnamed519(o.unprotectedRanges);
    unittest.expect(o.warningOnly, unittest.isTrue);
  }
  buildCounterProtectedRange--;
}

core.int buildCounterRandomizeRangeRequest = 0;
api.RandomizeRangeRequest buildRandomizeRangeRequest() {
  var o = api.RandomizeRangeRequest();
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
    checkGridRange(o.range as api.GridRange);
  }
  buildCounterRandomizeRangeRequest--;
}

core.int buildCounterRefreshDataSourceObjectExecutionStatus = 0;
api.RefreshDataSourceObjectExecutionStatus
    buildRefreshDataSourceObjectExecutionStatus() {
  var o = api.RefreshDataSourceObjectExecutionStatus();
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
    checkDataExecutionStatus(o.dataExecutionStatus as api.DataExecutionStatus);
    checkDataSourceObjectReference(
        o.reference as api.DataSourceObjectReference);
  }
  buildCounterRefreshDataSourceObjectExecutionStatus--;
}

core.int buildCounterRefreshDataSourceRequest = 0;
api.RefreshDataSourceRequest buildRefreshDataSourceRequest() {
  var o = api.RefreshDataSourceRequest();
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
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
    unittest.expect(o.force, unittest.isTrue);
    unittest.expect(o.isAll, unittest.isTrue);
    checkDataSourceObjectReferences(
        o.references as api.DataSourceObjectReferences);
  }
  buildCounterRefreshDataSourceRequest--;
}

core.List<api.RefreshDataSourceObjectExecutionStatus> buildUnnamed520() {
  var o = <api.RefreshDataSourceObjectExecutionStatus>[];
  o.add(buildRefreshDataSourceObjectExecutionStatus());
  o.add(buildRefreshDataSourceObjectExecutionStatus());
  return o;
}

void checkUnnamed520(core.List<api.RefreshDataSourceObjectExecutionStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRefreshDataSourceObjectExecutionStatus(
      o[0] as api.RefreshDataSourceObjectExecutionStatus);
  checkRefreshDataSourceObjectExecutionStatus(
      o[1] as api.RefreshDataSourceObjectExecutionStatus);
}

core.int buildCounterRefreshDataSourceResponse = 0;
api.RefreshDataSourceResponse buildRefreshDataSourceResponse() {
  var o = api.RefreshDataSourceResponse();
  buildCounterRefreshDataSourceResponse++;
  if (buildCounterRefreshDataSourceResponse < 3) {
    o.statuses = buildUnnamed520();
  }
  buildCounterRefreshDataSourceResponse--;
  return o;
}

void checkRefreshDataSourceResponse(api.RefreshDataSourceResponse o) {
  buildCounterRefreshDataSourceResponse++;
  if (buildCounterRefreshDataSourceResponse < 3) {
    checkUnnamed520(o.statuses);
  }
  buildCounterRefreshDataSourceResponse--;
}

core.int buildCounterRepeatCellRequest = 0;
api.RepeatCellRequest buildRepeatCellRequest() {
  var o = api.RepeatCellRequest();
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
    checkCellData(o.cell as api.CellData);
    unittest.expect(o.fields, unittest.equals('foo'));
    checkGridRange(o.range as api.GridRange);
  }
  buildCounterRepeatCellRequest--;
}

core.int buildCounterRequest = 0;
api.Request buildRequest() {
  var o = api.Request();
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
    checkAddBandingRequest(o.addBanding as api.AddBandingRequest);
    checkAddChartRequest(o.addChart as api.AddChartRequest);
    checkAddConditionalFormatRuleRequest(
        o.addConditionalFormatRule as api.AddConditionalFormatRuleRequest);
    checkAddDataSourceRequest(o.addDataSource as api.AddDataSourceRequest);
    checkAddDimensionGroupRequest(
        o.addDimensionGroup as api.AddDimensionGroupRequest);
    checkAddFilterViewRequest(o.addFilterView as api.AddFilterViewRequest);
    checkAddNamedRangeRequest(o.addNamedRange as api.AddNamedRangeRequest);
    checkAddProtectedRangeRequest(
        o.addProtectedRange as api.AddProtectedRangeRequest);
    checkAddSheetRequest(o.addSheet as api.AddSheetRequest);
    checkAddSlicerRequest(o.addSlicer as api.AddSlicerRequest);
    checkAppendCellsRequest(o.appendCells as api.AppendCellsRequest);
    checkAppendDimensionRequest(
        o.appendDimension as api.AppendDimensionRequest);
    checkAutoFillRequest(o.autoFill as api.AutoFillRequest);
    checkAutoResizeDimensionsRequest(
        o.autoResizeDimensions as api.AutoResizeDimensionsRequest);
    checkClearBasicFilterRequest(
        o.clearBasicFilter as api.ClearBasicFilterRequest);
    checkCopyPasteRequest(o.copyPaste as api.CopyPasteRequest);
    checkCreateDeveloperMetadataRequest(
        o.createDeveloperMetadata as api.CreateDeveloperMetadataRequest);
    checkCutPasteRequest(o.cutPaste as api.CutPasteRequest);
    checkDeleteBandingRequest(o.deleteBanding as api.DeleteBandingRequest);
    checkDeleteConditionalFormatRuleRequest(o.deleteConditionalFormatRule
        as api.DeleteConditionalFormatRuleRequest);
    checkDeleteDataSourceRequest(
        o.deleteDataSource as api.DeleteDataSourceRequest);
    checkDeleteDeveloperMetadataRequest(
        o.deleteDeveloperMetadata as api.DeleteDeveloperMetadataRequest);
    checkDeleteDimensionRequest(
        o.deleteDimension as api.DeleteDimensionRequest);
    checkDeleteDimensionGroupRequest(
        o.deleteDimensionGroup as api.DeleteDimensionGroupRequest);
    checkDeleteDuplicatesRequest(
        o.deleteDuplicates as api.DeleteDuplicatesRequest);
    checkDeleteEmbeddedObjectRequest(
        o.deleteEmbeddedObject as api.DeleteEmbeddedObjectRequest);
    checkDeleteFilterViewRequest(
        o.deleteFilterView as api.DeleteFilterViewRequest);
    checkDeleteNamedRangeRequest(
        o.deleteNamedRange as api.DeleteNamedRangeRequest);
    checkDeleteProtectedRangeRequest(
        o.deleteProtectedRange as api.DeleteProtectedRangeRequest);
    checkDeleteRangeRequest(o.deleteRange as api.DeleteRangeRequest);
    checkDeleteSheetRequest(o.deleteSheet as api.DeleteSheetRequest);
    checkDuplicateFilterViewRequest(
        o.duplicateFilterView as api.DuplicateFilterViewRequest);
    checkDuplicateSheetRequest(o.duplicateSheet as api.DuplicateSheetRequest);
    checkFindReplaceRequest(o.findReplace as api.FindReplaceRequest);
    checkInsertDimensionRequest(
        o.insertDimension as api.InsertDimensionRequest);
    checkInsertRangeRequest(o.insertRange as api.InsertRangeRequest);
    checkMergeCellsRequest(o.mergeCells as api.MergeCellsRequest);
    checkMoveDimensionRequest(o.moveDimension as api.MoveDimensionRequest);
    checkPasteDataRequest(o.pasteData as api.PasteDataRequest);
    checkRandomizeRangeRequest(o.randomizeRange as api.RandomizeRangeRequest);
    checkRefreshDataSourceRequest(
        o.refreshDataSource as api.RefreshDataSourceRequest);
    checkRepeatCellRequest(o.repeatCell as api.RepeatCellRequest);
    checkSetBasicFilterRequest(o.setBasicFilter as api.SetBasicFilterRequest);
    checkSetDataValidationRequest(
        o.setDataValidation as api.SetDataValidationRequest);
    checkSortRangeRequest(o.sortRange as api.SortRangeRequest);
    checkTextToColumnsRequest(o.textToColumns as api.TextToColumnsRequest);
    checkTrimWhitespaceRequest(o.trimWhitespace as api.TrimWhitespaceRequest);
    checkUnmergeCellsRequest(o.unmergeCells as api.UnmergeCellsRequest);
    checkUpdateBandingRequest(o.updateBanding as api.UpdateBandingRequest);
    checkUpdateBordersRequest(o.updateBorders as api.UpdateBordersRequest);
    checkUpdateCellsRequest(o.updateCells as api.UpdateCellsRequest);
    checkUpdateChartSpecRequest(
        o.updateChartSpec as api.UpdateChartSpecRequest);
    checkUpdateConditionalFormatRuleRequest(o.updateConditionalFormatRule
        as api.UpdateConditionalFormatRuleRequest);
    checkUpdateDataSourceRequest(
        o.updateDataSource as api.UpdateDataSourceRequest);
    checkUpdateDeveloperMetadataRequest(
        o.updateDeveloperMetadata as api.UpdateDeveloperMetadataRequest);
    checkUpdateDimensionGroupRequest(
        o.updateDimensionGroup as api.UpdateDimensionGroupRequest);
    checkUpdateDimensionPropertiesRequest(
        o.updateDimensionProperties as api.UpdateDimensionPropertiesRequest);
    checkUpdateEmbeddedObjectPositionRequest(o.updateEmbeddedObjectPosition
        as api.UpdateEmbeddedObjectPositionRequest);
    checkUpdateFilterViewRequest(
        o.updateFilterView as api.UpdateFilterViewRequest);
    checkUpdateNamedRangeRequest(
        o.updateNamedRange as api.UpdateNamedRangeRequest);
    checkUpdateProtectedRangeRequest(
        o.updateProtectedRange as api.UpdateProtectedRangeRequest);
    checkUpdateSheetPropertiesRequest(
        o.updateSheetProperties as api.UpdateSheetPropertiesRequest);
    checkUpdateSlicerSpecRequest(
        o.updateSlicerSpec as api.UpdateSlicerSpecRequest);
    checkUpdateSpreadsheetPropertiesRequest(o.updateSpreadsheetProperties
        as api.UpdateSpreadsheetPropertiesRequest);
  }
  buildCounterRequest--;
}

core.int buildCounterResponse = 0;
api.Response buildResponse() {
  var o = api.Response();
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
    checkAddBandingResponse(o.addBanding as api.AddBandingResponse);
    checkAddChartResponse(o.addChart as api.AddChartResponse);
    checkAddDataSourceResponse(o.addDataSource as api.AddDataSourceResponse);
    checkAddDimensionGroupResponse(
        o.addDimensionGroup as api.AddDimensionGroupResponse);
    checkAddFilterViewResponse(o.addFilterView as api.AddFilterViewResponse);
    checkAddNamedRangeResponse(o.addNamedRange as api.AddNamedRangeResponse);
    checkAddProtectedRangeResponse(
        o.addProtectedRange as api.AddProtectedRangeResponse);
    checkAddSheetResponse(o.addSheet as api.AddSheetResponse);
    checkAddSlicerResponse(o.addSlicer as api.AddSlicerResponse);
    checkCreateDeveloperMetadataResponse(
        o.createDeveloperMetadata as api.CreateDeveloperMetadataResponse);
    checkDeleteConditionalFormatRuleResponse(o.deleteConditionalFormatRule
        as api.DeleteConditionalFormatRuleResponse);
    checkDeleteDeveloperMetadataResponse(
        o.deleteDeveloperMetadata as api.DeleteDeveloperMetadataResponse);
    checkDeleteDimensionGroupResponse(
        o.deleteDimensionGroup as api.DeleteDimensionGroupResponse);
    checkDeleteDuplicatesResponse(
        o.deleteDuplicates as api.DeleteDuplicatesResponse);
    checkDuplicateFilterViewResponse(
        o.duplicateFilterView as api.DuplicateFilterViewResponse);
    checkDuplicateSheetResponse(o.duplicateSheet as api.DuplicateSheetResponse);
    checkFindReplaceResponse(o.findReplace as api.FindReplaceResponse);
    checkRefreshDataSourceResponse(
        o.refreshDataSource as api.RefreshDataSourceResponse);
    checkTrimWhitespaceResponse(o.trimWhitespace as api.TrimWhitespaceResponse);
    checkUpdateConditionalFormatRuleResponse(o.updateConditionalFormatRule
        as api.UpdateConditionalFormatRuleResponse);
    checkUpdateDataSourceResponse(
        o.updateDataSource as api.UpdateDataSourceResponse);
    checkUpdateDeveloperMetadataResponse(
        o.updateDeveloperMetadata as api.UpdateDeveloperMetadataResponse);
    checkUpdateEmbeddedObjectPositionResponse(o.updateEmbeddedObjectPosition
        as api.UpdateEmbeddedObjectPositionResponse);
  }
  buildCounterResponse--;
}

core.List<api.CellData> buildUnnamed521() {
  var o = <api.CellData>[];
  o.add(buildCellData());
  o.add(buildCellData());
  return o;
}

void checkUnnamed521(core.List<api.CellData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCellData(o[0] as api.CellData);
  checkCellData(o[1] as api.CellData);
}

core.int buildCounterRowData = 0;
api.RowData buildRowData() {
  var o = api.RowData();
  buildCounterRowData++;
  if (buildCounterRowData < 3) {
    o.values = buildUnnamed521();
  }
  buildCounterRowData--;
  return o;
}

void checkRowData(api.RowData o) {
  buildCounterRowData++;
  if (buildCounterRowData < 3) {
    checkUnnamed521(o.values);
  }
  buildCounterRowData--;
}

core.int buildCounterScorecardChartSpec = 0;
api.ScorecardChartSpec buildScorecardChartSpec() {
  var o = api.ScorecardChartSpec();
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
    unittest.expect(o.aggregateType, unittest.equals('foo'));
    checkChartData(o.baselineValueData as api.ChartData);
    checkBaselineValueFormat(o.baselineValueFormat as api.BaselineValueFormat);
    checkChartCustomNumberFormatOptions(
        o.customFormatOptions as api.ChartCustomNumberFormatOptions);
    checkChartData(o.keyValueData as api.ChartData);
    checkKeyValueFormat(o.keyValueFormat as api.KeyValueFormat);
    unittest.expect(o.numberFormatSource, unittest.equals('foo'));
    unittest.expect(o.scaleFactor, unittest.equals(42.0));
  }
  buildCounterScorecardChartSpec--;
}

core.List<api.DataFilter> buildUnnamed522() {
  var o = <api.DataFilter>[];
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

void checkUnnamed522(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0] as api.DataFilter);
  checkDataFilter(o[1] as api.DataFilter);
}

core.int buildCounterSearchDeveloperMetadataRequest = 0;
api.SearchDeveloperMetadataRequest buildSearchDeveloperMetadataRequest() {
  var o = api.SearchDeveloperMetadataRequest();
  buildCounterSearchDeveloperMetadataRequest++;
  if (buildCounterSearchDeveloperMetadataRequest < 3) {
    o.dataFilters = buildUnnamed522();
  }
  buildCounterSearchDeveloperMetadataRequest--;
  return o;
}

void checkSearchDeveloperMetadataRequest(api.SearchDeveloperMetadataRequest o) {
  buildCounterSearchDeveloperMetadataRequest++;
  if (buildCounterSearchDeveloperMetadataRequest < 3) {
    checkUnnamed522(o.dataFilters);
  }
  buildCounterSearchDeveloperMetadataRequest--;
}

core.List<api.MatchedDeveloperMetadata> buildUnnamed523() {
  var o = <api.MatchedDeveloperMetadata>[];
  o.add(buildMatchedDeveloperMetadata());
  o.add(buildMatchedDeveloperMetadata());
  return o;
}

void checkUnnamed523(core.List<api.MatchedDeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchedDeveloperMetadata(o[0] as api.MatchedDeveloperMetadata);
  checkMatchedDeveloperMetadata(o[1] as api.MatchedDeveloperMetadata);
}

core.int buildCounterSearchDeveloperMetadataResponse = 0;
api.SearchDeveloperMetadataResponse buildSearchDeveloperMetadataResponse() {
  var o = api.SearchDeveloperMetadataResponse();
  buildCounterSearchDeveloperMetadataResponse++;
  if (buildCounterSearchDeveloperMetadataResponse < 3) {
    o.matchedDeveloperMetadata = buildUnnamed523();
  }
  buildCounterSearchDeveloperMetadataResponse--;
  return o;
}

void checkSearchDeveloperMetadataResponse(
    api.SearchDeveloperMetadataResponse o) {
  buildCounterSearchDeveloperMetadataResponse++;
  if (buildCounterSearchDeveloperMetadataResponse < 3) {
    checkUnnamed523(o.matchedDeveloperMetadata);
  }
  buildCounterSearchDeveloperMetadataResponse--;
}

core.int buildCounterSetBasicFilterRequest = 0;
api.SetBasicFilterRequest buildSetBasicFilterRequest() {
  var o = api.SetBasicFilterRequest();
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
    checkBasicFilter(o.filter as api.BasicFilter);
  }
  buildCounterSetBasicFilterRequest--;
}

core.int buildCounterSetDataValidationRequest = 0;
api.SetDataValidationRequest buildSetDataValidationRequest() {
  var o = api.SetDataValidationRequest();
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
    checkGridRange(o.range as api.GridRange);
    checkDataValidationRule(o.rule as api.DataValidationRule);
  }
  buildCounterSetDataValidationRequest--;
}

core.List<api.BandedRange> buildUnnamed524() {
  var o = <api.BandedRange>[];
  o.add(buildBandedRange());
  o.add(buildBandedRange());
  return o;
}

void checkUnnamed524(core.List<api.BandedRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBandedRange(o[0] as api.BandedRange);
  checkBandedRange(o[1] as api.BandedRange);
}

core.List<api.EmbeddedChart> buildUnnamed525() {
  var o = <api.EmbeddedChart>[];
  o.add(buildEmbeddedChart());
  o.add(buildEmbeddedChart());
  return o;
}

void checkUnnamed525(core.List<api.EmbeddedChart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmbeddedChart(o[0] as api.EmbeddedChart);
  checkEmbeddedChart(o[1] as api.EmbeddedChart);
}

core.List<api.DimensionGroup> buildUnnamed526() {
  var o = <api.DimensionGroup>[];
  o.add(buildDimensionGroup());
  o.add(buildDimensionGroup());
  return o;
}

void checkUnnamed526(core.List<api.DimensionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionGroup(o[0] as api.DimensionGroup);
  checkDimensionGroup(o[1] as api.DimensionGroup);
}

core.List<api.ConditionalFormatRule> buildUnnamed527() {
  var o = <api.ConditionalFormatRule>[];
  o.add(buildConditionalFormatRule());
  o.add(buildConditionalFormatRule());
  return o;
}

void checkUnnamed527(core.List<api.ConditionalFormatRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConditionalFormatRule(o[0] as api.ConditionalFormatRule);
  checkConditionalFormatRule(o[1] as api.ConditionalFormatRule);
}

core.List<api.GridData> buildUnnamed528() {
  var o = <api.GridData>[];
  o.add(buildGridData());
  o.add(buildGridData());
  return o;
}

void checkUnnamed528(core.List<api.GridData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGridData(o[0] as api.GridData);
  checkGridData(o[1] as api.GridData);
}

core.List<api.DeveloperMetadata> buildUnnamed529() {
  var o = <api.DeveloperMetadata>[];
  o.add(buildDeveloperMetadata());
  o.add(buildDeveloperMetadata());
  return o;
}

void checkUnnamed529(core.List<api.DeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeveloperMetadata(o[0] as api.DeveloperMetadata);
  checkDeveloperMetadata(o[1] as api.DeveloperMetadata);
}

core.List<api.FilterView> buildUnnamed530() {
  var o = <api.FilterView>[];
  o.add(buildFilterView());
  o.add(buildFilterView());
  return o;
}

void checkUnnamed530(core.List<api.FilterView> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterView(o[0] as api.FilterView);
  checkFilterView(o[1] as api.FilterView);
}

core.List<api.GridRange> buildUnnamed531() {
  var o = <api.GridRange>[];
  o.add(buildGridRange());
  o.add(buildGridRange());
  return o;
}

void checkUnnamed531(core.List<api.GridRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGridRange(o[0] as api.GridRange);
  checkGridRange(o[1] as api.GridRange);
}

core.List<api.ProtectedRange> buildUnnamed532() {
  var o = <api.ProtectedRange>[];
  o.add(buildProtectedRange());
  o.add(buildProtectedRange());
  return o;
}

void checkUnnamed532(core.List<api.ProtectedRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProtectedRange(o[0] as api.ProtectedRange);
  checkProtectedRange(o[1] as api.ProtectedRange);
}

core.List<api.DimensionGroup> buildUnnamed533() {
  var o = <api.DimensionGroup>[];
  o.add(buildDimensionGroup());
  o.add(buildDimensionGroup());
  return o;
}

void checkUnnamed533(core.List<api.DimensionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionGroup(o[0] as api.DimensionGroup);
  checkDimensionGroup(o[1] as api.DimensionGroup);
}

core.List<api.Slicer> buildUnnamed534() {
  var o = <api.Slicer>[];
  o.add(buildSlicer());
  o.add(buildSlicer());
  return o;
}

void checkUnnamed534(core.List<api.Slicer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSlicer(o[0] as api.Slicer);
  checkSlicer(o[1] as api.Slicer);
}

core.int buildCounterSheet = 0;
api.Sheet buildSheet() {
  var o = api.Sheet();
  buildCounterSheet++;
  if (buildCounterSheet < 3) {
    o.bandedRanges = buildUnnamed524();
    o.basicFilter = buildBasicFilter();
    o.charts = buildUnnamed525();
    o.columnGroups = buildUnnamed526();
    o.conditionalFormats = buildUnnamed527();
    o.data = buildUnnamed528();
    o.developerMetadata = buildUnnamed529();
    o.filterViews = buildUnnamed530();
    o.merges = buildUnnamed531();
    o.properties = buildSheetProperties();
    o.protectedRanges = buildUnnamed532();
    o.rowGroups = buildUnnamed533();
    o.slicers = buildUnnamed534();
  }
  buildCounterSheet--;
  return o;
}

void checkSheet(api.Sheet o) {
  buildCounterSheet++;
  if (buildCounterSheet < 3) {
    checkUnnamed524(o.bandedRanges);
    checkBasicFilter(o.basicFilter as api.BasicFilter);
    checkUnnamed525(o.charts);
    checkUnnamed526(o.columnGroups);
    checkUnnamed527(o.conditionalFormats);
    checkUnnamed528(o.data);
    checkUnnamed529(o.developerMetadata);
    checkUnnamed530(o.filterViews);
    checkUnnamed531(o.merges);
    checkSheetProperties(o.properties as api.SheetProperties);
    checkUnnamed532(o.protectedRanges);
    checkUnnamed533(o.rowGroups);
    checkUnnamed534(o.slicers);
  }
  buildCounterSheet--;
}

core.int buildCounterSheetProperties = 0;
api.SheetProperties buildSheetProperties() {
  var o = api.SheetProperties();
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
    checkDataSourceSheetProperties(
        o.dataSourceSheetProperties as api.DataSourceSheetProperties);
    checkGridProperties(o.gridProperties as api.GridProperties);
    unittest.expect(o.hidden, unittest.isTrue);
    unittest.expect(o.index, unittest.equals(42));
    unittest.expect(o.rightToLeft, unittest.isTrue);
    unittest.expect(o.sheetId, unittest.equals(42));
    unittest.expect(o.sheetType, unittest.equals('foo'));
    checkColor(o.tabColor as api.Color);
    checkColorStyle(o.tabColorStyle as api.ColorStyle);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterSheetProperties--;
}

core.int buildCounterSlicer = 0;
api.Slicer buildSlicer() {
  var o = api.Slicer();
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
    checkEmbeddedObjectPosition(o.position as api.EmbeddedObjectPosition);
    unittest.expect(o.slicerId, unittest.equals(42));
    checkSlicerSpec(o.spec as api.SlicerSpec);
  }
  buildCounterSlicer--;
}

core.int buildCounterSlicerSpec = 0;
api.SlicerSpec buildSlicerSpec() {
  var o = api.SlicerSpec();
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
    unittest.expect(o.applyToPivotTables, unittest.isTrue);
    checkColor(o.backgroundColor as api.Color);
    checkColorStyle(o.backgroundColorStyle as api.ColorStyle);
    unittest.expect(o.columnIndex, unittest.equals(42));
    checkGridRange(o.dataRange as api.GridRange);
    checkFilterCriteria(o.filterCriteria as api.FilterCriteria);
    unittest.expect(o.horizontalAlignment, unittest.equals('foo'));
    checkTextFormat(o.textFormat as api.TextFormat);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterSlicerSpec--;
}

core.List<api.SortSpec> buildUnnamed535() {
  var o = <api.SortSpec>[];
  o.add(buildSortSpec());
  o.add(buildSortSpec());
  return o;
}

void checkUnnamed535(core.List<api.SortSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortSpec(o[0] as api.SortSpec);
  checkSortSpec(o[1] as api.SortSpec);
}

core.int buildCounterSortRangeRequest = 0;
api.SortRangeRequest buildSortRangeRequest() {
  var o = api.SortRangeRequest();
  buildCounterSortRangeRequest++;
  if (buildCounterSortRangeRequest < 3) {
    o.range = buildGridRange();
    o.sortSpecs = buildUnnamed535();
  }
  buildCounterSortRangeRequest--;
  return o;
}

void checkSortRangeRequest(api.SortRangeRequest o) {
  buildCounterSortRangeRequest++;
  if (buildCounterSortRangeRequest < 3) {
    checkGridRange(o.range as api.GridRange);
    checkUnnamed535(o.sortSpecs);
  }
  buildCounterSortRangeRequest--;
}

core.int buildCounterSortSpec = 0;
api.SortSpec buildSortSpec() {
  var o = api.SortSpec();
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
    checkColor(o.backgroundColor as api.Color);
    checkColorStyle(o.backgroundColorStyle as api.ColorStyle);
    checkDataSourceColumnReference(
        o.dataSourceColumnReference as api.DataSourceColumnReference);
    unittest.expect(o.dimensionIndex, unittest.equals(42));
    checkColor(o.foregroundColor as api.Color);
    checkColorStyle(o.foregroundColorStyle as api.ColorStyle);
    unittest.expect(o.sortOrder, unittest.equals('foo'));
  }
  buildCounterSortSpec--;
}

core.int buildCounterSourceAndDestination = 0;
api.SourceAndDestination buildSourceAndDestination() {
  var o = api.SourceAndDestination();
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
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.fillLength, unittest.equals(42));
    checkGridRange(o.source as api.GridRange);
  }
  buildCounterSourceAndDestination--;
}

core.List<api.DataSourceRefreshSchedule> buildUnnamed536() {
  var o = <api.DataSourceRefreshSchedule>[];
  o.add(buildDataSourceRefreshSchedule());
  o.add(buildDataSourceRefreshSchedule());
  return o;
}

void checkUnnamed536(core.List<api.DataSourceRefreshSchedule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceRefreshSchedule(o[0] as api.DataSourceRefreshSchedule);
  checkDataSourceRefreshSchedule(o[1] as api.DataSourceRefreshSchedule);
}

core.List<api.DataSource> buildUnnamed537() {
  var o = <api.DataSource>[];
  o.add(buildDataSource());
  o.add(buildDataSource());
  return o;
}

void checkUnnamed537(core.List<api.DataSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSource(o[0] as api.DataSource);
  checkDataSource(o[1] as api.DataSource);
}

core.List<api.DeveloperMetadata> buildUnnamed538() {
  var o = <api.DeveloperMetadata>[];
  o.add(buildDeveloperMetadata());
  o.add(buildDeveloperMetadata());
  return o;
}

void checkUnnamed538(core.List<api.DeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeveloperMetadata(o[0] as api.DeveloperMetadata);
  checkDeveloperMetadata(o[1] as api.DeveloperMetadata);
}

core.List<api.NamedRange> buildUnnamed539() {
  var o = <api.NamedRange>[];
  o.add(buildNamedRange());
  o.add(buildNamedRange());
  return o;
}

void checkUnnamed539(core.List<api.NamedRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedRange(o[0] as api.NamedRange);
  checkNamedRange(o[1] as api.NamedRange);
}

core.List<api.Sheet> buildUnnamed540() {
  var o = <api.Sheet>[];
  o.add(buildSheet());
  o.add(buildSheet());
  return o;
}

void checkUnnamed540(core.List<api.Sheet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSheet(o[0] as api.Sheet);
  checkSheet(o[1] as api.Sheet);
}

core.int buildCounterSpreadsheet = 0;
api.Spreadsheet buildSpreadsheet() {
  var o = api.Spreadsheet();
  buildCounterSpreadsheet++;
  if (buildCounterSpreadsheet < 3) {
    o.dataSourceSchedules = buildUnnamed536();
    o.dataSources = buildUnnamed537();
    o.developerMetadata = buildUnnamed538();
    o.namedRanges = buildUnnamed539();
    o.properties = buildSpreadsheetProperties();
    o.sheets = buildUnnamed540();
    o.spreadsheetId = 'foo';
    o.spreadsheetUrl = 'foo';
  }
  buildCounterSpreadsheet--;
  return o;
}

void checkSpreadsheet(api.Spreadsheet o) {
  buildCounterSpreadsheet++;
  if (buildCounterSpreadsheet < 3) {
    checkUnnamed536(o.dataSourceSchedules);
    checkUnnamed537(o.dataSources);
    checkUnnamed538(o.developerMetadata);
    checkUnnamed539(o.namedRanges);
    checkSpreadsheetProperties(o.properties as api.SpreadsheetProperties);
    checkUnnamed540(o.sheets);
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    unittest.expect(o.spreadsheetUrl, unittest.equals('foo'));
  }
  buildCounterSpreadsheet--;
}

core.int buildCounterSpreadsheetProperties = 0;
api.SpreadsheetProperties buildSpreadsheetProperties() {
  var o = api.SpreadsheetProperties();
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
    unittest.expect(o.autoRecalc, unittest.equals('foo'));
    checkCellFormat(o.defaultFormat as api.CellFormat);
    checkIterativeCalculationSettings(
        o.iterativeCalculationSettings as api.IterativeCalculationSettings);
    unittest.expect(o.locale, unittest.equals('foo'));
    checkSpreadsheetTheme(o.spreadsheetTheme as api.SpreadsheetTheme);
    unittest.expect(o.timeZone, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterSpreadsheetProperties--;
}

core.List<api.ThemeColorPair> buildUnnamed541() {
  var o = <api.ThemeColorPair>[];
  o.add(buildThemeColorPair());
  o.add(buildThemeColorPair());
  return o;
}

void checkUnnamed541(core.List<api.ThemeColorPair> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThemeColorPair(o[0] as api.ThemeColorPair);
  checkThemeColorPair(o[1] as api.ThemeColorPair);
}

core.int buildCounterSpreadsheetTheme = 0;
api.SpreadsheetTheme buildSpreadsheetTheme() {
  var o = api.SpreadsheetTheme();
  buildCounterSpreadsheetTheme++;
  if (buildCounterSpreadsheetTheme < 3) {
    o.primaryFontFamily = 'foo';
    o.themeColors = buildUnnamed541();
  }
  buildCounterSpreadsheetTheme--;
  return o;
}

void checkSpreadsheetTheme(api.SpreadsheetTheme o) {
  buildCounterSpreadsheetTheme++;
  if (buildCounterSpreadsheetTheme < 3) {
    unittest.expect(o.primaryFontFamily, unittest.equals('foo'));
    checkUnnamed541(o.themeColors);
  }
  buildCounterSpreadsheetTheme--;
}

core.int buildCounterTextFormat = 0;
api.TextFormat buildTextFormat() {
  var o = api.TextFormat();
  buildCounterTextFormat++;
  if (buildCounterTextFormat < 3) {
    o.bold = true;
    o.fontFamily = 'foo';
    o.fontSize = 42;
    o.foregroundColor = buildColor();
    o.foregroundColorStyle = buildColorStyle();
    o.italic = true;
    o.strikethrough = true;
    o.underline = true;
  }
  buildCounterTextFormat--;
  return o;
}

void checkTextFormat(api.TextFormat o) {
  buildCounterTextFormat++;
  if (buildCounterTextFormat < 3) {
    unittest.expect(o.bold, unittest.isTrue);
    unittest.expect(o.fontFamily, unittest.equals('foo'));
    unittest.expect(o.fontSize, unittest.equals(42));
    checkColor(o.foregroundColor as api.Color);
    checkColorStyle(o.foregroundColorStyle as api.ColorStyle);
    unittest.expect(o.italic, unittest.isTrue);
    unittest.expect(o.strikethrough, unittest.isTrue);
    unittest.expect(o.underline, unittest.isTrue);
  }
  buildCounterTextFormat--;
}

core.int buildCounterTextFormatRun = 0;
api.TextFormatRun buildTextFormatRun() {
  var o = api.TextFormatRun();
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
    checkTextFormat(o.format as api.TextFormat);
    unittest.expect(o.startIndex, unittest.equals(42));
  }
  buildCounterTextFormatRun--;
}

core.int buildCounterTextPosition = 0;
api.TextPosition buildTextPosition() {
  var o = api.TextPosition();
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
    unittest.expect(o.horizontalAlignment, unittest.equals('foo'));
  }
  buildCounterTextPosition--;
}

core.int buildCounterTextRotation = 0;
api.TextRotation buildTextRotation() {
  var o = api.TextRotation();
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
    unittest.expect(o.angle, unittest.equals(42));
    unittest.expect(o.vertical, unittest.isTrue);
  }
  buildCounterTextRotation--;
}

core.int buildCounterTextToColumnsRequest = 0;
api.TextToColumnsRequest buildTextToColumnsRequest() {
  var o = api.TextToColumnsRequest();
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
    unittest.expect(o.delimiter, unittest.equals('foo'));
    unittest.expect(o.delimiterType, unittest.equals('foo'));
    checkGridRange(o.source as api.GridRange);
  }
  buildCounterTextToColumnsRequest--;
}

core.int buildCounterThemeColorPair = 0;
api.ThemeColorPair buildThemeColorPair() {
  var o = api.ThemeColorPair();
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
    checkColorStyle(o.color as api.ColorStyle);
    unittest.expect(o.colorType, unittest.equals('foo'));
  }
  buildCounterThemeColorPair--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  var o = api.TimeOfDay();
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
    unittest.expect(o.hours, unittest.equals(42));
    unittest.expect(o.minutes, unittest.equals(42));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals(42));
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterTreemapChartColorScale = 0;
api.TreemapChartColorScale buildTreemapChartColorScale() {
  var o = api.TreemapChartColorScale();
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
    checkColor(o.maxValueColor as api.Color);
    checkColorStyle(o.maxValueColorStyle as api.ColorStyle);
    checkColor(o.midValueColor as api.Color);
    checkColorStyle(o.midValueColorStyle as api.ColorStyle);
    checkColor(o.minValueColor as api.Color);
    checkColorStyle(o.minValueColorStyle as api.ColorStyle);
    checkColor(o.noDataColor as api.Color);
    checkColorStyle(o.noDataColorStyle as api.ColorStyle);
  }
  buildCounterTreemapChartColorScale--;
}

core.int buildCounterTreemapChartSpec = 0;
api.TreemapChartSpec buildTreemapChartSpec() {
  var o = api.TreemapChartSpec();
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
    checkChartData(o.colorData as api.ChartData);
    checkTreemapChartColorScale(o.colorScale as api.TreemapChartColorScale);
    checkColor(o.headerColor as api.Color);
    checkColorStyle(o.headerColorStyle as api.ColorStyle);
    unittest.expect(o.hideTooltips, unittest.isTrue);
    unittest.expect(o.hintedLevels, unittest.equals(42));
    checkChartData(o.labels as api.ChartData);
    unittest.expect(o.levels, unittest.equals(42));
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
    checkChartData(o.parentLabels as api.ChartData);
    checkChartData(o.sizeData as api.ChartData);
    checkTextFormat(o.textFormat as api.TextFormat);
  }
  buildCounterTreemapChartSpec--;
}

core.int buildCounterTrimWhitespaceRequest = 0;
api.TrimWhitespaceRequest buildTrimWhitespaceRequest() {
  var o = api.TrimWhitespaceRequest();
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
    checkGridRange(o.range as api.GridRange);
  }
  buildCounterTrimWhitespaceRequest--;
}

core.int buildCounterTrimWhitespaceResponse = 0;
api.TrimWhitespaceResponse buildTrimWhitespaceResponse() {
  var o = api.TrimWhitespaceResponse();
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
    unittest.expect(o.cellsChangedCount, unittest.equals(42));
  }
  buildCounterTrimWhitespaceResponse--;
}

core.int buildCounterUnmergeCellsRequest = 0;
api.UnmergeCellsRequest buildUnmergeCellsRequest() {
  var o = api.UnmergeCellsRequest();
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
    checkGridRange(o.range as api.GridRange);
  }
  buildCounterUnmergeCellsRequest--;
}

core.int buildCounterUpdateBandingRequest = 0;
api.UpdateBandingRequest buildUpdateBandingRequest() {
  var o = api.UpdateBandingRequest();
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
    checkBandedRange(o.bandedRange as api.BandedRange);
    unittest.expect(o.fields, unittest.equals('foo'));
  }
  buildCounterUpdateBandingRequest--;
}

core.int buildCounterUpdateBordersRequest = 0;
api.UpdateBordersRequest buildUpdateBordersRequest() {
  var o = api.UpdateBordersRequest();
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
    checkBorder(o.bottom as api.Border);
    checkBorder(o.innerHorizontal as api.Border);
    checkBorder(o.innerVertical as api.Border);
    checkBorder(o.left as api.Border);
    checkGridRange(o.range as api.GridRange);
    checkBorder(o.right as api.Border);
    checkBorder(o.top as api.Border);
  }
  buildCounterUpdateBordersRequest--;
}

core.List<api.RowData> buildUnnamed542() {
  var o = <api.RowData>[];
  o.add(buildRowData());
  o.add(buildRowData());
  return o;
}

void checkUnnamed542(core.List<api.RowData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRowData(o[0] as api.RowData);
  checkRowData(o[1] as api.RowData);
}

core.int buildCounterUpdateCellsRequest = 0;
api.UpdateCellsRequest buildUpdateCellsRequest() {
  var o = api.UpdateCellsRequest();
  buildCounterUpdateCellsRequest++;
  if (buildCounterUpdateCellsRequest < 3) {
    o.fields = 'foo';
    o.range = buildGridRange();
    o.rows = buildUnnamed542();
    o.start = buildGridCoordinate();
  }
  buildCounterUpdateCellsRequest--;
  return o;
}

void checkUpdateCellsRequest(api.UpdateCellsRequest o) {
  buildCounterUpdateCellsRequest++;
  if (buildCounterUpdateCellsRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkGridRange(o.range as api.GridRange);
    checkUnnamed542(o.rows);
    checkGridCoordinate(o.start as api.GridCoordinate);
  }
  buildCounterUpdateCellsRequest--;
}

core.int buildCounterUpdateChartSpecRequest = 0;
api.UpdateChartSpecRequest buildUpdateChartSpecRequest() {
  var o = api.UpdateChartSpecRequest();
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
    unittest.expect(o.chartId, unittest.equals(42));
    checkChartSpec(o.spec as api.ChartSpec);
  }
  buildCounterUpdateChartSpecRequest--;
}

core.int buildCounterUpdateConditionalFormatRuleRequest = 0;
api.UpdateConditionalFormatRuleRequest
    buildUpdateConditionalFormatRuleRequest() {
  var o = api.UpdateConditionalFormatRuleRequest();
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
    unittest.expect(o.index, unittest.equals(42));
    unittest.expect(o.newIndex, unittest.equals(42));
    checkConditionalFormatRule(o.rule as api.ConditionalFormatRule);
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterUpdateConditionalFormatRuleRequest--;
}

core.int buildCounterUpdateConditionalFormatRuleResponse = 0;
api.UpdateConditionalFormatRuleResponse
    buildUpdateConditionalFormatRuleResponse() {
  var o = api.UpdateConditionalFormatRuleResponse();
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
    unittest.expect(o.newIndex, unittest.equals(42));
    checkConditionalFormatRule(o.newRule as api.ConditionalFormatRule);
    unittest.expect(o.oldIndex, unittest.equals(42));
    checkConditionalFormatRule(o.oldRule as api.ConditionalFormatRule);
  }
  buildCounterUpdateConditionalFormatRuleResponse--;
}

core.int buildCounterUpdateDataSourceRequest = 0;
api.UpdateDataSourceRequest buildUpdateDataSourceRequest() {
  var o = api.UpdateDataSourceRequest();
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
    checkDataSource(o.dataSource as api.DataSource);
    unittest.expect(o.fields, unittest.equals('foo'));
  }
  buildCounterUpdateDataSourceRequest--;
}

core.int buildCounterUpdateDataSourceResponse = 0;
api.UpdateDataSourceResponse buildUpdateDataSourceResponse() {
  var o = api.UpdateDataSourceResponse();
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
    checkDataExecutionStatus(o.dataExecutionStatus as api.DataExecutionStatus);
    checkDataSource(o.dataSource as api.DataSource);
  }
  buildCounterUpdateDataSourceResponse--;
}

core.List<api.DataFilter> buildUnnamed543() {
  var o = <api.DataFilter>[];
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

void checkUnnamed543(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0] as api.DataFilter);
  checkDataFilter(o[1] as api.DataFilter);
}

core.int buildCounterUpdateDeveloperMetadataRequest = 0;
api.UpdateDeveloperMetadataRequest buildUpdateDeveloperMetadataRequest() {
  var o = api.UpdateDeveloperMetadataRequest();
  buildCounterUpdateDeveloperMetadataRequest++;
  if (buildCounterUpdateDeveloperMetadataRequest < 3) {
    o.dataFilters = buildUnnamed543();
    o.developerMetadata = buildDeveloperMetadata();
    o.fields = 'foo';
  }
  buildCounterUpdateDeveloperMetadataRequest--;
  return o;
}

void checkUpdateDeveloperMetadataRequest(api.UpdateDeveloperMetadataRequest o) {
  buildCounterUpdateDeveloperMetadataRequest++;
  if (buildCounterUpdateDeveloperMetadataRequest < 3) {
    checkUnnamed543(o.dataFilters);
    checkDeveloperMetadata(o.developerMetadata as api.DeveloperMetadata);
    unittest.expect(o.fields, unittest.equals('foo'));
  }
  buildCounterUpdateDeveloperMetadataRequest--;
}

core.List<api.DeveloperMetadata> buildUnnamed544() {
  var o = <api.DeveloperMetadata>[];
  o.add(buildDeveloperMetadata());
  o.add(buildDeveloperMetadata());
  return o;
}

void checkUnnamed544(core.List<api.DeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeveloperMetadata(o[0] as api.DeveloperMetadata);
  checkDeveloperMetadata(o[1] as api.DeveloperMetadata);
}

core.int buildCounterUpdateDeveloperMetadataResponse = 0;
api.UpdateDeveloperMetadataResponse buildUpdateDeveloperMetadataResponse() {
  var o = api.UpdateDeveloperMetadataResponse();
  buildCounterUpdateDeveloperMetadataResponse++;
  if (buildCounterUpdateDeveloperMetadataResponse < 3) {
    o.developerMetadata = buildUnnamed544();
  }
  buildCounterUpdateDeveloperMetadataResponse--;
  return o;
}

void checkUpdateDeveloperMetadataResponse(
    api.UpdateDeveloperMetadataResponse o) {
  buildCounterUpdateDeveloperMetadataResponse++;
  if (buildCounterUpdateDeveloperMetadataResponse < 3) {
    checkUnnamed544(o.developerMetadata);
  }
  buildCounterUpdateDeveloperMetadataResponse--;
}

core.int buildCounterUpdateDimensionGroupRequest = 0;
api.UpdateDimensionGroupRequest buildUpdateDimensionGroupRequest() {
  var o = api.UpdateDimensionGroupRequest();
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
    checkDimensionGroup(o.dimensionGroup as api.DimensionGroup);
    unittest.expect(o.fields, unittest.equals('foo'));
  }
  buildCounterUpdateDimensionGroupRequest--;
}

core.int buildCounterUpdateDimensionPropertiesRequest = 0;
api.UpdateDimensionPropertiesRequest buildUpdateDimensionPropertiesRequest() {
  var o = api.UpdateDimensionPropertiesRequest();
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
    checkDataSourceSheetDimensionRange(
        o.dataSourceSheetRange as api.DataSourceSheetDimensionRange);
    unittest.expect(o.fields, unittest.equals('foo'));
    checkDimensionProperties(o.properties as api.DimensionProperties);
    checkDimensionRange(o.range as api.DimensionRange);
  }
  buildCounterUpdateDimensionPropertiesRequest--;
}

core.int buildCounterUpdateEmbeddedObjectPositionRequest = 0;
api.UpdateEmbeddedObjectPositionRequest
    buildUpdateEmbeddedObjectPositionRequest() {
  var o = api.UpdateEmbeddedObjectPositionRequest();
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
    unittest.expect(o.fields, unittest.equals('foo'));
    checkEmbeddedObjectPosition(o.newPosition as api.EmbeddedObjectPosition);
    unittest.expect(o.objectId, unittest.equals(42));
  }
  buildCounterUpdateEmbeddedObjectPositionRequest--;
}

core.int buildCounterUpdateEmbeddedObjectPositionResponse = 0;
api.UpdateEmbeddedObjectPositionResponse
    buildUpdateEmbeddedObjectPositionResponse() {
  var o = api.UpdateEmbeddedObjectPositionResponse();
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
    checkEmbeddedObjectPosition(o.position as api.EmbeddedObjectPosition);
  }
  buildCounterUpdateEmbeddedObjectPositionResponse--;
}

core.int buildCounterUpdateFilterViewRequest = 0;
api.UpdateFilterViewRequest buildUpdateFilterViewRequest() {
  var o = api.UpdateFilterViewRequest();
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
    unittest.expect(o.fields, unittest.equals('foo'));
    checkFilterView(o.filter as api.FilterView);
  }
  buildCounterUpdateFilterViewRequest--;
}

core.int buildCounterUpdateNamedRangeRequest = 0;
api.UpdateNamedRangeRequest buildUpdateNamedRangeRequest() {
  var o = api.UpdateNamedRangeRequest();
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
    unittest.expect(o.fields, unittest.equals('foo'));
    checkNamedRange(o.namedRange as api.NamedRange);
  }
  buildCounterUpdateNamedRangeRequest--;
}

core.int buildCounterUpdateProtectedRangeRequest = 0;
api.UpdateProtectedRangeRequest buildUpdateProtectedRangeRequest() {
  var o = api.UpdateProtectedRangeRequest();
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
    unittest.expect(o.fields, unittest.equals('foo'));
    checkProtectedRange(o.protectedRange as api.ProtectedRange);
  }
  buildCounterUpdateProtectedRangeRequest--;
}

core.int buildCounterUpdateSheetPropertiesRequest = 0;
api.UpdateSheetPropertiesRequest buildUpdateSheetPropertiesRequest() {
  var o = api.UpdateSheetPropertiesRequest();
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
    unittest.expect(o.fields, unittest.equals('foo'));
    checkSheetProperties(o.properties as api.SheetProperties);
  }
  buildCounterUpdateSheetPropertiesRequest--;
}

core.int buildCounterUpdateSlicerSpecRequest = 0;
api.UpdateSlicerSpecRequest buildUpdateSlicerSpecRequest() {
  var o = api.UpdateSlicerSpecRequest();
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
    unittest.expect(o.fields, unittest.equals('foo'));
    unittest.expect(o.slicerId, unittest.equals(42));
    checkSlicerSpec(o.spec as api.SlicerSpec);
  }
  buildCounterUpdateSlicerSpecRequest--;
}

core.int buildCounterUpdateSpreadsheetPropertiesRequest = 0;
api.UpdateSpreadsheetPropertiesRequest
    buildUpdateSpreadsheetPropertiesRequest() {
  var o = api.UpdateSpreadsheetPropertiesRequest();
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
    unittest.expect(o.fields, unittest.equals('foo'));
    checkSpreadsheetProperties(o.properties as api.SpreadsheetProperties);
  }
  buildCounterUpdateSpreadsheetPropertiesRequest--;
}

core.int buildCounterUpdateValuesByDataFilterResponse = 0;
api.UpdateValuesByDataFilterResponse buildUpdateValuesByDataFilterResponse() {
  var o = api.UpdateValuesByDataFilterResponse();
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
    checkDataFilter(o.dataFilter as api.DataFilter);
    unittest.expect(o.updatedCells, unittest.equals(42));
    unittest.expect(o.updatedColumns, unittest.equals(42));
    checkValueRange(o.updatedData as api.ValueRange);
    unittest.expect(o.updatedRange, unittest.equals('foo'));
    unittest.expect(o.updatedRows, unittest.equals(42));
  }
  buildCounterUpdateValuesByDataFilterResponse--;
}

core.int buildCounterUpdateValuesResponse = 0;
api.UpdateValuesResponse buildUpdateValuesResponse() {
  var o = api.UpdateValuesResponse();
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
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    unittest.expect(o.updatedCells, unittest.equals(42));
    unittest.expect(o.updatedColumns, unittest.equals(42));
    checkValueRange(o.updatedData as api.ValueRange);
    unittest.expect(o.updatedRange, unittest.equals('foo'));
    unittest.expect(o.updatedRows, unittest.equals(42));
  }
  buildCounterUpdateValuesResponse--;
}

core.List<core.Object> buildUnnamed545() {
  var o = <core.Object>[];
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

void checkUnnamed545(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o[0]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o[1]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.List<core.List<core.Object>> buildUnnamed546() {
  var o = <core.List<core.Object>>[];
  o.add(buildUnnamed545());
  o.add(buildUnnamed545());
  return o;
}

void checkUnnamed546(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed545(o[0]);
  checkUnnamed545(o[1]);
}

core.int buildCounterValueRange = 0;
api.ValueRange buildValueRange() {
  var o = api.ValueRange();
  buildCounterValueRange++;
  if (buildCounterValueRange < 3) {
    o.majorDimension = 'foo';
    o.range = 'foo';
    o.values = buildUnnamed546();
  }
  buildCounterValueRange--;
  return o;
}

void checkValueRange(api.ValueRange o) {
  buildCounterValueRange++;
  if (buildCounterValueRange < 3) {
    unittest.expect(o.majorDimension, unittest.equals('foo'));
    unittest.expect(o.range, unittest.equals('foo'));
    checkUnnamed546(o.values);
  }
  buildCounterValueRange--;
}

core.int buildCounterWaterfallChartColumnStyle = 0;
api.WaterfallChartColumnStyle buildWaterfallChartColumnStyle() {
  var o = api.WaterfallChartColumnStyle();
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
    checkColor(o.color as api.Color);
    checkColorStyle(o.colorStyle as api.ColorStyle);
    unittest.expect(o.label, unittest.equals('foo'));
  }
  buildCounterWaterfallChartColumnStyle--;
}

core.int buildCounterWaterfallChartCustomSubtotal = 0;
api.WaterfallChartCustomSubtotal buildWaterfallChartCustomSubtotal() {
  var o = api.WaterfallChartCustomSubtotal();
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
    unittest.expect(o.dataIsSubtotal, unittest.isTrue);
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.subtotalIndex, unittest.equals(42));
  }
  buildCounterWaterfallChartCustomSubtotal--;
}

core.int buildCounterWaterfallChartDomain = 0;
api.WaterfallChartDomain buildWaterfallChartDomain() {
  var o = api.WaterfallChartDomain();
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
    checkChartData(o.data as api.ChartData);
    unittest.expect(o.reversed, unittest.isTrue);
  }
  buildCounterWaterfallChartDomain--;
}

core.List<api.WaterfallChartCustomSubtotal> buildUnnamed547() {
  var o = <api.WaterfallChartCustomSubtotal>[];
  o.add(buildWaterfallChartCustomSubtotal());
  o.add(buildWaterfallChartCustomSubtotal());
  return o;
}

void checkUnnamed547(core.List<api.WaterfallChartCustomSubtotal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWaterfallChartCustomSubtotal(o[0] as api.WaterfallChartCustomSubtotal);
  checkWaterfallChartCustomSubtotal(o[1] as api.WaterfallChartCustomSubtotal);
}

core.int buildCounterWaterfallChartSeries = 0;
api.WaterfallChartSeries buildWaterfallChartSeries() {
  var o = api.WaterfallChartSeries();
  buildCounterWaterfallChartSeries++;
  if (buildCounterWaterfallChartSeries < 3) {
    o.customSubtotals = buildUnnamed547();
    o.data = buildChartData();
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
    checkUnnamed547(o.customSubtotals);
    checkChartData(o.data as api.ChartData);
    unittest.expect(o.hideTrailingSubtotal, unittest.isTrue);
    checkWaterfallChartColumnStyle(
        o.negativeColumnsStyle as api.WaterfallChartColumnStyle);
    checkWaterfallChartColumnStyle(
        o.positiveColumnsStyle as api.WaterfallChartColumnStyle);
    checkWaterfallChartColumnStyle(
        o.subtotalColumnsStyle as api.WaterfallChartColumnStyle);
  }
  buildCounterWaterfallChartSeries--;
}

core.List<api.WaterfallChartSeries> buildUnnamed548() {
  var o = <api.WaterfallChartSeries>[];
  o.add(buildWaterfallChartSeries());
  o.add(buildWaterfallChartSeries());
  return o;
}

void checkUnnamed548(core.List<api.WaterfallChartSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWaterfallChartSeries(o[0] as api.WaterfallChartSeries);
  checkWaterfallChartSeries(o[1] as api.WaterfallChartSeries);
}

core.int buildCounterWaterfallChartSpec = 0;
api.WaterfallChartSpec buildWaterfallChartSpec() {
  var o = api.WaterfallChartSpec();
  buildCounterWaterfallChartSpec++;
  if (buildCounterWaterfallChartSpec < 3) {
    o.connectorLineStyle = buildLineStyle();
    o.domain = buildWaterfallChartDomain();
    o.firstValueIsTotal = true;
    o.hideConnectorLines = true;
    o.series = buildUnnamed548();
    o.stackedType = 'foo';
  }
  buildCounterWaterfallChartSpec--;
  return o;
}

void checkWaterfallChartSpec(api.WaterfallChartSpec o) {
  buildCounterWaterfallChartSpec++;
  if (buildCounterWaterfallChartSpec < 3) {
    checkLineStyle(o.connectorLineStyle as api.LineStyle);
    checkWaterfallChartDomain(o.domain as api.WaterfallChartDomain);
    unittest.expect(o.firstValueIsTotal, unittest.isTrue);
    unittest.expect(o.hideConnectorLines, unittest.isTrue);
    checkUnnamed548(o.series);
    unittest.expect(o.stackedType, unittest.equals('foo'));
  }
  buildCounterWaterfallChartSpec--;
}

core.List<core.String> buildUnnamed549() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed549(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed550() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed550(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AddBandingRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddBandingRequest();
      var od = api.AddBandingRequest.fromJson(o.toJson());
      checkAddBandingRequest(od as api.AddBandingRequest);
    });
  });

  unittest.group('obj-schema-AddBandingResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddBandingResponse();
      var od = api.AddBandingResponse.fromJson(o.toJson());
      checkAddBandingResponse(od as api.AddBandingResponse);
    });
  });

  unittest.group('obj-schema-AddChartRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddChartRequest();
      var od = api.AddChartRequest.fromJson(o.toJson());
      checkAddChartRequest(od as api.AddChartRequest);
    });
  });

  unittest.group('obj-schema-AddChartResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddChartResponse();
      var od = api.AddChartResponse.fromJson(o.toJson());
      checkAddChartResponse(od as api.AddChartResponse);
    });
  });

  unittest.group('obj-schema-AddConditionalFormatRuleRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddConditionalFormatRuleRequest();
      var od = api.AddConditionalFormatRuleRequest.fromJson(o.toJson());
      checkAddConditionalFormatRuleRequest(
          od as api.AddConditionalFormatRuleRequest);
    });
  });

  unittest.group('obj-schema-AddDataSourceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddDataSourceRequest();
      var od = api.AddDataSourceRequest.fromJson(o.toJson());
      checkAddDataSourceRequest(od as api.AddDataSourceRequest);
    });
  });

  unittest.group('obj-schema-AddDataSourceResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddDataSourceResponse();
      var od = api.AddDataSourceResponse.fromJson(o.toJson());
      checkAddDataSourceResponse(od as api.AddDataSourceResponse);
    });
  });

  unittest.group('obj-schema-AddDimensionGroupRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddDimensionGroupRequest();
      var od = api.AddDimensionGroupRequest.fromJson(o.toJson());
      checkAddDimensionGroupRequest(od as api.AddDimensionGroupRequest);
    });
  });

  unittest.group('obj-schema-AddDimensionGroupResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddDimensionGroupResponse();
      var od = api.AddDimensionGroupResponse.fromJson(o.toJson());
      checkAddDimensionGroupResponse(od as api.AddDimensionGroupResponse);
    });
  });

  unittest.group('obj-schema-AddFilterViewRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddFilterViewRequest();
      var od = api.AddFilterViewRequest.fromJson(o.toJson());
      checkAddFilterViewRequest(od as api.AddFilterViewRequest);
    });
  });

  unittest.group('obj-schema-AddFilterViewResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddFilterViewResponse();
      var od = api.AddFilterViewResponse.fromJson(o.toJson());
      checkAddFilterViewResponse(od as api.AddFilterViewResponse);
    });
  });

  unittest.group('obj-schema-AddNamedRangeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddNamedRangeRequest();
      var od = api.AddNamedRangeRequest.fromJson(o.toJson());
      checkAddNamedRangeRequest(od as api.AddNamedRangeRequest);
    });
  });

  unittest.group('obj-schema-AddNamedRangeResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddNamedRangeResponse();
      var od = api.AddNamedRangeResponse.fromJson(o.toJson());
      checkAddNamedRangeResponse(od as api.AddNamedRangeResponse);
    });
  });

  unittest.group('obj-schema-AddProtectedRangeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddProtectedRangeRequest();
      var od = api.AddProtectedRangeRequest.fromJson(o.toJson());
      checkAddProtectedRangeRequest(od as api.AddProtectedRangeRequest);
    });
  });

  unittest.group('obj-schema-AddProtectedRangeResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddProtectedRangeResponse();
      var od = api.AddProtectedRangeResponse.fromJson(o.toJson());
      checkAddProtectedRangeResponse(od as api.AddProtectedRangeResponse);
    });
  });

  unittest.group('obj-schema-AddSheetRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddSheetRequest();
      var od = api.AddSheetRequest.fromJson(o.toJson());
      checkAddSheetRequest(od as api.AddSheetRequest);
    });
  });

  unittest.group('obj-schema-AddSheetResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddSheetResponse();
      var od = api.AddSheetResponse.fromJson(o.toJson());
      checkAddSheetResponse(od as api.AddSheetResponse);
    });
  });

  unittest.group('obj-schema-AddSlicerRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddSlicerRequest();
      var od = api.AddSlicerRequest.fromJson(o.toJson());
      checkAddSlicerRequest(od as api.AddSlicerRequest);
    });
  });

  unittest.group('obj-schema-AddSlicerResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddSlicerResponse();
      var od = api.AddSlicerResponse.fromJson(o.toJson());
      checkAddSlicerResponse(od as api.AddSlicerResponse);
    });
  });

  unittest.group('obj-schema-AppendCellsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppendCellsRequest();
      var od = api.AppendCellsRequest.fromJson(o.toJson());
      checkAppendCellsRequest(od as api.AppendCellsRequest);
    });
  });

  unittest.group('obj-schema-AppendDimensionRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppendDimensionRequest();
      var od = api.AppendDimensionRequest.fromJson(o.toJson());
      checkAppendDimensionRequest(od as api.AppendDimensionRequest);
    });
  });

  unittest.group('obj-schema-AppendValuesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppendValuesResponse();
      var od = api.AppendValuesResponse.fromJson(o.toJson());
      checkAppendValuesResponse(od as api.AppendValuesResponse);
    });
  });

  unittest.group('obj-schema-AutoFillRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAutoFillRequest();
      var od = api.AutoFillRequest.fromJson(o.toJson());
      checkAutoFillRequest(od as api.AutoFillRequest);
    });
  });

  unittest.group('obj-schema-AutoResizeDimensionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAutoResizeDimensionsRequest();
      var od = api.AutoResizeDimensionsRequest.fromJson(o.toJson());
      checkAutoResizeDimensionsRequest(od as api.AutoResizeDimensionsRequest);
    });
  });

  unittest.group('obj-schema-BandedRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildBandedRange();
      var od = api.BandedRange.fromJson(o.toJson());
      checkBandedRange(od as api.BandedRange);
    });
  });

  unittest.group('obj-schema-BandingProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildBandingProperties();
      var od = api.BandingProperties.fromJson(o.toJson());
      checkBandingProperties(od as api.BandingProperties);
    });
  });

  unittest.group('obj-schema-BaselineValueFormat', () {
    unittest.test('to-json--from-json', () {
      var o = buildBaselineValueFormat();
      var od = api.BaselineValueFormat.fromJson(o.toJson());
      checkBaselineValueFormat(od as api.BaselineValueFormat);
    });
  });

  unittest.group('obj-schema-BasicChartAxis', () {
    unittest.test('to-json--from-json', () {
      var o = buildBasicChartAxis();
      var od = api.BasicChartAxis.fromJson(o.toJson());
      checkBasicChartAxis(od as api.BasicChartAxis);
    });
  });

  unittest.group('obj-schema-BasicChartDomain', () {
    unittest.test('to-json--from-json', () {
      var o = buildBasicChartDomain();
      var od = api.BasicChartDomain.fromJson(o.toJson());
      checkBasicChartDomain(od as api.BasicChartDomain);
    });
  });

  unittest.group('obj-schema-BasicChartSeries', () {
    unittest.test('to-json--from-json', () {
      var o = buildBasicChartSeries();
      var od = api.BasicChartSeries.fromJson(o.toJson());
      checkBasicChartSeries(od as api.BasicChartSeries);
    });
  });

  unittest.group('obj-schema-BasicChartSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildBasicChartSpec();
      var od = api.BasicChartSpec.fromJson(o.toJson());
      checkBasicChartSpec(od as api.BasicChartSpec);
    });
  });

  unittest.group('obj-schema-BasicFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildBasicFilter();
      var od = api.BasicFilter.fromJson(o.toJson());
      checkBasicFilter(od as api.BasicFilter);
    });
  });

  unittest.group('obj-schema-BatchClearValuesByDataFilterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchClearValuesByDataFilterRequest();
      var od = api.BatchClearValuesByDataFilterRequest.fromJson(o.toJson());
      checkBatchClearValuesByDataFilterRequest(
          od as api.BatchClearValuesByDataFilterRequest);
    });
  });

  unittest.group('obj-schema-BatchClearValuesByDataFilterResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchClearValuesByDataFilterResponse();
      var od = api.BatchClearValuesByDataFilterResponse.fromJson(o.toJson());
      checkBatchClearValuesByDataFilterResponse(
          od as api.BatchClearValuesByDataFilterResponse);
    });
  });

  unittest.group('obj-schema-BatchClearValuesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchClearValuesRequest();
      var od = api.BatchClearValuesRequest.fromJson(o.toJson());
      checkBatchClearValuesRequest(od as api.BatchClearValuesRequest);
    });
  });

  unittest.group('obj-schema-BatchClearValuesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchClearValuesResponse();
      var od = api.BatchClearValuesResponse.fromJson(o.toJson());
      checkBatchClearValuesResponse(od as api.BatchClearValuesResponse);
    });
  });

  unittest.group('obj-schema-BatchGetValuesByDataFilterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchGetValuesByDataFilterRequest();
      var od = api.BatchGetValuesByDataFilterRequest.fromJson(o.toJson());
      checkBatchGetValuesByDataFilterRequest(
          od as api.BatchGetValuesByDataFilterRequest);
    });
  });

  unittest.group('obj-schema-BatchGetValuesByDataFilterResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchGetValuesByDataFilterResponse();
      var od = api.BatchGetValuesByDataFilterResponse.fromJson(o.toJson());
      checkBatchGetValuesByDataFilterResponse(
          od as api.BatchGetValuesByDataFilterResponse);
    });
  });

  unittest.group('obj-schema-BatchGetValuesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchGetValuesResponse();
      var od = api.BatchGetValuesResponse.fromJson(o.toJson());
      checkBatchGetValuesResponse(od as api.BatchGetValuesResponse);
    });
  });

  unittest.group('obj-schema-BatchUpdateSpreadsheetRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchUpdateSpreadsheetRequest();
      var od = api.BatchUpdateSpreadsheetRequest.fromJson(o.toJson());
      checkBatchUpdateSpreadsheetRequest(
          od as api.BatchUpdateSpreadsheetRequest);
    });
  });

  unittest.group('obj-schema-BatchUpdateSpreadsheetResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchUpdateSpreadsheetResponse();
      var od = api.BatchUpdateSpreadsheetResponse.fromJson(o.toJson());
      checkBatchUpdateSpreadsheetResponse(
          od as api.BatchUpdateSpreadsheetResponse);
    });
  });

  unittest.group('obj-schema-BatchUpdateValuesByDataFilterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchUpdateValuesByDataFilterRequest();
      var od = api.BatchUpdateValuesByDataFilterRequest.fromJson(o.toJson());
      checkBatchUpdateValuesByDataFilterRequest(
          od as api.BatchUpdateValuesByDataFilterRequest);
    });
  });

  unittest.group('obj-schema-BatchUpdateValuesByDataFilterResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchUpdateValuesByDataFilterResponse();
      var od = api.BatchUpdateValuesByDataFilterResponse.fromJson(o.toJson());
      checkBatchUpdateValuesByDataFilterResponse(
          od as api.BatchUpdateValuesByDataFilterResponse);
    });
  });

  unittest.group('obj-schema-BatchUpdateValuesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchUpdateValuesRequest();
      var od = api.BatchUpdateValuesRequest.fromJson(o.toJson());
      checkBatchUpdateValuesRequest(od as api.BatchUpdateValuesRequest);
    });
  });

  unittest.group('obj-schema-BatchUpdateValuesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchUpdateValuesResponse();
      var od = api.BatchUpdateValuesResponse.fromJson(o.toJson());
      checkBatchUpdateValuesResponse(od as api.BatchUpdateValuesResponse);
    });
  });

  unittest.group('obj-schema-BigQueryDataSourceSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildBigQueryDataSourceSpec();
      var od = api.BigQueryDataSourceSpec.fromJson(o.toJson());
      checkBigQueryDataSourceSpec(od as api.BigQueryDataSourceSpec);
    });
  });

  unittest.group('obj-schema-BigQueryQuerySpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildBigQueryQuerySpec();
      var od = api.BigQueryQuerySpec.fromJson(o.toJson());
      checkBigQueryQuerySpec(od as api.BigQueryQuerySpec);
    });
  });

  unittest.group('obj-schema-BigQueryTableSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildBigQueryTableSpec();
      var od = api.BigQueryTableSpec.fromJson(o.toJson());
      checkBigQueryTableSpec(od as api.BigQueryTableSpec);
    });
  });

  unittest.group('obj-schema-BooleanCondition', () {
    unittest.test('to-json--from-json', () {
      var o = buildBooleanCondition();
      var od = api.BooleanCondition.fromJson(o.toJson());
      checkBooleanCondition(od as api.BooleanCondition);
    });
  });

  unittest.group('obj-schema-BooleanRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildBooleanRule();
      var od = api.BooleanRule.fromJson(o.toJson());
      checkBooleanRule(od as api.BooleanRule);
    });
  });

  unittest.group('obj-schema-Border', () {
    unittest.test('to-json--from-json', () {
      var o = buildBorder();
      var od = api.Border.fromJson(o.toJson());
      checkBorder(od as api.Border);
    });
  });

  unittest.group('obj-schema-Borders', () {
    unittest.test('to-json--from-json', () {
      var o = buildBorders();
      var od = api.Borders.fromJson(o.toJson());
      checkBorders(od as api.Borders);
    });
  });

  unittest.group('obj-schema-BubbleChartSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildBubbleChartSpec();
      var od = api.BubbleChartSpec.fromJson(o.toJson());
      checkBubbleChartSpec(od as api.BubbleChartSpec);
    });
  });

  unittest.group('obj-schema-CandlestickChartSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildCandlestickChartSpec();
      var od = api.CandlestickChartSpec.fromJson(o.toJson());
      checkCandlestickChartSpec(od as api.CandlestickChartSpec);
    });
  });

  unittest.group('obj-schema-CandlestickData', () {
    unittest.test('to-json--from-json', () {
      var o = buildCandlestickData();
      var od = api.CandlestickData.fromJson(o.toJson());
      checkCandlestickData(od as api.CandlestickData);
    });
  });

  unittest.group('obj-schema-CandlestickDomain', () {
    unittest.test('to-json--from-json', () {
      var o = buildCandlestickDomain();
      var od = api.CandlestickDomain.fromJson(o.toJson());
      checkCandlestickDomain(od as api.CandlestickDomain);
    });
  });

  unittest.group('obj-schema-CandlestickSeries', () {
    unittest.test('to-json--from-json', () {
      var o = buildCandlestickSeries();
      var od = api.CandlestickSeries.fromJson(o.toJson());
      checkCandlestickSeries(od as api.CandlestickSeries);
    });
  });

  unittest.group('obj-schema-CellData', () {
    unittest.test('to-json--from-json', () {
      var o = buildCellData();
      var od = api.CellData.fromJson(o.toJson());
      checkCellData(od as api.CellData);
    });
  });

  unittest.group('obj-schema-CellFormat', () {
    unittest.test('to-json--from-json', () {
      var o = buildCellFormat();
      var od = api.CellFormat.fromJson(o.toJson());
      checkCellFormat(od as api.CellFormat);
    });
  });

  unittest.group('obj-schema-ChartAxisViewWindowOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildChartAxisViewWindowOptions();
      var od = api.ChartAxisViewWindowOptions.fromJson(o.toJson());
      checkChartAxisViewWindowOptions(od as api.ChartAxisViewWindowOptions);
    });
  });

  unittest.group('obj-schema-ChartCustomNumberFormatOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildChartCustomNumberFormatOptions();
      var od = api.ChartCustomNumberFormatOptions.fromJson(o.toJson());
      checkChartCustomNumberFormatOptions(
          od as api.ChartCustomNumberFormatOptions);
    });
  });

  unittest.group('obj-schema-ChartData', () {
    unittest.test('to-json--from-json', () {
      var o = buildChartData();
      var od = api.ChartData.fromJson(o.toJson());
      checkChartData(od as api.ChartData);
    });
  });

  unittest.group('obj-schema-ChartDateTimeRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildChartDateTimeRule();
      var od = api.ChartDateTimeRule.fromJson(o.toJson());
      checkChartDateTimeRule(od as api.ChartDateTimeRule);
    });
  });

  unittest.group('obj-schema-ChartGroupRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildChartGroupRule();
      var od = api.ChartGroupRule.fromJson(o.toJson());
      checkChartGroupRule(od as api.ChartGroupRule);
    });
  });

  unittest.group('obj-schema-ChartHistogramRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildChartHistogramRule();
      var od = api.ChartHistogramRule.fromJson(o.toJson());
      checkChartHistogramRule(od as api.ChartHistogramRule);
    });
  });

  unittest.group('obj-schema-ChartSourceRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildChartSourceRange();
      var od = api.ChartSourceRange.fromJson(o.toJson());
      checkChartSourceRange(od as api.ChartSourceRange);
    });
  });

  unittest.group('obj-schema-ChartSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildChartSpec();
      var od = api.ChartSpec.fromJson(o.toJson());
      checkChartSpec(od as api.ChartSpec);
    });
  });

  unittest.group('obj-schema-ClearBasicFilterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildClearBasicFilterRequest();
      var od = api.ClearBasicFilterRequest.fromJson(o.toJson());
      checkClearBasicFilterRequest(od as api.ClearBasicFilterRequest);
    });
  });

  unittest.group('obj-schema-ClearValuesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildClearValuesRequest();
      var od = api.ClearValuesRequest.fromJson(o.toJson());
      checkClearValuesRequest(od as api.ClearValuesRequest);
    });
  });

  unittest.group('obj-schema-ClearValuesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildClearValuesResponse();
      var od = api.ClearValuesResponse.fromJson(o.toJson());
      checkClearValuesResponse(od as api.ClearValuesResponse);
    });
  });

  unittest.group('obj-schema-Color', () {
    unittest.test('to-json--from-json', () {
      var o = buildColor();
      var od = api.Color.fromJson(o.toJson());
      checkColor(od as api.Color);
    });
  });

  unittest.group('obj-schema-ColorStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildColorStyle();
      var od = api.ColorStyle.fromJson(o.toJson());
      checkColorStyle(od as api.ColorStyle);
    });
  });

  unittest.group('obj-schema-ConditionValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildConditionValue();
      var od = api.ConditionValue.fromJson(o.toJson());
      checkConditionValue(od as api.ConditionValue);
    });
  });

  unittest.group('obj-schema-ConditionalFormatRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildConditionalFormatRule();
      var od = api.ConditionalFormatRule.fromJson(o.toJson());
      checkConditionalFormatRule(od as api.ConditionalFormatRule);
    });
  });

  unittest.group('obj-schema-CopyPasteRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCopyPasteRequest();
      var od = api.CopyPasteRequest.fromJson(o.toJson());
      checkCopyPasteRequest(od as api.CopyPasteRequest);
    });
  });

  unittest.group('obj-schema-CopySheetToAnotherSpreadsheetRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCopySheetToAnotherSpreadsheetRequest();
      var od = api.CopySheetToAnotherSpreadsheetRequest.fromJson(o.toJson());
      checkCopySheetToAnotherSpreadsheetRequest(
          od as api.CopySheetToAnotherSpreadsheetRequest);
    });
  });

  unittest.group('obj-schema-CreateDeveloperMetadataRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateDeveloperMetadataRequest();
      var od = api.CreateDeveloperMetadataRequest.fromJson(o.toJson());
      checkCreateDeveloperMetadataRequest(
          od as api.CreateDeveloperMetadataRequest);
    });
  });

  unittest.group('obj-schema-CreateDeveloperMetadataResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateDeveloperMetadataResponse();
      var od = api.CreateDeveloperMetadataResponse.fromJson(o.toJson());
      checkCreateDeveloperMetadataResponse(
          od as api.CreateDeveloperMetadataResponse);
    });
  });

  unittest.group('obj-schema-CutPasteRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCutPasteRequest();
      var od = api.CutPasteRequest.fromJson(o.toJson());
      checkCutPasteRequest(od as api.CutPasteRequest);
    });
  });

  unittest.group('obj-schema-DataExecutionStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataExecutionStatus();
      var od = api.DataExecutionStatus.fromJson(o.toJson());
      checkDataExecutionStatus(od as api.DataExecutionStatus);
    });
  });

  unittest.group('obj-schema-DataFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataFilter();
      var od = api.DataFilter.fromJson(o.toJson());
      checkDataFilter(od as api.DataFilter);
    });
  });

  unittest.group('obj-schema-DataFilterValueRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataFilterValueRange();
      var od = api.DataFilterValueRange.fromJson(o.toJson());
      checkDataFilterValueRange(od as api.DataFilterValueRange);
    });
  });

  unittest.group('obj-schema-DataSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSource();
      var od = api.DataSource.fromJson(o.toJson());
      checkDataSource(od as api.DataSource);
    });
  });

  unittest.group('obj-schema-DataSourceChartProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceChartProperties();
      var od = api.DataSourceChartProperties.fromJson(o.toJson());
      checkDataSourceChartProperties(od as api.DataSourceChartProperties);
    });
  });

  unittest.group('obj-schema-DataSourceColumn', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceColumn();
      var od = api.DataSourceColumn.fromJson(o.toJson());
      checkDataSourceColumn(od as api.DataSourceColumn);
    });
  });

  unittest.group('obj-schema-DataSourceColumnReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceColumnReference();
      var od = api.DataSourceColumnReference.fromJson(o.toJson());
      checkDataSourceColumnReference(od as api.DataSourceColumnReference);
    });
  });

  unittest.group('obj-schema-DataSourceFormula', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceFormula();
      var od = api.DataSourceFormula.fromJson(o.toJson());
      checkDataSourceFormula(od as api.DataSourceFormula);
    });
  });

  unittest.group('obj-schema-DataSourceObjectReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceObjectReference();
      var od = api.DataSourceObjectReference.fromJson(o.toJson());
      checkDataSourceObjectReference(od as api.DataSourceObjectReference);
    });
  });

  unittest.group('obj-schema-DataSourceObjectReferences', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceObjectReferences();
      var od = api.DataSourceObjectReferences.fromJson(o.toJson());
      checkDataSourceObjectReferences(od as api.DataSourceObjectReferences);
    });
  });

  unittest.group('obj-schema-DataSourceParameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceParameter();
      var od = api.DataSourceParameter.fromJson(o.toJson());
      checkDataSourceParameter(od as api.DataSourceParameter);
    });
  });

  unittest.group('obj-schema-DataSourceRefreshDailySchedule', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceRefreshDailySchedule();
      var od = api.DataSourceRefreshDailySchedule.fromJson(o.toJson());
      checkDataSourceRefreshDailySchedule(
          od as api.DataSourceRefreshDailySchedule);
    });
  });

  unittest.group('obj-schema-DataSourceRefreshMonthlySchedule', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceRefreshMonthlySchedule();
      var od = api.DataSourceRefreshMonthlySchedule.fromJson(o.toJson());
      checkDataSourceRefreshMonthlySchedule(
          od as api.DataSourceRefreshMonthlySchedule);
    });
  });

  unittest.group('obj-schema-DataSourceRefreshSchedule', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceRefreshSchedule();
      var od = api.DataSourceRefreshSchedule.fromJson(o.toJson());
      checkDataSourceRefreshSchedule(od as api.DataSourceRefreshSchedule);
    });
  });

  unittest.group('obj-schema-DataSourceRefreshWeeklySchedule', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceRefreshWeeklySchedule();
      var od = api.DataSourceRefreshWeeklySchedule.fromJson(o.toJson());
      checkDataSourceRefreshWeeklySchedule(
          od as api.DataSourceRefreshWeeklySchedule);
    });
  });

  unittest.group('obj-schema-DataSourceSheetDimensionRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceSheetDimensionRange();
      var od = api.DataSourceSheetDimensionRange.fromJson(o.toJson());
      checkDataSourceSheetDimensionRange(
          od as api.DataSourceSheetDimensionRange);
    });
  });

  unittest.group('obj-schema-DataSourceSheetProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceSheetProperties();
      var od = api.DataSourceSheetProperties.fromJson(o.toJson());
      checkDataSourceSheetProperties(od as api.DataSourceSheetProperties);
    });
  });

  unittest.group('obj-schema-DataSourceSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceSpec();
      var od = api.DataSourceSpec.fromJson(o.toJson());
      checkDataSourceSpec(od as api.DataSourceSpec);
    });
  });

  unittest.group('obj-schema-DataSourceTable', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceTable();
      var od = api.DataSourceTable.fromJson(o.toJson());
      checkDataSourceTable(od as api.DataSourceTable);
    });
  });

  unittest.group('obj-schema-DataValidationRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataValidationRule();
      var od = api.DataValidationRule.fromJson(o.toJson());
      checkDataValidationRule(od as api.DataValidationRule);
    });
  });

  unittest.group('obj-schema-DateTimeRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildDateTimeRule();
      var od = api.DateTimeRule.fromJson(o.toJson());
      checkDateTimeRule(od as api.DateTimeRule);
    });
  });

  unittest.group('obj-schema-DeleteBandingRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteBandingRequest();
      var od = api.DeleteBandingRequest.fromJson(o.toJson());
      checkDeleteBandingRequest(od as api.DeleteBandingRequest);
    });
  });

  unittest.group('obj-schema-DeleteConditionalFormatRuleRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteConditionalFormatRuleRequest();
      var od = api.DeleteConditionalFormatRuleRequest.fromJson(o.toJson());
      checkDeleteConditionalFormatRuleRequest(
          od as api.DeleteConditionalFormatRuleRequest);
    });
  });

  unittest.group('obj-schema-DeleteConditionalFormatRuleResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteConditionalFormatRuleResponse();
      var od = api.DeleteConditionalFormatRuleResponse.fromJson(o.toJson());
      checkDeleteConditionalFormatRuleResponse(
          od as api.DeleteConditionalFormatRuleResponse);
    });
  });

  unittest.group('obj-schema-DeleteDataSourceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteDataSourceRequest();
      var od = api.DeleteDataSourceRequest.fromJson(o.toJson());
      checkDeleteDataSourceRequest(od as api.DeleteDataSourceRequest);
    });
  });

  unittest.group('obj-schema-DeleteDeveloperMetadataRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteDeveloperMetadataRequest();
      var od = api.DeleteDeveloperMetadataRequest.fromJson(o.toJson());
      checkDeleteDeveloperMetadataRequest(
          od as api.DeleteDeveloperMetadataRequest);
    });
  });

  unittest.group('obj-schema-DeleteDeveloperMetadataResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteDeveloperMetadataResponse();
      var od = api.DeleteDeveloperMetadataResponse.fromJson(o.toJson());
      checkDeleteDeveloperMetadataResponse(
          od as api.DeleteDeveloperMetadataResponse);
    });
  });

  unittest.group('obj-schema-DeleteDimensionGroupRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteDimensionGroupRequest();
      var od = api.DeleteDimensionGroupRequest.fromJson(o.toJson());
      checkDeleteDimensionGroupRequest(od as api.DeleteDimensionGroupRequest);
    });
  });

  unittest.group('obj-schema-DeleteDimensionGroupResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteDimensionGroupResponse();
      var od = api.DeleteDimensionGroupResponse.fromJson(o.toJson());
      checkDeleteDimensionGroupResponse(od as api.DeleteDimensionGroupResponse);
    });
  });

  unittest.group('obj-schema-DeleteDimensionRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteDimensionRequest();
      var od = api.DeleteDimensionRequest.fromJson(o.toJson());
      checkDeleteDimensionRequest(od as api.DeleteDimensionRequest);
    });
  });

  unittest.group('obj-schema-DeleteDuplicatesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteDuplicatesRequest();
      var od = api.DeleteDuplicatesRequest.fromJson(o.toJson());
      checkDeleteDuplicatesRequest(od as api.DeleteDuplicatesRequest);
    });
  });

  unittest.group('obj-schema-DeleteDuplicatesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteDuplicatesResponse();
      var od = api.DeleteDuplicatesResponse.fromJson(o.toJson());
      checkDeleteDuplicatesResponse(od as api.DeleteDuplicatesResponse);
    });
  });

  unittest.group('obj-schema-DeleteEmbeddedObjectRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteEmbeddedObjectRequest();
      var od = api.DeleteEmbeddedObjectRequest.fromJson(o.toJson());
      checkDeleteEmbeddedObjectRequest(od as api.DeleteEmbeddedObjectRequest);
    });
  });

  unittest.group('obj-schema-DeleteFilterViewRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteFilterViewRequest();
      var od = api.DeleteFilterViewRequest.fromJson(o.toJson());
      checkDeleteFilterViewRequest(od as api.DeleteFilterViewRequest);
    });
  });

  unittest.group('obj-schema-DeleteNamedRangeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteNamedRangeRequest();
      var od = api.DeleteNamedRangeRequest.fromJson(o.toJson());
      checkDeleteNamedRangeRequest(od as api.DeleteNamedRangeRequest);
    });
  });

  unittest.group('obj-schema-DeleteProtectedRangeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteProtectedRangeRequest();
      var od = api.DeleteProtectedRangeRequest.fromJson(o.toJson());
      checkDeleteProtectedRangeRequest(od as api.DeleteProtectedRangeRequest);
    });
  });

  unittest.group('obj-schema-DeleteRangeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteRangeRequest();
      var od = api.DeleteRangeRequest.fromJson(o.toJson());
      checkDeleteRangeRequest(od as api.DeleteRangeRequest);
    });
  });

  unittest.group('obj-schema-DeleteSheetRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteSheetRequest();
      var od = api.DeleteSheetRequest.fromJson(o.toJson());
      checkDeleteSheetRequest(od as api.DeleteSheetRequest);
    });
  });

  unittest.group('obj-schema-DeveloperMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeveloperMetadata();
      var od = api.DeveloperMetadata.fromJson(o.toJson());
      checkDeveloperMetadata(od as api.DeveloperMetadata);
    });
  });

  unittest.group('obj-schema-DeveloperMetadataLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeveloperMetadataLocation();
      var od = api.DeveloperMetadataLocation.fromJson(o.toJson());
      checkDeveloperMetadataLocation(od as api.DeveloperMetadataLocation);
    });
  });

  unittest.group('obj-schema-DeveloperMetadataLookup', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeveloperMetadataLookup();
      var od = api.DeveloperMetadataLookup.fromJson(o.toJson());
      checkDeveloperMetadataLookup(od as api.DeveloperMetadataLookup);
    });
  });

  unittest.group('obj-schema-DimensionGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensionGroup();
      var od = api.DimensionGroup.fromJson(o.toJson());
      checkDimensionGroup(od as api.DimensionGroup);
    });
  });

  unittest.group('obj-schema-DimensionProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensionProperties();
      var od = api.DimensionProperties.fromJson(o.toJson());
      checkDimensionProperties(od as api.DimensionProperties);
    });
  });

  unittest.group('obj-schema-DimensionRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensionRange();
      var od = api.DimensionRange.fromJson(o.toJson());
      checkDimensionRange(od as api.DimensionRange);
    });
  });

  unittest.group('obj-schema-DuplicateFilterViewRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDuplicateFilterViewRequest();
      var od = api.DuplicateFilterViewRequest.fromJson(o.toJson());
      checkDuplicateFilterViewRequest(od as api.DuplicateFilterViewRequest);
    });
  });

  unittest.group('obj-schema-DuplicateFilterViewResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDuplicateFilterViewResponse();
      var od = api.DuplicateFilterViewResponse.fromJson(o.toJson());
      checkDuplicateFilterViewResponse(od as api.DuplicateFilterViewResponse);
    });
  });

  unittest.group('obj-schema-DuplicateSheetRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDuplicateSheetRequest();
      var od = api.DuplicateSheetRequest.fromJson(o.toJson());
      checkDuplicateSheetRequest(od as api.DuplicateSheetRequest);
    });
  });

  unittest.group('obj-schema-DuplicateSheetResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDuplicateSheetResponse();
      var od = api.DuplicateSheetResponse.fromJson(o.toJson());
      checkDuplicateSheetResponse(od as api.DuplicateSheetResponse);
    });
  });

  unittest.group('obj-schema-Editors', () {
    unittest.test('to-json--from-json', () {
      var o = buildEditors();
      var od = api.Editors.fromJson(o.toJson());
      checkEditors(od as api.Editors);
    });
  });

  unittest.group('obj-schema-EmbeddedChart', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmbeddedChart();
      var od = api.EmbeddedChart.fromJson(o.toJson());
      checkEmbeddedChart(od as api.EmbeddedChart);
    });
  });

  unittest.group('obj-schema-EmbeddedObjectPosition', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmbeddedObjectPosition();
      var od = api.EmbeddedObjectPosition.fromJson(o.toJson());
      checkEmbeddedObjectPosition(od as api.EmbeddedObjectPosition);
    });
  });

  unittest.group('obj-schema-ErrorValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildErrorValue();
      var od = api.ErrorValue.fromJson(o.toJson());
      checkErrorValue(od as api.ErrorValue);
    });
  });

  unittest.group('obj-schema-ExtendedValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildExtendedValue();
      var od = api.ExtendedValue.fromJson(o.toJson());
      checkExtendedValue(od as api.ExtendedValue);
    });
  });

  unittest.group('obj-schema-FilterCriteria', () {
    unittest.test('to-json--from-json', () {
      var o = buildFilterCriteria();
      var od = api.FilterCriteria.fromJson(o.toJson());
      checkFilterCriteria(od as api.FilterCriteria);
    });
  });

  unittest.group('obj-schema-FilterSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildFilterSpec();
      var od = api.FilterSpec.fromJson(o.toJson());
      checkFilterSpec(od as api.FilterSpec);
    });
  });

  unittest.group('obj-schema-FilterView', () {
    unittest.test('to-json--from-json', () {
      var o = buildFilterView();
      var od = api.FilterView.fromJson(o.toJson());
      checkFilterView(od as api.FilterView);
    });
  });

  unittest.group('obj-schema-FindReplaceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildFindReplaceRequest();
      var od = api.FindReplaceRequest.fromJson(o.toJson());
      checkFindReplaceRequest(od as api.FindReplaceRequest);
    });
  });

  unittest.group('obj-schema-FindReplaceResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildFindReplaceResponse();
      var od = api.FindReplaceResponse.fromJson(o.toJson());
      checkFindReplaceResponse(od as api.FindReplaceResponse);
    });
  });

  unittest.group('obj-schema-GetSpreadsheetByDataFilterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetSpreadsheetByDataFilterRequest();
      var od = api.GetSpreadsheetByDataFilterRequest.fromJson(o.toJson());
      checkGetSpreadsheetByDataFilterRequest(
          od as api.GetSpreadsheetByDataFilterRequest);
    });
  });

  unittest.group('obj-schema-GradientRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildGradientRule();
      var od = api.GradientRule.fromJson(o.toJson());
      checkGradientRule(od as api.GradientRule);
    });
  });

  unittest.group('obj-schema-GridCoordinate', () {
    unittest.test('to-json--from-json', () {
      var o = buildGridCoordinate();
      var od = api.GridCoordinate.fromJson(o.toJson());
      checkGridCoordinate(od as api.GridCoordinate);
    });
  });

  unittest.group('obj-schema-GridData', () {
    unittest.test('to-json--from-json', () {
      var o = buildGridData();
      var od = api.GridData.fromJson(o.toJson());
      checkGridData(od as api.GridData);
    });
  });

  unittest.group('obj-schema-GridProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildGridProperties();
      var od = api.GridProperties.fromJson(o.toJson());
      checkGridProperties(od as api.GridProperties);
    });
  });

  unittest.group('obj-schema-GridRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildGridRange();
      var od = api.GridRange.fromJson(o.toJson());
      checkGridRange(od as api.GridRange);
    });
  });

  unittest.group('obj-schema-HistogramChartSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildHistogramChartSpec();
      var od = api.HistogramChartSpec.fromJson(o.toJson());
      checkHistogramChartSpec(od as api.HistogramChartSpec);
    });
  });

  unittest.group('obj-schema-HistogramRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildHistogramRule();
      var od = api.HistogramRule.fromJson(o.toJson());
      checkHistogramRule(od as api.HistogramRule);
    });
  });

  unittest.group('obj-schema-HistogramSeries', () {
    unittest.test('to-json--from-json', () {
      var o = buildHistogramSeries();
      var od = api.HistogramSeries.fromJson(o.toJson());
      checkHistogramSeries(od as api.HistogramSeries);
    });
  });

  unittest.group('obj-schema-InsertDimensionRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertDimensionRequest();
      var od = api.InsertDimensionRequest.fromJson(o.toJson());
      checkInsertDimensionRequest(od as api.InsertDimensionRequest);
    });
  });

  unittest.group('obj-schema-InsertRangeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertRangeRequest();
      var od = api.InsertRangeRequest.fromJson(o.toJson());
      checkInsertRangeRequest(od as api.InsertRangeRequest);
    });
  });

  unittest.group('obj-schema-InterpolationPoint', () {
    unittest.test('to-json--from-json', () {
      var o = buildInterpolationPoint();
      var od = api.InterpolationPoint.fromJson(o.toJson());
      checkInterpolationPoint(od as api.InterpolationPoint);
    });
  });

  unittest.group('obj-schema-Interval', () {
    unittest.test('to-json--from-json', () {
      var o = buildInterval();
      var od = api.Interval.fromJson(o.toJson());
      checkInterval(od as api.Interval);
    });
  });

  unittest.group('obj-schema-IterativeCalculationSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildIterativeCalculationSettings();
      var od = api.IterativeCalculationSettings.fromJson(o.toJson());
      checkIterativeCalculationSettings(od as api.IterativeCalculationSettings);
    });
  });

  unittest.group('obj-schema-KeyValueFormat', () {
    unittest.test('to-json--from-json', () {
      var o = buildKeyValueFormat();
      var od = api.KeyValueFormat.fromJson(o.toJson());
      checkKeyValueFormat(od as api.KeyValueFormat);
    });
  });

  unittest.group('obj-schema-LineStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildLineStyle();
      var od = api.LineStyle.fromJson(o.toJson());
      checkLineStyle(od as api.LineStyle);
    });
  });

  unittest.group('obj-schema-ManualRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildManualRule();
      var od = api.ManualRule.fromJson(o.toJson());
      checkManualRule(od as api.ManualRule);
    });
  });

  unittest.group('obj-schema-ManualRuleGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildManualRuleGroup();
      var od = api.ManualRuleGroup.fromJson(o.toJson());
      checkManualRuleGroup(od as api.ManualRuleGroup);
    });
  });

  unittest.group('obj-schema-MatchedDeveloperMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildMatchedDeveloperMetadata();
      var od = api.MatchedDeveloperMetadata.fromJson(o.toJson());
      checkMatchedDeveloperMetadata(od as api.MatchedDeveloperMetadata);
    });
  });

  unittest.group('obj-schema-MatchedValueRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildMatchedValueRange();
      var od = api.MatchedValueRange.fromJson(o.toJson());
      checkMatchedValueRange(od as api.MatchedValueRange);
    });
  });

  unittest.group('obj-schema-MergeCellsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildMergeCellsRequest();
      var od = api.MergeCellsRequest.fromJson(o.toJson());
      checkMergeCellsRequest(od as api.MergeCellsRequest);
    });
  });

  unittest.group('obj-schema-MoveDimensionRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildMoveDimensionRequest();
      var od = api.MoveDimensionRequest.fromJson(o.toJson());
      checkMoveDimensionRequest(od as api.MoveDimensionRequest);
    });
  });

  unittest.group('obj-schema-NamedRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildNamedRange();
      var od = api.NamedRange.fromJson(o.toJson());
      checkNamedRange(od as api.NamedRange);
    });
  });

  unittest.group('obj-schema-NumberFormat', () {
    unittest.test('to-json--from-json', () {
      var o = buildNumberFormat();
      var od = api.NumberFormat.fromJson(o.toJson());
      checkNumberFormat(od as api.NumberFormat);
    });
  });

  unittest.group('obj-schema-OrgChartSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrgChartSpec();
      var od = api.OrgChartSpec.fromJson(o.toJson());
      checkOrgChartSpec(od as api.OrgChartSpec);
    });
  });

  unittest.group('obj-schema-OverlayPosition', () {
    unittest.test('to-json--from-json', () {
      var o = buildOverlayPosition();
      var od = api.OverlayPosition.fromJson(o.toJson());
      checkOverlayPosition(od as api.OverlayPosition);
    });
  });

  unittest.group('obj-schema-Padding', () {
    unittest.test('to-json--from-json', () {
      var o = buildPadding();
      var od = api.Padding.fromJson(o.toJson());
      checkPadding(od as api.Padding);
    });
  });

  unittest.group('obj-schema-PasteDataRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildPasteDataRequest();
      var od = api.PasteDataRequest.fromJson(o.toJson());
      checkPasteDataRequest(od as api.PasteDataRequest);
    });
  });

  unittest.group('obj-schema-PieChartSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildPieChartSpec();
      var od = api.PieChartSpec.fromJson(o.toJson());
      checkPieChartSpec(od as api.PieChartSpec);
    });
  });

  unittest.group('obj-schema-PivotFilterCriteria', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotFilterCriteria();
      var od = api.PivotFilterCriteria.fromJson(o.toJson());
      checkPivotFilterCriteria(od as api.PivotFilterCriteria);
    });
  });

  unittest.group('obj-schema-PivotFilterSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotFilterSpec();
      var od = api.PivotFilterSpec.fromJson(o.toJson());
      checkPivotFilterSpec(od as api.PivotFilterSpec);
    });
  });

  unittest.group('obj-schema-PivotGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotGroup();
      var od = api.PivotGroup.fromJson(o.toJson());
      checkPivotGroup(od as api.PivotGroup);
    });
  });

  unittest.group('obj-schema-PivotGroupLimit', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotGroupLimit();
      var od = api.PivotGroupLimit.fromJson(o.toJson());
      checkPivotGroupLimit(od as api.PivotGroupLimit);
    });
  });

  unittest.group('obj-schema-PivotGroupRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotGroupRule();
      var od = api.PivotGroupRule.fromJson(o.toJson());
      checkPivotGroupRule(od as api.PivotGroupRule);
    });
  });

  unittest.group('obj-schema-PivotGroupSortValueBucket', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotGroupSortValueBucket();
      var od = api.PivotGroupSortValueBucket.fromJson(o.toJson());
      checkPivotGroupSortValueBucket(od as api.PivotGroupSortValueBucket);
    });
  });

  unittest.group('obj-schema-PivotGroupValueMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotGroupValueMetadata();
      var od = api.PivotGroupValueMetadata.fromJson(o.toJson());
      checkPivotGroupValueMetadata(od as api.PivotGroupValueMetadata);
    });
  });

  unittest.group('obj-schema-PivotTable', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotTable();
      var od = api.PivotTable.fromJson(o.toJson());
      checkPivotTable(od as api.PivotTable);
    });
  });

  unittest.group('obj-schema-PivotValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotValue();
      var od = api.PivotValue.fromJson(o.toJson());
      checkPivotValue(od as api.PivotValue);
    });
  });

  unittest.group('obj-schema-ProtectedRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildProtectedRange();
      var od = api.ProtectedRange.fromJson(o.toJson());
      checkProtectedRange(od as api.ProtectedRange);
    });
  });

  unittest.group('obj-schema-RandomizeRangeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRandomizeRangeRequest();
      var od = api.RandomizeRangeRequest.fromJson(o.toJson());
      checkRandomizeRangeRequest(od as api.RandomizeRangeRequest);
    });
  });

  unittest.group('obj-schema-RefreshDataSourceObjectExecutionStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildRefreshDataSourceObjectExecutionStatus();
      var od = api.RefreshDataSourceObjectExecutionStatus.fromJson(o.toJson());
      checkRefreshDataSourceObjectExecutionStatus(
          od as api.RefreshDataSourceObjectExecutionStatus);
    });
  });

  unittest.group('obj-schema-RefreshDataSourceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRefreshDataSourceRequest();
      var od = api.RefreshDataSourceRequest.fromJson(o.toJson());
      checkRefreshDataSourceRequest(od as api.RefreshDataSourceRequest);
    });
  });

  unittest.group('obj-schema-RefreshDataSourceResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRefreshDataSourceResponse();
      var od = api.RefreshDataSourceResponse.fromJson(o.toJson());
      checkRefreshDataSourceResponse(od as api.RefreshDataSourceResponse);
    });
  });

  unittest.group('obj-schema-RepeatCellRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRepeatCellRequest();
      var od = api.RepeatCellRequest.fromJson(o.toJson());
      checkRepeatCellRequest(od as api.RepeatCellRequest);
    });
  });

  unittest.group('obj-schema-Request', () {
    unittest.test('to-json--from-json', () {
      var o = buildRequest();
      var od = api.Request.fromJson(o.toJson());
      checkRequest(od as api.Request);
    });
  });

  unittest.group('obj-schema-Response', () {
    unittest.test('to-json--from-json', () {
      var o = buildResponse();
      var od = api.Response.fromJson(o.toJson());
      checkResponse(od as api.Response);
    });
  });

  unittest.group('obj-schema-RowData', () {
    unittest.test('to-json--from-json', () {
      var o = buildRowData();
      var od = api.RowData.fromJson(o.toJson());
      checkRowData(od as api.RowData);
    });
  });

  unittest.group('obj-schema-ScorecardChartSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildScorecardChartSpec();
      var od = api.ScorecardChartSpec.fromJson(o.toJson());
      checkScorecardChartSpec(od as api.ScorecardChartSpec);
    });
  });

  unittest.group('obj-schema-SearchDeveloperMetadataRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchDeveloperMetadataRequest();
      var od = api.SearchDeveloperMetadataRequest.fromJson(o.toJson());
      checkSearchDeveloperMetadataRequest(
          od as api.SearchDeveloperMetadataRequest);
    });
  });

  unittest.group('obj-schema-SearchDeveloperMetadataResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchDeveloperMetadataResponse();
      var od = api.SearchDeveloperMetadataResponse.fromJson(o.toJson());
      checkSearchDeveloperMetadataResponse(
          od as api.SearchDeveloperMetadataResponse);
    });
  });

  unittest.group('obj-schema-SetBasicFilterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetBasicFilterRequest();
      var od = api.SetBasicFilterRequest.fromJson(o.toJson());
      checkSetBasicFilterRequest(od as api.SetBasicFilterRequest);
    });
  });

  unittest.group('obj-schema-SetDataValidationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetDataValidationRequest();
      var od = api.SetDataValidationRequest.fromJson(o.toJson());
      checkSetDataValidationRequest(od as api.SetDataValidationRequest);
    });
  });

  unittest.group('obj-schema-Sheet', () {
    unittest.test('to-json--from-json', () {
      var o = buildSheet();
      var od = api.Sheet.fromJson(o.toJson());
      checkSheet(od as api.Sheet);
    });
  });

  unittest.group('obj-schema-SheetProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildSheetProperties();
      var od = api.SheetProperties.fromJson(o.toJson());
      checkSheetProperties(od as api.SheetProperties);
    });
  });

  unittest.group('obj-schema-Slicer', () {
    unittest.test('to-json--from-json', () {
      var o = buildSlicer();
      var od = api.Slicer.fromJson(o.toJson());
      checkSlicer(od as api.Slicer);
    });
  });

  unittest.group('obj-schema-SlicerSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildSlicerSpec();
      var od = api.SlicerSpec.fromJson(o.toJson());
      checkSlicerSpec(od as api.SlicerSpec);
    });
  });

  unittest.group('obj-schema-SortRangeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSortRangeRequest();
      var od = api.SortRangeRequest.fromJson(o.toJson());
      checkSortRangeRequest(od as api.SortRangeRequest);
    });
  });

  unittest.group('obj-schema-SortSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildSortSpec();
      var od = api.SortSpec.fromJson(o.toJson());
      checkSortSpec(od as api.SortSpec);
    });
  });

  unittest.group('obj-schema-SourceAndDestination', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceAndDestination();
      var od = api.SourceAndDestination.fromJson(o.toJson());
      checkSourceAndDestination(od as api.SourceAndDestination);
    });
  });

  unittest.group('obj-schema-Spreadsheet', () {
    unittest.test('to-json--from-json', () {
      var o = buildSpreadsheet();
      var od = api.Spreadsheet.fromJson(o.toJson());
      checkSpreadsheet(od as api.Spreadsheet);
    });
  });

  unittest.group('obj-schema-SpreadsheetProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildSpreadsheetProperties();
      var od = api.SpreadsheetProperties.fromJson(o.toJson());
      checkSpreadsheetProperties(od as api.SpreadsheetProperties);
    });
  });

  unittest.group('obj-schema-SpreadsheetTheme', () {
    unittest.test('to-json--from-json', () {
      var o = buildSpreadsheetTheme();
      var od = api.SpreadsheetTheme.fromJson(o.toJson());
      checkSpreadsheetTheme(od as api.SpreadsheetTheme);
    });
  });

  unittest.group('obj-schema-TextFormat', () {
    unittest.test('to-json--from-json', () {
      var o = buildTextFormat();
      var od = api.TextFormat.fromJson(o.toJson());
      checkTextFormat(od as api.TextFormat);
    });
  });

  unittest.group('obj-schema-TextFormatRun', () {
    unittest.test('to-json--from-json', () {
      var o = buildTextFormatRun();
      var od = api.TextFormatRun.fromJson(o.toJson());
      checkTextFormatRun(od as api.TextFormatRun);
    });
  });

  unittest.group('obj-schema-TextPosition', () {
    unittest.test('to-json--from-json', () {
      var o = buildTextPosition();
      var od = api.TextPosition.fromJson(o.toJson());
      checkTextPosition(od as api.TextPosition);
    });
  });

  unittest.group('obj-schema-TextRotation', () {
    unittest.test('to-json--from-json', () {
      var o = buildTextRotation();
      var od = api.TextRotation.fromJson(o.toJson());
      checkTextRotation(od as api.TextRotation);
    });
  });

  unittest.group('obj-schema-TextToColumnsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTextToColumnsRequest();
      var od = api.TextToColumnsRequest.fromJson(o.toJson());
      checkTextToColumnsRequest(od as api.TextToColumnsRequest);
    });
  });

  unittest.group('obj-schema-ThemeColorPair', () {
    unittest.test('to-json--from-json', () {
      var o = buildThemeColorPair();
      var od = api.ThemeColorPair.fromJson(o.toJson());
      checkThemeColorPair(od as api.ThemeColorPair);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeOfDay();
      var od = api.TimeOfDay.fromJson(o.toJson());
      checkTimeOfDay(od as api.TimeOfDay);
    });
  });

  unittest.group('obj-schema-TreemapChartColorScale', () {
    unittest.test('to-json--from-json', () {
      var o = buildTreemapChartColorScale();
      var od = api.TreemapChartColorScale.fromJson(o.toJson());
      checkTreemapChartColorScale(od as api.TreemapChartColorScale);
    });
  });

  unittest.group('obj-schema-TreemapChartSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildTreemapChartSpec();
      var od = api.TreemapChartSpec.fromJson(o.toJson());
      checkTreemapChartSpec(od as api.TreemapChartSpec);
    });
  });

  unittest.group('obj-schema-TrimWhitespaceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTrimWhitespaceRequest();
      var od = api.TrimWhitespaceRequest.fromJson(o.toJson());
      checkTrimWhitespaceRequest(od as api.TrimWhitespaceRequest);
    });
  });

  unittest.group('obj-schema-TrimWhitespaceResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTrimWhitespaceResponse();
      var od = api.TrimWhitespaceResponse.fromJson(o.toJson());
      checkTrimWhitespaceResponse(od as api.TrimWhitespaceResponse);
    });
  });

  unittest.group('obj-schema-UnmergeCellsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUnmergeCellsRequest();
      var od = api.UnmergeCellsRequest.fromJson(o.toJson());
      checkUnmergeCellsRequest(od as api.UnmergeCellsRequest);
    });
  });

  unittest.group('obj-schema-UpdateBandingRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateBandingRequest();
      var od = api.UpdateBandingRequest.fromJson(o.toJson());
      checkUpdateBandingRequest(od as api.UpdateBandingRequest);
    });
  });

  unittest.group('obj-schema-UpdateBordersRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateBordersRequest();
      var od = api.UpdateBordersRequest.fromJson(o.toJson());
      checkUpdateBordersRequest(od as api.UpdateBordersRequest);
    });
  });

  unittest.group('obj-schema-UpdateCellsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateCellsRequest();
      var od = api.UpdateCellsRequest.fromJson(o.toJson());
      checkUpdateCellsRequest(od as api.UpdateCellsRequest);
    });
  });

  unittest.group('obj-schema-UpdateChartSpecRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateChartSpecRequest();
      var od = api.UpdateChartSpecRequest.fromJson(o.toJson());
      checkUpdateChartSpecRequest(od as api.UpdateChartSpecRequest);
    });
  });

  unittest.group('obj-schema-UpdateConditionalFormatRuleRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateConditionalFormatRuleRequest();
      var od = api.UpdateConditionalFormatRuleRequest.fromJson(o.toJson());
      checkUpdateConditionalFormatRuleRequest(
          od as api.UpdateConditionalFormatRuleRequest);
    });
  });

  unittest.group('obj-schema-UpdateConditionalFormatRuleResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateConditionalFormatRuleResponse();
      var od = api.UpdateConditionalFormatRuleResponse.fromJson(o.toJson());
      checkUpdateConditionalFormatRuleResponse(
          od as api.UpdateConditionalFormatRuleResponse);
    });
  });

  unittest.group('obj-schema-UpdateDataSourceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateDataSourceRequest();
      var od = api.UpdateDataSourceRequest.fromJson(o.toJson());
      checkUpdateDataSourceRequest(od as api.UpdateDataSourceRequest);
    });
  });

  unittest.group('obj-schema-UpdateDataSourceResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateDataSourceResponse();
      var od = api.UpdateDataSourceResponse.fromJson(o.toJson());
      checkUpdateDataSourceResponse(od as api.UpdateDataSourceResponse);
    });
  });

  unittest.group('obj-schema-UpdateDeveloperMetadataRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateDeveloperMetadataRequest();
      var od = api.UpdateDeveloperMetadataRequest.fromJson(o.toJson());
      checkUpdateDeveloperMetadataRequest(
          od as api.UpdateDeveloperMetadataRequest);
    });
  });

  unittest.group('obj-schema-UpdateDeveloperMetadataResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateDeveloperMetadataResponse();
      var od = api.UpdateDeveloperMetadataResponse.fromJson(o.toJson());
      checkUpdateDeveloperMetadataResponse(
          od as api.UpdateDeveloperMetadataResponse);
    });
  });

  unittest.group('obj-schema-UpdateDimensionGroupRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateDimensionGroupRequest();
      var od = api.UpdateDimensionGroupRequest.fromJson(o.toJson());
      checkUpdateDimensionGroupRequest(od as api.UpdateDimensionGroupRequest);
    });
  });

  unittest.group('obj-schema-UpdateDimensionPropertiesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateDimensionPropertiesRequest();
      var od = api.UpdateDimensionPropertiesRequest.fromJson(o.toJson());
      checkUpdateDimensionPropertiesRequest(
          od as api.UpdateDimensionPropertiesRequest);
    });
  });

  unittest.group('obj-schema-UpdateEmbeddedObjectPositionRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateEmbeddedObjectPositionRequest();
      var od = api.UpdateEmbeddedObjectPositionRequest.fromJson(o.toJson());
      checkUpdateEmbeddedObjectPositionRequest(
          od as api.UpdateEmbeddedObjectPositionRequest);
    });
  });

  unittest.group('obj-schema-UpdateEmbeddedObjectPositionResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateEmbeddedObjectPositionResponse();
      var od = api.UpdateEmbeddedObjectPositionResponse.fromJson(o.toJson());
      checkUpdateEmbeddedObjectPositionResponse(
          od as api.UpdateEmbeddedObjectPositionResponse);
    });
  });

  unittest.group('obj-schema-UpdateFilterViewRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateFilterViewRequest();
      var od = api.UpdateFilterViewRequest.fromJson(o.toJson());
      checkUpdateFilterViewRequest(od as api.UpdateFilterViewRequest);
    });
  });

  unittest.group('obj-schema-UpdateNamedRangeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateNamedRangeRequest();
      var od = api.UpdateNamedRangeRequest.fromJson(o.toJson());
      checkUpdateNamedRangeRequest(od as api.UpdateNamedRangeRequest);
    });
  });

  unittest.group('obj-schema-UpdateProtectedRangeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateProtectedRangeRequest();
      var od = api.UpdateProtectedRangeRequest.fromJson(o.toJson());
      checkUpdateProtectedRangeRequest(od as api.UpdateProtectedRangeRequest);
    });
  });

  unittest.group('obj-schema-UpdateSheetPropertiesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateSheetPropertiesRequest();
      var od = api.UpdateSheetPropertiesRequest.fromJson(o.toJson());
      checkUpdateSheetPropertiesRequest(od as api.UpdateSheetPropertiesRequest);
    });
  });

  unittest.group('obj-schema-UpdateSlicerSpecRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateSlicerSpecRequest();
      var od = api.UpdateSlicerSpecRequest.fromJson(o.toJson());
      checkUpdateSlicerSpecRequest(od as api.UpdateSlicerSpecRequest);
    });
  });

  unittest.group('obj-schema-UpdateSpreadsheetPropertiesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateSpreadsheetPropertiesRequest();
      var od = api.UpdateSpreadsheetPropertiesRequest.fromJson(o.toJson());
      checkUpdateSpreadsheetPropertiesRequest(
          od as api.UpdateSpreadsheetPropertiesRequest);
    });
  });

  unittest.group('obj-schema-UpdateValuesByDataFilterResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateValuesByDataFilterResponse();
      var od = api.UpdateValuesByDataFilterResponse.fromJson(o.toJson());
      checkUpdateValuesByDataFilterResponse(
          od as api.UpdateValuesByDataFilterResponse);
    });
  });

  unittest.group('obj-schema-UpdateValuesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateValuesResponse();
      var od = api.UpdateValuesResponse.fromJson(o.toJson());
      checkUpdateValuesResponse(od as api.UpdateValuesResponse);
    });
  });

  unittest.group('obj-schema-ValueRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildValueRange();
      var od = api.ValueRange.fromJson(o.toJson());
      checkValueRange(od as api.ValueRange);
    });
  });

  unittest.group('obj-schema-WaterfallChartColumnStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildWaterfallChartColumnStyle();
      var od = api.WaterfallChartColumnStyle.fromJson(o.toJson());
      checkWaterfallChartColumnStyle(od as api.WaterfallChartColumnStyle);
    });
  });

  unittest.group('obj-schema-WaterfallChartCustomSubtotal', () {
    unittest.test('to-json--from-json', () {
      var o = buildWaterfallChartCustomSubtotal();
      var od = api.WaterfallChartCustomSubtotal.fromJson(o.toJson());
      checkWaterfallChartCustomSubtotal(od as api.WaterfallChartCustomSubtotal);
    });
  });

  unittest.group('obj-schema-WaterfallChartDomain', () {
    unittest.test('to-json--from-json', () {
      var o = buildWaterfallChartDomain();
      var od = api.WaterfallChartDomain.fromJson(o.toJson());
      checkWaterfallChartDomain(od as api.WaterfallChartDomain);
    });
  });

  unittest.group('obj-schema-WaterfallChartSeries', () {
    unittest.test('to-json--from-json', () {
      var o = buildWaterfallChartSeries();
      var od = api.WaterfallChartSeries.fromJson(o.toJson());
      checkWaterfallChartSeries(od as api.WaterfallChartSeries);
    });
  });

  unittest.group('obj-schema-WaterfallChartSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildWaterfallChartSpec();
      var od = api.WaterfallChartSpec.fromJson(o.toJson());
      checkWaterfallChartSpec(od as api.WaterfallChartSpec);
    });
  });

  unittest.group('resource-SpreadsheetsResourceApi', () {
    unittest.test('method--batchUpdate', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets;
      var arg_request = buildBatchUpdateSpreadsheetRequest();
      var arg_spreadsheetId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchUpdateSpreadsheetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateSpreadsheetRequest(
            obj as api.BatchUpdateSpreadsheetRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf(':batchUpdate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals(":batchUpdate"));
        pathOffset += 12;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchUpdateSpreadsheetResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_spreadsheetId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchUpdateSpreadsheetResponse(
            response as api.BatchUpdateSpreadsheetResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets;
      var arg_request = buildSpreadsheet();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Spreadsheet.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSpreadsheet(obj as api.Spreadsheet);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v4/spreadsheets"));
        pathOffset += 15;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSpreadsheet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSpreadsheet(response as api.Spreadsheet);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets;
      var arg_spreadsheetId = 'foo';
      var arg_includeGridData = true;
      var arg_ranges = buildUnnamed549();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));

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
        unittest.expect(queryMap["includeGridData"].first,
            unittest.equals("$arg_includeGridData"));
        unittest.expect(queryMap["ranges"], unittest.equals(arg_ranges));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSpreadsheet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_spreadsheetId,
              includeGridData: arg_includeGridData,
              ranges: arg_ranges,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSpreadsheet(response as api.Spreadsheet);
      })));
    });

    unittest.test('method--getByDataFilter', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets;
      var arg_request = buildGetSpreadsheetByDataFilterRequest();
      var arg_spreadsheetId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetSpreadsheetByDataFilterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetSpreadsheetByDataFilterRequest(
            obj as api.GetSpreadsheetByDataFilterRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf(':getByDataFilter', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals(":getByDataFilter"));
        pathOffset += 16;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSpreadsheet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getByDataFilter(arg_request, arg_spreadsheetId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSpreadsheet(response as api.Spreadsheet);
      })));
    });
  });

  unittest.group('resource-SpreadsheetsDeveloperMetadataResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets.developerMetadata;
      var arg_spreadsheetId = 'foo';
      var arg_metadataId = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf('/developerMetadata/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/developerMetadata/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_metadataId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDeveloperMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_spreadsheetId, arg_metadataId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeveloperMetadata(response as api.DeveloperMetadata);
      })));
    });

    unittest.test('method--search', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets.developerMetadata;
      var arg_request = buildSearchDeveloperMetadataRequest();
      var arg_spreadsheetId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SearchDeveloperMetadataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchDeveloperMetadataRequest(
            obj as api.SearchDeveloperMetadataRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf('/developerMetadata:search', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/developerMetadata:search"));
        pathOffset += 25;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchDeveloperMetadataResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_request, arg_spreadsheetId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchDeveloperMetadataResponse(
            response as api.SearchDeveloperMetadataResponse);
      })));
    });
  });

  unittest.group('resource-SpreadsheetsSheetsResourceApi', () {
    unittest.test('method--copyTo', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets.sheets;
      var arg_request = buildCopySheetToAnotherSpreadsheetRequest();
      var arg_spreadsheetId = 'foo';
      var arg_sheetId = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CopySheetToAnotherSpreadsheetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCopySheetToAnotherSpreadsheetRequest(
            obj as api.CopySheetToAnotherSpreadsheetRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf('/sheets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/sheets/"));
        pathOffset += 8;
        index = path.indexOf(':copyTo', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_sheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":copyTo"));
        pathOffset += 7;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSheetProperties());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .copyTo(arg_request, arg_spreadsheetId, arg_sheetId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSheetProperties(response as api.SheetProperties);
      })));
    });
  });

  unittest.group('resource-SpreadsheetsValuesResourceApi', () {
    unittest.test('method--append', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildValueRange();
      var arg_spreadsheetId = 'foo';
      var arg_range = 'foo';
      var arg_includeValuesInResponse = true;
      var arg_insertDataOption = 'foo';
      var arg_responseDateTimeRenderOption = 'foo';
      var arg_responseValueRenderOption = 'foo';
      var arg_valueInputOption = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ValueRange.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkValueRange(obj as api.ValueRange);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf('/values/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/values/"));
        pathOffset += 8;
        index = path.indexOf(':append', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_range'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":append"));
        pathOffset += 7;

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
        unittest.expect(queryMap["includeValuesInResponse"].first,
            unittest.equals("$arg_includeValuesInResponse"));
        unittest.expect(queryMap["insertDataOption"].first,
            unittest.equals(arg_insertDataOption));
        unittest.expect(queryMap["responseDateTimeRenderOption"].first,
            unittest.equals(arg_responseDateTimeRenderOption));
        unittest.expect(queryMap["responseValueRenderOption"].first,
            unittest.equals(arg_responseValueRenderOption));
        unittest.expect(queryMap["valueInputOption"].first,
            unittest.equals(arg_valueInputOption));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAppendValuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .append(arg_request, arg_spreadsheetId, arg_range,
              includeValuesInResponse: arg_includeValuesInResponse,
              insertDataOption: arg_insertDataOption,
              responseDateTimeRenderOption: arg_responseDateTimeRenderOption,
              responseValueRenderOption: arg_responseValueRenderOption,
              valueInputOption: arg_valueInputOption,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppendValuesResponse(response as api.AppendValuesResponse);
      })));
    });

    unittest.test('method--batchClear', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildBatchClearValuesRequest();
      var arg_spreadsheetId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchClearValuesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchClearValuesRequest(obj as api.BatchClearValuesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf('/values:batchClear', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/values:batchClear"));
        pathOffset += 18;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchClearValuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchClear(arg_request, arg_spreadsheetId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchClearValuesResponse(response as api.BatchClearValuesResponse);
      })));
    });

    unittest.test('method--batchClearByDataFilter', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildBatchClearValuesByDataFilterRequest();
      var arg_spreadsheetId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchClearValuesByDataFilterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchClearValuesByDataFilterRequest(
            obj as api.BatchClearValuesByDataFilterRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf('/values:batchClearByDataFilter', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("/values:batchClearByDataFilter"));
        pathOffset += 30;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildBatchClearValuesByDataFilterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchClearByDataFilter(arg_request, arg_spreadsheetId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchClearValuesByDataFilterResponse(
            response as api.BatchClearValuesByDataFilterResponse);
      })));
    });

    unittest.test('method--batchGet', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets.values;
      var arg_spreadsheetId = 'foo';
      var arg_dateTimeRenderOption = 'foo';
      var arg_majorDimension = 'foo';
      var arg_ranges = buildUnnamed550();
      var arg_valueRenderOption = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf('/values:batchGet', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/values:batchGet"));
        pathOffset += 16;

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
        unittest.expect(queryMap["dateTimeRenderOption"].first,
            unittest.equals(arg_dateTimeRenderOption));
        unittest.expect(queryMap["majorDimension"].first,
            unittest.equals(arg_majorDimension));
        unittest.expect(queryMap["ranges"], unittest.equals(arg_ranges));
        unittest.expect(queryMap["valueRenderOption"].first,
            unittest.equals(arg_valueRenderOption));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchGetValuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGet(arg_spreadsheetId,
              dateTimeRenderOption: arg_dateTimeRenderOption,
              majorDimension: arg_majorDimension,
              ranges: arg_ranges,
              valueRenderOption: arg_valueRenderOption,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchGetValuesResponse(response as api.BatchGetValuesResponse);
      })));
    });

    unittest.test('method--batchGetByDataFilter', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildBatchGetValuesByDataFilterRequest();
      var arg_spreadsheetId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchGetValuesByDataFilterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchGetValuesByDataFilterRequest(
            obj as api.BatchGetValuesByDataFilterRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf('/values:batchGetByDataFilter', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("/values:batchGetByDataFilter"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildBatchGetValuesByDataFilterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGetByDataFilter(arg_request, arg_spreadsheetId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchGetValuesByDataFilterResponse(
            response as api.BatchGetValuesByDataFilterResponse);
      })));
    });

    unittest.test('method--batchUpdate', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildBatchUpdateValuesRequest();
      var arg_spreadsheetId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchUpdateValuesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateValuesRequest(obj as api.BatchUpdateValuesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf('/values:batchUpdate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/values:batchUpdate"));
        pathOffset += 19;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchUpdateValuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_spreadsheetId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchUpdateValuesResponse(
            response as api.BatchUpdateValuesResponse);
      })));
    });

    unittest.test('method--batchUpdateByDataFilter', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildBatchUpdateValuesByDataFilterRequest();
      var arg_spreadsheetId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchUpdateValuesByDataFilterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateValuesByDataFilterRequest(
            obj as api.BatchUpdateValuesByDataFilterRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf('/values:batchUpdateByDataFilter', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("/values:batchUpdateByDataFilter"));
        pathOffset += 31;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildBatchUpdateValuesByDataFilterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdateByDataFilter(arg_request, arg_spreadsheetId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchUpdateValuesByDataFilterResponse(
            response as api.BatchUpdateValuesByDataFilterResponse);
      })));
    });

    unittest.test('method--clear', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildClearValuesRequest();
      var arg_spreadsheetId = 'foo';
      var arg_range = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ClearValuesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkClearValuesRequest(obj as api.ClearValuesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf('/values/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/values/"));
        pathOffset += 8;
        index = path.indexOf(':clear', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_range'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals(":clear"));
        pathOffset += 6;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildClearValuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .clear(arg_request, arg_spreadsheetId, arg_range,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkClearValuesResponse(response as api.ClearValuesResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets.values;
      var arg_spreadsheetId = 'foo';
      var arg_range = 'foo';
      var arg_dateTimeRenderOption = 'foo';
      var arg_majorDimension = 'foo';
      var arg_valueRenderOption = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf('/values/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/values/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_range'));

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
        unittest.expect(queryMap["dateTimeRenderOption"].first,
            unittest.equals(arg_dateTimeRenderOption));
        unittest.expect(queryMap["majorDimension"].first,
            unittest.equals(arg_majorDimension));
        unittest.expect(queryMap["valueRenderOption"].first,
            unittest.equals(arg_valueRenderOption));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildValueRange());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_spreadsheetId, arg_range,
              dateTimeRenderOption: arg_dateTimeRenderOption,
              majorDimension: arg_majorDimension,
              valueRenderOption: arg_valueRenderOption,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkValueRange(response as api.ValueRange);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildValueRange();
      var arg_spreadsheetId = 'foo';
      var arg_range = 'foo';
      var arg_includeValuesInResponse = true;
      var arg_responseDateTimeRenderOption = 'foo';
      var arg_responseValueRenderOption = 'foo';
      var arg_valueInputOption = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ValueRange.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkValueRange(obj as api.ValueRange);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf('/values/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_spreadsheetId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/values/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_range'));

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
        unittest.expect(queryMap["includeValuesInResponse"].first,
            unittest.equals("$arg_includeValuesInResponse"));
        unittest.expect(queryMap["responseDateTimeRenderOption"].first,
            unittest.equals(arg_responseDateTimeRenderOption));
        unittest.expect(queryMap["responseValueRenderOption"].first,
            unittest.equals(arg_responseValueRenderOption));
        unittest.expect(queryMap["valueInputOption"].first,
            unittest.equals(arg_valueInputOption));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUpdateValuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_spreadsheetId, arg_range,
              includeValuesInResponse: arg_includeValuesInResponse,
              responseDateTimeRenderOption: arg_responseDateTimeRenderOption,
              responseValueRenderOption: arg_responseValueRenderOption,
              valueInputOption: arg_valueInputOption,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUpdateValuesResponse(response as api.UpdateValuesResponse);
      })));
    });
  });
}
