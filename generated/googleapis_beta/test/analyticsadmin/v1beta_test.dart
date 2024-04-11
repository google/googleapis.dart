// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis_beta/analyticsadmin/v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleAnalyticsAdminV1betaAccessBetweenFilter = 0;
api.GoogleAnalyticsAdminV1betaAccessBetweenFilter
    buildGoogleAnalyticsAdminV1betaAccessBetweenFilter() {
  final o = api.GoogleAnalyticsAdminV1betaAccessBetweenFilter();
  buildCounterGoogleAnalyticsAdminV1betaAccessBetweenFilter++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessBetweenFilter < 3) {
    o.fromValue = buildGoogleAnalyticsAdminV1betaNumericValue();
    o.toValue = buildGoogleAnalyticsAdminV1betaNumericValue();
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessBetweenFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessBetweenFilter(
    api.GoogleAnalyticsAdminV1betaAccessBetweenFilter o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessBetweenFilter++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessBetweenFilter < 3) {
    checkGoogleAnalyticsAdminV1betaNumericValue(o.fromValue!);
    checkGoogleAnalyticsAdminV1betaNumericValue(o.toValue!);
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessBetweenFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessDateRange = 0;
api.GoogleAnalyticsAdminV1betaAccessDateRange
    buildGoogleAnalyticsAdminV1betaAccessDateRange() {
  final o = api.GoogleAnalyticsAdminV1betaAccessDateRange();
  buildCounterGoogleAnalyticsAdminV1betaAccessDateRange++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessDateRange < 3) {
    o.endDate = 'foo';
    o.startDate = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessDateRange--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessDateRange(
    api.GoogleAnalyticsAdminV1betaAccessDateRange o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessDateRange++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessDateRange < 3) {
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessDateRange--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessDimension = 0;
api.GoogleAnalyticsAdminV1betaAccessDimension
    buildGoogleAnalyticsAdminV1betaAccessDimension() {
  final o = api.GoogleAnalyticsAdminV1betaAccessDimension();
  buildCounterGoogleAnalyticsAdminV1betaAccessDimension++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessDimension < 3) {
    o.dimensionName = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessDimension--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessDimension(
    api.GoogleAnalyticsAdminV1betaAccessDimension o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessDimension++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessDimension < 3) {
    unittest.expect(
      o.dimensionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessDimension--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessDimensionHeader = 0;
api.GoogleAnalyticsAdminV1betaAccessDimensionHeader
    buildGoogleAnalyticsAdminV1betaAccessDimensionHeader() {
  final o = api.GoogleAnalyticsAdminV1betaAccessDimensionHeader();
  buildCounterGoogleAnalyticsAdminV1betaAccessDimensionHeader++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessDimensionHeader < 3) {
    o.dimensionName = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessDimensionHeader--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessDimensionHeader(
    api.GoogleAnalyticsAdminV1betaAccessDimensionHeader o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessDimensionHeader++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessDimensionHeader < 3) {
    unittest.expect(
      o.dimensionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessDimensionHeader--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessDimensionValue = 0;
api.GoogleAnalyticsAdminV1betaAccessDimensionValue
    buildGoogleAnalyticsAdminV1betaAccessDimensionValue() {
  final o = api.GoogleAnalyticsAdminV1betaAccessDimensionValue();
  buildCounterGoogleAnalyticsAdminV1betaAccessDimensionValue++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessDimensionValue < 3) {
    o.value = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessDimensionValue--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessDimensionValue(
    api.GoogleAnalyticsAdminV1betaAccessDimensionValue o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessDimensionValue++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessDimensionValue < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessDimensionValue--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessFilter = 0;
api.GoogleAnalyticsAdminV1betaAccessFilter
    buildGoogleAnalyticsAdminV1betaAccessFilter() {
  final o = api.GoogleAnalyticsAdminV1betaAccessFilter();
  buildCounterGoogleAnalyticsAdminV1betaAccessFilter++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessFilter < 3) {
    o.betweenFilter = buildGoogleAnalyticsAdminV1betaAccessBetweenFilter();
    o.fieldName = 'foo';
    o.inListFilter = buildGoogleAnalyticsAdminV1betaAccessInListFilter();
    o.numericFilter = buildGoogleAnalyticsAdminV1betaAccessNumericFilter();
    o.stringFilter = buildGoogleAnalyticsAdminV1betaAccessStringFilter();
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessFilter(
    api.GoogleAnalyticsAdminV1betaAccessFilter o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessFilter++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessFilter < 3) {
    checkGoogleAnalyticsAdminV1betaAccessBetweenFilter(o.betweenFilter!);
    unittest.expect(
      o.fieldName!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1betaAccessInListFilter(o.inListFilter!);
    checkGoogleAnalyticsAdminV1betaAccessNumericFilter(o.numericFilter!);
    checkGoogleAnalyticsAdminV1betaAccessStringFilter(o.stringFilter!);
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessFilterExpression = 0;
api.GoogleAnalyticsAdminV1betaAccessFilterExpression
    buildGoogleAnalyticsAdminV1betaAccessFilterExpression() {
  final o = api.GoogleAnalyticsAdminV1betaAccessFilterExpression();
  buildCounterGoogleAnalyticsAdminV1betaAccessFilterExpression++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessFilterExpression < 3) {
    o.accessFilter = buildGoogleAnalyticsAdminV1betaAccessFilter();
    o.andGroup = buildGoogleAnalyticsAdminV1betaAccessFilterExpressionList();
    o.notExpression = buildGoogleAnalyticsAdminV1betaAccessFilterExpression();
    o.orGroup = buildGoogleAnalyticsAdminV1betaAccessFilterExpressionList();
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessFilterExpression--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessFilterExpression(
    api.GoogleAnalyticsAdminV1betaAccessFilterExpression o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessFilterExpression++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessFilterExpression < 3) {
    checkGoogleAnalyticsAdminV1betaAccessFilter(o.accessFilter!);
    checkGoogleAnalyticsAdminV1betaAccessFilterExpressionList(o.andGroup!);
    checkGoogleAnalyticsAdminV1betaAccessFilterExpression(o.notExpression!);
    checkGoogleAnalyticsAdminV1betaAccessFilterExpressionList(o.orGroup!);
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessFilterExpression--;
}

core.List<api.GoogleAnalyticsAdminV1betaAccessFilterExpression>
    buildUnnamed0() => [
          buildGoogleAnalyticsAdminV1betaAccessFilterExpression(),
          buildGoogleAnalyticsAdminV1betaAccessFilterExpression(),
        ];

void checkUnnamed0(
    core.List<api.GoogleAnalyticsAdminV1betaAccessFilterExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaAccessFilterExpression(o[0]);
  checkGoogleAnalyticsAdminV1betaAccessFilterExpression(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessFilterExpressionList = 0;
api.GoogleAnalyticsAdminV1betaAccessFilterExpressionList
    buildGoogleAnalyticsAdminV1betaAccessFilterExpressionList() {
  final o = api.GoogleAnalyticsAdminV1betaAccessFilterExpressionList();
  buildCounterGoogleAnalyticsAdminV1betaAccessFilterExpressionList++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessFilterExpressionList < 3) {
    o.expressions = buildUnnamed0();
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessFilterExpressionList--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessFilterExpressionList(
    api.GoogleAnalyticsAdminV1betaAccessFilterExpressionList o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessFilterExpressionList++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessFilterExpressionList < 3) {
    checkUnnamed0(o.expressions!);
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessFilterExpressionList--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.int buildCounterGoogleAnalyticsAdminV1betaAccessInListFilter = 0;
api.GoogleAnalyticsAdminV1betaAccessInListFilter
    buildGoogleAnalyticsAdminV1betaAccessInListFilter() {
  final o = api.GoogleAnalyticsAdminV1betaAccessInListFilter();
  buildCounterGoogleAnalyticsAdminV1betaAccessInListFilter++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessInListFilter < 3) {
    o.caseSensitive = true;
    o.values = buildUnnamed1();
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessInListFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessInListFilter(
    api.GoogleAnalyticsAdminV1betaAccessInListFilter o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessInListFilter++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessInListFilter < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    checkUnnamed1(o.values!);
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessInListFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessMetric = 0;
api.GoogleAnalyticsAdminV1betaAccessMetric
    buildGoogleAnalyticsAdminV1betaAccessMetric() {
  final o = api.GoogleAnalyticsAdminV1betaAccessMetric();
  buildCounterGoogleAnalyticsAdminV1betaAccessMetric++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessMetric < 3) {
    o.metricName = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessMetric--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessMetric(
    api.GoogleAnalyticsAdminV1betaAccessMetric o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessMetric++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessMetric < 3) {
    unittest.expect(
      o.metricName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessMetric--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessMetricHeader = 0;
api.GoogleAnalyticsAdminV1betaAccessMetricHeader
    buildGoogleAnalyticsAdminV1betaAccessMetricHeader() {
  final o = api.GoogleAnalyticsAdminV1betaAccessMetricHeader();
  buildCounterGoogleAnalyticsAdminV1betaAccessMetricHeader++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessMetricHeader < 3) {
    o.metricName = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessMetricHeader--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessMetricHeader(
    api.GoogleAnalyticsAdminV1betaAccessMetricHeader o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessMetricHeader++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessMetricHeader < 3) {
    unittest.expect(
      o.metricName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessMetricHeader--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessMetricValue = 0;
api.GoogleAnalyticsAdminV1betaAccessMetricValue
    buildGoogleAnalyticsAdminV1betaAccessMetricValue() {
  final o = api.GoogleAnalyticsAdminV1betaAccessMetricValue();
  buildCounterGoogleAnalyticsAdminV1betaAccessMetricValue++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessMetricValue < 3) {
    o.value = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessMetricValue--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessMetricValue(
    api.GoogleAnalyticsAdminV1betaAccessMetricValue o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessMetricValue++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessMetricValue < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessMetricValue--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessNumericFilter = 0;
api.GoogleAnalyticsAdminV1betaAccessNumericFilter
    buildGoogleAnalyticsAdminV1betaAccessNumericFilter() {
  final o = api.GoogleAnalyticsAdminV1betaAccessNumericFilter();
  buildCounterGoogleAnalyticsAdminV1betaAccessNumericFilter++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessNumericFilter < 3) {
    o.operation = 'foo';
    o.value = buildGoogleAnalyticsAdminV1betaNumericValue();
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessNumericFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessNumericFilter(
    api.GoogleAnalyticsAdminV1betaAccessNumericFilter o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessNumericFilter++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessNumericFilter < 3) {
    unittest.expect(
      o.operation!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1betaNumericValue(o.value!);
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessNumericFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessOrderBy = 0;
api.GoogleAnalyticsAdminV1betaAccessOrderBy
    buildGoogleAnalyticsAdminV1betaAccessOrderBy() {
  final o = api.GoogleAnalyticsAdminV1betaAccessOrderBy();
  buildCounterGoogleAnalyticsAdminV1betaAccessOrderBy++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessOrderBy < 3) {
    o.desc = true;
    o.dimension =
        buildGoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy();
    o.metric = buildGoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy();
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessOrderBy--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessOrderBy(
    api.GoogleAnalyticsAdminV1betaAccessOrderBy o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessOrderBy++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessOrderBy < 3) {
    unittest.expect(o.desc!, unittest.isTrue);
    checkGoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy(o.dimension!);
    checkGoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy(o.metric!);
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessOrderBy--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy =
    0;
api.GoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy
    buildGoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy() {
  final o = api.GoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy();
  buildCounterGoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy < 3) {
    o.dimensionName = 'foo';
    o.orderType = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy(
    api.GoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy < 3) {
    unittest.expect(
      o.dimensionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy = 0;
api.GoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy
    buildGoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy() {
  final o = api.GoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy();
  buildCounterGoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy < 3) {
    o.metricName = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy(
    api.GoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy < 3) {
    unittest.expect(
      o.metricName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessQuota = 0;
api.GoogleAnalyticsAdminV1betaAccessQuota
    buildGoogleAnalyticsAdminV1betaAccessQuota() {
  final o = api.GoogleAnalyticsAdminV1betaAccessQuota();
  buildCounterGoogleAnalyticsAdminV1betaAccessQuota++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessQuota < 3) {
    o.concurrentRequests = buildGoogleAnalyticsAdminV1betaAccessQuotaStatus();
    o.serverErrorsPerProjectPerHour =
        buildGoogleAnalyticsAdminV1betaAccessQuotaStatus();
    o.tokensPerDay = buildGoogleAnalyticsAdminV1betaAccessQuotaStatus();
    o.tokensPerHour = buildGoogleAnalyticsAdminV1betaAccessQuotaStatus();
    o.tokensPerProjectPerHour =
        buildGoogleAnalyticsAdminV1betaAccessQuotaStatus();
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessQuota--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessQuota(
    api.GoogleAnalyticsAdminV1betaAccessQuota o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessQuota++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessQuota < 3) {
    checkGoogleAnalyticsAdminV1betaAccessQuotaStatus(o.concurrentRequests!);
    checkGoogleAnalyticsAdminV1betaAccessQuotaStatus(
        o.serverErrorsPerProjectPerHour!);
    checkGoogleAnalyticsAdminV1betaAccessQuotaStatus(o.tokensPerDay!);
    checkGoogleAnalyticsAdminV1betaAccessQuotaStatus(o.tokensPerHour!);
    checkGoogleAnalyticsAdminV1betaAccessQuotaStatus(
        o.tokensPerProjectPerHour!);
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessQuota--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessQuotaStatus = 0;
api.GoogleAnalyticsAdminV1betaAccessQuotaStatus
    buildGoogleAnalyticsAdminV1betaAccessQuotaStatus() {
  final o = api.GoogleAnalyticsAdminV1betaAccessQuotaStatus();
  buildCounterGoogleAnalyticsAdminV1betaAccessQuotaStatus++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessQuotaStatus < 3) {
    o.consumed = 42;
    o.remaining = 42;
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessQuotaStatus--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessQuotaStatus(
    api.GoogleAnalyticsAdminV1betaAccessQuotaStatus o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessQuotaStatus++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessQuotaStatus < 3) {
    unittest.expect(
      o.consumed!,
      unittest.equals(42),
    );
    unittest.expect(
      o.remaining!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessQuotaStatus--;
}

core.List<api.GoogleAnalyticsAdminV1betaAccessDimensionValue> buildUnnamed2() =>
    [
      buildGoogleAnalyticsAdminV1betaAccessDimensionValue(),
      buildGoogleAnalyticsAdminV1betaAccessDimensionValue(),
    ];

void checkUnnamed2(
    core.List<api.GoogleAnalyticsAdminV1betaAccessDimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaAccessDimensionValue(o[0]);
  checkGoogleAnalyticsAdminV1betaAccessDimensionValue(o[1]);
}

core.List<api.GoogleAnalyticsAdminV1betaAccessMetricValue> buildUnnamed3() => [
      buildGoogleAnalyticsAdminV1betaAccessMetricValue(),
      buildGoogleAnalyticsAdminV1betaAccessMetricValue(),
    ];

void checkUnnamed3(
    core.List<api.GoogleAnalyticsAdminV1betaAccessMetricValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaAccessMetricValue(o[0]);
  checkGoogleAnalyticsAdminV1betaAccessMetricValue(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessRow = 0;
api.GoogleAnalyticsAdminV1betaAccessRow
    buildGoogleAnalyticsAdminV1betaAccessRow() {
  final o = api.GoogleAnalyticsAdminV1betaAccessRow();
  buildCounterGoogleAnalyticsAdminV1betaAccessRow++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessRow < 3) {
    o.dimensionValues = buildUnnamed2();
    o.metricValues = buildUnnamed3();
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessRow--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessRow(
    api.GoogleAnalyticsAdminV1betaAccessRow o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessRow++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessRow < 3) {
    checkUnnamed2(o.dimensionValues!);
    checkUnnamed3(o.metricValues!);
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessRow--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccessStringFilter = 0;
api.GoogleAnalyticsAdminV1betaAccessStringFilter
    buildGoogleAnalyticsAdminV1betaAccessStringFilter() {
  final o = api.GoogleAnalyticsAdminV1betaAccessStringFilter();
  buildCounterGoogleAnalyticsAdminV1betaAccessStringFilter++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessStringFilter < 3) {
    o.caseSensitive = true;
    o.matchType = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaAccessStringFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccessStringFilter(
    api.GoogleAnalyticsAdminV1betaAccessStringFilter o) {
  buildCounterGoogleAnalyticsAdminV1betaAccessStringFilter++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccessStringFilter < 3) {
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
  buildCounterGoogleAnalyticsAdminV1betaAccessStringFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccount = 0;
api.GoogleAnalyticsAdminV1betaAccount buildGoogleAnalyticsAdminV1betaAccount() {
  final o = api.GoogleAnalyticsAdminV1betaAccount();
  buildCounterGoogleAnalyticsAdminV1betaAccount++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccount < 3) {
    o.createTime = 'foo';
    o.deleted = true;
    o.displayName = 'foo';
    o.gmpOrganization = 'foo';
    o.name = 'foo';
    o.regionCode = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaAccount--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccount(
    api.GoogleAnalyticsAdminV1betaAccount o) {
  buildCounterGoogleAnalyticsAdminV1betaAccount++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccount < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gmpOrganization!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaAccount--;
}

core.List<api.GoogleAnalyticsAdminV1betaPropertySummary> buildUnnamed4() => [
      buildGoogleAnalyticsAdminV1betaPropertySummary(),
      buildGoogleAnalyticsAdminV1betaPropertySummary(),
    ];

void checkUnnamed4(core.List<api.GoogleAnalyticsAdminV1betaPropertySummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaPropertySummary(o[0]);
  checkGoogleAnalyticsAdminV1betaPropertySummary(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccountSummary = 0;
api.GoogleAnalyticsAdminV1betaAccountSummary
    buildGoogleAnalyticsAdminV1betaAccountSummary() {
  final o = api.GoogleAnalyticsAdminV1betaAccountSummary();
  buildCounterGoogleAnalyticsAdminV1betaAccountSummary++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccountSummary < 3) {
    o.account = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.propertySummaries = buildUnnamed4();
  }
  buildCounterGoogleAnalyticsAdminV1betaAccountSummary--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccountSummary(
    api.GoogleAnalyticsAdminV1betaAccountSummary o) {
  buildCounterGoogleAnalyticsAdminV1betaAccountSummary++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccountSummary < 3) {
    unittest.expect(
      o.account!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.propertySummaries!);
  }
  buildCounterGoogleAnalyticsAdminV1betaAccountSummary--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest =
    0;
api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest
    buildGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest() {
  final o =
      api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest();
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest <
      3) {
    o.acknowledgement = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest(
    api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest o) {
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest <
      3) {
    unittest.expect(
      o.acknowledgement!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse =
    0;
api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse
    buildGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse() {
  final o =
      api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse();
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse <
      3) {}
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse(
    api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse <
      3) {}
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest =
    0;
api.GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest
    buildGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest() {
  final o = api.GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest();
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest <
      3) {}
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest(
    api.GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest o) {
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest <
      3) {}
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest = 0;
api.GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest
    buildGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest() {
  final o = api.GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest();
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest < 3) {}
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest(
    api.GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest o) {
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest < 3) {}
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChange = 0;
api.GoogleAnalyticsAdminV1betaChangeHistoryChange
    buildGoogleAnalyticsAdminV1betaChangeHistoryChange() {
  final o = api.GoogleAnalyticsAdminV1betaChangeHistoryChange();
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChange++;
  if (buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChange < 3) {
    o.action = 'foo';
    o.resource = 'foo';
    o.resourceAfterChange =
        buildGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource();
    o.resourceBeforeChange =
        buildGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource();
  }
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChange--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaChangeHistoryChange(
    api.GoogleAnalyticsAdminV1betaChangeHistoryChange o) {
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChange++;
  if (buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChange < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource(
        o.resourceAfterChange!);
    checkGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource(
        o.resourceBeforeChange!);
  }
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChange--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource =
    0;
api.GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource
    buildGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource() {
  final o =
      api.GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource();
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource++;
  if (buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource <
      3) {
    o.account = buildGoogleAnalyticsAdminV1betaAccount();
    o.conversionEvent = buildGoogleAnalyticsAdminV1betaConversionEvent();
    o.dataRetentionSettings =
        buildGoogleAnalyticsAdminV1betaDataRetentionSettings();
    o.dataStream = buildGoogleAnalyticsAdminV1betaDataStream();
    o.firebaseLink = buildGoogleAnalyticsAdminV1betaFirebaseLink();
    o.googleAdsLink = buildGoogleAnalyticsAdminV1betaGoogleAdsLink();
    o.measurementProtocolSecret =
        buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret();
    o.property = buildGoogleAnalyticsAdminV1betaProperty();
  }
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource(
    api.GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource o) {
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource++;
  if (buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource <
      3) {
    checkGoogleAnalyticsAdminV1betaAccount(o.account!);
    checkGoogleAnalyticsAdminV1betaConversionEvent(o.conversionEvent!);
    checkGoogleAnalyticsAdminV1betaDataRetentionSettings(
        o.dataRetentionSettings!);
    checkGoogleAnalyticsAdminV1betaDataStream(o.dataStream!);
    checkGoogleAnalyticsAdminV1betaFirebaseLink(o.firebaseLink!);
    checkGoogleAnalyticsAdminV1betaGoogleAdsLink(o.googleAdsLink!);
    checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(
        o.measurementProtocolSecret!);
    checkGoogleAnalyticsAdminV1betaProperty(o.property!);
  }
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource--;
}

core.List<api.GoogleAnalyticsAdminV1betaChangeHistoryChange> buildUnnamed5() =>
    [
      buildGoogleAnalyticsAdminV1betaChangeHistoryChange(),
      buildGoogleAnalyticsAdminV1betaChangeHistoryChange(),
    ];

void checkUnnamed5(
    core.List<api.GoogleAnalyticsAdminV1betaChangeHistoryChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaChangeHistoryChange(o[0]);
  checkGoogleAnalyticsAdminV1betaChangeHistoryChange(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaChangeHistoryEvent = 0;
api.GoogleAnalyticsAdminV1betaChangeHistoryEvent
    buildGoogleAnalyticsAdminV1betaChangeHistoryEvent() {
  final o = api.GoogleAnalyticsAdminV1betaChangeHistoryEvent();
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryEvent++;
  if (buildCounterGoogleAnalyticsAdminV1betaChangeHistoryEvent < 3) {
    o.actorType = 'foo';
    o.changeTime = 'foo';
    o.changes = buildUnnamed5();
    o.changesFiltered = true;
    o.id = 'foo';
    o.userActorEmail = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryEvent--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaChangeHistoryEvent(
    api.GoogleAnalyticsAdminV1betaChangeHistoryEvent o) {
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryEvent++;
  if (buildCounterGoogleAnalyticsAdminV1betaChangeHistoryEvent < 3) {
    unittest.expect(
      o.actorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.changeTime!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.changes!);
    unittest.expect(o.changesFiltered!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userActorEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryEvent--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaConversionEvent = 0;
api.GoogleAnalyticsAdminV1betaConversionEvent
    buildGoogleAnalyticsAdminV1betaConversionEvent() {
  final o = api.GoogleAnalyticsAdminV1betaConversionEvent();
  buildCounterGoogleAnalyticsAdminV1betaConversionEvent++;
  if (buildCounterGoogleAnalyticsAdminV1betaConversionEvent < 3) {
    o.countingMethod = 'foo';
    o.createTime = 'foo';
    o.custom = true;
    o.defaultConversionValue =
        buildGoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue();
    o.deletable = true;
    o.eventName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaConversionEvent--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaConversionEvent(
    api.GoogleAnalyticsAdminV1betaConversionEvent o) {
  buildCounterGoogleAnalyticsAdminV1betaConversionEvent++;
  if (buildCounterGoogleAnalyticsAdminV1betaConversionEvent < 3) {
    unittest.expect(
      o.countingMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.custom!, unittest.isTrue);
    checkGoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue(
        o.defaultConversionValue!);
    unittest.expect(o.deletable!, unittest.isTrue);
    unittest.expect(
      o.eventName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaConversionEvent--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue =
    0;
api.GoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue
    buildGoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue() {
  final o =
      api.GoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue();
  buildCounterGoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue++;
  if (buildCounterGoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue <
      3) {
    o.currencyCode = 'foo';
    o.value = 42.0;
  }
  buildCounterGoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue(
    api.GoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue o) {
  buildCounterGoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue++;
  if (buildCounterGoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue <
      3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaCustomDimension = 0;
api.GoogleAnalyticsAdminV1betaCustomDimension
    buildGoogleAnalyticsAdminV1betaCustomDimension() {
  final o = api.GoogleAnalyticsAdminV1betaCustomDimension();
  buildCounterGoogleAnalyticsAdminV1betaCustomDimension++;
  if (buildCounterGoogleAnalyticsAdminV1betaCustomDimension < 3) {
    o.description = 'foo';
    o.disallowAdsPersonalization = true;
    o.displayName = 'foo';
    o.name = 'foo';
    o.parameterName = 'foo';
    o.scope = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaCustomDimension--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaCustomDimension(
    api.GoogleAnalyticsAdminV1betaCustomDimension o) {
  buildCounterGoogleAnalyticsAdminV1betaCustomDimension++;
  if (buildCounterGoogleAnalyticsAdminV1betaCustomDimension < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disallowAdsPersonalization!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parameterName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaCustomDimension--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterGoogleAnalyticsAdminV1betaCustomMetric = 0;
api.GoogleAnalyticsAdminV1betaCustomMetric
    buildGoogleAnalyticsAdminV1betaCustomMetric() {
  final o = api.GoogleAnalyticsAdminV1betaCustomMetric();
  buildCounterGoogleAnalyticsAdminV1betaCustomMetric++;
  if (buildCounterGoogleAnalyticsAdminV1betaCustomMetric < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.measurementUnit = 'foo';
    o.name = 'foo';
    o.parameterName = 'foo';
    o.restrictedMetricType = buildUnnamed6();
    o.scope = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaCustomMetric--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaCustomMetric(
    api.GoogleAnalyticsAdminV1betaCustomMetric o) {
  buildCounterGoogleAnalyticsAdminV1betaCustomMetric++;
  if (buildCounterGoogleAnalyticsAdminV1betaCustomMetric < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.measurementUnit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parameterName!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.restrictedMetricType!);
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaCustomMetric--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaDataRetentionSettings = 0;
api.GoogleAnalyticsAdminV1betaDataRetentionSettings
    buildGoogleAnalyticsAdminV1betaDataRetentionSettings() {
  final o = api.GoogleAnalyticsAdminV1betaDataRetentionSettings();
  buildCounterGoogleAnalyticsAdminV1betaDataRetentionSettings++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataRetentionSettings < 3) {
    o.eventDataRetention = 'foo';
    o.name = 'foo';
    o.resetUserDataOnNewActivity = true;
  }
  buildCounterGoogleAnalyticsAdminV1betaDataRetentionSettings--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaDataRetentionSettings(
    api.GoogleAnalyticsAdminV1betaDataRetentionSettings o) {
  buildCounterGoogleAnalyticsAdminV1betaDataRetentionSettings++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataRetentionSettings < 3) {
    unittest.expect(
      o.eventDataRetention!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.resetUserDataOnNewActivity!, unittest.isTrue);
  }
  buildCounterGoogleAnalyticsAdminV1betaDataRetentionSettings--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaDataSharingSettings = 0;
api.GoogleAnalyticsAdminV1betaDataSharingSettings
    buildGoogleAnalyticsAdminV1betaDataSharingSettings() {
  final o = api.GoogleAnalyticsAdminV1betaDataSharingSettings();
  buildCounterGoogleAnalyticsAdminV1betaDataSharingSettings++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataSharingSettings < 3) {
    o.name = 'foo';
    o.sharingWithGoogleAnySalesEnabled = true;
    o.sharingWithGoogleAssignedSalesEnabled = true;
    o.sharingWithGoogleProductsEnabled = true;
    o.sharingWithGoogleSupportEnabled = true;
    o.sharingWithOthersEnabled = true;
  }
  buildCounterGoogleAnalyticsAdminV1betaDataSharingSettings--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaDataSharingSettings(
    api.GoogleAnalyticsAdminV1betaDataSharingSettings o) {
  buildCounterGoogleAnalyticsAdminV1betaDataSharingSettings++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataSharingSettings < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.sharingWithGoogleAnySalesEnabled!, unittest.isTrue);
    unittest.expect(o.sharingWithGoogleAssignedSalesEnabled!, unittest.isTrue);
    unittest.expect(o.sharingWithGoogleProductsEnabled!, unittest.isTrue);
    unittest.expect(o.sharingWithGoogleSupportEnabled!, unittest.isTrue);
    unittest.expect(o.sharingWithOthersEnabled!, unittest.isTrue);
  }
  buildCounterGoogleAnalyticsAdminV1betaDataSharingSettings--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaDataStream = 0;
api.GoogleAnalyticsAdminV1betaDataStream
    buildGoogleAnalyticsAdminV1betaDataStream() {
  final o = api.GoogleAnalyticsAdminV1betaDataStream();
  buildCounterGoogleAnalyticsAdminV1betaDataStream++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStream < 3) {
    o.androidAppStreamData =
        buildGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.iosAppStreamData =
        buildGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData();
    o.name = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
    o.webStreamData = buildGoogleAnalyticsAdminV1betaDataStreamWebStreamData();
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStream--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaDataStream(
    api.GoogleAnalyticsAdminV1betaDataStream o) {
  buildCounterGoogleAnalyticsAdminV1betaDataStream++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStream < 3) {
    checkGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData(
        o.androidAppStreamData!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData(
        o.iosAppStreamData!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1betaDataStreamWebStreamData(o.webStreamData!);
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStream--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData =
    0;
api.GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData
    buildGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData() {
  final o = api.GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData();
  buildCounterGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData <
      3) {
    o.firebaseAppId = 'foo';
    o.packageName = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData(
    api.GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData o) {
  buildCounterGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData <
      3) {
    unittest.expect(
      o.firebaseAppId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData = 0;
api.GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData
    buildGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData() {
  final o = api.GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData();
  buildCounterGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData < 3) {
    o.bundleId = 'foo';
    o.firebaseAppId = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData(
    api.GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData o) {
  buildCounterGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData < 3) {
    unittest.expect(
      o.bundleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firebaseAppId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaDataStreamWebStreamData = 0;
api.GoogleAnalyticsAdminV1betaDataStreamWebStreamData
    buildGoogleAnalyticsAdminV1betaDataStreamWebStreamData() {
  final o = api.GoogleAnalyticsAdminV1betaDataStreamWebStreamData();
  buildCounterGoogleAnalyticsAdminV1betaDataStreamWebStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStreamWebStreamData < 3) {
    o.defaultUri = 'foo';
    o.firebaseAppId = 'foo';
    o.measurementId = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStreamWebStreamData--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaDataStreamWebStreamData(
    api.GoogleAnalyticsAdminV1betaDataStreamWebStreamData o) {
  buildCounterGoogleAnalyticsAdminV1betaDataStreamWebStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStreamWebStreamData < 3) {
    unittest.expect(
      o.defaultUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firebaseAppId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.measurementId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStreamWebStreamData--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaFirebaseLink = 0;
api.GoogleAnalyticsAdminV1betaFirebaseLink
    buildGoogleAnalyticsAdminV1betaFirebaseLink() {
  final o = api.GoogleAnalyticsAdminV1betaFirebaseLink();
  buildCounterGoogleAnalyticsAdminV1betaFirebaseLink++;
  if (buildCounterGoogleAnalyticsAdminV1betaFirebaseLink < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.project = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaFirebaseLink--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaFirebaseLink(
    api.GoogleAnalyticsAdminV1betaFirebaseLink o) {
  buildCounterGoogleAnalyticsAdminV1betaFirebaseLink++;
  if (buildCounterGoogleAnalyticsAdminV1betaFirebaseLink < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaFirebaseLink--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaGoogleAdsLink = 0;
api.GoogleAnalyticsAdminV1betaGoogleAdsLink
    buildGoogleAnalyticsAdminV1betaGoogleAdsLink() {
  final o = api.GoogleAnalyticsAdminV1betaGoogleAdsLink();
  buildCounterGoogleAnalyticsAdminV1betaGoogleAdsLink++;
  if (buildCounterGoogleAnalyticsAdminV1betaGoogleAdsLink < 3) {
    o.adsPersonalizationEnabled = true;
    o.canManageClients = true;
    o.createTime = 'foo';
    o.creatorEmailAddress = 'foo';
    o.customerId = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaGoogleAdsLink--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaGoogleAdsLink(
    api.GoogleAnalyticsAdminV1betaGoogleAdsLink o) {
  buildCounterGoogleAnalyticsAdminV1betaGoogleAdsLink++;
  if (buildCounterGoogleAnalyticsAdminV1betaGoogleAdsLink < 3) {
    unittest.expect(o.adsPersonalizationEnabled!, unittest.isTrue);
    unittest.expect(o.canManageClients!, unittest.isTrue);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creatorEmailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaGoogleAdsLink--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaKeyEvent = 0;
api.GoogleAnalyticsAdminV1betaKeyEvent
    buildGoogleAnalyticsAdminV1betaKeyEvent() {
  final o = api.GoogleAnalyticsAdminV1betaKeyEvent();
  buildCounterGoogleAnalyticsAdminV1betaKeyEvent++;
  if (buildCounterGoogleAnalyticsAdminV1betaKeyEvent < 3) {
    o.countingMethod = 'foo';
    o.createTime = 'foo';
    o.custom = true;
    o.defaultValue = buildGoogleAnalyticsAdminV1betaKeyEventDefaultValue();
    o.deletable = true;
    o.eventName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaKeyEvent--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaKeyEvent(
    api.GoogleAnalyticsAdminV1betaKeyEvent o) {
  buildCounterGoogleAnalyticsAdminV1betaKeyEvent++;
  if (buildCounterGoogleAnalyticsAdminV1betaKeyEvent < 3) {
    unittest.expect(
      o.countingMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.custom!, unittest.isTrue);
    checkGoogleAnalyticsAdminV1betaKeyEventDefaultValue(o.defaultValue!);
    unittest.expect(o.deletable!, unittest.isTrue);
    unittest.expect(
      o.eventName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaKeyEvent--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaKeyEventDefaultValue = 0;
api.GoogleAnalyticsAdminV1betaKeyEventDefaultValue
    buildGoogleAnalyticsAdminV1betaKeyEventDefaultValue() {
  final o = api.GoogleAnalyticsAdminV1betaKeyEventDefaultValue();
  buildCounterGoogleAnalyticsAdminV1betaKeyEventDefaultValue++;
  if (buildCounterGoogleAnalyticsAdminV1betaKeyEventDefaultValue < 3) {
    o.currencyCode = 'foo';
    o.numericValue = 42.0;
  }
  buildCounterGoogleAnalyticsAdminV1betaKeyEventDefaultValue--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaKeyEventDefaultValue(
    api.GoogleAnalyticsAdminV1betaKeyEventDefaultValue o) {
  buildCounterGoogleAnalyticsAdminV1betaKeyEventDefaultValue++;
  if (buildCounterGoogleAnalyticsAdminV1betaKeyEventDefaultValue < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numericValue!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaKeyEventDefaultValue--;
}

core.List<api.GoogleAnalyticsAdminV1betaAccountSummary> buildUnnamed7() => [
      buildGoogleAnalyticsAdminV1betaAccountSummary(),
      buildGoogleAnalyticsAdminV1betaAccountSummary(),
    ];

void checkUnnamed7(core.List<api.GoogleAnalyticsAdminV1betaAccountSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaAccountSummary(o[0]);
  checkGoogleAnalyticsAdminV1betaAccountSummary(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListAccountSummariesResponse = 0;
api.GoogleAnalyticsAdminV1betaListAccountSummariesResponse
    buildGoogleAnalyticsAdminV1betaListAccountSummariesResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListAccountSummariesResponse();
  buildCounterGoogleAnalyticsAdminV1betaListAccountSummariesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListAccountSummariesResponse < 3) {
    o.accountSummaries = buildUnnamed7();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListAccountSummariesResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListAccountSummariesResponse(
    api.GoogleAnalyticsAdminV1betaListAccountSummariesResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListAccountSummariesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListAccountSummariesResponse < 3) {
    checkUnnamed7(o.accountSummaries!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListAccountSummariesResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaAccount> buildUnnamed8() => [
      buildGoogleAnalyticsAdminV1betaAccount(),
      buildGoogleAnalyticsAdminV1betaAccount(),
    ];

void checkUnnamed8(core.List<api.GoogleAnalyticsAdminV1betaAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaAccount(o[0]);
  checkGoogleAnalyticsAdminV1betaAccount(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListAccountsResponse = 0;
api.GoogleAnalyticsAdminV1betaListAccountsResponse
    buildGoogleAnalyticsAdminV1betaListAccountsResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListAccountsResponse();
  buildCounterGoogleAnalyticsAdminV1betaListAccountsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListAccountsResponse < 3) {
    o.accounts = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListAccountsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListAccountsResponse(
    api.GoogleAnalyticsAdminV1betaListAccountsResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListAccountsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListAccountsResponse < 3) {
    checkUnnamed8(o.accounts!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListAccountsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaConversionEvent> buildUnnamed9() => [
      buildGoogleAnalyticsAdminV1betaConversionEvent(),
      buildGoogleAnalyticsAdminV1betaConversionEvent(),
    ];

void checkUnnamed9(core.List<api.GoogleAnalyticsAdminV1betaConversionEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaConversionEvent(o[0]);
  checkGoogleAnalyticsAdminV1betaConversionEvent(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListConversionEventsResponse = 0;
api.GoogleAnalyticsAdminV1betaListConversionEventsResponse
    buildGoogleAnalyticsAdminV1betaListConversionEventsResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListConversionEventsResponse();
  buildCounterGoogleAnalyticsAdminV1betaListConversionEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListConversionEventsResponse < 3) {
    o.conversionEvents = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListConversionEventsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListConversionEventsResponse(
    api.GoogleAnalyticsAdminV1betaListConversionEventsResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListConversionEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListConversionEventsResponse < 3) {
    checkUnnamed9(o.conversionEvents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListConversionEventsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaCustomDimension> buildUnnamed10() => [
      buildGoogleAnalyticsAdminV1betaCustomDimension(),
      buildGoogleAnalyticsAdminV1betaCustomDimension(),
    ];

void checkUnnamed10(
    core.List<api.GoogleAnalyticsAdminV1betaCustomDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaCustomDimension(o[0]);
  checkGoogleAnalyticsAdminV1betaCustomDimension(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListCustomDimensionsResponse = 0;
api.GoogleAnalyticsAdminV1betaListCustomDimensionsResponse
    buildGoogleAnalyticsAdminV1betaListCustomDimensionsResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListCustomDimensionsResponse();
  buildCounterGoogleAnalyticsAdminV1betaListCustomDimensionsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListCustomDimensionsResponse < 3) {
    o.customDimensions = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListCustomDimensionsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListCustomDimensionsResponse(
    api.GoogleAnalyticsAdminV1betaListCustomDimensionsResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListCustomDimensionsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListCustomDimensionsResponse < 3) {
    checkUnnamed10(o.customDimensions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListCustomDimensionsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaCustomMetric> buildUnnamed11() => [
      buildGoogleAnalyticsAdminV1betaCustomMetric(),
      buildGoogleAnalyticsAdminV1betaCustomMetric(),
    ];

void checkUnnamed11(core.List<api.GoogleAnalyticsAdminV1betaCustomMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaCustomMetric(o[0]);
  checkGoogleAnalyticsAdminV1betaCustomMetric(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListCustomMetricsResponse = 0;
api.GoogleAnalyticsAdminV1betaListCustomMetricsResponse
    buildGoogleAnalyticsAdminV1betaListCustomMetricsResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListCustomMetricsResponse();
  buildCounterGoogleAnalyticsAdminV1betaListCustomMetricsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListCustomMetricsResponse < 3) {
    o.customMetrics = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListCustomMetricsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListCustomMetricsResponse(
    api.GoogleAnalyticsAdminV1betaListCustomMetricsResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListCustomMetricsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListCustomMetricsResponse < 3) {
    checkUnnamed11(o.customMetrics!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListCustomMetricsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaDataStream> buildUnnamed12() => [
      buildGoogleAnalyticsAdminV1betaDataStream(),
      buildGoogleAnalyticsAdminV1betaDataStream(),
    ];

void checkUnnamed12(core.List<api.GoogleAnalyticsAdminV1betaDataStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaDataStream(o[0]);
  checkGoogleAnalyticsAdminV1betaDataStream(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListDataStreamsResponse = 0;
api.GoogleAnalyticsAdminV1betaListDataStreamsResponse
    buildGoogleAnalyticsAdminV1betaListDataStreamsResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListDataStreamsResponse();
  buildCounterGoogleAnalyticsAdminV1betaListDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListDataStreamsResponse < 3) {
    o.dataStreams = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListDataStreamsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListDataStreamsResponse(
    api.GoogleAnalyticsAdminV1betaListDataStreamsResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListDataStreamsResponse < 3) {
    checkUnnamed12(o.dataStreams!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListDataStreamsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaFirebaseLink> buildUnnamed13() => [
      buildGoogleAnalyticsAdminV1betaFirebaseLink(),
      buildGoogleAnalyticsAdminV1betaFirebaseLink(),
    ];

void checkUnnamed13(core.List<api.GoogleAnalyticsAdminV1betaFirebaseLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaFirebaseLink(o[0]);
  checkGoogleAnalyticsAdminV1betaFirebaseLink(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListFirebaseLinksResponse = 0;
api.GoogleAnalyticsAdminV1betaListFirebaseLinksResponse
    buildGoogleAnalyticsAdminV1betaListFirebaseLinksResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListFirebaseLinksResponse();
  buildCounterGoogleAnalyticsAdminV1betaListFirebaseLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListFirebaseLinksResponse < 3) {
    o.firebaseLinks = buildUnnamed13();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListFirebaseLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListFirebaseLinksResponse(
    api.GoogleAnalyticsAdminV1betaListFirebaseLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListFirebaseLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListFirebaseLinksResponse < 3) {
    checkUnnamed13(o.firebaseLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListFirebaseLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaGoogleAdsLink> buildUnnamed14() => [
      buildGoogleAnalyticsAdminV1betaGoogleAdsLink(),
      buildGoogleAnalyticsAdminV1betaGoogleAdsLink(),
    ];

void checkUnnamed14(core.List<api.GoogleAnalyticsAdminV1betaGoogleAdsLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaGoogleAdsLink(o[0]);
  checkGoogleAnalyticsAdminV1betaGoogleAdsLink(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse = 0;
api.GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse
    buildGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse();
  buildCounterGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse < 3) {
    o.googleAdsLinks = buildUnnamed14();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse(
    api.GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse < 3) {
    checkUnnamed14(o.googleAdsLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaKeyEvent> buildUnnamed15() => [
      buildGoogleAnalyticsAdminV1betaKeyEvent(),
      buildGoogleAnalyticsAdminV1betaKeyEvent(),
    ];

void checkUnnamed15(core.List<api.GoogleAnalyticsAdminV1betaKeyEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaKeyEvent(o[0]);
  checkGoogleAnalyticsAdminV1betaKeyEvent(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListKeyEventsResponse = 0;
api.GoogleAnalyticsAdminV1betaListKeyEventsResponse
    buildGoogleAnalyticsAdminV1betaListKeyEventsResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListKeyEventsResponse();
  buildCounterGoogleAnalyticsAdminV1betaListKeyEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListKeyEventsResponse < 3) {
    o.keyEvents = buildUnnamed15();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListKeyEventsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListKeyEventsResponse(
    api.GoogleAnalyticsAdminV1betaListKeyEventsResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListKeyEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListKeyEventsResponse < 3) {
    checkUnnamed15(o.keyEvents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListKeyEventsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret>
    buildUnnamed16() => [
          buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(),
          buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(),
        ];

void checkUnnamed16(
    core.List<api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(o[0]);
  checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse =
    0;
api.GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse
    buildGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse() {
  final o =
      api.GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse();
  buildCounterGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse <
      3) {
    o.measurementProtocolSecrets = buildUnnamed16();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse(
    api.GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse <
      3) {
    checkUnnamed16(o.measurementProtocolSecrets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaProperty> buildUnnamed17() => [
      buildGoogleAnalyticsAdminV1betaProperty(),
      buildGoogleAnalyticsAdminV1betaProperty(),
    ];

void checkUnnamed17(core.List<api.GoogleAnalyticsAdminV1betaProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaProperty(o[0]);
  checkGoogleAnalyticsAdminV1betaProperty(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListPropertiesResponse = 0;
api.GoogleAnalyticsAdminV1betaListPropertiesResponse
    buildGoogleAnalyticsAdminV1betaListPropertiesResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListPropertiesResponse();
  buildCounterGoogleAnalyticsAdminV1betaListPropertiesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListPropertiesResponse < 3) {
    o.nextPageToken = 'foo';
    o.properties = buildUnnamed17();
  }
  buildCounterGoogleAnalyticsAdminV1betaListPropertiesResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListPropertiesResponse(
    api.GoogleAnalyticsAdminV1betaListPropertiesResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListPropertiesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListPropertiesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.properties!);
  }
  buildCounterGoogleAnalyticsAdminV1betaListPropertiesResponse--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaMeasurementProtocolSecret = 0;
api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret
    buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret() {
  final o = api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret();
  buildCounterGoogleAnalyticsAdminV1betaMeasurementProtocolSecret++;
  if (buildCounterGoogleAnalyticsAdminV1betaMeasurementProtocolSecret < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.secretValue = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaMeasurementProtocolSecret--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(
    api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret o) {
  buildCounterGoogleAnalyticsAdminV1betaMeasurementProtocolSecret++;
  if (buildCounterGoogleAnalyticsAdminV1betaMeasurementProtocolSecret < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secretValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaMeasurementProtocolSecret--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaNumericValue = 0;
api.GoogleAnalyticsAdminV1betaNumericValue
    buildGoogleAnalyticsAdminV1betaNumericValue() {
  final o = api.GoogleAnalyticsAdminV1betaNumericValue();
  buildCounterGoogleAnalyticsAdminV1betaNumericValue++;
  if (buildCounterGoogleAnalyticsAdminV1betaNumericValue < 3) {
    o.doubleValue = 42.0;
    o.int64Value = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaNumericValue--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaNumericValue(
    api.GoogleAnalyticsAdminV1betaNumericValue o) {
  buildCounterGoogleAnalyticsAdminV1betaNumericValue++;
  if (buildCounterGoogleAnalyticsAdminV1betaNumericValue < 3) {
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.int64Value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaNumericValue--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaProperty = 0;
api.GoogleAnalyticsAdminV1betaProperty
    buildGoogleAnalyticsAdminV1betaProperty() {
  final o = api.GoogleAnalyticsAdminV1betaProperty();
  buildCounterGoogleAnalyticsAdminV1betaProperty++;
  if (buildCounterGoogleAnalyticsAdminV1betaProperty < 3) {
    o.account = 'foo';
    o.createTime = 'foo';
    o.currencyCode = 'foo';
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.expireTime = 'foo';
    o.industryCategory = 'foo';
    o.name = 'foo';
    o.parent = 'foo';
    o.propertyType = 'foo';
    o.serviceLevel = 'foo';
    o.timeZone = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaProperty--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaProperty(
    api.GoogleAnalyticsAdminV1betaProperty o) {
  buildCounterGoogleAnalyticsAdminV1betaProperty++;
  if (buildCounterGoogleAnalyticsAdminV1betaProperty < 3) {
    unittest.expect(
      o.account!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.industryCategory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.propertyType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaProperty--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaPropertySummary = 0;
api.GoogleAnalyticsAdminV1betaPropertySummary
    buildGoogleAnalyticsAdminV1betaPropertySummary() {
  final o = api.GoogleAnalyticsAdminV1betaPropertySummary();
  buildCounterGoogleAnalyticsAdminV1betaPropertySummary++;
  if (buildCounterGoogleAnalyticsAdminV1betaPropertySummary < 3) {
    o.displayName = 'foo';
    o.parent = 'foo';
    o.property = 'foo';
    o.propertyType = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaPropertySummary--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaPropertySummary(
    api.GoogleAnalyticsAdminV1betaPropertySummary o) {
  buildCounterGoogleAnalyticsAdminV1betaPropertySummary++;
  if (buildCounterGoogleAnalyticsAdminV1betaPropertySummary < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.property!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.propertyType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaPropertySummary--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest =
    0;
api.GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest
    buildGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest() {
  final o = api.GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest();
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest < 3) {
    o.account = buildGoogleAnalyticsAdminV1betaAccount();
    o.redirectUri = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest(
    api.GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest o) {
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest < 3) {
    checkGoogleAnalyticsAdminV1betaAccount(o.account!);
    unittest.expect(
      o.redirectUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse =
    0;
api.GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse
    buildGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse() {
  final o = api.GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse();
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse <
      3) {
    o.accountTicketId = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse(
    api.GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse <
      3) {
    unittest.expect(
      o.accountTicketId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaAccessDateRange> buildUnnamed18() => [
      buildGoogleAnalyticsAdminV1betaAccessDateRange(),
      buildGoogleAnalyticsAdminV1betaAccessDateRange(),
    ];

void checkUnnamed18(
    core.List<api.GoogleAnalyticsAdminV1betaAccessDateRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaAccessDateRange(o[0]);
  checkGoogleAnalyticsAdminV1betaAccessDateRange(o[1]);
}

core.List<api.GoogleAnalyticsAdminV1betaAccessDimension> buildUnnamed19() => [
      buildGoogleAnalyticsAdminV1betaAccessDimension(),
      buildGoogleAnalyticsAdminV1betaAccessDimension(),
    ];

void checkUnnamed19(
    core.List<api.GoogleAnalyticsAdminV1betaAccessDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaAccessDimension(o[0]);
  checkGoogleAnalyticsAdminV1betaAccessDimension(o[1]);
}

core.List<api.GoogleAnalyticsAdminV1betaAccessMetric> buildUnnamed20() => [
      buildGoogleAnalyticsAdminV1betaAccessMetric(),
      buildGoogleAnalyticsAdminV1betaAccessMetric(),
    ];

void checkUnnamed20(core.List<api.GoogleAnalyticsAdminV1betaAccessMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaAccessMetric(o[0]);
  checkGoogleAnalyticsAdminV1betaAccessMetric(o[1]);
}

core.List<api.GoogleAnalyticsAdminV1betaAccessOrderBy> buildUnnamed21() => [
      buildGoogleAnalyticsAdminV1betaAccessOrderBy(),
      buildGoogleAnalyticsAdminV1betaAccessOrderBy(),
    ];

void checkUnnamed21(core.List<api.GoogleAnalyticsAdminV1betaAccessOrderBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaAccessOrderBy(o[0]);
  checkGoogleAnalyticsAdminV1betaAccessOrderBy(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaRunAccessReportRequest = 0;
api.GoogleAnalyticsAdminV1betaRunAccessReportRequest
    buildGoogleAnalyticsAdminV1betaRunAccessReportRequest() {
  final o = api.GoogleAnalyticsAdminV1betaRunAccessReportRequest();
  buildCounterGoogleAnalyticsAdminV1betaRunAccessReportRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaRunAccessReportRequest < 3) {
    o.dateRanges = buildUnnamed18();
    o.dimensionFilter = buildGoogleAnalyticsAdminV1betaAccessFilterExpression();
    o.dimensions = buildUnnamed19();
    o.expandGroups = true;
    o.includeAllUsers = true;
    o.limit = 'foo';
    o.metricFilter = buildGoogleAnalyticsAdminV1betaAccessFilterExpression();
    o.metrics = buildUnnamed20();
    o.offset = 'foo';
    o.orderBys = buildUnnamed21();
    o.returnEntityQuota = true;
    o.timeZone = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaRunAccessReportRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaRunAccessReportRequest(
    api.GoogleAnalyticsAdminV1betaRunAccessReportRequest o) {
  buildCounterGoogleAnalyticsAdminV1betaRunAccessReportRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaRunAccessReportRequest < 3) {
    checkUnnamed18(o.dateRanges!);
    checkGoogleAnalyticsAdminV1betaAccessFilterExpression(o.dimensionFilter!);
    checkUnnamed19(o.dimensions!);
    unittest.expect(o.expandGroups!, unittest.isTrue);
    unittest.expect(o.includeAllUsers!, unittest.isTrue);
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1betaAccessFilterExpression(o.metricFilter!);
    checkUnnamed20(o.metrics!);
    unittest.expect(
      o.offset!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.orderBys!);
    unittest.expect(o.returnEntityQuota!, unittest.isTrue);
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaRunAccessReportRequest--;
}

core.List<api.GoogleAnalyticsAdminV1betaAccessDimensionHeader>
    buildUnnamed22() => [
          buildGoogleAnalyticsAdminV1betaAccessDimensionHeader(),
          buildGoogleAnalyticsAdminV1betaAccessDimensionHeader(),
        ];

void checkUnnamed22(
    core.List<api.GoogleAnalyticsAdminV1betaAccessDimensionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaAccessDimensionHeader(o[0]);
  checkGoogleAnalyticsAdminV1betaAccessDimensionHeader(o[1]);
}

core.List<api.GoogleAnalyticsAdminV1betaAccessMetricHeader> buildUnnamed23() =>
    [
      buildGoogleAnalyticsAdminV1betaAccessMetricHeader(),
      buildGoogleAnalyticsAdminV1betaAccessMetricHeader(),
    ];

void checkUnnamed23(
    core.List<api.GoogleAnalyticsAdminV1betaAccessMetricHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaAccessMetricHeader(o[0]);
  checkGoogleAnalyticsAdminV1betaAccessMetricHeader(o[1]);
}

core.List<api.GoogleAnalyticsAdminV1betaAccessRow> buildUnnamed24() => [
      buildGoogleAnalyticsAdminV1betaAccessRow(),
      buildGoogleAnalyticsAdminV1betaAccessRow(),
    ];

void checkUnnamed24(core.List<api.GoogleAnalyticsAdminV1betaAccessRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaAccessRow(o[0]);
  checkGoogleAnalyticsAdminV1betaAccessRow(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaRunAccessReportResponse = 0;
api.GoogleAnalyticsAdminV1betaRunAccessReportResponse
    buildGoogleAnalyticsAdminV1betaRunAccessReportResponse() {
  final o = api.GoogleAnalyticsAdminV1betaRunAccessReportResponse();
  buildCounterGoogleAnalyticsAdminV1betaRunAccessReportResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaRunAccessReportResponse < 3) {
    o.dimensionHeaders = buildUnnamed22();
    o.metricHeaders = buildUnnamed23();
    o.quota = buildGoogleAnalyticsAdminV1betaAccessQuota();
    o.rowCount = 42;
    o.rows = buildUnnamed24();
  }
  buildCounterGoogleAnalyticsAdminV1betaRunAccessReportResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaRunAccessReportResponse(
    api.GoogleAnalyticsAdminV1betaRunAccessReportResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaRunAccessReportResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaRunAccessReportResponse < 3) {
    checkUnnamed22(o.dimensionHeaders!);
    checkUnnamed23(o.metricHeaders!);
    checkGoogleAnalyticsAdminV1betaAccessQuota(o.quota!);
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
    checkUnnamed24(o.rows!);
  }
  buildCounterGoogleAnalyticsAdminV1betaRunAccessReportResponse--;
}

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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

core.int
    buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest = 0;
api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest
    buildGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest() {
  final o = api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest();
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest <
      3) {
    o.action = buildUnnamed25();
    o.actorEmail = buildUnnamed26();
    o.earliestChangeTime = 'foo';
    o.latestChangeTime = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.property = 'foo';
    o.resourceType = buildUnnamed27();
  }
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest(
    api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest o) {
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest <
      3) {
    checkUnnamed25(o.action!);
    checkUnnamed26(o.actorEmail!);
    unittest.expect(
      o.earliestChangeTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestChangeTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.property!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.resourceType!);
  }
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest--;
}

core.List<api.GoogleAnalyticsAdminV1betaChangeHistoryEvent> buildUnnamed28() =>
    [
      buildGoogleAnalyticsAdminV1betaChangeHistoryEvent(),
      buildGoogleAnalyticsAdminV1betaChangeHistoryEvent(),
    ];

void checkUnnamed28(
    core.List<api.GoogleAnalyticsAdminV1betaChangeHistoryEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaChangeHistoryEvent(o[0]);
  checkGoogleAnalyticsAdminV1betaChangeHistoryEvent(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse = 0;
api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse
    buildGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse() {
  final o = api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse();
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse <
      3) {
    o.changeHistoryEvents = buildUnnamed28();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse(
    api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse <
      3) {
    checkUnnamed28(o.changeHistoryEvents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

void main() {
  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessBetweenFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessBetweenFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessBetweenFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessBetweenFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessDateRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessDateRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessDateRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessDateRange(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessDimension(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessDimensionHeader',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessDimensionHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessDimensionHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessDimensionHeader(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessDimensionValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessDimensionValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessDimensionValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessDimensionValue(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessFilterExpression',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessFilterExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessFilterExpression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessFilterExpression(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaAccessFilterExpressionList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessFilterExpressionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaAccessFilterExpressionList.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessFilterExpressionList(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessInListFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessInListFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessInListFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessInListFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessMetric.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessMetric(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessMetricHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessMetricHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessMetricHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessMetricHeader(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessMetricValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessMetricValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessMetricValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessMetricValue(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessNumericFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessNumericFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessNumericFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessNumericFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessOrderBy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessOrderBy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessOrderBy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessOrderBy(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessQuota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessQuota.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessQuota(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessQuotaStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessQuotaStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessQuotaStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessQuotaStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessRow(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccessStringFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccessStringFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccessStringFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccessStringFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccount(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccountSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccountSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccountSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccountSummary(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaChangeHistoryChange',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaChangeHistoryChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaChangeHistoryChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaChangeHistoryChange(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource(
          od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaChangeHistoryEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaChangeHistoryEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaChangeHistoryEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaChangeHistoryEvent(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaConversionEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaConversionEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaConversionEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaConversionEvent(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaCustomDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaCustomDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaCustomDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaCustomDimension(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaCustomMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaCustomMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaCustomMetric.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaCustomMetric(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaDataRetentionSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaDataRetentionSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaDataRetentionSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaDataRetentionSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaDataSharingSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaDataSharingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaDataSharingSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaDataSharingSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaDataStream', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaDataStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaDataStream.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaDataStream(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaDataStreamWebStreamData',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaDataStreamWebStreamData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaDataStreamWebStreamData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaDataStreamWebStreamData(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaFirebaseLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaFirebaseLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaFirebaseLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaFirebaseLink(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaGoogleAdsLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaGoogleAdsLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaGoogleAdsLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaGoogleAdsLink(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaKeyEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaKeyEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaKeyEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaKeyEvent(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaKeyEventDefaultValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaKeyEventDefaultValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaKeyEventDefaultValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaKeyEventDefaultValue(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaListAccountSummariesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListAccountSummariesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaListAccountSummariesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListAccountSummariesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaListAccountsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaListAccountsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListAccountsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaListConversionEventsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListConversionEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaListConversionEventsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListConversionEventsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaListCustomDimensionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListCustomDimensionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaListCustomDimensionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListCustomDimensionsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaListCustomMetricsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListCustomMetricsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaListCustomMetricsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListCustomMetricsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaListDataStreamsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListDataStreamsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaListDataStreamsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListDataStreamsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaListFirebaseLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListFirebaseLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaListFirebaseLinksResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListFirebaseLinksResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaListKeyEventsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListKeyEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaListKeyEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListKeyEventsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaListPropertiesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListPropertiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaListPropertiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListPropertiesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaMeasurementProtocolSecret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaNumericValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaNumericValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaNumericValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaNumericValue(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaProperty(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaPropertySummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaPropertySummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaPropertySummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaPropertySummary(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaRunAccessReportRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaRunAccessReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaRunAccessReportRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaRunAccessReportRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaRunAccessReportResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaRunAccessReportResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaRunAccessReportResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaRunAccessReportResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('resource-AccountSummariesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accountSummaries;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('v1beta/accountSummaries'),
        );
        pathOffset += 23;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaListAccountSummariesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListAccountSummariesResponse(response
          as api.GoogleAnalyticsAdminV1betaListAccountSummariesResponse);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaAccount(
          response as api.GoogleAnalyticsAdminV1betaAccount);
    });

    unittest.test('method--getDataSharingSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaDataSharingSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getDataSharingSettings(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaDataSharingSettings(
          response as api.GoogleAnalyticsAdminV1betaDataSharingSettings);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1beta/accounts'),
        );
        pathOffset += 15;

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
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaListAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListAccountsResponse(
          response as api.GoogleAnalyticsAdminV1betaListAccountsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_request = buildGoogleAnalyticsAdminV1betaAccount();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaAccount.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaAccount(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaAccount(
          response as api.GoogleAnalyticsAdminV1betaAccount);
    });

    unittest.test('method--provisionAccountTicket', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest(obj);

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
          path.substring(pathOffset, pathOffset + 38),
          unittest.equals('v1beta/accounts:provisionAccountTicket'),
        );
        pathOffset += 38;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.provisionAccountTicket(arg_request, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse(response
          as api.GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse);
    });

    unittest.test('method--runAccessReport', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaRunAccessReportRequest();
      final arg_entity = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1betaRunAccessReportRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaRunAccessReportRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaRunAccessReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.runAccessReport(arg_request, arg_entity,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaRunAccessReportResponse(
          response as api.GoogleAnalyticsAdminV1betaRunAccessReportResponse);
    });

    unittest.test('method--searchChangeHistoryEvents', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest();
      final arg_account = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchChangeHistoryEvents(
          arg_request, arg_account,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse(response
          as api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse);
    });
  });

  unittest.group('resource-PropertiesResource', () {
    unittest.test('method--acknowledgeUserDataCollection', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest();
      final arg_property = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest(
            obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.acknowledgeUserDataCollection(
          arg_request, arg_property,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse(
          response as api
              .GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request = buildGoogleAnalyticsAdminV1betaProperty();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaProperty.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaProperty(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1beta/properties'),
        );
        pathOffset += 17;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaProperty(
          response as api.GoogleAnalyticsAdminV1betaProperty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaProperty(
          response as api.GoogleAnalyticsAdminV1betaProperty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaProperty(
          response as api.GoogleAnalyticsAdminV1betaProperty);
    });

    unittest.test('method--getDataRetentionSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaDataRetentionSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getDataRetentionSettings(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaDataRetentionSettings(
          response as api.GoogleAnalyticsAdminV1betaDataRetentionSettings);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1beta/properties'),
        );
        pathOffset += 17;

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
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaListPropertiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListPropertiesResponse(
          response as api.GoogleAnalyticsAdminV1betaListPropertiesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request = buildGoogleAnalyticsAdminV1betaProperty();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaProperty.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaProperty(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaProperty(
          response as api.GoogleAnalyticsAdminV1betaProperty);
    });

    unittest.test('method--runAccessReport', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaRunAccessReportRequest();
      final arg_entity = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1betaRunAccessReportRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaRunAccessReportRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaRunAccessReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.runAccessReport(arg_request, arg_entity,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaRunAccessReportResponse(
          response as api.GoogleAnalyticsAdminV1betaRunAccessReportResponse);
    });

    unittest.test('method--updateDataRetentionSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaDataRetentionSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1betaDataRetentionSettings.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaDataRetentionSettings(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaDataRetentionSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateDataRetentionSettings(
          arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaDataRetentionSettings(
          response as api.GoogleAnalyticsAdminV1betaDataRetentionSettings);
    });
  });

  unittest.group('resource-PropertiesConversionEventsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.conversionEvents;
      final arg_request = buildGoogleAnalyticsAdminV1betaConversionEvent();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaConversionEvent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaConversionEvent(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaConversionEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaConversionEvent(
          response as api.GoogleAnalyticsAdminV1betaConversionEvent);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.conversionEvents;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.conversionEvents;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaConversionEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaConversionEvent(
          response as api.GoogleAnalyticsAdminV1betaConversionEvent);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.conversionEvents;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaListConversionEventsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListConversionEventsResponse(response
          as api.GoogleAnalyticsAdminV1betaListConversionEventsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.conversionEvents;
      final arg_request = buildGoogleAnalyticsAdminV1betaConversionEvent();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaConversionEvent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaConversionEvent(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaConversionEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaConversionEvent(
          response as api.GoogleAnalyticsAdminV1betaConversionEvent);
    });
  });

  unittest.group('resource-PropertiesCustomDimensionsResource', () {
    unittest.test('method--archive', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customDimensions;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.archive(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customDimensions;
      final arg_request = buildGoogleAnalyticsAdminV1betaCustomDimension();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaCustomDimension.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaCustomDimension(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaCustomDimension());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaCustomDimension(
          response as api.GoogleAnalyticsAdminV1betaCustomDimension);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customDimensions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaCustomDimension());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaCustomDimension(
          response as api.GoogleAnalyticsAdminV1betaCustomDimension);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customDimensions;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaListCustomDimensionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListCustomDimensionsResponse(response
          as api.GoogleAnalyticsAdminV1betaListCustomDimensionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customDimensions;
      final arg_request = buildGoogleAnalyticsAdminV1betaCustomDimension();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaCustomDimension.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaCustomDimension(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaCustomDimension());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaCustomDimension(
          response as api.GoogleAnalyticsAdminV1betaCustomDimension);
    });
  });

  unittest.group('resource-PropertiesCustomMetricsResource', () {
    unittest.test('method--archive', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customMetrics;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.archive(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customMetrics;
      final arg_request = buildGoogleAnalyticsAdminV1betaCustomMetric();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaCustomMetric.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaCustomMetric(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaCustomMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaCustomMetric(
          response as api.GoogleAnalyticsAdminV1betaCustomMetric);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customMetrics;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaCustomMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaCustomMetric(
          response as api.GoogleAnalyticsAdminV1betaCustomMetric);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customMetrics;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaListCustomMetricsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListCustomMetricsResponse(
          response as api.GoogleAnalyticsAdminV1betaListCustomMetricsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customMetrics;
      final arg_request = buildGoogleAnalyticsAdminV1betaCustomMetric();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaCustomMetric.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaCustomMetric(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaCustomMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaCustomMetric(
          response as api.GoogleAnalyticsAdminV1betaCustomMetric);
    });
  });

  unittest.group('resource-PropertiesDataStreamsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.dataStreams;
      final arg_request = buildGoogleAnalyticsAdminV1betaDataStream();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaDataStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaDataStream(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaDataStream(
          response as api.GoogleAnalyticsAdminV1betaDataStream);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.dataStreams;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.dataStreams;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaDataStream(
          response as api.GoogleAnalyticsAdminV1betaDataStream);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.dataStreams;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaListDataStreamsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListDataStreamsResponse(
          response as api.GoogleAnalyticsAdminV1betaListDataStreamsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.dataStreams;
      final arg_request = buildGoogleAnalyticsAdminV1betaDataStream();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaDataStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaDataStream(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaDataStream(
          response as api.GoogleAnalyticsAdminV1betaDataStream);
    });
  });

  unittest.group(
      'resource-PropertiesDataStreamsMeasurementProtocolSecretsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .measurementProtocolSecrets;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(
          response as api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .measurementProtocolSecrets;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .measurementProtocolSecrets;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(
          response as api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .measurementProtocolSecrets;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse(
          response as api
              .GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .measurementProtocolSecrets;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(
          response as api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret);
    });
  });

  unittest.group('resource-PropertiesFirebaseLinksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.firebaseLinks;
      final arg_request = buildGoogleAnalyticsAdminV1betaFirebaseLink();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaFirebaseLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaFirebaseLink(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaFirebaseLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaFirebaseLink(
          response as api.GoogleAnalyticsAdminV1betaFirebaseLink);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.firebaseLinks;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.firebaseLinks;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaListFirebaseLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListFirebaseLinksResponse(
          response as api.GoogleAnalyticsAdminV1betaListFirebaseLinksResponse);
    });
  });

  unittest.group('resource-PropertiesGoogleAdsLinksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.googleAdsLinks;
      final arg_request = buildGoogleAnalyticsAdminV1betaGoogleAdsLink();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaGoogleAdsLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaGoogleAdsLink(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaGoogleAdsLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaGoogleAdsLink(
          response as api.GoogleAnalyticsAdminV1betaGoogleAdsLink);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.googleAdsLinks;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.googleAdsLinks;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse(
          response as api.GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.googleAdsLinks;
      final arg_request = buildGoogleAnalyticsAdminV1betaGoogleAdsLink();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaGoogleAdsLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaGoogleAdsLink(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaGoogleAdsLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaGoogleAdsLink(
          response as api.GoogleAnalyticsAdminV1betaGoogleAdsLink);
    });
  });

  unittest.group('resource-PropertiesKeyEventsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.keyEvents;
      final arg_request = buildGoogleAnalyticsAdminV1betaKeyEvent();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaKeyEvent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaKeyEvent(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaKeyEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaKeyEvent(
          response as api.GoogleAnalyticsAdminV1betaKeyEvent);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.keyEvents;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.keyEvents;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaKeyEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaKeyEvent(
          response as api.GoogleAnalyticsAdminV1betaKeyEvent);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.keyEvents;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaListKeyEventsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListKeyEventsResponse(
          response as api.GoogleAnalyticsAdminV1betaListKeyEventsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.keyEvents;
      final arg_request = buildGoogleAnalyticsAdminV1betaKeyEvent();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaKeyEvent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaKeyEvent(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaKeyEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaKeyEvent(
          response as api.GoogleAnalyticsAdminV1betaKeyEvent);
    });
  });
}
