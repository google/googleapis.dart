library googleapis.analyticsreporting.v4.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/analyticsreporting/v4.dart' as api;

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

core.int buildCounterCohort = 0;
buildCohort() {
  var o = new api.Cohort();
  buildCounterCohort++;
  if (buildCounterCohort < 3) {
    o.dateRange = buildDateRange();
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterCohort--;
  return o;
}

checkCohort(api.Cohort o) {
  buildCounterCohort++;
  if (buildCounterCohort < 3) {
    checkDateRange(o.dateRange);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCohort--;
}

buildUnnamed3502() {
  var o = new core.List<api.Cohort>();
  o.add(buildCohort());
  o.add(buildCohort());
  return o;
}

checkUnnamed3502(core.List<api.Cohort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCohort(o[0]);
  checkCohort(o[1]);
}

core.int buildCounterCohortGroup = 0;
buildCohortGroup() {
  var o = new api.CohortGroup();
  buildCounterCohortGroup++;
  if (buildCounterCohortGroup < 3) {
    o.cohorts = buildUnnamed3502();
    o.lifetimeValue = true;
  }
  buildCounterCohortGroup--;
  return o;
}

checkCohortGroup(api.CohortGroup o) {
  buildCounterCohortGroup++;
  if (buildCounterCohortGroup < 3) {
    checkUnnamed3502(o.cohorts);
    unittest.expect(o.lifetimeValue, unittest.isTrue);
  }
  buildCounterCohortGroup--;
}

buildUnnamed3503() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3503(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterColumnHeader = 0;
buildColumnHeader() {
  var o = new api.ColumnHeader();
  buildCounterColumnHeader++;
  if (buildCounterColumnHeader < 3) {
    o.dimensions = buildUnnamed3503();
    o.metricHeader = buildMetricHeader();
  }
  buildCounterColumnHeader--;
  return o;
}

checkColumnHeader(api.ColumnHeader o) {
  buildCounterColumnHeader++;
  if (buildCounterColumnHeader < 3) {
    checkUnnamed3503(o.dimensions);
    checkMetricHeader(o.metricHeader);
  }
  buildCounterColumnHeader--;
}

core.int buildCounterDateRange = 0;
buildDateRange() {
  var o = new api.DateRange();
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    o.endDate = "foo";
    o.startDate = "foo";
  }
  buildCounterDateRange--;
  return o;
}

checkDateRange(api.DateRange o) {
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    unittest.expect(o.endDate, unittest.equals('foo'));
    unittest.expect(o.startDate, unittest.equals('foo'));
  }
  buildCounterDateRange--;
}

buildUnnamed3504() {
  var o = new core.List<api.PivotValueRegion>();
  o.add(buildPivotValueRegion());
  o.add(buildPivotValueRegion());
  return o;
}

checkUnnamed3504(core.List<api.PivotValueRegion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotValueRegion(o[0]);
  checkPivotValueRegion(o[1]);
}

buildUnnamed3505() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3505(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDateRangeValues = 0;
buildDateRangeValues() {
  var o = new api.DateRangeValues();
  buildCounterDateRangeValues++;
  if (buildCounterDateRangeValues < 3) {
    o.pivotValueRegions = buildUnnamed3504();
    o.values = buildUnnamed3505();
  }
  buildCounterDateRangeValues--;
  return o;
}

checkDateRangeValues(api.DateRangeValues o) {
  buildCounterDateRangeValues++;
  if (buildCounterDateRangeValues < 3) {
    checkUnnamed3504(o.pivotValueRegions);
    checkUnnamed3505(o.values);
  }
  buildCounterDateRangeValues--;
}

buildUnnamed3506() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3506(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDimension = 0;
buildDimension() {
  var o = new api.Dimension();
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    o.histogramBuckets = buildUnnamed3506();
    o.name = "foo";
  }
  buildCounterDimension--;
  return o;
}

checkDimension(api.Dimension o) {
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    checkUnnamed3506(o.histogramBuckets);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterDimension--;
}

buildUnnamed3507() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3507(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDimensionFilter = 0;
buildDimensionFilter() {
  var o = new api.DimensionFilter();
  buildCounterDimensionFilter++;
  if (buildCounterDimensionFilter < 3) {
    o.caseSensitive = true;
    o.dimensionName = "foo";
    o.expressions = buildUnnamed3507();
    o.not = true;
    o.operator = "foo";
  }
  buildCounterDimensionFilter--;
  return o;
}

checkDimensionFilter(api.DimensionFilter o) {
  buildCounterDimensionFilter++;
  if (buildCounterDimensionFilter < 3) {
    unittest.expect(o.caseSensitive, unittest.isTrue);
    unittest.expect(o.dimensionName, unittest.equals('foo'));
    checkUnnamed3507(o.expressions);
    unittest.expect(o.not, unittest.isTrue);
    unittest.expect(o.operator, unittest.equals('foo'));
  }
  buildCounterDimensionFilter--;
}

buildUnnamed3508() {
  var o = new core.List<api.DimensionFilter>();
  o.add(buildDimensionFilter());
  o.add(buildDimensionFilter());
  return o;
}

checkUnnamed3508(core.List<api.DimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionFilter(o[0]);
  checkDimensionFilter(o[1]);
}

core.int buildCounterDimensionFilterClause = 0;
buildDimensionFilterClause() {
  var o = new api.DimensionFilterClause();
  buildCounterDimensionFilterClause++;
  if (buildCounterDimensionFilterClause < 3) {
    o.filters = buildUnnamed3508();
    o.operator = "foo";
  }
  buildCounterDimensionFilterClause--;
  return o;
}

checkDimensionFilterClause(api.DimensionFilterClause o) {
  buildCounterDimensionFilterClause++;
  if (buildCounterDimensionFilterClause < 3) {
    checkUnnamed3508(o.filters);
    unittest.expect(o.operator, unittest.equals('foo'));
  }
  buildCounterDimensionFilterClause--;
}

core.int buildCounterDynamicSegment = 0;
buildDynamicSegment() {
  var o = new api.DynamicSegment();
  buildCounterDynamicSegment++;
  if (buildCounterDynamicSegment < 3) {
    o.name = "foo";
    o.sessionSegment = buildSegmentDefinition();
    o.userSegment = buildSegmentDefinition();
  }
  buildCounterDynamicSegment--;
  return o;
}

checkDynamicSegment(api.DynamicSegment o) {
  buildCounterDynamicSegment++;
  if (buildCounterDynamicSegment < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkSegmentDefinition(o.sessionSegment);
    checkSegmentDefinition(o.userSegment);
  }
  buildCounterDynamicSegment--;
}

buildUnnamed3509() {
  var o = new core.List<api.ReportRequest>();
  o.add(buildReportRequest());
  o.add(buildReportRequest());
  return o;
}

checkUnnamed3509(core.List<api.ReportRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRequest(o[0]);
  checkReportRequest(o[1]);
}

core.int buildCounterGetReportsRequest = 0;
buildGetReportsRequest() {
  var o = new api.GetReportsRequest();
  buildCounterGetReportsRequest++;
  if (buildCounterGetReportsRequest < 3) {
    o.reportRequests = buildUnnamed3509();
    o.useResourceQuotas = true;
  }
  buildCounterGetReportsRequest--;
  return o;
}

checkGetReportsRequest(api.GetReportsRequest o) {
  buildCounterGetReportsRequest++;
  if (buildCounterGetReportsRequest < 3) {
    checkUnnamed3509(o.reportRequests);
    unittest.expect(o.useResourceQuotas, unittest.isTrue);
  }
  buildCounterGetReportsRequest--;
}

buildUnnamed3510() {
  var o = new core.List<api.Report>();
  o.add(buildReport());
  o.add(buildReport());
  return o;
}

checkUnnamed3510(core.List<api.Report> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReport(o[0]);
  checkReport(o[1]);
}

core.int buildCounterGetReportsResponse = 0;
buildGetReportsResponse() {
  var o = new api.GetReportsResponse();
  buildCounterGetReportsResponse++;
  if (buildCounterGetReportsResponse < 3) {
    o.queryCost = 42;
    o.reports = buildUnnamed3510();
    o.resourceQuotasRemaining = buildResourceQuotasRemaining();
  }
  buildCounterGetReportsResponse--;
  return o;
}

checkGetReportsResponse(api.GetReportsResponse o) {
  buildCounterGetReportsResponse++;
  if (buildCounterGetReportsResponse < 3) {
    unittest.expect(o.queryCost, unittest.equals(42));
    checkUnnamed3510(o.reports);
    checkResourceQuotasRemaining(o.resourceQuotasRemaining);
  }
  buildCounterGetReportsResponse--;
}

core.int buildCounterMetric = 0;
buildMetric() {
  var o = new api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.alias = "foo";
    o.expression = "foo";
    o.formattingType = "foo";
  }
  buildCounterMetric--;
  return o;
}

checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    unittest.expect(o.alias, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.formattingType, unittest.equals('foo'));
  }
  buildCounterMetric--;
}

