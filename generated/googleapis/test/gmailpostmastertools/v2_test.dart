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

import 'package:googleapis/gmailpostmastertools/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterBaseMetric = 0;
api.BaseMetric buildBaseMetric() {
  final o = api.BaseMetric();
  buildCounterBaseMetric++;
  if (buildCounterBaseMetric < 3) {
    o.standardMetric = 'foo';
  }
  buildCounterBaseMetric--;
  return o;
}

void checkBaseMetric(api.BaseMetric o) {
  buildCounterBaseMetric++;
  if (buildCounterBaseMetric < 3) {
    unittest.expect(o.standardMetric!, unittest.equals('foo'));
  }
  buildCounterBaseMetric--;
}

core.List<api.QueryDomainStatsRequest> buildUnnamed0() => [
  buildQueryDomainStatsRequest(),
  buildQueryDomainStatsRequest(),
];

void checkUnnamed0(core.List<api.QueryDomainStatsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryDomainStatsRequest(o[0]);
  checkQueryDomainStatsRequest(o[1]);
}

core.int buildCounterBatchQueryDomainStatsRequest = 0;
api.BatchQueryDomainStatsRequest buildBatchQueryDomainStatsRequest() {
  final o = api.BatchQueryDomainStatsRequest();
  buildCounterBatchQueryDomainStatsRequest++;
  if (buildCounterBatchQueryDomainStatsRequest < 3) {
    o.requests = buildUnnamed0();
  }
  buildCounterBatchQueryDomainStatsRequest--;
  return o;
}

void checkBatchQueryDomainStatsRequest(api.BatchQueryDomainStatsRequest o) {
  buildCounterBatchQueryDomainStatsRequest++;
  if (buildCounterBatchQueryDomainStatsRequest < 3) {
    checkUnnamed0(o.requests!);
  }
  buildCounterBatchQueryDomainStatsRequest--;
}

core.List<api.BatchQueryDomainStatsResult> buildUnnamed1() => [
  buildBatchQueryDomainStatsResult(),
  buildBatchQueryDomainStatsResult(),
];

void checkUnnamed1(core.List<api.BatchQueryDomainStatsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatchQueryDomainStatsResult(o[0]);
  checkBatchQueryDomainStatsResult(o[1]);
}

core.int buildCounterBatchQueryDomainStatsResponse = 0;
api.BatchQueryDomainStatsResponse buildBatchQueryDomainStatsResponse() {
  final o = api.BatchQueryDomainStatsResponse();
  buildCounterBatchQueryDomainStatsResponse++;
  if (buildCounterBatchQueryDomainStatsResponse < 3) {
    o.results = buildUnnamed1();
  }
  buildCounterBatchQueryDomainStatsResponse--;
  return o;
}

void checkBatchQueryDomainStatsResponse(api.BatchQueryDomainStatsResponse o) {
  buildCounterBatchQueryDomainStatsResponse++;
  if (buildCounterBatchQueryDomainStatsResponse < 3) {
    checkUnnamed1(o.results!);
  }
  buildCounterBatchQueryDomainStatsResponse--;
}

core.int buildCounterBatchQueryDomainStatsResult = 0;
api.BatchQueryDomainStatsResult buildBatchQueryDomainStatsResult() {
  final o = api.BatchQueryDomainStatsResult();
  buildCounterBatchQueryDomainStatsResult++;
  if (buildCounterBatchQueryDomainStatsResult < 3) {
    o.error = buildStatus();
    o.response = buildQueryDomainStatsResponse();
  }
  buildCounterBatchQueryDomainStatsResult--;
  return o;
}

void checkBatchQueryDomainStatsResult(api.BatchQueryDomainStatsResult o) {
  buildCounterBatchQueryDomainStatsResult++;
  if (buildCounterBatchQueryDomainStatsResult < 3) {
    checkStatus(o.error!);
    checkQueryDomainStatsResponse(o.response!);
  }
  buildCounterBatchQueryDomainStatsResult--;
}

core.int buildCounterComplianceRowData = 0;
api.ComplianceRowData buildComplianceRowData() {
  final o = api.ComplianceRowData();
  buildCounterComplianceRowData++;
  if (buildCounterComplianceRowData < 3) {
    o.requirement = 'foo';
    o.status = buildComplianceStatus();
  }
  buildCounterComplianceRowData--;
  return o;
}

