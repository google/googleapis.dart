library googleapis.sheets.v4.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/sheets/v4.dart' as api;

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

core.int buildCounterAddBandingRequest = 0;
buildAddBandingRequest() {
  var o = new api.AddBandingRequest();
  buildCounterAddBandingRequest++;
  if (buildCounterAddBandingRequest < 3) {
    o.bandedRange = buildBandedRange();
  }
  buildCounterAddBandingRequest--;
  return o;
}

checkAddBandingRequest(api.AddBandingRequest o) {
  buildCounterAddBandingRequest++;
  if (buildCounterAddBandingRequest < 3) {
    checkBandedRange(o.bandedRange);
  }
  buildCounterAddBandingRequest--;
}

core.int buildCounterAddBandingResponse = 0;
buildAddBandingResponse() {
  var o = new api.AddBandingResponse();
  buildCounterAddBandingResponse++;
  if (buildCounterAddBandingResponse < 3) {
    o.bandedRange = buildBandedRange();
  }
  buildCounterAddBandingResponse--;
  return o;
}

checkAddBandingResponse(api.AddBandingResponse o) {
  buildCounterAddBandingResponse++;
  if (buildCounterAddBandingResponse < 3) {
    checkBandedRange(o.bandedRange);
  }
  buildCounterAddBandingResponse--;
}

core.int buildCounterAddChartRequest = 0;
buildAddChartRequest() {
  var o = new api.AddChartRequest();
  buildCounterAddChartRequest++;
  if (buildCounterAddChartRequest < 3) {
    o.chart = buildEmbeddedChart();
  }
  buildCounterAddChartRequest--;
  return o;
}

checkAddChartRequest(api.AddChartRequest o) {
  buildCounterAddChartRequest++;
  if (buildCounterAddChartRequest < 3) {
    checkEmbeddedChart(o.chart);
  }
  buildCounterAddChartRequest--;
}

core.int buildCounterAddChartResponse = 0;
buildAddChartResponse() {
  var o = new api.AddChartResponse();
  buildCounterAddChartResponse++;
  if (buildCounterAddChartResponse < 3) {
    o.chart = buildEmbeddedChart();
  }
  buildCounterAddChartResponse--;
  return o;
}

checkAddChartResponse(api.AddChartResponse o) {
  buildCounterAddChartResponse++;
  if (buildCounterAddChartResponse < 3) {
    checkEmbeddedChart(o.chart);
  }
  buildCounterAddChartResponse--;
}

core.int buildCounterAddConditionalFormatRuleRequest = 0;
buildAddConditionalFormatRuleRequest() {
  var o = new api.AddConditionalFormatRuleRequest();
  buildCounterAddConditionalFormatRuleRequest++;
  if (buildCounterAddConditionalFormatRuleRequest < 3) {
    o.index = 42;
    o.rule = buildConditionalFormatRule();
  }
  buildCounterAddConditionalFormatRuleRequest--;
  return o;
}

checkAddConditionalFormatRuleRequest(api.AddConditionalFormatRuleRequest o) {
  buildCounterAddConditionalFormatRuleRequest++;
  if (buildCounterAddConditionalFormatRuleRequest < 3) {
    unittest.expect(o.index, unittest.equals(42));
    checkConditionalFormatRule(o.rule);
  }
  buildCounterAddConditionalFormatRuleRequest--;
}

core.int buildCounterAddDimensionGroupRequest = 0;
buildAddDimensionGroupRequest() {
  var o = new api.AddDimensionGroupRequest();
  buildCounterAddDimensionGroupRequest++;
  if (buildCounterAddDimensionGroupRequest < 3) {
    o.range = buildDimensionRange();
  }
  buildCounterAddDimensionGroupRequest--;
  return o;
}

checkAddDimensionGroupRequest(api.AddDimensionGroupRequest o) {
  buildCounterAddDimensionGroupRequest++;
  if (buildCounterAddDimensionGroupRequest < 3) {
    checkDimensionRange(o.range);
  }
  buildCounterAddDimensionGroupRequest--;
}

buildUnnamed3981() {
  var o = new core.List<api.DimensionGroup>();
  o.add(buildDimensionGroup());
  o.add(buildDimensionGroup());
  return o;
}

checkUnnamed3981(core.List<api.DimensionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionGroup(o[0]);
  checkDimensionGroup(o[1]);
}

core.int buildCounterAddDimensionGroupResponse = 0;
buildAddDimensionGroupResponse() {
  var o = new api.AddDimensionGroupResponse();
  buildCounterAddDimensionGroupResponse++;
  if (buildCounterAddDimensionGroupResponse < 3) {
    o.dimensionGroups = buildUnnamed3981();
  }
  buildCounterAddDimensionGroupResponse--;
  return o;
}

checkAddDimensionGroupResponse(api.AddDimensionGroupResponse o) {
  buildCounterAddDimensionGroupResponse++;
  if (buildCounterAddDimensionGroupResponse < 3) {
    checkUnnamed3981(o.dimensionGroups);
  }
  buildCounterAddDimensionGroupResponse--;
}

core.int buildCounterAddFilterViewRequest = 0;
buildAddFilterViewRequest() {
  var o = new api.AddFilterViewRequest();
  buildCounterAddFilterViewRequest++;
  if (buildCounterAddFilterViewRequest < 3) {
    o.filter = buildFilterView();
  }
  buildCounterAddFilterViewRequest--;
  return o;
}

checkAddFilterViewRequest(api.AddFilterViewRequest o) {
  buildCounterAddFilterViewRequest++;
  if (buildCounterAddFilterViewRequest < 3) {
    checkFilterView(o.filter);
  }
  buildCounterAddFilterViewRequest--;
}

core.int buildCounterAddFilterViewResponse = 0;
buildAddFilterViewResponse() {
  var o = new api.AddFilterViewResponse();
  buildCounterAddFilterViewResponse++;
  if (buildCounterAddFilterViewResponse < 3) {
    o.filter = buildFilterView();
  }
  buildCounterAddFilterViewResponse--;
  return o;
}

checkAddFilterViewResponse(api.AddFilterViewResponse o) {
  buildCounterAddFilterViewResponse++;
  if (buildCounterAddFilterViewResponse < 3) {
    checkFilterView(o.filter);
  }
  buildCounterAddFilterViewResponse--;
}

core.int buildCounterAddNamedRangeRequest = 0;
buildAddNamedRangeRequest() {
  var o = new api.AddNamedRangeRequest();
  buildCounterAddNamedRangeRequest++;
  if (buildCounterAddNamedRangeRequest < 3) {
    o.namedRange = buildNamedRange();
  }
  buildCounterAddNamedRangeRequest--;
  return o;
}

checkAddNamedRangeRequest(api.AddNamedRangeRequest o) {
  buildCounterAddNamedRangeRequest++;
  if (buildCounterAddNamedRangeRequest < 3) {
    checkNamedRange(o.namedRange);
  }
  buildCounterAddNamedRangeRequest--;
}

core.int buildCounterAddNamedRangeResponse = 0;
buildAddNamedRangeResponse() {
  var o = new api.AddNamedRangeResponse();
  buildCounterAddNamedRangeResponse++;
  if (buildCounterAddNamedRangeResponse < 3) {
    o.namedRange = buildNamedRange();
  }
  buildCounterAddNamedRangeResponse--;
  return o;
}

checkAddNamedRangeResponse(api.AddNamedRangeResponse o) {
  buildCounterAddNamedRangeResponse++;
  if (buildCounterAddNamedRangeResponse < 3) {
    checkNamedRange(o.namedRange);
  }
  buildCounterAddNamedRangeResponse--;
}

core.int buildCounterAddProtectedRangeRequest = 0;
buildAddProtectedRangeRequest() {
  var o = new api.AddProtectedRangeRequest();
  buildCounterAddProtectedRangeRequest++;
  if (buildCounterAddProtectedRangeRequest < 3) {
    o.protectedRange = buildProtectedRange();
  }
  buildCounterAddProtectedRangeRequest--;
  return o;
}

checkAddProtectedRangeRequest(api.AddProtectedRangeRequest o) {
  buildCounterAddProtectedRangeRequest++;
  if (buildCounterAddProtectedRangeRequest < 3) {
    checkProtectedRange(o.protectedRange);
  }
  buildCounterAddProtectedRangeRequest--;
}

core.int buildCounterAddProtectedRangeResponse = 0;
buildAddProtectedRangeResponse() {
  var o = new api.AddProtectedRangeResponse();
  buildCounterAddProtectedRangeResponse++;
  if (buildCounterAddProtectedRangeResponse < 3) {
    o.protectedRange = buildProtectedRange();
  }
  buildCounterAddProtectedRangeResponse--;
  return o;
}

checkAddProtectedRangeResponse(api.AddProtectedRangeResponse o) {
  buildCounterAddProtectedRangeResponse++;
  if (buildCounterAddProtectedRangeResponse < 3) {
    checkProtectedRange(o.protectedRange);
  }
  buildCounterAddProtectedRangeResponse--;
}

core.int buildCounterAddSheetRequest = 0;
buildAddSheetRequest() {
  var o = new api.AddSheetRequest();
  buildCounterAddSheetRequest++;
  if (buildCounterAddSheetRequest < 3) {
    o.properties = buildSheetProperties();
  }
  buildCounterAddSheetRequest--;
  return o;
}

checkAddSheetRequest(api.AddSheetRequest o) {
  buildCounterAddSheetRequest++;
  if (buildCounterAddSheetRequest < 3) {
    checkSheetProperties(o.properties);
  }
  buildCounterAddSheetRequest--;
}

core.int buildCounterAddSheetResponse = 0;
buildAddSheetResponse() {
  var o = new api.AddSheetResponse();
  buildCounterAddSheetResponse++;
  if (buildCounterAddSheetResponse < 3) {
    o.properties = buildSheetProperties();
  }
  buildCounterAddSheetResponse--;
  return o;
}

checkAddSheetResponse(api.AddSheetResponse o) {
  buildCounterAddSheetResponse++;
  if (buildCounterAddSheetResponse < 3) {
    checkSheetProperties(o.properties);
  }
  buildCounterAddSheetResponse--;
}

buildUnnamed3982() {
  var o = new core.List<api.RowData>();
  o.add(buildRowData());
  o.add(buildRowData());
  return o;
}

checkUnnamed3982(core.List<api.RowData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRowData(o[0]);
  checkRowData(o[1]);
}

core.int buildCounterAppendCellsRequest = 0;
buildAppendCellsRequest() {
  var o = new api.AppendCellsRequest();
  buildCounterAppendCellsRequest++;
  if (buildCounterAppendCellsRequest < 3) {
    o.fields = "foo";
    o.rows = buildUnnamed3982();
    o.sheetId = 42;
  }
  buildCounterAppendCellsRequest--;
  return o;
}

