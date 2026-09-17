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

import 'package:googleapis/curationpartners/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccessControlSettings = 0;
api.AccessControlSettings buildAccessControlSettings() {
  final o = api.AccessControlSettings();
  buildCounterAccessControlSettings++;
  if (buildCounterAccessControlSettings < 3) {
    o.allowlistedMediaPlanners = buildUnnamed0();
  }
  buildCounterAccessControlSettings--;
  return o;
}

void checkAccessControlSettings(api.AccessControlSettings o) {
  buildCounterAccessControlSettings++;
  if (buildCounterAccessControlSettings < 3) {
    checkUnnamed0(o.allowlistedMediaPlanners!);
  }
  buildCounterAccessControlSettings--;
}

core.int buildCounterActivateCuratedPackageRequest = 0;
api.ActivateCuratedPackageRequest buildActivateCuratedPackageRequest() {
  final o = api.ActivateCuratedPackageRequest();
  buildCounterActivateCuratedPackageRequest++;
  if (buildCounterActivateCuratedPackageRequest < 3) {}
  buildCounterActivateCuratedPackageRequest--;
  return o;
}

void checkActivateCuratedPackageRequest(api.ActivateCuratedPackageRequest o) {
  buildCounterActivateCuratedPackageRequest++;
  if (buildCounterActivateCuratedPackageRequest < 3) {}
  buildCounterActivateCuratedPackageRequest--;
}

core.int buildCounterActivateDataSegmentRequest = 0;
api.ActivateDataSegmentRequest buildActivateDataSegmentRequest() {
  final o = api.ActivateDataSegmentRequest();
  buildCounterActivateDataSegmentRequest++;
  if (buildCounterActivateDataSegmentRequest < 3) {}
  buildCounterActivateDataSegmentRequest--;
  return o;
}

void checkActivateDataSegmentRequest(api.ActivateDataSegmentRequest o) {
  buildCounterActivateDataSegmentRequest++;
  if (buildCounterActivateDataSegmentRequest < 3) {}
  buildCounterActivateDataSegmentRequest--;
}

core.int buildCounterAdSize = 0;
api.AdSize buildAdSize() {
  final o = api.AdSize();
  buildCounterAdSize++;
  if (buildCounterAdSize < 3) {
    o.height = 'foo';
    o.type = 'foo';
    o.width = 'foo';
  }
  buildCounterAdSize--;
  return o;
}