void checkComplianceRowData(api.ComplianceRowData o) {
  buildCounterComplianceRowData++;
  if (buildCounterComplianceRowData < 3) {
    unittest.expect(o.requirement!, unittest.equals('foo'));
    checkComplianceStatus(o.status!);
  }
  buildCounterComplianceRowData--;
}

core.int buildCounterComplianceStatus = 0;
api.ComplianceStatus buildComplianceStatus() {
  final o = api.ComplianceStatus();
  buildCounterComplianceStatus++;
  if (buildCounterComplianceStatus < 3) {
    o.status = 'foo';
  }
  buildCounterComplianceStatus--;
  return o;
}

void checkComplianceStatus(api.ComplianceStatus o) {
  buildCounterComplianceStatus++;
  if (buildCounterComplianceStatus < 3) {
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterComplianceStatus--;
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

core.List<api.Date> buildUnnamed2() => [buildDate(), buildDate()];

void checkUnnamed2(core.List<api.Date> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDate(o[0]);
  checkDate(o[1]);
}

core.int buildCounterDateList = 0;
api.DateList buildDateList() {
  final o = api.DateList();
  buildCounterDateList++;
  if (buildCounterDateList < 3) {
    o.dates = buildUnnamed2();
  }
  buildCounterDateList--;
  return o;
}

void checkDateList(api.DateList o) {
  buildCounterDateList++;
  if (buildCounterDateList < 3) {
    checkUnnamed2(o.dates!);
  }
  buildCounterDateList--;
}

core.int buildCounterDateRange = 0;
api.DateRange buildDateRange() {
  final o = api.DateRange();
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    o.end = buildDate();
    o.start = buildDate();
  }
  buildCounterDateRange--;
  return o;
}

void checkDateRange(api.DateRange o) {
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    checkDate(o.end!);
    checkDate(o.start!);
  }
  buildCounterDateRange--;
}

core.List<api.DateRange> buildUnnamed3() => [
  buildDateRange(),
  buildDateRange(),
];

void checkUnnamed3(core.List<api.DateRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRange(o[0]);
  checkDateRange(o[1]);
}

core.int buildCounterDateRanges = 0;
api.DateRanges buildDateRanges() {
  final o = api.DateRanges();
  buildCounterDateRanges++;
  if (buildCounterDateRanges < 3) {
    o.dateRanges = buildUnnamed3();
  }
  buildCounterDateRanges--;
  return o;
}

void checkDateRanges(api.DateRanges o) {
  buildCounterDateRanges++;
  if (buildCounterDateRanges < 3) {
    checkUnnamed3(o.dateRanges!);
  }
  buildCounterDateRanges--;
}

core.int buildCounterDomain = 0;
api.Domain buildDomain() {
  final o = api.Domain();
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    o.createTime = 'foo';
    o.lastVerifyTime = 'foo';
    o.name = 'foo';
    o.permission = 'foo';
    o.verificationState = 'foo';
  }
  buildCounterDomain--;
  return o;
}

void checkDomain(api.Domain o) {
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.lastVerifyTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.permission!, unittest.equals('foo'));
    unittest.expect(o.verificationState!, unittest.equals('foo'));
  }
  buildCounterDomain--;
}

core.List<api.ComplianceRowData> buildUnnamed4() => [
  buildComplianceRowData(),
  buildComplianceRowData(),
];

void checkUnnamed4(core.List<api.ComplianceRowData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComplianceRowData(o[0]);
  checkComplianceRowData(o[1]);
}

core.int buildCounterDomainComplianceData = 0;
api.DomainComplianceData buildDomainComplianceData() {
  final o = api.DomainComplianceData();
  buildCounterDomainComplianceData++;
  if (buildCounterDomainComplianceData < 3) {
    o.domainId = 'foo';
    o.honorUnsubscribeVerdict = buildHonorUnsubscribeVerdict();
    o.oneClickUnsubscribeVerdict = buildOneClickUnsubscribeVerdict();
    o.rowData = buildUnnamed4();
  }
  buildCounterDomainComplianceData--;
  return o;
}

void checkDomainComplianceData(api.DomainComplianceData o) {
  buildCounterDomainComplianceData++;
  if (buildCounterDomainComplianceData < 3) {
    unittest.expect(o.domainId!, unittest.equals('foo'));
    checkHonorUnsubscribeVerdict(o.honorUnsubscribeVerdict!);
    checkOneClickUnsubscribeVerdict(o.oneClickUnsubscribeVerdict!);
    checkUnnamed4(o.rowData!);
  }
  buildCounterDomainComplianceData--;
}

