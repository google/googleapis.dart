// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

import 'package:googleapis/agenciesandbrands/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterDate = 0;
api.Date buildDate() {
  final o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDateRange = 0;
api.DateRange buildDateRange() {
  final o = api.DateRange();
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    o.fixed = buildFixedDateRange();
    o.relative = 'foo';
  }
  buildCounterDateRange--;
  return o;
}

void checkDateRange(api.DateRange o) {
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    checkFixedDateRange(o.fixed!);
    unittest.expect(o.relative!, unittest.equals('foo'));
  }
  buildCounterDateRange--;
}

core.List<core.double> buildUnnamed0() => [42.0, 42.0];

void checkUnnamed0(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterDoubleList = 0;
api.DoubleList buildDoubleList() {
  final o = api.DoubleList();
  buildCounterDoubleList++;
  if (buildCounterDoubleList < 3) {
    o.values = buildUnnamed0();
  }
  buildCounterDoubleList--;
  return o;
}

void checkDoubleList(api.DoubleList o) {
  buildCounterDoubleList++;
  if (buildCounterDoubleList < 3) {
    checkUnnamed0(o.values!);
  }
  buildCounterDoubleList--;
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

core.List<api.FixedDateRange> buildUnnamed1() => [
  buildFixedDateRange(),
  buildFixedDateRange(),
];

void checkUnnamed1(core.List<api.FixedDateRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFixedDateRange(o[0]);
  checkFixedDateRange(o[1]);
}

core.List<api.Row> buildUnnamed2() => [buildRow(), buildRow()];

void checkUnnamed2(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterFetchReportResultRowsResponse = 0;
api.FetchReportResultRowsResponse buildFetchReportResultRowsResponse() {
  final o = api.FetchReportResultRowsResponse();
  buildCounterFetchReportResultRowsResponse++;
  if (buildCounterFetchReportResultRowsResponse < 3) {
    o.dateRanges = buildUnnamed1();
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed2();
    o.runTime = 'foo';
    o.totalRowCount = 42;
  }
  buildCounterFetchReportResultRowsResponse--;
  return o;
}

void checkFetchReportResultRowsResponse(api.FetchReportResultRowsResponse o) {
  buildCounterFetchReportResultRowsResponse++;
  if (buildCounterFetchReportResultRowsResponse < 3) {
    checkUnnamed1(o.dateRanges!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed2(o.rows!);
    unittest.expect(o.runTime!, unittest.equals('foo'));
    unittest.expect(o.totalRowCount!, unittest.equals(42));
  }
  buildCounterFetchReportResultRowsResponse--;
}

core.int buildCounterField = 0;
api.Field buildField() {
  final o = api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.dimension = 'foo';
    o.metric = 'foo';
  }
  buildCounterField--;
  return o;
}

void checkField(api.Field o) {
  buildCounterField++;
  if (buildCounterField < 3) {
    unittest.expect(o.dimension!, unittest.equals('foo'));
    unittest.expect(o.metric!, unittest.equals('foo'));
  }
  buildCounterField--;
}

core.List<api.ReportValue> buildUnnamed3() => [
  buildReportValue(),
  buildReportValue(),
];

void checkUnnamed3(core.List<api.ReportValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportValue(o[0]);
  checkReportValue(o[1]);
}

core.int buildCounterFieldFilter = 0;
api.FieldFilter buildFieldFilter() {
  final o = api.FieldFilter();
  buildCounterFieldFilter++;
  if (buildCounterFieldFilter < 3) {
    o.field = buildField();
    o.operation = 'foo';
    o.values = buildUnnamed3();
  }
  buildCounterFieldFilter--;
  return o;
}

void checkFieldFilter(api.FieldFilter o) {
  buildCounterFieldFilter++;
  if (buildCounterFieldFilter < 3) {
    checkField(o.field!);
    unittest.expect(o.operation!, unittest.equals('foo'));
    checkUnnamed3(o.values!);
  }
  buildCounterFieldFilter--;
}

core.int buildCounterFilter = 0;
api.Filter buildFilter() {
  final o = api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.andFilter = buildFilterList();
    o.fieldFilter = buildFieldFilter();
    o.notFilter = buildFilter();
    o.orFilter = buildFilterList();
  }
  buildCounterFilter--;
  return o;
}

void checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    checkFilterList(o.andFilter!);
    checkFieldFilter(o.fieldFilter!);
    checkFilter(o.notFilter!);
    checkFilterList(o.orFilter!);
  }
  buildCounterFilter--;
}