core.int buildCounterMetricFilter = 0;
buildMetricFilter() {
  var o = new api.MetricFilter();
  buildCounterMetricFilter++;
  if (buildCounterMetricFilter < 3) {
    o.comparisonValue = "foo";
    o.metricName = "foo";
    o.not = true;
    o.operator = "foo";
  }
  buildCounterMetricFilter--;
  return o;
}

checkMetricFilter(api.MetricFilter o) {
  buildCounterMetricFilter++;
  if (buildCounterMetricFilter < 3) {
    unittest.expect(o.comparisonValue, unittest.equals('foo'));
    unittest.expect(o.metricName, unittest.equals('foo'));
    unittest.expect(o.not, unittest.isTrue);
    unittest.expect(o.operator, unittest.equals('foo'));
  }
  buildCounterMetricFilter--;
}

buildUnnamed3511() {
  var o = new core.List<api.MetricFilter>();
  o.add(buildMetricFilter());
  o.add(buildMetricFilter());
  return o;
}

checkUnnamed3511(core.List<api.MetricFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricFilter(o[0]);
  checkMetricFilter(o[1]);
}

core.int buildCounterMetricFilterClause = 0;
buildMetricFilterClause() {
  var o = new api.MetricFilterClause();
  buildCounterMetricFilterClause++;
  if (buildCounterMetricFilterClause < 3) {
    o.filters = buildUnnamed3511();
    o.operator = "foo";
  }
  buildCounterMetricFilterClause--;
  return o;
}

checkMetricFilterClause(api.MetricFilterClause o) {
  buildCounterMetricFilterClause++;
  if (buildCounterMetricFilterClause < 3) {
    checkUnnamed3511(o.filters);
    unittest.expect(o.operator, unittest.equals('foo'));
  }
  buildCounterMetricFilterClause--;
}