void checkAdSize(api.AdSize o) {
  buildCounterAdSize++;
  if (buildCounterAdSize < 3) {
    unittest.expect(o.height!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.width!, unittest.equals('foo'));
  }
  buildCounterAdSize--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCriteriaTargeting = 0;
api.CriteriaTargeting buildCriteriaTargeting() {
  final o = api.CriteriaTargeting();
  buildCounterCriteriaTargeting++;
  if (buildCounterCriteriaTargeting < 3) {
    o.excludedCriteriaIds = buildUnnamed1();
    o.targetedCriteriaIds = buildUnnamed2();
  }
  buildCounterCriteriaTargeting--;
  return o;
}

void checkCriteriaTargeting(api.CriteriaTargeting o) {
  buildCounterCriteriaTargeting++;
  if (buildCounterCriteriaTargeting < 3) {
    checkUnnamed1(o.excludedCriteriaIds!);
    checkUnnamed2(o.targetedCriteriaIds!);
  }
  buildCounterCriteriaTargeting--;
}

core.int buildCounterCuratedPackage = 0;
api.CuratedPackage buildCuratedPackage() {
  final o = api.CuratedPackage();
  buildCounterCuratedPackage++;
  if (buildCounterCuratedPackage < 3) {
    o.accessSettings = buildAccessControlSettings();
    o.createTime = 'foo';
    o.curationFeeVisibility = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.feeCpm = buildMoney();
    o.floorPriceCpm = buildMoney();
    o.millipercentOfMediaFee = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.targeting = buildPackageTargeting();
    o.updateTime = 'foo';
  }
  buildCounterCuratedPackage--;
  return o;
}

void checkCuratedPackage(api.CuratedPackage o) {
  buildCounterCuratedPackage++;
  if (buildCounterCuratedPackage < 3) {
    checkAccessControlSettings(o.accessSettings!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.curationFeeVisibility!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkMoney(o.feeCpm!);
    checkMoney(o.floorPriceCpm!);
    unittest.expect(o.millipercentOfMediaFee!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkPackageTargeting(o.targeting!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterCuratedPackage--;
}

core.int buildCounterDataSegment = 0;
api.DataSegment buildDataSegment() {
  final o = api.DataSegment();
  buildCounterDataSegment++;
  if (buildCounterDataSegment < 3) {
    o.cpmFee = buildMoney();
    o.createTime = 'foo';
    o.millipercentOfMediaFee = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
    o.userListId = 'foo';
  }
  buildCounterDataSegment--;
  return o;
}

void checkDataSegment(api.DataSegment o) {
  buildCounterDataSegment++;
  if (buildCounterDataSegment < 3) {
    checkMoney(o.cpmFee!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.millipercentOfMediaFee!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.userListId!, unittest.equals('foo'));
  }
  buildCounterDataSegment--;
}

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

core.int buildCounterDeactivateCuratedPackageRequest = 0;
api.DeactivateCuratedPackageRequest buildDeactivateCuratedPackageRequest() {
  final o = api.DeactivateCuratedPackageRequest();
  buildCounterDeactivateCuratedPackageRequest++;
  if (buildCounterDeactivateCuratedPackageRequest < 3) {}
  buildCounterDeactivateCuratedPackageRequest--;
  return o;
}

void checkDeactivateCuratedPackageRequest(
  api.DeactivateCuratedPackageRequest o,
) {
  buildCounterDeactivateCuratedPackageRequest++;
  if (buildCounterDeactivateCuratedPackageRequest < 3) {}
  buildCounterDeactivateCuratedPackageRequest--;
}

core.int buildCounterDeactivateDataSegmentRequest = 0;
api.DeactivateDataSegmentRequest buildDeactivateDataSegmentRequest() {
  final o = api.DeactivateDataSegmentRequest();
  buildCounterDeactivateDataSegmentRequest++;
  if (buildCounterDeactivateDataSegmentRequest < 3) {}
  buildCounterDeactivateDataSegmentRequest--;
  return o;
}

void checkDeactivateDataSegmentRequest(api.DeactivateDataSegmentRequest o) {
  buildCounterDeactivateDataSegmentRequest++;
  if (buildCounterDeactivateDataSegmentRequest < 3) {}
  buildCounterDeactivateDataSegmentRequest--;
}

core.List<core.double> buildUnnamed3() => [42.0, 42.0];

void checkUnnamed3(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterDoubleList = 0;
api.DoubleList buildDoubleList() {
  final o = api.DoubleList();
  buildCounterDoubleList++;
  if (buildCounterDoubleList < 3) {
    o.values = buildUnnamed3();
  }
  buildCounterDoubleList--;
  return o;
}

void checkDoubleList(api.DoubleList o) {
  buildCounterDoubleList++;
  if (buildCounterDoubleList < 3) {
    checkUnnamed3(o.values!);
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

core.List<api.FixedDateRange> buildUnnamed4() => [
  buildFixedDateRange(),
  buildFixedDateRange(),
];

void checkUnnamed4(core.List<api.FixedDateRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFixedDateRange(o[0]);
  checkFixedDateRange(o[1]);
}

core.List<api.Row> buildUnnamed5() => [buildRow(), buildRow()];

void checkUnnamed5(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterFetchReportResultRowsResponse = 0;
api.FetchReportResultRowsResponse buildFetchReportResultRowsResponse() {
  final o = api.FetchReportResultRowsResponse();
  buildCounterFetchReportResultRowsResponse++;
  if (buildCounterFetchReportResultRowsResponse < 3) {
    o.dateRanges = buildUnnamed4();
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed5();
    o.runTime = 'foo';
    o.totalRowCount = 42;
  }
  buildCounterFetchReportResultRowsResponse--;
  return o;
}

void checkFetchReportResultRowsResponse(api.FetchReportResultRowsResponse o) {
  buildCounterFetchReportResultRowsResponse++;
  if (buildCounterFetchReportResultRowsResponse < 3) {
    checkUnnamed4(o.dateRanges!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed5(o.rows!);
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

core.List<api.ReportValue> buildUnnamed6() => [
  buildReportValue(),
  buildReportValue(),
];

void checkUnnamed6(core.List<api.ReportValue> o) {
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
    o.values = buildUnnamed6();
  }
  buildCounterFieldFilter--;
  return o;
}

void checkFieldFilter(api.FieldFilter o) {
  buildCounterFieldFilter++;
  if (buildCounterFieldFilter < 3) {
    checkField(o.field!);
    unittest.expect(o.operation!, unittest.equals('foo'));
    checkUnnamed6(o.values!);
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

core.List<api.Filter> buildUnnamed7() => [buildFilter(), buildFilter()];

void checkUnnamed7(core.List<api.Filter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilter(o[0]);
  checkFilter(o[1]);
}

core.int buildCounterFilterList = 0;
api.FilterList buildFilterList() {
  final o = api.FilterList();
  buildCounterFilterList++;
  if (buildCounterFilterList < 3) {
    o.filters = buildUnnamed7();
  }
  buildCounterFilterList--;
  return o;
}

void checkFilterList(api.FilterList o) {
  buildCounterFilterList++;
  if (buildCounterFilterList < 3) {
    checkUnnamed7(o.filters!);
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

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIntList = 0;
api.IntList buildIntList() {
  final o = api.IntList();
  buildCounterIntList++;
  if (buildCounterIntList < 3) {
    o.values = buildUnnamed8();
  }
  buildCounterIntList--;
  return o;
}

void checkIntList(api.IntList o) {
  buildCounterIntList++;
  if (buildCounterIntList < 3) {
    checkUnnamed8(o.values!);
  }
  buildCounterIntList--;
}

core.List<api.CuratedPackage> buildUnnamed9() => [
  buildCuratedPackage(),
  buildCuratedPackage(),
];

void checkUnnamed9(core.List<api.CuratedPackage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCuratedPackage(o[0]);
  checkCuratedPackage(o[1]);
}

core.int buildCounterListCuratedPackagesResponse = 0;
api.ListCuratedPackagesResponse buildListCuratedPackagesResponse() {
  final o = api.ListCuratedPackagesResponse();
  buildCounterListCuratedPackagesResponse++;
  if (buildCounterListCuratedPackagesResponse < 3) {
    o.curatedPackages = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterListCuratedPackagesResponse--;
  return o;
}

void checkListCuratedPackagesResponse(api.ListCuratedPackagesResponse o) {
  buildCounterListCuratedPackagesResponse++;
  if (buildCounterListCuratedPackagesResponse < 3) {
    checkUnnamed9(o.curatedPackages!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListCuratedPackagesResponse--;
}

core.List<api.DataSegment> buildUnnamed10() => [
  buildDataSegment(),
  buildDataSegment(),
];

void checkUnnamed10(core.List<api.DataSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSegment(o[0]);
  checkDataSegment(o[1]);
}

core.int buildCounterListDataSegmentsResponse = 0;
api.ListDataSegmentsResponse buildListDataSegmentsResponse() {
  final o = api.ListDataSegmentsResponse();
  buildCounterListDataSegmentsResponse++;
  if (buildCounterListDataSegmentsResponse < 3) {
    o.dataSegments = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterListDataSegmentsResponse--;
  return o;
}

void checkListDataSegmentsResponse(api.ListDataSegmentsResponse o) {
  buildCounterListDataSegmentsResponse++;
  if (buildCounterListDataSegmentsResponse < 3) {
    checkUnnamed10(o.dataSegments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDataSegmentsResponse--;
}

core.List<api.MediaPlanner> buildUnnamed11() => [
  buildMediaPlanner(),
  buildMediaPlanner(),
];

void checkUnnamed11(core.List<api.MediaPlanner> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMediaPlanner(o[0]);
  checkMediaPlanner(o[1]);
}

core.int buildCounterListMediaPlannersResponse = 0;
api.ListMediaPlannersResponse buildListMediaPlannersResponse() {
  final o = api.ListMediaPlannersResponse();
  buildCounterListMediaPlannersResponse++;
  if (buildCounterListMediaPlannersResponse < 3) {
    o.mediaPlanners = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterListMediaPlannersResponse--;
  return o;
}

void checkListMediaPlannersResponse(api.ListMediaPlannersResponse o) {
  buildCounterListMediaPlannersResponse++;
  if (buildCounterListMediaPlannersResponse < 3) {
    checkUnnamed11(o.mediaPlanners!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListMediaPlannersResponse--;
}

core.List<api.Report> buildUnnamed12() => [buildReport(), buildReport()];

void checkUnnamed12(core.List<api.Report> o) {
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
    o.reports = buildUnnamed12();
    o.totalSize = 42;
  }
  buildCounterListReportsResponse--;
  return o;
}

void checkListReportsResponse(api.ListReportsResponse o) {
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed12(o.reports!);
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterListReportsResponse--;
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMediaPlanner = 0;
api.MediaPlanner buildMediaPlanner() {
  final o = api.MediaPlanner();
  buildCounterMediaPlanner++;
  if (buildCounterMediaPlanner < 3) {
    o.accountId = 'foo';
    o.ancestorNames = buildUnnamed13();
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterMediaPlanner--;
  return o;
}

void checkMediaPlanner(api.MediaPlanner o) {
  buildCounterMediaPlanner++;
  if (buildCounterMediaPlanner < 3) {
    unittest.expect(o.accountId!, unittest.equals('foo'));
    checkUnnamed13(o.ancestorNames!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterMediaPlanner--;
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

core.int buildCounterMetricValueGroup = 0;
api.MetricValueGroup buildMetricValueGroup() {
  final o = api.MetricValueGroup();
  buildCounterMetricValueGroup++;
  if (buildCounterMetricValueGroup < 3) {
    o.primaryValues = buildUnnamed14();
  }
  buildCounterMetricValueGroup--;
  return o;
}

void checkMetricValueGroup(api.MetricValueGroup o) {
  buildCounterMetricValueGroup++;
  if (buildCounterMetricValueGroup < 3) {
    checkUnnamed14(o.primaryValues!);
  }
  buildCounterMetricValueGroup--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  final o = api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterMoney--;
  return o;
}

void checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.units!, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

core.Map<core.String, core.Object?> buildUnnamed15() => {
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

void checkUnnamed15(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed15();
    o.name = 'foo';
    o.response = buildUnnamed16();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed15(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed16(o.response!);
  }
  buildCounterOperation--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPackagePlacementTargeting = 0;
api.PackagePlacementTargeting buildPackagePlacementTargeting() {
  final o = api.PackagePlacementTargeting();
  buildCounterPackagePlacementTargeting++;
  if (buildCounterPackagePlacementTargeting < 3) {
    o.includedMobileAppCategoryTargeting = buildUnnamed17();
    o.mobileAppTargeting = buildStringTargetingDimension();
    o.uriTargeting = buildStringTargetingDimension();
  }
  buildCounterPackagePlacementTargeting--;
  return o;
}

void checkPackagePlacementTargeting(api.PackagePlacementTargeting o) {
  buildCounterPackagePlacementTargeting++;
  if (buildCounterPackagePlacementTargeting < 3) {
    checkUnnamed17(o.includedMobileAppCategoryTargeting!);
    checkStringTargetingDimension(o.mobileAppTargeting!);
    checkStringTargetingDimension(o.uriTargeting!);
  }
  buildCounterPackagePlacementTargeting--;
}

core.int buildCounterPackagePublisherProvidedSignalsTargeting = 0;
api.PackagePublisherProvidedSignalsTargeting
buildPackagePublisherProvidedSignalsTargeting() {
  final o = api.PackagePublisherProvidedSignalsTargeting();
  buildCounterPackagePublisherProvidedSignalsTargeting++;
  if (buildCounterPackagePublisherProvidedSignalsTargeting < 3) {
    o.audienceTargeting = buildTaxonomyTargeting();
    o.contentTargeting = buildTaxonomyTargeting();
    o.videoAndAudioSignalsTargeting = buildStringTargetingDimension();
  }
  buildCounterPackagePublisherProvidedSignalsTargeting--;
  return o;
}

void checkPackagePublisherProvidedSignalsTargeting(
  api.PackagePublisherProvidedSignalsTargeting o,
) {
  buildCounterPackagePublisherProvidedSignalsTargeting++;
  if (buildCounterPackagePublisherProvidedSignalsTargeting < 3) {
    checkTaxonomyTargeting(o.audienceTargeting!);
    checkTaxonomyTargeting(o.contentTargeting!);
    checkStringTargetingDimension(o.videoAndAudioSignalsTargeting!);
  }
  buildCounterPackagePublisherProvidedSignalsTargeting--;
}

core.List<api.AdSize> buildUnnamed18() => [buildAdSize(), buildAdSize()];

void checkUnnamed18(core.List<api.AdSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSize(o[0]);
  checkAdSize(o[1]);
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPackageTargeting = 0;
api.PackageTargeting buildPackageTargeting() {
  final o = api.PackageTargeting();
  buildCounterPackageTargeting++;
  if (buildCounterPackageTargeting < 3) {
    o.geoTargeting = buildCriteriaTargeting();
    o.includedAcceleratedMobilePageType = 'foo';
    o.includedAdSizes = buildUnnamed18();
    o.includedAuthorizedSellerStatuses = buildUnnamed19();
    o.includedCreativeFormat = 'foo';
    o.includedDataSegments = buildUnnamed20();
    o.includedDeviceTypes = buildUnnamed21();
    o.includedEnvironment = 'foo';
    o.includedNativeInventoryTypes = buildUnnamed22();
    o.includedOpenMeasurementTypes = buildUnnamed23();
    o.includedRestrictedCategories = buildUnnamed24();
    o.includedRewardedType = 'foo';
    o.languageTargeting = buildStringTargetingDimension();
    o.minimumPredictedClickThroughRatePercentageMillis = 'foo';
    o.minimumPredictedViewabilityPercentage = 'foo';
    o.placementTargeting = buildPackagePlacementTargeting();
    o.publisherProvidedSignalsTargeting =
        buildPackagePublisherProvidedSignalsTargeting();
    o.publisherTargeting = buildStringTargetingDimension();
    o.verticalTargeting = buildCriteriaTargeting();
    o.videoTargeting = buildPackageVideoTargeting();
  }
  buildCounterPackageTargeting--;
  return o;
}

void checkPackageTargeting(api.PackageTargeting o) {
  buildCounterPackageTargeting++;
  if (buildCounterPackageTargeting < 3) {
    checkCriteriaTargeting(o.geoTargeting!);
    unittest.expect(
      o.includedAcceleratedMobilePageType!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.includedAdSizes!);
    checkUnnamed19(o.includedAuthorizedSellerStatuses!);
    unittest.expect(o.includedCreativeFormat!, unittest.equals('foo'));
    checkUnnamed20(o.includedDataSegments!);
    checkUnnamed21(o.includedDeviceTypes!);
    unittest.expect(o.includedEnvironment!, unittest.equals('foo'));
    checkUnnamed22(o.includedNativeInventoryTypes!);
    checkUnnamed23(o.includedOpenMeasurementTypes!);
    checkUnnamed24(o.includedRestrictedCategories!);
    unittest.expect(o.includedRewardedType!, unittest.equals('foo'));
    checkStringTargetingDimension(o.languageTargeting!);
    unittest.expect(
      o.minimumPredictedClickThroughRatePercentageMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimumPredictedViewabilityPercentage!,
      unittest.equals('foo'),
    );
    checkPackagePlacementTargeting(o.placementTargeting!);
    checkPackagePublisherProvidedSignalsTargeting(
      o.publisherProvidedSignalsTargeting!,
    );
    checkStringTargetingDimension(o.publisherTargeting!);
    checkCriteriaTargeting(o.verticalTargeting!);
    checkPackageVideoTargeting(o.videoTargeting!);
  }
  buildCounterPackageTargeting--;
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPackageVideoTargeting = 0;
api.PackageVideoTargeting buildPackageVideoTargeting() {
  final o = api.PackageVideoTargeting();
  buildCounterPackageVideoTargeting++;
  if (buildCounterPackageVideoTargeting < 3) {
    o.includedContentDeliveryMethod = 'foo';
    o.includedMaximumAdDurationTargeting = 'foo';
    o.includedMimeTypes = buildUnnamed25();
    o.includedPlaybackMethods = buildUnnamed26();
    o.includedPlayerSizeTargeting = buildVideoPlayerSizeTargeting();
    o.includedPositionTypes = buildUnnamed27();
    o.minimumPredictedCompletionRatePercentage = 'foo';
    o.plcmtTargeting = buildVideoPlcmtTargeting();
  }
  buildCounterPackageVideoTargeting--;
  return o;
}

void checkPackageVideoTargeting(api.PackageVideoTargeting o) {
  buildCounterPackageVideoTargeting++;
  if (buildCounterPackageVideoTargeting < 3) {
    unittest.expect(o.includedContentDeliveryMethod!, unittest.equals('foo'));
    unittest.expect(
      o.includedMaximumAdDurationTargeting!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.includedMimeTypes!);
    checkUnnamed26(o.includedPlaybackMethods!);
    checkVideoPlayerSizeTargeting(o.includedPlayerSizeTargeting!);
    checkUnnamed27(o.includedPositionTypes!);
    unittest.expect(
      o.minimumPredictedCompletionRatePercentage!,
      unittest.equals('foo'),
    );
    checkVideoPlcmtTargeting(o.plcmtTargeting!);
  }
  buildCounterPackageVideoTargeting--;
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

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Filter> buildUnnamed29() => [buildFilter(), buildFilter()];

void checkUnnamed29(core.List<api.Filter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilter(o[0]);
  checkFilter(o[1]);
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Sort> buildUnnamed31() => [buildSort(), buildSort()];

void checkUnnamed31(core.List<api.Sort> o) {
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
    o.dimensions = buildUnnamed28();
    o.filters = buildUnnamed29();
    o.metrics = buildUnnamed30();
    o.sorts = buildUnnamed31();
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
    checkUnnamed28(o.dimensions!);
    checkUnnamed29(o.filters!);
    checkUnnamed30(o.metrics!);
    checkUnnamed31(o.sorts!);
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

core.List<api.ReportValue> buildUnnamed32() => [
  buildReportValue(),
  buildReportValue(),
];

void checkUnnamed32(core.List<api.ReportValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportValue(o[0]);
  checkReportValue(o[1]);
}

core.List<api.MetricValueGroup> buildUnnamed33() => [
  buildMetricValueGroup(),
  buildMetricValueGroup(),
];

void checkUnnamed33(core.List<api.MetricValueGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValueGroup(o[0]);
  checkMetricValueGroup(o[1]);
}

core.int buildCounterRow = 0;
api.Row buildRow() {
  final o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.dimensionValues = buildUnnamed32();
    o.metricValueGroups = buildUnnamed33();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    checkUnnamed32(o.dimensionValues!);
    checkUnnamed33(o.metricValueGroups!);
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

core.Map<core.String, core.Object?> buildUnnamed34() => {
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

void checkUnnamed34(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed35() => [
  buildUnnamed34(),
  buildUnnamed34(),
];

void checkUnnamed35(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed34(o[0]);
  checkUnnamed34(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed35();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed35(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringList = 0;
api.StringList buildStringList() {
  final o = api.StringList();
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    o.values = buildUnnamed36();
  }
  buildCounterStringList--;
  return o;
}

void checkStringList(api.StringList o) {
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    checkUnnamed36(o.values!);
  }
  buildCounterStringList--;
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringTargetingDimension = 0;
api.StringTargetingDimension buildStringTargetingDimension() {
  final o = api.StringTargetingDimension();
  buildCounterStringTargetingDimension++;
  if (buildCounterStringTargetingDimension < 3) {
    o.selectionType = 'foo';
    o.values = buildUnnamed37();
  }
  buildCounterStringTargetingDimension--;
  return o;
}

void checkStringTargetingDimension(api.StringTargetingDimension o) {
  buildCounterStringTargetingDimension++;
  if (buildCounterStringTargetingDimension < 3) {
    unittest.expect(o.selectionType!, unittest.equals('foo'));
    checkUnnamed37(o.values!);
  }
  buildCounterStringTargetingDimension--;
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTaxonomyTargeting = 0;
api.TaxonomyTargeting buildTaxonomyTargeting() {
  final o = api.TaxonomyTargeting();
  buildCounterTaxonomyTargeting++;
  if (buildCounterTaxonomyTargeting < 3) {
    o.excludedTaxonomyIds = buildUnnamed38();
    o.targetedTaxonomyIds = buildUnnamed39();
  }
  buildCounterTaxonomyTargeting--;
  return o;
}

void checkTaxonomyTargeting(api.TaxonomyTargeting o) {
  buildCounterTaxonomyTargeting++;
  if (buildCounterTaxonomyTargeting < 3) {
    checkUnnamed38(o.excludedTaxonomyIds!);
    checkUnnamed39(o.targetedTaxonomyIds!);
  }
  buildCounterTaxonomyTargeting--;
}

core.int buildCounterVideoPlayerSizeTargeting = 0;
api.VideoPlayerSizeTargeting buildVideoPlayerSizeTargeting() {
  final o = api.VideoPlayerSizeTargeting();
  buildCounterVideoPlayerSizeTargeting++;
  if (buildCounterVideoPlayerSizeTargeting < 3) {
    o.minimumHeight = 'foo';
    o.minimumWidth = 'foo';
  }
  buildCounterVideoPlayerSizeTargeting--;
  return o;
}

void checkVideoPlayerSizeTargeting(api.VideoPlayerSizeTargeting o) {
  buildCounterVideoPlayerSizeTargeting++;
  if (buildCounterVideoPlayerSizeTargeting < 3) {
    unittest.expect(o.minimumHeight!, unittest.equals('foo'));
    unittest.expect(o.minimumWidth!, unittest.equals('foo'));
  }
  buildCounterVideoPlayerSizeTargeting--;
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVideoPlcmtTargeting = 0;
api.VideoPlcmtTargeting buildVideoPlcmtTargeting() {
  final o = api.VideoPlcmtTargeting();
  buildCounterVideoPlcmtTargeting++;
  if (buildCounterVideoPlcmtTargeting < 3) {
    o.selectionType = 'foo';
    o.videoPlcmtTypes = buildUnnamed40();
  }
  buildCounterVideoPlcmtTargeting--;
  return o;
}

void checkVideoPlcmtTargeting(api.VideoPlcmtTargeting o) {
  buildCounterVideoPlcmtTargeting++;
  if (buildCounterVideoPlcmtTargeting < 3) {
    unittest.expect(o.selectionType!, unittest.equals('foo'));
    checkUnnamed40(o.videoPlcmtTypes!);
  }
  buildCounterVideoPlcmtTargeting--;
}

void main() {
  unittest.group('obj-schema-AccessControlSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessControlSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessControlSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessControlSettings(od);
    });
  });

  unittest.group('obj-schema-ActivateCuratedPackageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivateCuratedPackageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivateCuratedPackageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivateCuratedPackageRequest(od);
    });
  });

  unittest.group('obj-schema-ActivateDataSegmentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivateDataSegmentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivateDataSegmentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivateDataSegmentRequest(od);
    });
  });

  unittest.group('obj-schema-AdSize', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdSize.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdSize(od);
    });
  });

  unittest.group('obj-schema-CriteriaTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCriteriaTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CriteriaTargeting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCriteriaTargeting(od);
    });
  });

  unittest.group('obj-schema-CuratedPackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCuratedPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CuratedPackage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCuratedPackage(od);
    });
  });

  unittest.group('obj-schema-DataSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSegment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataSegment(od);
    });
  });

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

  unittest.group('obj-schema-DeactivateCuratedPackageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeactivateCuratedPackageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeactivateCuratedPackageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeactivateCuratedPackageRequest(od);
    });
  });

  unittest.group('obj-schema-DeactivateDataSegmentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeactivateDataSegmentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeactivateDataSegmentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeactivateDataSegmentRequest(od);
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

  unittest.group('obj-schema-ListCuratedPackagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCuratedPackagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCuratedPackagesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCuratedPackagesResponse(od);
    });
  });

  unittest.group('obj-schema-ListDataSegmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDataSegmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDataSegmentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDataSegmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMediaPlannersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMediaPlannersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMediaPlannersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMediaPlannersResponse(od);
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

  unittest.group('obj-schema-MediaPlanner', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediaPlanner();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediaPlanner.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMediaPlanner(od);
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

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Money.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMoney(od);
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

  unittest.group('obj-schema-PackagePlacementTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackagePlacementTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackagePlacementTargeting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackagePlacementTargeting(od);
    });
  });

  unittest.group('obj-schema-PackagePublisherProvidedSignalsTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackagePublisherProvidedSignalsTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackagePublisherProvidedSignalsTargeting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackagePublisherProvidedSignalsTargeting(od);
    });
  });

  unittest.group('obj-schema-PackageTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageTargeting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackageTargeting(od);
    });
  });

  unittest.group('obj-schema-PackageVideoTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageVideoTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageVideoTargeting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackageVideoTargeting(od);
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

  unittest.group('obj-schema-StringTargetingDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStringTargetingDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StringTargetingDimension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStringTargetingDimension(od);
    });
  });

  unittest.group('obj-schema-TaxonomyTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaxonomyTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaxonomyTargeting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTaxonomyTargeting(od);
    });
  });

  unittest.group('obj-schema-VideoPlayerSizeTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoPlayerSizeTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoPlayerSizeTargeting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVideoPlayerSizeTargeting(od);
    });
  });

  unittest.group('obj-schema-VideoPlcmtTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoPlcmtTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoPlcmtTargeting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVideoPlcmtTargeting(od);
    });
  });

  unittest.group('resource-CuratorsCuratedPackagesResource', () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).curators.curatedPackages;
      final arg_request = buildActivateCuratedPackageRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ActivateCuratedPackageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkActivateCuratedPackageRequest(obj);

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
          final resp = convert.json.encode(buildCuratedPackage());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.activate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkCuratedPackage(response as api.CuratedPackage);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).curators.curatedPackages;
      final arg_request = buildCuratedPackage();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CuratedPackage.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCuratedPackage(obj);

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
          final resp = convert.json.encode(buildCuratedPackage());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkCuratedPackage(response as api.CuratedPackage);
    });

    unittest.test('method--deactivate', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).curators.curatedPackages;
      final arg_request = buildDeactivateCuratedPackageRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeactivateCuratedPackageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeactivateCuratedPackageRequest(obj);

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
          final resp = convert.json.encode(buildCuratedPackage());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.deactivate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkCuratedPackage(response as api.CuratedPackage);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).curators.curatedPackages;
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
          final resp = convert.json.encode(buildCuratedPackage());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCuratedPackage(response as api.CuratedPackage);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).curators.curatedPackages;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListCuratedPackagesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListCuratedPackagesResponse(
        response as api.ListCuratedPackagesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).curators.curatedPackages;
      final arg_request = buildCuratedPackage();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CuratedPackage.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCuratedPackage(obj);

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
          final resp = convert.json.encode(buildCuratedPackage());
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
      checkCuratedPackage(response as api.CuratedPackage);
    });
  });

  unittest.group('resource-CuratorsDataSegmentsResource', () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).curators.dataSegments;
      final arg_request = buildActivateDataSegmentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ActivateDataSegmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkActivateDataSegmentRequest(obj);

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
          final resp = convert.json.encode(buildDataSegment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.activate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkDataSegment(response as api.DataSegment);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).curators.dataSegments;
      final arg_request = buildDataSegment();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DataSegment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDataSegment(obj);

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
          final resp = convert.json.encode(buildDataSegment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkDataSegment(response as api.DataSegment);
    });

    unittest.test('method--deactivate', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).curators.dataSegments;
      final arg_request = buildDeactivateDataSegmentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeactivateDataSegmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeactivateDataSegmentRequest(obj);

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
          final resp = convert.json.encode(buildDataSegment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.deactivate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkDataSegment(response as api.DataSegment);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).curators.dataSegments;
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
          final resp = convert.json.encode(buildDataSegment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDataSegment(response as api.DataSegment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).curators.dataSegments;
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
          final resp = convert.json.encode(buildListDataSegmentsResponse());
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
      checkListDataSegmentsResponse(response as api.ListDataSegmentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).curators.dataSegments;
      final arg_request = buildDataSegment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DataSegment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDataSegment(obj);

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
          final resp = convert.json.encode(buildDataSegment());
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
      checkDataSegment(response as api.DataSegment);
    });
  });

  unittest.group('resource-CuratorsReportsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).curators.reports;
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
      final res = api.CurationPartnersApi(mock).curators.reports;
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
      final res = api.CurationPartnersApi(mock).curators.reports;
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
      final res = api.CurationPartnersApi(mock).curators.reports;
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
      final res = api.CurationPartnersApi(mock).curators.reports;
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
      final res = api.CurationPartnersApi(mock).curators.reports;
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

  unittest.group('resource-CuratorsReportsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).curators.reports.operations;
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

  unittest.group('resource-CuratorsReportsResultsResource', () {
    unittest.test('method--fetchRows', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).curators.reports.results;
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

  unittest.group('resource-MediaPlannersResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CurationPartnersApi(mock).mediaPlanners;
      final arg_filter = 'foo';
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
            path.substring(pathOffset, pathOffset + 16),
            unittest.equals('v1/mediaPlanners'),
          );
          pathOffset += 16;

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
          final resp = convert.json.encode(buildListMediaPlannersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListMediaPlannersResponse(response as api.ListMediaPlannersResponse);
    });
  });
}