core.List<api.Filter> buildUnnamed4() => [buildFilter(), buildFilter()];

void checkUnnamed4(core.List<api.Filter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilter(o[0]);
  checkFilter(o[1]);
}

core.int buildCounterFilterList = 0;
api.FilterList buildFilterList() {
  final o = api.FilterList();
  buildCounterFilterList++;
  if (buildCounterFilterList < 3) {
    o.filters = buildUnnamed4();
  }
  buildCounterFilterList--;
  return o;
}

void checkFilterList(api.FilterList o) {
  buildCounterFilterList++;
  if (buildCounterFilterList < 3) {
    checkUnnamed4(o.filters!);
  }
  buildCounterFilterList--;
}

core.int buildCounterFixedDateRange = 0;
api.FixedDateRange buildFixedDateRange() {
  final o = api.FixedDateRange();
  buildCounterFixedDateRange++;
  if (buildCounterFixedDateRange < 3) {
    o.endDate = buildDate();
    o.startDate = buildDate();
  }
  buildCounterFixedDateRange--;
  return o;
}

void checkFixedDateRange(api.FixedDateRange o) {
  buildCounterFixedDateRange++;
  if (buildCounterFixedDateRange < 3) {
    checkDate(o.endDate!);
    checkDate(o.startDate!);
  }
  buildCounterFixedDateRange--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIntList = 0;
api.IntList buildIntList() {
  final o = api.IntList();
  buildCounterIntList++;
  if (buildCounterIntList < 3) {
    o.values = buildUnnamed5();
  }
  buildCounterIntList--;
  return o;
}

void checkIntList(api.IntList o) {
  buildCounterIntList++;
  if (buildCounterIntList < 3) {
    checkUnnamed5(o.values!);
  }
  buildCounterIntList--;
}

core.List<api.Report> buildUnnamed6() => [buildReport(), buildReport()];

void checkUnnamed6(core.List<api.Report> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReport(o[0]);
  checkReport(o[1]);
}

core.int buildCounterListReportsResponse = 0;
api.ListReportsResponse buildListReportsResponse() {
  final o = api.ListReportsResponse();
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reports = buildUnnamed6();
    o.totalSize = 42;
  }
  buildCounterListReportsResponse--;
  return o;
}

void checkListReportsResponse(api.ListReportsResponse o) {
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed6(o.reports!);
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterListReportsResponse--;
}

core.List<api.ReportValue> buildUnnamed7() => [
  buildReportValue(),
  buildReportValue(),
];

void checkUnnamed7(core.List<api.ReportValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportValue(o[0]);
  checkReportValue(o[1]);
}

core.int buildCounterMetricValueGroup = 0;
api.MetricValueGroup buildMetricValueGroup() {
  final o = api.MetricValueGroup();
  buildCounterMetricValueGroup++;
  if (buildCounterMetricValueGroup < 3) {
    o.primaryValues = buildUnnamed7();
  }
  buildCounterMetricValueGroup--;
  return o;
}

void checkMetricValueGroup(api.MetricValueGroup o) {
  buildCounterMetricValueGroup++;
  if (buildCounterMetricValueGroup < 3) {
    checkUnnamed7(o.primaryValues!);
  }
  buildCounterMetricValueGroup--;
}