buildUnnamed3512() {
  var o = new core.List<api.MetricHeaderEntry>();
  o.add(buildMetricHeaderEntry());
  o.add(buildMetricHeaderEntry());
  return o;
}

checkUnnamed3512(core.List<api.MetricHeaderEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricHeaderEntry(o[0]);
  checkMetricHeaderEntry(o[1]);
}

buildUnnamed3513() {
  var o = new core.List<api.PivotHeader>();
  o.add(buildPivotHeader());
  o.add(buildPivotHeader());
  return o;
}

checkUnnamed3513(core.List<api.PivotHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotHeader(o[0]);
  checkPivotHeader(o[1]);
}

core.int buildCounterMetricHeader = 0;
buildMetricHeader() {
  var o = new api.MetricHeader();
  buildCounterMetricHeader++;
  if (buildCounterMetricHeader < 3) {
    o.metricHeaderEntries = buildUnnamed3512();
    o.pivotHeaders = buildUnnamed3513();
  }
  buildCounterMetricHeader--;
  return o;
}

checkMetricHeader(api.MetricHeader o) {
  buildCounterMetricHeader++;
  if (buildCounterMetricHeader < 3) {
    checkUnnamed3512(o.metricHeaderEntries);
    checkUnnamed3513(o.pivotHeaders);
  }
  buildCounterMetricHeader--;
}