checkAppendCellsRequest(api.AppendCellsRequest o) {
  buildCounterAppendCellsRequest++;
  if (buildCounterAppendCellsRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkUnnamed3982(o.rows);
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterAppendCellsRequest--;
}

core.int buildCounterAppendDimensionRequest = 0;
buildAppendDimensionRequest() {
  var o = new api.AppendDimensionRequest();
  buildCounterAppendDimensionRequest++;
  if (buildCounterAppendDimensionRequest < 3) {
    o.dimension = "foo";
    o.length = 42;
    o.sheetId = 42;
  }
  buildCounterAppendDimensionRequest--;
  return o;
}

checkAppendDimensionRequest(api.AppendDimensionRequest o) {
  buildCounterAppendDimensionRequest++;
  if (buildCounterAppendDimensionRequest < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.length, unittest.equals(42));
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterAppendDimensionRequest--;
}

core.int buildCounterAppendValuesResponse = 0;
buildAppendValuesResponse() {
  var o = new api.AppendValuesResponse();
  buildCounterAppendValuesResponse++;
  if (buildCounterAppendValuesResponse < 3) {
    o.spreadsheetId = "foo";
    o.tableRange = "foo";
    o.updates = buildUpdateValuesResponse();
  }
  buildCounterAppendValuesResponse--;
  return o;
}

checkAppendValuesResponse(api.AppendValuesResponse o) {
  buildCounterAppendValuesResponse++;
  if (buildCounterAppendValuesResponse < 3) {
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    unittest.expect(o.tableRange, unittest.equals('foo'));
    checkUpdateValuesResponse(o.updates);
  }
  buildCounterAppendValuesResponse--;
}

core.int buildCounterAutoFillRequest = 0;
buildAutoFillRequest() {
  var o = new api.AutoFillRequest();
  buildCounterAutoFillRequest++;
  if (buildCounterAutoFillRequest < 3) {
    o.range = buildGridRange();
    o.sourceAndDestination = buildSourceAndDestination();
    o.useAlternateSeries = true;
  }
  buildCounterAutoFillRequest--;
  return o;
}

checkAutoFillRequest(api.AutoFillRequest o) {
  buildCounterAutoFillRequest++;
  if (buildCounterAutoFillRequest < 3) {
    checkGridRange(o.range);
    checkSourceAndDestination(o.sourceAndDestination);
    unittest.expect(o.useAlternateSeries, unittest.isTrue);
  }
  buildCounterAutoFillRequest--;
}

core.int buildCounterAutoResizeDimensionsRequest = 0;
buildAutoResizeDimensionsRequest() {
  var o = new api.AutoResizeDimensionsRequest();
  buildCounterAutoResizeDimensionsRequest++;
  if (buildCounterAutoResizeDimensionsRequest < 3) {
    o.dimensions = buildDimensionRange();
  }
  buildCounterAutoResizeDimensionsRequest--;
  return o;
}

checkAutoResizeDimensionsRequest(api.AutoResizeDimensionsRequest o) {
  buildCounterAutoResizeDimensionsRequest++;
  if (buildCounterAutoResizeDimensionsRequest < 3) {
    checkDimensionRange(o.dimensions);
  }
  buildCounterAutoResizeDimensionsRequest--;
}

core.int buildCounterBandedRange = 0;
buildBandedRange() {
  var o = new api.BandedRange();
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

checkBandedRange(api.BandedRange o) {
  buildCounterBandedRange++;
  if (buildCounterBandedRange < 3) {
    unittest.expect(o.bandedRangeId, unittest.equals(42));
    checkBandingProperties(o.columnProperties);
    checkGridRange(o.range);
    checkBandingProperties(o.rowProperties);
  }
  buildCounterBandedRange--;
}

core.int buildCounterBandingProperties = 0;
buildBandingProperties() {
  var o = new api.BandingProperties();
  buildCounterBandingProperties++;
  if (buildCounterBandingProperties < 3) {
    o.firstBandColor = buildColor();
    o.footerColor = buildColor();
    o.headerColor = buildColor();
    o.secondBandColor = buildColor();
  }
  buildCounterBandingProperties--;
  return o;
}

checkBandingProperties(api.BandingProperties o) {
  buildCounterBandingProperties++;
  if (buildCounterBandingProperties < 3) {
    checkColor(o.firstBandColor);
    checkColor(o.footerColor);
    checkColor(o.headerColor);
    checkColor(o.secondBandColor);
  }
  buildCounterBandingProperties--;
}

core.int buildCounterBasicChartAxis = 0;
buildBasicChartAxis() {
  var o = new api.BasicChartAxis();
  buildCounterBasicChartAxis++;
  if (buildCounterBasicChartAxis < 3) {
    o.format = buildTextFormat();
    o.position = "foo";
    o.title = "foo";
    o.titleTextPosition = buildTextPosition();
  }
  buildCounterBasicChartAxis--;
  return o;
}

checkBasicChartAxis(api.BasicChartAxis o) {
  buildCounterBasicChartAxis++;
  if (buildCounterBasicChartAxis < 3) {
    checkTextFormat(o.format);
    unittest.expect(o.position, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    checkTextPosition(o.titleTextPosition);
  }
  buildCounterBasicChartAxis--;
}

core.int buildCounterBasicChartDomain = 0;
buildBasicChartDomain() {
  var o = new api.BasicChartDomain();
  buildCounterBasicChartDomain++;
  if (buildCounterBasicChartDomain < 3) {
    o.domain = buildChartData();
    o.reversed = true;
  }
  buildCounterBasicChartDomain--;
  return o;
}

checkBasicChartDomain(api.BasicChartDomain o) {
  buildCounterBasicChartDomain++;
  if (buildCounterBasicChartDomain < 3) {
    checkChartData(o.domain);
    unittest.expect(o.reversed, unittest.isTrue);
  }
  buildCounterBasicChartDomain--;
}

core.int buildCounterBasicChartSeries = 0;
buildBasicChartSeries() {
  var o = new api.BasicChartSeries();
  buildCounterBasicChartSeries++;
  if (buildCounterBasicChartSeries < 3) {
    o.color = buildColor();
    o.lineStyle = buildLineStyle();
    o.series = buildChartData();
    o.targetAxis = "foo";
    o.type = "foo";
  }
  buildCounterBasicChartSeries--;
  return o;
}

checkBasicChartSeries(api.BasicChartSeries o) {
  buildCounterBasicChartSeries++;
  if (buildCounterBasicChartSeries < 3) {
    checkColor(o.color);
    checkLineStyle(o.lineStyle);
    checkChartData(o.series);
    unittest.expect(o.targetAxis, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBasicChartSeries--;
}

buildUnnamed3983() {
  var o = new core.List<api.BasicChartAxis>();
  o.add(buildBasicChartAxis());
  o.add(buildBasicChartAxis());
  return o;
}

checkUnnamed3983(core.List<api.BasicChartAxis> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBasicChartAxis(o[0]);
  checkBasicChartAxis(o[1]);
}

buildUnnamed3984() {
  var o = new core.List<api.BasicChartDomain>();
  o.add(buildBasicChartDomain());
  o.add(buildBasicChartDomain());
  return o;
}

checkUnnamed3984(core.List<api.BasicChartDomain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBasicChartDomain(o[0]);
  checkBasicChartDomain(o[1]);
}

buildUnnamed3985() {
  var o = new core.List<api.BasicChartSeries>();
  o.add(buildBasicChartSeries());
  o.add(buildBasicChartSeries());
  return o;
}

checkUnnamed3985(core.List<api.BasicChartSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBasicChartSeries(o[0]);
  checkBasicChartSeries(o[1]);
}

core.int buildCounterBasicChartSpec = 0;
buildBasicChartSpec() {
  var o = new api.BasicChartSpec();
  buildCounterBasicChartSpec++;
  if (buildCounterBasicChartSpec < 3) {
    o.axis = buildUnnamed3983();
    o.chartType = "foo";
    o.compareMode = "foo";
    o.domains = buildUnnamed3984();
    o.headerCount = 42;
    o.interpolateNulls = true;
    o.legendPosition = "foo";
    o.lineSmoothing = true;
    o.series = buildUnnamed3985();
    o.stackedType = "foo";
    o.threeDimensional = true;
  }
  buildCounterBasicChartSpec--;
  return o;
}

checkBasicChartSpec(api.BasicChartSpec o) {
  buildCounterBasicChartSpec++;
  if (buildCounterBasicChartSpec < 3) {
    checkUnnamed3983(o.axis);
    unittest.expect(o.chartType, unittest.equals('foo'));
    unittest.expect(o.compareMode, unittest.equals('foo'));
    checkUnnamed3984(o.domains);
    unittest.expect(o.headerCount, unittest.equals(42));
    unittest.expect(o.interpolateNulls, unittest.isTrue);
    unittest.expect(o.legendPosition, unittest.equals('foo'));
    unittest.expect(o.lineSmoothing, unittest.isTrue);
    checkUnnamed3985(o.series);
    unittest.expect(o.stackedType, unittest.equals('foo'));
    unittest.expect(o.threeDimensional, unittest.isTrue);
  }
  buildCounterBasicChartSpec--;
}

buildUnnamed3986() {
  var o = new core.Map<core.String, api.FilterCriteria>();
  o["x"] = buildFilterCriteria();
  o["y"] = buildFilterCriteria();
  return o;
}

checkUnnamed3986(core.Map<core.String, api.FilterCriteria> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterCriteria(o["x"]);
  checkFilterCriteria(o["y"]);
}

buildUnnamed3987() {
  var o = new core.List<api.SortSpec>();
  o.add(buildSortSpec());
  o.add(buildSortSpec());
  return o;
}

checkUnnamed3987(core.List<api.SortSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortSpec(o[0]);
  checkSortSpec(o[1]);
}

core.int buildCounterBasicFilter = 0;
buildBasicFilter() {
  var o = new api.BasicFilter();
  buildCounterBasicFilter++;
  if (buildCounterBasicFilter < 3) {
    o.criteria = buildUnnamed3986();
    o.range = buildGridRange();
    o.sortSpecs = buildUnnamed3987();
  }
  buildCounterBasicFilter--;
  return o;
}

checkBasicFilter(api.BasicFilter o) {
  buildCounterBasicFilter++;
  if (buildCounterBasicFilter < 3) {
    checkUnnamed3986(o.criteria);
    checkGridRange(o.range);
    checkUnnamed3987(o.sortSpecs);
  }
  buildCounterBasicFilter--;
}

buildUnnamed3988() {
  var o = new core.List<api.DataFilter>();
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

checkUnnamed3988(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0]);
  checkDataFilter(o[1]);
}

core.int buildCounterBatchClearValuesByDataFilterRequest = 0;
buildBatchClearValuesByDataFilterRequest() {
  var o = new api.BatchClearValuesByDataFilterRequest();
  buildCounterBatchClearValuesByDataFilterRequest++;
  if (buildCounterBatchClearValuesByDataFilterRequest < 3) {
    o.dataFilters = buildUnnamed3988();
  }
  buildCounterBatchClearValuesByDataFilterRequest--;
  return o;
}

checkBatchClearValuesByDataFilterRequest(
    api.BatchClearValuesByDataFilterRequest o) {
  buildCounterBatchClearValuesByDataFilterRequest++;
  if (buildCounterBatchClearValuesByDataFilterRequest < 3) {
    checkUnnamed3988(o.dataFilters);
  }
  buildCounterBatchClearValuesByDataFilterRequest--;
}

buildUnnamed3989() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3989(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchClearValuesByDataFilterResponse = 0;
buildBatchClearValuesByDataFilterResponse() {
  var o = new api.BatchClearValuesByDataFilterResponse();
  buildCounterBatchClearValuesByDataFilterResponse++;
  if (buildCounterBatchClearValuesByDataFilterResponse < 3) {
    o.clearedRanges = buildUnnamed3989();
    o.spreadsheetId = "foo";
  }
  buildCounterBatchClearValuesByDataFilterResponse--;
  return o;
}

checkBatchClearValuesByDataFilterResponse(
    api.BatchClearValuesByDataFilterResponse o) {
  buildCounterBatchClearValuesByDataFilterResponse++;
  if (buildCounterBatchClearValuesByDataFilterResponse < 3) {
    checkUnnamed3989(o.clearedRanges);
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
  }
  buildCounterBatchClearValuesByDataFilterResponse--;
}

buildUnnamed3990() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3990(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchClearValuesRequest = 0;
buildBatchClearValuesRequest() {
  var o = new api.BatchClearValuesRequest();
  buildCounterBatchClearValuesRequest++;
  if (buildCounterBatchClearValuesRequest < 3) {
    o.ranges = buildUnnamed3990();
  }
  buildCounterBatchClearValuesRequest--;
  return o;
}

checkBatchClearValuesRequest(api.BatchClearValuesRequest o) {
  buildCounterBatchClearValuesRequest++;
  if (buildCounterBatchClearValuesRequest < 3) {
    checkUnnamed3990(o.ranges);
  }
  buildCounterBatchClearValuesRequest--;
}

buildUnnamed3991() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3991(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchClearValuesResponse = 0;
buildBatchClearValuesResponse() {
  var o = new api.BatchClearValuesResponse();
  buildCounterBatchClearValuesResponse++;
  if (buildCounterBatchClearValuesResponse < 3) {
    o.clearedRanges = buildUnnamed3991();
    o.spreadsheetId = "foo";
  }
  buildCounterBatchClearValuesResponse--;
  return o;
}

checkBatchClearValuesResponse(api.BatchClearValuesResponse o) {
  buildCounterBatchClearValuesResponse++;
  if (buildCounterBatchClearValuesResponse < 3) {
    checkUnnamed3991(o.clearedRanges);
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
  }
  buildCounterBatchClearValuesResponse--;
}

buildUnnamed3992() {
  var o = new core.List<api.DataFilter>();
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

checkUnnamed3992(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0]);
  checkDataFilter(o[1]);
}

core.int buildCounterBatchGetValuesByDataFilterRequest = 0;
buildBatchGetValuesByDataFilterRequest() {
  var o = new api.BatchGetValuesByDataFilterRequest();
  buildCounterBatchGetValuesByDataFilterRequest++;
  if (buildCounterBatchGetValuesByDataFilterRequest < 3) {
    o.dataFilters = buildUnnamed3992();
    o.dateTimeRenderOption = "foo";
    o.majorDimension = "foo";
    o.valueRenderOption = "foo";
  }
  buildCounterBatchGetValuesByDataFilterRequest--;
  return o;
}

checkBatchGetValuesByDataFilterRequest(
    api.BatchGetValuesByDataFilterRequest o) {
  buildCounterBatchGetValuesByDataFilterRequest++;
  if (buildCounterBatchGetValuesByDataFilterRequest < 3) {
    checkUnnamed3992(o.dataFilters);
    unittest.expect(o.dateTimeRenderOption, unittest.equals('foo'));
    unittest.expect(o.majorDimension, unittest.equals('foo'));
    unittest.expect(o.valueRenderOption, unittest.equals('foo'));
  }
  buildCounterBatchGetValuesByDataFilterRequest--;
}

buildUnnamed3993() {
  var o = new core.List<api.MatchedValueRange>();
  o.add(buildMatchedValueRange());
  o.add(buildMatchedValueRange());
  return o;
}

checkUnnamed3993(core.List<api.MatchedValueRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchedValueRange(o[0]);
  checkMatchedValueRange(o[1]);
}

core.int buildCounterBatchGetValuesByDataFilterResponse = 0;
buildBatchGetValuesByDataFilterResponse() {
  var o = new api.BatchGetValuesByDataFilterResponse();
  buildCounterBatchGetValuesByDataFilterResponse++;
  if (buildCounterBatchGetValuesByDataFilterResponse < 3) {
    o.spreadsheetId = "foo";
    o.valueRanges = buildUnnamed3993();
  }
  buildCounterBatchGetValuesByDataFilterResponse--;
  return o;
}

checkBatchGetValuesByDataFilterResponse(
    api.BatchGetValuesByDataFilterResponse o) {
  buildCounterBatchGetValuesByDataFilterResponse++;
  if (buildCounterBatchGetValuesByDataFilterResponse < 3) {
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    checkUnnamed3993(o.valueRanges);
  }
  buildCounterBatchGetValuesByDataFilterResponse--;
}

buildUnnamed3994() {
  var o = new core.List<api.ValueRange>();
  o.add(buildValueRange());
  o.add(buildValueRange());
  return o;
}

checkUnnamed3994(core.List<api.ValueRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueRange(o[0]);
  checkValueRange(o[1]);
}

core.int buildCounterBatchGetValuesResponse = 0;
buildBatchGetValuesResponse() {
  var o = new api.BatchGetValuesResponse();
  buildCounterBatchGetValuesResponse++;
  if (buildCounterBatchGetValuesResponse < 3) {
    o.spreadsheetId = "foo";
    o.valueRanges = buildUnnamed3994();
  }
  buildCounterBatchGetValuesResponse--;
  return o;
}

checkBatchGetValuesResponse(api.BatchGetValuesResponse o) {
  buildCounterBatchGetValuesResponse++;
  if (buildCounterBatchGetValuesResponse < 3) {
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    checkUnnamed3994(o.valueRanges);
  }
  buildCounterBatchGetValuesResponse--;
}

buildUnnamed3995() {
  var o = new core.List<api.Request>();
  o.add(buildRequest());
  o.add(buildRequest());
  return o;
}

checkUnnamed3995(core.List<api.Request> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRequest(o[0]);
  checkRequest(o[1]);
}

buildUnnamed3996() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3996(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchUpdateSpreadsheetRequest = 0;
buildBatchUpdateSpreadsheetRequest() {
  var o = new api.BatchUpdateSpreadsheetRequest();
  buildCounterBatchUpdateSpreadsheetRequest++;
  if (buildCounterBatchUpdateSpreadsheetRequest < 3) {
    o.includeSpreadsheetInResponse = true;
    o.requests = buildUnnamed3995();
    o.responseIncludeGridData = true;
    o.responseRanges = buildUnnamed3996();
  }
  buildCounterBatchUpdateSpreadsheetRequest--;
  return o;
}

checkBatchUpdateSpreadsheetRequest(api.BatchUpdateSpreadsheetRequest o) {
  buildCounterBatchUpdateSpreadsheetRequest++;
  if (buildCounterBatchUpdateSpreadsheetRequest < 3) {
    unittest.expect(o.includeSpreadsheetInResponse, unittest.isTrue);
    checkUnnamed3995(o.requests);
    unittest.expect(o.responseIncludeGridData, unittest.isTrue);
    checkUnnamed3996(o.responseRanges);
  }
  buildCounterBatchUpdateSpreadsheetRequest--;
}

buildUnnamed3997() {
  var o = new core.List<api.Response>();
  o.add(buildResponse());
  o.add(buildResponse());
  return o;
}

checkUnnamed3997(core.List<api.Response> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResponse(o[0]);
  checkResponse(o[1]);
}

core.int buildCounterBatchUpdateSpreadsheetResponse = 0;
buildBatchUpdateSpreadsheetResponse() {
  var o = new api.BatchUpdateSpreadsheetResponse();
  buildCounterBatchUpdateSpreadsheetResponse++;
  if (buildCounterBatchUpdateSpreadsheetResponse < 3) {
    o.replies = buildUnnamed3997();
    o.spreadsheetId = "foo";
    o.updatedSpreadsheet = buildSpreadsheet();
  }
  buildCounterBatchUpdateSpreadsheetResponse--;
  return o;
}

checkBatchUpdateSpreadsheetResponse(api.BatchUpdateSpreadsheetResponse o) {
  buildCounterBatchUpdateSpreadsheetResponse++;
  if (buildCounterBatchUpdateSpreadsheetResponse < 3) {
    checkUnnamed3997(o.replies);
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    checkSpreadsheet(o.updatedSpreadsheet);
  }
  buildCounterBatchUpdateSpreadsheetResponse--;
}

buildUnnamed3998() {
  var o = new core.List<api.DataFilterValueRange>();
  o.add(buildDataFilterValueRange());
  o.add(buildDataFilterValueRange());
  return o;
}

checkUnnamed3998(core.List<api.DataFilterValueRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilterValueRange(o[0]);
  checkDataFilterValueRange(o[1]);
}

core.int buildCounterBatchUpdateValuesByDataFilterRequest = 0;
buildBatchUpdateValuesByDataFilterRequest() {
  var o = new api.BatchUpdateValuesByDataFilterRequest();
  buildCounterBatchUpdateValuesByDataFilterRequest++;
  if (buildCounterBatchUpdateValuesByDataFilterRequest < 3) {
    o.data = buildUnnamed3998();
    o.includeValuesInResponse = true;
    o.responseDateTimeRenderOption = "foo";
    o.responseValueRenderOption = "foo";
    o.valueInputOption = "foo";
  }
  buildCounterBatchUpdateValuesByDataFilterRequest--;
  return o;
}

checkBatchUpdateValuesByDataFilterRequest(
    api.BatchUpdateValuesByDataFilterRequest o) {
  buildCounterBatchUpdateValuesByDataFilterRequest++;
  if (buildCounterBatchUpdateValuesByDataFilterRequest < 3) {
    checkUnnamed3998(o.data);
    unittest.expect(o.includeValuesInResponse, unittest.isTrue);
    unittest.expect(o.responseDateTimeRenderOption, unittest.equals('foo'));
    unittest.expect(o.responseValueRenderOption, unittest.equals('foo'));
    unittest.expect(o.valueInputOption, unittest.equals('foo'));
  }
  buildCounterBatchUpdateValuesByDataFilterRequest--;
}

buildUnnamed3999() {
  var o = new core.List<api.UpdateValuesByDataFilterResponse>();
  o.add(buildUpdateValuesByDataFilterResponse());
  o.add(buildUpdateValuesByDataFilterResponse());
  return o;
}

checkUnnamed3999(core.List<api.UpdateValuesByDataFilterResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateValuesByDataFilterResponse(o[0]);
  checkUpdateValuesByDataFilterResponse(o[1]);
}

core.int buildCounterBatchUpdateValuesByDataFilterResponse = 0;
buildBatchUpdateValuesByDataFilterResponse() {
  var o = new api.BatchUpdateValuesByDataFilterResponse();
  buildCounterBatchUpdateValuesByDataFilterResponse++;
  if (buildCounterBatchUpdateValuesByDataFilterResponse < 3) {
    o.responses = buildUnnamed3999();
    o.spreadsheetId = "foo";
    o.totalUpdatedCells = 42;
    o.totalUpdatedColumns = 42;
    o.totalUpdatedRows = 42;
    o.totalUpdatedSheets = 42;
  }
  buildCounterBatchUpdateValuesByDataFilterResponse--;
  return o;
}

checkBatchUpdateValuesByDataFilterResponse(
    api.BatchUpdateValuesByDataFilterResponse o) {
  buildCounterBatchUpdateValuesByDataFilterResponse++;
  if (buildCounterBatchUpdateValuesByDataFilterResponse < 3) {
    checkUnnamed3999(o.responses);
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    unittest.expect(o.totalUpdatedCells, unittest.equals(42));
    unittest.expect(o.totalUpdatedColumns, unittest.equals(42));
    unittest.expect(o.totalUpdatedRows, unittest.equals(42));
    unittest.expect(o.totalUpdatedSheets, unittest.equals(42));
  }
  buildCounterBatchUpdateValuesByDataFilterResponse--;
}

buildUnnamed4000() {
  var o = new core.List<api.ValueRange>();
  o.add(buildValueRange());
  o.add(buildValueRange());
  return o;
}

checkUnnamed4000(core.List<api.ValueRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueRange(o[0]);
  checkValueRange(o[1]);
}

core.int buildCounterBatchUpdateValuesRequest = 0;
buildBatchUpdateValuesRequest() {
  var o = new api.BatchUpdateValuesRequest();
  buildCounterBatchUpdateValuesRequest++;
  if (buildCounterBatchUpdateValuesRequest < 3) {
    o.data = buildUnnamed4000();
    o.includeValuesInResponse = true;
    o.responseDateTimeRenderOption = "foo";
    o.responseValueRenderOption = "foo";
    o.valueInputOption = "foo";
  }
  buildCounterBatchUpdateValuesRequest--;
  return o;
}

checkBatchUpdateValuesRequest(api.BatchUpdateValuesRequest o) {
  buildCounterBatchUpdateValuesRequest++;
  if (buildCounterBatchUpdateValuesRequest < 3) {
    checkUnnamed4000(o.data);
    unittest.expect(o.includeValuesInResponse, unittest.isTrue);
    unittest.expect(o.responseDateTimeRenderOption, unittest.equals('foo'));
    unittest.expect(o.responseValueRenderOption, unittest.equals('foo'));
    unittest.expect(o.valueInputOption, unittest.equals('foo'));
  }
  buildCounterBatchUpdateValuesRequest--;
}

buildUnnamed4001() {
  var o = new core.List<api.UpdateValuesResponse>();
  o.add(buildUpdateValuesResponse());
  o.add(buildUpdateValuesResponse());
  return o;
}

checkUnnamed4001(core.List<api.UpdateValuesResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateValuesResponse(o[0]);
  checkUpdateValuesResponse(o[1]);
}

core.int buildCounterBatchUpdateValuesResponse = 0;
buildBatchUpdateValuesResponse() {
  var o = new api.BatchUpdateValuesResponse();
  buildCounterBatchUpdateValuesResponse++;
  if (buildCounterBatchUpdateValuesResponse < 3) {
    o.responses = buildUnnamed4001();
    o.spreadsheetId = "foo";
    o.totalUpdatedCells = 42;
    o.totalUpdatedColumns = 42;
    o.totalUpdatedRows = 42;
    o.totalUpdatedSheets = 42;
  }
  buildCounterBatchUpdateValuesResponse--;
  return o;
}

checkBatchUpdateValuesResponse(api.BatchUpdateValuesResponse o) {
  buildCounterBatchUpdateValuesResponse++;
  if (buildCounterBatchUpdateValuesResponse < 3) {
    checkUnnamed4001(o.responses);
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    unittest.expect(o.totalUpdatedCells, unittest.equals(42));
    unittest.expect(o.totalUpdatedColumns, unittest.equals(42));
    unittest.expect(o.totalUpdatedRows, unittest.equals(42));
    unittest.expect(o.totalUpdatedSheets, unittest.equals(42));
  }
  buildCounterBatchUpdateValuesResponse--;
}

buildUnnamed4002() {
  var o = new core.List<api.ConditionValue>();
  o.add(buildConditionValue());
  o.add(buildConditionValue());
  return o;
}

checkUnnamed4002(core.List<api.ConditionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConditionValue(o[0]);
  checkConditionValue(o[1]);
}

core.int buildCounterBooleanCondition = 0;
buildBooleanCondition() {
  var o = new api.BooleanCondition();
  buildCounterBooleanCondition++;
  if (buildCounterBooleanCondition < 3) {
    o.type = "foo";
    o.values = buildUnnamed4002();
  }
  buildCounterBooleanCondition--;
  return o;
}

checkBooleanCondition(api.BooleanCondition o) {
  buildCounterBooleanCondition++;
  if (buildCounterBooleanCondition < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    checkUnnamed4002(o.values);
  }
  buildCounterBooleanCondition--;
}

core.int buildCounterBooleanRule = 0;
buildBooleanRule() {
  var o = new api.BooleanRule();
  buildCounterBooleanRule++;
  if (buildCounterBooleanRule < 3) {
    o.condition = buildBooleanCondition();
    o.format = buildCellFormat();
  }
  buildCounterBooleanRule--;
  return o;
}

checkBooleanRule(api.BooleanRule o) {
  buildCounterBooleanRule++;
  if (buildCounterBooleanRule < 3) {
    checkBooleanCondition(o.condition);
    checkCellFormat(o.format);
  }
  buildCounterBooleanRule--;
}

core.int buildCounterBorder = 0;
buildBorder() {
  var o = new api.Border();
  buildCounterBorder++;
  if (buildCounterBorder < 3) {
    o.color = buildColor();
    o.style = "foo";
    o.width = 42;
  }
  buildCounterBorder--;
  return o;
}

checkBorder(api.Border o) {
  buildCounterBorder++;
  if (buildCounterBorder < 3) {
    checkColor(o.color);
    unittest.expect(o.style, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterBorder--;
}

core.int buildCounterBorders = 0;
buildBorders() {
  var o = new api.Borders();
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

checkBorders(api.Borders o) {
  buildCounterBorders++;
  if (buildCounterBorders < 3) {
    checkBorder(o.bottom);
    checkBorder(o.left);
    checkBorder(o.right);
    checkBorder(o.top);
  }
  buildCounterBorders--;
}

core.int buildCounterBubbleChartSpec = 0;
buildBubbleChartSpec() {
  var o = new api.BubbleChartSpec();
  buildCounterBubbleChartSpec++;
  if (buildCounterBubbleChartSpec < 3) {
    o.bubbleBorderColor = buildColor();
    o.bubbleLabels = buildChartData();
    o.bubbleMaxRadiusSize = 42;
    o.bubbleMinRadiusSize = 42;
    o.bubbleOpacity = 42.0;
    o.bubbleSizes = buildChartData();
    o.bubbleTextStyle = buildTextFormat();
    o.domain = buildChartData();
    o.groupIds = buildChartData();
    o.legendPosition = "foo";
    o.series = buildChartData();
  }
  buildCounterBubbleChartSpec--;
  return o;
}

checkBubbleChartSpec(api.BubbleChartSpec o) {
  buildCounterBubbleChartSpec++;
  if (buildCounterBubbleChartSpec < 3) {
    checkColor(o.bubbleBorderColor);
    checkChartData(o.bubbleLabels);
    unittest.expect(o.bubbleMaxRadiusSize, unittest.equals(42));
    unittest.expect(o.bubbleMinRadiusSize, unittest.equals(42));
    unittest.expect(o.bubbleOpacity, unittest.equals(42.0));
    checkChartData(o.bubbleSizes);
    checkTextFormat(o.bubbleTextStyle);
    checkChartData(o.domain);
    checkChartData(o.groupIds);
    unittest.expect(o.legendPosition, unittest.equals('foo'));
    checkChartData(o.series);
  }
  buildCounterBubbleChartSpec--;
}

buildUnnamed4003() {
  var o = new core.List<api.CandlestickData>();
  o.add(buildCandlestickData());
  o.add(buildCandlestickData());
  return o;
}

checkUnnamed4003(core.List<api.CandlestickData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCandlestickData(o[0]);
  checkCandlestickData(o[1]);
}

core.int buildCounterCandlestickChartSpec = 0;
buildCandlestickChartSpec() {
  var o = new api.CandlestickChartSpec();
  buildCounterCandlestickChartSpec++;
  if (buildCounterCandlestickChartSpec < 3) {
    o.data = buildUnnamed4003();
    o.domain = buildCandlestickDomain();
  }
  buildCounterCandlestickChartSpec--;
  return o;
}

checkCandlestickChartSpec(api.CandlestickChartSpec o) {
  buildCounterCandlestickChartSpec++;
  if (buildCounterCandlestickChartSpec < 3) {
    checkUnnamed4003(o.data);
    checkCandlestickDomain(o.domain);
  }
  buildCounterCandlestickChartSpec--;
}

core.int buildCounterCandlestickData = 0;
buildCandlestickData() {
  var o = new api.CandlestickData();
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

checkCandlestickData(api.CandlestickData o) {
  buildCounterCandlestickData++;
  if (buildCounterCandlestickData < 3) {
    checkCandlestickSeries(o.closeSeries);
    checkCandlestickSeries(o.highSeries);
    checkCandlestickSeries(o.lowSeries);
    checkCandlestickSeries(o.openSeries);
  }
  buildCounterCandlestickData--;
}

core.int buildCounterCandlestickDomain = 0;
buildCandlestickDomain() {
  var o = new api.CandlestickDomain();
  buildCounterCandlestickDomain++;
  if (buildCounterCandlestickDomain < 3) {
    o.data = buildChartData();
    o.reversed = true;
  }
  buildCounterCandlestickDomain--;
  return o;
}

checkCandlestickDomain(api.CandlestickDomain o) {
  buildCounterCandlestickDomain++;
  if (buildCounterCandlestickDomain < 3) {
    checkChartData(o.data);
    unittest.expect(o.reversed, unittest.isTrue);
  }
  buildCounterCandlestickDomain--;
}

core.int buildCounterCandlestickSeries = 0;
buildCandlestickSeries() {
  var o = new api.CandlestickSeries();
  buildCounterCandlestickSeries++;
  if (buildCounterCandlestickSeries < 3) {
    o.data = buildChartData();
  }
  buildCounterCandlestickSeries--;
  return o;
}

checkCandlestickSeries(api.CandlestickSeries o) {
  buildCounterCandlestickSeries++;
  if (buildCounterCandlestickSeries < 3) {
    checkChartData(o.data);
  }
  buildCounterCandlestickSeries--;
}

buildUnnamed4004() {
  var o = new core.List<api.TextFormatRun>();
  o.add(buildTextFormatRun());
  o.add(buildTextFormatRun());
  return o;
}

checkUnnamed4004(core.List<api.TextFormatRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextFormatRun(o[0]);
  checkTextFormatRun(o[1]);
}

core.int buildCounterCellData = 0;
buildCellData() {
  var o = new api.CellData();
  buildCounterCellData++;
  if (buildCounterCellData < 3) {
    o.dataValidation = buildDataValidationRule();
    o.effectiveFormat = buildCellFormat();
    o.effectiveValue = buildExtendedValue();
    o.formattedValue = "foo";
    o.hyperlink = "foo";
    o.note = "foo";
    o.pivotTable = buildPivotTable();
    o.textFormatRuns = buildUnnamed4004();
    o.userEnteredFormat = buildCellFormat();
    o.userEnteredValue = buildExtendedValue();
  }
  buildCounterCellData--;
  return o;
}

checkCellData(api.CellData o) {
  buildCounterCellData++;
  if (buildCounterCellData < 3) {
    checkDataValidationRule(o.dataValidation);
    checkCellFormat(o.effectiveFormat);
    checkExtendedValue(o.effectiveValue);
    unittest.expect(o.formattedValue, unittest.equals('foo'));
    unittest.expect(o.hyperlink, unittest.equals('foo'));
    unittest.expect(o.note, unittest.equals('foo'));
    checkPivotTable(o.pivotTable);
    checkUnnamed4004(o.textFormatRuns);
    checkCellFormat(o.userEnteredFormat);
    checkExtendedValue(o.userEnteredValue);
  }
  buildCounterCellData--;
}

core.int buildCounterCellFormat = 0;
buildCellFormat() {
  var o = new api.CellFormat();
  buildCounterCellFormat++;
  if (buildCounterCellFormat < 3) {
    o.backgroundColor = buildColor();
    o.borders = buildBorders();
    o.horizontalAlignment = "foo";
    o.hyperlinkDisplayType = "foo";
    o.numberFormat = buildNumberFormat();
    o.padding = buildPadding();
    o.textDirection = "foo";
    o.textFormat = buildTextFormat();
    o.textRotation = buildTextRotation();
    o.verticalAlignment = "foo";
    o.wrapStrategy = "foo";
  }
  buildCounterCellFormat--;
  return o;
}

checkCellFormat(api.CellFormat o) {
  buildCounterCellFormat++;
  if (buildCounterCellFormat < 3) {
    checkColor(o.backgroundColor);
    checkBorders(o.borders);
    unittest.expect(o.horizontalAlignment, unittest.equals('foo'));
    unittest.expect(o.hyperlinkDisplayType, unittest.equals('foo'));
    checkNumberFormat(o.numberFormat);
    checkPadding(o.padding);
    unittest.expect(o.textDirection, unittest.equals('foo'));
    checkTextFormat(o.textFormat);
    checkTextRotation(o.textRotation);
    unittest.expect(o.verticalAlignment, unittest.equals('foo'));
    unittest.expect(o.wrapStrategy, unittest.equals('foo'));
  }
  buildCounterCellFormat--;
}

core.int buildCounterChartData = 0;
buildChartData() {
  var o = new api.ChartData();
  buildCounterChartData++;
  if (buildCounterChartData < 3) {
    o.sourceRange = buildChartSourceRange();
  }
  buildCounterChartData--;
  return o;
}

checkChartData(api.ChartData o) {
  buildCounterChartData++;
  if (buildCounterChartData < 3) {
    checkChartSourceRange(o.sourceRange);
  }
  buildCounterChartData--;
}

buildUnnamed4005() {
  var o = new core.List<api.GridRange>();
  o.add(buildGridRange());
  o.add(buildGridRange());
  return o;
}

checkUnnamed4005(core.List<api.GridRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGridRange(o[0]);
  checkGridRange(o[1]);
}

core.int buildCounterChartSourceRange = 0;
buildChartSourceRange() {
  var o = new api.ChartSourceRange();
  buildCounterChartSourceRange++;
  if (buildCounterChartSourceRange < 3) {
    o.sources = buildUnnamed4005();
  }
  buildCounterChartSourceRange--;
  return o;
}

checkChartSourceRange(api.ChartSourceRange o) {
  buildCounterChartSourceRange++;
  if (buildCounterChartSourceRange < 3) {
    checkUnnamed4005(o.sources);
  }
  buildCounterChartSourceRange--;
}

core.int buildCounterChartSpec = 0;
buildChartSpec() {
  var o = new api.ChartSpec();
  buildCounterChartSpec++;
  if (buildCounterChartSpec < 3) {
    o.altText = "foo";
    o.backgroundColor = buildColor();
    o.basicChart = buildBasicChartSpec();
    o.bubbleChart = buildBubbleChartSpec();
    o.candlestickChart = buildCandlestickChartSpec();
    o.fontName = "foo";
    o.hiddenDimensionStrategy = "foo";
    o.histogramChart = buildHistogramChartSpec();
    o.maximized = true;
    o.orgChart = buildOrgChartSpec();
    o.pieChart = buildPieChartSpec();
    o.subtitle = "foo";
    o.subtitleTextFormat = buildTextFormat();
    o.subtitleTextPosition = buildTextPosition();
    o.title = "foo";
    o.titleTextFormat = buildTextFormat();
    o.titleTextPosition = buildTextPosition();
    o.treemapChart = buildTreemapChartSpec();
    o.waterfallChart = buildWaterfallChartSpec();
  }
  buildCounterChartSpec--;
  return o;
}

checkChartSpec(api.ChartSpec o) {
  buildCounterChartSpec++;
  if (buildCounterChartSpec < 3) {
    unittest.expect(o.altText, unittest.equals('foo'));
    checkColor(o.backgroundColor);
    checkBasicChartSpec(o.basicChart);
    checkBubbleChartSpec(o.bubbleChart);
    checkCandlestickChartSpec(o.candlestickChart);
    unittest.expect(o.fontName, unittest.equals('foo'));
    unittest.expect(o.hiddenDimensionStrategy, unittest.equals('foo'));
    checkHistogramChartSpec(o.histogramChart);
    unittest.expect(o.maximized, unittest.isTrue);
    checkOrgChartSpec(o.orgChart);
    checkPieChartSpec(o.pieChart);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    checkTextFormat(o.subtitleTextFormat);
    checkTextPosition(o.subtitleTextPosition);
    unittest.expect(o.title, unittest.equals('foo'));
    checkTextFormat(o.titleTextFormat);
    checkTextPosition(o.titleTextPosition);
    checkTreemapChartSpec(o.treemapChart);
    checkWaterfallChartSpec(o.waterfallChart);
  }
  buildCounterChartSpec--;
}

core.int buildCounterClearBasicFilterRequest = 0;
buildClearBasicFilterRequest() {
  var o = new api.ClearBasicFilterRequest();
  buildCounterClearBasicFilterRequest++;
  if (buildCounterClearBasicFilterRequest < 3) {
    o.sheetId = 42;
  }
  buildCounterClearBasicFilterRequest--;
  return o;
}

checkClearBasicFilterRequest(api.ClearBasicFilterRequest o) {
  buildCounterClearBasicFilterRequest++;
  if (buildCounterClearBasicFilterRequest < 3) {
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterClearBasicFilterRequest--;
}

core.int buildCounterClearValuesRequest = 0;
buildClearValuesRequest() {
  var o = new api.ClearValuesRequest();
  buildCounterClearValuesRequest++;
  if (buildCounterClearValuesRequest < 3) {}
  buildCounterClearValuesRequest--;
  return o;
}

checkClearValuesRequest(api.ClearValuesRequest o) {
  buildCounterClearValuesRequest++;
  if (buildCounterClearValuesRequest < 3) {}
  buildCounterClearValuesRequest--;
}

core.int buildCounterClearValuesResponse = 0;
buildClearValuesResponse() {
  var o = new api.ClearValuesResponse();
  buildCounterClearValuesResponse++;
  if (buildCounterClearValuesResponse < 3) {
    o.clearedRange = "foo";
    o.spreadsheetId = "foo";
  }
  buildCounterClearValuesResponse--;
  return o;
}

checkClearValuesResponse(api.ClearValuesResponse o) {
  buildCounterClearValuesResponse++;
  if (buildCounterClearValuesResponse < 3) {
    unittest.expect(o.clearedRange, unittest.equals('foo'));
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
  }
  buildCounterClearValuesResponse--;
}

core.int buildCounterColor = 0;
buildColor() {
  var o = new api.Color();
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

checkColor(api.Color o) {
  buildCounterColor++;
  if (buildCounterColor < 3) {
    unittest.expect(o.alpha, unittest.equals(42.0));
    unittest.expect(o.blue, unittest.equals(42.0));
    unittest.expect(o.green, unittest.equals(42.0));
    unittest.expect(o.red, unittest.equals(42.0));
  }
  buildCounterColor--;
}

core.int buildCounterConditionValue = 0;
buildConditionValue() {
  var o = new api.ConditionValue();
  buildCounterConditionValue++;
  if (buildCounterConditionValue < 3) {
    o.relativeDate = "foo";
    o.userEnteredValue = "foo";
  }
  buildCounterConditionValue--;
  return o;
}

checkConditionValue(api.ConditionValue o) {
  buildCounterConditionValue++;
  if (buildCounterConditionValue < 3) {
    unittest.expect(o.relativeDate, unittest.equals('foo'));
    unittest.expect(o.userEnteredValue, unittest.equals('foo'));
  }
  buildCounterConditionValue--;
}

buildUnnamed4006() {
  var o = new core.List<api.GridRange>();
  o.add(buildGridRange());
  o.add(buildGridRange());
  return o;
}

checkUnnamed4006(core.List<api.GridRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGridRange(o[0]);
  checkGridRange(o[1]);
}

core.int buildCounterConditionalFormatRule = 0;
buildConditionalFormatRule() {
  var o = new api.ConditionalFormatRule();
  buildCounterConditionalFormatRule++;
  if (buildCounterConditionalFormatRule < 3) {
    o.booleanRule = buildBooleanRule();
    o.gradientRule = buildGradientRule();
    o.ranges = buildUnnamed4006();
  }
  buildCounterConditionalFormatRule--;
  return o;
}

checkConditionalFormatRule(api.ConditionalFormatRule o) {
  buildCounterConditionalFormatRule++;
  if (buildCounterConditionalFormatRule < 3) {
    checkBooleanRule(o.booleanRule);
    checkGradientRule(o.gradientRule);
    checkUnnamed4006(o.ranges);
  }
  buildCounterConditionalFormatRule--;
}

core.int buildCounterCopyPasteRequest = 0;
buildCopyPasteRequest() {
  var o = new api.CopyPasteRequest();
  buildCounterCopyPasteRequest++;
  if (buildCounterCopyPasteRequest < 3) {
    o.destination = buildGridRange();
    o.pasteOrientation = "foo";
    o.pasteType = "foo";
    o.source = buildGridRange();
  }
  buildCounterCopyPasteRequest--;
  return o;
}

checkCopyPasteRequest(api.CopyPasteRequest o) {
  buildCounterCopyPasteRequest++;
  if (buildCounterCopyPasteRequest < 3) {
    checkGridRange(o.destination);
    unittest.expect(o.pasteOrientation, unittest.equals('foo'));
    unittest.expect(o.pasteType, unittest.equals('foo'));
    checkGridRange(o.source);
  }
  buildCounterCopyPasteRequest--;
}

core.int buildCounterCopySheetToAnotherSpreadsheetRequest = 0;
buildCopySheetToAnotherSpreadsheetRequest() {
  var o = new api.CopySheetToAnotherSpreadsheetRequest();
  buildCounterCopySheetToAnotherSpreadsheetRequest++;
  if (buildCounterCopySheetToAnotherSpreadsheetRequest < 3) {
    o.destinationSpreadsheetId = "foo";
  }
  buildCounterCopySheetToAnotherSpreadsheetRequest--;
  return o;
}

checkCopySheetToAnotherSpreadsheetRequest(
    api.CopySheetToAnotherSpreadsheetRequest o) {
  buildCounterCopySheetToAnotherSpreadsheetRequest++;
  if (buildCounterCopySheetToAnotherSpreadsheetRequest < 3) {
    unittest.expect(o.destinationSpreadsheetId, unittest.equals('foo'));
  }
  buildCounterCopySheetToAnotherSpreadsheetRequest--;
}

core.int buildCounterCreateDeveloperMetadataRequest = 0;
buildCreateDeveloperMetadataRequest() {
  var o = new api.CreateDeveloperMetadataRequest();
  buildCounterCreateDeveloperMetadataRequest++;
  if (buildCounterCreateDeveloperMetadataRequest < 3) {
    o.developerMetadata = buildDeveloperMetadata();
  }
  buildCounterCreateDeveloperMetadataRequest--;
  return o;
}

checkCreateDeveloperMetadataRequest(api.CreateDeveloperMetadataRequest o) {
  buildCounterCreateDeveloperMetadataRequest++;
  if (buildCounterCreateDeveloperMetadataRequest < 3) {
    checkDeveloperMetadata(o.developerMetadata);
  }
  buildCounterCreateDeveloperMetadataRequest--;
}

core.int buildCounterCreateDeveloperMetadataResponse = 0;
buildCreateDeveloperMetadataResponse() {
  var o = new api.CreateDeveloperMetadataResponse();
  buildCounterCreateDeveloperMetadataResponse++;
  if (buildCounterCreateDeveloperMetadataResponse < 3) {
    o.developerMetadata = buildDeveloperMetadata();
  }
  buildCounterCreateDeveloperMetadataResponse--;
  return o;
}

checkCreateDeveloperMetadataResponse(api.CreateDeveloperMetadataResponse o) {
  buildCounterCreateDeveloperMetadataResponse++;
  if (buildCounterCreateDeveloperMetadataResponse < 3) {
    checkDeveloperMetadata(o.developerMetadata);
  }
  buildCounterCreateDeveloperMetadataResponse--;
}

core.int buildCounterCutPasteRequest = 0;
buildCutPasteRequest() {
  var o = new api.CutPasteRequest();
  buildCounterCutPasteRequest++;
  if (buildCounterCutPasteRequest < 3) {
    o.destination = buildGridCoordinate();
    o.pasteType = "foo";
    o.source = buildGridRange();
  }
  buildCounterCutPasteRequest--;
  return o;
}

checkCutPasteRequest(api.CutPasteRequest o) {
  buildCounterCutPasteRequest++;
  if (buildCounterCutPasteRequest < 3) {
    checkGridCoordinate(o.destination);
    unittest.expect(o.pasteType, unittest.equals('foo'));
    checkGridRange(o.source);
  }
  buildCounterCutPasteRequest--;
}

core.int buildCounterDataFilter = 0;
buildDataFilter() {
  var o = new api.DataFilter();
  buildCounterDataFilter++;
  if (buildCounterDataFilter < 3) {
    o.a1Range = "foo";
    o.developerMetadataLookup = buildDeveloperMetadataLookup();
    o.gridRange = buildGridRange();
  }
  buildCounterDataFilter--;
  return o;
}

checkDataFilter(api.DataFilter o) {
  buildCounterDataFilter++;
  if (buildCounterDataFilter < 3) {
    unittest.expect(o.a1Range, unittest.equals('foo'));
    checkDeveloperMetadataLookup(o.developerMetadataLookup);
    checkGridRange(o.gridRange);
  }
  buildCounterDataFilter--;
}

buildUnnamed4007() {
  var o = new core.List<core.Object>();
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

checkUnnamed4007(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o[1]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed4008() {
  var o = new core.List<core.List<core.Object>>();
  o.add(buildUnnamed4007());
  o.add(buildUnnamed4007());
  return o;
}

checkUnnamed4008(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4007(o[0]);
  checkUnnamed4007(o[1]);
}

core.int buildCounterDataFilterValueRange = 0;
buildDataFilterValueRange() {
  var o = new api.DataFilterValueRange();
  buildCounterDataFilterValueRange++;
  if (buildCounterDataFilterValueRange < 3) {
    o.dataFilter = buildDataFilter();
    o.majorDimension = "foo";
    o.values = buildUnnamed4008();
  }
  buildCounterDataFilterValueRange--;
  return o;
}

checkDataFilterValueRange(api.DataFilterValueRange o) {
  buildCounterDataFilterValueRange++;
  if (buildCounterDataFilterValueRange < 3) {
    checkDataFilter(o.dataFilter);
    unittest.expect(o.majorDimension, unittest.equals('foo'));
    checkUnnamed4008(o.values);
  }
  buildCounterDataFilterValueRange--;
}

core.int buildCounterDataValidationRule = 0;
buildDataValidationRule() {
  var o = new api.DataValidationRule();
  buildCounterDataValidationRule++;
  if (buildCounterDataValidationRule < 3) {
    o.condition = buildBooleanCondition();
    o.inputMessage = "foo";
    o.showCustomUi = true;
    o.strict = true;
  }
  buildCounterDataValidationRule--;
  return o;
}

checkDataValidationRule(api.DataValidationRule o) {
  buildCounterDataValidationRule++;
  if (buildCounterDataValidationRule < 3) {
    checkBooleanCondition(o.condition);
    unittest.expect(o.inputMessage, unittest.equals('foo'));
    unittest.expect(o.showCustomUi, unittest.isTrue);
    unittest.expect(o.strict, unittest.isTrue);
  }
  buildCounterDataValidationRule--;
}

core.int buildCounterDateTimeRule = 0;
buildDateTimeRule() {
  var o = new api.DateTimeRule();
  buildCounterDateTimeRule++;
  if (buildCounterDateTimeRule < 3) {
    o.type = "foo";
  }
  buildCounterDateTimeRule--;
  return o;
}

checkDateTimeRule(api.DateTimeRule o) {
  buildCounterDateTimeRule++;
  if (buildCounterDateTimeRule < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDateTimeRule--;
}

core.int buildCounterDeleteBandingRequest = 0;
buildDeleteBandingRequest() {
  var o = new api.DeleteBandingRequest();
  buildCounterDeleteBandingRequest++;
  if (buildCounterDeleteBandingRequest < 3) {
    o.bandedRangeId = 42;
  }
  buildCounterDeleteBandingRequest--;
  return o;
}

checkDeleteBandingRequest(api.DeleteBandingRequest o) {
  buildCounterDeleteBandingRequest++;
  if (buildCounterDeleteBandingRequest < 3) {
    unittest.expect(o.bandedRangeId, unittest.equals(42));
  }
  buildCounterDeleteBandingRequest--;
}

core.int buildCounterDeleteConditionalFormatRuleRequest = 0;
buildDeleteConditionalFormatRuleRequest() {
  var o = new api.DeleteConditionalFormatRuleRequest();
  buildCounterDeleteConditionalFormatRuleRequest++;
  if (buildCounterDeleteConditionalFormatRuleRequest < 3) {
    o.index = 42;
    o.sheetId = 42;
  }
  buildCounterDeleteConditionalFormatRuleRequest--;
  return o;
}

checkDeleteConditionalFormatRuleRequest(
    api.DeleteConditionalFormatRuleRequest o) {
  buildCounterDeleteConditionalFormatRuleRequest++;
  if (buildCounterDeleteConditionalFormatRuleRequest < 3) {
    unittest.expect(o.index, unittest.equals(42));
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterDeleteConditionalFormatRuleRequest--;
}

core.int buildCounterDeleteConditionalFormatRuleResponse = 0;
buildDeleteConditionalFormatRuleResponse() {
  var o = new api.DeleteConditionalFormatRuleResponse();
  buildCounterDeleteConditionalFormatRuleResponse++;
  if (buildCounterDeleteConditionalFormatRuleResponse < 3) {
    o.rule = buildConditionalFormatRule();
  }
  buildCounterDeleteConditionalFormatRuleResponse--;
  return o;
}

checkDeleteConditionalFormatRuleResponse(
    api.DeleteConditionalFormatRuleResponse o) {
  buildCounterDeleteConditionalFormatRuleResponse++;
  if (buildCounterDeleteConditionalFormatRuleResponse < 3) {
    checkConditionalFormatRule(o.rule);
  }
  buildCounterDeleteConditionalFormatRuleResponse--;
}

core.int buildCounterDeleteDeveloperMetadataRequest = 0;
buildDeleteDeveloperMetadataRequest() {
  var o = new api.DeleteDeveloperMetadataRequest();
  buildCounterDeleteDeveloperMetadataRequest++;
  if (buildCounterDeleteDeveloperMetadataRequest < 3) {
    o.dataFilter = buildDataFilter();
  }
  buildCounterDeleteDeveloperMetadataRequest--;
  return o;
}

checkDeleteDeveloperMetadataRequest(api.DeleteDeveloperMetadataRequest o) {
  buildCounterDeleteDeveloperMetadataRequest++;
  if (buildCounterDeleteDeveloperMetadataRequest < 3) {
    checkDataFilter(o.dataFilter);
  }
  buildCounterDeleteDeveloperMetadataRequest--;
}

buildUnnamed4009() {
  var o = new core.List<api.DeveloperMetadata>();
  o.add(buildDeveloperMetadata());
  o.add(buildDeveloperMetadata());
  return o;
}

checkUnnamed4009(core.List<api.DeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeveloperMetadata(o[0]);
  checkDeveloperMetadata(o[1]);
}

core.int buildCounterDeleteDeveloperMetadataResponse = 0;
buildDeleteDeveloperMetadataResponse() {
  var o = new api.DeleteDeveloperMetadataResponse();
  buildCounterDeleteDeveloperMetadataResponse++;
  if (buildCounterDeleteDeveloperMetadataResponse < 3) {
    o.deletedDeveloperMetadata = buildUnnamed4009();
  }
  buildCounterDeleteDeveloperMetadataResponse--;
  return o;
}

checkDeleteDeveloperMetadataResponse(api.DeleteDeveloperMetadataResponse o) {
  buildCounterDeleteDeveloperMetadataResponse++;
  if (buildCounterDeleteDeveloperMetadataResponse < 3) {
    checkUnnamed4009(o.deletedDeveloperMetadata);
  }
  buildCounterDeleteDeveloperMetadataResponse--;
}

core.int buildCounterDeleteDimensionGroupRequest = 0;
buildDeleteDimensionGroupRequest() {
  var o = new api.DeleteDimensionGroupRequest();
  buildCounterDeleteDimensionGroupRequest++;
  if (buildCounterDeleteDimensionGroupRequest < 3) {
    o.range = buildDimensionRange();
  }
  buildCounterDeleteDimensionGroupRequest--;
  return o;
}

checkDeleteDimensionGroupRequest(api.DeleteDimensionGroupRequest o) {
  buildCounterDeleteDimensionGroupRequest++;
  if (buildCounterDeleteDimensionGroupRequest < 3) {
    checkDimensionRange(o.range);
  }
  buildCounterDeleteDimensionGroupRequest--;
}

buildUnnamed4010() {
  var o = new core.List<api.DimensionGroup>();
  o.add(buildDimensionGroup());
  o.add(buildDimensionGroup());
  return o;
}

checkUnnamed4010(core.List<api.DimensionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionGroup(o[0]);
  checkDimensionGroup(o[1]);
}

core.int buildCounterDeleteDimensionGroupResponse = 0;
buildDeleteDimensionGroupResponse() {
  var o = new api.DeleteDimensionGroupResponse();
  buildCounterDeleteDimensionGroupResponse++;
  if (buildCounterDeleteDimensionGroupResponse < 3) {
    o.dimensionGroups = buildUnnamed4010();
  }
  buildCounterDeleteDimensionGroupResponse--;
  return o;
}

checkDeleteDimensionGroupResponse(api.DeleteDimensionGroupResponse o) {
  buildCounterDeleteDimensionGroupResponse++;
  if (buildCounterDeleteDimensionGroupResponse < 3) {
    checkUnnamed4010(o.dimensionGroups);
  }
  buildCounterDeleteDimensionGroupResponse--;
}

core.int buildCounterDeleteDimensionRequest = 0;
buildDeleteDimensionRequest() {
  var o = new api.DeleteDimensionRequest();
  buildCounterDeleteDimensionRequest++;
  if (buildCounterDeleteDimensionRequest < 3) {
    o.range = buildDimensionRange();
  }
  buildCounterDeleteDimensionRequest--;
  return o;
}

checkDeleteDimensionRequest(api.DeleteDimensionRequest o) {
  buildCounterDeleteDimensionRequest++;
  if (buildCounterDeleteDimensionRequest < 3) {
    checkDimensionRange(o.range);
  }
  buildCounterDeleteDimensionRequest--;
}

core.int buildCounterDeleteEmbeddedObjectRequest = 0;
buildDeleteEmbeddedObjectRequest() {
  var o = new api.DeleteEmbeddedObjectRequest();
  buildCounterDeleteEmbeddedObjectRequest++;
  if (buildCounterDeleteEmbeddedObjectRequest < 3) {
    o.objectId = 42;
  }
  buildCounterDeleteEmbeddedObjectRequest--;
  return o;
}

checkDeleteEmbeddedObjectRequest(api.DeleteEmbeddedObjectRequest o) {
  buildCounterDeleteEmbeddedObjectRequest++;
  if (buildCounterDeleteEmbeddedObjectRequest < 3) {
    unittest.expect(o.objectId, unittest.equals(42));
  }
  buildCounterDeleteEmbeddedObjectRequest--;
}

core.int buildCounterDeleteFilterViewRequest = 0;
buildDeleteFilterViewRequest() {
  var o = new api.DeleteFilterViewRequest();
  buildCounterDeleteFilterViewRequest++;
  if (buildCounterDeleteFilterViewRequest < 3) {
    o.filterId = 42;
  }
  buildCounterDeleteFilterViewRequest--;
  return o;
}

checkDeleteFilterViewRequest(api.DeleteFilterViewRequest o) {
  buildCounterDeleteFilterViewRequest++;
  if (buildCounterDeleteFilterViewRequest < 3) {
    unittest.expect(o.filterId, unittest.equals(42));
  }
  buildCounterDeleteFilterViewRequest--;
}

core.int buildCounterDeleteNamedRangeRequest = 0;
buildDeleteNamedRangeRequest() {
  var o = new api.DeleteNamedRangeRequest();
  buildCounterDeleteNamedRangeRequest++;
  if (buildCounterDeleteNamedRangeRequest < 3) {
    o.namedRangeId = "foo";
  }
  buildCounterDeleteNamedRangeRequest--;
  return o;
}

checkDeleteNamedRangeRequest(api.DeleteNamedRangeRequest o) {
  buildCounterDeleteNamedRangeRequest++;
  if (buildCounterDeleteNamedRangeRequest < 3) {
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
  }
  buildCounterDeleteNamedRangeRequest--;
}

core.int buildCounterDeleteProtectedRangeRequest = 0;
buildDeleteProtectedRangeRequest() {
  var o = new api.DeleteProtectedRangeRequest();
  buildCounterDeleteProtectedRangeRequest++;
  if (buildCounterDeleteProtectedRangeRequest < 3) {
    o.protectedRangeId = 42;
  }
  buildCounterDeleteProtectedRangeRequest--;
  return o;
}

checkDeleteProtectedRangeRequest(api.DeleteProtectedRangeRequest o) {
  buildCounterDeleteProtectedRangeRequest++;
  if (buildCounterDeleteProtectedRangeRequest < 3) {
    unittest.expect(o.protectedRangeId, unittest.equals(42));
  }
  buildCounterDeleteProtectedRangeRequest--;
}

core.int buildCounterDeleteRangeRequest = 0;
buildDeleteRangeRequest() {
  var o = new api.DeleteRangeRequest();
  buildCounterDeleteRangeRequest++;
  if (buildCounterDeleteRangeRequest < 3) {
    o.range = buildGridRange();
    o.shiftDimension = "foo";
  }
  buildCounterDeleteRangeRequest--;
  return o;
}

checkDeleteRangeRequest(api.DeleteRangeRequest o) {
  buildCounterDeleteRangeRequest++;
  if (buildCounterDeleteRangeRequest < 3) {
    checkGridRange(o.range);
    unittest.expect(o.shiftDimension, unittest.equals('foo'));
  }
  buildCounterDeleteRangeRequest--;
}

core.int buildCounterDeleteSheetRequest = 0;
buildDeleteSheetRequest() {
  var o = new api.DeleteSheetRequest();
  buildCounterDeleteSheetRequest++;
  if (buildCounterDeleteSheetRequest < 3) {
    o.sheetId = 42;
  }
  buildCounterDeleteSheetRequest--;
  return o;
}

checkDeleteSheetRequest(api.DeleteSheetRequest o) {
  buildCounterDeleteSheetRequest++;
  if (buildCounterDeleteSheetRequest < 3) {
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterDeleteSheetRequest--;
}

core.int buildCounterDeveloperMetadata = 0;
buildDeveloperMetadata() {
  var o = new api.DeveloperMetadata();
  buildCounterDeveloperMetadata++;
  if (buildCounterDeveloperMetadata < 3) {
    o.location = buildDeveloperMetadataLocation();
    o.metadataId = 42;
    o.metadataKey = "foo";
    o.metadataValue = "foo";
    o.visibility = "foo";
  }
  buildCounterDeveloperMetadata--;
  return o;
}

checkDeveloperMetadata(api.DeveloperMetadata o) {
  buildCounterDeveloperMetadata++;
  if (buildCounterDeveloperMetadata < 3) {
    checkDeveloperMetadataLocation(o.location);
    unittest.expect(o.metadataId, unittest.equals(42));
    unittest.expect(o.metadataKey, unittest.equals('foo'));
    unittest.expect(o.metadataValue, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterDeveloperMetadata--;
}

core.int buildCounterDeveloperMetadataLocation = 0;
buildDeveloperMetadataLocation() {
  var o = new api.DeveloperMetadataLocation();
  buildCounterDeveloperMetadataLocation++;
  if (buildCounterDeveloperMetadataLocation < 3) {
    o.dimensionRange = buildDimensionRange();
    o.locationType = "foo";
    o.sheetId = 42;
    o.spreadsheet = true;
  }
  buildCounterDeveloperMetadataLocation--;
  return o;
}

checkDeveloperMetadataLocation(api.DeveloperMetadataLocation o) {
  buildCounterDeveloperMetadataLocation++;
  if (buildCounterDeveloperMetadataLocation < 3) {
    checkDimensionRange(o.dimensionRange);
    unittest.expect(o.locationType, unittest.equals('foo'));
    unittest.expect(o.sheetId, unittest.equals(42));
    unittest.expect(o.spreadsheet, unittest.isTrue);
  }
  buildCounterDeveloperMetadataLocation--;
}

core.int buildCounterDeveloperMetadataLookup = 0;
buildDeveloperMetadataLookup() {
  var o = new api.DeveloperMetadataLookup();
  buildCounterDeveloperMetadataLookup++;
  if (buildCounterDeveloperMetadataLookup < 3) {
    o.locationMatchingStrategy = "foo";
    o.locationType = "foo";
    o.metadataId = 42;
    o.metadataKey = "foo";
    o.metadataLocation = buildDeveloperMetadataLocation();
    o.metadataValue = "foo";
    o.visibility = "foo";
  }
  buildCounterDeveloperMetadataLookup--;
  return o;
}

checkDeveloperMetadataLookup(api.DeveloperMetadataLookup o) {
  buildCounterDeveloperMetadataLookup++;
  if (buildCounterDeveloperMetadataLookup < 3) {
    unittest.expect(o.locationMatchingStrategy, unittest.equals('foo'));
    unittest.expect(o.locationType, unittest.equals('foo'));
    unittest.expect(o.metadataId, unittest.equals(42));
    unittest.expect(o.metadataKey, unittest.equals('foo'));
    checkDeveloperMetadataLocation(o.metadataLocation);
    unittest.expect(o.metadataValue, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterDeveloperMetadataLookup--;
}

core.int buildCounterDimensionGroup = 0;
buildDimensionGroup() {
  var o = new api.DimensionGroup();
  buildCounterDimensionGroup++;
  if (buildCounterDimensionGroup < 3) {
    o.collapsed = true;
    o.depth = 42;
    o.range = buildDimensionRange();
  }
  buildCounterDimensionGroup--;
  return o;
}

checkDimensionGroup(api.DimensionGroup o) {
  buildCounterDimensionGroup++;
  if (buildCounterDimensionGroup < 3) {
    unittest.expect(o.collapsed, unittest.isTrue);
    unittest.expect(o.depth, unittest.equals(42));
    checkDimensionRange(o.range);
  }
  buildCounterDimensionGroup--;
}

buildUnnamed4011() {
  var o = new core.List<api.DeveloperMetadata>();
  o.add(buildDeveloperMetadata());
  o.add(buildDeveloperMetadata());
  return o;
}

checkUnnamed4011(core.List<api.DeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeveloperMetadata(o[0]);
  checkDeveloperMetadata(o[1]);
}

core.int buildCounterDimensionProperties = 0;
buildDimensionProperties() {
  var o = new api.DimensionProperties();
  buildCounterDimensionProperties++;
  if (buildCounterDimensionProperties < 3) {
    o.developerMetadata = buildUnnamed4011();
    o.hiddenByFilter = true;
    o.hiddenByUser = true;
    o.pixelSize = 42;
  }
  buildCounterDimensionProperties--;
  return o;
}

checkDimensionProperties(api.DimensionProperties o) {
  buildCounterDimensionProperties++;
  if (buildCounterDimensionProperties < 3) {
    checkUnnamed4011(o.developerMetadata);
    unittest.expect(o.hiddenByFilter, unittest.isTrue);
    unittest.expect(o.hiddenByUser, unittest.isTrue);
    unittest.expect(o.pixelSize, unittest.equals(42));
  }
  buildCounterDimensionProperties--;
}

core.int buildCounterDimensionRange = 0;
buildDimensionRange() {
  var o = new api.DimensionRange();
  buildCounterDimensionRange++;
  if (buildCounterDimensionRange < 3) {
    o.dimension = "foo";
    o.endIndex = 42;
    o.sheetId = 42;
    o.startIndex = 42;
  }
  buildCounterDimensionRange--;
  return o;
}

checkDimensionRange(api.DimensionRange o) {
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
buildDuplicateFilterViewRequest() {
  var o = new api.DuplicateFilterViewRequest();
  buildCounterDuplicateFilterViewRequest++;
  if (buildCounterDuplicateFilterViewRequest < 3) {
    o.filterId = 42;
  }
  buildCounterDuplicateFilterViewRequest--;
  return o;
}

checkDuplicateFilterViewRequest(api.DuplicateFilterViewRequest o) {
  buildCounterDuplicateFilterViewRequest++;
  if (buildCounterDuplicateFilterViewRequest < 3) {
    unittest.expect(o.filterId, unittest.equals(42));
  }
  buildCounterDuplicateFilterViewRequest--;
}

core.int buildCounterDuplicateFilterViewResponse = 0;
buildDuplicateFilterViewResponse() {
  var o = new api.DuplicateFilterViewResponse();
  buildCounterDuplicateFilterViewResponse++;
  if (buildCounterDuplicateFilterViewResponse < 3) {
    o.filter = buildFilterView();
  }
  buildCounterDuplicateFilterViewResponse--;
  return o;
}

checkDuplicateFilterViewResponse(api.DuplicateFilterViewResponse o) {
  buildCounterDuplicateFilterViewResponse++;
  if (buildCounterDuplicateFilterViewResponse < 3) {
    checkFilterView(o.filter);
  }
  buildCounterDuplicateFilterViewResponse--;
}

core.int buildCounterDuplicateSheetRequest = 0;
buildDuplicateSheetRequest() {
  var o = new api.DuplicateSheetRequest();
  buildCounterDuplicateSheetRequest++;
  if (buildCounterDuplicateSheetRequest < 3) {
    o.insertSheetIndex = 42;
    o.newSheetId = 42;
    o.newSheetName = "foo";
    o.sourceSheetId = 42;
  }
  buildCounterDuplicateSheetRequest--;
  return o;
}

checkDuplicateSheetRequest(api.DuplicateSheetRequest o) {
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
buildDuplicateSheetResponse() {
  var o = new api.DuplicateSheetResponse();
  buildCounterDuplicateSheetResponse++;
  if (buildCounterDuplicateSheetResponse < 3) {
    o.properties = buildSheetProperties();
  }
  buildCounterDuplicateSheetResponse--;
  return o;
}

checkDuplicateSheetResponse(api.DuplicateSheetResponse o) {
  buildCounterDuplicateSheetResponse++;
  if (buildCounterDuplicateSheetResponse < 3) {
    checkSheetProperties(o.properties);
  }
  buildCounterDuplicateSheetResponse--;
}

buildUnnamed4012() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4012(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4013() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4013(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEditors = 0;
buildEditors() {
  var o = new api.Editors();
  buildCounterEditors++;
  if (buildCounterEditors < 3) {
    o.domainUsersCanEdit = true;
    o.groups = buildUnnamed4012();
    o.users = buildUnnamed4013();
  }
  buildCounterEditors--;
  return o;
}

checkEditors(api.Editors o) {
  buildCounterEditors++;
  if (buildCounterEditors < 3) {
    unittest.expect(o.domainUsersCanEdit, unittest.isTrue);
    checkUnnamed4012(o.groups);
    checkUnnamed4013(o.users);
  }
  buildCounterEditors--;
}

core.int buildCounterEmbeddedChart = 0;
buildEmbeddedChart() {
  var o = new api.EmbeddedChart();
  buildCounterEmbeddedChart++;
  if (buildCounterEmbeddedChart < 3) {
    o.chartId = 42;
    o.position = buildEmbeddedObjectPosition();
    o.spec = buildChartSpec();
  }
  buildCounterEmbeddedChart--;
  return o;
}

checkEmbeddedChart(api.EmbeddedChart o) {
  buildCounterEmbeddedChart++;
  if (buildCounterEmbeddedChart < 3) {
    unittest.expect(o.chartId, unittest.equals(42));
    checkEmbeddedObjectPosition(o.position);
    checkChartSpec(o.spec);
  }
  buildCounterEmbeddedChart--;
}

core.int buildCounterEmbeddedObjectPosition = 0;
buildEmbeddedObjectPosition() {
  var o = new api.EmbeddedObjectPosition();
  buildCounterEmbeddedObjectPosition++;
  if (buildCounterEmbeddedObjectPosition < 3) {
    o.newSheet = true;
    o.overlayPosition = buildOverlayPosition();
    o.sheetId = 42;
  }
  buildCounterEmbeddedObjectPosition--;
  return o;
}

checkEmbeddedObjectPosition(api.EmbeddedObjectPosition o) {
  buildCounterEmbeddedObjectPosition++;
  if (buildCounterEmbeddedObjectPosition < 3) {
    unittest.expect(o.newSheet, unittest.isTrue);
    checkOverlayPosition(o.overlayPosition);
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterEmbeddedObjectPosition--;
}

core.int buildCounterErrorValue = 0;
buildErrorValue() {
  var o = new api.ErrorValue();
  buildCounterErrorValue++;
  if (buildCounterErrorValue < 3) {
    o.message = "foo";
    o.type = "foo";
  }
  buildCounterErrorValue--;
  return o;
}

checkErrorValue(api.ErrorValue o) {
  buildCounterErrorValue++;
  if (buildCounterErrorValue < 3) {
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterErrorValue--;
}

core.int buildCounterExtendedValue = 0;
buildExtendedValue() {
  var o = new api.ExtendedValue();
  buildCounterExtendedValue++;
  if (buildCounterExtendedValue < 3) {
    o.boolValue = true;
    o.errorValue = buildErrorValue();
    o.formulaValue = "foo";
    o.numberValue = 42.0;
    o.stringValue = "foo";
  }
  buildCounterExtendedValue--;
  return o;
}

checkExtendedValue(api.ExtendedValue o) {
  buildCounterExtendedValue++;
  if (buildCounterExtendedValue < 3) {
    unittest.expect(o.boolValue, unittest.isTrue);
    checkErrorValue(o.errorValue);
    unittest.expect(o.formulaValue, unittest.equals('foo'));
    unittest.expect(o.numberValue, unittest.equals(42.0));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterExtendedValue--;
}

buildUnnamed4014() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4014(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFilterCriteria = 0;
buildFilterCriteria() {
  var o = new api.FilterCriteria();
  buildCounterFilterCriteria++;
  if (buildCounterFilterCriteria < 3) {
    o.condition = buildBooleanCondition();
    o.hiddenValues = buildUnnamed4014();
  }
  buildCounterFilterCriteria--;
  return o;
}

checkFilterCriteria(api.FilterCriteria o) {
  buildCounterFilterCriteria++;
  if (buildCounterFilterCriteria < 3) {
    checkBooleanCondition(o.condition);
    checkUnnamed4014(o.hiddenValues);
  }
  buildCounterFilterCriteria--;
}

buildUnnamed4015() {
  var o = new core.Map<core.String, api.FilterCriteria>();
  o["x"] = buildFilterCriteria();
  o["y"] = buildFilterCriteria();
  return o;
}

checkUnnamed4015(core.Map<core.String, api.FilterCriteria> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterCriteria(o["x"]);
  checkFilterCriteria(o["y"]);
}

buildUnnamed4016() {
  var o = new core.List<api.SortSpec>();
  o.add(buildSortSpec());
  o.add(buildSortSpec());
  return o;
}

checkUnnamed4016(core.List<api.SortSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortSpec(o[0]);
  checkSortSpec(o[1]);
}

core.int buildCounterFilterView = 0;
buildFilterView() {
  var o = new api.FilterView();
  buildCounterFilterView++;
  if (buildCounterFilterView < 3) {
    o.criteria = buildUnnamed4015();
    o.filterViewId = 42;
    o.namedRangeId = "foo";
    o.range = buildGridRange();
    o.sortSpecs = buildUnnamed4016();
    o.title = "foo";
  }
  buildCounterFilterView--;
  return o;
}

checkFilterView(api.FilterView o) {
  buildCounterFilterView++;
  if (buildCounterFilterView < 3) {
    checkUnnamed4015(o.criteria);
    unittest.expect(o.filterViewId, unittest.equals(42));
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
    checkGridRange(o.range);
    checkUnnamed4016(o.sortSpecs);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterFilterView--;
}

core.int buildCounterFindReplaceRequest = 0;
buildFindReplaceRequest() {
  var o = new api.FindReplaceRequest();
  buildCounterFindReplaceRequest++;
  if (buildCounterFindReplaceRequest < 3) {
    o.allSheets = true;
    o.find = "foo";
    o.includeFormulas = true;
    o.matchCase = true;
    o.matchEntireCell = true;
    o.range = buildGridRange();
    o.replacement = "foo";
    o.searchByRegex = true;
    o.sheetId = 42;
  }
  buildCounterFindReplaceRequest--;
  return o;
}

checkFindReplaceRequest(api.FindReplaceRequest o) {
  buildCounterFindReplaceRequest++;
  if (buildCounterFindReplaceRequest < 3) {
    unittest.expect(o.allSheets, unittest.isTrue);
    unittest.expect(o.find, unittest.equals('foo'));
    unittest.expect(o.includeFormulas, unittest.isTrue);
    unittest.expect(o.matchCase, unittest.isTrue);
    unittest.expect(o.matchEntireCell, unittest.isTrue);
    checkGridRange(o.range);
    unittest.expect(o.replacement, unittest.equals('foo'));
    unittest.expect(o.searchByRegex, unittest.isTrue);
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterFindReplaceRequest--;
}

core.int buildCounterFindReplaceResponse = 0;
buildFindReplaceResponse() {
  var o = new api.FindReplaceResponse();
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

checkFindReplaceResponse(api.FindReplaceResponse o) {
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

buildUnnamed4017() {
  var o = new core.List<api.DataFilter>();
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

checkUnnamed4017(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0]);
  checkDataFilter(o[1]);
}

core.int buildCounterGetSpreadsheetByDataFilterRequest = 0;
buildGetSpreadsheetByDataFilterRequest() {
  var o = new api.GetSpreadsheetByDataFilterRequest();
  buildCounterGetSpreadsheetByDataFilterRequest++;
  if (buildCounterGetSpreadsheetByDataFilterRequest < 3) {
    o.dataFilters = buildUnnamed4017();
    o.includeGridData = true;
  }
  buildCounterGetSpreadsheetByDataFilterRequest--;
  return o;
}

checkGetSpreadsheetByDataFilterRequest(
    api.GetSpreadsheetByDataFilterRequest o) {
  buildCounterGetSpreadsheetByDataFilterRequest++;
  if (buildCounterGetSpreadsheetByDataFilterRequest < 3) {
    checkUnnamed4017(o.dataFilters);
    unittest.expect(o.includeGridData, unittest.isTrue);
  }
  buildCounterGetSpreadsheetByDataFilterRequest--;
}

core.int buildCounterGradientRule = 0;
buildGradientRule() {
  var o = new api.GradientRule();
  buildCounterGradientRule++;
  if (buildCounterGradientRule < 3) {
    o.maxpoint = buildInterpolationPoint();
    o.midpoint = buildInterpolationPoint();
    o.minpoint = buildInterpolationPoint();
  }
  buildCounterGradientRule--;
  return o;
}

checkGradientRule(api.GradientRule o) {
  buildCounterGradientRule++;
  if (buildCounterGradientRule < 3) {
    checkInterpolationPoint(o.maxpoint);
    checkInterpolationPoint(o.midpoint);
    checkInterpolationPoint(o.minpoint);
  }
  buildCounterGradientRule--;
}

core.int buildCounterGridCoordinate = 0;
buildGridCoordinate() {
  var o = new api.GridCoordinate();
  buildCounterGridCoordinate++;
  if (buildCounterGridCoordinate < 3) {
    o.columnIndex = 42;
    o.rowIndex = 42;
    o.sheetId = 42;
  }
  buildCounterGridCoordinate--;
  return o;
}

checkGridCoordinate(api.GridCoordinate o) {
  buildCounterGridCoordinate++;
  if (buildCounterGridCoordinate < 3) {
    unittest.expect(o.columnIndex, unittest.equals(42));
    unittest.expect(o.rowIndex, unittest.equals(42));
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterGridCoordinate--;
}

buildUnnamed4018() {
  var o = new core.List<api.DimensionProperties>();
  o.add(buildDimensionProperties());
  o.add(buildDimensionProperties());
  return o;
}

checkUnnamed4018(core.List<api.DimensionProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionProperties(o[0]);
  checkDimensionProperties(o[1]);
}

buildUnnamed4019() {
  var o = new core.List<api.RowData>();
  o.add(buildRowData());
  o.add(buildRowData());
  return o;
}

checkUnnamed4019(core.List<api.RowData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRowData(o[0]);
  checkRowData(o[1]);
}

buildUnnamed4020() {
  var o = new core.List<api.DimensionProperties>();
  o.add(buildDimensionProperties());
  o.add(buildDimensionProperties());
  return o;
}

checkUnnamed4020(core.List<api.DimensionProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionProperties(o[0]);
  checkDimensionProperties(o[1]);
}

core.int buildCounterGridData = 0;
buildGridData() {
  var o = new api.GridData();
  buildCounterGridData++;
  if (buildCounterGridData < 3) {
    o.columnMetadata = buildUnnamed4018();
    o.rowData = buildUnnamed4019();
    o.rowMetadata = buildUnnamed4020();
    o.startColumn = 42;
    o.startRow = 42;
  }
  buildCounterGridData--;
  return o;
}

checkGridData(api.GridData o) {
  buildCounterGridData++;
  if (buildCounterGridData < 3) {
    checkUnnamed4018(o.columnMetadata);
    checkUnnamed4019(o.rowData);
    checkUnnamed4020(o.rowMetadata);
    unittest.expect(o.startColumn, unittest.equals(42));
    unittest.expect(o.startRow, unittest.equals(42));
  }
  buildCounterGridData--;
}

core.int buildCounterGridProperties = 0;
buildGridProperties() {
  var o = new api.GridProperties();
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

checkGridProperties(api.GridProperties o) {
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
buildGridRange() {
  var o = new api.GridRange();
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

checkGridRange(api.GridRange o) {
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

buildUnnamed4021() {
  var o = new core.List<api.HistogramSeries>();
  o.add(buildHistogramSeries());
  o.add(buildHistogramSeries());
  return o;
}

checkUnnamed4021(core.List<api.HistogramSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistogramSeries(o[0]);
  checkHistogramSeries(o[1]);
}

core.int buildCounterHistogramChartSpec = 0;
buildHistogramChartSpec() {
  var o = new api.HistogramChartSpec();
  buildCounterHistogramChartSpec++;
  if (buildCounterHistogramChartSpec < 3) {
    o.bucketSize = 42.0;
    o.legendPosition = "foo";
    o.outlierPercentile = 42.0;
    o.series = buildUnnamed4021();
    o.showItemDividers = true;
  }
  buildCounterHistogramChartSpec--;
  return o;
}

checkHistogramChartSpec(api.HistogramChartSpec o) {
  buildCounterHistogramChartSpec++;
  if (buildCounterHistogramChartSpec < 3) {
    unittest.expect(o.bucketSize, unittest.equals(42.0));
    unittest.expect(o.legendPosition, unittest.equals('foo'));
    unittest.expect(o.outlierPercentile, unittest.equals(42.0));
    checkUnnamed4021(o.series);
    unittest.expect(o.showItemDividers, unittest.isTrue);
  }
  buildCounterHistogramChartSpec--;
}

core.int buildCounterHistogramRule = 0;
buildHistogramRule() {
  var o = new api.HistogramRule();
  buildCounterHistogramRule++;
  if (buildCounterHistogramRule < 3) {
    o.end = 42.0;
    o.interval = 42.0;
    o.start = 42.0;
  }
  buildCounterHistogramRule--;
  return o;
}

checkHistogramRule(api.HistogramRule o) {
  buildCounterHistogramRule++;
  if (buildCounterHistogramRule < 3) {
    unittest.expect(o.end, unittest.equals(42.0));
    unittest.expect(o.interval, unittest.equals(42.0));
    unittest.expect(o.start, unittest.equals(42.0));
  }
  buildCounterHistogramRule--;
}

core.int buildCounterHistogramSeries = 0;
buildHistogramSeries() {
  var o = new api.HistogramSeries();
  buildCounterHistogramSeries++;
  if (buildCounterHistogramSeries < 3) {
    o.barColor = buildColor();
    o.data = buildChartData();
  }
  buildCounterHistogramSeries--;
  return o;
}

checkHistogramSeries(api.HistogramSeries o) {
  buildCounterHistogramSeries++;
  if (buildCounterHistogramSeries < 3) {
    checkColor(o.barColor);
    checkChartData(o.data);
  }
  buildCounterHistogramSeries--;
}

core.int buildCounterInsertDimensionRequest = 0;
buildInsertDimensionRequest() {
  var o = new api.InsertDimensionRequest();
  buildCounterInsertDimensionRequest++;
  if (buildCounterInsertDimensionRequest < 3) {
    o.inheritFromBefore = true;
    o.range = buildDimensionRange();
  }
  buildCounterInsertDimensionRequest--;
  return o;
}

checkInsertDimensionRequest(api.InsertDimensionRequest o) {
  buildCounterInsertDimensionRequest++;
  if (buildCounterInsertDimensionRequest < 3) {
    unittest.expect(o.inheritFromBefore, unittest.isTrue);
    checkDimensionRange(o.range);
  }
  buildCounterInsertDimensionRequest--;
}

core.int buildCounterInsertRangeRequest = 0;
buildInsertRangeRequest() {
  var o = new api.InsertRangeRequest();
  buildCounterInsertRangeRequest++;
  if (buildCounterInsertRangeRequest < 3) {
    o.range = buildGridRange();
    o.shiftDimension = "foo";
  }
  buildCounterInsertRangeRequest--;
  return o;
}

checkInsertRangeRequest(api.InsertRangeRequest o) {
  buildCounterInsertRangeRequest++;
  if (buildCounterInsertRangeRequest < 3) {
    checkGridRange(o.range);
    unittest.expect(o.shiftDimension, unittest.equals('foo'));
  }
  buildCounterInsertRangeRequest--;
}

core.int buildCounterInterpolationPoint = 0;
buildInterpolationPoint() {
  var o = new api.InterpolationPoint();
  buildCounterInterpolationPoint++;
  if (buildCounterInterpolationPoint < 3) {
    o.color = buildColor();
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterInterpolationPoint--;
  return o;
}

checkInterpolationPoint(api.InterpolationPoint o) {
  buildCounterInterpolationPoint++;
  if (buildCounterInterpolationPoint < 3) {
    checkColor(o.color);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterInterpolationPoint--;
}

core.int buildCounterIterativeCalculationSettings = 0;
buildIterativeCalculationSettings() {
  var o = new api.IterativeCalculationSettings();
  buildCounterIterativeCalculationSettings++;
  if (buildCounterIterativeCalculationSettings < 3) {
    o.convergenceThreshold = 42.0;
    o.maxIterations = 42;
  }
  buildCounterIterativeCalculationSettings--;
  return o;
}

checkIterativeCalculationSettings(api.IterativeCalculationSettings o) {
  buildCounterIterativeCalculationSettings++;
  if (buildCounterIterativeCalculationSettings < 3) {
    unittest.expect(o.convergenceThreshold, unittest.equals(42.0));
    unittest.expect(o.maxIterations, unittest.equals(42));
  }
  buildCounterIterativeCalculationSettings--;
}

core.int buildCounterLineStyle = 0;
buildLineStyle() {
  var o = new api.LineStyle();
  buildCounterLineStyle++;
  if (buildCounterLineStyle < 3) {
    o.type = "foo";
    o.width = 42;
  }
  buildCounterLineStyle--;
  return o;
}

checkLineStyle(api.LineStyle o) {
  buildCounterLineStyle++;
  if (buildCounterLineStyle < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterLineStyle--;
}

buildUnnamed4022() {
  var o = new core.List<api.ManualRuleGroup>();
  o.add(buildManualRuleGroup());
  o.add(buildManualRuleGroup());
  return o;
}

checkUnnamed4022(core.List<api.ManualRuleGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManualRuleGroup(o[0]);
  checkManualRuleGroup(o[1]);
}

core.int buildCounterManualRule = 0;
buildManualRule() {
  var o = new api.ManualRule();
  buildCounterManualRule++;
  if (buildCounterManualRule < 3) {
    o.groups = buildUnnamed4022();
  }
  buildCounterManualRule--;
  return o;
}

checkManualRule(api.ManualRule o) {
  buildCounterManualRule++;
  if (buildCounterManualRule < 3) {
    checkUnnamed4022(o.groups);
  }
  buildCounterManualRule--;
}

buildUnnamed4023() {
  var o = new core.List<api.ExtendedValue>();
  o.add(buildExtendedValue());
  o.add(buildExtendedValue());
  return o;
}

checkUnnamed4023(core.List<api.ExtendedValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtendedValue(o[0]);
  checkExtendedValue(o[1]);
}

core.int buildCounterManualRuleGroup = 0;
buildManualRuleGroup() {
  var o = new api.ManualRuleGroup();
  buildCounterManualRuleGroup++;
  if (buildCounterManualRuleGroup < 3) {
    o.groupName = buildExtendedValue();
    o.items = buildUnnamed4023();
  }
  buildCounterManualRuleGroup--;
  return o;
}

checkManualRuleGroup(api.ManualRuleGroup o) {
  buildCounterManualRuleGroup++;
  if (buildCounterManualRuleGroup < 3) {
    checkExtendedValue(o.groupName);
    checkUnnamed4023(o.items);
  }
  buildCounterManualRuleGroup--;
}

buildUnnamed4024() {
  var o = new core.List<api.DataFilter>();
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

checkUnnamed4024(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0]);
  checkDataFilter(o[1]);
}

core.int buildCounterMatchedDeveloperMetadata = 0;
buildMatchedDeveloperMetadata() {
  var o = new api.MatchedDeveloperMetadata();
  buildCounterMatchedDeveloperMetadata++;
  if (buildCounterMatchedDeveloperMetadata < 3) {
    o.dataFilters = buildUnnamed4024();
    o.developerMetadata = buildDeveloperMetadata();
  }
  buildCounterMatchedDeveloperMetadata--;
  return o;
}

checkMatchedDeveloperMetadata(api.MatchedDeveloperMetadata o) {
  buildCounterMatchedDeveloperMetadata++;
  if (buildCounterMatchedDeveloperMetadata < 3) {
    checkUnnamed4024(o.dataFilters);
    checkDeveloperMetadata(o.developerMetadata);
  }
  buildCounterMatchedDeveloperMetadata--;
}

buildUnnamed4025() {
  var o = new core.List<api.DataFilter>();
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

checkUnnamed4025(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0]);
  checkDataFilter(o[1]);
}

core.int buildCounterMatchedValueRange = 0;
buildMatchedValueRange() {
  var o = new api.MatchedValueRange();
  buildCounterMatchedValueRange++;
  if (buildCounterMatchedValueRange < 3) {
    o.dataFilters = buildUnnamed4025();
    o.valueRange = buildValueRange();
  }
  buildCounterMatchedValueRange--;
  return o;
}

checkMatchedValueRange(api.MatchedValueRange o) {
  buildCounterMatchedValueRange++;
  if (buildCounterMatchedValueRange < 3) {
    checkUnnamed4025(o.dataFilters);
    checkValueRange(o.valueRange);
  }
  buildCounterMatchedValueRange--;
}

core.int buildCounterMergeCellsRequest = 0;
buildMergeCellsRequest() {
  var o = new api.MergeCellsRequest();
  buildCounterMergeCellsRequest++;
  if (buildCounterMergeCellsRequest < 3) {
    o.mergeType = "foo";
    o.range = buildGridRange();
  }
  buildCounterMergeCellsRequest--;
  return o;
}

checkMergeCellsRequest(api.MergeCellsRequest o) {
  buildCounterMergeCellsRequest++;
  if (buildCounterMergeCellsRequest < 3) {
    unittest.expect(o.mergeType, unittest.equals('foo'));
    checkGridRange(o.range);
  }
  buildCounterMergeCellsRequest--;
}

core.int buildCounterMoveDimensionRequest = 0;
buildMoveDimensionRequest() {
  var o = new api.MoveDimensionRequest();
  buildCounterMoveDimensionRequest++;
  if (buildCounterMoveDimensionRequest < 3) {
    o.destinationIndex = 42;
    o.source = buildDimensionRange();
  }
  buildCounterMoveDimensionRequest--;
  return o;
}

checkMoveDimensionRequest(api.MoveDimensionRequest o) {
  buildCounterMoveDimensionRequest++;
  if (buildCounterMoveDimensionRequest < 3) {
    unittest.expect(o.destinationIndex, unittest.equals(42));
    checkDimensionRange(o.source);
  }
  buildCounterMoveDimensionRequest--;
}

core.int buildCounterNamedRange = 0;
buildNamedRange() {
  var o = new api.NamedRange();
  buildCounterNamedRange++;
  if (buildCounterNamedRange < 3) {
    o.name = "foo";
    o.namedRangeId = "foo";
    o.range = buildGridRange();
  }
  buildCounterNamedRange--;
  return o;
}

checkNamedRange(api.NamedRange o) {
  buildCounterNamedRange++;
  if (buildCounterNamedRange < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
    checkGridRange(o.range);
  }
  buildCounterNamedRange--;
}

core.int buildCounterNumberFormat = 0;
buildNumberFormat() {
  var o = new api.NumberFormat();
  buildCounterNumberFormat++;
  if (buildCounterNumberFormat < 3) {
    o.pattern = "foo";
    o.type = "foo";
  }
  buildCounterNumberFormat--;
  return o;
}

checkNumberFormat(api.NumberFormat o) {
  buildCounterNumberFormat++;
  if (buildCounterNumberFormat < 3) {
    unittest.expect(o.pattern, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterNumberFormat--;
}

core.int buildCounterOrgChartSpec = 0;
buildOrgChartSpec() {
  var o = new api.OrgChartSpec();
  buildCounterOrgChartSpec++;
  if (buildCounterOrgChartSpec < 3) {
    o.labels = buildChartData();
    o.nodeColor = buildColor();
    o.nodeSize = "foo";
    o.parentLabels = buildChartData();
    o.selectedNodeColor = buildColor();
    o.tooltips = buildChartData();
  }
  buildCounterOrgChartSpec--;
  return o;
}

checkOrgChartSpec(api.OrgChartSpec o) {
  buildCounterOrgChartSpec++;
  if (buildCounterOrgChartSpec < 3) {
    checkChartData(o.labels);
    checkColor(o.nodeColor);
    unittest.expect(o.nodeSize, unittest.equals('foo'));
    checkChartData(o.parentLabels);
    checkColor(o.selectedNodeColor);
    checkChartData(o.tooltips);
  }
  buildCounterOrgChartSpec--;
}

core.int buildCounterOverlayPosition = 0;
buildOverlayPosition() {
  var o = new api.OverlayPosition();
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

checkOverlayPosition(api.OverlayPosition o) {
  buildCounterOverlayPosition++;
  if (buildCounterOverlayPosition < 3) {
    checkGridCoordinate(o.anchorCell);
    unittest.expect(o.heightPixels, unittest.equals(42));
    unittest.expect(o.offsetXPixels, unittest.equals(42));
    unittest.expect(o.offsetYPixels, unittest.equals(42));
    unittest.expect(o.widthPixels, unittest.equals(42));
  }
  buildCounterOverlayPosition--;
}

core.int buildCounterPadding = 0;
buildPadding() {
  var o = new api.Padding();
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

checkPadding(api.Padding o) {
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
buildPasteDataRequest() {
  var o = new api.PasteDataRequest();
  buildCounterPasteDataRequest++;
  if (buildCounterPasteDataRequest < 3) {
    o.coordinate = buildGridCoordinate();
    o.data = "foo";
    o.delimiter = "foo";
    o.html = true;
    o.type = "foo";
  }
  buildCounterPasteDataRequest--;
  return o;
}

checkPasteDataRequest(api.PasteDataRequest o) {
  buildCounterPasteDataRequest++;
  if (buildCounterPasteDataRequest < 3) {
    checkGridCoordinate(o.coordinate);
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.delimiter, unittest.equals('foo'));
    unittest.expect(o.html, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterPasteDataRequest--;
}

core.int buildCounterPieChartSpec = 0;
buildPieChartSpec() {
  var o = new api.PieChartSpec();
  buildCounterPieChartSpec++;
  if (buildCounterPieChartSpec < 3) {
    o.domain = buildChartData();
    o.legendPosition = "foo";
    o.pieHole = 42.0;
    o.series = buildChartData();
    o.threeDimensional = true;
  }
  buildCounterPieChartSpec--;
  return o;
}

checkPieChartSpec(api.PieChartSpec o) {
  buildCounterPieChartSpec++;
  if (buildCounterPieChartSpec < 3) {
    checkChartData(o.domain);
    unittest.expect(o.legendPosition, unittest.equals('foo'));
    unittest.expect(o.pieHole, unittest.equals(42.0));
    checkChartData(o.series);
    unittest.expect(o.threeDimensional, unittest.isTrue);
  }
  buildCounterPieChartSpec--;
}

buildUnnamed4026() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4026(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPivotFilterCriteria = 0;
buildPivotFilterCriteria() {
  var o = new api.PivotFilterCriteria();
  buildCounterPivotFilterCriteria++;
  if (buildCounterPivotFilterCriteria < 3) {
    o.visibleValues = buildUnnamed4026();
  }
  buildCounterPivotFilterCriteria--;
  return o;
}

checkPivotFilterCriteria(api.PivotFilterCriteria o) {
  buildCounterPivotFilterCriteria++;
  if (buildCounterPivotFilterCriteria < 3) {
    checkUnnamed4026(o.visibleValues);
  }
  buildCounterPivotFilterCriteria--;
}

buildUnnamed4027() {
  var o = new core.List<api.PivotGroupValueMetadata>();
  o.add(buildPivotGroupValueMetadata());
  o.add(buildPivotGroupValueMetadata());
  return o;
}

checkUnnamed4027(core.List<api.PivotGroupValueMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotGroupValueMetadata(o[0]);
  checkPivotGroupValueMetadata(o[1]);
}

core.int buildCounterPivotGroup = 0;
buildPivotGroup() {
  var o = new api.PivotGroup();
  buildCounterPivotGroup++;
  if (buildCounterPivotGroup < 3) {
    o.groupRule = buildPivotGroupRule();
    o.label = "foo";
    o.repeatHeadings = true;
    o.showTotals = true;
    o.sortOrder = "foo";
    o.sourceColumnOffset = 42;
    o.valueBucket = buildPivotGroupSortValueBucket();
    o.valueMetadata = buildUnnamed4027();
  }
  buildCounterPivotGroup--;
  return o;
}

checkPivotGroup(api.PivotGroup o) {
  buildCounterPivotGroup++;
  if (buildCounterPivotGroup < 3) {
    checkPivotGroupRule(o.groupRule);
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.repeatHeadings, unittest.isTrue);
    unittest.expect(o.showTotals, unittest.isTrue);
    unittest.expect(o.sortOrder, unittest.equals('foo'));
    unittest.expect(o.sourceColumnOffset, unittest.equals(42));
    checkPivotGroupSortValueBucket(o.valueBucket);
    checkUnnamed4027(o.valueMetadata);
  }
  buildCounterPivotGroup--;
}

core.int buildCounterPivotGroupRule = 0;
buildPivotGroupRule() {
  var o = new api.PivotGroupRule();
  buildCounterPivotGroupRule++;
  if (buildCounterPivotGroupRule < 3) {
    o.dateTimeRule = buildDateTimeRule();
    o.histogramRule = buildHistogramRule();
    o.manualRule = buildManualRule();
  }
  buildCounterPivotGroupRule--;
  return o;
}

checkPivotGroupRule(api.PivotGroupRule o) {
  buildCounterPivotGroupRule++;
  if (buildCounterPivotGroupRule < 3) {
    checkDateTimeRule(o.dateTimeRule);
    checkHistogramRule(o.histogramRule);
    checkManualRule(o.manualRule);
  }
  buildCounterPivotGroupRule--;
}

buildUnnamed4028() {
  var o = new core.List<api.ExtendedValue>();
  o.add(buildExtendedValue());
  o.add(buildExtendedValue());
  return o;
}

checkUnnamed4028(core.List<api.ExtendedValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtendedValue(o[0]);
  checkExtendedValue(o[1]);
}

core.int buildCounterPivotGroupSortValueBucket = 0;
buildPivotGroupSortValueBucket() {
  var o = new api.PivotGroupSortValueBucket();
  buildCounterPivotGroupSortValueBucket++;
  if (buildCounterPivotGroupSortValueBucket < 3) {
    o.buckets = buildUnnamed4028();
    o.valuesIndex = 42;
  }
  buildCounterPivotGroupSortValueBucket--;
  return o;
}

checkPivotGroupSortValueBucket(api.PivotGroupSortValueBucket o) {
  buildCounterPivotGroupSortValueBucket++;
  if (buildCounterPivotGroupSortValueBucket < 3) {
    checkUnnamed4028(o.buckets);
    unittest.expect(o.valuesIndex, unittest.equals(42));
  }
  buildCounterPivotGroupSortValueBucket--;
}

core.int buildCounterPivotGroupValueMetadata = 0;
buildPivotGroupValueMetadata() {
  var o = new api.PivotGroupValueMetadata();
  buildCounterPivotGroupValueMetadata++;
  if (buildCounterPivotGroupValueMetadata < 3) {
    o.collapsed = true;
    o.value = buildExtendedValue();
  }
  buildCounterPivotGroupValueMetadata--;
  return o;
}

checkPivotGroupValueMetadata(api.PivotGroupValueMetadata o) {
  buildCounterPivotGroupValueMetadata++;
  if (buildCounterPivotGroupValueMetadata < 3) {
    unittest.expect(o.collapsed, unittest.isTrue);
    checkExtendedValue(o.value);
  }
  buildCounterPivotGroupValueMetadata--;
}

buildUnnamed4029() {
  var o = new core.List<api.PivotGroup>();
  o.add(buildPivotGroup());
  o.add(buildPivotGroup());
  return o;
}

checkUnnamed4029(core.List<api.PivotGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotGroup(o[0]);
  checkPivotGroup(o[1]);
}

buildUnnamed4030() {
  var o = new core.Map<core.String, api.PivotFilterCriteria>();
  o["x"] = buildPivotFilterCriteria();
  o["y"] = buildPivotFilterCriteria();
  return o;
}

checkUnnamed4030(core.Map<core.String, api.PivotFilterCriteria> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotFilterCriteria(o["x"]);
  checkPivotFilterCriteria(o["y"]);
}

buildUnnamed4031() {
  var o = new core.List<api.PivotGroup>();
  o.add(buildPivotGroup());
  o.add(buildPivotGroup());
  return o;
}

checkUnnamed4031(core.List<api.PivotGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotGroup(o[0]);
  checkPivotGroup(o[1]);
}

buildUnnamed4032() {
  var o = new core.List<api.PivotValue>();
  o.add(buildPivotValue());
  o.add(buildPivotValue());
  return o;
}

checkUnnamed4032(core.List<api.PivotValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotValue(o[0]);
  checkPivotValue(o[1]);
}

core.int buildCounterPivotTable = 0;
buildPivotTable() {
  var o = new api.PivotTable();
  buildCounterPivotTable++;
  if (buildCounterPivotTable < 3) {
    o.columns = buildUnnamed4029();
    o.criteria = buildUnnamed4030();
    o.rows = buildUnnamed4031();
    o.source = buildGridRange();
    o.valueLayout = "foo";
    o.values = buildUnnamed4032();
  }
  buildCounterPivotTable--;
  return o;
}

checkPivotTable(api.PivotTable o) {
  buildCounterPivotTable++;
  if (buildCounterPivotTable < 3) {
    checkUnnamed4029(o.columns);
    checkUnnamed4030(o.criteria);
    checkUnnamed4031(o.rows);
    checkGridRange(o.source);
    unittest.expect(o.valueLayout, unittest.equals('foo'));
    checkUnnamed4032(o.values);
  }
  buildCounterPivotTable--;
}

core.int buildCounterPivotValue = 0;
buildPivotValue() {
  var o = new api.PivotValue();
  buildCounterPivotValue++;
  if (buildCounterPivotValue < 3) {
    o.calculatedDisplayType = "foo";
    o.formula = "foo";
    o.name = "foo";
    o.sourceColumnOffset = 42;
    o.summarizeFunction = "foo";
  }
  buildCounterPivotValue--;
  return o;
}

checkPivotValue(api.PivotValue o) {
  buildCounterPivotValue++;
  if (buildCounterPivotValue < 3) {
    unittest.expect(o.calculatedDisplayType, unittest.equals('foo'));
    unittest.expect(o.formula, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sourceColumnOffset, unittest.equals(42));
    unittest.expect(o.summarizeFunction, unittest.equals('foo'));
  }
  buildCounterPivotValue--;
}

buildUnnamed4033() {
  var o = new core.List<api.GridRange>();
  o.add(buildGridRange());
  o.add(buildGridRange());
  return o;
}

checkUnnamed4033(core.List<api.GridRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGridRange(o[0]);
  checkGridRange(o[1]);
}

core.int buildCounterProtectedRange = 0;
buildProtectedRange() {
  var o = new api.ProtectedRange();
  buildCounterProtectedRange++;
  if (buildCounterProtectedRange < 3) {
    o.description = "foo";
    o.editors = buildEditors();
    o.namedRangeId = "foo";
    o.protectedRangeId = 42;
    o.range = buildGridRange();
    o.requestingUserCanEdit = true;
    o.unprotectedRanges = buildUnnamed4033();
    o.warningOnly = true;
  }
  buildCounterProtectedRange--;
  return o;
}

checkProtectedRange(api.ProtectedRange o) {
  buildCounterProtectedRange++;
  if (buildCounterProtectedRange < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkEditors(o.editors);
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
    unittest.expect(o.protectedRangeId, unittest.equals(42));
    checkGridRange(o.range);
    unittest.expect(o.requestingUserCanEdit, unittest.isTrue);
    checkUnnamed4033(o.unprotectedRanges);
    unittest.expect(o.warningOnly, unittest.isTrue);
  }
  buildCounterProtectedRange--;
}

core.int buildCounterRandomizeRangeRequest = 0;
buildRandomizeRangeRequest() {
  var o = new api.RandomizeRangeRequest();
  buildCounterRandomizeRangeRequest++;
  if (buildCounterRandomizeRangeRequest < 3) {
    o.range = buildGridRange();
  }
  buildCounterRandomizeRangeRequest--;
  return o;
}

checkRandomizeRangeRequest(api.RandomizeRangeRequest o) {
  buildCounterRandomizeRangeRequest++;
  if (buildCounterRandomizeRangeRequest < 3) {
    checkGridRange(o.range);
  }
  buildCounterRandomizeRangeRequest--;
}

core.int buildCounterRepeatCellRequest = 0;
buildRepeatCellRequest() {
  var o = new api.RepeatCellRequest();
  buildCounterRepeatCellRequest++;
  if (buildCounterRepeatCellRequest < 3) {
    o.cell = buildCellData();
    o.fields = "foo";
    o.range = buildGridRange();
  }
  buildCounterRepeatCellRequest--;
  return o;
}

checkRepeatCellRequest(api.RepeatCellRequest o) {
  buildCounterRepeatCellRequest++;
  if (buildCounterRepeatCellRequest < 3) {
    checkCellData(o.cell);
    unittest.expect(o.fields, unittest.equals('foo'));
    checkGridRange(o.range);
  }
  buildCounterRepeatCellRequest--;
}

core.int buildCounterRequest = 0;
buildRequest() {
  var o = new api.Request();
  buildCounterRequest++;
  if (buildCounterRequest < 3) {
    o.addBanding = buildAddBandingRequest();
    o.addChart = buildAddChartRequest();
    o.addConditionalFormatRule = buildAddConditionalFormatRuleRequest();
    o.addDimensionGroup = buildAddDimensionGroupRequest();
    o.addFilterView = buildAddFilterViewRequest();
    o.addNamedRange = buildAddNamedRangeRequest();
    o.addProtectedRange = buildAddProtectedRangeRequest();
    o.addSheet = buildAddSheetRequest();
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
    o.deleteDeveloperMetadata = buildDeleteDeveloperMetadataRequest();
    o.deleteDimension = buildDeleteDimensionRequest();
    o.deleteDimensionGroup = buildDeleteDimensionGroupRequest();
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
    o.repeatCell = buildRepeatCellRequest();
    o.setBasicFilter = buildSetBasicFilterRequest();
    o.setDataValidation = buildSetDataValidationRequest();
    o.sortRange = buildSortRangeRequest();
    o.textToColumns = buildTextToColumnsRequest();
    o.unmergeCells = buildUnmergeCellsRequest();
    o.updateBanding = buildUpdateBandingRequest();
    o.updateBorders = buildUpdateBordersRequest();
    o.updateCells = buildUpdateCellsRequest();
    o.updateChartSpec = buildUpdateChartSpecRequest();
    o.updateConditionalFormatRule = buildUpdateConditionalFormatRuleRequest();
    o.updateDeveloperMetadata = buildUpdateDeveloperMetadataRequest();
    o.updateDimensionGroup = buildUpdateDimensionGroupRequest();
    o.updateDimensionProperties = buildUpdateDimensionPropertiesRequest();
    o.updateEmbeddedObjectPosition = buildUpdateEmbeddedObjectPositionRequest();
    o.updateFilterView = buildUpdateFilterViewRequest();
    o.updateNamedRange = buildUpdateNamedRangeRequest();
    o.updateProtectedRange = buildUpdateProtectedRangeRequest();
    o.updateSheetProperties = buildUpdateSheetPropertiesRequest();
    o.updateSpreadsheetProperties = buildUpdateSpreadsheetPropertiesRequest();
  }
  buildCounterRequest--;
  return o;
}

checkRequest(api.Request o) {
  buildCounterRequest++;
  if (buildCounterRequest < 3) {
    checkAddBandingRequest(o.addBanding);
    checkAddChartRequest(o.addChart);
    checkAddConditionalFormatRuleRequest(o.addConditionalFormatRule);
    checkAddDimensionGroupRequest(o.addDimensionGroup);
    checkAddFilterViewRequest(o.addFilterView);
    checkAddNamedRangeRequest(o.addNamedRange);
    checkAddProtectedRangeRequest(o.addProtectedRange);
    checkAddSheetRequest(o.addSheet);
    checkAppendCellsRequest(o.appendCells);
    checkAppendDimensionRequest(o.appendDimension);
    checkAutoFillRequest(o.autoFill);
    checkAutoResizeDimensionsRequest(o.autoResizeDimensions);
    checkClearBasicFilterRequest(o.clearBasicFilter);
    checkCopyPasteRequest(o.copyPaste);
    checkCreateDeveloperMetadataRequest(o.createDeveloperMetadata);
    checkCutPasteRequest(o.cutPaste);
    checkDeleteBandingRequest(o.deleteBanding);
    checkDeleteConditionalFormatRuleRequest(o.deleteConditionalFormatRule);
    checkDeleteDeveloperMetadataRequest(o.deleteDeveloperMetadata);
    checkDeleteDimensionRequest(o.deleteDimension);
    checkDeleteDimensionGroupRequest(o.deleteDimensionGroup);
    checkDeleteEmbeddedObjectRequest(o.deleteEmbeddedObject);
    checkDeleteFilterViewRequest(o.deleteFilterView);
    checkDeleteNamedRangeRequest(o.deleteNamedRange);
    checkDeleteProtectedRangeRequest(o.deleteProtectedRange);
    checkDeleteRangeRequest(o.deleteRange);
    checkDeleteSheetRequest(o.deleteSheet);
    checkDuplicateFilterViewRequest(o.duplicateFilterView);
    checkDuplicateSheetRequest(o.duplicateSheet);
    checkFindReplaceRequest(o.findReplace);
    checkInsertDimensionRequest(o.insertDimension);
    checkInsertRangeRequest(o.insertRange);
    checkMergeCellsRequest(o.mergeCells);
    checkMoveDimensionRequest(o.moveDimension);
    checkPasteDataRequest(o.pasteData);
    checkRandomizeRangeRequest(o.randomizeRange);
    checkRepeatCellRequest(o.repeatCell);
    checkSetBasicFilterRequest(o.setBasicFilter);
    checkSetDataValidationRequest(o.setDataValidation);
    checkSortRangeRequest(o.sortRange);
    checkTextToColumnsRequest(o.textToColumns);
    checkUnmergeCellsRequest(o.unmergeCells);
    checkUpdateBandingRequest(o.updateBanding);
    checkUpdateBordersRequest(o.updateBorders);
    checkUpdateCellsRequest(o.updateCells);
    checkUpdateChartSpecRequest(o.updateChartSpec);
    checkUpdateConditionalFormatRuleRequest(o.updateConditionalFormatRule);
    checkUpdateDeveloperMetadataRequest(o.updateDeveloperMetadata);
    checkUpdateDimensionGroupRequest(o.updateDimensionGroup);
    checkUpdateDimensionPropertiesRequest(o.updateDimensionProperties);
    checkUpdateEmbeddedObjectPositionRequest(o.updateEmbeddedObjectPosition);
    checkUpdateFilterViewRequest(o.updateFilterView);
    checkUpdateNamedRangeRequest(o.updateNamedRange);
    checkUpdateProtectedRangeRequest(o.updateProtectedRange);
    checkUpdateSheetPropertiesRequest(o.updateSheetProperties);
    checkUpdateSpreadsheetPropertiesRequest(o.updateSpreadsheetProperties);
  }
  buildCounterRequest--;
}

core.int buildCounterResponse = 0;
buildResponse() {
  var o = new api.Response();
  buildCounterResponse++;
  if (buildCounterResponse < 3) {
    o.addBanding = buildAddBandingResponse();
    o.addChart = buildAddChartResponse();
    o.addDimensionGroup = buildAddDimensionGroupResponse();
    o.addFilterView = buildAddFilterViewResponse();
    o.addNamedRange = buildAddNamedRangeResponse();
    o.addProtectedRange = buildAddProtectedRangeResponse();
    o.addSheet = buildAddSheetResponse();
    o.createDeveloperMetadata = buildCreateDeveloperMetadataResponse();
    o.deleteConditionalFormatRule = buildDeleteConditionalFormatRuleResponse();
    o.deleteDeveloperMetadata = buildDeleteDeveloperMetadataResponse();
    o.deleteDimensionGroup = buildDeleteDimensionGroupResponse();
    o.duplicateFilterView = buildDuplicateFilterViewResponse();
    o.duplicateSheet = buildDuplicateSheetResponse();
    o.findReplace = buildFindReplaceResponse();
    o.updateConditionalFormatRule = buildUpdateConditionalFormatRuleResponse();
    o.updateDeveloperMetadata = buildUpdateDeveloperMetadataResponse();
    o.updateEmbeddedObjectPosition =
        buildUpdateEmbeddedObjectPositionResponse();
  }
  buildCounterResponse--;
  return o;
}

checkResponse(api.Response o) {
  buildCounterResponse++;
  if (buildCounterResponse < 3) {
    checkAddBandingResponse(o.addBanding);
    checkAddChartResponse(o.addChart);
    checkAddDimensionGroupResponse(o.addDimensionGroup);
    checkAddFilterViewResponse(o.addFilterView);
    checkAddNamedRangeResponse(o.addNamedRange);
    checkAddProtectedRangeResponse(o.addProtectedRange);
    checkAddSheetResponse(o.addSheet);
    checkCreateDeveloperMetadataResponse(o.createDeveloperMetadata);
    checkDeleteConditionalFormatRuleResponse(o.deleteConditionalFormatRule);
    checkDeleteDeveloperMetadataResponse(o.deleteDeveloperMetadata);
    checkDeleteDimensionGroupResponse(o.deleteDimensionGroup);
    checkDuplicateFilterViewResponse(o.duplicateFilterView);
    checkDuplicateSheetResponse(o.duplicateSheet);
    checkFindReplaceResponse(o.findReplace);
    checkUpdateConditionalFormatRuleResponse(o.updateConditionalFormatRule);
    checkUpdateDeveloperMetadataResponse(o.updateDeveloperMetadata);
    checkUpdateEmbeddedObjectPositionResponse(o.updateEmbeddedObjectPosition);
  }
  buildCounterResponse--;
}

buildUnnamed4034() {
  var o = new core.List<api.CellData>();
  o.add(buildCellData());
  o.add(buildCellData());
  return o;
}

checkUnnamed4034(core.List<api.CellData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCellData(o[0]);
  checkCellData(o[1]);
}

core.int buildCounterRowData = 0;
buildRowData() {
  var o = new api.RowData();
  buildCounterRowData++;
  if (buildCounterRowData < 3) {
    o.values = buildUnnamed4034();
  }
  buildCounterRowData--;
  return o;
}

checkRowData(api.RowData o) {
  buildCounterRowData++;
  if (buildCounterRowData < 3) {
    checkUnnamed4034(o.values);
  }
  buildCounterRowData--;
}

buildUnnamed4035() {
  var o = new core.List<api.DataFilter>();
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

checkUnnamed4035(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0]);
  checkDataFilter(o[1]);
}

core.int buildCounterSearchDeveloperMetadataRequest = 0;
buildSearchDeveloperMetadataRequest() {
  var o = new api.SearchDeveloperMetadataRequest();
  buildCounterSearchDeveloperMetadataRequest++;
  if (buildCounterSearchDeveloperMetadataRequest < 3) {
    o.dataFilters = buildUnnamed4035();
  }
  buildCounterSearchDeveloperMetadataRequest--;
  return o;
}

checkSearchDeveloperMetadataRequest(api.SearchDeveloperMetadataRequest o) {
  buildCounterSearchDeveloperMetadataRequest++;
  if (buildCounterSearchDeveloperMetadataRequest < 3) {
    checkUnnamed4035(o.dataFilters);
  }
  buildCounterSearchDeveloperMetadataRequest--;
}

buildUnnamed4036() {
  var o = new core.List<api.MatchedDeveloperMetadata>();
  o.add(buildMatchedDeveloperMetadata());
  o.add(buildMatchedDeveloperMetadata());
  return o;
}

checkUnnamed4036(core.List<api.MatchedDeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchedDeveloperMetadata(o[0]);
  checkMatchedDeveloperMetadata(o[1]);
}

core.int buildCounterSearchDeveloperMetadataResponse = 0;
buildSearchDeveloperMetadataResponse() {
  var o = new api.SearchDeveloperMetadataResponse();
  buildCounterSearchDeveloperMetadataResponse++;
  if (buildCounterSearchDeveloperMetadataResponse < 3) {
    o.matchedDeveloperMetadata = buildUnnamed4036();
  }
  buildCounterSearchDeveloperMetadataResponse--;
  return o;
}

checkSearchDeveloperMetadataResponse(api.SearchDeveloperMetadataResponse o) {
  buildCounterSearchDeveloperMetadataResponse++;
  if (buildCounterSearchDeveloperMetadataResponse < 3) {
    checkUnnamed4036(o.matchedDeveloperMetadata);
  }
  buildCounterSearchDeveloperMetadataResponse--;
}

core.int buildCounterSetBasicFilterRequest = 0;
buildSetBasicFilterRequest() {
  var o = new api.SetBasicFilterRequest();
  buildCounterSetBasicFilterRequest++;
  if (buildCounterSetBasicFilterRequest < 3) {
    o.filter = buildBasicFilter();
  }
  buildCounterSetBasicFilterRequest--;
  return o;
}

checkSetBasicFilterRequest(api.SetBasicFilterRequest o) {
  buildCounterSetBasicFilterRequest++;
  if (buildCounterSetBasicFilterRequest < 3) {
    checkBasicFilter(o.filter);
  }
  buildCounterSetBasicFilterRequest--;
}

core.int buildCounterSetDataValidationRequest = 0;
buildSetDataValidationRequest() {
  var o = new api.SetDataValidationRequest();
  buildCounterSetDataValidationRequest++;
  if (buildCounterSetDataValidationRequest < 3) {
    o.range = buildGridRange();
    o.rule = buildDataValidationRule();
  }
  buildCounterSetDataValidationRequest--;
  return o;
}

checkSetDataValidationRequest(api.SetDataValidationRequest o) {
  buildCounterSetDataValidationRequest++;
  if (buildCounterSetDataValidationRequest < 3) {
    checkGridRange(o.range);
    checkDataValidationRule(o.rule);
  }
  buildCounterSetDataValidationRequest--;
}

buildUnnamed4037() {
  var o = new core.List<api.BandedRange>();
  o.add(buildBandedRange());
  o.add(buildBandedRange());
  return o;
}

checkUnnamed4037(core.List<api.BandedRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBandedRange(o[0]);
  checkBandedRange(o[1]);
}

buildUnnamed4038() {
  var o = new core.List<api.EmbeddedChart>();
  o.add(buildEmbeddedChart());
  o.add(buildEmbeddedChart());
  return o;
}

checkUnnamed4038(core.List<api.EmbeddedChart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmbeddedChart(o[0]);
  checkEmbeddedChart(o[1]);
}

buildUnnamed4039() {
  var o = new core.List<api.DimensionGroup>();
  o.add(buildDimensionGroup());
  o.add(buildDimensionGroup());
  return o;
}

checkUnnamed4039(core.List<api.DimensionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionGroup(o[0]);
  checkDimensionGroup(o[1]);
}

buildUnnamed4040() {
  var o = new core.List<api.ConditionalFormatRule>();
  o.add(buildConditionalFormatRule());
  o.add(buildConditionalFormatRule());
  return o;
}

checkUnnamed4040(core.List<api.ConditionalFormatRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConditionalFormatRule(o[0]);
  checkConditionalFormatRule(o[1]);
}

buildUnnamed4041() {
  var o = new core.List<api.GridData>();
  o.add(buildGridData());
  o.add(buildGridData());
  return o;
}

checkUnnamed4041(core.List<api.GridData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGridData(o[0]);
  checkGridData(o[1]);
}

buildUnnamed4042() {
  var o = new core.List<api.DeveloperMetadata>();
  o.add(buildDeveloperMetadata());
  o.add(buildDeveloperMetadata());
  return o;
}

checkUnnamed4042(core.List<api.DeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeveloperMetadata(o[0]);
  checkDeveloperMetadata(o[1]);
}

buildUnnamed4043() {
  var o = new core.List<api.FilterView>();
  o.add(buildFilterView());
  o.add(buildFilterView());
  return o;
}

checkUnnamed4043(core.List<api.FilterView> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterView(o[0]);
  checkFilterView(o[1]);
}

buildUnnamed4044() {
  var o = new core.List<api.GridRange>();
  o.add(buildGridRange());
  o.add(buildGridRange());
  return o;
}

checkUnnamed4044(core.List<api.GridRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGridRange(o[0]);
  checkGridRange(o[1]);
}

buildUnnamed4045() {
  var o = new core.List<api.ProtectedRange>();
  o.add(buildProtectedRange());
  o.add(buildProtectedRange());
  return o;
}

checkUnnamed4045(core.List<api.ProtectedRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProtectedRange(o[0]);
  checkProtectedRange(o[1]);
}

buildUnnamed4046() {
  var o = new core.List<api.DimensionGroup>();
  o.add(buildDimensionGroup());
  o.add(buildDimensionGroup());
  return o;
}

checkUnnamed4046(core.List<api.DimensionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionGroup(o[0]);
  checkDimensionGroup(o[1]);
}

core.int buildCounterSheet = 0;
buildSheet() {
  var o = new api.Sheet();
  buildCounterSheet++;
  if (buildCounterSheet < 3) {
    o.bandedRanges = buildUnnamed4037();
    o.basicFilter = buildBasicFilter();
    o.charts = buildUnnamed4038();
    o.columnGroups = buildUnnamed4039();
    o.conditionalFormats = buildUnnamed4040();
    o.data = buildUnnamed4041();
    o.developerMetadata = buildUnnamed4042();
    o.filterViews = buildUnnamed4043();
    o.merges = buildUnnamed4044();
    o.properties = buildSheetProperties();
    o.protectedRanges = buildUnnamed4045();
    o.rowGroups = buildUnnamed4046();
  }
  buildCounterSheet--;
  return o;
}

checkSheet(api.Sheet o) {
  buildCounterSheet++;
  if (buildCounterSheet < 3) {
    checkUnnamed4037(o.bandedRanges);
    checkBasicFilter(o.basicFilter);
    checkUnnamed4038(o.charts);
    checkUnnamed4039(o.columnGroups);
    checkUnnamed4040(o.conditionalFormats);
    checkUnnamed4041(o.data);
    checkUnnamed4042(o.developerMetadata);
    checkUnnamed4043(o.filterViews);
    checkUnnamed4044(o.merges);
    checkSheetProperties(o.properties);
    checkUnnamed4045(o.protectedRanges);
    checkUnnamed4046(o.rowGroups);
  }
  buildCounterSheet--;
}

core.int buildCounterSheetProperties = 0;
buildSheetProperties() {
  var o = new api.SheetProperties();
  buildCounterSheetProperties++;
  if (buildCounterSheetProperties < 3) {
    o.gridProperties = buildGridProperties();
    o.hidden = true;
    o.index = 42;
    o.rightToLeft = true;
    o.sheetId = 42;
    o.sheetType = "foo";
    o.tabColor = buildColor();
    o.title = "foo";
  }
  buildCounterSheetProperties--;
  return o;
}

checkSheetProperties(api.SheetProperties o) {
  buildCounterSheetProperties++;
  if (buildCounterSheetProperties < 3) {
    checkGridProperties(o.gridProperties);
    unittest.expect(o.hidden, unittest.isTrue);
    unittest.expect(o.index, unittest.equals(42));
    unittest.expect(o.rightToLeft, unittest.isTrue);
    unittest.expect(o.sheetId, unittest.equals(42));
    unittest.expect(o.sheetType, unittest.equals('foo'));
    checkColor(o.tabColor);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterSheetProperties--;
}

buildUnnamed4047() {
  var o = new core.List<api.SortSpec>();
  o.add(buildSortSpec());
  o.add(buildSortSpec());
  return o;
}

checkUnnamed4047(core.List<api.SortSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortSpec(o[0]);
  checkSortSpec(o[1]);
}

core.int buildCounterSortRangeRequest = 0;
buildSortRangeRequest() {
  var o = new api.SortRangeRequest();
  buildCounterSortRangeRequest++;
  if (buildCounterSortRangeRequest < 3) {
    o.range = buildGridRange();
    o.sortSpecs = buildUnnamed4047();
  }
  buildCounterSortRangeRequest--;
  return o;
}

checkSortRangeRequest(api.SortRangeRequest o) {
  buildCounterSortRangeRequest++;
  if (buildCounterSortRangeRequest < 3) {
    checkGridRange(o.range);
    checkUnnamed4047(o.sortSpecs);
  }
  buildCounterSortRangeRequest--;
}

core.int buildCounterSortSpec = 0;
buildSortSpec() {
  var o = new api.SortSpec();
  buildCounterSortSpec++;
  if (buildCounterSortSpec < 3) {
    o.dimensionIndex = 42;
    o.sortOrder = "foo";
  }
  buildCounterSortSpec--;
  return o;
}

checkSortSpec(api.SortSpec o) {
  buildCounterSortSpec++;
  if (buildCounterSortSpec < 3) {
    unittest.expect(o.dimensionIndex, unittest.equals(42));
    unittest.expect(o.sortOrder, unittest.equals('foo'));
  }
  buildCounterSortSpec--;
}

core.int buildCounterSourceAndDestination = 0;
buildSourceAndDestination() {
  var o = new api.SourceAndDestination();
  buildCounterSourceAndDestination++;
  if (buildCounterSourceAndDestination < 3) {
    o.dimension = "foo";
    o.fillLength = 42;
    o.source = buildGridRange();
  }
  buildCounterSourceAndDestination--;
  return o;
}

checkSourceAndDestination(api.SourceAndDestination o) {
  buildCounterSourceAndDestination++;
  if (buildCounterSourceAndDestination < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.fillLength, unittest.equals(42));
    checkGridRange(o.source);
  }
  buildCounterSourceAndDestination--;
}

buildUnnamed4048() {
  var o = new core.List<api.DeveloperMetadata>();
  o.add(buildDeveloperMetadata());
  o.add(buildDeveloperMetadata());
  return o;
}

checkUnnamed4048(core.List<api.DeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeveloperMetadata(o[0]);
  checkDeveloperMetadata(o[1]);
}

buildUnnamed4049() {
  var o = new core.List<api.NamedRange>();
  o.add(buildNamedRange());
  o.add(buildNamedRange());
  return o;
}

checkUnnamed4049(core.List<api.NamedRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedRange(o[0]);
  checkNamedRange(o[1]);
}

buildUnnamed4050() {
  var o = new core.List<api.Sheet>();
  o.add(buildSheet());
  o.add(buildSheet());
  return o;
}

checkUnnamed4050(core.List<api.Sheet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSheet(o[0]);
  checkSheet(o[1]);
}

core.int buildCounterSpreadsheet = 0;
buildSpreadsheet() {
  var o = new api.Spreadsheet();
  buildCounterSpreadsheet++;
  if (buildCounterSpreadsheet < 3) {
    o.developerMetadata = buildUnnamed4048();
    o.namedRanges = buildUnnamed4049();
    o.properties = buildSpreadsheetProperties();
    o.sheets = buildUnnamed4050();
    o.spreadsheetId = "foo";
    o.spreadsheetUrl = "foo";
  }
  buildCounterSpreadsheet--;
  return o;
}

checkSpreadsheet(api.Spreadsheet o) {
  buildCounterSpreadsheet++;
  if (buildCounterSpreadsheet < 3) {
    checkUnnamed4048(o.developerMetadata);
    checkUnnamed4049(o.namedRanges);
    checkSpreadsheetProperties(o.properties);
    checkUnnamed4050(o.sheets);
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    unittest.expect(o.spreadsheetUrl, unittest.equals('foo'));
  }
  buildCounterSpreadsheet--;
}

core.int buildCounterSpreadsheetProperties = 0;
buildSpreadsheetProperties() {
  var o = new api.SpreadsheetProperties();
  buildCounterSpreadsheetProperties++;
  if (buildCounterSpreadsheetProperties < 3) {
    o.autoRecalc = "foo";
    o.defaultFormat = buildCellFormat();
    o.iterativeCalculationSettings = buildIterativeCalculationSettings();
    o.locale = "foo";
    o.timeZone = "foo";
    o.title = "foo";
  }
  buildCounterSpreadsheetProperties--;
  return o;
}

checkSpreadsheetProperties(api.SpreadsheetProperties o) {
  buildCounterSpreadsheetProperties++;
  if (buildCounterSpreadsheetProperties < 3) {
    unittest.expect(o.autoRecalc, unittest.equals('foo'));
    checkCellFormat(o.defaultFormat);
    checkIterativeCalculationSettings(o.iterativeCalculationSettings);
    unittest.expect(o.locale, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterSpreadsheetProperties--;
}

core.int buildCounterTextFormat = 0;
buildTextFormat() {
  var o = new api.TextFormat();
  buildCounterTextFormat++;
  if (buildCounterTextFormat < 3) {
    o.bold = true;
    o.fontFamily = "foo";
    o.fontSize = 42;
    o.foregroundColor = buildColor();
    o.italic = true;
    o.strikethrough = true;
    o.underline = true;
  }
  buildCounterTextFormat--;
  return o;
}

checkTextFormat(api.TextFormat o) {
  buildCounterTextFormat++;
  if (buildCounterTextFormat < 3) {
    unittest.expect(o.bold, unittest.isTrue);
    unittest.expect(o.fontFamily, unittest.equals('foo'));
    unittest.expect(o.fontSize, unittest.equals(42));
    checkColor(o.foregroundColor);
    unittest.expect(o.italic, unittest.isTrue);
    unittest.expect(o.strikethrough, unittest.isTrue);
    unittest.expect(o.underline, unittest.isTrue);
  }
  buildCounterTextFormat--;
}

core.int buildCounterTextFormatRun = 0;
buildTextFormatRun() {
  var o = new api.TextFormatRun();
  buildCounterTextFormatRun++;
  if (buildCounterTextFormatRun < 3) {
    o.format = buildTextFormat();
    o.startIndex = 42;
  }
  buildCounterTextFormatRun--;
  return o;
}

checkTextFormatRun(api.TextFormatRun o) {
  buildCounterTextFormatRun++;
  if (buildCounterTextFormatRun < 3) {
    checkTextFormat(o.format);
    unittest.expect(o.startIndex, unittest.equals(42));
  }
  buildCounterTextFormatRun--;
}

core.int buildCounterTextPosition = 0;
buildTextPosition() {
  var o = new api.TextPosition();
  buildCounterTextPosition++;
  if (buildCounterTextPosition < 3) {
    o.horizontalAlignment = "foo";
  }
  buildCounterTextPosition--;
  return o;
}

checkTextPosition(api.TextPosition o) {
  buildCounterTextPosition++;
  if (buildCounterTextPosition < 3) {
    unittest.expect(o.horizontalAlignment, unittest.equals('foo'));
  }
  buildCounterTextPosition--;
}

core.int buildCounterTextRotation = 0;
buildTextRotation() {
  var o = new api.TextRotation();
  buildCounterTextRotation++;
  if (buildCounterTextRotation < 3) {
    o.angle = 42;
    o.vertical = true;
  }
  buildCounterTextRotation--;
  return o;
}

checkTextRotation(api.TextRotation o) {
  buildCounterTextRotation++;
  if (buildCounterTextRotation < 3) {
    unittest.expect(o.angle, unittest.equals(42));
    unittest.expect(o.vertical, unittest.isTrue);
  }
  buildCounterTextRotation--;
}

core.int buildCounterTextToColumnsRequest = 0;
buildTextToColumnsRequest() {
  var o = new api.TextToColumnsRequest();
  buildCounterTextToColumnsRequest++;
  if (buildCounterTextToColumnsRequest < 3) {
    o.delimiter = "foo";
    o.delimiterType = "foo";
    o.source = buildGridRange();
  }
  buildCounterTextToColumnsRequest--;
  return o;
}

checkTextToColumnsRequest(api.TextToColumnsRequest o) {
  buildCounterTextToColumnsRequest++;
  if (buildCounterTextToColumnsRequest < 3) {
    unittest.expect(o.delimiter, unittest.equals('foo'));
    unittest.expect(o.delimiterType, unittest.equals('foo'));
    checkGridRange(o.source);
  }
  buildCounterTextToColumnsRequest--;
}

core.int buildCounterTreemapChartColorScale = 0;
buildTreemapChartColorScale() {
  var o = new api.TreemapChartColorScale();
  buildCounterTreemapChartColorScale++;
  if (buildCounterTreemapChartColorScale < 3) {
    o.maxValueColor = buildColor();
    o.midValueColor = buildColor();
    o.minValueColor = buildColor();
    o.noDataColor = buildColor();
  }
  buildCounterTreemapChartColorScale--;
  return o;
}

checkTreemapChartColorScale(api.TreemapChartColorScale o) {
  buildCounterTreemapChartColorScale++;
  if (buildCounterTreemapChartColorScale < 3) {
    checkColor(o.maxValueColor);
    checkColor(o.midValueColor);
    checkColor(o.minValueColor);
    checkColor(o.noDataColor);
  }
  buildCounterTreemapChartColorScale--;
}

core.int buildCounterTreemapChartSpec = 0;
buildTreemapChartSpec() {
  var o = new api.TreemapChartSpec();
  buildCounterTreemapChartSpec++;
  if (buildCounterTreemapChartSpec < 3) {
    o.colorData = buildChartData();
    o.colorScale = buildTreemapChartColorScale();
    o.headerColor = buildColor();
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

checkTreemapChartSpec(api.TreemapChartSpec o) {
  buildCounterTreemapChartSpec++;
  if (buildCounterTreemapChartSpec < 3) {
    checkChartData(o.colorData);
    checkTreemapChartColorScale(o.colorScale);
    checkColor(o.headerColor);
    unittest.expect(o.hideTooltips, unittest.isTrue);
    unittest.expect(o.hintedLevels, unittest.equals(42));
    checkChartData(o.labels);
    unittest.expect(o.levels, unittest.equals(42));
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
    checkChartData(o.parentLabels);
    checkChartData(o.sizeData);
    checkTextFormat(o.textFormat);
  }
  buildCounterTreemapChartSpec--;
}

core.int buildCounterUnmergeCellsRequest = 0;
buildUnmergeCellsRequest() {
  var o = new api.UnmergeCellsRequest();
  buildCounterUnmergeCellsRequest++;
  if (buildCounterUnmergeCellsRequest < 3) {
    o.range = buildGridRange();
  }
  buildCounterUnmergeCellsRequest--;
  return o;
}

checkUnmergeCellsRequest(api.UnmergeCellsRequest o) {
  buildCounterUnmergeCellsRequest++;
  if (buildCounterUnmergeCellsRequest < 3) {
    checkGridRange(o.range);
  }
  buildCounterUnmergeCellsRequest--;
}

core.int buildCounterUpdateBandingRequest = 0;
buildUpdateBandingRequest() {
  var o = new api.UpdateBandingRequest();
  buildCounterUpdateBandingRequest++;
  if (buildCounterUpdateBandingRequest < 3) {
    o.bandedRange = buildBandedRange();
    o.fields = "foo";
  }
  buildCounterUpdateBandingRequest--;
  return o;
}

checkUpdateBandingRequest(api.UpdateBandingRequest o) {
  buildCounterUpdateBandingRequest++;
  if (buildCounterUpdateBandingRequest < 3) {
    checkBandedRange(o.bandedRange);
    unittest.expect(o.fields, unittest.equals('foo'));
  }
  buildCounterUpdateBandingRequest--;
}

core.int buildCounterUpdateBordersRequest = 0;
buildUpdateBordersRequest() {
  var o = new api.UpdateBordersRequest();
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

checkUpdateBordersRequest(api.UpdateBordersRequest o) {
  buildCounterUpdateBordersRequest++;
  if (buildCounterUpdateBordersRequest < 3) {
    checkBorder(o.bottom);
    checkBorder(o.innerHorizontal);
    checkBorder(o.innerVertical);
    checkBorder(o.left);
    checkGridRange(o.range);
    checkBorder(o.right);
    checkBorder(o.top);
  }
  buildCounterUpdateBordersRequest--;
}

buildUnnamed4051() {
  var o = new core.List<api.RowData>();
  o.add(buildRowData());
  o.add(buildRowData());
  return o;
}

checkUnnamed4051(core.List<api.RowData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRowData(o[0]);
  checkRowData(o[1]);
}

core.int buildCounterUpdateCellsRequest = 0;
buildUpdateCellsRequest() {
  var o = new api.UpdateCellsRequest();
  buildCounterUpdateCellsRequest++;
  if (buildCounterUpdateCellsRequest < 3) {
    o.fields = "foo";
    o.range = buildGridRange();
    o.rows = buildUnnamed4051();
    o.start = buildGridCoordinate();
  }
  buildCounterUpdateCellsRequest--;
  return o;
}

checkUpdateCellsRequest(api.UpdateCellsRequest o) {
  buildCounterUpdateCellsRequest++;
  if (buildCounterUpdateCellsRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkGridRange(o.range);
    checkUnnamed4051(o.rows);
    checkGridCoordinate(o.start);
  }
  buildCounterUpdateCellsRequest--;
}

core.int buildCounterUpdateChartSpecRequest = 0;
buildUpdateChartSpecRequest() {
  var o = new api.UpdateChartSpecRequest();
  buildCounterUpdateChartSpecRequest++;
  if (buildCounterUpdateChartSpecRequest < 3) {
    o.chartId = 42;
    o.spec = buildChartSpec();
  }
  buildCounterUpdateChartSpecRequest--;
  return o;
}

checkUpdateChartSpecRequest(api.UpdateChartSpecRequest o) {
  buildCounterUpdateChartSpecRequest++;
  if (buildCounterUpdateChartSpecRequest < 3) {
    unittest.expect(o.chartId, unittest.equals(42));
    checkChartSpec(o.spec);
  }
  buildCounterUpdateChartSpecRequest--;
}

core.int buildCounterUpdateConditionalFormatRuleRequest = 0;
buildUpdateConditionalFormatRuleRequest() {
  var o = new api.UpdateConditionalFormatRuleRequest();
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

checkUpdateConditionalFormatRuleRequest(
    api.UpdateConditionalFormatRuleRequest o) {
  buildCounterUpdateConditionalFormatRuleRequest++;
  if (buildCounterUpdateConditionalFormatRuleRequest < 3) {
    unittest.expect(o.index, unittest.equals(42));
    unittest.expect(o.newIndex, unittest.equals(42));
    checkConditionalFormatRule(o.rule);
    unittest.expect(o.sheetId, unittest.equals(42));
  }
  buildCounterUpdateConditionalFormatRuleRequest--;
}

core.int buildCounterUpdateConditionalFormatRuleResponse = 0;
buildUpdateConditionalFormatRuleResponse() {
  var o = new api.UpdateConditionalFormatRuleResponse();
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

checkUpdateConditionalFormatRuleResponse(
    api.UpdateConditionalFormatRuleResponse o) {
  buildCounterUpdateConditionalFormatRuleResponse++;
  if (buildCounterUpdateConditionalFormatRuleResponse < 3) {
    unittest.expect(o.newIndex, unittest.equals(42));
    checkConditionalFormatRule(o.newRule);
    unittest.expect(o.oldIndex, unittest.equals(42));
    checkConditionalFormatRule(o.oldRule);
  }
  buildCounterUpdateConditionalFormatRuleResponse--;
}

buildUnnamed4052() {
  var o = new core.List<api.DataFilter>();
  o.add(buildDataFilter());
  o.add(buildDataFilter());
  return o;
}

checkUnnamed4052(core.List<api.DataFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFilter(o[0]);
  checkDataFilter(o[1]);
}

core.int buildCounterUpdateDeveloperMetadataRequest = 0;
buildUpdateDeveloperMetadataRequest() {
  var o = new api.UpdateDeveloperMetadataRequest();
  buildCounterUpdateDeveloperMetadataRequest++;
  if (buildCounterUpdateDeveloperMetadataRequest < 3) {
    o.dataFilters = buildUnnamed4052();
    o.developerMetadata = buildDeveloperMetadata();
    o.fields = "foo";
  }
  buildCounterUpdateDeveloperMetadataRequest--;
  return o;
}

checkUpdateDeveloperMetadataRequest(api.UpdateDeveloperMetadataRequest o) {
  buildCounterUpdateDeveloperMetadataRequest++;
  if (buildCounterUpdateDeveloperMetadataRequest < 3) {
    checkUnnamed4052(o.dataFilters);
    checkDeveloperMetadata(o.developerMetadata);
    unittest.expect(o.fields, unittest.equals('foo'));
  }
  buildCounterUpdateDeveloperMetadataRequest--;
}

buildUnnamed4053() {
  var o = new core.List<api.DeveloperMetadata>();
  o.add(buildDeveloperMetadata());
  o.add(buildDeveloperMetadata());
  return o;
}

checkUnnamed4053(core.List<api.DeveloperMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeveloperMetadata(o[0]);
  checkDeveloperMetadata(o[1]);
}

core.int buildCounterUpdateDeveloperMetadataResponse = 0;
buildUpdateDeveloperMetadataResponse() {
  var o = new api.UpdateDeveloperMetadataResponse();
  buildCounterUpdateDeveloperMetadataResponse++;
  if (buildCounterUpdateDeveloperMetadataResponse < 3) {
    o.developerMetadata = buildUnnamed4053();
  }
  buildCounterUpdateDeveloperMetadataResponse--;
  return o;
}

checkUpdateDeveloperMetadataResponse(api.UpdateDeveloperMetadataResponse o) {
  buildCounterUpdateDeveloperMetadataResponse++;
  if (buildCounterUpdateDeveloperMetadataResponse < 3) {
    checkUnnamed4053(o.developerMetadata);
  }
  buildCounterUpdateDeveloperMetadataResponse--;
}

core.int buildCounterUpdateDimensionGroupRequest = 0;
buildUpdateDimensionGroupRequest() {
  var o = new api.UpdateDimensionGroupRequest();
  buildCounterUpdateDimensionGroupRequest++;
  if (buildCounterUpdateDimensionGroupRequest < 3) {
    o.dimensionGroup = buildDimensionGroup();
    o.fields = "foo";
  }
  buildCounterUpdateDimensionGroupRequest--;
  return o;
}

checkUpdateDimensionGroupRequest(api.UpdateDimensionGroupRequest o) {
  buildCounterUpdateDimensionGroupRequest++;
  if (buildCounterUpdateDimensionGroupRequest < 3) {
    checkDimensionGroup(o.dimensionGroup);
    unittest.expect(o.fields, unittest.equals('foo'));
  }
  buildCounterUpdateDimensionGroupRequest--;
}

core.int buildCounterUpdateDimensionPropertiesRequest = 0;
buildUpdateDimensionPropertiesRequest() {
  var o = new api.UpdateDimensionPropertiesRequest();
  buildCounterUpdateDimensionPropertiesRequest++;
  if (buildCounterUpdateDimensionPropertiesRequest < 3) {
    o.fields = "foo";
    o.properties = buildDimensionProperties();
    o.range = buildDimensionRange();
  }
  buildCounterUpdateDimensionPropertiesRequest--;
  return o;
}

checkUpdateDimensionPropertiesRequest(api.UpdateDimensionPropertiesRequest o) {
  buildCounterUpdateDimensionPropertiesRequest++;
  if (buildCounterUpdateDimensionPropertiesRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkDimensionProperties(o.properties);
    checkDimensionRange(o.range);
  }
  buildCounterUpdateDimensionPropertiesRequest--;
}

core.int buildCounterUpdateEmbeddedObjectPositionRequest = 0;
buildUpdateEmbeddedObjectPositionRequest() {
  var o = new api.UpdateEmbeddedObjectPositionRequest();
  buildCounterUpdateEmbeddedObjectPositionRequest++;
  if (buildCounterUpdateEmbeddedObjectPositionRequest < 3) {
    o.fields = "foo";
    o.newPosition = buildEmbeddedObjectPosition();
    o.objectId = 42;
  }
  buildCounterUpdateEmbeddedObjectPositionRequest--;
  return o;
}

checkUpdateEmbeddedObjectPositionRequest(
    api.UpdateEmbeddedObjectPositionRequest o) {
  buildCounterUpdateEmbeddedObjectPositionRequest++;
  if (buildCounterUpdateEmbeddedObjectPositionRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkEmbeddedObjectPosition(o.newPosition);
    unittest.expect(o.objectId, unittest.equals(42));
  }
  buildCounterUpdateEmbeddedObjectPositionRequest--;
}

core.int buildCounterUpdateEmbeddedObjectPositionResponse = 0;
buildUpdateEmbeddedObjectPositionResponse() {
  var o = new api.UpdateEmbeddedObjectPositionResponse();
  buildCounterUpdateEmbeddedObjectPositionResponse++;
  if (buildCounterUpdateEmbeddedObjectPositionResponse < 3) {
    o.position = buildEmbeddedObjectPosition();
  }
  buildCounterUpdateEmbeddedObjectPositionResponse--;
  return o;
}

checkUpdateEmbeddedObjectPositionResponse(
    api.UpdateEmbeddedObjectPositionResponse o) {
  buildCounterUpdateEmbeddedObjectPositionResponse++;
  if (buildCounterUpdateEmbeddedObjectPositionResponse < 3) {
    checkEmbeddedObjectPosition(o.position);
  }
  buildCounterUpdateEmbeddedObjectPositionResponse--;
}

core.int buildCounterUpdateFilterViewRequest = 0;
buildUpdateFilterViewRequest() {
  var o = new api.UpdateFilterViewRequest();
  buildCounterUpdateFilterViewRequest++;
  if (buildCounterUpdateFilterViewRequest < 3) {
    o.fields = "foo";
    o.filter = buildFilterView();
  }
  buildCounterUpdateFilterViewRequest--;
  return o;
}

checkUpdateFilterViewRequest(api.UpdateFilterViewRequest o) {
  buildCounterUpdateFilterViewRequest++;
  if (buildCounterUpdateFilterViewRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkFilterView(o.filter);
  }
  buildCounterUpdateFilterViewRequest--;
}

core.int buildCounterUpdateNamedRangeRequest = 0;
buildUpdateNamedRangeRequest() {
  var o = new api.UpdateNamedRangeRequest();
  buildCounterUpdateNamedRangeRequest++;
  if (buildCounterUpdateNamedRangeRequest < 3) {
    o.fields = "foo";
    o.namedRange = buildNamedRange();
  }
  buildCounterUpdateNamedRangeRequest--;
  return o;
}

checkUpdateNamedRangeRequest(api.UpdateNamedRangeRequest o) {
  buildCounterUpdateNamedRangeRequest++;
  if (buildCounterUpdateNamedRangeRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkNamedRange(o.namedRange);
  }
  buildCounterUpdateNamedRangeRequest--;
}

core.int buildCounterUpdateProtectedRangeRequest = 0;
buildUpdateProtectedRangeRequest() {
  var o = new api.UpdateProtectedRangeRequest();
  buildCounterUpdateProtectedRangeRequest++;
  if (buildCounterUpdateProtectedRangeRequest < 3) {
    o.fields = "foo";
    o.protectedRange = buildProtectedRange();
  }
  buildCounterUpdateProtectedRangeRequest--;
  return o;
}

checkUpdateProtectedRangeRequest(api.UpdateProtectedRangeRequest o) {
  buildCounterUpdateProtectedRangeRequest++;
  if (buildCounterUpdateProtectedRangeRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkProtectedRange(o.protectedRange);
  }
  buildCounterUpdateProtectedRangeRequest--;
}

core.int buildCounterUpdateSheetPropertiesRequest = 0;
buildUpdateSheetPropertiesRequest() {
  var o = new api.UpdateSheetPropertiesRequest();
  buildCounterUpdateSheetPropertiesRequest++;
  if (buildCounterUpdateSheetPropertiesRequest < 3) {
    o.fields = "foo";
    o.properties = buildSheetProperties();
  }
  buildCounterUpdateSheetPropertiesRequest--;
  return o;
}

checkUpdateSheetPropertiesRequest(api.UpdateSheetPropertiesRequest o) {
  buildCounterUpdateSheetPropertiesRequest++;
  if (buildCounterUpdateSheetPropertiesRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkSheetProperties(o.properties);
  }
  buildCounterUpdateSheetPropertiesRequest--;
}

core.int buildCounterUpdateSpreadsheetPropertiesRequest = 0;
buildUpdateSpreadsheetPropertiesRequest() {
  var o = new api.UpdateSpreadsheetPropertiesRequest();
  buildCounterUpdateSpreadsheetPropertiesRequest++;
  if (buildCounterUpdateSpreadsheetPropertiesRequest < 3) {
    o.fields = "foo";
    o.properties = buildSpreadsheetProperties();
  }
  buildCounterUpdateSpreadsheetPropertiesRequest--;
  return o;
}

checkUpdateSpreadsheetPropertiesRequest(
    api.UpdateSpreadsheetPropertiesRequest o) {
  buildCounterUpdateSpreadsheetPropertiesRequest++;
  if (buildCounterUpdateSpreadsheetPropertiesRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkSpreadsheetProperties(o.properties);
  }
  buildCounterUpdateSpreadsheetPropertiesRequest--;
}

core.int buildCounterUpdateValuesByDataFilterResponse = 0;
buildUpdateValuesByDataFilterResponse() {
  var o = new api.UpdateValuesByDataFilterResponse();
  buildCounterUpdateValuesByDataFilterResponse++;
  if (buildCounterUpdateValuesByDataFilterResponse < 3) {
    o.dataFilter = buildDataFilter();
    o.updatedCells = 42;
    o.updatedColumns = 42;
    o.updatedData = buildValueRange();
    o.updatedRange = "foo";
    o.updatedRows = 42;
  }
  buildCounterUpdateValuesByDataFilterResponse--;
  return o;
}

checkUpdateValuesByDataFilterResponse(api.UpdateValuesByDataFilterResponse o) {
  buildCounterUpdateValuesByDataFilterResponse++;
  if (buildCounterUpdateValuesByDataFilterResponse < 3) {
    checkDataFilter(o.dataFilter);
    unittest.expect(o.updatedCells, unittest.equals(42));
    unittest.expect(o.updatedColumns, unittest.equals(42));
    checkValueRange(o.updatedData);
    unittest.expect(o.updatedRange, unittest.equals('foo'));
    unittest.expect(o.updatedRows, unittest.equals(42));
  }
  buildCounterUpdateValuesByDataFilterResponse--;
}

core.int buildCounterUpdateValuesResponse = 0;
buildUpdateValuesResponse() {
  var o = new api.UpdateValuesResponse();
  buildCounterUpdateValuesResponse++;
  if (buildCounterUpdateValuesResponse < 3) {
    o.spreadsheetId = "foo";
    o.updatedCells = 42;
    o.updatedColumns = 42;
    o.updatedData = buildValueRange();
    o.updatedRange = "foo";
    o.updatedRows = 42;
  }
  buildCounterUpdateValuesResponse--;
  return o;
}

checkUpdateValuesResponse(api.UpdateValuesResponse o) {
  buildCounterUpdateValuesResponse++;
  if (buildCounterUpdateValuesResponse < 3) {
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
    unittest.expect(o.updatedCells, unittest.equals(42));
    unittest.expect(o.updatedColumns, unittest.equals(42));
    checkValueRange(o.updatedData);
    unittest.expect(o.updatedRange, unittest.equals('foo'));
    unittest.expect(o.updatedRows, unittest.equals(42));
  }
  buildCounterUpdateValuesResponse--;
}

buildUnnamed4054() {
  var o = new core.List<core.Object>();
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

checkUnnamed4054(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o[0]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o[1]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

buildUnnamed4055() {
  var o = new core.List<core.List<core.Object>>();
  o.add(buildUnnamed4054());
  o.add(buildUnnamed4054());
  return o;
}

checkUnnamed4055(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4054(o[0]);
  checkUnnamed4054(o[1]);
}

core.int buildCounterValueRange = 0;
buildValueRange() {
  var o = new api.ValueRange();
  buildCounterValueRange++;
  if (buildCounterValueRange < 3) {
    o.majorDimension = "foo";
    o.range = "foo";
    o.values = buildUnnamed4055();
  }
  buildCounterValueRange--;
  return o;
}

checkValueRange(api.ValueRange o) {
  buildCounterValueRange++;
  if (buildCounterValueRange < 3) {
    unittest.expect(o.majorDimension, unittest.equals('foo'));
    unittest.expect(o.range, unittest.equals('foo'));
    checkUnnamed4055(o.values);
  }
  buildCounterValueRange--;
}

core.int buildCounterWaterfallChartColumnStyle = 0;
buildWaterfallChartColumnStyle() {
  var o = new api.WaterfallChartColumnStyle();
  buildCounterWaterfallChartColumnStyle++;
  if (buildCounterWaterfallChartColumnStyle < 3) {
    o.color = buildColor();
    o.label = "foo";
  }
  buildCounterWaterfallChartColumnStyle--;
  return o;
}

checkWaterfallChartColumnStyle(api.WaterfallChartColumnStyle o) {
  buildCounterWaterfallChartColumnStyle++;
  if (buildCounterWaterfallChartColumnStyle < 3) {
    checkColor(o.color);
    unittest.expect(o.label, unittest.equals('foo'));
  }
  buildCounterWaterfallChartColumnStyle--;
}

core.int buildCounterWaterfallChartCustomSubtotal = 0;
buildWaterfallChartCustomSubtotal() {
  var o = new api.WaterfallChartCustomSubtotal();
  buildCounterWaterfallChartCustomSubtotal++;
  if (buildCounterWaterfallChartCustomSubtotal < 3) {
    o.dataIsSubtotal = true;
    o.label = "foo";
    o.subtotalIndex = 42;
  }
  buildCounterWaterfallChartCustomSubtotal--;
  return o;
}

checkWaterfallChartCustomSubtotal(api.WaterfallChartCustomSubtotal o) {
  buildCounterWaterfallChartCustomSubtotal++;
  if (buildCounterWaterfallChartCustomSubtotal < 3) {
    unittest.expect(o.dataIsSubtotal, unittest.isTrue);
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.subtotalIndex, unittest.equals(42));
  }
  buildCounterWaterfallChartCustomSubtotal--;
}

core.int buildCounterWaterfallChartDomain = 0;
buildWaterfallChartDomain() {
  var o = new api.WaterfallChartDomain();
  buildCounterWaterfallChartDomain++;
  if (buildCounterWaterfallChartDomain < 3) {
    o.data = buildChartData();
    o.reversed = true;
  }
  buildCounterWaterfallChartDomain--;
  return o;
}

checkWaterfallChartDomain(api.WaterfallChartDomain o) {
  buildCounterWaterfallChartDomain++;
  if (buildCounterWaterfallChartDomain < 3) {
    checkChartData(o.data);
    unittest.expect(o.reversed, unittest.isTrue);
  }
  buildCounterWaterfallChartDomain--;
}

buildUnnamed4056() {
  var o = new core.List<api.WaterfallChartCustomSubtotal>();
  o.add(buildWaterfallChartCustomSubtotal());
  o.add(buildWaterfallChartCustomSubtotal());
  return o;
}

checkUnnamed4056(core.List<api.WaterfallChartCustomSubtotal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWaterfallChartCustomSubtotal(o[0]);
  checkWaterfallChartCustomSubtotal(o[1]);
}

core.int buildCounterWaterfallChartSeries = 0;
buildWaterfallChartSeries() {
  var o = new api.WaterfallChartSeries();
  buildCounterWaterfallChartSeries++;
  if (buildCounterWaterfallChartSeries < 3) {
    o.customSubtotals = buildUnnamed4056();
    o.data = buildChartData();
    o.hideTrailingSubtotal = true;
    o.negativeColumnsStyle = buildWaterfallChartColumnStyle();
    o.positiveColumnsStyle = buildWaterfallChartColumnStyle();
    o.subtotalColumnsStyle = buildWaterfallChartColumnStyle();
  }
  buildCounterWaterfallChartSeries--;
  return o;
}

checkWaterfallChartSeries(api.WaterfallChartSeries o) {
  buildCounterWaterfallChartSeries++;
  if (buildCounterWaterfallChartSeries < 3) {
    checkUnnamed4056(o.customSubtotals);
    checkChartData(o.data);
    unittest.expect(o.hideTrailingSubtotal, unittest.isTrue);
    checkWaterfallChartColumnStyle(o.negativeColumnsStyle);
    checkWaterfallChartColumnStyle(o.positiveColumnsStyle);
    checkWaterfallChartColumnStyle(o.subtotalColumnsStyle);
  }
  buildCounterWaterfallChartSeries--;
}

buildUnnamed4057() {
  var o = new core.List<api.WaterfallChartSeries>();
  o.add(buildWaterfallChartSeries());
  o.add(buildWaterfallChartSeries());
  return o;
}

checkUnnamed4057(core.List<api.WaterfallChartSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWaterfallChartSeries(o[0]);
  checkWaterfallChartSeries(o[1]);
}

core.int buildCounterWaterfallChartSpec = 0;
buildWaterfallChartSpec() {
  var o = new api.WaterfallChartSpec();
  buildCounterWaterfallChartSpec++;
  if (buildCounterWaterfallChartSpec < 3) {
    o.connectorLineStyle = buildLineStyle();
    o.domain = buildWaterfallChartDomain();
    o.firstValueIsTotal = true;
    o.hideConnectorLines = true;
    o.series = buildUnnamed4057();
    o.stackedType = "foo";
  }
  buildCounterWaterfallChartSpec--;
  return o;
}

checkWaterfallChartSpec(api.WaterfallChartSpec o) {
  buildCounterWaterfallChartSpec++;
  if (buildCounterWaterfallChartSpec < 3) {
    checkLineStyle(o.connectorLineStyle);
    checkWaterfallChartDomain(o.domain);
    unittest.expect(o.firstValueIsTotal, unittest.isTrue);
    unittest.expect(o.hideConnectorLines, unittest.isTrue);
    checkUnnamed4057(o.series);
    unittest.expect(o.stackedType, unittest.equals('foo'));
  }
  buildCounterWaterfallChartSpec--;
}

buildUnnamed4058() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4058(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4059() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4059(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-AddBandingRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddBandingRequest();
      var od = new api.AddBandingRequest.fromJson(o.toJson());
      checkAddBandingRequest(od);
    });
  });

  unittest.group("obj-schema-AddBandingResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddBandingResponse();
      var od = new api.AddBandingResponse.fromJson(o.toJson());
      checkAddBandingResponse(od);
    });
  });

  unittest.group("obj-schema-AddChartRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddChartRequest();
      var od = new api.AddChartRequest.fromJson(o.toJson());
      checkAddChartRequest(od);
    });
  });

  unittest.group("obj-schema-AddChartResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddChartResponse();
      var od = new api.AddChartResponse.fromJson(o.toJson());
      checkAddChartResponse(od);
    });
  });

  unittest.group("obj-schema-AddConditionalFormatRuleRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddConditionalFormatRuleRequest();
      var od = new api.AddConditionalFormatRuleRequest.fromJson(o.toJson());
      checkAddConditionalFormatRuleRequest(od);
    });
  });

  unittest.group("obj-schema-AddDimensionGroupRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddDimensionGroupRequest();
      var od = new api.AddDimensionGroupRequest.fromJson(o.toJson());
      checkAddDimensionGroupRequest(od);
    });
  });

  unittest.group("obj-schema-AddDimensionGroupResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddDimensionGroupResponse();
      var od = new api.AddDimensionGroupResponse.fromJson(o.toJson());
      checkAddDimensionGroupResponse(od);
    });
  });

  unittest.group("obj-schema-AddFilterViewRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddFilterViewRequest();
      var od = new api.AddFilterViewRequest.fromJson(o.toJson());
      checkAddFilterViewRequest(od);
    });
  });

  unittest.group("obj-schema-AddFilterViewResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddFilterViewResponse();
      var od = new api.AddFilterViewResponse.fromJson(o.toJson());
      checkAddFilterViewResponse(od);
    });
  });

  unittest.group("obj-schema-AddNamedRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddNamedRangeRequest();
      var od = new api.AddNamedRangeRequest.fromJson(o.toJson());
      checkAddNamedRangeRequest(od);
    });
  });

  unittest.group("obj-schema-AddNamedRangeResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddNamedRangeResponse();
      var od = new api.AddNamedRangeResponse.fromJson(o.toJson());
      checkAddNamedRangeResponse(od);
    });
  });

  unittest.group("obj-schema-AddProtectedRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddProtectedRangeRequest();
      var od = new api.AddProtectedRangeRequest.fromJson(o.toJson());
      checkAddProtectedRangeRequest(od);
    });
  });

  unittest.group("obj-schema-AddProtectedRangeResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddProtectedRangeResponse();
      var od = new api.AddProtectedRangeResponse.fromJson(o.toJson());
      checkAddProtectedRangeResponse(od);
    });
  });

  unittest.group("obj-schema-AddSheetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddSheetRequest();
      var od = new api.AddSheetRequest.fromJson(o.toJson());
      checkAddSheetRequest(od);
    });
  });

  unittest.group("obj-schema-AddSheetResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddSheetResponse();
      var od = new api.AddSheetResponse.fromJson(o.toJson());
      checkAddSheetResponse(od);
    });
  });

  unittest.group("obj-schema-AppendCellsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppendCellsRequest();
      var od = new api.AppendCellsRequest.fromJson(o.toJson());
      checkAppendCellsRequest(od);
    });
  });

  unittest.group("obj-schema-AppendDimensionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppendDimensionRequest();
      var od = new api.AppendDimensionRequest.fromJson(o.toJson());
      checkAppendDimensionRequest(od);
    });
  });

  unittest.group("obj-schema-AppendValuesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppendValuesResponse();
      var od = new api.AppendValuesResponse.fromJson(o.toJson());
      checkAppendValuesResponse(od);
    });
  });

  unittest.group("obj-schema-AutoFillRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoFillRequest();
      var od = new api.AutoFillRequest.fromJson(o.toJson());
      checkAutoFillRequest(od);
    });
  });

  unittest.group("obj-schema-AutoResizeDimensionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoResizeDimensionsRequest();
      var od = new api.AutoResizeDimensionsRequest.fromJson(o.toJson());
      checkAutoResizeDimensionsRequest(od);
    });
  });

  unittest.group("obj-schema-BandedRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildBandedRange();
      var od = new api.BandedRange.fromJson(o.toJson());
      checkBandedRange(od);
    });
  });

  unittest.group("obj-schema-BandingProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildBandingProperties();
      var od = new api.BandingProperties.fromJson(o.toJson());
      checkBandingProperties(od);
    });
  });

  unittest.group("obj-schema-BasicChartAxis", () {
    unittest.test("to-json--from-json", () {
      var o = buildBasicChartAxis();
      var od = new api.BasicChartAxis.fromJson(o.toJson());
      checkBasicChartAxis(od);
    });
  });

  unittest.group("obj-schema-BasicChartDomain", () {
    unittest.test("to-json--from-json", () {
      var o = buildBasicChartDomain();
      var od = new api.BasicChartDomain.fromJson(o.toJson());
      checkBasicChartDomain(od);
    });
  });

  unittest.group("obj-schema-BasicChartSeries", () {
    unittest.test("to-json--from-json", () {
      var o = buildBasicChartSeries();
      var od = new api.BasicChartSeries.fromJson(o.toJson());
      checkBasicChartSeries(od);
    });
  });

  unittest.group("obj-schema-BasicChartSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildBasicChartSpec();
      var od = new api.BasicChartSpec.fromJson(o.toJson());
      checkBasicChartSpec(od);
    });
  });

  unittest.group("obj-schema-BasicFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildBasicFilter();
      var od = new api.BasicFilter.fromJson(o.toJson());
      checkBasicFilter(od);
    });
  });

  unittest.group("obj-schema-BatchClearValuesByDataFilterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchClearValuesByDataFilterRequest();
      var od = new api.BatchClearValuesByDataFilterRequest.fromJson(o.toJson());
      checkBatchClearValuesByDataFilterRequest(od);
    });
  });

  unittest.group("obj-schema-BatchClearValuesByDataFilterResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchClearValuesByDataFilterResponse();
      var od =
          new api.BatchClearValuesByDataFilterResponse.fromJson(o.toJson());
      checkBatchClearValuesByDataFilterResponse(od);
    });
  });

  unittest.group("obj-schema-BatchClearValuesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchClearValuesRequest();
      var od = new api.BatchClearValuesRequest.fromJson(o.toJson());
      checkBatchClearValuesRequest(od);
    });
  });

  unittest.group("obj-schema-BatchClearValuesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchClearValuesResponse();
      var od = new api.BatchClearValuesResponse.fromJson(o.toJson());
      checkBatchClearValuesResponse(od);
    });
  });

  unittest.group("obj-schema-BatchGetValuesByDataFilterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchGetValuesByDataFilterRequest();
      var od = new api.BatchGetValuesByDataFilterRequest.fromJson(o.toJson());
      checkBatchGetValuesByDataFilterRequest(od);
    });
  });

  unittest.group("obj-schema-BatchGetValuesByDataFilterResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchGetValuesByDataFilterResponse();
      var od = new api.BatchGetValuesByDataFilterResponse.fromJson(o.toJson());
      checkBatchGetValuesByDataFilterResponse(od);
    });
  });

  unittest.group("obj-schema-BatchGetValuesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchGetValuesResponse();
      var od = new api.BatchGetValuesResponse.fromJson(o.toJson());
      checkBatchGetValuesResponse(od);
    });
  });

  unittest.group("obj-schema-BatchUpdateSpreadsheetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUpdateSpreadsheetRequest();
      var od = new api.BatchUpdateSpreadsheetRequest.fromJson(o.toJson());
      checkBatchUpdateSpreadsheetRequest(od);
    });
  });

  unittest.group("obj-schema-BatchUpdateSpreadsheetResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUpdateSpreadsheetResponse();
      var od = new api.BatchUpdateSpreadsheetResponse.fromJson(o.toJson());
      checkBatchUpdateSpreadsheetResponse(od);
    });
  });

  unittest.group("obj-schema-BatchUpdateValuesByDataFilterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUpdateValuesByDataFilterRequest();
      var od =
          new api.BatchUpdateValuesByDataFilterRequest.fromJson(o.toJson());
      checkBatchUpdateValuesByDataFilterRequest(od);
    });
  });

  unittest.group("obj-schema-BatchUpdateValuesByDataFilterResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUpdateValuesByDataFilterResponse();
      var od =
          new api.BatchUpdateValuesByDataFilterResponse.fromJson(o.toJson());
      checkBatchUpdateValuesByDataFilterResponse(od);
    });
  });

  unittest.group("obj-schema-BatchUpdateValuesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUpdateValuesRequest();
      var od = new api.BatchUpdateValuesRequest.fromJson(o.toJson());
      checkBatchUpdateValuesRequest(od);
    });
  });

  unittest.group("obj-schema-BatchUpdateValuesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUpdateValuesResponse();
      var od = new api.BatchUpdateValuesResponse.fromJson(o.toJson());
      checkBatchUpdateValuesResponse(od);
    });
  });

  unittest.group("obj-schema-BooleanCondition", () {
    unittest.test("to-json--from-json", () {
      var o = buildBooleanCondition();
      var od = new api.BooleanCondition.fromJson(o.toJson());
      checkBooleanCondition(od);
    });
  });

  unittest.group("obj-schema-BooleanRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildBooleanRule();
      var od = new api.BooleanRule.fromJson(o.toJson());
      checkBooleanRule(od);
    });
  });

  unittest.group("obj-schema-Border", () {
    unittest.test("to-json--from-json", () {
      var o = buildBorder();
      var od = new api.Border.fromJson(o.toJson());
      checkBorder(od);
    });
  });

  unittest.group("obj-schema-Borders", () {
    unittest.test("to-json--from-json", () {
      var o = buildBorders();
      var od = new api.Borders.fromJson(o.toJson());
      checkBorders(od);
    });
  });

  unittest.group("obj-schema-BubbleChartSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildBubbleChartSpec();
      var od = new api.BubbleChartSpec.fromJson(o.toJson());
      checkBubbleChartSpec(od);
    });
  });

  unittest.group("obj-schema-CandlestickChartSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildCandlestickChartSpec();
      var od = new api.CandlestickChartSpec.fromJson(o.toJson());
      checkCandlestickChartSpec(od);
    });
  });

  unittest.group("obj-schema-CandlestickData", () {
    unittest.test("to-json--from-json", () {
      var o = buildCandlestickData();
      var od = new api.CandlestickData.fromJson(o.toJson());
      checkCandlestickData(od);
    });
  });

  unittest.group("obj-schema-CandlestickDomain", () {
    unittest.test("to-json--from-json", () {
      var o = buildCandlestickDomain();
      var od = new api.CandlestickDomain.fromJson(o.toJson());
      checkCandlestickDomain(od);
    });
  });

  unittest.group("obj-schema-CandlestickSeries", () {
    unittest.test("to-json--from-json", () {
      var o = buildCandlestickSeries();
      var od = new api.CandlestickSeries.fromJson(o.toJson());
      checkCandlestickSeries(od);
    });
  });

  unittest.group("obj-schema-CellData", () {
    unittest.test("to-json--from-json", () {
      var o = buildCellData();
      var od = new api.CellData.fromJson(o.toJson());
      checkCellData(od);
    });
  });

  unittest.group("obj-schema-CellFormat", () {
    unittest.test("to-json--from-json", () {
      var o = buildCellFormat();
      var od = new api.CellFormat.fromJson(o.toJson());
      checkCellFormat(od);
    });
  });

  unittest.group("obj-schema-ChartData", () {
    unittest.test("to-json--from-json", () {
      var o = buildChartData();
      var od = new api.ChartData.fromJson(o.toJson());
      checkChartData(od);
    });
  });

  unittest.group("obj-schema-ChartSourceRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildChartSourceRange();
      var od = new api.ChartSourceRange.fromJson(o.toJson());
      checkChartSourceRange(od);
    });
  });

  unittest.group("obj-schema-ChartSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildChartSpec();
      var od = new api.ChartSpec.fromJson(o.toJson());
      checkChartSpec(od);
    });
  });

  unittest.group("obj-schema-ClearBasicFilterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildClearBasicFilterRequest();
      var od = new api.ClearBasicFilterRequest.fromJson(o.toJson());
      checkClearBasicFilterRequest(od);
    });
  });

  unittest.group("obj-schema-ClearValuesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildClearValuesRequest();
      var od = new api.ClearValuesRequest.fromJson(o.toJson());
      checkClearValuesRequest(od);
    });
  });

  unittest.group("obj-schema-ClearValuesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildClearValuesResponse();
      var od = new api.ClearValuesResponse.fromJson(o.toJson());
      checkClearValuesResponse(od);
    });
  });

  unittest.group("obj-schema-Color", () {
    unittest.test("to-json--from-json", () {
      var o = buildColor();
      var od = new api.Color.fromJson(o.toJson());
      checkColor(od);
    });
  });

  unittest.group("obj-schema-ConditionValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildConditionValue();
      var od = new api.ConditionValue.fromJson(o.toJson());
      checkConditionValue(od);
    });
  });

  unittest.group("obj-schema-ConditionalFormatRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildConditionalFormatRule();
      var od = new api.ConditionalFormatRule.fromJson(o.toJson());
      checkConditionalFormatRule(od);
    });
  });

  unittest.group("obj-schema-CopyPasteRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCopyPasteRequest();
      var od = new api.CopyPasteRequest.fromJson(o.toJson());
      checkCopyPasteRequest(od);
    });
  });

  unittest.group("obj-schema-CopySheetToAnotherSpreadsheetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCopySheetToAnotherSpreadsheetRequest();
      var od =
          new api.CopySheetToAnotherSpreadsheetRequest.fromJson(o.toJson());
      checkCopySheetToAnotherSpreadsheetRequest(od);
    });
  });

  unittest.group("obj-schema-CreateDeveloperMetadataRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateDeveloperMetadataRequest();
      var od = new api.CreateDeveloperMetadataRequest.fromJson(o.toJson());
      checkCreateDeveloperMetadataRequest(od);
    });
  });

  unittest.group("obj-schema-CreateDeveloperMetadataResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateDeveloperMetadataResponse();
      var od = new api.CreateDeveloperMetadataResponse.fromJson(o.toJson());
      checkCreateDeveloperMetadataResponse(od);
    });
  });

  unittest.group("obj-schema-CutPasteRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCutPasteRequest();
      var od = new api.CutPasteRequest.fromJson(o.toJson());
      checkCutPasteRequest(od);
    });
  });

  unittest.group("obj-schema-DataFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataFilter();
      var od = new api.DataFilter.fromJson(o.toJson());
      checkDataFilter(od);
    });
  });

  unittest.group("obj-schema-DataFilterValueRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataFilterValueRange();
      var od = new api.DataFilterValueRange.fromJson(o.toJson());
      checkDataFilterValueRange(od);
    });
  });

  unittest.group("obj-schema-DataValidationRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataValidationRule();
      var od = new api.DataValidationRule.fromJson(o.toJson());
      checkDataValidationRule(od);
    });
  });

  unittest.group("obj-schema-DateTimeRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildDateTimeRule();
      var od = new api.DateTimeRule.fromJson(o.toJson());
      checkDateTimeRule(od);
    });
  });

  unittest.group("obj-schema-DeleteBandingRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteBandingRequest();
      var od = new api.DeleteBandingRequest.fromJson(o.toJson());
      checkDeleteBandingRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteConditionalFormatRuleRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteConditionalFormatRuleRequest();
      var od = new api.DeleteConditionalFormatRuleRequest.fromJson(o.toJson());
      checkDeleteConditionalFormatRuleRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteConditionalFormatRuleResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteConditionalFormatRuleResponse();
      var od = new api.DeleteConditionalFormatRuleResponse.fromJson(o.toJson());
      checkDeleteConditionalFormatRuleResponse(od);
    });
  });

  unittest.group("obj-schema-DeleteDeveloperMetadataRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteDeveloperMetadataRequest();
      var od = new api.DeleteDeveloperMetadataRequest.fromJson(o.toJson());
      checkDeleteDeveloperMetadataRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteDeveloperMetadataResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteDeveloperMetadataResponse();
      var od = new api.DeleteDeveloperMetadataResponse.fromJson(o.toJson());
      checkDeleteDeveloperMetadataResponse(od);
    });
  });

  unittest.group("obj-schema-DeleteDimensionGroupRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteDimensionGroupRequest();
      var od = new api.DeleteDimensionGroupRequest.fromJson(o.toJson());
      checkDeleteDimensionGroupRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteDimensionGroupResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteDimensionGroupResponse();
      var od = new api.DeleteDimensionGroupResponse.fromJson(o.toJson());
      checkDeleteDimensionGroupResponse(od);
    });
  });

  unittest.group("obj-schema-DeleteDimensionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteDimensionRequest();
      var od = new api.DeleteDimensionRequest.fromJson(o.toJson());
      checkDeleteDimensionRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteEmbeddedObjectRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteEmbeddedObjectRequest();
      var od = new api.DeleteEmbeddedObjectRequest.fromJson(o.toJson());
      checkDeleteEmbeddedObjectRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteFilterViewRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteFilterViewRequest();
      var od = new api.DeleteFilterViewRequest.fromJson(o.toJson());
      checkDeleteFilterViewRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteNamedRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteNamedRangeRequest();
      var od = new api.DeleteNamedRangeRequest.fromJson(o.toJson());
      checkDeleteNamedRangeRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteProtectedRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteProtectedRangeRequest();
      var od = new api.DeleteProtectedRangeRequest.fromJson(o.toJson());
      checkDeleteProtectedRangeRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteRangeRequest();
      var od = new api.DeleteRangeRequest.fromJson(o.toJson());
      checkDeleteRangeRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteSheetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteSheetRequest();
      var od = new api.DeleteSheetRequest.fromJson(o.toJson());
      checkDeleteSheetRequest(od);
    });
  });

  unittest.group("obj-schema-DeveloperMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeveloperMetadata();
      var od = new api.DeveloperMetadata.fromJson(o.toJson());
      checkDeveloperMetadata(od);
    });
  });

  unittest.group("obj-schema-DeveloperMetadataLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeveloperMetadataLocation();
      var od = new api.DeveloperMetadataLocation.fromJson(o.toJson());
      checkDeveloperMetadataLocation(od);
    });
  });

  unittest.group("obj-schema-DeveloperMetadataLookup", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeveloperMetadataLookup();
      var od = new api.DeveloperMetadataLookup.fromJson(o.toJson());
      checkDeveloperMetadataLookup(od);
    });
  });

  unittest.group("obj-schema-DimensionGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimensionGroup();
      var od = new api.DimensionGroup.fromJson(o.toJson());
      checkDimensionGroup(od);
    });
  });

  unittest.group("obj-schema-DimensionProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimensionProperties();
      var od = new api.DimensionProperties.fromJson(o.toJson());
      checkDimensionProperties(od);
    });
  });

  unittest.group("obj-schema-DimensionRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimensionRange();
      var od = new api.DimensionRange.fromJson(o.toJson());
      checkDimensionRange(od);
    });
  });

  unittest.group("obj-schema-DuplicateFilterViewRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDuplicateFilterViewRequest();
      var od = new api.DuplicateFilterViewRequest.fromJson(o.toJson());
      checkDuplicateFilterViewRequest(od);
    });
  });

  unittest.group("obj-schema-DuplicateFilterViewResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDuplicateFilterViewResponse();
      var od = new api.DuplicateFilterViewResponse.fromJson(o.toJson());
      checkDuplicateFilterViewResponse(od);
    });
  });

  unittest.group("obj-schema-DuplicateSheetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDuplicateSheetRequest();
      var od = new api.DuplicateSheetRequest.fromJson(o.toJson());
      checkDuplicateSheetRequest(od);
    });
  });

  unittest.group("obj-schema-DuplicateSheetResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDuplicateSheetResponse();
      var od = new api.DuplicateSheetResponse.fromJson(o.toJson());
      checkDuplicateSheetResponse(od);
    });
  });

  unittest.group("obj-schema-Editors", () {
    unittest.test("to-json--from-json", () {
      var o = buildEditors();
      var od = new api.Editors.fromJson(o.toJson());
      checkEditors(od);
    });
  });

  unittest.group("obj-schema-EmbeddedChart", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmbeddedChart();
      var od = new api.EmbeddedChart.fromJson(o.toJson());
      checkEmbeddedChart(od);
    });
  });

  unittest.group("obj-schema-EmbeddedObjectPosition", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmbeddedObjectPosition();
      var od = new api.EmbeddedObjectPosition.fromJson(o.toJson());
      checkEmbeddedObjectPosition(od);
    });
  });

  unittest.group("obj-schema-ErrorValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildErrorValue();
      var od = new api.ErrorValue.fromJson(o.toJson());
      checkErrorValue(od);
    });
  });

  unittest.group("obj-schema-ExtendedValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildExtendedValue();
      var od = new api.ExtendedValue.fromJson(o.toJson());
      checkExtendedValue(od);
    });
  });

  unittest.group("obj-schema-FilterCriteria", () {
    unittest.test("to-json--from-json", () {
      var o = buildFilterCriteria();
      var od = new api.FilterCriteria.fromJson(o.toJson());
      checkFilterCriteria(od);
    });
  });

  unittest.group("obj-schema-FilterView", () {
    unittest.test("to-json--from-json", () {
      var o = buildFilterView();
      var od = new api.FilterView.fromJson(o.toJson());
      checkFilterView(od);
    });
  });

  unittest.group("obj-schema-FindReplaceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildFindReplaceRequest();
      var od = new api.FindReplaceRequest.fromJson(o.toJson());
      checkFindReplaceRequest(od);
    });
  });

  unittest.group("obj-schema-FindReplaceResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildFindReplaceResponse();
      var od = new api.FindReplaceResponse.fromJson(o.toJson());
      checkFindReplaceResponse(od);
    });
  });

  unittest.group("obj-schema-GetSpreadsheetByDataFilterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetSpreadsheetByDataFilterRequest();
      var od = new api.GetSpreadsheetByDataFilterRequest.fromJson(o.toJson());
      checkGetSpreadsheetByDataFilterRequest(od);
    });
  });

  unittest.group("obj-schema-GradientRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildGradientRule();
      var od = new api.GradientRule.fromJson(o.toJson());
      checkGradientRule(od);
    });
  });

  unittest.group("obj-schema-GridCoordinate", () {
    unittest.test("to-json--from-json", () {
      var o = buildGridCoordinate();
      var od = new api.GridCoordinate.fromJson(o.toJson());
      checkGridCoordinate(od);
    });
  });

  unittest.group("obj-schema-GridData", () {
    unittest.test("to-json--from-json", () {
      var o = buildGridData();
      var od = new api.GridData.fromJson(o.toJson());
      checkGridData(od);
    });
  });

  unittest.group("obj-schema-GridProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildGridProperties();
      var od = new api.GridProperties.fromJson(o.toJson());
      checkGridProperties(od);
    });
  });

  unittest.group("obj-schema-GridRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildGridRange();
      var od = new api.GridRange.fromJson(o.toJson());
      checkGridRange(od);
    });
  });

  unittest.group("obj-schema-HistogramChartSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistogramChartSpec();
      var od = new api.HistogramChartSpec.fromJson(o.toJson());
      checkHistogramChartSpec(od);
    });
  });

  unittest.group("obj-schema-HistogramRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistogramRule();
      var od = new api.HistogramRule.fromJson(o.toJson());
      checkHistogramRule(od);
    });
  });

  unittest.group("obj-schema-HistogramSeries", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistogramSeries();
      var od = new api.HistogramSeries.fromJson(o.toJson());
      checkHistogramSeries(od);
    });
  });

  unittest.group("obj-schema-InsertDimensionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInsertDimensionRequest();
      var od = new api.InsertDimensionRequest.fromJson(o.toJson());
      checkInsertDimensionRequest(od);
    });
  });

  unittest.group("obj-schema-InsertRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInsertRangeRequest();
      var od = new api.InsertRangeRequest.fromJson(o.toJson());
      checkInsertRangeRequest(od);
    });
  });

  unittest.group("obj-schema-InterpolationPoint", () {
    unittest.test("to-json--from-json", () {
      var o = buildInterpolationPoint();
      var od = new api.InterpolationPoint.fromJson(o.toJson());
      checkInterpolationPoint(od);
    });
  });

  unittest.group("obj-schema-IterativeCalculationSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildIterativeCalculationSettings();
      var od = new api.IterativeCalculationSettings.fromJson(o.toJson());
      checkIterativeCalculationSettings(od);
    });
  });

  unittest.group("obj-schema-LineStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildLineStyle();
      var od = new api.LineStyle.fromJson(o.toJson());
      checkLineStyle(od);
    });
  });

  unittest.group("obj-schema-ManualRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildManualRule();
      var od = new api.ManualRule.fromJson(o.toJson());
      checkManualRule(od);
    });
  });

  unittest.group("obj-schema-ManualRuleGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildManualRuleGroup();
      var od = new api.ManualRuleGroup.fromJson(o.toJson());
      checkManualRuleGroup(od);
    });
  });

  unittest.group("obj-schema-MatchedDeveloperMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildMatchedDeveloperMetadata();
      var od = new api.MatchedDeveloperMetadata.fromJson(o.toJson());
      checkMatchedDeveloperMetadata(od);
    });
  });

  unittest.group("obj-schema-MatchedValueRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildMatchedValueRange();
      var od = new api.MatchedValueRange.fromJson(o.toJson());
      checkMatchedValueRange(od);
    });
  });

  unittest.group("obj-schema-MergeCellsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildMergeCellsRequest();
      var od = new api.MergeCellsRequest.fromJson(o.toJson());
      checkMergeCellsRequest(od);
    });
  });

  unittest.group("obj-schema-MoveDimensionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildMoveDimensionRequest();
      var od = new api.MoveDimensionRequest.fromJson(o.toJson());
      checkMoveDimensionRequest(od);
    });
  });

  unittest.group("obj-schema-NamedRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildNamedRange();
      var od = new api.NamedRange.fromJson(o.toJson());
      checkNamedRange(od);
    });
  });

  unittest.group("obj-schema-NumberFormat", () {
    unittest.test("to-json--from-json", () {
      var o = buildNumberFormat();
      var od = new api.NumberFormat.fromJson(o.toJson());
      checkNumberFormat(od);
    });
  });

  unittest.group("obj-schema-OrgChartSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrgChartSpec();
      var od = new api.OrgChartSpec.fromJson(o.toJson());
      checkOrgChartSpec(od);
    });
  });

  unittest.group("obj-schema-OverlayPosition", () {
    unittest.test("to-json--from-json", () {
      var o = buildOverlayPosition();
      var od = new api.OverlayPosition.fromJson(o.toJson());
      checkOverlayPosition(od);
    });
  });

  unittest.group("obj-schema-Padding", () {
    unittest.test("to-json--from-json", () {
      var o = buildPadding();
      var od = new api.Padding.fromJson(o.toJson());
      checkPadding(od);
    });
  });

  unittest.group("obj-schema-PasteDataRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPasteDataRequest();
      var od = new api.PasteDataRequest.fromJson(o.toJson());
      checkPasteDataRequest(od);
    });
  });

  unittest.group("obj-schema-PieChartSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildPieChartSpec();
      var od = new api.PieChartSpec.fromJson(o.toJson());
      checkPieChartSpec(od);
    });
  });

  unittest.group("obj-schema-PivotFilterCriteria", () {
    unittest.test("to-json--from-json", () {
      var o = buildPivotFilterCriteria();
      var od = new api.PivotFilterCriteria.fromJson(o.toJson());
      checkPivotFilterCriteria(od);
    });
  });

  unittest.group("obj-schema-PivotGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildPivotGroup();
      var od = new api.PivotGroup.fromJson(o.toJson());
      checkPivotGroup(od);
    });
  });

  unittest.group("obj-schema-PivotGroupRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildPivotGroupRule();
      var od = new api.PivotGroupRule.fromJson(o.toJson());
      checkPivotGroupRule(od);
    });
  });

  unittest.group("obj-schema-PivotGroupSortValueBucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildPivotGroupSortValueBucket();
      var od = new api.PivotGroupSortValueBucket.fromJson(o.toJson());
      checkPivotGroupSortValueBucket(od);
    });
  });

  unittest.group("obj-schema-PivotGroupValueMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildPivotGroupValueMetadata();
      var od = new api.PivotGroupValueMetadata.fromJson(o.toJson());
      checkPivotGroupValueMetadata(od);
    });
  });

  unittest.group("obj-schema-PivotTable", () {
    unittest.test("to-json--from-json", () {
      var o = buildPivotTable();
      var od = new api.PivotTable.fromJson(o.toJson());
      checkPivotTable(od);
    });
  });

  unittest.group("obj-schema-PivotValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildPivotValue();
      var od = new api.PivotValue.fromJson(o.toJson());
      checkPivotValue(od);
    });
  });

  unittest.group("obj-schema-ProtectedRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildProtectedRange();
      var od = new api.ProtectedRange.fromJson(o.toJson());
      checkProtectedRange(od);
    });
  });

  unittest.group("obj-schema-RandomizeRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRandomizeRangeRequest();
      var od = new api.RandomizeRangeRequest.fromJson(o.toJson());
      checkRandomizeRangeRequest(od);
    });
  });

  unittest.group("obj-schema-RepeatCellRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRepeatCellRequest();
      var od = new api.RepeatCellRequest.fromJson(o.toJson());
      checkRepeatCellRequest(od);
    });
  });

  unittest.group("obj-schema-Request", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequest();
      var od = new api.Request.fromJson(o.toJson());
      checkRequest(od);
    });
  });

  unittest.group("obj-schema-Response", () {
    unittest.test("to-json--from-json", () {
      var o = buildResponse();
      var od = new api.Response.fromJson(o.toJson());
      checkResponse(od);
    });
  });

  unittest.group("obj-schema-RowData", () {
    unittest.test("to-json--from-json", () {
      var o = buildRowData();
      var od = new api.RowData.fromJson(o.toJson());
      checkRowData(od);
    });
  });

  unittest.group("obj-schema-SearchDeveloperMetadataRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchDeveloperMetadataRequest();
      var od = new api.SearchDeveloperMetadataRequest.fromJson(o.toJson());
      checkSearchDeveloperMetadataRequest(od);
    });
  });

  unittest.group("obj-schema-SearchDeveloperMetadataResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchDeveloperMetadataResponse();
      var od = new api.SearchDeveloperMetadataResponse.fromJson(o.toJson());
      checkSearchDeveloperMetadataResponse(od);
    });
  });

  unittest.group("obj-schema-SetBasicFilterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetBasicFilterRequest();
      var od = new api.SetBasicFilterRequest.fromJson(o.toJson());
      checkSetBasicFilterRequest(od);
    });
  });

  unittest.group("obj-schema-SetDataValidationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetDataValidationRequest();
      var od = new api.SetDataValidationRequest.fromJson(o.toJson());
      checkSetDataValidationRequest(od);
    });
  });

  unittest.group("obj-schema-Sheet", () {
    unittest.test("to-json--from-json", () {
      var o = buildSheet();
      var od = new api.Sheet.fromJson(o.toJson());
      checkSheet(od);
    });
  });

  unittest.group("obj-schema-SheetProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildSheetProperties();
      var od = new api.SheetProperties.fromJson(o.toJson());
      checkSheetProperties(od);
    });
  });

  unittest.group("obj-schema-SortRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSortRangeRequest();
      var od = new api.SortRangeRequest.fromJson(o.toJson());
      checkSortRangeRequest(od);
    });
  });

  unittest.group("obj-schema-SortSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildSortSpec();
      var od = new api.SortSpec.fromJson(o.toJson());
      checkSortSpec(od);
    });
  });

  unittest.group("obj-schema-SourceAndDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceAndDestination();
      var od = new api.SourceAndDestination.fromJson(o.toJson());
      checkSourceAndDestination(od);
    });
  });

  unittest.group("obj-schema-Spreadsheet", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpreadsheet();
      var od = new api.Spreadsheet.fromJson(o.toJson());
      checkSpreadsheet(od);
    });
  });

  unittest.group("obj-schema-SpreadsheetProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpreadsheetProperties();
      var od = new api.SpreadsheetProperties.fromJson(o.toJson());
      checkSpreadsheetProperties(od);
    });
  });

  unittest.group("obj-schema-TextFormat", () {
    unittest.test("to-json--from-json", () {
      var o = buildTextFormat();
      var od = new api.TextFormat.fromJson(o.toJson());
      checkTextFormat(od);
    });
  });

  unittest.group("obj-schema-TextFormatRun", () {
    unittest.test("to-json--from-json", () {
      var o = buildTextFormatRun();
      var od = new api.TextFormatRun.fromJson(o.toJson());
      checkTextFormatRun(od);
    });
  });

  unittest.group("obj-schema-TextPosition", () {
    unittest.test("to-json--from-json", () {
      var o = buildTextPosition();
      var od = new api.TextPosition.fromJson(o.toJson());
      checkTextPosition(od);
    });
  });

  unittest.group("obj-schema-TextRotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildTextRotation();
      var od = new api.TextRotation.fromJson(o.toJson());
      checkTextRotation(od);
    });
  });

  unittest.group("obj-schema-TextToColumnsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTextToColumnsRequest();
      var od = new api.TextToColumnsRequest.fromJson(o.toJson());
      checkTextToColumnsRequest(od);
    });
  });

  unittest.group("obj-schema-TreemapChartColorScale", () {
    unittest.test("to-json--from-json", () {
      var o = buildTreemapChartColorScale();
      var od = new api.TreemapChartColorScale.fromJson(o.toJson());
      checkTreemapChartColorScale(od);
    });
  });

  unittest.group("obj-schema-TreemapChartSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildTreemapChartSpec();
      var od = new api.TreemapChartSpec.fromJson(o.toJson());
      checkTreemapChartSpec(od);
    });
  });

  unittest.group("obj-schema-UnmergeCellsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnmergeCellsRequest();
      var od = new api.UnmergeCellsRequest.fromJson(o.toJson());
      checkUnmergeCellsRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateBandingRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateBandingRequest();
      var od = new api.UpdateBandingRequest.fromJson(o.toJson());
      checkUpdateBandingRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateBordersRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateBordersRequest();
      var od = new api.UpdateBordersRequest.fromJson(o.toJson());
      checkUpdateBordersRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateCellsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateCellsRequest();
      var od = new api.UpdateCellsRequest.fromJson(o.toJson());
      checkUpdateCellsRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateChartSpecRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateChartSpecRequest();
      var od = new api.UpdateChartSpecRequest.fromJson(o.toJson());
      checkUpdateChartSpecRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateConditionalFormatRuleRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateConditionalFormatRuleRequest();
      var od = new api.UpdateConditionalFormatRuleRequest.fromJson(o.toJson());
      checkUpdateConditionalFormatRuleRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateConditionalFormatRuleResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateConditionalFormatRuleResponse();
      var od = new api.UpdateConditionalFormatRuleResponse.fromJson(o.toJson());
      checkUpdateConditionalFormatRuleResponse(od);
    });
  });

  unittest.group("obj-schema-UpdateDeveloperMetadataRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateDeveloperMetadataRequest();
      var od = new api.UpdateDeveloperMetadataRequest.fromJson(o.toJson());
      checkUpdateDeveloperMetadataRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateDeveloperMetadataResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateDeveloperMetadataResponse();
      var od = new api.UpdateDeveloperMetadataResponse.fromJson(o.toJson());
      checkUpdateDeveloperMetadataResponse(od);
    });
  });

  unittest.group("obj-schema-UpdateDimensionGroupRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateDimensionGroupRequest();
      var od = new api.UpdateDimensionGroupRequest.fromJson(o.toJson());
      checkUpdateDimensionGroupRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateDimensionPropertiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateDimensionPropertiesRequest();
      var od = new api.UpdateDimensionPropertiesRequest.fromJson(o.toJson());
      checkUpdateDimensionPropertiesRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateEmbeddedObjectPositionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateEmbeddedObjectPositionRequest();
      var od = new api.UpdateEmbeddedObjectPositionRequest.fromJson(o.toJson());
      checkUpdateEmbeddedObjectPositionRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateEmbeddedObjectPositionResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateEmbeddedObjectPositionResponse();
      var od =
          new api.UpdateEmbeddedObjectPositionResponse.fromJson(o.toJson());
      checkUpdateEmbeddedObjectPositionResponse(od);
    });
  });

  unittest.group("obj-schema-UpdateFilterViewRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateFilterViewRequest();
      var od = new api.UpdateFilterViewRequest.fromJson(o.toJson());
      checkUpdateFilterViewRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateNamedRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateNamedRangeRequest();
      var od = new api.UpdateNamedRangeRequest.fromJson(o.toJson());
      checkUpdateNamedRangeRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateProtectedRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateProtectedRangeRequest();
      var od = new api.UpdateProtectedRangeRequest.fromJson(o.toJson());
      checkUpdateProtectedRangeRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateSheetPropertiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateSheetPropertiesRequest();
      var od = new api.UpdateSheetPropertiesRequest.fromJson(o.toJson());
      checkUpdateSheetPropertiesRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateSpreadsheetPropertiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateSpreadsheetPropertiesRequest();
      var od = new api.UpdateSpreadsheetPropertiesRequest.fromJson(o.toJson());
      checkUpdateSpreadsheetPropertiesRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateValuesByDataFilterResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateValuesByDataFilterResponse();
      var od = new api.UpdateValuesByDataFilterResponse.fromJson(o.toJson());
      checkUpdateValuesByDataFilterResponse(od);
    });
  });

  unittest.group("obj-schema-UpdateValuesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateValuesResponse();
      var od = new api.UpdateValuesResponse.fromJson(o.toJson());
      checkUpdateValuesResponse(od);
    });
  });

  unittest.group("obj-schema-ValueRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildValueRange();
      var od = new api.ValueRange.fromJson(o.toJson());
      checkValueRange(od);
    });
  });

  unittest.group("obj-schema-WaterfallChartColumnStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildWaterfallChartColumnStyle();
      var od = new api.WaterfallChartColumnStyle.fromJson(o.toJson());
      checkWaterfallChartColumnStyle(od);
    });
  });

  unittest.group("obj-schema-WaterfallChartCustomSubtotal", () {
    unittest.test("to-json--from-json", () {
      var o = buildWaterfallChartCustomSubtotal();
      var od = new api.WaterfallChartCustomSubtotal.fromJson(o.toJson());
      checkWaterfallChartCustomSubtotal(od);
    });
  });

  unittest.group("obj-schema-WaterfallChartDomain", () {
    unittest.test("to-json--from-json", () {
      var o = buildWaterfallChartDomain();
      var od = new api.WaterfallChartDomain.fromJson(o.toJson());
      checkWaterfallChartDomain(od);
    });
  });

  unittest.group("obj-schema-WaterfallChartSeries", () {
    unittest.test("to-json--from-json", () {
      var o = buildWaterfallChartSeries();
      var od = new api.WaterfallChartSeries.fromJson(o.toJson());
      checkWaterfallChartSeries(od);
    });
  });

  unittest.group("obj-schema-WaterfallChartSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildWaterfallChartSpec();
      var od = new api.WaterfallChartSpec.fromJson(o.toJson());
      checkWaterfallChartSpec(od);
    });
  });

  unittest.group("resource-SpreadsheetsResourceApi", () {
    unittest.test("method--batchUpdate", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsResourceApi res = new api.SheetsApi(mock).spreadsheets;
      var arg_request = buildBatchUpdateSpreadsheetRequest();
      var arg_spreadsheetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchUpdateSpreadsheetRequest.fromJson(json);
        checkBatchUpdateSpreadsheetRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf(":batchUpdate", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals(":batchUpdate"));
        pathOffset += 12;

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
        var resp = convert.json.encode(buildBatchUpdateSpreadsheetResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_spreadsheetId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchUpdateSpreadsheetResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsResourceApi res = new api.SheetsApi(mock).spreadsheets;
      var arg_request = buildSpreadsheet();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Spreadsheet.fromJson(json);
        checkSpreadsheet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v4/spreadsheets"));
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
        var resp = convert.json.encode(buildSpreadsheet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSpreadsheet(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsResourceApi res = new api.SheetsApi(mock).spreadsheets;
      var arg_spreadsheetId = "foo";
      var arg_ranges = buildUnnamed4058();
      var arg_includeGridData = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));

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
        unittest.expect(queryMap["ranges"], unittest.equals(arg_ranges));
        unittest.expect(queryMap["includeGridData"].first,
            unittest.equals("$arg_includeGridData"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSpreadsheet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_spreadsheetId,
              ranges: arg_ranges,
              includeGridData: arg_includeGridData,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSpreadsheet(response);
      })));
    });

    unittest.test("method--getByDataFilter", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsResourceApi res = new api.SheetsApi(mock).spreadsheets;
      var arg_request = buildGetSpreadsheetByDataFilterRequest();
      var arg_spreadsheetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetSpreadsheetByDataFilterRequest.fromJson(json);
        checkGetSpreadsheetByDataFilterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf(":getByDataFilter", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals(":getByDataFilter"));
        pathOffset += 16;

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
        var resp = convert.json.encode(buildSpreadsheet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getByDataFilter(arg_request, arg_spreadsheetId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSpreadsheet(response);
      })));
    });
  });

  unittest.group("resource-SpreadsheetsDeveloperMetadataResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsDeveloperMetadataResourceApi res =
          new api.SheetsApi(mock).spreadsheets.developerMetadata;
      var arg_spreadsheetId = "foo";
      var arg_metadataId = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf("/developerMetadata/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/developerMetadata/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_metadataId"));

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
        var resp = convert.json.encode(buildDeveloperMetadata());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_spreadsheetId, arg_metadataId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeveloperMetadata(response);
      })));
    });

    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsDeveloperMetadataResourceApi res =
          new api.SheetsApi(mock).spreadsheets.developerMetadata;
      var arg_request = buildSearchDeveloperMetadataRequest();
      var arg_spreadsheetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SearchDeveloperMetadataRequest.fromJson(json);
        checkSearchDeveloperMetadataRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf("/developerMetadata:search", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/developerMetadata:search"));
        pathOffset += 25;

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
        var resp = convert.json.encode(buildSearchDeveloperMetadataResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_request, arg_spreadsheetId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchDeveloperMetadataResponse(response);
      })));
    });
  });

  unittest.group("resource-SpreadsheetsSheetsResourceApi", () {
    unittest.test("method--copyTo", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsSheetsResourceApi res =
          new api.SheetsApi(mock).spreadsheets.sheets;
      var arg_request = buildCopySheetToAnotherSpreadsheetRequest();
      var arg_spreadsheetId = "foo";
      var arg_sheetId = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CopySheetToAnotherSpreadsheetRequest.fromJson(json);
        checkCopySheetToAnotherSpreadsheetRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf("/sheets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/sheets/"));
        pathOffset += 8;
        index = path.indexOf(":copyTo", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_sheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":copyTo"));
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
        var resp = convert.json.encode(buildSheetProperties());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .copyTo(arg_request, arg_spreadsheetId, arg_sheetId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSheetProperties(response);
      })));
    });
  });

  unittest.group("resource-SpreadsheetsValuesResourceApi", () {
    unittest.test("method--append", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsValuesResourceApi res =
          new api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildValueRange();
      var arg_spreadsheetId = "foo";
      var arg_range = "foo";
      var arg_responseValueRenderOption = "foo";
      var arg_insertDataOption = "foo";
      var arg_valueInputOption = "foo";
      var arg_responseDateTimeRenderOption = "foo";
      var arg_includeValuesInResponse = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ValueRange.fromJson(json);
        checkValueRange(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf("/values/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/values/"));
        pathOffset += 8;
        index = path.indexOf(":append", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_range"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":append"));
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
        unittest.expect(queryMap["responseValueRenderOption"].first,
            unittest.equals(arg_responseValueRenderOption));
        unittest.expect(queryMap["insertDataOption"].first,
            unittest.equals(arg_insertDataOption));
        unittest.expect(queryMap["valueInputOption"].first,
            unittest.equals(arg_valueInputOption));
        unittest.expect(queryMap["responseDateTimeRenderOption"].first,
            unittest.equals(arg_responseDateTimeRenderOption));
        unittest.expect(queryMap["includeValuesInResponse"].first,
            unittest.equals("$arg_includeValuesInResponse"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAppendValuesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .append(arg_request, arg_spreadsheetId, arg_range,
              responseValueRenderOption: arg_responseValueRenderOption,
              insertDataOption: arg_insertDataOption,
              valueInputOption: arg_valueInputOption,
              responseDateTimeRenderOption: arg_responseDateTimeRenderOption,
              includeValuesInResponse: arg_includeValuesInResponse,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppendValuesResponse(response);
      })));
    });

    unittest.test("method--batchClear", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsValuesResourceApi res =
          new api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildBatchClearValuesRequest();
      var arg_spreadsheetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchClearValuesRequest.fromJson(json);
        checkBatchClearValuesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf("/values:batchClear", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/values:batchClear"));
        pathOffset += 18;

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
        var resp = convert.json.encode(buildBatchClearValuesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchClear(arg_request, arg_spreadsheetId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchClearValuesResponse(response);
      })));
    });

    unittest.test("method--batchClearByDataFilter", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsValuesResourceApi res =
          new api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildBatchClearValuesByDataFilterRequest();
      var arg_spreadsheetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchClearValuesByDataFilterRequest.fromJson(json);
        checkBatchClearValuesByDataFilterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf("/values:batchClearByDataFilter", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("/values:batchClearByDataFilter"));
        pathOffset += 30;

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
        var resp =
            convert.json.encode(buildBatchClearValuesByDataFilterResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchClearByDataFilter(arg_request, arg_spreadsheetId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchClearValuesByDataFilterResponse(response);
      })));
    });

    unittest.test("method--batchGet", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsValuesResourceApi res =
          new api.SheetsApi(mock).spreadsheets.values;
      var arg_spreadsheetId = "foo";
      var arg_ranges = buildUnnamed4059();
      var arg_majorDimension = "foo";
      var arg_valueRenderOption = "foo";
      var arg_dateTimeRenderOption = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf("/values:batchGet", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/values:batchGet"));
        pathOffset += 16;

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
        unittest.expect(queryMap["ranges"], unittest.equals(arg_ranges));
        unittest.expect(queryMap["majorDimension"].first,
            unittest.equals(arg_majorDimension));
        unittest.expect(queryMap["valueRenderOption"].first,
            unittest.equals(arg_valueRenderOption));
        unittest.expect(queryMap["dateTimeRenderOption"].first,
            unittest.equals(arg_dateTimeRenderOption));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBatchGetValuesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGet(arg_spreadsheetId,
              ranges: arg_ranges,
              majorDimension: arg_majorDimension,
              valueRenderOption: arg_valueRenderOption,
              dateTimeRenderOption: arg_dateTimeRenderOption,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchGetValuesResponse(response);
      })));
    });

    unittest.test("method--batchGetByDataFilter", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsValuesResourceApi res =
          new api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildBatchGetValuesByDataFilterRequest();
      var arg_spreadsheetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchGetValuesByDataFilterRequest.fromJson(json);
        checkBatchGetValuesByDataFilterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf("/values:batchGetByDataFilter", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("/values:batchGetByDataFilter"));
        pathOffset += 28;

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
        var resp =
            convert.json.encode(buildBatchGetValuesByDataFilterResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGetByDataFilter(arg_request, arg_spreadsheetId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchGetValuesByDataFilterResponse(response);
      })));
    });

    unittest.test("method--batchUpdate", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsValuesResourceApi res =
          new api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildBatchUpdateValuesRequest();
      var arg_spreadsheetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchUpdateValuesRequest.fromJson(json);
        checkBatchUpdateValuesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf("/values:batchUpdate", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/values:batchUpdate"));
        pathOffset += 19;

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
        var resp = convert.json.encode(buildBatchUpdateValuesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_spreadsheetId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchUpdateValuesResponse(response);
      })));
    });

    unittest.test("method--batchUpdateByDataFilter", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsValuesResourceApi res =
          new api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildBatchUpdateValuesByDataFilterRequest();
      var arg_spreadsheetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchUpdateValuesByDataFilterRequest.fromJson(json);
        checkBatchUpdateValuesByDataFilterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf("/values:batchUpdateByDataFilter", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("/values:batchUpdateByDataFilter"));
        pathOffset += 31;

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
        var resp =
            convert.json.encode(buildBatchUpdateValuesByDataFilterResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdateByDataFilter(arg_request, arg_spreadsheetId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchUpdateValuesByDataFilterResponse(response);
      })));
    });

    unittest.test("method--clear", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsValuesResourceApi res =
          new api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildClearValuesRequest();
      var arg_spreadsheetId = "foo";
      var arg_range = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ClearValuesRequest.fromJson(json);
        checkClearValuesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf("/values/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/values/"));
        pathOffset += 8;
        index = path.indexOf(":clear", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_range"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals(":clear"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildClearValuesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .clear(arg_request, arg_spreadsheetId, arg_range,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkClearValuesResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsValuesResourceApi res =
          new api.SheetsApi(mock).spreadsheets.values;
      var arg_spreadsheetId = "foo";
      var arg_range = "foo";
      var arg_majorDimension = "foo";
      var arg_valueRenderOption = "foo";
      var arg_dateTimeRenderOption = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf("/values/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/values/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_range"));

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
        unittest.expect(queryMap["majorDimension"].first,
            unittest.equals(arg_majorDimension));
        unittest.expect(queryMap["valueRenderOption"].first,
            unittest.equals(arg_valueRenderOption));
        unittest.expect(queryMap["dateTimeRenderOption"].first,
            unittest.equals(arg_dateTimeRenderOption));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildValueRange());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_spreadsheetId, arg_range,
              majorDimension: arg_majorDimension,
              valueRenderOption: arg_valueRenderOption,
              dateTimeRenderOption: arg_dateTimeRenderOption,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkValueRange(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.SpreadsheetsValuesResourceApi res =
          new api.SheetsApi(mock).spreadsheets.values;
      var arg_request = buildValueRange();
      var arg_spreadsheetId = "foo";
      var arg_range = "foo";
      var arg_valueInputOption = "foo";
      var arg_responseDateTimeRenderOption = "foo";
      var arg_includeValuesInResponse = true;
      var arg_responseValueRenderOption = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ValueRange.fromJson(json);
        checkValueRange(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v4/spreadsheets/"));
        pathOffset += 16;
        index = path.indexOf("/values/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_spreadsheetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/values/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_range"));

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
        unittest.expect(queryMap["valueInputOption"].first,
            unittest.equals(arg_valueInputOption));
        unittest.expect(queryMap["responseDateTimeRenderOption"].first,
            unittest.equals(arg_responseDateTimeRenderOption));
        unittest.expect(queryMap["includeValuesInResponse"].first,
            unittest.equals("$arg_includeValuesInResponse"));
        unittest.expect(queryMap["responseValueRenderOption"].first,
            unittest.equals(arg_responseValueRenderOption));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildUpdateValuesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_spreadsheetId, arg_range,
              valueInputOption: arg_valueInputOption,
              responseDateTimeRenderOption: arg_responseDateTimeRenderOption,
              includeValuesInResponse: arg_includeValuesInResponse,
              responseValueRenderOption: arg_responseValueRenderOption,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUpdateValuesResponse(response);
      })));
    });
  });
}