core.Map<core.String, core.Object?> buildUnnamed8() => {
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

void checkUnnamed8(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed9() => {
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

void checkUnnamed9(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed8();
    o.name = 'foo';
    o.response = buildUnnamed9();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed8(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed9(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterReport = 0;
api.Report buildReport() {
  final o = api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.locale = 'foo';
    o.name = 'foo';
    o.reportDefinition = buildReportDefinition();
    o.reportId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterReport--;
  return o;
}

void checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.locale!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkReportDefinition(o.reportDefinition!);
    unittest.expect(o.reportId!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterReport--;
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Filter> buildUnnamed11() => [buildFilter(), buildFilter()];

void checkUnnamed11(core.List<api.Filter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilter(o[0]);
  checkFilter(o[1]);
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Sort> buildUnnamed13() => [buildSort(), buildSort()];

void checkUnnamed13(core.List<api.Sort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSort(o[0]);
  checkSort(o[1]);
}

core.int buildCounterReportDefinition = 0;
api.ReportDefinition buildReportDefinition() {
  final o = api.ReportDefinition();
  buildCounterReportDefinition++;
  if (buildCounterReportDefinition < 3) {
    o.currencyCode = 'foo';
    o.dateRange = buildDateRange();
    o.dimensions = buildUnnamed10();
    o.filters = buildUnnamed11();
    o.metrics = buildUnnamed12();
    o.sorts = buildUnnamed13();
    o.timeZone = 'foo';
    o.timeZoneSource = 'foo';
  }
  buildCounterReportDefinition--;
  return o;
}

void checkReportDefinition(api.ReportDefinition o) {
  buildCounterReportDefinition++;
  if (buildCounterReportDefinition < 3) {
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    checkDateRange(o.dateRange!);
    checkUnnamed10(o.dimensions!);
    checkUnnamed11(o.filters!);
    checkUnnamed12(o.metrics!);
    checkUnnamed13(o.sorts!);
    unittest.expect(o.timeZone!, unittest.equals('foo'));
    unittest.expect(o.timeZoneSource!, unittest.equals('foo'));
  }
  buildCounterReportDefinition--;
}

core.int buildCounterReportValue = 0;
api.ReportValue buildReportValue() {
  final o = api.ReportValue();
  buildCounterReportValue++;
  if (buildCounterReportValue < 3) {
    o.boolValue = true;
    o.bytesValue = 'foo';
    o.doubleListValue = buildDoubleList();
    o.doubleValue = 42.0;
    o.intListValue = buildIntList();
    o.intValue = 'foo';
    o.stringListValue = buildStringList();
    o.stringValue = 'foo';
  }
  buildCounterReportValue--;
  return o;
}

void checkReportValue(api.ReportValue o) {
  buildCounterReportValue++;
  if (buildCounterReportValue < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(o.bytesValue!, unittest.equals('foo'));
    checkDoubleList(o.doubleListValue!);
    unittest.expect(o.doubleValue!, unittest.equals(42.0));
    checkIntList(o.intListValue!);
    unittest.expect(o.intValue!, unittest.equals('foo'));
    checkStringList(o.stringListValue!);
    unittest.expect(o.stringValue!, unittest.equals('foo'));
  }
  buildCounterReportValue--;
}

core.List<api.ReportValue> buildUnnamed14() => [
  buildReportValue(),
  buildReportValue(),
];

void checkUnnamed14(core.List<api.ReportValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportValue(o[0]);
  checkReportValue(o[1]);
}

core.List<api.MetricValueGroup> buildUnnamed15() => [
  buildMetricValueGroup(),
  buildMetricValueGroup(),
];

void checkUnnamed15(core.List<api.MetricValueGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValueGroup(o[0]);
  checkMetricValueGroup(o[1]);
}

core.int buildCounterRow = 0;
api.Row buildRow() {
  final o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.dimensionValues = buildUnnamed14();
    o.metricValueGroups = buildUnnamed15();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    checkUnnamed14(o.dimensionValues!);
    checkUnnamed15(o.metricValueGroups!);
  }
  buildCounterRow--;
}

core.int buildCounterRunReportRequest = 0;
api.RunReportRequest buildRunReportRequest() {
  final o = api.RunReportRequest();
  buildCounterRunReportRequest++;
  if (buildCounterRunReportRequest < 3) {}
  buildCounterRunReportRequest--;
  return o;
}

void checkRunReportRequest(api.RunReportRequest o) {
  buildCounterRunReportRequest++;
  if (buildCounterRunReportRequest < 3) {}
  buildCounterRunReportRequest--;
}

core.int buildCounterSort = 0;
api.Sort buildSort() {
  final o = api.Sort();
  buildCounterSort++;
  if (buildCounterSort < 3) {
    o.descending = true;
    o.field = buildField();
  }
  buildCounterSort--;
  return o;
}

void checkSort(api.Sort o) {
  buildCounterSort++;
  if (buildCounterSort < 3) {
    unittest.expect(o.descending!, unittest.isTrue);
    checkField(o.field!);
  }
  buildCounterSort--;
}

core.Map<core.String, core.Object?> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed17() => [
  buildUnnamed16(),
  buildUnnamed16(),
];

void checkUnnamed17(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed16(o[0]);
  checkUnnamed16(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed17();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed17(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringList = 0;
api.StringList buildStringList() {
  final o = api.StringList();
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    o.values = buildUnnamed18();
  }
  buildCounterStringList--;
  return o;
}

void checkStringList(api.StringList o) {
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    checkUnnamed18(o.values!);
  }
  buildCounterStringList--;
}

void main() {
  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Date.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DateRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDateRange(od);
    });
  });

  unittest.group('obj-schema-DoubleList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoubleList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoubleList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDoubleList(od);
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

  unittest.group('obj-schema-FetchReportResultRowsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchReportResultRowsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchReportResultRowsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchReportResultRowsResponse(od);
    });
  });

  unittest.group('obj-schema-Field', () {
    unittest.test('to-json--from-json', () async {
      final o = buildField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Field.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkField(od);
    });
  });

  unittest.group('obj-schema-FieldFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFieldFilter(od);
    });
  });

  unittest.group('obj-schema-Filter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Filter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFilter(od);
    });
  });

  unittest.group('obj-schema-FilterList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilterList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFilterList(od);
    });
  });

  unittest.group('obj-schema-FixedDateRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFixedDateRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FixedDateRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFixedDateRange(od);
    });
  });

  unittest.group('obj-schema-IntList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIntList(od);
    });
  });

  unittest.group('obj-schema-ListReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReportsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListReportsResponse(od);
    });
  });

  unittest.group('obj-schema-MetricValueGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricValueGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricValueGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetricValueGroup(od);
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

  unittest.group('obj-schema-Report', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Report.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReport(od);
    });
  });

  unittest.group('obj-schema-ReportDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportDefinition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportDefinition(od);
    });
  });

  unittest.group('obj-schema-ReportValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportValue(od);
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

  unittest.group('obj-schema-RunReportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunReportRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunReportRequest(od);
    });
  });

  unittest.group('obj-schema-Sort', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSort();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Sort.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSort(od);
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

  unittest.group('obj-schema-StringList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStringList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StringList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStringList(od);
    });
  });

  unittest.group('resource-AgenciesReportsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AgenciesAndBrandsApi(mock).agencies.reports;
      final arg_request = buildReport();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Report.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReport(obj);

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
          final resp = convert.json.encode(buildReport());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkReport(response as api.Report);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AgenciesAndBrandsApi(mock).agencies.reports;
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
      final res = api.AgenciesAndBrandsApi(mock).agencies.reports;
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
          final resp = convert.json.encode(buildReport());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkReport(response as api.Report);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgenciesAndBrandsApi(mock).agencies.reports;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_skip = 42;
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            core.int.parse(queryMap['skip']!.first),
            unittest.equals(arg_skip),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListReportsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        skip: arg_skip,
        $fields: arg_$fields,
      );
      checkListReportsResponse(response as api.ListReportsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AgenciesAndBrandsApi(mock).agencies.reports;
      final arg_request = buildReport();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Report.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReport(obj);

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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildReport());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkReport(response as api.Report);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.AgenciesAndBrandsApi(mock).agencies.reports;
      final arg_request = buildRunReportRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RunReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRunReportRequest(obj);

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
      final response = await res.run(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-AgenciesReportsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgenciesAndBrandsApi(mock).agencies.reports.operations;
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

  unittest.group('resource-AgenciesReportsResultsResource', () {
    unittest.test('method--fetchRows', () async {
      final mock = HttpServerMock();
      final res = api.AgenciesAndBrandsApi(mock).agencies.reports.results;
      final arg_name = 'foo';
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
          final resp = convert.json.encode(
            buildFetchReportResultRowsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchRows(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkFetchReportResultRowsResponse(
        response as api.FetchReportResultRowsResponse,
      );
    });
  });
}
