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

import 'package:googleapis_beta/analyticsadmin/v1alpha.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessBetweenFilter = 0;
api.GoogleAnalyticsAdminV1alphaAccessBetweenFilter
    buildGoogleAnalyticsAdminV1alphaAccessBetweenFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessBetweenFilter();
  buildCounterGoogleAnalyticsAdminV1alphaAccessBetweenFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessBetweenFilter < 3) {
    o.fromValue = buildGoogleAnalyticsAdminV1alphaNumericValue();
    o.toValue = buildGoogleAnalyticsAdminV1alphaNumericValue();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessBetweenFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessBetweenFilter(
    api.GoogleAnalyticsAdminV1alphaAccessBetweenFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessBetweenFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessBetweenFilter < 3) {
    checkGoogleAnalyticsAdminV1alphaNumericValue(o.fromValue!);
    checkGoogleAnalyticsAdminV1alphaNumericValue(o.toValue!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessBetweenFilter--;
}

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessBinding = 0;
api.GoogleAnalyticsAdminV1alphaAccessBinding
    buildGoogleAnalyticsAdminV1alphaAccessBinding() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessBinding();
  buildCounterGoogleAnalyticsAdminV1alphaAccessBinding++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessBinding < 3) {
    o.name = 'foo';
    o.roles = buildUnnamed0();
    o.user = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessBinding--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessBinding(
    api.GoogleAnalyticsAdminV1alphaAccessBinding o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessBinding++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessBinding < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.roles!);
    unittest.expect(
      o.user!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessBinding--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessDateRange = 0;
api.GoogleAnalyticsAdminV1alphaAccessDateRange
    buildGoogleAnalyticsAdminV1alphaAccessDateRange() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessDateRange();
  buildCounterGoogleAnalyticsAdminV1alphaAccessDateRange++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessDateRange < 3) {
    o.endDate = 'foo';
    o.startDate = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessDateRange--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessDateRange(
    api.GoogleAnalyticsAdminV1alphaAccessDateRange o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessDateRange++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessDateRange < 3) {
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessDateRange--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessDimension = 0;
api.GoogleAnalyticsAdminV1alphaAccessDimension
    buildGoogleAnalyticsAdminV1alphaAccessDimension() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessDimension();
  buildCounterGoogleAnalyticsAdminV1alphaAccessDimension++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessDimension < 3) {
    o.dimensionName = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessDimension--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessDimension(
    api.GoogleAnalyticsAdminV1alphaAccessDimension o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessDimension++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessDimension < 3) {
    unittest.expect(
      o.dimensionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessDimension--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessDimensionHeader = 0;
api.GoogleAnalyticsAdminV1alphaAccessDimensionHeader
    buildGoogleAnalyticsAdminV1alphaAccessDimensionHeader() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessDimensionHeader();
  buildCounterGoogleAnalyticsAdminV1alphaAccessDimensionHeader++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessDimensionHeader < 3) {
    o.dimensionName = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessDimensionHeader--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessDimensionHeader(
    api.GoogleAnalyticsAdminV1alphaAccessDimensionHeader o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessDimensionHeader++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessDimensionHeader < 3) {
    unittest.expect(
      o.dimensionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessDimensionHeader--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessDimensionValue = 0;
api.GoogleAnalyticsAdminV1alphaAccessDimensionValue
    buildGoogleAnalyticsAdminV1alphaAccessDimensionValue() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessDimensionValue();
  buildCounterGoogleAnalyticsAdminV1alphaAccessDimensionValue++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessDimensionValue < 3) {
    o.value = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessDimensionValue--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessDimensionValue(
    api.GoogleAnalyticsAdminV1alphaAccessDimensionValue o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessDimensionValue++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessDimensionValue < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessDimensionValue--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessFilter = 0;
api.GoogleAnalyticsAdminV1alphaAccessFilter
    buildGoogleAnalyticsAdminV1alphaAccessFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessFilter();
  buildCounterGoogleAnalyticsAdminV1alphaAccessFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessFilter < 3) {
    o.betweenFilter = buildGoogleAnalyticsAdminV1alphaAccessBetweenFilter();
    o.fieldName = 'foo';
    o.inListFilter = buildGoogleAnalyticsAdminV1alphaAccessInListFilter();
    o.numericFilter = buildGoogleAnalyticsAdminV1alphaAccessNumericFilter();
    o.stringFilter = buildGoogleAnalyticsAdminV1alphaAccessStringFilter();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessFilter(
    api.GoogleAnalyticsAdminV1alphaAccessFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessFilter < 3) {
    checkGoogleAnalyticsAdminV1alphaAccessBetweenFilter(o.betweenFilter!);
    unittest.expect(
      o.fieldName!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaAccessInListFilter(o.inListFilter!);
    checkGoogleAnalyticsAdminV1alphaAccessNumericFilter(o.numericFilter!);
    checkGoogleAnalyticsAdminV1alphaAccessStringFilter(o.stringFilter!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessFilterExpression = 0;
api.GoogleAnalyticsAdminV1alphaAccessFilterExpression
    buildGoogleAnalyticsAdminV1alphaAccessFilterExpression() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessFilterExpression();
  buildCounterGoogleAnalyticsAdminV1alphaAccessFilterExpression++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessFilterExpression < 3) {
    o.accessFilter = buildGoogleAnalyticsAdminV1alphaAccessFilter();
    o.andGroup = buildGoogleAnalyticsAdminV1alphaAccessFilterExpressionList();
    o.notExpression = buildGoogleAnalyticsAdminV1alphaAccessFilterExpression();
    o.orGroup = buildGoogleAnalyticsAdminV1alphaAccessFilterExpressionList();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessFilterExpression--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessFilterExpression(
    api.GoogleAnalyticsAdminV1alphaAccessFilterExpression o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessFilterExpression++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessFilterExpression < 3) {
    checkGoogleAnalyticsAdminV1alphaAccessFilter(o.accessFilter!);
    checkGoogleAnalyticsAdminV1alphaAccessFilterExpressionList(o.andGroup!);
    checkGoogleAnalyticsAdminV1alphaAccessFilterExpression(o.notExpression!);
    checkGoogleAnalyticsAdminV1alphaAccessFilterExpressionList(o.orGroup!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessFilterExpression--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAccessFilterExpression>
    buildUnnamed1() => [
          buildGoogleAnalyticsAdminV1alphaAccessFilterExpression(),
          buildGoogleAnalyticsAdminV1alphaAccessFilterExpression(),
        ];

void checkUnnamed1(
    core.List<api.GoogleAnalyticsAdminV1alphaAccessFilterExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccessFilterExpression(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccessFilterExpression(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessFilterExpressionList = 0;
api.GoogleAnalyticsAdminV1alphaAccessFilterExpressionList
    buildGoogleAnalyticsAdminV1alphaAccessFilterExpressionList() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessFilterExpressionList();
  buildCounterGoogleAnalyticsAdminV1alphaAccessFilterExpressionList++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessFilterExpressionList < 3) {
    o.expressions = buildUnnamed1();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessFilterExpressionList--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessFilterExpressionList(
    api.GoogleAnalyticsAdminV1alphaAccessFilterExpressionList o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessFilterExpressionList++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessFilterExpressionList < 3) {
    checkUnnamed1(o.expressions!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessFilterExpressionList--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessInListFilter = 0;
api.GoogleAnalyticsAdminV1alphaAccessInListFilter
    buildGoogleAnalyticsAdminV1alphaAccessInListFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessInListFilter();
  buildCounterGoogleAnalyticsAdminV1alphaAccessInListFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessInListFilter < 3) {
    o.caseSensitive = true;
    o.values = buildUnnamed2();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessInListFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessInListFilter(
    api.GoogleAnalyticsAdminV1alphaAccessInListFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessInListFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessInListFilter < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    checkUnnamed2(o.values!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessInListFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessMetric = 0;
api.GoogleAnalyticsAdminV1alphaAccessMetric
    buildGoogleAnalyticsAdminV1alphaAccessMetric() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessMetric();
  buildCounterGoogleAnalyticsAdminV1alphaAccessMetric++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessMetric < 3) {
    o.metricName = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessMetric--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessMetric(
    api.GoogleAnalyticsAdminV1alphaAccessMetric o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessMetric++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessMetric < 3) {
    unittest.expect(
      o.metricName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessMetric--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessMetricHeader = 0;
api.GoogleAnalyticsAdminV1alphaAccessMetricHeader
    buildGoogleAnalyticsAdminV1alphaAccessMetricHeader() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessMetricHeader();
  buildCounterGoogleAnalyticsAdminV1alphaAccessMetricHeader++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessMetricHeader < 3) {
    o.metricName = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessMetricHeader--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessMetricHeader(
    api.GoogleAnalyticsAdminV1alphaAccessMetricHeader o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessMetricHeader++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessMetricHeader < 3) {
    unittest.expect(
      o.metricName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessMetricHeader--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessMetricValue = 0;
api.GoogleAnalyticsAdminV1alphaAccessMetricValue
    buildGoogleAnalyticsAdminV1alphaAccessMetricValue() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessMetricValue();
  buildCounterGoogleAnalyticsAdminV1alphaAccessMetricValue++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessMetricValue < 3) {
    o.value = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessMetricValue--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessMetricValue(
    api.GoogleAnalyticsAdminV1alphaAccessMetricValue o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessMetricValue++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessMetricValue < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessMetricValue--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessNumericFilter = 0;
api.GoogleAnalyticsAdminV1alphaAccessNumericFilter
    buildGoogleAnalyticsAdminV1alphaAccessNumericFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessNumericFilter();
  buildCounterGoogleAnalyticsAdminV1alphaAccessNumericFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessNumericFilter < 3) {
    o.operation = 'foo';
    o.value = buildGoogleAnalyticsAdminV1alphaNumericValue();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessNumericFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessNumericFilter(
    api.GoogleAnalyticsAdminV1alphaAccessNumericFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessNumericFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessNumericFilter < 3) {
    unittest.expect(
      o.operation!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaNumericValue(o.value!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessNumericFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessOrderBy = 0;
api.GoogleAnalyticsAdminV1alphaAccessOrderBy
    buildGoogleAnalyticsAdminV1alphaAccessOrderBy() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessOrderBy();
  buildCounterGoogleAnalyticsAdminV1alphaAccessOrderBy++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessOrderBy < 3) {
    o.desc = true;
    o.dimension =
        buildGoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy();
    o.metric = buildGoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessOrderBy--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessOrderBy(
    api.GoogleAnalyticsAdminV1alphaAccessOrderBy o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessOrderBy++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessOrderBy < 3) {
    unittest.expect(o.desc!, unittest.isTrue);
    checkGoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy(o.dimension!);
    checkGoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy(o.metric!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessOrderBy--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy =
    0;
api.GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy
    buildGoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy();
  buildCounterGoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy <
      3) {
    o.dimensionName = 'foo';
    o.orderType = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy(
    api.GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy <
      3) {
    unittest.expect(
      o.dimensionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy = 0;
api.GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy
    buildGoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy();
  buildCounterGoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy < 3) {
    o.metricName = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy(
    api.GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy < 3) {
    unittest.expect(
      o.metricName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessQuota = 0;
api.GoogleAnalyticsAdminV1alphaAccessQuota
    buildGoogleAnalyticsAdminV1alphaAccessQuota() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessQuota();
  buildCounterGoogleAnalyticsAdminV1alphaAccessQuota++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessQuota < 3) {
    o.concurrentRequests = buildGoogleAnalyticsAdminV1alphaAccessQuotaStatus();
    o.serverErrorsPerProjectPerHour =
        buildGoogleAnalyticsAdminV1alphaAccessQuotaStatus();
    o.tokensPerDay = buildGoogleAnalyticsAdminV1alphaAccessQuotaStatus();
    o.tokensPerHour = buildGoogleAnalyticsAdminV1alphaAccessQuotaStatus();
    o.tokensPerProjectPerHour =
        buildGoogleAnalyticsAdminV1alphaAccessQuotaStatus();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessQuota--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessQuota(
    api.GoogleAnalyticsAdminV1alphaAccessQuota o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessQuota++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessQuota < 3) {
    checkGoogleAnalyticsAdminV1alphaAccessQuotaStatus(o.concurrentRequests!);
    checkGoogleAnalyticsAdminV1alphaAccessQuotaStatus(
        o.serverErrorsPerProjectPerHour!);
    checkGoogleAnalyticsAdminV1alphaAccessQuotaStatus(o.tokensPerDay!);
    checkGoogleAnalyticsAdminV1alphaAccessQuotaStatus(o.tokensPerHour!);
    checkGoogleAnalyticsAdminV1alphaAccessQuotaStatus(
        o.tokensPerProjectPerHour!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessQuota--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessQuotaStatus = 0;
api.GoogleAnalyticsAdminV1alphaAccessQuotaStatus
    buildGoogleAnalyticsAdminV1alphaAccessQuotaStatus() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessQuotaStatus();
  buildCounterGoogleAnalyticsAdminV1alphaAccessQuotaStatus++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessQuotaStatus < 3) {
    o.consumed = 42;
    o.remaining = 42;
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessQuotaStatus--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessQuotaStatus(
    api.GoogleAnalyticsAdminV1alphaAccessQuotaStatus o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessQuotaStatus++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessQuotaStatus < 3) {
    unittest.expect(
      o.consumed!,
      unittest.equals(42),
    );
    unittest.expect(
      o.remaining!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessQuotaStatus--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAccessDimensionValue>
    buildUnnamed3() => [
          buildGoogleAnalyticsAdminV1alphaAccessDimensionValue(),
          buildGoogleAnalyticsAdminV1alphaAccessDimensionValue(),
        ];

void checkUnnamed3(
    core.List<api.GoogleAnalyticsAdminV1alphaAccessDimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccessDimensionValue(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccessDimensionValue(o[1]);
}

core.List<api.GoogleAnalyticsAdminV1alphaAccessMetricValue> buildUnnamed4() => [
      buildGoogleAnalyticsAdminV1alphaAccessMetricValue(),
      buildGoogleAnalyticsAdminV1alphaAccessMetricValue(),
    ];

void checkUnnamed4(
    core.List<api.GoogleAnalyticsAdminV1alphaAccessMetricValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccessMetricValue(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccessMetricValue(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessRow = 0;
api.GoogleAnalyticsAdminV1alphaAccessRow
    buildGoogleAnalyticsAdminV1alphaAccessRow() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessRow();
  buildCounterGoogleAnalyticsAdminV1alphaAccessRow++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessRow < 3) {
    o.dimensionValues = buildUnnamed3();
    o.metricValues = buildUnnamed4();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessRow--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessRow(
    api.GoogleAnalyticsAdminV1alphaAccessRow o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessRow++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessRow < 3) {
    checkUnnamed3(o.dimensionValues!);
    checkUnnamed4(o.metricValues!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessRow--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccessStringFilter = 0;
api.GoogleAnalyticsAdminV1alphaAccessStringFilter
    buildGoogleAnalyticsAdminV1alphaAccessStringFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaAccessStringFilter();
  buildCounterGoogleAnalyticsAdminV1alphaAccessStringFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessStringFilter < 3) {
    o.caseSensitive = true;
    o.matchType = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccessStringFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccessStringFilter(
    api.GoogleAnalyticsAdminV1alphaAccessStringFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccessStringFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccessStringFilter < 3) {
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
  buildCounterGoogleAnalyticsAdminV1alphaAccessStringFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccount = 0;
api.GoogleAnalyticsAdminV1alphaAccount
    buildGoogleAnalyticsAdminV1alphaAccount() {
  final o = api.GoogleAnalyticsAdminV1alphaAccount();
  buildCounterGoogleAnalyticsAdminV1alphaAccount++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccount < 3) {
    o.createTime = 'foo';
    o.deleted = true;
    o.displayName = 'foo';
    o.gmpOrganization = 'foo';
    o.name = 'foo';
    o.regionCode = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccount--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccount(
    api.GoogleAnalyticsAdminV1alphaAccount o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccount++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccount < 3) {
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
  buildCounterGoogleAnalyticsAdminV1alphaAccount--;
}

core.List<api.GoogleAnalyticsAdminV1alphaPropertySummary> buildUnnamed5() => [
      buildGoogleAnalyticsAdminV1alphaPropertySummary(),
      buildGoogleAnalyticsAdminV1alphaPropertySummary(),
    ];

void checkUnnamed5(
    core.List<api.GoogleAnalyticsAdminV1alphaPropertySummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaPropertySummary(o[0]);
  checkGoogleAnalyticsAdminV1alphaPropertySummary(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccountSummary = 0;
api.GoogleAnalyticsAdminV1alphaAccountSummary
    buildGoogleAnalyticsAdminV1alphaAccountSummary() {
  final o = api.GoogleAnalyticsAdminV1alphaAccountSummary();
  buildCounterGoogleAnalyticsAdminV1alphaAccountSummary++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccountSummary < 3) {
    o.account = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.propertySummaries = buildUnnamed5();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccountSummary--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccountSummary(
    api.GoogleAnalyticsAdminV1alphaAccountSummary o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccountSummary++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccountSummary < 3) {
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
    checkUnnamed5(o.propertySummaries!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccountSummary--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest =
    0;
api.GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest
    buildGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest() {
  final o =
      api.GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest();
  buildCounterGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest <
      3) {
    o.acknowledgement = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest(
    api.GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest <
      3) {
    unittest.expect(
      o.acknowledgement!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse =
    0;
api.GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse
    buildGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse() {
  final o =
      api.GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse();
  buildCounterGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse <
      3) {}
  buildCounterGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse(
    api.GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse <
      3) {}
  buildCounterGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAdSenseLink = 0;
api.GoogleAnalyticsAdminV1alphaAdSenseLink
    buildGoogleAnalyticsAdminV1alphaAdSenseLink() {
  final o = api.GoogleAnalyticsAdminV1alphaAdSenseLink();
  buildCounterGoogleAnalyticsAdminV1alphaAdSenseLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAdSenseLink < 3) {
    o.adClientCode = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAdSenseLink--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAdSenseLink(
    api.GoogleAnalyticsAdminV1alphaAdSenseLink o) {
  buildCounterGoogleAnalyticsAdminV1alphaAdSenseLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAdSenseLink < 3) {
    unittest.expect(
      o.adClientCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAdSenseLink--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest =
    0;
api.GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
    buildGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest() {
  final o = api
      .GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest();
  buildCounterGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest <
      3) {}
  buildCounterGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest(
    api.GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
        o) {
  buildCounterGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest <
      3) {}
  buildCounterGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse =
    0;
api.GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse
    buildGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse() {
  final o = api
      .GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse();
  buildCounterGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse <
      3) {
    o.displayVideo360AdvertiserLink =
        buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink();
  }
  buildCounterGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse(
    api.GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse
        o) {
  buildCounterGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse <
      3) {
    checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink(
        o.displayVideo360AdvertiserLink!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaArchiveAudienceRequest = 0;
api.GoogleAnalyticsAdminV1alphaArchiveAudienceRequest
    buildGoogleAnalyticsAdminV1alphaArchiveAudienceRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaArchiveAudienceRequest();
  buildCounterGoogleAnalyticsAdminV1alphaArchiveAudienceRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaArchiveAudienceRequest < 3) {}
  buildCounterGoogleAnalyticsAdminV1alphaArchiveAudienceRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaArchiveAudienceRequest(
    api.GoogleAnalyticsAdminV1alphaArchiveAudienceRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaArchiveAudienceRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaArchiveAudienceRequest < 3) {}
  buildCounterGoogleAnalyticsAdminV1alphaArchiveAudienceRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest =
    0;
api.GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest
    buildGoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest();
  buildCounterGoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest <
      3) {}
  buildCounterGoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest(
    api.GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest <
      3) {}
  buildCounterGoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest = 0;
api.GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest
    buildGoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest();
  buildCounterGoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest < 3) {}
  buildCounterGoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest(
    api.GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest < 3) {}
  buildCounterGoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAttributionSettings = 0;
api.GoogleAnalyticsAdminV1alphaAttributionSettings
    buildGoogleAnalyticsAdminV1alphaAttributionSettings() {
  final o = api.GoogleAnalyticsAdminV1alphaAttributionSettings();
  buildCounterGoogleAnalyticsAdminV1alphaAttributionSettings++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAttributionSettings < 3) {
    o.acquisitionConversionEventLookbackWindow = 'foo';
    o.adsWebConversionDataExportScope = 'foo';
    o.name = 'foo';
    o.otherConversionEventLookbackWindow = 'foo';
    o.reportingAttributionModel = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAttributionSettings--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAttributionSettings(
    api.GoogleAnalyticsAdminV1alphaAttributionSettings o) {
  buildCounterGoogleAnalyticsAdminV1alphaAttributionSettings++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAttributionSettings < 3) {
    unittest.expect(
      o.acquisitionConversionEventLookbackWindow!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.adsWebConversionDataExportScope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.otherConversionEventLookbackWindow!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportingAttributionModel!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAttributionSettings--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAudienceFilterClause>
    buildUnnamed6() => [
          buildGoogleAnalyticsAdminV1alphaAudienceFilterClause(),
          buildGoogleAnalyticsAdminV1alphaAudienceFilterClause(),
        ];

void checkUnnamed6(
    core.List<api.GoogleAnalyticsAdminV1alphaAudienceFilterClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAudienceFilterClause(o[0]);
  checkGoogleAnalyticsAdminV1alphaAudienceFilterClause(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAudience = 0;
api.GoogleAnalyticsAdminV1alphaAudience
    buildGoogleAnalyticsAdminV1alphaAudience() {
  final o = api.GoogleAnalyticsAdminV1alphaAudience();
  buildCounterGoogleAnalyticsAdminV1alphaAudience++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudience < 3) {
    o.adsPersonalizationEnabled = true;
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.eventTrigger = buildGoogleAnalyticsAdminV1alphaAudienceEventTrigger();
    o.exclusionDurationMode = 'foo';
    o.filterClauses = buildUnnamed6();
    o.membershipDurationDays = 42;
    o.name = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudience--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAudience(
    api.GoogleAnalyticsAdminV1alphaAudience o) {
  buildCounterGoogleAnalyticsAdminV1alphaAudience++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudience < 3) {
    unittest.expect(o.adsPersonalizationEnabled!, unittest.isTrue);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaAudienceEventTrigger(o.eventTrigger!);
    unittest.expect(
      o.exclusionDurationMode!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.filterClauses!);
    unittest.expect(
      o.membershipDurationDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudience--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter = 0;
api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter
    buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter();
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter <
      3) {
    o.atAnyPointInTime = true;
    o.betweenFilter =
        buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter();
    o.fieldName = 'foo';
    o.inAnyNDayPeriod = 42;
    o.inListFilter =
        buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter();
    o.numericFilter =
        buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter();
    o.stringFilter =
        buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter(
    api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter <
      3) {
    unittest.expect(o.atAnyPointInTime!, unittest.isTrue);
    checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter(
        o.betweenFilter!);
    unittest.expect(
      o.fieldName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inAnyNDayPeriod!,
      unittest.equals(42),
    );
    checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter(
        o.inListFilter!);
    checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter(
        o.numericFilter!);
    checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter(
        o.stringFilter!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter =
    0;
api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter
    buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter() {
  final o = api
      .GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter();
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter <
      3) {
    o.fromValue =
        buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue();
    o.toValue =
        buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter(
    api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter
        o) {
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter <
      3) {
    checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue(
        o.fromValue!);
    checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue(
        o.toValue!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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
    buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter =
    0;
api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter
    buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter() {
  final o = api
      .GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter();
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter <
      3) {
    o.caseSensitive = true;
    o.values = buildUnnamed7();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter(
    api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter
        o) {
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter <
      3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    checkUnnamed7(o.values!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter =
    0;
api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter
    buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter() {
  final o = api
      .GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter();
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter <
      3) {
    o.operation = 'foo';
    o.value =
        buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter(
    api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter
        o) {
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter <
      3) {
    unittest.expect(
      o.operation!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue(
        o.value!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue =
    0;
api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue
    buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue() {
  final o = api
      .GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue();
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue <
      3) {
    o.doubleValue = 42.0;
    o.int64Value = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue(
    api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue
        o) {
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue <
      3) {
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.int64Value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter =
    0;
api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter
    buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter() {
  final o = api
      .GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter();
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter <
      3) {
    o.caseSensitive = true;
    o.matchType = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter(
    api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter
        o) {
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter <
      3) {
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
  buildCounterGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAudienceEventFilter = 0;
api.GoogleAnalyticsAdminV1alphaAudienceEventFilter
    buildGoogleAnalyticsAdminV1alphaAudienceEventFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaAudienceEventFilter();
  buildCounterGoogleAnalyticsAdminV1alphaAudienceEventFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceEventFilter < 3) {
    o.eventName = 'foo';
    o.eventParameterFilterExpression =
        buildGoogleAnalyticsAdminV1alphaAudienceFilterExpression();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceEventFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAudienceEventFilter(
    api.GoogleAnalyticsAdminV1alphaAudienceEventFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaAudienceEventFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceEventFilter < 3) {
    unittest.expect(
      o.eventName!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaAudienceFilterExpression(
        o.eventParameterFilterExpression!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceEventFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAudienceEventTrigger = 0;
api.GoogleAnalyticsAdminV1alphaAudienceEventTrigger
    buildGoogleAnalyticsAdminV1alphaAudienceEventTrigger() {
  final o = api.GoogleAnalyticsAdminV1alphaAudienceEventTrigger();
  buildCounterGoogleAnalyticsAdminV1alphaAudienceEventTrigger++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceEventTrigger < 3) {
    o.eventName = 'foo';
    o.logCondition = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceEventTrigger--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAudienceEventTrigger(
    api.GoogleAnalyticsAdminV1alphaAudienceEventTrigger o) {
  buildCounterGoogleAnalyticsAdminV1alphaAudienceEventTrigger++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceEventTrigger < 3) {
    unittest.expect(
      o.eventName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logCondition!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceEventTrigger--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterClause = 0;
api.GoogleAnalyticsAdminV1alphaAudienceFilterClause
    buildGoogleAnalyticsAdminV1alphaAudienceFilterClause() {
  final o = api.GoogleAnalyticsAdminV1alphaAudienceFilterClause();
  buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterClause++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterClause < 3) {
    o.clauseType = 'foo';
    o.sequenceFilter = buildGoogleAnalyticsAdminV1alphaAudienceSequenceFilter();
    o.simpleFilter = buildGoogleAnalyticsAdminV1alphaAudienceSimpleFilter();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterClause--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAudienceFilterClause(
    api.GoogleAnalyticsAdminV1alphaAudienceFilterClause o) {
  buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterClause++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterClause < 3) {
    unittest.expect(
      o.clauseType!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaAudienceSequenceFilter(o.sequenceFilter!);
    checkGoogleAnalyticsAdminV1alphaAudienceSimpleFilter(o.simpleFilter!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterClause--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterExpression = 0;
api.GoogleAnalyticsAdminV1alphaAudienceFilterExpression
    buildGoogleAnalyticsAdminV1alphaAudienceFilterExpression() {
  final o = api.GoogleAnalyticsAdminV1alphaAudienceFilterExpression();
  buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterExpression++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterExpression < 3) {
    o.andGroup = buildGoogleAnalyticsAdminV1alphaAudienceFilterExpressionList();
    o.dimensionOrMetricFilter =
        buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter();
    o.eventFilter = buildGoogleAnalyticsAdminV1alphaAudienceEventFilter();
    o.notExpression =
        buildGoogleAnalyticsAdminV1alphaAudienceFilterExpression();
    o.orGroup = buildGoogleAnalyticsAdminV1alphaAudienceFilterExpressionList();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterExpression--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAudienceFilterExpression(
    api.GoogleAnalyticsAdminV1alphaAudienceFilterExpression o) {
  buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterExpression++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterExpression < 3) {
    checkGoogleAnalyticsAdminV1alphaAudienceFilterExpressionList(o.andGroup!);
    checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter(
        o.dimensionOrMetricFilter!);
    checkGoogleAnalyticsAdminV1alphaAudienceEventFilter(o.eventFilter!);
    checkGoogleAnalyticsAdminV1alphaAudienceFilterExpression(o.notExpression!);
    checkGoogleAnalyticsAdminV1alphaAudienceFilterExpressionList(o.orGroup!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterExpression--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAudienceFilterExpression>
    buildUnnamed8() => [
          buildGoogleAnalyticsAdminV1alphaAudienceFilterExpression(),
          buildGoogleAnalyticsAdminV1alphaAudienceFilterExpression(),
        ];

void checkUnnamed8(
    core.List<api.GoogleAnalyticsAdminV1alphaAudienceFilterExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAudienceFilterExpression(o[0]);
  checkGoogleAnalyticsAdminV1alphaAudienceFilterExpression(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterExpressionList =
    0;
api.GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList
    buildGoogleAnalyticsAdminV1alphaAudienceFilterExpressionList() {
  final o = api.GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList();
  buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterExpressionList++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterExpressionList < 3) {
    o.filterExpressions = buildUnnamed8();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterExpressionList--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAudienceFilterExpressionList(
    api.GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList o) {
  buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterExpressionList++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterExpressionList < 3) {
    checkUnnamed8(o.filterExpressions!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceFilterExpressionList--;
}

core.List<
        api
        .GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep>
    buildUnnamed9() => [
          buildGoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep(),
          buildGoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep(),
        ];

void checkUnnamed9(
    core.List<
            api
            .GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep(
      o[0]);
  checkGoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep(
      o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAudienceSequenceFilter = 0;
api.GoogleAnalyticsAdminV1alphaAudienceSequenceFilter
    buildGoogleAnalyticsAdminV1alphaAudienceSequenceFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaAudienceSequenceFilter();
  buildCounterGoogleAnalyticsAdminV1alphaAudienceSequenceFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceSequenceFilter < 3) {
    o.scope = 'foo';
    o.sequenceMaximumDuration = 'foo';
    o.sequenceSteps = buildUnnamed9();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceSequenceFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAudienceSequenceFilter(
    api.GoogleAnalyticsAdminV1alphaAudienceSequenceFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaAudienceSequenceFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceSequenceFilter < 3) {
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sequenceMaximumDuration!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.sequenceSteps!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceSequenceFilter--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep =
    0;
api.GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep
    buildGoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep() {
  final o = api
      .GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep();
  buildCounterGoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep <
      3) {
    o.constraintDuration = 'foo';
    o.filterExpression =
        buildGoogleAnalyticsAdminV1alphaAudienceFilterExpression();
    o.immediatelyFollows = true;
    o.scope = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep(
    api.GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep
        o) {
  buildCounterGoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep <
      3) {
    unittest.expect(
      o.constraintDuration!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaAudienceFilterExpression(
        o.filterExpression!);
    unittest.expect(o.immediatelyFollows!, unittest.isTrue);
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAudienceSimpleFilter = 0;
api.GoogleAnalyticsAdminV1alphaAudienceSimpleFilter
    buildGoogleAnalyticsAdminV1alphaAudienceSimpleFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaAudienceSimpleFilter();
  buildCounterGoogleAnalyticsAdminV1alphaAudienceSimpleFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceSimpleFilter < 3) {
    o.filterExpression =
        buildGoogleAnalyticsAdminV1alphaAudienceFilterExpression();
    o.scope = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceSimpleFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAudienceSimpleFilter(
    api.GoogleAnalyticsAdminV1alphaAudienceSimpleFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaAudienceSimpleFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAudienceSimpleFilter < 3) {
    checkGoogleAnalyticsAdminV1alphaAudienceFilterExpression(
        o.filterExpression!);
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAudienceSimpleFilter--;
}

core.List<api.GoogleAnalyticsAdminV1alphaCreateAccessBindingRequest>
    buildUnnamed10() => [
          buildGoogleAnalyticsAdminV1alphaCreateAccessBindingRequest(),
          buildGoogleAnalyticsAdminV1alphaCreateAccessBindingRequest(),
        ];

void checkUnnamed10(
    core.List<api.GoogleAnalyticsAdminV1alphaCreateAccessBindingRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaCreateAccessBindingRequest(o[0]);
  checkGoogleAnalyticsAdminV1alphaCreateAccessBindingRequest(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest = 0;
api.GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest
    buildGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest();
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest <
      3) {
    o.requests = buildUnnamed10();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest(
    api.GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest <
      3) {
    checkUnnamed10(o.requests!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAccessBinding> buildUnnamed11() => [
      buildGoogleAnalyticsAdminV1alphaAccessBinding(),
      buildGoogleAnalyticsAdminV1alphaAccessBinding(),
    ];

void checkUnnamed11(core.List<api.GoogleAnalyticsAdminV1alphaAccessBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccessBinding(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccessBinding(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse
    buildGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse <
      3) {
    o.accessBindings = buildUnnamed11();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse(
    api.GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse <
      3) {
    checkUnnamed11(o.accessBindings!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest>
    buildUnnamed12() => [
          buildGoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest(),
          buildGoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest(),
        ];

void checkUnnamed12(
    core.List<api.GoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest(o[0]);
  checkGoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest = 0;
api.GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest
    buildGoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest();
  buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest <
      3) {
    o.requests = buildUnnamed12();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest(
    api.GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest <
      3) {
    checkUnnamed12(o.requests!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAccessBinding> buildUnnamed13() => [
      buildGoogleAnalyticsAdminV1alphaAccessBinding(),
      buildGoogleAnalyticsAdminV1alphaAccessBinding(),
    ];

void checkUnnamed13(core.List<api.GoogleAnalyticsAdminV1alphaAccessBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccessBinding(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccessBinding(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse
    buildGoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse <
      3) {
    o.accessBindings = buildUnnamed13();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse(
    api.GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse <
      3) {
    checkUnnamed13(o.accessBindings!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest>
    buildUnnamed14() => [
          buildGoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest(),
          buildGoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest(),
        ];

void checkUnnamed14(
    core.List<api.GoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest(o[0]);
  checkGoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest = 0;
api.GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest
    buildGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest();
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest <
      3) {
    o.requests = buildUnnamed14();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest(
    api.GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest <
      3) {
    checkUnnamed14(o.requests!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAccessBinding> buildUnnamed15() => [
      buildGoogleAnalyticsAdminV1alphaAccessBinding(),
      buildGoogleAnalyticsAdminV1alphaAccessBinding(),
    ];

void checkUnnamed15(core.List<api.GoogleAnalyticsAdminV1alphaAccessBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccessBinding(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccessBinding(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse
    buildGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse <
      3) {
    o.accessBindings = buildUnnamed15();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse(
    api.GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse <
      3) {
    checkUnnamed15(o.accessBindings!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse--;
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.int buildCounterGoogleAnalyticsAdminV1alphaBigQueryLink = 0;
api.GoogleAnalyticsAdminV1alphaBigQueryLink
    buildGoogleAnalyticsAdminV1alphaBigQueryLink() {
  final o = api.GoogleAnalyticsAdminV1alphaBigQueryLink();
  buildCounterGoogleAnalyticsAdminV1alphaBigQueryLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBigQueryLink < 3) {
    o.createTime = 'foo';
    o.dailyExportEnabled = true;
    o.datasetLocation = 'foo';
    o.excludedEvents = buildUnnamed16();
    o.exportStreams = buildUnnamed17();
    o.freshDailyExportEnabled = true;
    o.includeAdvertisingId = true;
    o.name = 'foo';
    o.project = 'foo';
    o.streamingExportEnabled = true;
  }
  buildCounterGoogleAnalyticsAdminV1alphaBigQueryLink--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBigQueryLink(
    api.GoogleAnalyticsAdminV1alphaBigQueryLink o) {
  buildCounterGoogleAnalyticsAdminV1alphaBigQueryLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBigQueryLink < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.dailyExportEnabled!, unittest.isTrue);
    unittest.expect(
      o.datasetLocation!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.excludedEvents!);
    checkUnnamed17(o.exportStreams!);
    unittest.expect(o.freshDailyExportEnabled!, unittest.isTrue);
    unittest.expect(o.includeAdvertisingId!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    unittest.expect(o.streamingExportEnabled!, unittest.isTrue);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBigQueryLink--;
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.int buildCounterGoogleAnalyticsAdminV1alphaCalculatedMetric = 0;
api.GoogleAnalyticsAdminV1alphaCalculatedMetric
    buildGoogleAnalyticsAdminV1alphaCalculatedMetric() {
  final o = api.GoogleAnalyticsAdminV1alphaCalculatedMetric();
  buildCounterGoogleAnalyticsAdminV1alphaCalculatedMetric++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCalculatedMetric < 3) {
    o.calculatedMetricId = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.formula = 'foo';
    o.invalidMetricReference = true;
    o.metricUnit = 'foo';
    o.name = 'foo';
    o.restrictedMetricType = buildUnnamed18();
  }
  buildCounterGoogleAnalyticsAdminV1alphaCalculatedMetric--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaCalculatedMetric(
    api.GoogleAnalyticsAdminV1alphaCalculatedMetric o) {
  buildCounterGoogleAnalyticsAdminV1alphaCalculatedMetric++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCalculatedMetric < 3) {
    unittest.expect(
      o.calculatedMetricId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formula!,
      unittest.equals('foo'),
    );
    unittest.expect(o.invalidMetricReference!, unittest.isTrue);
    unittest.expect(
      o.metricUnit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.restrictedMetricType!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaCalculatedMetric--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest =
    0;
api.GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
    buildGoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest() {
  final o = api
      .GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest();
  buildCounterGoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest <
      3) {}
  buildCounterGoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest(
    api.GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
        o) {
  buildCounterGoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest <
      3) {}
  buildCounterGoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryChange = 0;
api.GoogleAnalyticsAdminV1alphaChangeHistoryChange
    buildGoogleAnalyticsAdminV1alphaChangeHistoryChange() {
  final o = api.GoogleAnalyticsAdminV1alphaChangeHistoryChange();
  buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryChange++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryChange < 3) {
    o.action = 'foo';
    o.resource = 'foo';
    o.resourceAfterChange =
        buildGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource();
    o.resourceBeforeChange =
        buildGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource();
  }
  buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryChange--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaChangeHistoryChange(
    api.GoogleAnalyticsAdminV1alphaChangeHistoryChange o) {
  buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryChange++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryChange < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource(
        o.resourceAfterChange!);
    checkGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource(
        o.resourceBeforeChange!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryChange--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource =
    0;
api.GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource
    buildGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource() {
  final o =
      api.GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource();
  buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource <
      3) {
    o.account = buildGoogleAnalyticsAdminV1alphaAccount();
    o.adsenseLink = buildGoogleAnalyticsAdminV1alphaAdSenseLink();
    o.attributionSettings =
        buildGoogleAnalyticsAdminV1alphaAttributionSettings();
    o.audience = buildGoogleAnalyticsAdminV1alphaAudience();
    o.bigqueryLink = buildGoogleAnalyticsAdminV1alphaBigQueryLink();
    o.calculatedMetric = buildGoogleAnalyticsAdminV1alphaCalculatedMetric();
    o.channelGroup = buildGoogleAnalyticsAdminV1alphaChannelGroup();
    o.conversionEvent = buildGoogleAnalyticsAdminV1alphaConversionEvent();
    o.customDimension = buildGoogleAnalyticsAdminV1alphaCustomDimension();
    o.customMetric = buildGoogleAnalyticsAdminV1alphaCustomMetric();
    o.dataRedactionSettings =
        buildGoogleAnalyticsAdminV1alphaDataRedactionSettings();
    o.dataRetentionSettings =
        buildGoogleAnalyticsAdminV1alphaDataRetentionSettings();
    o.dataStream = buildGoogleAnalyticsAdminV1alphaDataStream();
    o.displayVideo360AdvertiserLink =
        buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink();
    o.displayVideo360AdvertiserLinkProposal =
        buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal();
    o.enhancedMeasurementSettings =
        buildGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings();
    o.eventCreateRule = buildGoogleAnalyticsAdminV1alphaEventCreateRule();
    o.expandedDataSet = buildGoogleAnalyticsAdminV1alphaExpandedDataSet();
    o.firebaseLink = buildGoogleAnalyticsAdminV1alphaFirebaseLink();
    o.googleAdsLink = buildGoogleAnalyticsAdminV1alphaGoogleAdsLink();
    o.googleSignalsSettings =
        buildGoogleAnalyticsAdminV1alphaGoogleSignalsSettings();
    o.keyEvent = buildGoogleAnalyticsAdminV1alphaKeyEvent();
    o.measurementProtocolSecret =
        buildGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret();
    o.property = buildGoogleAnalyticsAdminV1alphaProperty();
    o.reportingDataAnnotation =
        buildGoogleAnalyticsAdminV1alphaReportingDataAnnotation();
    o.reportingIdentitySettings =
        buildGoogleAnalyticsAdminV1alphaReportingIdentitySettings();
    o.searchAds360Link = buildGoogleAnalyticsAdminV1alphaSearchAds360Link();
    o.skadnetworkConversionValueSchema =
        buildGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema();
    o.subpropertySyncConfig =
        buildGoogleAnalyticsAdminV1alphaSubpropertySyncConfig();
  }
  buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource(
    api.GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource o) {
  buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource <
      3) {
    checkGoogleAnalyticsAdminV1alphaAccount(o.account!);
    checkGoogleAnalyticsAdminV1alphaAdSenseLink(o.adsenseLink!);
    checkGoogleAnalyticsAdminV1alphaAttributionSettings(o.attributionSettings!);
    checkGoogleAnalyticsAdminV1alphaAudience(o.audience!);
    checkGoogleAnalyticsAdminV1alphaBigQueryLink(o.bigqueryLink!);
    checkGoogleAnalyticsAdminV1alphaCalculatedMetric(o.calculatedMetric!);
    checkGoogleAnalyticsAdminV1alphaChannelGroup(o.channelGroup!);
    checkGoogleAnalyticsAdminV1alphaConversionEvent(o.conversionEvent!);
    checkGoogleAnalyticsAdminV1alphaCustomDimension(o.customDimension!);
    checkGoogleAnalyticsAdminV1alphaCustomMetric(o.customMetric!);
    checkGoogleAnalyticsAdminV1alphaDataRedactionSettings(
        o.dataRedactionSettings!);
    checkGoogleAnalyticsAdminV1alphaDataRetentionSettings(
        o.dataRetentionSettings!);
    checkGoogleAnalyticsAdminV1alphaDataStream(o.dataStream!);
    checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink(
        o.displayVideo360AdvertiserLink!);
    checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal(
        o.displayVideo360AdvertiserLinkProposal!);
    checkGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings(
        o.enhancedMeasurementSettings!);
    checkGoogleAnalyticsAdminV1alphaEventCreateRule(o.eventCreateRule!);
    checkGoogleAnalyticsAdminV1alphaExpandedDataSet(o.expandedDataSet!);
    checkGoogleAnalyticsAdminV1alphaFirebaseLink(o.firebaseLink!);
    checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(o.googleAdsLink!);
    checkGoogleAnalyticsAdminV1alphaGoogleSignalsSettings(
        o.googleSignalsSettings!);
    checkGoogleAnalyticsAdminV1alphaKeyEvent(o.keyEvent!);
    checkGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret(
        o.measurementProtocolSecret!);
    checkGoogleAnalyticsAdminV1alphaProperty(o.property!);
    checkGoogleAnalyticsAdminV1alphaReportingDataAnnotation(
        o.reportingDataAnnotation!);
    checkGoogleAnalyticsAdminV1alphaReportingIdentitySettings(
        o.reportingIdentitySettings!);
    checkGoogleAnalyticsAdminV1alphaSearchAds360Link(o.searchAds360Link!);
    checkGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema(
        o.skadnetworkConversionValueSchema!);
    checkGoogleAnalyticsAdminV1alphaSubpropertySyncConfig(
        o.subpropertySyncConfig!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource--;
}

core.List<api.GoogleAnalyticsAdminV1alphaChangeHistoryChange>
    buildUnnamed19() => [
          buildGoogleAnalyticsAdminV1alphaChangeHistoryChange(),
          buildGoogleAnalyticsAdminV1alphaChangeHistoryChange(),
        ];

void checkUnnamed19(
    core.List<api.GoogleAnalyticsAdminV1alphaChangeHistoryChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaChangeHistoryChange(o[0]);
  checkGoogleAnalyticsAdminV1alphaChangeHistoryChange(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryEvent = 0;
api.GoogleAnalyticsAdminV1alphaChangeHistoryEvent
    buildGoogleAnalyticsAdminV1alphaChangeHistoryEvent() {
  final o = api.GoogleAnalyticsAdminV1alphaChangeHistoryEvent();
  buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryEvent++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryEvent < 3) {
    o.actorType = 'foo';
    o.changeTime = 'foo';
    o.changes = buildUnnamed19();
    o.changesFiltered = true;
    o.id = 'foo';
    o.userActorEmail = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryEvent--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaChangeHistoryEvent(
    api.GoogleAnalyticsAdminV1alphaChangeHistoryEvent o) {
  buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryEvent++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryEvent < 3) {
    unittest.expect(
      o.actorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.changeTime!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.changes!);
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
  buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryEvent--;
}

core.List<api.GoogleAnalyticsAdminV1alphaGroupingRule> buildUnnamed20() => [
      buildGoogleAnalyticsAdminV1alphaGroupingRule(),
      buildGoogleAnalyticsAdminV1alphaGroupingRule(),
    ];

void checkUnnamed20(core.List<api.GoogleAnalyticsAdminV1alphaGroupingRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaGroupingRule(o[0]);
  checkGoogleAnalyticsAdminV1alphaGroupingRule(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaChannelGroup = 0;
api.GoogleAnalyticsAdminV1alphaChannelGroup
    buildGoogleAnalyticsAdminV1alphaChannelGroup() {
  final o = api.GoogleAnalyticsAdminV1alphaChannelGroup();
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroup++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChannelGroup < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.groupingRule = buildUnnamed20();
    o.name = 'foo';
    o.primary = true;
    o.systemDefined = true;
  }
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroup--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaChannelGroup(
    api.GoogleAnalyticsAdminV1alphaChannelGroup o) {
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroup++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChannelGroup < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.groupingRule!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.primary!, unittest.isTrue);
    unittest.expect(o.systemDefined!, unittest.isTrue);
  }
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroup--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilter = 0;
api.GoogleAnalyticsAdminV1alphaChannelGroupFilter
    buildGoogleAnalyticsAdminV1alphaChannelGroupFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaChannelGroupFilter();
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilter < 3) {
    o.fieldName = 'foo';
    o.inListFilter =
        buildGoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter();
    o.stringFilter =
        buildGoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter();
  }
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaChannelGroupFilter(
    api.GoogleAnalyticsAdminV1alphaChannelGroupFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilter < 3) {
    unittest.expect(
      o.fieldName!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter(
        o.inListFilter!);
    checkGoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter(
        o.stringFilter!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression =
    0;
api.GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression
    buildGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression() {
  final o = api.GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression();
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression < 3) {
    o.andGroup =
        buildGoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList();
    o.filter = buildGoogleAnalyticsAdminV1alphaChannelGroupFilter();
    o.notExpression =
        buildGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression();
    o.orGroup =
        buildGoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList();
  }
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression(
    api.GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression o) {
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression < 3) {
    checkGoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList(
        o.andGroup!);
    checkGoogleAnalyticsAdminV1alphaChannelGroupFilter(o.filter!);
    checkGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression(
        o.notExpression!);
    checkGoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList(
        o.orGroup!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression--;
}

core.List<api.GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression>
    buildUnnamed21() => [
          buildGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression(),
          buildGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression(),
        ];

void checkUnnamed21(
    core.List<api.GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression(o[0]);
  checkGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList = 0;
api.GoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList
    buildGoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList() {
  final o = api.GoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList();
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList <
      3) {
    o.filterExpressions = buildUnnamed21();
  }
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList(
    api.GoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList o) {
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList <
      3) {
    checkUnnamed21(o.filterExpressions!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList--;
}

core.List<core.String> buildUnnamed22() => [
      'foo',
      'foo',
    ];

void checkUnnamed22(core.List<core.String> o) {
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

core.int buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter =
    0;
api.GoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter
    buildGoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter();
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter <
      3) {
    o.values = buildUnnamed22();
  }
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter(
    api.GoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter <
      3) {
    checkUnnamed22(o.values!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter =
    0;
api.GoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter
    buildGoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter();
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter <
      3) {
    o.matchType = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter(
    api.GoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter <
      3) {
    unittest.expect(
      o.matchType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaConversionEvent = 0;
api.GoogleAnalyticsAdminV1alphaConversionEvent
    buildGoogleAnalyticsAdminV1alphaConversionEvent() {
  final o = api.GoogleAnalyticsAdminV1alphaConversionEvent();
  buildCounterGoogleAnalyticsAdminV1alphaConversionEvent++;
  if (buildCounterGoogleAnalyticsAdminV1alphaConversionEvent < 3) {
    o.countingMethod = 'foo';
    o.createTime = 'foo';
    o.custom = true;
    o.defaultConversionValue =
        buildGoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue();
    o.deletable = true;
    o.eventName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaConversionEvent--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaConversionEvent(
    api.GoogleAnalyticsAdminV1alphaConversionEvent o) {
  buildCounterGoogleAnalyticsAdminV1alphaConversionEvent++;
  if (buildCounterGoogleAnalyticsAdminV1alphaConversionEvent < 3) {
    unittest.expect(
      o.countingMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.custom!, unittest.isTrue);
    checkGoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue(
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
  buildCounterGoogleAnalyticsAdminV1alphaConversionEvent--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue =
    0;
api.GoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue
    buildGoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue() {
  final o =
      api.GoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue();
  buildCounterGoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue++;
  if (buildCounterGoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue <
      3) {
    o.currencyCode = 'foo';
    o.value = 42.0;
  }
  buildCounterGoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue(
    api.GoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue o) {
  buildCounterGoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue++;
  if (buildCounterGoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue <
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
  buildCounterGoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue--;
}

core.List<api.GoogleAnalyticsAdminV1alphaEventMapping> buildUnnamed23() => [
      buildGoogleAnalyticsAdminV1alphaEventMapping(),
      buildGoogleAnalyticsAdminV1alphaEventMapping(),
    ];

void checkUnnamed23(core.List<api.GoogleAnalyticsAdminV1alphaEventMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaEventMapping(o[0]);
  checkGoogleAnalyticsAdminV1alphaEventMapping(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaConversionValues = 0;
api.GoogleAnalyticsAdminV1alphaConversionValues
    buildGoogleAnalyticsAdminV1alphaConversionValues() {
  final o = api.GoogleAnalyticsAdminV1alphaConversionValues();
  buildCounterGoogleAnalyticsAdminV1alphaConversionValues++;
  if (buildCounterGoogleAnalyticsAdminV1alphaConversionValues < 3) {
    o.coarseValue = 'foo';
    o.displayName = 'foo';
    o.eventMappings = buildUnnamed23();
    o.fineValue = 42;
    o.lockEnabled = true;
  }
  buildCounterGoogleAnalyticsAdminV1alphaConversionValues--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaConversionValues(
    api.GoogleAnalyticsAdminV1alphaConversionValues o) {
  buildCounterGoogleAnalyticsAdminV1alphaConversionValues++;
  if (buildCounterGoogleAnalyticsAdminV1alphaConversionValues < 3) {
    unittest.expect(
      o.coarseValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.eventMappings!);
    unittest.expect(
      o.fineValue!,
      unittest.equals(42),
    );
    unittest.expect(o.lockEnabled!, unittest.isTrue);
  }
  buildCounterGoogleAnalyticsAdminV1alphaConversionValues--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaCreateAccessBindingRequest = 0;
api.GoogleAnalyticsAdminV1alphaCreateAccessBindingRequest
    buildGoogleAnalyticsAdminV1alphaCreateAccessBindingRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaCreateAccessBindingRequest();
  buildCounterGoogleAnalyticsAdminV1alphaCreateAccessBindingRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCreateAccessBindingRequest < 3) {
    o.accessBinding = buildGoogleAnalyticsAdminV1alphaAccessBinding();
    o.parent = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaCreateAccessBindingRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaCreateAccessBindingRequest(
    api.GoogleAnalyticsAdminV1alphaCreateAccessBindingRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaCreateAccessBindingRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCreateAccessBindingRequest < 3) {
    checkGoogleAnalyticsAdminV1alphaAccessBinding(o.accessBinding!);
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaCreateAccessBindingRequest--;
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.int buildCounterGoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest = 0;
api.GoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest
    buildGoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest();
  buildCounterGoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest < 3) {
    o.rollupProperty = buildGoogleAnalyticsAdminV1alphaProperty();
    o.sourceProperties = buildUnnamed24();
  }
  buildCounterGoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest(
    api.GoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest < 3) {
    checkGoogleAnalyticsAdminV1alphaProperty(o.rollupProperty!);
    checkUnnamed24(o.sourceProperties!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest--;
}

core.List<api.GoogleAnalyticsAdminV1alphaRollupPropertySourceLink>
    buildUnnamed25() => [
          buildGoogleAnalyticsAdminV1alphaRollupPropertySourceLink(),
          buildGoogleAnalyticsAdminV1alphaRollupPropertySourceLink(),
        ];

void checkUnnamed25(
    core.List<api.GoogleAnalyticsAdminV1alphaRollupPropertySourceLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaRollupPropertySourceLink(o[0]);
  checkGoogleAnalyticsAdminV1alphaRollupPropertySourceLink(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse =
    0;
api.GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse
    buildGoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse();
  buildCounterGoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse < 3) {
    o.rollupProperty = buildGoogleAnalyticsAdminV1alphaProperty();
    o.rollupPropertySourceLinks = buildUnnamed25();
  }
  buildCounterGoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse(
    api.GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse < 3) {
    checkGoogleAnalyticsAdminV1alphaProperty(o.rollupProperty!);
    checkUnnamed25(o.rollupPropertySourceLinks!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaCustomDimension = 0;
api.GoogleAnalyticsAdminV1alphaCustomDimension
    buildGoogleAnalyticsAdminV1alphaCustomDimension() {
  final o = api.GoogleAnalyticsAdminV1alphaCustomDimension();
  buildCounterGoogleAnalyticsAdminV1alphaCustomDimension++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCustomDimension < 3) {
    o.description = 'foo';
    o.disallowAdsPersonalization = true;
    o.displayName = 'foo';
    o.name = 'foo';
    o.parameterName = 'foo';
    o.scope = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaCustomDimension--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaCustomDimension(
    api.GoogleAnalyticsAdminV1alphaCustomDimension o) {
  buildCounterGoogleAnalyticsAdminV1alphaCustomDimension++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCustomDimension < 3) {
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
  buildCounterGoogleAnalyticsAdminV1alphaCustomDimension--;
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

core.int buildCounterGoogleAnalyticsAdminV1alphaCustomMetric = 0;
api.GoogleAnalyticsAdminV1alphaCustomMetric
    buildGoogleAnalyticsAdminV1alphaCustomMetric() {
  final o = api.GoogleAnalyticsAdminV1alphaCustomMetric();
  buildCounterGoogleAnalyticsAdminV1alphaCustomMetric++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCustomMetric < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.measurementUnit = 'foo';
    o.name = 'foo';
    o.parameterName = 'foo';
    o.restrictedMetricType = buildUnnamed26();
    o.scope = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaCustomMetric--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaCustomMetric(
    api.GoogleAnalyticsAdminV1alphaCustomMetric o) {
  buildCounterGoogleAnalyticsAdminV1alphaCustomMetric++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCustomMetric < 3) {
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
    checkUnnamed26(o.restrictedMetricType!);
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaCustomMetric--;
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

core.int buildCounterGoogleAnalyticsAdminV1alphaDataRedactionSettings = 0;
api.GoogleAnalyticsAdminV1alphaDataRedactionSettings
    buildGoogleAnalyticsAdminV1alphaDataRedactionSettings() {
  final o = api.GoogleAnalyticsAdminV1alphaDataRedactionSettings();
  buildCounterGoogleAnalyticsAdminV1alphaDataRedactionSettings++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDataRedactionSettings < 3) {
    o.emailRedactionEnabled = true;
    o.name = 'foo';
    o.queryParameterKeys = buildUnnamed27();
    o.queryParameterRedactionEnabled = true;
  }
  buildCounterGoogleAnalyticsAdminV1alphaDataRedactionSettings--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaDataRedactionSettings(
    api.GoogleAnalyticsAdminV1alphaDataRedactionSettings o) {
  buildCounterGoogleAnalyticsAdminV1alphaDataRedactionSettings++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDataRedactionSettings < 3) {
    unittest.expect(o.emailRedactionEnabled!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.queryParameterKeys!);
    unittest.expect(o.queryParameterRedactionEnabled!, unittest.isTrue);
  }
  buildCounterGoogleAnalyticsAdminV1alphaDataRedactionSettings--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaDataRetentionSettings = 0;
api.GoogleAnalyticsAdminV1alphaDataRetentionSettings
    buildGoogleAnalyticsAdminV1alphaDataRetentionSettings() {
  final o = api.GoogleAnalyticsAdminV1alphaDataRetentionSettings();
  buildCounterGoogleAnalyticsAdminV1alphaDataRetentionSettings++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDataRetentionSettings < 3) {
    o.eventDataRetention = 'foo';
    o.name = 'foo';
    o.resetUserDataOnNewActivity = true;
    o.userDataRetention = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaDataRetentionSettings--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaDataRetentionSettings(
    api.GoogleAnalyticsAdminV1alphaDataRetentionSettings o) {
  buildCounterGoogleAnalyticsAdminV1alphaDataRetentionSettings++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDataRetentionSettings < 3) {
    unittest.expect(
      o.eventDataRetention!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.resetUserDataOnNewActivity!, unittest.isTrue);
    unittest.expect(
      o.userDataRetention!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaDataRetentionSettings--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaDataSharingSettings = 0;
api.GoogleAnalyticsAdminV1alphaDataSharingSettings
    buildGoogleAnalyticsAdminV1alphaDataSharingSettings() {
  final o = api.GoogleAnalyticsAdminV1alphaDataSharingSettings();
  buildCounterGoogleAnalyticsAdminV1alphaDataSharingSettings++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDataSharingSettings < 3) {
    o.name = 'foo';
    o.sharingWithGoogleAnySalesEnabled = true;
    o.sharingWithGoogleAssignedSalesEnabled = true;
    o.sharingWithGoogleProductsEnabled = true;
    o.sharingWithGoogleSupportEnabled = true;
    o.sharingWithOthersEnabled = true;
  }
  buildCounterGoogleAnalyticsAdminV1alphaDataSharingSettings--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaDataSharingSettings(
    api.GoogleAnalyticsAdminV1alphaDataSharingSettings o) {
  buildCounterGoogleAnalyticsAdminV1alphaDataSharingSettings++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDataSharingSettings < 3) {
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
  buildCounterGoogleAnalyticsAdminV1alphaDataSharingSettings--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaDataStream = 0;
api.GoogleAnalyticsAdminV1alphaDataStream
    buildGoogleAnalyticsAdminV1alphaDataStream() {
  final o = api.GoogleAnalyticsAdminV1alphaDataStream();
  buildCounterGoogleAnalyticsAdminV1alphaDataStream++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDataStream < 3) {
    o.androidAppStreamData =
        buildGoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.iosAppStreamData =
        buildGoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData();
    o.name = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
    o.webStreamData = buildGoogleAnalyticsAdminV1alphaDataStreamWebStreamData();
  }
  buildCounterGoogleAnalyticsAdminV1alphaDataStream--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaDataStream(
    api.GoogleAnalyticsAdminV1alphaDataStream o) {
  buildCounterGoogleAnalyticsAdminV1alphaDataStream++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDataStream < 3) {
    checkGoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData(
        o.androidAppStreamData!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData(
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
    checkGoogleAnalyticsAdminV1alphaDataStreamWebStreamData(o.webStreamData!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaDataStream--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData =
    0;
api.GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData
    buildGoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData() {
  final o = api.GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData();
  buildCounterGoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData <
      3) {
    o.firebaseAppId = 'foo';
    o.packageName = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData(
    api.GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData o) {
  buildCounterGoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData <
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
  buildCounterGoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData = 0;
api.GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData
    buildGoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData() {
  final o = api.GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData();
  buildCounterGoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData < 3) {
    o.bundleId = 'foo';
    o.firebaseAppId = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData(
    api.GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData o) {
  buildCounterGoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData < 3) {
    unittest.expect(
      o.bundleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firebaseAppId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaDataStreamWebStreamData = 0;
api.GoogleAnalyticsAdminV1alphaDataStreamWebStreamData
    buildGoogleAnalyticsAdminV1alphaDataStreamWebStreamData() {
  final o = api.GoogleAnalyticsAdminV1alphaDataStreamWebStreamData();
  buildCounterGoogleAnalyticsAdminV1alphaDataStreamWebStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDataStreamWebStreamData < 3) {
    o.defaultUri = 'foo';
    o.firebaseAppId = 'foo';
    o.measurementId = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaDataStreamWebStreamData--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaDataStreamWebStreamData(
    api.GoogleAnalyticsAdminV1alphaDataStreamWebStreamData o) {
  buildCounterGoogleAnalyticsAdminV1alphaDataStreamWebStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDataStreamWebStreamData < 3) {
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
  buildCounterGoogleAnalyticsAdminV1alphaDataStreamWebStreamData--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest = 0;
api.GoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest
    buildGoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest();
  buildCounterGoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest < 3) {
    o.name = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest(
    api.GoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink =
    0;
api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
    buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink() {
  final o = api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink();
  buildCounterGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink <
      3) {
    o.adsPersonalizationEnabled = true;
    o.advertiserDisplayName = 'foo';
    o.advertiserId = 'foo';
    o.campaignDataSharingEnabled = true;
    o.costDataSharingEnabled = true;
    o.name = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink(
    api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink o) {
  buildCounterGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink <
      3) {
    unittest.expect(o.adsPersonalizationEnabled!, unittest.isTrue);
    unittest.expect(
      o.advertiserDisplayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.campaignDataSharingEnabled!, unittest.isTrue);
    unittest.expect(o.costDataSharingEnabled!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal =
    0;
api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
    buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal() {
  final o =
      api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal();
  buildCounterGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal <
      3) {
    o.adsPersonalizationEnabled = true;
    o.advertiserDisplayName = 'foo';
    o.advertiserId = 'foo';
    o.campaignDataSharingEnabled = true;
    o.costDataSharingEnabled = true;
    o.linkProposalStatusDetails =
        buildGoogleAnalyticsAdminV1alphaLinkProposalStatusDetails();
    o.name = 'foo';
    o.validationEmail = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal(
    api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal o) {
  buildCounterGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal <
      3) {
    unittest.expect(o.adsPersonalizationEnabled!, unittest.isTrue);
    unittest.expect(
      o.advertiserDisplayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.campaignDataSharingEnabled!, unittest.isTrue);
    unittest.expect(o.costDataSharingEnabled!, unittest.isTrue);
    checkGoogleAnalyticsAdminV1alphaLinkProposalStatusDetails(
        o.linkProposalStatusDetails!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validationEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings = 0;
api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings
    buildGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings() {
  final o = api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings();
  buildCounterGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings++;
  if (buildCounterGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings < 3) {
    o.fileDownloadsEnabled = true;
    o.formInteractionsEnabled = true;
    o.name = 'foo';
    o.outboundClicksEnabled = true;
    o.pageChangesEnabled = true;
    o.scrollsEnabled = true;
    o.searchQueryParameter = 'foo';
    o.siteSearchEnabled = true;
    o.streamEnabled = true;
    o.uriQueryParameter = 'foo';
    o.videoEngagementEnabled = true;
  }
  buildCounterGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings(
    api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings o) {
  buildCounterGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings++;
  if (buildCounterGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings < 3) {
    unittest.expect(o.fileDownloadsEnabled!, unittest.isTrue);
    unittest.expect(o.formInteractionsEnabled!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.outboundClicksEnabled!, unittest.isTrue);
    unittest.expect(o.pageChangesEnabled!, unittest.isTrue);
    unittest.expect(o.scrollsEnabled!, unittest.isTrue);
    unittest.expect(
      o.searchQueryParameter!,
      unittest.equals('foo'),
    );
    unittest.expect(o.siteSearchEnabled!, unittest.isTrue);
    unittest.expect(o.streamEnabled!, unittest.isTrue);
    unittest.expect(
      o.uriQueryParameter!,
      unittest.equals('foo'),
    );
    unittest.expect(o.videoEngagementEnabled!, unittest.isTrue);
  }
  buildCounterGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings--;
}

core.List<api.GoogleAnalyticsAdminV1alphaMatchingCondition> buildUnnamed28() =>
    [
      buildGoogleAnalyticsAdminV1alphaMatchingCondition(),
      buildGoogleAnalyticsAdminV1alphaMatchingCondition(),
    ];

void checkUnnamed28(
    core.List<api.GoogleAnalyticsAdminV1alphaMatchingCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaMatchingCondition(o[0]);
  checkGoogleAnalyticsAdminV1alphaMatchingCondition(o[1]);
}

core.List<api.GoogleAnalyticsAdminV1alphaParameterMutation> buildUnnamed29() =>
    [
      buildGoogleAnalyticsAdminV1alphaParameterMutation(),
      buildGoogleAnalyticsAdminV1alphaParameterMutation(),
    ];

void checkUnnamed29(
    core.List<api.GoogleAnalyticsAdminV1alphaParameterMutation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaParameterMutation(o[0]);
  checkGoogleAnalyticsAdminV1alphaParameterMutation(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaEventCreateRule = 0;
api.GoogleAnalyticsAdminV1alphaEventCreateRule
    buildGoogleAnalyticsAdminV1alphaEventCreateRule() {
  final o = api.GoogleAnalyticsAdminV1alphaEventCreateRule();
  buildCounterGoogleAnalyticsAdminV1alphaEventCreateRule++;
  if (buildCounterGoogleAnalyticsAdminV1alphaEventCreateRule < 3) {
    o.destinationEvent = 'foo';
    o.eventConditions = buildUnnamed28();
    o.name = 'foo';
    o.parameterMutations = buildUnnamed29();
    o.sourceCopyParameters = true;
  }
  buildCounterGoogleAnalyticsAdminV1alphaEventCreateRule--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaEventCreateRule(
    api.GoogleAnalyticsAdminV1alphaEventCreateRule o) {
  buildCounterGoogleAnalyticsAdminV1alphaEventCreateRule++;
  if (buildCounterGoogleAnalyticsAdminV1alphaEventCreateRule < 3) {
    unittest.expect(
      o.destinationEvent!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.eventConditions!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.parameterMutations!);
    unittest.expect(o.sourceCopyParameters!, unittest.isTrue);
  }
  buildCounterGoogleAnalyticsAdminV1alphaEventCreateRule--;
}

core.List<api.GoogleAnalyticsAdminV1alphaMatchingCondition> buildUnnamed30() =>
    [
      buildGoogleAnalyticsAdminV1alphaMatchingCondition(),
      buildGoogleAnalyticsAdminV1alphaMatchingCondition(),
    ];

void checkUnnamed30(
    core.List<api.GoogleAnalyticsAdminV1alphaMatchingCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaMatchingCondition(o[0]);
  checkGoogleAnalyticsAdminV1alphaMatchingCondition(o[1]);
}

core.List<api.GoogleAnalyticsAdminV1alphaParameterMutation> buildUnnamed31() =>
    [
      buildGoogleAnalyticsAdminV1alphaParameterMutation(),
      buildGoogleAnalyticsAdminV1alphaParameterMutation(),
    ];

void checkUnnamed31(
    core.List<api.GoogleAnalyticsAdminV1alphaParameterMutation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaParameterMutation(o[0]);
  checkGoogleAnalyticsAdminV1alphaParameterMutation(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaEventEditRule = 0;
api.GoogleAnalyticsAdminV1alphaEventEditRule
    buildGoogleAnalyticsAdminV1alphaEventEditRule() {
  final o = api.GoogleAnalyticsAdminV1alphaEventEditRule();
  buildCounterGoogleAnalyticsAdminV1alphaEventEditRule++;
  if (buildCounterGoogleAnalyticsAdminV1alphaEventEditRule < 3) {
    o.displayName = 'foo';
    o.eventConditions = buildUnnamed30();
    o.name = 'foo';
    o.parameterMutations = buildUnnamed31();
    o.processingOrder = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaEventEditRule--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaEventEditRule(
    api.GoogleAnalyticsAdminV1alphaEventEditRule o) {
  buildCounterGoogleAnalyticsAdminV1alphaEventEditRule++;
  if (buildCounterGoogleAnalyticsAdminV1alphaEventEditRule < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.eventConditions!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.parameterMutations!);
    unittest.expect(
      o.processingOrder!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaEventEditRule--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaEventMapping = 0;
api.GoogleAnalyticsAdminV1alphaEventMapping
    buildGoogleAnalyticsAdminV1alphaEventMapping() {
  final o = api.GoogleAnalyticsAdminV1alphaEventMapping();
  buildCounterGoogleAnalyticsAdminV1alphaEventMapping++;
  if (buildCounterGoogleAnalyticsAdminV1alphaEventMapping < 3) {
    o.eventName = 'foo';
    o.maxEventCount = 'foo';
    o.maxEventValue = 42.0;
    o.minEventCount = 'foo';
    o.minEventValue = 42.0;
  }
  buildCounterGoogleAnalyticsAdminV1alphaEventMapping--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaEventMapping(
    api.GoogleAnalyticsAdminV1alphaEventMapping o) {
  buildCounterGoogleAnalyticsAdminV1alphaEventMapping++;
  if (buildCounterGoogleAnalyticsAdminV1alphaEventMapping < 3) {
    unittest.expect(
      o.eventName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxEventCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxEventValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minEventCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minEventValue!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaEventMapping--;
}

core.List<core.String> buildUnnamed32() => [
      'foo',
      'foo',
    ];

void checkUnnamed32(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed33() => [
      'foo',
      'foo',
    ];

void checkUnnamed33(core.List<core.String> o) {
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

core.int buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSet = 0;
api.GoogleAnalyticsAdminV1alphaExpandedDataSet
    buildGoogleAnalyticsAdminV1alphaExpandedDataSet() {
  final o = api.GoogleAnalyticsAdminV1alphaExpandedDataSet();
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSet++;
  if (buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSet < 3) {
    o.dataCollectionStartTime = 'foo';
    o.description = 'foo';
    o.dimensionFilterExpression =
        buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression();
    o.dimensionNames = buildUnnamed32();
    o.displayName = 'foo';
    o.metricNames = buildUnnamed33();
    o.name = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSet--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaExpandedDataSet(
    api.GoogleAnalyticsAdminV1alphaExpandedDataSet o) {
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSet++;
  if (buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSet < 3) {
    unittest.expect(
      o.dataCollectionStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression(
        o.dimensionFilterExpression!);
    checkUnnamed32(o.dimensionNames!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.metricNames!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSet--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilter = 0;
api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilter
    buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilter();
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilter < 3) {
    o.fieldName = 'foo';
    o.inListFilter =
        buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter();
    o.stringFilter =
        buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter();
  }
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilter(
    api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilter < 3) {
    unittest.expect(
      o.fieldName!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter(
        o.inListFilter!);
    checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter(
        o.stringFilter!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilter--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression = 0;
api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression
    buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression() {
  final o = api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression();
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression++;
  if (buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression <
      3) {
    o.andGroup =
        buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList();
    o.filter = buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilter();
    o.notExpression =
        buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression();
  }
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression(
    api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression o) {
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression++;
  if (buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression <
      3) {
    checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList(
        o.andGroup!);
    checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilter(o.filter!);
    checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression(
        o.notExpression!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression--;
}

core.List<api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression>
    buildUnnamed34() => [
          buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression(),
          buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression(),
        ];

void checkUnnamed34(
    core.List<api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression(o[0]);
  checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList =
    0;
api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList
    buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList() {
  final o =
      api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList();
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList++;
  if (buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList <
      3) {
    o.filterExpressions = buildUnnamed34();
  }
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList(
    api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList o) {
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList++;
  if (buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList <
      3) {
    checkUnnamed34(o.filterExpressions!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList--;
}

core.List<core.String> buildUnnamed35() => [
      'foo',
      'foo',
    ];

void checkUnnamed35(core.List<core.String> o) {
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
    buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter =
    0;
api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter
    buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter();
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter <
      3) {
    o.caseSensitive = true;
    o.values = buildUnnamed35();
  }
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter(
    api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter <
      3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    checkUnnamed35(o.values!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter =
    0;
api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter
    buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter();
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter <
      3) {
    o.caseSensitive = true;
    o.matchType = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter(
    api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter <
      3) {
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
  buildCounterGoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaFirebaseLink = 0;
api.GoogleAnalyticsAdminV1alphaFirebaseLink
    buildGoogleAnalyticsAdminV1alphaFirebaseLink() {
  final o = api.GoogleAnalyticsAdminV1alphaFirebaseLink();
  buildCounterGoogleAnalyticsAdminV1alphaFirebaseLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaFirebaseLink < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.project = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaFirebaseLink--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaFirebaseLink(
    api.GoogleAnalyticsAdminV1alphaFirebaseLink o) {
  buildCounterGoogleAnalyticsAdminV1alphaFirebaseLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaFirebaseLink < 3) {
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
  buildCounterGoogleAnalyticsAdminV1alphaFirebaseLink--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaGlobalSiteTag = 0;
api.GoogleAnalyticsAdminV1alphaGlobalSiteTag
    buildGoogleAnalyticsAdminV1alphaGlobalSiteTag() {
  final o = api.GoogleAnalyticsAdminV1alphaGlobalSiteTag();
  buildCounterGoogleAnalyticsAdminV1alphaGlobalSiteTag++;
  if (buildCounterGoogleAnalyticsAdminV1alphaGlobalSiteTag < 3) {
    o.name = 'foo';
    o.snippet = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaGlobalSiteTag--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaGlobalSiteTag(
    api.GoogleAnalyticsAdminV1alphaGlobalSiteTag o) {
  buildCounterGoogleAnalyticsAdminV1alphaGlobalSiteTag++;
  if (buildCounterGoogleAnalyticsAdminV1alphaGlobalSiteTag < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snippet!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaGlobalSiteTag--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaGoogleAdsLink = 0;
api.GoogleAnalyticsAdminV1alphaGoogleAdsLink
    buildGoogleAnalyticsAdminV1alphaGoogleAdsLink() {
  final o = api.GoogleAnalyticsAdminV1alphaGoogleAdsLink();
  buildCounterGoogleAnalyticsAdminV1alphaGoogleAdsLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaGoogleAdsLink < 3) {
    o.adsPersonalizationEnabled = true;
    o.canManageClients = true;
    o.createTime = 'foo';
    o.creatorEmailAddress = 'foo';
    o.customerId = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaGoogleAdsLink--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(
    api.GoogleAnalyticsAdminV1alphaGoogleAdsLink o) {
  buildCounterGoogleAnalyticsAdminV1alphaGoogleAdsLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaGoogleAdsLink < 3) {
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
  buildCounterGoogleAnalyticsAdminV1alphaGoogleAdsLink--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaGoogleSignalsSettings = 0;
api.GoogleAnalyticsAdminV1alphaGoogleSignalsSettings
    buildGoogleAnalyticsAdminV1alphaGoogleSignalsSettings() {
  final o = api.GoogleAnalyticsAdminV1alphaGoogleSignalsSettings();
  buildCounterGoogleAnalyticsAdminV1alphaGoogleSignalsSettings++;
  if (buildCounterGoogleAnalyticsAdminV1alphaGoogleSignalsSettings < 3) {
    o.consent = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaGoogleSignalsSettings--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaGoogleSignalsSettings(
    api.GoogleAnalyticsAdminV1alphaGoogleSignalsSettings o) {
  buildCounterGoogleAnalyticsAdminV1alphaGoogleSignalsSettings++;
  if (buildCounterGoogleAnalyticsAdminV1alphaGoogleSignalsSettings < 3) {
    unittest.expect(
      o.consent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaGoogleSignalsSettings--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaGroupingRule = 0;
api.GoogleAnalyticsAdminV1alphaGroupingRule
    buildGoogleAnalyticsAdminV1alphaGroupingRule() {
  final o = api.GoogleAnalyticsAdminV1alphaGroupingRule();
  buildCounterGoogleAnalyticsAdminV1alphaGroupingRule++;
  if (buildCounterGoogleAnalyticsAdminV1alphaGroupingRule < 3) {
    o.displayName = 'foo';
    o.expression =
        buildGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression();
  }
  buildCounterGoogleAnalyticsAdminV1alphaGroupingRule--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaGroupingRule(
    api.GoogleAnalyticsAdminV1alphaGroupingRule o) {
  buildCounterGoogleAnalyticsAdminV1alphaGroupingRule++;
  if (buildCounterGoogleAnalyticsAdminV1alphaGroupingRule < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression(o.expression!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaGroupingRule--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaKeyEvent = 0;
api.GoogleAnalyticsAdminV1alphaKeyEvent
    buildGoogleAnalyticsAdminV1alphaKeyEvent() {
  final o = api.GoogleAnalyticsAdminV1alphaKeyEvent();
  buildCounterGoogleAnalyticsAdminV1alphaKeyEvent++;
  if (buildCounterGoogleAnalyticsAdminV1alphaKeyEvent < 3) {
    o.countingMethod = 'foo';
    o.createTime = 'foo';
    o.custom = true;
    o.defaultValue = buildGoogleAnalyticsAdminV1alphaKeyEventDefaultValue();
    o.deletable = true;
    o.eventName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaKeyEvent--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaKeyEvent(
    api.GoogleAnalyticsAdminV1alphaKeyEvent o) {
  buildCounterGoogleAnalyticsAdminV1alphaKeyEvent++;
  if (buildCounterGoogleAnalyticsAdminV1alphaKeyEvent < 3) {
    unittest.expect(
      o.countingMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.custom!, unittest.isTrue);
    checkGoogleAnalyticsAdminV1alphaKeyEventDefaultValue(o.defaultValue!);
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
  buildCounterGoogleAnalyticsAdminV1alphaKeyEvent--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaKeyEventDefaultValue = 0;
api.GoogleAnalyticsAdminV1alphaKeyEventDefaultValue
    buildGoogleAnalyticsAdminV1alphaKeyEventDefaultValue() {
  final o = api.GoogleAnalyticsAdminV1alphaKeyEventDefaultValue();
  buildCounterGoogleAnalyticsAdminV1alphaKeyEventDefaultValue++;
  if (buildCounterGoogleAnalyticsAdminV1alphaKeyEventDefaultValue < 3) {
    o.currencyCode = 'foo';
    o.numericValue = 42.0;
  }
  buildCounterGoogleAnalyticsAdminV1alphaKeyEventDefaultValue--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaKeyEventDefaultValue(
    api.GoogleAnalyticsAdminV1alphaKeyEventDefaultValue o) {
  buildCounterGoogleAnalyticsAdminV1alphaKeyEventDefaultValue++;
  if (buildCounterGoogleAnalyticsAdminV1alphaKeyEventDefaultValue < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numericValue!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaKeyEventDefaultValue--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaLinkProposalStatusDetails = 0;
api.GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails
    buildGoogleAnalyticsAdminV1alphaLinkProposalStatusDetails() {
  final o = api.GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails();
  buildCounterGoogleAnalyticsAdminV1alphaLinkProposalStatusDetails++;
  if (buildCounterGoogleAnalyticsAdminV1alphaLinkProposalStatusDetails < 3) {
    o.linkProposalInitiatingProduct = 'foo';
    o.linkProposalState = 'foo';
    o.requestorEmail = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaLinkProposalStatusDetails--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaLinkProposalStatusDetails(
    api.GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails o) {
  buildCounterGoogleAnalyticsAdminV1alphaLinkProposalStatusDetails++;
  if (buildCounterGoogleAnalyticsAdminV1alphaLinkProposalStatusDetails < 3) {
    unittest.expect(
      o.linkProposalInitiatingProduct!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkProposalState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestorEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaLinkProposalStatusDetails--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAccessBinding> buildUnnamed36() => [
      buildGoogleAnalyticsAdminV1alphaAccessBinding(),
      buildGoogleAnalyticsAdminV1alphaAccessBinding(),
    ];

void checkUnnamed36(core.List<api.GoogleAnalyticsAdminV1alphaAccessBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccessBinding(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccessBinding(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListAccessBindingsResponse = 0;
api.GoogleAnalyticsAdminV1alphaListAccessBindingsResponse
    buildGoogleAnalyticsAdminV1alphaListAccessBindingsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListAccessBindingsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListAccessBindingsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAccessBindingsResponse < 3) {
    o.accessBindings = buildUnnamed36();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAccessBindingsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListAccessBindingsResponse(
    api.GoogleAnalyticsAdminV1alphaListAccessBindingsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListAccessBindingsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAccessBindingsResponse < 3) {
    checkUnnamed36(o.accessBindings!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAccessBindingsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAccountSummary> buildUnnamed37() => [
      buildGoogleAnalyticsAdminV1alphaAccountSummary(),
      buildGoogleAnalyticsAdminV1alphaAccountSummary(),
    ];

void checkUnnamed37(
    core.List<api.GoogleAnalyticsAdminV1alphaAccountSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccountSummary(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccountSummary(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListAccountSummariesResponse
    buildGoogleAnalyticsAdminV1alphaListAccountSummariesResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListAccountSummariesResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse < 3) {
    o.accountSummaries = buildUnnamed37();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListAccountSummariesResponse(
    api.GoogleAnalyticsAdminV1alphaListAccountSummariesResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse < 3) {
    checkUnnamed37(o.accountSummaries!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAccount> buildUnnamed38() => [
      buildGoogleAnalyticsAdminV1alphaAccount(),
      buildGoogleAnalyticsAdminV1alphaAccount(),
    ];

void checkUnnamed38(core.List<api.GoogleAnalyticsAdminV1alphaAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccount(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccount(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse = 0;
api.GoogleAnalyticsAdminV1alphaListAccountsResponse
    buildGoogleAnalyticsAdminV1alphaListAccountsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListAccountsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse < 3) {
    o.accounts = buildUnnamed38();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListAccountsResponse(
    api.GoogleAnalyticsAdminV1alphaListAccountsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse < 3) {
    checkUnnamed38(o.accounts!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAdSenseLink> buildUnnamed39() => [
      buildGoogleAnalyticsAdminV1alphaAdSenseLink(),
      buildGoogleAnalyticsAdminV1alphaAdSenseLink(),
    ];

void checkUnnamed39(core.List<api.GoogleAnalyticsAdminV1alphaAdSenseLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAdSenseLink(o[0]);
  checkGoogleAnalyticsAdminV1alphaAdSenseLink(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListAdSenseLinksResponse = 0;
api.GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse
    buildGoogleAnalyticsAdminV1alphaListAdSenseLinksResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListAdSenseLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAdSenseLinksResponse < 3) {
    o.adsenseLinks = buildUnnamed39();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAdSenseLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListAdSenseLinksResponse(
    api.GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListAdSenseLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAdSenseLinksResponse < 3) {
    checkUnnamed39(o.adsenseLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAdSenseLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAudience> buildUnnamed40() => [
      buildGoogleAnalyticsAdminV1alphaAudience(),
      buildGoogleAnalyticsAdminV1alphaAudience(),
    ];

void checkUnnamed40(core.List<api.GoogleAnalyticsAdminV1alphaAudience> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAudience(o[0]);
  checkGoogleAnalyticsAdminV1alphaAudience(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListAudiencesResponse = 0;
api.GoogleAnalyticsAdminV1alphaListAudiencesResponse
    buildGoogleAnalyticsAdminV1alphaListAudiencesResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListAudiencesResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListAudiencesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAudiencesResponse < 3) {
    o.audiences = buildUnnamed40();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAudiencesResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListAudiencesResponse(
    api.GoogleAnalyticsAdminV1alphaListAudiencesResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListAudiencesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAudiencesResponse < 3) {
    checkUnnamed40(o.audiences!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAudiencesResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaBigQueryLink> buildUnnamed41() => [
      buildGoogleAnalyticsAdminV1alphaBigQueryLink(),
      buildGoogleAnalyticsAdminV1alphaBigQueryLink(),
    ];

void checkUnnamed41(core.List<api.GoogleAnalyticsAdminV1alphaBigQueryLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaBigQueryLink(o[0]);
  checkGoogleAnalyticsAdminV1alphaBigQueryLink(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListBigQueryLinksResponse = 0;
api.GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse
    buildGoogleAnalyticsAdminV1alphaListBigQueryLinksResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListBigQueryLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListBigQueryLinksResponse < 3) {
    o.bigqueryLinks = buildUnnamed41();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListBigQueryLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListBigQueryLinksResponse(
    api.GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListBigQueryLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListBigQueryLinksResponse < 3) {
    checkUnnamed41(o.bigqueryLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListBigQueryLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaCalculatedMetric> buildUnnamed42() => [
      buildGoogleAnalyticsAdminV1alphaCalculatedMetric(),
      buildGoogleAnalyticsAdminV1alphaCalculatedMetric(),
    ];

void checkUnnamed42(
    core.List<api.GoogleAnalyticsAdminV1alphaCalculatedMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaCalculatedMetric(o[0]);
  checkGoogleAnalyticsAdminV1alphaCalculatedMetric(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse
    buildGoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse <
      3) {
    o.calculatedMetrics = buildUnnamed42();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse(
    api.GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse <
      3) {
    checkUnnamed42(o.calculatedMetrics!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaChannelGroup> buildUnnamed43() => [
      buildGoogleAnalyticsAdminV1alphaChannelGroup(),
      buildGoogleAnalyticsAdminV1alphaChannelGroup(),
    ];

void checkUnnamed43(core.List<api.GoogleAnalyticsAdminV1alphaChannelGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaChannelGroup(o[0]);
  checkGoogleAnalyticsAdminV1alphaChannelGroup(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListChannelGroupsResponse = 0;
api.GoogleAnalyticsAdminV1alphaListChannelGroupsResponse
    buildGoogleAnalyticsAdminV1alphaListChannelGroupsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListChannelGroupsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListChannelGroupsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListChannelGroupsResponse < 3) {
    o.channelGroups = buildUnnamed43();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListChannelGroupsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListChannelGroupsResponse(
    api.GoogleAnalyticsAdminV1alphaListChannelGroupsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListChannelGroupsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListChannelGroupsResponse < 3) {
    checkUnnamed43(o.channelGroups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListChannelGroupsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaConversionEvent> buildUnnamed44() => [
      buildGoogleAnalyticsAdminV1alphaConversionEvent(),
      buildGoogleAnalyticsAdminV1alphaConversionEvent(),
    ];

void checkUnnamed44(
    core.List<api.GoogleAnalyticsAdminV1alphaConversionEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaConversionEvent(o[0]);
  checkGoogleAnalyticsAdminV1alphaConversionEvent(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListConversionEventsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListConversionEventsResponse
    buildGoogleAnalyticsAdminV1alphaListConversionEventsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListConversionEventsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListConversionEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListConversionEventsResponse < 3) {
    o.conversionEvents = buildUnnamed44();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListConversionEventsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListConversionEventsResponse(
    api.GoogleAnalyticsAdminV1alphaListConversionEventsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListConversionEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListConversionEventsResponse < 3) {
    checkUnnamed44(o.conversionEvents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListConversionEventsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaCustomDimension> buildUnnamed45() => [
      buildGoogleAnalyticsAdminV1alphaCustomDimension(),
      buildGoogleAnalyticsAdminV1alphaCustomDimension(),
    ];

void checkUnnamed45(
    core.List<api.GoogleAnalyticsAdminV1alphaCustomDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaCustomDimension(o[0]);
  checkGoogleAnalyticsAdminV1alphaCustomDimension(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse
    buildGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse < 3) {
    o.customDimensions = buildUnnamed45();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse(
    api.GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse < 3) {
    checkUnnamed45(o.customDimensions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaCustomMetric> buildUnnamed46() => [
      buildGoogleAnalyticsAdminV1alphaCustomMetric(),
      buildGoogleAnalyticsAdminV1alphaCustomMetric(),
    ];

void checkUnnamed46(core.List<api.GoogleAnalyticsAdminV1alphaCustomMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaCustomMetric(o[0]);
  checkGoogleAnalyticsAdminV1alphaCustomMetric(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListCustomMetricsResponse = 0;
api.GoogleAnalyticsAdminV1alphaListCustomMetricsResponse
    buildGoogleAnalyticsAdminV1alphaListCustomMetricsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListCustomMetricsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListCustomMetricsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListCustomMetricsResponse < 3) {
    o.customMetrics = buildUnnamed46();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListCustomMetricsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListCustomMetricsResponse(
    api.GoogleAnalyticsAdminV1alphaListCustomMetricsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListCustomMetricsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListCustomMetricsResponse < 3) {
    checkUnnamed46(o.customMetrics!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListCustomMetricsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaDataStream> buildUnnamed47() => [
      buildGoogleAnalyticsAdminV1alphaDataStream(),
      buildGoogleAnalyticsAdminV1alphaDataStream(),
    ];

void checkUnnamed47(core.List<api.GoogleAnalyticsAdminV1alphaDataStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaDataStream(o[0]);
  checkGoogleAnalyticsAdminV1alphaDataStream(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListDataStreamsResponse = 0;
api.GoogleAnalyticsAdminV1alphaListDataStreamsResponse
    buildGoogleAnalyticsAdminV1alphaListDataStreamsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListDataStreamsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListDataStreamsResponse < 3) {
    o.dataStreams = buildUnnamed47();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListDataStreamsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListDataStreamsResponse(
    api.GoogleAnalyticsAdminV1alphaListDataStreamsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListDataStreamsResponse < 3) {
    checkUnnamed47(o.dataStreams!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListDataStreamsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal>
    buildUnnamed48() => [
          buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal(),
          buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal(),
        ];

void checkUnnamed48(
    core.List<
            api
            .GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal(o[0]);
  checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse
    buildGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse() {
  final o = api
      .GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse <
      3) {
    o.displayVideo360AdvertiserLinkProposals = buildUnnamed48();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse(
    api.GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse
        o) {
  buildCounterGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse <
      3) {
    checkUnnamed48(o.displayVideo360AdvertiserLinkProposals!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink>
    buildUnnamed49() => [
          buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink(),
          buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink(),
        ];

void checkUnnamed49(
    core.List<api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink(o[0]);
  checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse
    buildGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse() {
  final o = api
      .GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse <
      3) {
    o.displayVideo360AdvertiserLinks = buildUnnamed49();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse(
    api.GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse
        o) {
  buildCounterGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse <
      3) {
    checkUnnamed49(o.displayVideo360AdvertiserLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaEventCreateRule> buildUnnamed50() => [
      buildGoogleAnalyticsAdminV1alphaEventCreateRule(),
      buildGoogleAnalyticsAdminV1alphaEventCreateRule(),
    ];

void checkUnnamed50(
    core.List<api.GoogleAnalyticsAdminV1alphaEventCreateRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaEventCreateRule(o[0]);
  checkGoogleAnalyticsAdminV1alphaEventCreateRule(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListEventCreateRulesResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse
    buildGoogleAnalyticsAdminV1alphaListEventCreateRulesResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListEventCreateRulesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListEventCreateRulesResponse < 3) {
    o.eventCreateRules = buildUnnamed50();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListEventCreateRulesResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListEventCreateRulesResponse(
    api.GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListEventCreateRulesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListEventCreateRulesResponse < 3) {
    checkUnnamed50(o.eventCreateRules!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListEventCreateRulesResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaEventEditRule> buildUnnamed51() => [
      buildGoogleAnalyticsAdminV1alphaEventEditRule(),
      buildGoogleAnalyticsAdminV1alphaEventEditRule(),
    ];

void checkUnnamed51(core.List<api.GoogleAnalyticsAdminV1alphaEventEditRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaEventEditRule(o[0]);
  checkGoogleAnalyticsAdminV1alphaEventEditRule(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListEventEditRulesResponse = 0;
api.GoogleAnalyticsAdminV1alphaListEventEditRulesResponse
    buildGoogleAnalyticsAdminV1alphaListEventEditRulesResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListEventEditRulesResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListEventEditRulesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListEventEditRulesResponse < 3) {
    o.eventEditRules = buildUnnamed51();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListEventEditRulesResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListEventEditRulesResponse(
    api.GoogleAnalyticsAdminV1alphaListEventEditRulesResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListEventEditRulesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListEventEditRulesResponse < 3) {
    checkUnnamed51(o.eventEditRules!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListEventEditRulesResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaExpandedDataSet> buildUnnamed52() => [
      buildGoogleAnalyticsAdminV1alphaExpandedDataSet(),
      buildGoogleAnalyticsAdminV1alphaExpandedDataSet(),
    ];

void checkUnnamed52(
    core.List<api.GoogleAnalyticsAdminV1alphaExpandedDataSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaExpandedDataSet(o[0]);
  checkGoogleAnalyticsAdminV1alphaExpandedDataSet(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse
    buildGoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse < 3) {
    o.expandedDataSets = buildUnnamed52();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse(
    api.GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse < 3) {
    checkUnnamed52(o.expandedDataSets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaFirebaseLink> buildUnnamed53() => [
      buildGoogleAnalyticsAdminV1alphaFirebaseLink(),
      buildGoogleAnalyticsAdminV1alphaFirebaseLink(),
    ];

void checkUnnamed53(core.List<api.GoogleAnalyticsAdminV1alphaFirebaseLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaFirebaseLink(o[0]);
  checkGoogleAnalyticsAdminV1alphaFirebaseLink(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse = 0;
api.GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse
    buildGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse < 3) {
    o.firebaseLinks = buildUnnamed53();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse(
    api.GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse < 3) {
    checkUnnamed53(o.firebaseLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaGoogleAdsLink> buildUnnamed54() => [
      buildGoogleAnalyticsAdminV1alphaGoogleAdsLink(),
      buildGoogleAnalyticsAdminV1alphaGoogleAdsLink(),
    ];

void checkUnnamed54(core.List<api.GoogleAnalyticsAdminV1alphaGoogleAdsLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(o[0]);
  checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse = 0;
api.GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse
    buildGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse < 3) {
    o.googleAdsLinks = buildUnnamed54();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse(
    api.GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse < 3) {
    checkUnnamed54(o.googleAdsLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaKeyEvent> buildUnnamed55() => [
      buildGoogleAnalyticsAdminV1alphaKeyEvent(),
      buildGoogleAnalyticsAdminV1alphaKeyEvent(),
    ];

void checkUnnamed55(core.List<api.GoogleAnalyticsAdminV1alphaKeyEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaKeyEvent(o[0]);
  checkGoogleAnalyticsAdminV1alphaKeyEvent(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListKeyEventsResponse = 0;
api.GoogleAnalyticsAdminV1alphaListKeyEventsResponse
    buildGoogleAnalyticsAdminV1alphaListKeyEventsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListKeyEventsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListKeyEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListKeyEventsResponse < 3) {
    o.keyEvents = buildUnnamed55();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListKeyEventsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListKeyEventsResponse(
    api.GoogleAnalyticsAdminV1alphaListKeyEventsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListKeyEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListKeyEventsResponse < 3) {
    checkUnnamed55(o.keyEvents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListKeyEventsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret>
    buildUnnamed56() => [
          buildGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret(),
          buildGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret(),
        ];

void checkUnnamed56(
    core.List<api.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret(o[0]);
  checkGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse
    buildGoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse() {
  final o =
      api.GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse <
      3) {
    o.measurementProtocolSecrets = buildUnnamed56();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse(
    api.GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse <
      3) {
    checkUnnamed56(o.measurementProtocolSecrets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaProperty> buildUnnamed57() => [
      buildGoogleAnalyticsAdminV1alphaProperty(),
      buildGoogleAnalyticsAdminV1alphaProperty(),
    ];

void checkUnnamed57(core.List<api.GoogleAnalyticsAdminV1alphaProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaProperty(o[0]);
  checkGoogleAnalyticsAdminV1alphaProperty(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListPropertiesResponse = 0;
api.GoogleAnalyticsAdminV1alphaListPropertiesResponse
    buildGoogleAnalyticsAdminV1alphaListPropertiesResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListPropertiesResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListPropertiesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListPropertiesResponse < 3) {
    o.nextPageToken = 'foo';
    o.properties = buildUnnamed57();
  }
  buildCounterGoogleAnalyticsAdminV1alphaListPropertiesResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListPropertiesResponse(
    api.GoogleAnalyticsAdminV1alphaListPropertiesResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListPropertiesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListPropertiesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed57(o.properties!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaListPropertiesResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaReportingDataAnnotation>
    buildUnnamed58() => [
          buildGoogleAnalyticsAdminV1alphaReportingDataAnnotation(),
          buildGoogleAnalyticsAdminV1alphaReportingDataAnnotation(),
        ];

void checkUnnamed58(
    core.List<api.GoogleAnalyticsAdminV1alphaReportingDataAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaReportingDataAnnotation(o[0]);
  checkGoogleAnalyticsAdminV1alphaReportingDataAnnotation(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse
    buildGoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse() {
  final o =
      api.GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.reportingDataAnnotations = buildUnnamed58();
  }
  buildCounterGoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse(
    api.GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed58(o.reportingDataAnnotations!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaRollupPropertySourceLink>
    buildUnnamed59() => [
          buildGoogleAnalyticsAdminV1alphaRollupPropertySourceLink(),
          buildGoogleAnalyticsAdminV1alphaRollupPropertySourceLink(),
        ];

void checkUnnamed59(
    core.List<api.GoogleAnalyticsAdminV1alphaRollupPropertySourceLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaRollupPropertySourceLink(o[0]);
  checkGoogleAnalyticsAdminV1alphaRollupPropertySourceLink(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse
    buildGoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse() {
  final o =
      api.GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rollupPropertySourceLinks = buildUnnamed59();
  }
  buildCounterGoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse(
    api.GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed59(o.rollupPropertySourceLinks!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema>
    buildUnnamed60() => [
          buildGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema(),
          buildGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema(),
        ];

void checkUnnamed60(
    core.List<api.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema(o[0]);
  checkGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse
    buildGoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse() {
  final o = api
      .GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse <
      3) {
    o.nextPageToken = 'foo';
    o.skadnetworkConversionValueSchemas = buildUnnamed60();
  }
  buildCounterGoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse(
    api.GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse
        o) {
  buildCounterGoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed60(o.skadnetworkConversionValueSchemas!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaSearchAds360Link> buildUnnamed61() => [
      buildGoogleAnalyticsAdminV1alphaSearchAds360Link(),
      buildGoogleAnalyticsAdminV1alphaSearchAds360Link(),
    ];

void checkUnnamed61(
    core.List<api.GoogleAnalyticsAdminV1alphaSearchAds360Link> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaSearchAds360Link(o[0]);
  checkGoogleAnalyticsAdminV1alphaSearchAds360Link(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse
    buildGoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse <
      3) {
    o.nextPageToken = 'foo';
    o.searchAds360Links = buildUnnamed61();
  }
  buildCounterGoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse(
    api.GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed61(o.searchAds360Links!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilter>
    buildUnnamed62() => [
          buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilter(),
          buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilter(),
        ];

void checkUnnamed62(
    core.List<api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilter(o[0]);
  checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilter(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse
    buildGoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse() {
  final o =
      api.GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse <
      3) {
    o.nextPageToken = 'foo';
    o.subpropertyEventFilters = buildUnnamed62();
  }
  buildCounterGoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse(
    api.GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed62(o.subpropertyEventFilters!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaSubpropertySyncConfig>
    buildUnnamed63() => [
          buildGoogleAnalyticsAdminV1alphaSubpropertySyncConfig(),
          buildGoogleAnalyticsAdminV1alphaSubpropertySyncConfig(),
        ];

void checkUnnamed63(
    core.List<api.GoogleAnalyticsAdminV1alphaSubpropertySyncConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaSubpropertySyncConfig(o[0]);
  checkGoogleAnalyticsAdminV1alphaSubpropertySyncConfig(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse
    buildGoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.subpropertySyncConfigs = buildUnnamed63();
  }
  buildCounterGoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse(
    api.GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed63(o.subpropertySyncConfigs!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaMatchingCondition = 0;
api.GoogleAnalyticsAdminV1alphaMatchingCondition
    buildGoogleAnalyticsAdminV1alphaMatchingCondition() {
  final o = api.GoogleAnalyticsAdminV1alphaMatchingCondition();
  buildCounterGoogleAnalyticsAdminV1alphaMatchingCondition++;
  if (buildCounterGoogleAnalyticsAdminV1alphaMatchingCondition < 3) {
    o.comparisonType = 'foo';
    o.field = 'foo';
    o.negated = true;
    o.value = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaMatchingCondition--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaMatchingCondition(
    api.GoogleAnalyticsAdminV1alphaMatchingCondition o) {
  buildCounterGoogleAnalyticsAdminV1alphaMatchingCondition++;
  if (buildCounterGoogleAnalyticsAdminV1alphaMatchingCondition < 3) {
    unittest.expect(
      o.comparisonType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    unittest.expect(o.negated!, unittest.isTrue);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaMatchingCondition--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret = 0;
api.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
    buildGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret() {
  final o = api.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret();
  buildCounterGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret++;
  if (buildCounterGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.secretValue = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret(
    api.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret o) {
  buildCounterGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret++;
  if (buildCounterGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret < 3) {
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
  buildCounterGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaNumericValue = 0;
api.GoogleAnalyticsAdminV1alphaNumericValue
    buildGoogleAnalyticsAdminV1alphaNumericValue() {
  final o = api.GoogleAnalyticsAdminV1alphaNumericValue();
  buildCounterGoogleAnalyticsAdminV1alphaNumericValue++;
  if (buildCounterGoogleAnalyticsAdminV1alphaNumericValue < 3) {
    o.doubleValue = 42.0;
    o.int64Value = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaNumericValue--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaNumericValue(
    api.GoogleAnalyticsAdminV1alphaNumericValue o) {
  buildCounterGoogleAnalyticsAdminV1alphaNumericValue++;
  if (buildCounterGoogleAnalyticsAdminV1alphaNumericValue < 3) {
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.int64Value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaNumericValue--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaParameterMutation = 0;
api.GoogleAnalyticsAdminV1alphaParameterMutation
    buildGoogleAnalyticsAdminV1alphaParameterMutation() {
  final o = api.GoogleAnalyticsAdminV1alphaParameterMutation();
  buildCounterGoogleAnalyticsAdminV1alphaParameterMutation++;
  if (buildCounterGoogleAnalyticsAdminV1alphaParameterMutation < 3) {
    o.parameter = 'foo';
    o.parameterValue = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaParameterMutation--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaParameterMutation(
    api.GoogleAnalyticsAdminV1alphaParameterMutation o) {
  buildCounterGoogleAnalyticsAdminV1alphaParameterMutation++;
  if (buildCounterGoogleAnalyticsAdminV1alphaParameterMutation < 3) {
    unittest.expect(
      o.parameter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parameterValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaParameterMutation--;
}

core.List<api.GoogleAnalyticsAdminV1alphaConversionValues> buildUnnamed64() => [
      buildGoogleAnalyticsAdminV1alphaConversionValues(),
      buildGoogleAnalyticsAdminV1alphaConversionValues(),
    ];

void checkUnnamed64(
    core.List<api.GoogleAnalyticsAdminV1alphaConversionValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaConversionValues(o[0]);
  checkGoogleAnalyticsAdminV1alphaConversionValues(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaPostbackWindow = 0;
api.GoogleAnalyticsAdminV1alphaPostbackWindow
    buildGoogleAnalyticsAdminV1alphaPostbackWindow() {
  final o = api.GoogleAnalyticsAdminV1alphaPostbackWindow();
  buildCounterGoogleAnalyticsAdminV1alphaPostbackWindow++;
  if (buildCounterGoogleAnalyticsAdminV1alphaPostbackWindow < 3) {
    o.conversionValues = buildUnnamed64();
    o.postbackWindowSettingsEnabled = true;
  }
  buildCounterGoogleAnalyticsAdminV1alphaPostbackWindow--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaPostbackWindow(
    api.GoogleAnalyticsAdminV1alphaPostbackWindow o) {
  buildCounterGoogleAnalyticsAdminV1alphaPostbackWindow++;
  if (buildCounterGoogleAnalyticsAdminV1alphaPostbackWindow < 3) {
    checkUnnamed64(o.conversionValues!);
    unittest.expect(o.postbackWindowSettingsEnabled!, unittest.isTrue);
  }
  buildCounterGoogleAnalyticsAdminV1alphaPostbackWindow--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaProperty = 0;
api.GoogleAnalyticsAdminV1alphaProperty
    buildGoogleAnalyticsAdminV1alphaProperty() {
  final o = api.GoogleAnalyticsAdminV1alphaProperty();
  buildCounterGoogleAnalyticsAdminV1alphaProperty++;
  if (buildCounterGoogleAnalyticsAdminV1alphaProperty < 3) {
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
  buildCounterGoogleAnalyticsAdminV1alphaProperty--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaProperty(
    api.GoogleAnalyticsAdminV1alphaProperty o) {
  buildCounterGoogleAnalyticsAdminV1alphaProperty++;
  if (buildCounterGoogleAnalyticsAdminV1alphaProperty < 3) {
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
  buildCounterGoogleAnalyticsAdminV1alphaProperty--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaPropertySummary = 0;
api.GoogleAnalyticsAdminV1alphaPropertySummary
    buildGoogleAnalyticsAdminV1alphaPropertySummary() {
  final o = api.GoogleAnalyticsAdminV1alphaPropertySummary();
  buildCounterGoogleAnalyticsAdminV1alphaPropertySummary++;
  if (buildCounterGoogleAnalyticsAdminV1alphaPropertySummary < 3) {
    o.displayName = 'foo';
    o.parent = 'foo';
    o.property = 'foo';
    o.propertyType = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaPropertySummary--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaPropertySummary(
    api.GoogleAnalyticsAdminV1alphaPropertySummary o) {
  buildCounterGoogleAnalyticsAdminV1alphaPropertySummary++;
  if (buildCounterGoogleAnalyticsAdminV1alphaPropertySummary < 3) {
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
  buildCounterGoogleAnalyticsAdminV1alphaPropertySummary--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest =
    0;
api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest
    buildGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest();
  buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest <
      3) {
    o.account = buildGoogleAnalyticsAdminV1alphaAccount();
    o.redirectUri = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest(
    api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest <
      3) {
    checkGoogleAnalyticsAdminV1alphaAccount(o.account!);
    unittest.expect(
      o.redirectUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse =
    0;
api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse
    buildGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse();
  buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse <
      3) {
    o.accountTicketId = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse(
    api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse <
      3) {
    unittest.expect(
      o.accountTicketId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest = 0;
api.GoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest
    buildGoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest();
  buildCounterGoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest < 3) {
    o.customDimensionAndMetricSynchronizationMode = 'foo';
    o.subproperty = buildGoogleAnalyticsAdminV1alphaProperty();
    o.subpropertyEventFilter =
        buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilter();
  }
  buildCounterGoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest(
    api.GoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest < 3) {
    unittest.expect(
      o.customDimensionAndMetricSynchronizationMode!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaProperty(o.subproperty!);
    checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilter(
        o.subpropertyEventFilter!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse =
    0;
api.GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse
    buildGoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse();
  buildCounterGoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse < 3) {
    o.subproperty = buildGoogleAnalyticsAdminV1alphaProperty();
    o.subpropertyEventFilter =
        buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilter();
  }
  buildCounterGoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse(
    api.GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse < 3) {
    checkGoogleAnalyticsAdminV1alphaProperty(o.subproperty!);
    checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilter(
        o.subpropertyEventFilter!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse--;
}

core.List<core.String> buildUnnamed65() => [
      'foo',
      'foo',
    ];

void checkUnnamed65(core.List<core.String> o) {
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

core.int buildCounterGoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest =
    0;
api.GoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest
    buildGoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest();
  buildCounterGoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest < 3) {
    o.eventEditRules = buildUnnamed65();
  }
  buildCounterGoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest(
    api.GoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest < 3) {
    checkUnnamed65(o.eventEditRules!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaReportingDataAnnotation = 0;
api.GoogleAnalyticsAdminV1alphaReportingDataAnnotation
    buildGoogleAnalyticsAdminV1alphaReportingDataAnnotation() {
  final o = api.GoogleAnalyticsAdminV1alphaReportingDataAnnotation();
  buildCounterGoogleAnalyticsAdminV1alphaReportingDataAnnotation++;
  if (buildCounterGoogleAnalyticsAdminV1alphaReportingDataAnnotation < 3) {
    o.annotationDate = buildGoogleTypeDate();
    o.annotationDateRange =
        buildGoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange();
    o.color = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.systemGenerated = true;
    o.title = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaReportingDataAnnotation--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaReportingDataAnnotation(
    api.GoogleAnalyticsAdminV1alphaReportingDataAnnotation o) {
  buildCounterGoogleAnalyticsAdminV1alphaReportingDataAnnotation++;
  if (buildCounterGoogleAnalyticsAdminV1alphaReportingDataAnnotation < 3) {
    checkGoogleTypeDate(o.annotationDate!);
    checkGoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange(
        o.annotationDateRange!);
    unittest.expect(
      o.color!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.systemGenerated!, unittest.isTrue);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaReportingDataAnnotation--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange = 0;
api.GoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange
    buildGoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange() {
  final o = api.GoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange();
  buildCounterGoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange++;
  if (buildCounterGoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange <
      3) {
    o.endDate = buildGoogleTypeDate();
    o.startDate = buildGoogleTypeDate();
  }
  buildCounterGoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange(
    api.GoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange o) {
  buildCounterGoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange++;
  if (buildCounterGoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange <
      3) {
    checkGoogleTypeDate(o.endDate!);
    checkGoogleTypeDate(o.startDate!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaReportingIdentitySettings = 0;
api.GoogleAnalyticsAdminV1alphaReportingIdentitySettings
    buildGoogleAnalyticsAdminV1alphaReportingIdentitySettings() {
  final o = api.GoogleAnalyticsAdminV1alphaReportingIdentitySettings();
  buildCounterGoogleAnalyticsAdminV1alphaReportingIdentitySettings++;
  if (buildCounterGoogleAnalyticsAdminV1alphaReportingIdentitySettings < 3) {
    o.name = 'foo';
    o.reportingIdentity = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaReportingIdentitySettings--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaReportingIdentitySettings(
    api.GoogleAnalyticsAdminV1alphaReportingIdentitySettings o) {
  buildCounterGoogleAnalyticsAdminV1alphaReportingIdentitySettings++;
  if (buildCounterGoogleAnalyticsAdminV1alphaReportingIdentitySettings < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportingIdentity!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaReportingIdentitySettings--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaRollupPropertySourceLink = 0;
api.GoogleAnalyticsAdminV1alphaRollupPropertySourceLink
    buildGoogleAnalyticsAdminV1alphaRollupPropertySourceLink() {
  final o = api.GoogleAnalyticsAdminV1alphaRollupPropertySourceLink();
  buildCounterGoogleAnalyticsAdminV1alphaRollupPropertySourceLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaRollupPropertySourceLink < 3) {
    o.name = 'foo';
    o.sourceProperty = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaRollupPropertySourceLink--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaRollupPropertySourceLink(
    api.GoogleAnalyticsAdminV1alphaRollupPropertySourceLink o) {
  buildCounterGoogleAnalyticsAdminV1alphaRollupPropertySourceLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaRollupPropertySourceLink < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceProperty!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaRollupPropertySourceLink--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAccessDateRange> buildUnnamed66() => [
      buildGoogleAnalyticsAdminV1alphaAccessDateRange(),
      buildGoogleAnalyticsAdminV1alphaAccessDateRange(),
    ];

void checkUnnamed66(
    core.List<api.GoogleAnalyticsAdminV1alphaAccessDateRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccessDateRange(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccessDateRange(o[1]);
}

core.List<api.GoogleAnalyticsAdminV1alphaAccessDimension> buildUnnamed67() => [
      buildGoogleAnalyticsAdminV1alphaAccessDimension(),
      buildGoogleAnalyticsAdminV1alphaAccessDimension(),
    ];

void checkUnnamed67(
    core.List<api.GoogleAnalyticsAdminV1alphaAccessDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccessDimension(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccessDimension(o[1]);
}

core.List<api.GoogleAnalyticsAdminV1alphaAccessMetric> buildUnnamed68() => [
      buildGoogleAnalyticsAdminV1alphaAccessMetric(),
      buildGoogleAnalyticsAdminV1alphaAccessMetric(),
    ];

void checkUnnamed68(core.List<api.GoogleAnalyticsAdminV1alphaAccessMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccessMetric(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccessMetric(o[1]);
}

core.List<api.GoogleAnalyticsAdminV1alphaAccessOrderBy> buildUnnamed69() => [
      buildGoogleAnalyticsAdminV1alphaAccessOrderBy(),
      buildGoogleAnalyticsAdminV1alphaAccessOrderBy(),
    ];

void checkUnnamed69(core.List<api.GoogleAnalyticsAdminV1alphaAccessOrderBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccessOrderBy(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccessOrderBy(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaRunAccessReportRequest = 0;
api.GoogleAnalyticsAdminV1alphaRunAccessReportRequest
    buildGoogleAnalyticsAdminV1alphaRunAccessReportRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaRunAccessReportRequest();
  buildCounterGoogleAnalyticsAdminV1alphaRunAccessReportRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaRunAccessReportRequest < 3) {
    o.dateRanges = buildUnnamed66();
    o.dimensionFilter =
        buildGoogleAnalyticsAdminV1alphaAccessFilterExpression();
    o.dimensions = buildUnnamed67();
    o.expandGroups = true;
    o.includeAllUsers = true;
    o.limit = 'foo';
    o.metricFilter = buildGoogleAnalyticsAdminV1alphaAccessFilterExpression();
    o.metrics = buildUnnamed68();
    o.offset = 'foo';
    o.orderBys = buildUnnamed69();
    o.returnEntityQuota = true;
    o.timeZone = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaRunAccessReportRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaRunAccessReportRequest(
    api.GoogleAnalyticsAdminV1alphaRunAccessReportRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaRunAccessReportRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaRunAccessReportRequest < 3) {
    checkUnnamed66(o.dateRanges!);
    checkGoogleAnalyticsAdminV1alphaAccessFilterExpression(o.dimensionFilter!);
    checkUnnamed67(o.dimensions!);
    unittest.expect(o.expandGroups!, unittest.isTrue);
    unittest.expect(o.includeAllUsers!, unittest.isTrue);
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaAccessFilterExpression(o.metricFilter!);
    checkUnnamed68(o.metrics!);
    unittest.expect(
      o.offset!,
      unittest.equals('foo'),
    );
    checkUnnamed69(o.orderBys!);
    unittest.expect(o.returnEntityQuota!, unittest.isTrue);
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaRunAccessReportRequest--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAccessDimensionHeader>
    buildUnnamed70() => [
          buildGoogleAnalyticsAdminV1alphaAccessDimensionHeader(),
          buildGoogleAnalyticsAdminV1alphaAccessDimensionHeader(),
        ];

void checkUnnamed70(
    core.List<api.GoogleAnalyticsAdminV1alphaAccessDimensionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccessDimensionHeader(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccessDimensionHeader(o[1]);
}

core.List<api.GoogleAnalyticsAdminV1alphaAccessMetricHeader> buildUnnamed71() =>
    [
      buildGoogleAnalyticsAdminV1alphaAccessMetricHeader(),
      buildGoogleAnalyticsAdminV1alphaAccessMetricHeader(),
    ];

void checkUnnamed71(
    core.List<api.GoogleAnalyticsAdminV1alphaAccessMetricHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccessMetricHeader(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccessMetricHeader(o[1]);
}

core.List<api.GoogleAnalyticsAdminV1alphaAccessRow> buildUnnamed72() => [
      buildGoogleAnalyticsAdminV1alphaAccessRow(),
      buildGoogleAnalyticsAdminV1alphaAccessRow(),
    ];

void checkUnnamed72(core.List<api.GoogleAnalyticsAdminV1alphaAccessRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccessRow(o[0]);
  checkGoogleAnalyticsAdminV1alphaAccessRow(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaRunAccessReportResponse = 0;
api.GoogleAnalyticsAdminV1alphaRunAccessReportResponse
    buildGoogleAnalyticsAdminV1alphaRunAccessReportResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaRunAccessReportResponse();
  buildCounterGoogleAnalyticsAdminV1alphaRunAccessReportResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaRunAccessReportResponse < 3) {
    o.dimensionHeaders = buildUnnamed70();
    o.metricHeaders = buildUnnamed71();
    o.quota = buildGoogleAnalyticsAdminV1alphaAccessQuota();
    o.rowCount = 42;
    o.rows = buildUnnamed72();
  }
  buildCounterGoogleAnalyticsAdminV1alphaRunAccessReportResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaRunAccessReportResponse(
    api.GoogleAnalyticsAdminV1alphaRunAccessReportResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaRunAccessReportResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaRunAccessReportResponse < 3) {
    checkUnnamed70(o.dimensionHeaders!);
    checkUnnamed71(o.metricHeaders!);
    checkGoogleAnalyticsAdminV1alphaAccessQuota(o.quota!);
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
    checkUnnamed72(o.rows!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaRunAccessReportResponse--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema = 0;
api.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema
    buildGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema() {
  final o = api.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema();
  buildCounterGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema <
      3) {
    o.applyConversionValues = true;
    o.name = 'foo';
    o.postbackWindowOne = buildGoogleAnalyticsAdminV1alphaPostbackWindow();
    o.postbackWindowThree = buildGoogleAnalyticsAdminV1alphaPostbackWindow();
    o.postbackWindowTwo = buildGoogleAnalyticsAdminV1alphaPostbackWindow();
  }
  buildCounterGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema(
    api.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema o) {
  buildCounterGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema <
      3) {
    unittest.expect(o.applyConversionValues!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaPostbackWindow(o.postbackWindowOne!);
    checkGoogleAnalyticsAdminV1alphaPostbackWindow(o.postbackWindowThree!);
    checkGoogleAnalyticsAdminV1alphaPostbackWindow(o.postbackWindowTwo!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaSearchAds360Link = 0;
api.GoogleAnalyticsAdminV1alphaSearchAds360Link
    buildGoogleAnalyticsAdminV1alphaSearchAds360Link() {
  final o = api.GoogleAnalyticsAdminV1alphaSearchAds360Link();
  buildCounterGoogleAnalyticsAdminV1alphaSearchAds360Link++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSearchAds360Link < 3) {
    o.adsPersonalizationEnabled = true;
    o.advertiserDisplayName = 'foo';
    o.advertiserId = 'foo';
    o.campaignDataSharingEnabled = true;
    o.costDataSharingEnabled = true;
    o.name = 'foo';
    o.siteStatsSharingEnabled = true;
  }
  buildCounterGoogleAnalyticsAdminV1alphaSearchAds360Link--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaSearchAds360Link(
    api.GoogleAnalyticsAdminV1alphaSearchAds360Link o) {
  buildCounterGoogleAnalyticsAdminV1alphaSearchAds360Link++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSearchAds360Link < 3) {
    unittest.expect(o.adsPersonalizationEnabled!, unittest.isTrue);
    unittest.expect(
      o.advertiserDisplayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.campaignDataSharingEnabled!, unittest.isTrue);
    unittest.expect(o.costDataSharingEnabled!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.siteStatsSharingEnabled!, unittest.isTrue);
  }
  buildCounterGoogleAnalyticsAdminV1alphaSearchAds360Link--;
}

core.List<core.String> buildUnnamed73() => [
      'foo',
      'foo',
    ];

void checkUnnamed73(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed74() => [
      'foo',
      'foo',
    ];

void checkUnnamed74(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed75() => [
      'foo',
      'foo',
    ];

void checkUnnamed75(core.List<core.String> o) {
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
    buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest = 0;
api.GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest
    buildGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest();
  buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest <
      3) {
    o.action = buildUnnamed73();
    o.actorEmail = buildUnnamed74();
    o.earliestChangeTime = 'foo';
    o.latestChangeTime = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.property = 'foo';
    o.resourceType = buildUnnamed75();
  }
  buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest(
    api.GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest <
      3) {
    checkUnnamed73(o.action!);
    checkUnnamed74(o.actorEmail!);
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
    checkUnnamed75(o.resourceType!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest--;
}

core.List<api.GoogleAnalyticsAdminV1alphaChangeHistoryEvent> buildUnnamed76() =>
    [
      buildGoogleAnalyticsAdminV1alphaChangeHistoryEvent(),
      buildGoogleAnalyticsAdminV1alphaChangeHistoryEvent(),
    ];

void checkUnnamed76(
    core.List<api.GoogleAnalyticsAdminV1alphaChangeHistoryEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaChangeHistoryEvent(o[0]);
  checkGoogleAnalyticsAdminV1alphaChangeHistoryEvent(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse
    buildGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse <
      3) {
    o.changeHistoryEvents = buildUnnamed76();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse(
    api.GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse <
      3) {
    checkUnnamed76(o.changeHistoryEvents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest = 0;
api.GoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest
    buildGoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest();
  buildCounterGoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest < 3) {
    o.appInstanceId = 'foo';
    o.clientId = 'foo';
    o.userId = 'foo';
    o.userProvidedData = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest(
    api.GoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest < 3) {
    unittest.expect(
      o.appInstanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userProvidedData!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse = 0;
api.GoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse
    buildGoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse();
  buildCounterGoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse < 3) {
    o.deletionRequestTime = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse(
    api.GoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse < 3) {
    unittest.expect(
      o.deletionRequestTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause>
    buildUnnamed77() => [
          buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause(),
          buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause(),
        ];

void checkUnnamed77(
    core.List<api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause(o[0]);
  checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilter = 0;
api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilter
    buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilter() {
  final o = api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilter();
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilter < 3) {
    o.applyToProperty = 'foo';
    o.filterClauses = buildUnnamed77();
    o.name = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilter(
    api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilter o) {
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilter < 3) {
    unittest.expect(
      o.applyToProperty!,
      unittest.equals('foo'),
    );
    checkUnnamed77(o.filterClauses!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilter--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause =
    0;
api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause
    buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause() {
  final o = api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause();
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause < 3) {
    o.filterClauseType = 'foo';
    o.filterExpression =
        buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression();
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause(
    api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause o) {
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause < 3) {
    unittest.expect(
      o.filterClauseType!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression(
        o.filterExpression!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition = 0;
api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition
    buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition() {
  final o = api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition();
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition <
      3) {
    o.fieldName = 'foo';
    o.nullFilter = true;
    o.stringFilter =
        buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter();
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition(
    api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition o) {
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition <
      3) {
    unittest.expect(
      o.fieldName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.nullFilter!, unittest.isTrue);
    checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter(
        o.stringFilter!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter =
    0;
api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter
    buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter() {
  final o = api
      .GoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter();
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter <
      3) {
    o.caseSensitive = true;
    o.matchType = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter(
    api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter
        o) {
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter <
      3) {
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
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression = 0;
api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression
    buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression() {
  final o = api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression();
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression <
      3) {
    o.filterCondition =
        buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition();
    o.notExpression =
        buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression();
    o.orGroup =
        buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList();
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression(
    api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression o) {
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression <
      3) {
    checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition(
        o.filterCondition!);
    checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression(
        o.notExpression!);
    checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList(
        o.orGroup!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression--;
}

core.List<api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression>
    buildUnnamed78() => [
          buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression(),
          buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression(),
        ];

void checkUnnamed78(
    core.List<api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression(o[0]);
  checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList =
    0;
api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList
    buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList() {
  final o =
      api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList();
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList <
      3) {
    o.filterExpressions = buildUnnamed78();
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList(
    api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList o) {
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList <
      3) {
    checkUnnamed78(o.filterExpressions!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaSubpropertySyncConfig = 0;
api.GoogleAnalyticsAdminV1alphaSubpropertySyncConfig
    buildGoogleAnalyticsAdminV1alphaSubpropertySyncConfig() {
  final o = api.GoogleAnalyticsAdminV1alphaSubpropertySyncConfig();
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertySyncConfig++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubpropertySyncConfig < 3) {
    o.applyToProperty = 'foo';
    o.customDimensionAndMetricSyncMode = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertySyncConfig--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaSubpropertySyncConfig(
    api.GoogleAnalyticsAdminV1alphaSubpropertySyncConfig o) {
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertySyncConfig++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSubpropertySyncConfig < 3) {
    unittest.expect(
      o.applyToProperty!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customDimensionAndMetricSyncMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaSubpropertySyncConfig--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest = 0;
api.GoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest
    buildGoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest();
  buildCounterGoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest < 3) {
    o.accessBinding = buildGoogleAnalyticsAdminV1alphaAccessBinding();
  }
  buildCounterGoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest(
    api.GoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest < 3) {
    checkGoogleAnalyticsAdminV1alphaAccessBinding(o.accessBinding!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest--;
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

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  final o = api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

void checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleTypeDate--;
}

core.List<core.String> buildUnnamed79() => [
      'foo',
      'foo',
    ];

void checkUnnamed79(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed80() => [
      'foo',
      'foo',
    ];

void checkUnnamed80(core.List<core.String> o) {
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
  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessBetweenFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessBetweenFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessBetweenFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessBetweenFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessBinding(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessDateRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessDateRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessDateRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessDateRange(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessDimension(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessDimensionHeader',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessDimensionHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessDimensionHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessDimensionHeader(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessDimensionValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessDimensionValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessDimensionValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessDimensionValue(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessFilterExpression',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessFilterExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessFilterExpression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessFilterExpression(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaAccessFilterExpressionList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessFilterExpressionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaAccessFilterExpressionList.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessFilterExpressionList(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessInListFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessInListFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessInListFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessInListFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessMetric.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessMetric(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessMetricHeader',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessMetricHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessMetricHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessMetricHeader(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessMetricValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessMetricValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessMetricValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessMetricValue(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessNumericFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessNumericFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessNumericFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessNumericFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessOrderBy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessOrderBy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessOrderBy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessOrderBy(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessQuota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessQuota.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessQuota(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessQuotaStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessQuotaStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessQuotaStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessQuotaStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessRow(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccessStringFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccessStringFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccessStringFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccessStringFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccount(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccountSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAccountSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAccountSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAccountSummary(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAdSenseLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAdSenseLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAdSenseLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAdSenseLink(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse(
          od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaArchiveAudienceRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaArchiveAudienceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaArchiveAudienceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaArchiveAudienceRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAttributionSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAttributionSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAttributionSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAttributionSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAudience', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAudience();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAudience.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAudience(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter(
          od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAudienceEventFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAudienceEventFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAudienceEventFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAudienceEventFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAudienceEventTrigger',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAudienceEventTrigger();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAudienceEventTrigger.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAudienceEventTrigger(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAudienceFilterClause',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAudienceFilterClause();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAudienceFilterClause.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAudienceFilterClause(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaAudienceFilterExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAudienceFilterExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaAudienceFilterExpression.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAudienceFilterExpression(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAudienceFilterExpressionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAudienceFilterExpressionList(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAudienceSequenceFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAudienceSequenceFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAudienceSequenceFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAudienceSequenceFilter(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep(
          od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAudienceSimpleFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAudienceSimpleFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAudienceSimpleFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAudienceSimpleFilter(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaBigQueryLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaBigQueryLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaBigQueryLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaBigQueryLink(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaCalculatedMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaCalculatedMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaCalculatedMetric.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaCalculatedMetric(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest(
          od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaChangeHistoryChange',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaChangeHistoryChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaChangeHistoryChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaChangeHistoryChange(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource(
          od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaChangeHistoryEvent',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaChangeHistoryEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaChangeHistoryEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaChangeHistoryEvent(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaChannelGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaChannelGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaChannelGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaChannelGroup(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaChannelGroupFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaChannelGroupFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaChannelGroupFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaChannelGroupFilter(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaChannelGroupFilterExpression(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaConversionEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaConversionEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaConversionEvent(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaConversionValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaConversionValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaConversionValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaConversionValues(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaCreateAccessBindingRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaCreateAccessBindingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaCreateAccessBindingRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaCreateAccessBindingRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaCustomDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaCustomDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaCustomDimension(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaCustomMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaCustomMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaCustomMetric(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaDataRedactionSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaDataRedactionSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaDataRedactionSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaDataRedactionSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaDataRetentionSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaDataRetentionSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaDataRetentionSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaDataRetentionSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaDataSharingSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaDataSharingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaDataSharingSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaDataSharingSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaDataStream', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaDataStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaDataStream.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaDataStream(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaDataStreamWebStreamData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaDataStreamWebStreamData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaDataStreamWebStreamData.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaDataStreamWebStreamData(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaEventCreateRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaEventCreateRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaEventCreateRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaEventCreateRule(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaEventEditRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaEventEditRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaEventEditRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaEventEditRule(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaEventMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaEventMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaEventMapping.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaEventMapping(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaExpandedDataSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaExpandedDataSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaExpandedDataSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaExpandedDataSet(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaExpandedDataSetFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilter(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaFirebaseLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaFirebaseLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaFirebaseLink(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaGlobalSiteTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaGlobalSiteTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaGlobalSiteTag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaGlobalSiteTag(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaGoogleAdsLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaGoogleAdsLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaGoogleSignalsSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaGoogleSignalsSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaGoogleSignalsSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaGoogleSignalsSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaGroupingRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaGroupingRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaGroupingRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaGroupingRule(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaKeyEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaKeyEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaKeyEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaKeyEvent(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaKeyEventDefaultValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaKeyEventDefaultValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaKeyEventDefaultValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaKeyEventDefaultValue(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaLinkProposalStatusDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaLinkProposalStatusDetails(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListAccessBindingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListAccessBindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListAccessBindingsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListAccessBindingsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListAccountSummariesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListAccountSummariesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListAccountSummariesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListAccountSummariesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaListAccountsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaListAccountsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListAccountsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListAdSenseLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListAdSenseLinksResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaListAudiencesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListAudiencesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaListAudiencesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListAudiencesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListBigQueryLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListBigQueryLinksResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListChannelGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListChannelGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListChannelGroupsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListChannelGroupsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListConversionEventsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListConversionEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListConversionEventsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListConversionEventsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListCustomMetricsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListCustomMetricsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListCustomMetricsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListCustomMetricsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListDataStreamsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListDataStreamsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListDataStreamsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListDataStreamsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListEventCreateRulesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListEventCreateRulesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListEventEditRulesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListEventEditRulesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListEventEditRulesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListEventEditRulesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaListKeyEventsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListKeyEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaListKeyEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListKeyEventsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse(
          od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaListPropertiesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListPropertiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaListPropertiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListPropertiesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaMatchingCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaMatchingCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaMatchingCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaMatchingCondition(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaNumericValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaNumericValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaNumericValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaNumericValue(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaParameterMutation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaParameterMutation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaParameterMutation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaParameterMutation(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaPostbackWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaPostbackWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaPostbackWindow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaPostbackWindow(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaProperty(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaPropertySummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaPropertySummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaPropertySummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaPropertySummary(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaReportingDataAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaReportingDataAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaReportingDataAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaReportingDataAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaReportingIdentitySettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaReportingIdentitySettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaReportingIdentitySettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaReportingIdentitySettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaRollupPropertySourceLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaRollupPropertySourceLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaRollupPropertySourceLink.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaRollupPropertySourceLink(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaRunAccessReportRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaRunAccessReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaRunAccessReportRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaRunAccessReportRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaRunAccessReportResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaRunAccessReportResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaRunAccessReportResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaRunAccessReportResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaSearchAds360Link', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaSearchAds360Link();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaSearchAds360Link.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaSearchAds360Link(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaSubpropertyEventFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilter(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaSubpropertySyncConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaSubpropertySyncConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaSubpropertySyncConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaSubpropertySyncConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest(od);
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

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDate(od);
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('v1alpha/accountSummaries'),
        );
        pathOffset += 24;

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
            buildGoogleAnalyticsAdminV1alphaListAccountSummariesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListAccountSummariesResponse(response
          as api.GoogleAnalyticsAdminV1alphaListAccountSummariesResponse);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAccount(
          response as api.GoogleAnalyticsAdminV1alphaAccount);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaDataSharingSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getDataSharingSettings(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaDataSharingSettings(
          response as api.GoogleAnalyticsAdminV1alphaDataSharingSettings);
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1alpha/accounts'),
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
            .encode(buildGoogleAnalyticsAdminV1alphaListAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListAccountsResponse(
          response as api.GoogleAnalyticsAdminV1alphaListAccountsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_request = buildGoogleAnalyticsAdminV1alphaAccount();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaAccount.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAccount(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAccount(
          response as api.GoogleAnalyticsAdminV1alphaAccount);
    });

    unittest.test('method--provisionAccountTicket', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest(obj);

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
          path.substring(pathOffset, pathOffset + 39),
          unittest.equals('v1alpha/accounts:provisionAccountTicket'),
        );
        pathOffset += 39;

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
            buildGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.provisionAccountTicket(arg_request, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse(response
          as api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse);
    });

    unittest.test('method--runAccessReport', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaRunAccessReportRequest();
      final arg_entity = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaRunAccessReportRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaRunAccessReportRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaRunAccessReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.runAccessReport(arg_request, arg_entity,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaRunAccessReportResponse(
          response as api.GoogleAnalyticsAdminV1alphaRunAccessReportResponse);
    });

    unittest.test('method--searchChangeHistoryEvents', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest();
      final arg_account = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchChangeHistoryEvents(
          arg_request, arg_account,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse(response
          as api.GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse);
    });
  });

  unittest.group('resource-AccountsAccessBindingsResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.accessBindings;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse(response
          as api.GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse);
    });

    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.accessBindings;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.accessBindings;
      final arg_parent = 'foo';
      final arg_names = buildUnnamed79();
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          queryMap['names']!,
          unittest.equals(arg_names),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse(response
          as api.GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.accessBindings;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse(response
          as api.GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.accessBindings;
      final arg_request = buildGoogleAnalyticsAdminV1alphaAccessBinding();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAccessBinding(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaAccessBinding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAccessBinding(
          response as api.GoogleAnalyticsAdminV1alphaAccessBinding);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.accessBindings;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.accessBindings;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaAccessBinding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAccessBinding(
          response as api.GoogleAnalyticsAdminV1alphaAccessBinding);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.accessBindings;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListAccessBindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListAccessBindingsResponse(response
          as api.GoogleAnalyticsAdminV1alphaListAccessBindingsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.accessBindings;
      final arg_request = buildGoogleAnalyticsAdminV1alphaAccessBinding();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAccessBinding(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaAccessBinding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAccessBinding(
          response as api.GoogleAnalyticsAdminV1alphaAccessBinding);
    });
  });

  unittest.group('resource-PropertiesResource', () {
    unittest.test('method--acknowledgeUserDataCollection', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest();
      final arg_property = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest(
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.acknowledgeUserDataCollection(
          arg_request, arg_property,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse(
          response as api
              .GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request = buildGoogleAnalyticsAdminV1alphaProperty();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaProperty.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaProperty(obj);

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
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('v1alpha/properties'),
        );
        pathOffset += 18;

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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaProperty(
          response as api.GoogleAnalyticsAdminV1alphaProperty);
    });

    unittest.test('method--createRollupProperty', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest(obj);

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
          path.substring(pathOffset, pathOffset + 39),
          unittest.equals('v1alpha/properties:createRollupProperty'),
        );
        pathOffset += 39;

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
            buildGoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.createRollupProperty(arg_request, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse(response
          as api.GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaProperty(
          response as api.GoogleAnalyticsAdminV1alphaProperty);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaProperty(
          response as api.GoogleAnalyticsAdminV1alphaProperty);
    });

    unittest.test('method--getAttributionSettings', () async {
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaAttributionSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getAttributionSettings(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAttributionSettings(
          response as api.GoogleAnalyticsAdminV1alphaAttributionSettings);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaDataRetentionSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getDataRetentionSettings(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaDataRetentionSettings(
          response as api.GoogleAnalyticsAdminV1alphaDataRetentionSettings);
    });

    unittest.test('method--getGoogleSignalsSettings', () async {
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaGoogleSignalsSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getGoogleSignalsSettings(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaGoogleSignalsSettings(
          response as api.GoogleAnalyticsAdminV1alphaGoogleSignalsSettings);
    });

    unittest.test('method--getReportingIdentitySettings', () async {
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaReportingIdentitySettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getReportingIdentitySettings(arg_name,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaReportingIdentitySettings(
          response as api.GoogleAnalyticsAdminV1alphaReportingIdentitySettings);
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
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('v1alpha/properties'),
        );
        pathOffset += 18;

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
            .encode(buildGoogleAnalyticsAdminV1alphaListPropertiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListPropertiesResponse(
          response as api.GoogleAnalyticsAdminV1alphaListPropertiesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request = buildGoogleAnalyticsAdminV1alphaProperty();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaProperty.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaProperty(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaProperty(
          response as api.GoogleAnalyticsAdminV1alphaProperty);
    });

    unittest.test('method--provisionSubproperty', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest(obj);

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
          path.substring(pathOffset, pathOffset + 39),
          unittest.equals('v1alpha/properties:provisionSubproperty'),
        );
        pathOffset += 39;

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
            buildGoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.provisionSubproperty(arg_request, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse(response
          as api.GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse);
    });

    unittest.test('method--runAccessReport', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaRunAccessReportRequest();
      final arg_entity = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaRunAccessReportRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaRunAccessReportRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaRunAccessReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.runAccessReport(arg_request, arg_entity,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaRunAccessReportResponse(
          response as api.GoogleAnalyticsAdminV1alphaRunAccessReportResponse);
    });

    unittest.test('method--submitUserDeletion', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.submitUserDeletion(arg_request, arg_name,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse(response
          as api.GoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse);
    });

    unittest.test('method--updateAttributionSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request = buildGoogleAnalyticsAdminV1alphaAttributionSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaAttributionSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAttributionSettings(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaAttributionSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateAttributionSettings(
          arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAttributionSettings(
          response as api.GoogleAnalyticsAdminV1alphaAttributionSettings);
    });

    unittest.test('method--updateDataRetentionSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaDataRetentionSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaDataRetentionSettings.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaDataRetentionSettings(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaDataRetentionSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateDataRetentionSettings(
          arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaDataRetentionSettings(
          response as api.GoogleAnalyticsAdminV1alphaDataRetentionSettings);
    });

    unittest.test('method--updateGoogleSignalsSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaGoogleSignalsSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaGoogleSignalsSettings.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaGoogleSignalsSettings(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaGoogleSignalsSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateGoogleSignalsSettings(
          arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaGoogleSignalsSettings(
          response as api.GoogleAnalyticsAdminV1alphaGoogleSignalsSettings);
    });
  });

  unittest.group('resource-PropertiesAccessBindingsResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.accessBindings;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse(response
          as api.GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse);
    });

    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.accessBindings;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.accessBindings;
      final arg_parent = 'foo';
      final arg_names = buildUnnamed80();
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          queryMap['names']!,
          unittest.equals(arg_names),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse(response
          as api.GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.accessBindings;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse(response
          as api.GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.accessBindings;
      final arg_request = buildGoogleAnalyticsAdminV1alphaAccessBinding();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAccessBinding(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaAccessBinding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAccessBinding(
          response as api.GoogleAnalyticsAdminV1alphaAccessBinding);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.accessBindings;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final res = api.GoogleAnalyticsAdminApi(mock).properties.accessBindings;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaAccessBinding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAccessBinding(
          response as api.GoogleAnalyticsAdminV1alphaAccessBinding);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.accessBindings;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListAccessBindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListAccessBindingsResponse(response
          as api.GoogleAnalyticsAdminV1alphaListAccessBindingsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.accessBindings;
      final arg_request = buildGoogleAnalyticsAdminV1alphaAccessBinding();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAccessBinding(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaAccessBinding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAccessBinding(
          response as api.GoogleAnalyticsAdminV1alphaAccessBinding);
    });
  });

  unittest.group('resource-PropertiesAdSenseLinksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.adSenseLinks;
      final arg_request = buildGoogleAnalyticsAdminV1alphaAdSenseLink();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaAdSenseLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAdSenseLink(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaAdSenseLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAdSenseLink(
          response as api.GoogleAnalyticsAdminV1alphaAdSenseLink);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.adSenseLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final res = api.GoogleAnalyticsAdminApi(mock).properties.adSenseLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaAdSenseLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAdSenseLink(
          response as api.GoogleAnalyticsAdminV1alphaAdSenseLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.adSenseLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaListAdSenseLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListAdSenseLinksResponse(
          response as api.GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse);
    });
  });

  unittest.group('resource-PropertiesAudiencesResource', () {
    unittest.test('method--archive', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.audiences;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaArchiveAudienceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaArchiveAudienceRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaArchiveAudienceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final res = api.GoogleAnalyticsAdminApi(mock).properties.audiences;
      final arg_request = buildGoogleAnalyticsAdminV1alphaAudience();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaAudience.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAudience(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaAudience());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAudience(
          response as api.GoogleAnalyticsAdminV1alphaAudience);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.audiences;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaAudience());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAudience(
          response as api.GoogleAnalyticsAdminV1alphaAudience);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.audiences;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaListAudiencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListAudiencesResponse(
          response as api.GoogleAnalyticsAdminV1alphaListAudiencesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.audiences;
      final arg_request = buildGoogleAnalyticsAdminV1alphaAudience();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaAudience.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAudience(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaAudience());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAudience(
          response as api.GoogleAnalyticsAdminV1alphaAudience);
    });
  });

  unittest.group('resource-PropertiesBigQueryLinksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.bigQueryLinks;
      final arg_request = buildGoogleAnalyticsAdminV1alphaBigQueryLink();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaBigQueryLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBigQueryLink(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaBigQueryLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaBigQueryLink(
          response as api.GoogleAnalyticsAdminV1alphaBigQueryLink);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.bigQueryLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final res = api.GoogleAnalyticsAdminApi(mock).properties.bigQueryLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaBigQueryLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaBigQueryLink(
          response as api.GoogleAnalyticsAdminV1alphaBigQueryLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.bigQueryLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListBigQueryLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListBigQueryLinksResponse(
          response as api.GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.bigQueryLinks;
      final arg_request = buildGoogleAnalyticsAdminV1alphaBigQueryLink();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaBigQueryLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBigQueryLink(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaBigQueryLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaBigQueryLink(
          response as api.GoogleAnalyticsAdminV1alphaBigQueryLink);
    });
  });

  unittest.group('resource-PropertiesCalculatedMetricsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.calculatedMetrics;
      final arg_request = buildGoogleAnalyticsAdminV1alphaCalculatedMetric();
      final arg_parent = 'foo';
      final arg_calculatedMetricId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaCalculatedMetric.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaCalculatedMetric(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          queryMap['calculatedMetricId']!.first,
          unittest.equals(arg_calculatedMetricId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaCalculatedMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          calculatedMetricId: arg_calculatedMetricId, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaCalculatedMetric(
          response as api.GoogleAnalyticsAdminV1alphaCalculatedMetric);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.calculatedMetrics;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.calculatedMetrics;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaCalculatedMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaCalculatedMetric(
          response as api.GoogleAnalyticsAdminV1alphaCalculatedMetric);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.calculatedMetrics;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse(response
          as api.GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.calculatedMetrics;
      final arg_request = buildGoogleAnalyticsAdminV1alphaCalculatedMetric();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaCalculatedMetric.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaCalculatedMetric(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaCalculatedMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaCalculatedMetric(
          response as api.GoogleAnalyticsAdminV1alphaCalculatedMetric);
    });
  });

  unittest.group('resource-PropertiesChannelGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.channelGroups;
      final arg_request = buildGoogleAnalyticsAdminV1alphaChannelGroup();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaChannelGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaChannelGroup(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaChannelGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaChannelGroup(
          response as api.GoogleAnalyticsAdminV1alphaChannelGroup);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.channelGroups;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final res = api.GoogleAnalyticsAdminApi(mock).properties.channelGroups;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaChannelGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaChannelGroup(
          response as api.GoogleAnalyticsAdminV1alphaChannelGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.channelGroups;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListChannelGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListChannelGroupsResponse(
          response as api.GoogleAnalyticsAdminV1alphaListChannelGroupsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.channelGroups;
      final arg_request = buildGoogleAnalyticsAdminV1alphaChannelGroup();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaChannelGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaChannelGroup(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaChannelGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaChannelGroup(
          response as api.GoogleAnalyticsAdminV1alphaChannelGroup);
    });
  });

  unittest.group('resource-PropertiesConversionEventsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.conversionEvents;
      final arg_request = buildGoogleAnalyticsAdminV1alphaConversionEvent();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaConversionEvent(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaConversionEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaConversionEvent(
          response as api.GoogleAnalyticsAdminV1alphaConversionEvent);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaConversionEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaConversionEvent(
          response as api.GoogleAnalyticsAdminV1alphaConversionEvent);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListConversionEventsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListConversionEventsResponse(response
          as api.GoogleAnalyticsAdminV1alphaListConversionEventsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.conversionEvents;
      final arg_request = buildGoogleAnalyticsAdminV1alphaConversionEvent();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaConversionEvent(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaConversionEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaConversionEvent(
          response as api.GoogleAnalyticsAdminV1alphaConversionEvent);
    });
  });

  unittest.group('resource-PropertiesCustomDimensionsResource', () {
    unittest.test('method--archive', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customDimensions;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final arg_request = buildGoogleAnalyticsAdminV1alphaCustomDimension();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaCustomDimension(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaCustomDimension());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaCustomDimension(
          response as api.GoogleAnalyticsAdminV1alphaCustomDimension);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaCustomDimension());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaCustomDimension(
          response as api.GoogleAnalyticsAdminV1alphaCustomDimension);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse(response
          as api.GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customDimensions;
      final arg_request = buildGoogleAnalyticsAdminV1alphaCustomDimension();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaCustomDimension(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaCustomDimension());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaCustomDimension(
          response as api.GoogleAnalyticsAdminV1alphaCustomDimension);
    });
  });

  unittest.group('resource-PropertiesCustomMetricsResource', () {
    unittest.test('method--archive', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customMetrics;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final arg_request = buildGoogleAnalyticsAdminV1alphaCustomMetric();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaCustomMetric(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaCustomMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaCustomMetric(
          response as api.GoogleAnalyticsAdminV1alphaCustomMetric);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaCustomMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaCustomMetric(
          response as api.GoogleAnalyticsAdminV1alphaCustomMetric);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListCustomMetricsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListCustomMetricsResponse(
          response as api.GoogleAnalyticsAdminV1alphaListCustomMetricsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customMetrics;
      final arg_request = buildGoogleAnalyticsAdminV1alphaCustomMetric();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaCustomMetric(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaCustomMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaCustomMetric(
          response as api.GoogleAnalyticsAdminV1alphaCustomMetric);
    });
  });

  unittest.group('resource-PropertiesDataStreamsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.dataStreams;
      final arg_request = buildGoogleAnalyticsAdminV1alphaDataStream();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaDataStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaDataStream(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaDataStream(
          response as api.GoogleAnalyticsAdminV1alphaDataStream);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaDataStream(
          response as api.GoogleAnalyticsAdminV1alphaDataStream);
    });

    unittest.test('method--getDataRedactionSettings', () async {
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaDataRedactionSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getDataRedactionSettings(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaDataRedactionSettings(
          response as api.GoogleAnalyticsAdminV1alphaDataRedactionSettings);
    });

    unittest.test('method--getEnhancedMeasurementSettings', () async {
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getEnhancedMeasurementSettings(arg_name,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings(response
          as api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings);
    });

    unittest.test('method--getGlobalSiteTag', () async {
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaGlobalSiteTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getGlobalSiteTag(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaGlobalSiteTag(
          response as api.GoogleAnalyticsAdminV1alphaGlobalSiteTag);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaListDataStreamsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListDataStreamsResponse(
          response as api.GoogleAnalyticsAdminV1alphaListDataStreamsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.dataStreams;
      final arg_request = buildGoogleAnalyticsAdminV1alphaDataStream();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaDataStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaDataStream(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaDataStream(
          response as api.GoogleAnalyticsAdminV1alphaDataStream);
    });

    unittest.test('method--updateDataRedactionSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.dataStreams;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaDataRedactionSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaDataRedactionSettings.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaDataRedactionSettings(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaDataRedactionSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateDataRedactionSettings(
          arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaDataRedactionSettings(
          response as api.GoogleAnalyticsAdminV1alphaDataRedactionSettings);
    });

    unittest.test('method--updateEnhancedMeasurementSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.dataStreams;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateEnhancedMeasurementSettings(
          arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings(response
          as api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings);
    });
  });

  unittest.group('resource-PropertiesDataStreamsEventCreateRulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .eventCreateRules;
      final arg_request = buildGoogleAnalyticsAdminV1alphaEventCreateRule();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaEventCreateRule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaEventCreateRule(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaEventCreateRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaEventCreateRule(
          response as api.GoogleAnalyticsAdminV1alphaEventCreateRule);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .eventCreateRules;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .eventCreateRules;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaEventCreateRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaEventCreateRule(
          response as api.GoogleAnalyticsAdminV1alphaEventCreateRule);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .eventCreateRules;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListEventCreateRulesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListEventCreateRulesResponse(response
          as api.GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .eventCreateRules;
      final arg_request = buildGoogleAnalyticsAdminV1alphaEventCreateRule();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaEventCreateRule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaEventCreateRule(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaEventCreateRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaEventCreateRule(
          response as api.GoogleAnalyticsAdminV1alphaEventCreateRule);
    });
  });

  unittest.group('resource-PropertiesDataStreamsEventEditRulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .eventEditRules;
      final arg_request = buildGoogleAnalyticsAdminV1alphaEventEditRule();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaEventEditRule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaEventEditRule(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaEventEditRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaEventEditRule(
          response as api.GoogleAnalyticsAdminV1alphaEventEditRule);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .eventEditRules;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .eventEditRules;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaEventEditRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaEventEditRule(
          response as api.GoogleAnalyticsAdminV1alphaEventEditRule);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .eventEditRules;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListEventEditRulesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListEventEditRulesResponse(response
          as api.GoogleAnalyticsAdminV1alphaListEventEditRulesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .eventEditRules;
      final arg_request = buildGoogleAnalyticsAdminV1alphaEventEditRule();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaEventEditRule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaEventEditRule(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaEventEditRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaEventEditRule(
          response as api.GoogleAnalyticsAdminV1alphaEventEditRule);
    });

    unittest.test('method--reorder', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .eventEditRules;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          await res.reorder(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
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
          buildGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret(
          response as api.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret(
          response as api.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse(
          response as api
              .GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .measurementProtocolSecrets;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret(
          response as api.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret);
    });
  });

  unittest.group(
      'resource-PropertiesDataStreamsSKAdNetworkConversionValueSchemaResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .sKAdNetworkConversionValueSchema;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema(response
          as api.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .sKAdNetworkConversionValueSchema;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .sKAdNetworkConversionValueSchema;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema(response
          as api.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .sKAdNetworkConversionValueSchema;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse(
          response as api
              .GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .sKAdNetworkConversionValueSchema;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema(response
          as api.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema);
    });
  });

  unittest.group(
      'resource-PropertiesDisplayVideo360AdvertiserLinkProposalsResource', () {
    unittest.test('method--approve', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .displayVideo360AdvertiserLinkProposals;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest(
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.approve(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse(
          response as api
              .GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse);
    });

    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .displayVideo360AdvertiserLinkProposals;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest(
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal(
          response as api
              .GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .displayVideo360AdvertiserLinkProposals;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal(
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal(
          response as api
              .GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .displayVideo360AdvertiserLinkProposals;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .displayVideo360AdvertiserLinkProposals;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal(
          response as api
              .GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .displayVideo360AdvertiserLinkProposals;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse(
          response as api
              .GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse);
    });
  });

  unittest.group('resource-PropertiesDisplayVideo360AdvertiserLinksResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .displayVideo360AdvertiserLinks;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink(response
          as api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .displayVideo360AdvertiserLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .displayVideo360AdvertiserLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink(response
          as api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .displayVideo360AdvertiserLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse(
          response as api
              .GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .displayVideo360AdvertiserLinks;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink(response
          as api.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink);
    });
  });

  unittest.group('resource-PropertiesExpandedDataSetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.expandedDataSets;
      final arg_request = buildGoogleAnalyticsAdminV1alphaExpandedDataSet();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaExpandedDataSet.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaExpandedDataSet(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaExpandedDataSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaExpandedDataSet(
          response as api.GoogleAnalyticsAdminV1alphaExpandedDataSet);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.expandedDataSets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final res = api.GoogleAnalyticsAdminApi(mock).properties.expandedDataSets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaExpandedDataSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaExpandedDataSet(
          response as api.GoogleAnalyticsAdminV1alphaExpandedDataSet);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.expandedDataSets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse(response
          as api.GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.expandedDataSets;
      final arg_request = buildGoogleAnalyticsAdminV1alphaExpandedDataSet();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaExpandedDataSet.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaExpandedDataSet(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaExpandedDataSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaExpandedDataSet(
          response as api.GoogleAnalyticsAdminV1alphaExpandedDataSet);
    });
  });

  unittest.group('resource-PropertiesFirebaseLinksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.firebaseLinks;
      final arg_request = buildGoogleAnalyticsAdminV1alphaFirebaseLink();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaFirebaseLink(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaFirebaseLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaFirebaseLink(
          response as api.GoogleAnalyticsAdminV1alphaFirebaseLink);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse(
          response as api.GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse);
    });
  });

  unittest.group('resource-PropertiesGoogleAdsLinksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.googleAdsLinks;
      final arg_request = buildGoogleAnalyticsAdminV1alphaGoogleAdsLink();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaGoogleAdsLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(
          response as api.GoogleAnalyticsAdminV1alphaGoogleAdsLink);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse(response
          as api.GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.googleAdsLinks;
      final arg_request = buildGoogleAnalyticsAdminV1alphaGoogleAdsLink();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaGoogleAdsLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(
          response as api.GoogleAnalyticsAdminV1alphaGoogleAdsLink);
    });
  });

  unittest.group('resource-PropertiesKeyEventsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.keyEvents;
      final arg_request = buildGoogleAnalyticsAdminV1alphaKeyEvent();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaKeyEvent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaKeyEvent(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaKeyEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaKeyEvent(
          response as api.GoogleAnalyticsAdminV1alphaKeyEvent);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaKeyEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaKeyEvent(
          response as api.GoogleAnalyticsAdminV1alphaKeyEvent);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaListKeyEventsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListKeyEventsResponse(
          response as api.GoogleAnalyticsAdminV1alphaListKeyEventsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.keyEvents;
      final arg_request = buildGoogleAnalyticsAdminV1alphaKeyEvent();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaKeyEvent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaKeyEvent(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaKeyEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaKeyEvent(
          response as api.GoogleAnalyticsAdminV1alphaKeyEvent);
    });
  });

  unittest.group('resource-PropertiesReportingDataAnnotationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.reportingDataAnnotations;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaReportingDataAnnotation();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaReportingDataAnnotation.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaReportingDataAnnotation(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaReportingDataAnnotation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaReportingDataAnnotation(
          response as api.GoogleAnalyticsAdminV1alphaReportingDataAnnotation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.reportingDataAnnotations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.reportingDataAnnotations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaReportingDataAnnotation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaReportingDataAnnotation(
          response as api.GoogleAnalyticsAdminV1alphaReportingDataAnnotation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.reportingDataAnnotations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse(
          response as api
              .GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.reportingDataAnnotations;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaReportingDataAnnotation();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaReportingDataAnnotation.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaReportingDataAnnotation(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaReportingDataAnnotation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaReportingDataAnnotation(
          response as api.GoogleAnalyticsAdminV1alphaReportingDataAnnotation);
    });
  });

  unittest.group('resource-PropertiesRollupPropertySourceLinksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .rollupPropertySourceLinks;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaRollupPropertySourceLink();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaRollupPropertySourceLink.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaRollupPropertySourceLink(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaRollupPropertySourceLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaRollupPropertySourceLink(
          response as api.GoogleAnalyticsAdminV1alphaRollupPropertySourceLink);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .rollupPropertySourceLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .rollupPropertySourceLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaRollupPropertySourceLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaRollupPropertySourceLink(
          response as api.GoogleAnalyticsAdminV1alphaRollupPropertySourceLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .rollupPropertySourceLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse(
          response as api
              .GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse);
    });
  });

  unittest.group('resource-PropertiesSearchAds360LinksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.searchAds360Links;
      final arg_request = buildGoogleAnalyticsAdminV1alphaSearchAds360Link();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaSearchAds360Link.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaSearchAds360Link(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaSearchAds360Link());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaSearchAds360Link(
          response as api.GoogleAnalyticsAdminV1alphaSearchAds360Link);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.searchAds360Links;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.searchAds360Links;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaSearchAds360Link());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaSearchAds360Link(
          response as api.GoogleAnalyticsAdminV1alphaSearchAds360Link);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.searchAds360Links;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse(response
          as api.GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.searchAds360Links;
      final arg_request = buildGoogleAnalyticsAdminV1alphaSearchAds360Link();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaSearchAds360Link.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaSearchAds360Link(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaSearchAds360Link());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaSearchAds360Link(
          response as api.GoogleAnalyticsAdminV1alphaSearchAds360Link);
    });
  });

  unittest.group('resource-PropertiesSubpropertyEventFiltersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.subpropertyEventFilters;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilter();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilter.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilter(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilter(
          response as api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilter);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.subpropertyEventFilters;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.subpropertyEventFilters;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilter(
          response as api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilter);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.subpropertyEventFilters;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse(
          response as api
              .GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.subpropertyEventFilters;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilter();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilter.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilter(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaSubpropertyEventFilter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaSubpropertyEventFilter(
          response as api.GoogleAnalyticsAdminV1alphaSubpropertyEventFilter);
    });
  });

  unittest.group('resource-PropertiesSubpropertySyncConfigsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.subpropertySyncConfigs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaSubpropertySyncConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaSubpropertySyncConfig(
          response as api.GoogleAnalyticsAdminV1alphaSubpropertySyncConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.subpropertySyncConfigs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse(
          response as api
              .GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.subpropertySyncConfigs;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaSubpropertySyncConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaSubpropertySyncConfig.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaSubpropertySyncConfig(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaSubpropertySyncConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaSubpropertySyncConfig(
          response as api.GoogleAnalyticsAdminV1alphaSubpropertySyncConfig);
    });
  });
}