core.int buildCounterMetricHeaderEntry = 0;
buildMetricHeaderEntry() {
  var o = new api.MetricHeaderEntry();
  buildCounterMetricHeaderEntry++;
  if (buildCounterMetricHeaderEntry < 3) {
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterMetricHeaderEntry--;
  return o;
}

checkMetricHeaderEntry(api.MetricHeaderEntry o) {
  buildCounterMetricHeaderEntry++;
  if (buildCounterMetricHeaderEntry < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterMetricHeaderEntry--;
}

buildUnnamed3514() {
  var o = new core.List<api.SegmentFilterClause>();
  o.add(buildSegmentFilterClause());
  o.add(buildSegmentFilterClause());
  return o;
}

checkUnnamed3514(core.List<api.SegmentFilterClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegmentFilterClause(o[0]);
  checkSegmentFilterClause(o[1]);
}

core.int buildCounterOrFiltersForSegment = 0;
buildOrFiltersForSegment() {
  var o = new api.OrFiltersForSegment();
  buildCounterOrFiltersForSegment++;
  if (buildCounterOrFiltersForSegment < 3) {
    o.segmentFilterClauses = buildUnnamed3514();
  }
  buildCounterOrFiltersForSegment--;
  return o;
}

checkOrFiltersForSegment(api.OrFiltersForSegment o) {
  buildCounterOrFiltersForSegment++;
  if (buildCounterOrFiltersForSegment < 3) {
    checkUnnamed3514(o.segmentFilterClauses);
  }
  buildCounterOrFiltersForSegment--;
}

core.int buildCounterOrderBy = 0;
buildOrderBy() {
  var o = new api.OrderBy();
  buildCounterOrderBy++;
  if (buildCounterOrderBy < 3) {
    o.fieldName = "foo";
    o.orderType = "foo";
    o.sortOrder = "foo";
  }
  buildCounterOrderBy--;
  return o;
}

checkOrderBy(api.OrderBy o) {
  buildCounterOrderBy++;
  if (buildCounterOrderBy < 3) {
    unittest.expect(o.fieldName, unittest.equals('foo'));
    unittest.expect(o.orderType, unittest.equals('foo'));
    unittest.expect(o.sortOrder, unittest.equals('foo'));
  }
  buildCounterOrderBy--;
}

buildUnnamed3515() {
  var o = new core.List<api.DimensionFilterClause>();
  o.add(buildDimensionFilterClause());
  o.add(buildDimensionFilterClause());
  return o;
}

checkUnnamed3515(core.List<api.DimensionFilterClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionFilterClause(o[0]);
  checkDimensionFilterClause(o[1]);
}

buildUnnamed3516() {
  var o = new core.List<api.Dimension>();
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

checkUnnamed3516(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

buildUnnamed3517() {
  var o = new core.List<api.Metric>();
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

checkUnnamed3517(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterPivot = 0;
buildPivot() {
  var o = new api.Pivot();
  buildCounterPivot++;
  if (buildCounterPivot < 3) {
    o.dimensionFilterClauses = buildUnnamed3515();
    o.dimensions = buildUnnamed3516();
    o.maxGroupCount = 42;
    o.metrics = buildUnnamed3517();
    o.startGroup = 42;
  }
  buildCounterPivot--;
  return o;
}

checkPivot(api.Pivot o) {
  buildCounterPivot++;
  if (buildCounterPivot < 3) {
    checkUnnamed3515(o.dimensionFilterClauses);
    checkUnnamed3516(o.dimensions);
    unittest.expect(o.maxGroupCount, unittest.equals(42));
    checkUnnamed3517(o.metrics);
    unittest.expect(o.startGroup, unittest.equals(42));
  }
  buildCounterPivot--;
}

buildUnnamed3518() {
  var o = new core.List<api.PivotHeaderEntry>();
  o.add(buildPivotHeaderEntry());
  o.add(buildPivotHeaderEntry());
  return o;
}

checkUnnamed3518(core.List<api.PivotHeaderEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotHeaderEntry(o[0]);
  checkPivotHeaderEntry(o[1]);
}

core.int buildCounterPivotHeader = 0;
buildPivotHeader() {
  var o = new api.PivotHeader();
  buildCounterPivotHeader++;
  if (buildCounterPivotHeader < 3) {
    o.pivotHeaderEntries = buildUnnamed3518();
    o.totalPivotGroupsCount = 42;
  }
  buildCounterPivotHeader--;
  return o;
}

checkPivotHeader(api.PivotHeader o) {
  buildCounterPivotHeader++;
  if (buildCounterPivotHeader < 3) {
    checkUnnamed3518(o.pivotHeaderEntries);
    unittest.expect(o.totalPivotGroupsCount, unittest.equals(42));
  }
  buildCounterPivotHeader--;
}

buildUnnamed3519() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3519(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3520() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3520(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPivotHeaderEntry = 0;
buildPivotHeaderEntry() {
  var o = new api.PivotHeaderEntry();
  buildCounterPivotHeaderEntry++;
  if (buildCounterPivotHeaderEntry < 3) {
    o.dimensionNames = buildUnnamed3519();
    o.dimensionValues = buildUnnamed3520();
    o.metric = buildMetricHeaderEntry();
  }
  buildCounterPivotHeaderEntry--;
  return o;
}

checkPivotHeaderEntry(api.PivotHeaderEntry o) {
  buildCounterPivotHeaderEntry++;
  if (buildCounterPivotHeaderEntry < 3) {
    checkUnnamed3519(o.dimensionNames);
    checkUnnamed3520(o.dimensionValues);
    checkMetricHeaderEntry(o.metric);
  }
  buildCounterPivotHeaderEntry--;
}

buildUnnamed3521() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3521(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPivotValueRegion = 0;
buildPivotValueRegion() {
  var o = new api.PivotValueRegion();
  buildCounterPivotValueRegion++;
  if (buildCounterPivotValueRegion < 3) {
    o.values = buildUnnamed3521();
  }
  buildCounterPivotValueRegion--;
  return o;
}

checkPivotValueRegion(api.PivotValueRegion o) {
  buildCounterPivotValueRegion++;
  if (buildCounterPivotValueRegion < 3) {
    checkUnnamed3521(o.values);
  }
  buildCounterPivotValueRegion--;
}

core.int buildCounterReport = 0;
buildReport() {
  var o = new api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.columnHeader = buildColumnHeader();
    o.data = buildReportData();
    o.nextPageToken = "foo";
  }
  buildCounterReport--;
  return o;
}

checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    checkColumnHeader(o.columnHeader);
    checkReportData(o.data);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterReport--;
}

buildUnnamed3522() {
  var o = new core.List<api.DateRangeValues>();
  o.add(buildDateRangeValues());
  o.add(buildDateRangeValues());
  return o;
}

checkUnnamed3522(core.List<api.DateRangeValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRangeValues(o[0]);
  checkDateRangeValues(o[1]);
}

buildUnnamed3523() {
  var o = new core.List<api.DateRangeValues>();
  o.add(buildDateRangeValues());
  o.add(buildDateRangeValues());
  return o;
}

checkUnnamed3523(core.List<api.DateRangeValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRangeValues(o[0]);
  checkDateRangeValues(o[1]);
}

buildUnnamed3524() {
  var o = new core.List<api.ReportRow>();
  o.add(buildReportRow());
  o.add(buildReportRow());
  return o;
}

checkUnnamed3524(core.List<api.ReportRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRow(o[0]);
  checkReportRow(o[1]);
}

buildUnnamed3525() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3525(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3526() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3526(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3527() {
  var o = new core.List<api.DateRangeValues>();
  o.add(buildDateRangeValues());
  o.add(buildDateRangeValues());
  return o;
}

checkUnnamed3527(core.List<api.DateRangeValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRangeValues(o[0]);
  checkDateRangeValues(o[1]);
}

core.int buildCounterReportData = 0;
buildReportData() {
  var o = new api.ReportData();
  buildCounterReportData++;
  if (buildCounterReportData < 3) {
    o.dataLastRefreshed = "foo";
    o.isDataGolden = true;
    o.maximums = buildUnnamed3522();
    o.minimums = buildUnnamed3523();
    o.rowCount = 42;
    o.rows = buildUnnamed3524();
    o.samplesReadCounts = buildUnnamed3525();
    o.samplingSpaceSizes = buildUnnamed3526();
    o.totals = buildUnnamed3527();
  }
  buildCounterReportData--;
  return o;
}

checkReportData(api.ReportData o) {
  buildCounterReportData++;
  if (buildCounterReportData < 3) {
    unittest.expect(o.dataLastRefreshed, unittest.equals('foo'));
    unittest.expect(o.isDataGolden, unittest.isTrue);
    checkUnnamed3522(o.maximums);
    checkUnnamed3523(o.minimums);
    unittest.expect(o.rowCount, unittest.equals(42));
    checkUnnamed3524(o.rows);
    checkUnnamed3525(o.samplesReadCounts);
    checkUnnamed3526(o.samplingSpaceSizes);
    checkUnnamed3527(o.totals);
  }
  buildCounterReportData--;
}

buildUnnamed3528() {
  var o = new core.List<api.DateRange>();
  o.add(buildDateRange());
  o.add(buildDateRange());
  return o;
}

checkUnnamed3528(core.List<api.DateRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRange(o[0]);
  checkDateRange(o[1]);
}

buildUnnamed3529() {
  var o = new core.List<api.DimensionFilterClause>();
  o.add(buildDimensionFilterClause());
  o.add(buildDimensionFilterClause());
  return o;
}

checkUnnamed3529(core.List<api.DimensionFilterClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionFilterClause(o[0]);
  checkDimensionFilterClause(o[1]);
}

buildUnnamed3530() {
  var o = new core.List<api.Dimension>();
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

checkUnnamed3530(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

buildUnnamed3531() {
  var o = new core.List<api.MetricFilterClause>();
  o.add(buildMetricFilterClause());
  o.add(buildMetricFilterClause());
  return o;
}

checkUnnamed3531(core.List<api.MetricFilterClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricFilterClause(o[0]);
  checkMetricFilterClause(o[1]);
}

buildUnnamed3532() {
  var o = new core.List<api.Metric>();
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

checkUnnamed3532(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

buildUnnamed3533() {
  var o = new core.List<api.OrderBy>();
  o.add(buildOrderBy());
  o.add(buildOrderBy());
  return o;
}

checkUnnamed3533(core.List<api.OrderBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderBy(o[0]);
  checkOrderBy(o[1]);
}

buildUnnamed3534() {
  var o = new core.List<api.Pivot>();
  o.add(buildPivot());
  o.add(buildPivot());
  return o;
}

checkUnnamed3534(core.List<api.Pivot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivot(o[0]);
  checkPivot(o[1]);
}

buildUnnamed3535() {
  var o = new core.List<api.Segment>();
  o.add(buildSegment());
  o.add(buildSegment());
  return o;
}

checkUnnamed3535(core.List<api.Segment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegment(o[0]);
  checkSegment(o[1]);
}

core.int buildCounterReportRequest = 0;
buildReportRequest() {
  var o = new api.ReportRequest();
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    o.cohortGroup = buildCohortGroup();
    o.dateRanges = buildUnnamed3528();
    o.dimensionFilterClauses = buildUnnamed3529();
    o.dimensions = buildUnnamed3530();
    o.filtersExpression = "foo";
    o.hideTotals = true;
    o.hideValueRanges = true;
    o.includeEmptyRows = true;
    o.metricFilterClauses = buildUnnamed3531();
    o.metrics = buildUnnamed3532();
    o.orderBys = buildUnnamed3533();
    o.pageSize = 42;
    o.pageToken = "foo";
    o.pivots = buildUnnamed3534();
    o.samplingLevel = "foo";
    o.segments = buildUnnamed3535();
    o.viewId = "foo";
  }
  buildCounterReportRequest--;
  return o;
}

checkReportRequest(api.ReportRequest o) {
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    checkCohortGroup(o.cohortGroup);
    checkUnnamed3528(o.dateRanges);
    checkUnnamed3529(o.dimensionFilterClauses);
    checkUnnamed3530(o.dimensions);
    unittest.expect(o.filtersExpression, unittest.equals('foo'));
    unittest.expect(o.hideTotals, unittest.isTrue);
    unittest.expect(o.hideValueRanges, unittest.isTrue);
    unittest.expect(o.includeEmptyRows, unittest.isTrue);
    checkUnnamed3531(o.metricFilterClauses);
    checkUnnamed3532(o.metrics);
    checkUnnamed3533(o.orderBys);
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkUnnamed3534(o.pivots);
    unittest.expect(o.samplingLevel, unittest.equals('foo'));
    checkUnnamed3535(o.segments);
    unittest.expect(o.viewId, unittest.equals('foo'));
  }
  buildCounterReportRequest--;
}

buildUnnamed3536() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3536(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3537() {
  var o = new core.List<api.DateRangeValues>();
  o.add(buildDateRangeValues());
  o.add(buildDateRangeValues());
  return o;
}

checkUnnamed3537(core.List<api.DateRangeValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRangeValues(o[0]);
  checkDateRangeValues(o[1]);
}

core.int buildCounterReportRow = 0;
buildReportRow() {
  var o = new api.ReportRow();
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    o.dimensions = buildUnnamed3536();
    o.metrics = buildUnnamed3537();
  }
  buildCounterReportRow--;
  return o;
}

checkReportRow(api.ReportRow o) {
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    checkUnnamed3536(o.dimensions);
    checkUnnamed3537(o.metrics);
  }
  buildCounterReportRow--;
}

core.int buildCounterResourceQuotasRemaining = 0;
buildResourceQuotasRemaining() {
  var o = new api.ResourceQuotasRemaining();
  buildCounterResourceQuotasRemaining++;
  if (buildCounterResourceQuotasRemaining < 3) {
    o.dailyQuotaTokensRemaining = 42;
    o.hourlyQuotaTokensRemaining = 42;
  }
  buildCounterResourceQuotasRemaining--;
  return o;
}

checkResourceQuotasRemaining(api.ResourceQuotasRemaining o) {
  buildCounterResourceQuotasRemaining++;
  if (buildCounterResourceQuotasRemaining < 3) {
    unittest.expect(o.dailyQuotaTokensRemaining, unittest.equals(42));
    unittest.expect(o.hourlyQuotaTokensRemaining, unittest.equals(42));
  }
  buildCounterResourceQuotasRemaining--;
}

core.int buildCounterSegment = 0;
buildSegment() {
  var o = new api.Segment();
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    o.dynamicSegment = buildDynamicSegment();
    o.segmentId = "foo";
  }
  buildCounterSegment--;
  return o;
}

checkSegment(api.Segment o) {
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    checkDynamicSegment(o.dynamicSegment);
    unittest.expect(o.segmentId, unittest.equals('foo'));
  }
  buildCounterSegment--;
}

buildUnnamed3538() {
  var o = new core.List<api.SegmentFilter>();
  o.add(buildSegmentFilter());
  o.add(buildSegmentFilter());
  return o;
}

checkUnnamed3538(core.List<api.SegmentFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegmentFilter(o[0]);
  checkSegmentFilter(o[1]);
}

core.int buildCounterSegmentDefinition = 0;
buildSegmentDefinition() {
  var o = new api.SegmentDefinition();
  buildCounterSegmentDefinition++;
  if (buildCounterSegmentDefinition < 3) {
    o.segmentFilters = buildUnnamed3538();
  }
  buildCounterSegmentDefinition--;
  return o;
}

checkSegmentDefinition(api.SegmentDefinition o) {
  buildCounterSegmentDefinition++;
  if (buildCounterSegmentDefinition < 3) {
    checkUnnamed3538(o.segmentFilters);
  }
  buildCounterSegmentDefinition--;
}

buildUnnamed3539() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3539(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSegmentDimensionFilter = 0;
buildSegmentDimensionFilter() {
  var o = new api.SegmentDimensionFilter();
  buildCounterSegmentDimensionFilter++;
  if (buildCounterSegmentDimensionFilter < 3) {
    o.caseSensitive = true;
    o.dimensionName = "foo";
    o.expressions = buildUnnamed3539();
    o.maxComparisonValue = "foo";
    o.minComparisonValue = "foo";
    o.operator = "foo";
  }
  buildCounterSegmentDimensionFilter--;
  return o;
}

checkSegmentDimensionFilter(api.SegmentDimensionFilter o) {
  buildCounterSegmentDimensionFilter++;
  if (buildCounterSegmentDimensionFilter < 3) {
    unittest.expect(o.caseSensitive, unittest.isTrue);
    unittest.expect(o.dimensionName, unittest.equals('foo'));
    checkUnnamed3539(o.expressions);
    unittest.expect(o.maxComparisonValue, unittest.equals('foo'));
    unittest.expect(o.minComparisonValue, unittest.equals('foo'));
    unittest.expect(o.operator, unittest.equals('foo'));
  }
  buildCounterSegmentDimensionFilter--;
}

core.int buildCounterSegmentFilter = 0;
buildSegmentFilter() {
  var o = new api.SegmentFilter();
  buildCounterSegmentFilter++;
  if (buildCounterSegmentFilter < 3) {
    o.not = true;
    o.sequenceSegment = buildSequenceSegment();
    o.simpleSegment = buildSimpleSegment();
  }
  buildCounterSegmentFilter--;
  return o;
}

checkSegmentFilter(api.SegmentFilter o) {
  buildCounterSegmentFilter++;
  if (buildCounterSegmentFilter < 3) {
    unittest.expect(o.not, unittest.isTrue);
    checkSequenceSegment(o.sequenceSegment);
    checkSimpleSegment(o.simpleSegment);
  }
  buildCounterSegmentFilter--;
}

core.int buildCounterSegmentFilterClause = 0;
buildSegmentFilterClause() {
  var o = new api.SegmentFilterClause();
  buildCounterSegmentFilterClause++;
  if (buildCounterSegmentFilterClause < 3) {
    o.dimensionFilter = buildSegmentDimensionFilter();
    o.metricFilter = buildSegmentMetricFilter();
    o.not = true;
  }
  buildCounterSegmentFilterClause--;
  return o;
}

checkSegmentFilterClause(api.SegmentFilterClause o) {
  buildCounterSegmentFilterClause++;
  if (buildCounterSegmentFilterClause < 3) {
    checkSegmentDimensionFilter(o.dimensionFilter);
    checkSegmentMetricFilter(o.metricFilter);
    unittest.expect(o.not, unittest.isTrue);
  }
  buildCounterSegmentFilterClause--;
}

core.int buildCounterSegmentMetricFilter = 0;
buildSegmentMetricFilter() {
  var o = new api.SegmentMetricFilter();
  buildCounterSegmentMetricFilter++;
  if (buildCounterSegmentMetricFilter < 3) {
    o.comparisonValue = "foo";
    o.maxComparisonValue = "foo";
    o.metricName = "foo";
    o.operator = "foo";
    o.scope = "foo";
  }
  buildCounterSegmentMetricFilter--;
  return o;
}

checkSegmentMetricFilter(api.SegmentMetricFilter o) {
  buildCounterSegmentMetricFilter++;
  if (buildCounterSegmentMetricFilter < 3) {
    unittest.expect(o.comparisonValue, unittest.equals('foo'));
    unittest.expect(o.maxComparisonValue, unittest.equals('foo'));
    unittest.expect(o.metricName, unittest.equals('foo'));
    unittest.expect(o.operator, unittest.equals('foo'));
    unittest.expect(o.scope, unittest.equals('foo'));
  }
  buildCounterSegmentMetricFilter--;
}

buildUnnamed3540() {
  var o = new core.List<api.OrFiltersForSegment>();
  o.add(buildOrFiltersForSegment());
  o.add(buildOrFiltersForSegment());
  return o;
}

checkUnnamed3540(core.List<api.OrFiltersForSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrFiltersForSegment(o[0]);
  checkOrFiltersForSegment(o[1]);
}

core.int buildCounterSegmentSequenceStep = 0;
buildSegmentSequenceStep() {
  var o = new api.SegmentSequenceStep();
  buildCounterSegmentSequenceStep++;
  if (buildCounterSegmentSequenceStep < 3) {
    o.matchType = "foo";
    o.orFiltersForSegment = buildUnnamed3540();
  }
  buildCounterSegmentSequenceStep--;
  return o;
}

checkSegmentSequenceStep(api.SegmentSequenceStep o) {
  buildCounterSegmentSequenceStep++;
  if (buildCounterSegmentSequenceStep < 3) {
    unittest.expect(o.matchType, unittest.equals('foo'));
    checkUnnamed3540(o.orFiltersForSegment);
  }
  buildCounterSegmentSequenceStep--;
}

buildUnnamed3541() {
  var o = new core.List<api.SegmentSequenceStep>();
  o.add(buildSegmentSequenceStep());
  o.add(buildSegmentSequenceStep());
  return o;
}

checkUnnamed3541(core.List<api.SegmentSequenceStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegmentSequenceStep(o[0]);
  checkSegmentSequenceStep(o[1]);
}

core.int buildCounterSequenceSegment = 0;
buildSequenceSegment() {
  var o = new api.SequenceSegment();
  buildCounterSequenceSegment++;
  if (buildCounterSequenceSegment < 3) {
    o.firstStepShouldMatchFirstHit = true;
    o.segmentSequenceSteps = buildUnnamed3541();
  }
  buildCounterSequenceSegment--;
  return o;
}

checkSequenceSegment(api.SequenceSegment o) {
  buildCounterSequenceSegment++;
  if (buildCounterSequenceSegment < 3) {
    unittest.expect(o.firstStepShouldMatchFirstHit, unittest.isTrue);
    checkUnnamed3541(o.segmentSequenceSteps);
  }
  buildCounterSequenceSegment--;
}

buildUnnamed3542() {
  var o = new core.List<api.OrFiltersForSegment>();
  o.add(buildOrFiltersForSegment());
  o.add(buildOrFiltersForSegment());
  return o;
}

checkUnnamed3542(core.List<api.OrFiltersForSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrFiltersForSegment(o[0]);
  checkOrFiltersForSegment(o[1]);
}

core.int buildCounterSimpleSegment = 0;
buildSimpleSegment() {
  var o = new api.SimpleSegment();
  buildCounterSimpleSegment++;
  if (buildCounterSimpleSegment < 3) {
    o.orFiltersForSegment = buildUnnamed3542();
  }
  buildCounterSimpleSegment--;
  return o;
}

checkSimpleSegment(api.SimpleSegment o) {
  buildCounterSimpleSegment++;
  if (buildCounterSimpleSegment < 3) {
    checkUnnamed3542(o.orFiltersForSegment);
  }
  buildCounterSimpleSegment--;
}

main() {
  unittest.group("obj-schema-Cohort", () {
    unittest.test("to-json--from-json", () {
      var o = buildCohort();
      var od = new api.Cohort.fromJson(o.toJson());
      checkCohort(od);
    });
  });

  unittest.group("obj-schema-CohortGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildCohortGroup();
      var od = new api.CohortGroup.fromJson(o.toJson());
      checkCohortGroup(od);
    });
  });

  unittest.group("obj-schema-ColumnHeader", () {
    unittest.test("to-json--from-json", () {
      var o = buildColumnHeader();
      var od = new api.ColumnHeader.fromJson(o.toJson());
      checkColumnHeader(od);
    });
  });

  unittest.group("obj-schema-DateRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildDateRange();
      var od = new api.DateRange.fromJson(o.toJson());
      checkDateRange(od);
    });
  });

  unittest.group("obj-schema-DateRangeValues", () {
    unittest.test("to-json--from-json", () {
      var o = buildDateRangeValues();
      var od = new api.DateRangeValues.fromJson(o.toJson());
      checkDateRangeValues(od);
    });
  });

  unittest.group("obj-schema-Dimension", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimension();
      var od = new api.Dimension.fromJson(o.toJson());
      checkDimension(od);
    });
  });

  unittest.group("obj-schema-DimensionFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimensionFilter();
      var od = new api.DimensionFilter.fromJson(o.toJson());
      checkDimensionFilter(od);
    });
  });

  unittest.group("obj-schema-DimensionFilterClause", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimensionFilterClause();
      var od = new api.DimensionFilterClause.fromJson(o.toJson());
      checkDimensionFilterClause(od);
    });
  });

  unittest.group("obj-schema-DynamicSegment", () {
    unittest.test("to-json--from-json", () {
      var o = buildDynamicSegment();
      var od = new api.DynamicSegment.fromJson(o.toJson());
      checkDynamicSegment(od);
    });
  });

  unittest.group("obj-schema-GetReportsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetReportsRequest();
      var od = new api.GetReportsRequest.fromJson(o.toJson());
      checkGetReportsRequest(od);
    });
  });

  unittest.group("obj-schema-GetReportsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetReportsResponse();
      var od = new api.GetReportsResponse.fromJson(o.toJson());
      checkGetReportsResponse(od);
    });
  });

  unittest.group("obj-schema-Metric", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetric();
      var od = new api.Metric.fromJson(o.toJson());
      checkMetric(od);
    });
  });

  unittest.group("obj-schema-MetricFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricFilter();
      var od = new api.MetricFilter.fromJson(o.toJson());
      checkMetricFilter(od);
    });
  });

  unittest.group("obj-schema-MetricFilterClause", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricFilterClause();
      var od = new api.MetricFilterClause.fromJson(o.toJson());
      checkMetricFilterClause(od);
    });
  });

  unittest.group("obj-schema-MetricHeader", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricHeader();
      var od = new api.MetricHeader.fromJson(o.toJson());
      checkMetricHeader(od);
    });
  });

  unittest.group("obj-schema-MetricHeaderEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricHeaderEntry();
      var od = new api.MetricHeaderEntry.fromJson(o.toJson());
      checkMetricHeaderEntry(od);
    });
  });

  unittest.group("obj-schema-OrFiltersForSegment", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrFiltersForSegment();
      var od = new api.OrFiltersForSegment.fromJson(o.toJson());
      checkOrFiltersForSegment(od);
    });
  });

  unittest.group("obj-schema-OrderBy", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderBy();
      var od = new api.OrderBy.fromJson(o.toJson());
      checkOrderBy(od);
    });
  });

  unittest.group("obj-schema-Pivot", () {
    unittest.test("to-json--from-json", () {
      var o = buildPivot();
      var od = new api.Pivot.fromJson(o.toJson());
      checkPivot(od);
    });
  });

  unittest.group("obj-schema-PivotHeader", () {
    unittest.test("to-json--from-json", () {
      var o = buildPivotHeader();
      var od = new api.PivotHeader.fromJson(o.toJson());
      checkPivotHeader(od);
    });
  });

  unittest.group("obj-schema-PivotHeaderEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildPivotHeaderEntry();
      var od = new api.PivotHeaderEntry.fromJson(o.toJson());
      checkPivotHeaderEntry(od);
    });
  });

  unittest.group("obj-schema-PivotValueRegion", () {
    unittest.test("to-json--from-json", () {
      var o = buildPivotValueRegion();
      var od = new api.PivotValueRegion.fromJson(o.toJson());
      checkPivotValueRegion(od);
    });
  });

  unittest.group("obj-schema-Report", () {
    unittest.test("to-json--from-json", () {
      var o = buildReport();
      var od = new api.Report.fromJson(o.toJson());
      checkReport(od);
    });
  });

  unittest.group("obj-schema-ReportData", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportData();
      var od = new api.ReportData.fromJson(o.toJson());
      checkReportData(od);
    });
  });

  unittest.group("obj-schema-ReportRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportRequest();
      var od = new api.ReportRequest.fromJson(o.toJson());
      checkReportRequest(od);
    });
  });

  unittest.group("obj-schema-ReportRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportRow();
      var od = new api.ReportRow.fromJson(o.toJson());
      checkReportRow(od);
    });
  });

  unittest.group("obj-schema-ResourceQuotasRemaining", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceQuotasRemaining();
      var od = new api.ResourceQuotasRemaining.fromJson(o.toJson());
      checkResourceQuotasRemaining(od);
    });
  });

  unittest.group("obj-schema-Segment", () {
    unittest.test("to-json--from-json", () {
      var o = buildSegment();
      var od = new api.Segment.fromJson(o.toJson());
      checkSegment(od);
    });
  });

  unittest.group("obj-schema-SegmentDefinition", () {
    unittest.test("to-json--from-json", () {
      var o = buildSegmentDefinition();
      var od = new api.SegmentDefinition.fromJson(o.toJson());
      checkSegmentDefinition(od);
    });
  });

  unittest.group("obj-schema-SegmentDimensionFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildSegmentDimensionFilter();
      var od = new api.SegmentDimensionFilter.fromJson(o.toJson());
      checkSegmentDimensionFilter(od);
    });
  });

  unittest.group("obj-schema-SegmentFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildSegmentFilter();
      var od = new api.SegmentFilter.fromJson(o.toJson());
      checkSegmentFilter(od);
    });
  });

  unittest.group("obj-schema-SegmentFilterClause", () {
    unittest.test("to-json--from-json", () {
      var o = buildSegmentFilterClause();
      var od = new api.SegmentFilterClause.fromJson(o.toJson());
      checkSegmentFilterClause(od);
    });
  });

  unittest.group("obj-schema-SegmentMetricFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildSegmentMetricFilter();
      var od = new api.SegmentMetricFilter.fromJson(o.toJson());
      checkSegmentMetricFilter(od);
    });
  });

  unittest.group("obj-schema-SegmentSequenceStep", () {
    unittest.test("to-json--from-json", () {
      var o = buildSegmentSequenceStep();
      var od = new api.SegmentSequenceStep.fromJson(o.toJson());
      checkSegmentSequenceStep(od);
    });
  });

  unittest.group("obj-schema-SequenceSegment", () {
    unittest.test("to-json--from-json", () {
      var o = buildSequenceSegment();
      var od = new api.SequenceSegment.fromJson(o.toJson());
      checkSequenceSegment(od);
    });
  });

  unittest.group("obj-schema-SimpleSegment", () {
    unittest.test("to-json--from-json", () {
      var o = buildSimpleSegment();
      var od = new api.SimpleSegment.fromJson(o.toJson());
      checkSimpleSegment(od);
    });
  });

  unittest.group("resource-ReportsResourceApi", () {
    unittest.test("method--batchGet", () {
      var mock = new HttpServerMock();
      api.ReportsResourceApi res = new api.AnalyticsreportingApi(mock).reports;
      var arg_request = buildGetReportsRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetReportsRequest.fromJson(json);
        checkGetReportsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v4/reports:batchGet"));
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
        var resp = convert.json.encode(buildGetReportsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGet(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetReportsResponse(response);
      })));
    });
  });
}