core.int buildCounterDomainComplianceStatus = 0;
api.DomainComplianceStatus buildDomainComplianceStatus() {
  final o = api.DomainComplianceStatus();
  buildCounterDomainComplianceStatus++;
  if (buildCounterDomainComplianceStatus < 3) {
    o.complianceData = buildDomainComplianceData();
    o.name = 'foo';
    o.subdomainComplianceData = buildDomainComplianceData();
  }
  buildCounterDomainComplianceStatus--;
  return o;
}

void checkDomainComplianceStatus(api.DomainComplianceStatus o) {
  buildCounterDomainComplianceStatus++;
  if (buildCounterDomainComplianceStatus < 3) {
    checkDomainComplianceData(o.complianceData!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkDomainComplianceData(o.subdomainComplianceData!);
  }
  buildCounterDomainComplianceStatus--;
}

core.int buildCounterDomainStat = 0;
api.DomainStat buildDomainStat() {
  final o = api.DomainStat();
  buildCounterDomainStat++;
  if (buildCounterDomainStat < 3) {
    o.date = buildDate();
    o.metric = 'foo';
    o.name = 'foo';
    o.value = buildStatisticValue();
  }
  buildCounterDomainStat--;
  return o;
}

void checkDomainStat(api.DomainStat o) {
  buildCounterDomainStat++;
  if (buildCounterDomainStat < 3) {
    checkDate(o.date!);
    unittest.expect(o.metric!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkStatisticValue(o.value!);
  }
  buildCounterDomainStat--;
}

core.int buildCounterHonorUnsubscribeVerdict = 0;
api.HonorUnsubscribeVerdict buildHonorUnsubscribeVerdict() {
  final o = api.HonorUnsubscribeVerdict();
  buildCounterHonorUnsubscribeVerdict++;
  if (buildCounterHonorUnsubscribeVerdict < 3) {
    o.reason = 'foo';
    o.status = buildComplianceStatus();
  }
  buildCounterHonorUnsubscribeVerdict--;
  return o;
}

void checkHonorUnsubscribeVerdict(api.HonorUnsubscribeVerdict o) {
  buildCounterHonorUnsubscribeVerdict++;
  if (buildCounterHonorUnsubscribeVerdict < 3) {
    unittest.expect(o.reason!, unittest.equals('foo'));
    checkComplianceStatus(o.status!);
  }
  buildCounterHonorUnsubscribeVerdict--;
}

core.List<api.Domain> buildUnnamed5() => [buildDomain(), buildDomain()];

void checkUnnamed5(core.List<api.Domain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomain(o[0]);
  checkDomain(o[1]);
}

core.int buildCounterListDomainsResponse = 0;
api.ListDomainsResponse buildListDomainsResponse() {
  final o = api.ListDomainsResponse();
  buildCounterListDomainsResponse++;
  if (buildCounterListDomainsResponse < 3) {
    o.domains = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterListDomainsResponse--;
  return o;
}

void checkListDomainsResponse(api.ListDomainsResponse o) {
  buildCounterListDomainsResponse++;
  if (buildCounterListDomainsResponse < 3) {
    checkUnnamed5(o.domains!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDomainsResponse--;
}

core.int buildCounterMetricDefinition = 0;
api.MetricDefinition buildMetricDefinition() {
  final o = api.MetricDefinition();
  buildCounterMetricDefinition++;
  if (buildCounterMetricDefinition < 3) {
    o.baseMetric = buildBaseMetric();
    o.filter = 'foo';
    o.name = 'foo';
  }
  buildCounterMetricDefinition--;
  return o;
}

void checkMetricDefinition(api.MetricDefinition o) {
  buildCounterMetricDefinition++;
  if (buildCounterMetricDefinition < 3) {
    checkBaseMetric(o.baseMetric!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterMetricDefinition--;
}

core.int buildCounterOneClickUnsubscribeVerdict = 0;
api.OneClickUnsubscribeVerdict buildOneClickUnsubscribeVerdict() {
  final o = api.OneClickUnsubscribeVerdict();
  buildCounterOneClickUnsubscribeVerdict++;
  if (buildCounterOneClickUnsubscribeVerdict < 3) {
    o.reason = 'foo';
    o.status = buildComplianceStatus();
  }
  buildCounterOneClickUnsubscribeVerdict--;
  return o;
}

void checkOneClickUnsubscribeVerdict(api.OneClickUnsubscribeVerdict o) {
  buildCounterOneClickUnsubscribeVerdict++;
  if (buildCounterOneClickUnsubscribeVerdict < 3) {
    unittest.expect(o.reason!, unittest.equals('foo'));
    checkComplianceStatus(o.status!);
  }
  buildCounterOneClickUnsubscribeVerdict--;
}

core.List<api.MetricDefinition> buildUnnamed6() => [
  buildMetricDefinition(),
  buildMetricDefinition(),
];

void checkUnnamed6(core.List<api.MetricDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricDefinition(o[0]);
  checkMetricDefinition(o[1]);
}

core.int buildCounterQueryDomainStatsRequest = 0;
api.QueryDomainStatsRequest buildQueryDomainStatsRequest() {
  final o = api.QueryDomainStatsRequest();
  buildCounterQueryDomainStatsRequest++;
  if (buildCounterQueryDomainStatsRequest < 3) {
    o.aggregationGranularity = 'foo';
    o.metricDefinitions = buildUnnamed6();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.parent = 'foo';
    o.timeQuery = buildTimeQuery();
  }
  buildCounterQueryDomainStatsRequest--;
  return o;
}

void checkQueryDomainStatsRequest(api.QueryDomainStatsRequest o) {
  buildCounterQueryDomainStatsRequest++;
  if (buildCounterQueryDomainStatsRequest < 3) {
    unittest.expect(o.aggregationGranularity!, unittest.equals('foo'));
    checkUnnamed6(o.metricDefinitions!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkTimeQuery(o.timeQuery!);
  }
  buildCounterQueryDomainStatsRequest--;
}

core.List<api.DomainStat> buildUnnamed7() => [
  buildDomainStat(),
  buildDomainStat(),
];

void checkUnnamed7(core.List<api.DomainStat> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomainStat(o[0]);
  checkDomainStat(o[1]);
}

core.int buildCounterQueryDomainStatsResponse = 0;
api.QueryDomainStatsResponse buildQueryDomainStatsResponse() {
  final o = api.QueryDomainStatsResponse();
  buildCounterQueryDomainStatsResponse++;
  if (buildCounterQueryDomainStatsResponse < 3) {
    o.domainStats = buildUnnamed7();
    o.nextPageToken = 'foo';
  }
  buildCounterQueryDomainStatsResponse--;
  return o;
}

void checkQueryDomainStatsResponse(api.QueryDomainStatsResponse o) {
  buildCounterQueryDomainStatsResponse++;
  if (buildCounterQueryDomainStatsResponse < 3) {
    checkUnnamed7(o.domainStats!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterQueryDomainStatsResponse--;
}

core.int buildCounterStatisticValue = 0;
api.StatisticValue buildStatisticValue() {
  final o = api.StatisticValue();
  buildCounterStatisticValue++;
  if (buildCounterStatisticValue < 3) {
    o.doubleValue = 42.0;
    o.floatValue = 42.0;
    o.intValue = 'foo';
    o.stringList = buildStringList();
    o.stringValue = 'foo';
  }
  buildCounterStatisticValue--;
  return o;
}

void checkStatisticValue(api.StatisticValue o) {
  buildCounterStatisticValue++;
  if (buildCounterStatisticValue < 3) {
    unittest.expect(o.doubleValue!, unittest.equals(42.0));
    unittest.expect(o.floatValue!, unittest.equals(42.0));
    unittest.expect(o.intValue!, unittest.equals('foo'));
    checkStringList(o.stringList!);
    unittest.expect(o.stringValue!, unittest.equals('foo'));
  }
  buildCounterStatisticValue--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed9() => [
  buildUnnamed8(),
  buildUnnamed8(),
];

void checkUnnamed9(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8(o[0]);
  checkUnnamed8(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed9();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed9(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringList = 0;
api.StringList buildStringList() {
  final o = api.StringList();
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    o.values = buildUnnamed10();
  }
  buildCounterStringList--;
  return o;
}

void checkStringList(api.StringList o) {
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    checkUnnamed10(o.values!);
  }
  buildCounterStringList--;
}

core.int buildCounterTimeQuery = 0;
api.TimeQuery buildTimeQuery() {
  final o = api.TimeQuery();
  buildCounterTimeQuery++;
  if (buildCounterTimeQuery < 3) {
    o.dateList = buildDateList();
    o.dateRanges = buildDateRanges();
  }
  buildCounterTimeQuery--;
  return o;
}

void checkTimeQuery(api.TimeQuery o) {
  buildCounterTimeQuery++;
  if (buildCounterTimeQuery < 3) {
    checkDateList(o.dateList!);
    checkDateRanges(o.dateRanges!);
  }
  buildCounterTimeQuery--;
}

void main() {
  unittest.group('obj-schema-BaseMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBaseMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BaseMetric.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBaseMetric(od);
    });
  });

  unittest.group('obj-schema-BatchQueryDomainStatsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchQueryDomainStatsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchQueryDomainStatsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchQueryDomainStatsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchQueryDomainStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchQueryDomainStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchQueryDomainStatsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchQueryDomainStatsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchQueryDomainStatsResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchQueryDomainStatsResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchQueryDomainStatsResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchQueryDomainStatsResult(od);
    });
  });

  unittest.group('obj-schema-ComplianceRowData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceRowData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceRowData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComplianceRowData(od);
    });
  });

  unittest.group('obj-schema-ComplianceStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComplianceStatus(od);
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

  unittest.group('obj-schema-DateList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDateList(od);
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

  unittest.group('obj-schema-DateRanges', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateRanges();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateRanges.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDateRanges(od);
    });
  });

  unittest.group('obj-schema-Domain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Domain.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDomain(od);
    });
  });

  unittest.group('obj-schema-DomainComplianceData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomainComplianceData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DomainComplianceData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDomainComplianceData(od);
    });
  });

  unittest.group('obj-schema-DomainComplianceStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomainComplianceStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DomainComplianceStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDomainComplianceStatus(od);
    });
  });

  unittest.group('obj-schema-DomainStat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomainStat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DomainStat.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDomainStat(od);
    });
  });

  unittest.group('obj-schema-HonorUnsubscribeVerdict', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHonorUnsubscribeVerdict();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HonorUnsubscribeVerdict.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHonorUnsubscribeVerdict(od);
    });
  });

  unittest.group('obj-schema-ListDomainsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDomainsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDomainsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDomainsResponse(od);
    });
  });

  unittest.group('obj-schema-MetricDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricDefinition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetricDefinition(od);
    });
  });

  unittest.group('obj-schema-OneClickUnsubscribeVerdict', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOneClickUnsubscribeVerdict();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OneClickUnsubscribeVerdict.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOneClickUnsubscribeVerdict(od);
    });
  });

  unittest.group('obj-schema-QueryDomainStatsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryDomainStatsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryDomainStatsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryDomainStatsRequest(od);
    });
  });

  unittest.group('obj-schema-QueryDomainStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryDomainStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryDomainStatsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryDomainStatsResponse(od);
    });
  });

  unittest.group('obj-schema-StatisticValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatisticValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StatisticValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatisticValue(od);
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

  unittest.group('obj-schema-TimeQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeQuery.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeQuery(od);
    });
  });

  unittest.group('resource-DomainStatsResource', () {
    unittest.test('method--batchQuery', () async {
      final mock = HttpServerMock();
      final res = api.PostmasterToolsApi(mock).domainStats;
      final arg_request = buildBatchQueryDomainStatsRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchQueryDomainStatsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchQueryDomainStatsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('v2/domainStats:batchQuery'),
          );
          pathOffset += 25;

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
          final resp = convert.json.encode(
            buildBatchQueryDomainStatsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchQuery(arg_request, $fields: arg_$fields);
      checkBatchQueryDomainStatsResponse(
        response as api.BatchQueryDomainStatsResponse,
      );
    });
  });

  unittest.group('resource-DomainsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PostmasterToolsApi(mock).domains;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildDomain());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDomain(response as api.Domain);
    });

    unittest.test('method--getComplianceStatus', () async {
      final mock = HttpServerMock();
      final res = api.PostmasterToolsApi(mock).domains;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildDomainComplianceStatus());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getComplianceStatus(
        arg_name,
        $fields: arg_$fields,
      );
      checkDomainComplianceStatus(response as api.DomainComplianceStatus);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PostmasterToolsApi(mock).domains;
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
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('v2/domains'),
          );
          pathOffset += 10;

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
          final resp = convert.json.encode(buildListDomainsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDomainsResponse(response as api.ListDomainsResponse);
    });
  });

  unittest.group('resource-DomainsDomainStatsResource', () {
    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.PostmasterToolsApi(mock).domains.domainStats;
      final arg_request = buildQueryDomainStatsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.QueryDomainStatsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkQueryDomainStatsRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildQueryDomainStatsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.query(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkQueryDomainStatsResponse(response as api.QueryDomainStatsResponse);
    });
  });
}
