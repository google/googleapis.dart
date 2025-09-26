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

import 'package:googleapis/merchantapi/reports_v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterBestSellersBrandView = 0;
api.BestSellersBrandView buildBestSellersBrandView() {
  final o = api.BestSellersBrandView();
  buildCounterBestSellersBrandView++;
  if (buildCounterBestSellersBrandView < 3) {
    o.brand = 'foo';
    o.previousRank = 'foo';
    o.previousRelativeDemand = 'foo';
    o.rank = 'foo';
    o.relativeDemand = 'foo';
    o.relativeDemandChange = 'foo';
    o.reportCategoryId = 'foo';
    o.reportCountryCode = 'foo';
    o.reportDate = buildDate();
    o.reportGranularity = 'foo';
  }
  buildCounterBestSellersBrandView--;
  return o;
}

void checkBestSellersBrandView(api.BestSellersBrandView o) {
  buildCounterBestSellersBrandView++;
  if (buildCounterBestSellersBrandView < 3) {
    unittest.expect(o.brand!, unittest.equals('foo'));
    unittest.expect(o.previousRank!, unittest.equals('foo'));
    unittest.expect(o.previousRelativeDemand!, unittest.equals('foo'));
    unittest.expect(o.rank!, unittest.equals('foo'));
    unittest.expect(o.relativeDemand!, unittest.equals('foo'));
    unittest.expect(o.relativeDemandChange!, unittest.equals('foo'));
    unittest.expect(o.reportCategoryId!, unittest.equals('foo'));
    unittest.expect(o.reportCountryCode!, unittest.equals('foo'));
    checkDate(o.reportDate!);
    unittest.expect(o.reportGranularity!, unittest.equals('foo'));
  }
  buildCounterBestSellersBrandView--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBestSellersProductClusterView = 0;
api.BestSellersProductClusterView buildBestSellersProductClusterView() {
  final o = api.BestSellersProductClusterView();
  buildCounterBestSellersProductClusterView++;
  if (buildCounterBestSellersProductClusterView < 3) {
    o.brand = 'foo';
    o.brandInventoryStatus = 'foo';
    o.categoryL1 = 'foo';
    o.categoryL2 = 'foo';
    o.categoryL3 = 'foo';
    o.categoryL4 = 'foo';
    o.categoryL5 = 'foo';
    o.inventoryStatus = 'foo';
    o.previousRank = 'foo';
    o.previousRelativeDemand = 'foo';
    o.rank = 'foo';
    o.relativeDemand = 'foo';
    o.relativeDemandChange = 'foo';
    o.reportCategoryId = 'foo';
    o.reportCountryCode = 'foo';
    o.reportDate = buildDate();
    o.reportGranularity = 'foo';
    o.title = 'foo';
    o.variantGtins = buildUnnamed0();
  }
  buildCounterBestSellersProductClusterView--;
  return o;
}

void checkBestSellersProductClusterView(api.BestSellersProductClusterView o) {
  buildCounterBestSellersProductClusterView++;
  if (buildCounterBestSellersProductClusterView < 3) {
    unittest.expect(o.brand!, unittest.equals('foo'));
    unittest.expect(o.brandInventoryStatus!, unittest.equals('foo'));
    unittest.expect(o.categoryL1!, unittest.equals('foo'));
    unittest.expect(o.categoryL2!, unittest.equals('foo'));
    unittest.expect(o.categoryL3!, unittest.equals('foo'));
    unittest.expect(o.categoryL4!, unittest.equals('foo'));
    unittest.expect(o.categoryL5!, unittest.equals('foo'));
    unittest.expect(o.inventoryStatus!, unittest.equals('foo'));
    unittest.expect(o.previousRank!, unittest.equals('foo'));
    unittest.expect(o.previousRelativeDemand!, unittest.equals('foo'));
    unittest.expect(o.rank!, unittest.equals('foo'));
    unittest.expect(o.relativeDemand!, unittest.equals('foo'));
    unittest.expect(o.relativeDemandChange!, unittest.equals('foo'));
    unittest.expect(o.reportCategoryId!, unittest.equals('foo'));
    unittest.expect(o.reportCountryCode!, unittest.equals('foo'));
    checkDate(o.reportDate!);
    unittest.expect(o.reportGranularity!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    checkUnnamed0(o.variantGtins!);
  }
  buildCounterBestSellersProductClusterView--;
}

core.int buildCounterCompetitiveVisibilityBenchmarkView = 0;
api.CompetitiveVisibilityBenchmarkView
buildCompetitiveVisibilityBenchmarkView() {
  final o = api.CompetitiveVisibilityBenchmarkView();
  buildCounterCompetitiveVisibilityBenchmarkView++;
  if (buildCounterCompetitiveVisibilityBenchmarkView < 3) {
    o.categoryBenchmarkVisibilityTrend = 42.0;
    o.date = buildDate();
    o.reportCategoryId = 'foo';
    o.reportCountryCode = 'foo';
    o.trafficSource = 'foo';
    o.yourDomainVisibilityTrend = 42.0;
  }
  buildCounterCompetitiveVisibilityBenchmarkView--;
  return o;
}

void checkCompetitiveVisibilityBenchmarkView(
  api.CompetitiveVisibilityBenchmarkView o,
) {
  buildCounterCompetitiveVisibilityBenchmarkView++;
  if (buildCounterCompetitiveVisibilityBenchmarkView < 3) {
    unittest.expect(o.categoryBenchmarkVisibilityTrend!, unittest.equals(42.0));
    checkDate(o.date!);
    unittest.expect(o.reportCategoryId!, unittest.equals('foo'));
    unittest.expect(o.reportCountryCode!, unittest.equals('foo'));
    unittest.expect(o.trafficSource!, unittest.equals('foo'));
    unittest.expect(o.yourDomainVisibilityTrend!, unittest.equals(42.0));
  }
  buildCounterCompetitiveVisibilityBenchmarkView--;
}

core.int buildCounterCompetitiveVisibilityCompetitorView = 0;
api.CompetitiveVisibilityCompetitorView
buildCompetitiveVisibilityCompetitorView() {
  final o = api.CompetitiveVisibilityCompetitorView();
  buildCounterCompetitiveVisibilityCompetitorView++;
  if (buildCounterCompetitiveVisibilityCompetitorView < 3) {
    o.adsOrganicRatio = 42.0;
    o.date = buildDate();
    o.domain = 'foo';
    o.higherPositionRate = 42.0;
    o.isYourDomain = true;
    o.pageOverlapRate = 42.0;
    o.rank = 'foo';
    o.relativeVisibility = 42.0;
    o.reportCategoryId = 'foo';
    o.reportCountryCode = 'foo';
    o.trafficSource = 'foo';
  }
  buildCounterCompetitiveVisibilityCompetitorView--;
  return o;
}

void checkCompetitiveVisibilityCompetitorView(
  api.CompetitiveVisibilityCompetitorView o,
) {
  buildCounterCompetitiveVisibilityCompetitorView++;
  if (buildCounterCompetitiveVisibilityCompetitorView < 3) {
    unittest.expect(o.adsOrganicRatio!, unittest.equals(42.0));
    checkDate(o.date!);
    unittest.expect(o.domain!, unittest.equals('foo'));
    unittest.expect(o.higherPositionRate!, unittest.equals(42.0));
    unittest.expect(o.isYourDomain!, unittest.isTrue);
    unittest.expect(o.pageOverlapRate!, unittest.equals(42.0));
    unittest.expect(o.rank!, unittest.equals('foo'));
    unittest.expect(o.relativeVisibility!, unittest.equals(42.0));
    unittest.expect(o.reportCategoryId!, unittest.equals('foo'));
    unittest.expect(o.reportCountryCode!, unittest.equals('foo'));
    unittest.expect(o.trafficSource!, unittest.equals('foo'));
  }
  buildCounterCompetitiveVisibilityCompetitorView--;
}

core.int buildCounterCompetitiveVisibilityTopMerchantView = 0;
api.CompetitiveVisibilityTopMerchantView
buildCompetitiveVisibilityTopMerchantView() {
  final o = api.CompetitiveVisibilityTopMerchantView();
  buildCounterCompetitiveVisibilityTopMerchantView++;
  if (buildCounterCompetitiveVisibilityTopMerchantView < 3) {
    o.adsOrganicRatio = 42.0;
    o.date = buildDate();
    o.domain = 'foo';
    o.higherPositionRate = 42.0;
    o.isYourDomain = true;
    o.pageOverlapRate = 42.0;
    o.rank = 'foo';
    o.reportCategoryId = 'foo';
    o.reportCountryCode = 'foo';
    o.trafficSource = 'foo';
  }
  buildCounterCompetitiveVisibilityTopMerchantView--;
  return o;
}

void checkCompetitiveVisibilityTopMerchantView(
  api.CompetitiveVisibilityTopMerchantView o,
) {
  buildCounterCompetitiveVisibilityTopMerchantView++;
  if (buildCounterCompetitiveVisibilityTopMerchantView < 3) {
    unittest.expect(o.adsOrganicRatio!, unittest.equals(42.0));
    checkDate(o.date!);
    unittest.expect(o.domain!, unittest.equals('foo'));
    unittest.expect(o.higherPositionRate!, unittest.equals(42.0));
    unittest.expect(o.isYourDomain!, unittest.isTrue);
    unittest.expect(o.pageOverlapRate!, unittest.equals(42.0));
    unittest.expect(o.rank!, unittest.equals('foo'));
    unittest.expect(o.reportCategoryId!, unittest.equals('foo'));
    unittest.expect(o.reportCountryCode!, unittest.equals('foo'));
    unittest.expect(o.trafficSource!, unittest.equals('foo'));
  }
  buildCounterCompetitiveVisibilityTopMerchantView--;
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

core.int buildCounterIssueSeverityPerReportingContext = 0;
api.IssueSeverityPerReportingContext buildIssueSeverityPerReportingContext() {
  final o = api.IssueSeverityPerReportingContext();
  buildCounterIssueSeverityPerReportingContext++;
  if (buildCounterIssueSeverityPerReportingContext < 3) {
    o.demotedCountries = buildUnnamed1();
    o.disapprovedCountries = buildUnnamed2();
    o.reportingContext = 'foo';
  }
  buildCounterIssueSeverityPerReportingContext--;
  return o;
}

void checkIssueSeverityPerReportingContext(
  api.IssueSeverityPerReportingContext o,
) {
  buildCounterIssueSeverityPerReportingContext++;
  if (buildCounterIssueSeverityPerReportingContext < 3) {
    checkUnnamed1(o.demotedCountries!);
    checkUnnamed2(o.disapprovedCountries!);
    unittest.expect(o.reportingContext!, unittest.equals('foo'));
  }
  buildCounterIssueSeverityPerReportingContext--;
}

core.int buildCounterItemIssue = 0;
api.ItemIssue buildItemIssue() {
  final o = api.ItemIssue();
  buildCounterItemIssue++;
  if (buildCounterItemIssue < 3) {
    o.resolution = 'foo';
    o.severity = buildItemIssueSeverity();
    o.type = buildItemIssueType();
  }
  buildCounterItemIssue--;
  return o;
}

void checkItemIssue(api.ItemIssue o) {
  buildCounterItemIssue++;
  if (buildCounterItemIssue < 3) {
    unittest.expect(o.resolution!, unittest.equals('foo'));
    checkItemIssueSeverity(o.severity!);
    checkItemIssueType(o.type!);
  }
  buildCounterItemIssue--;
}

core.List<api.IssueSeverityPerReportingContext> buildUnnamed3() => [
  buildIssueSeverityPerReportingContext(),
  buildIssueSeverityPerReportingContext(),
];

void checkUnnamed3(core.List<api.IssueSeverityPerReportingContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIssueSeverityPerReportingContext(o[0]);
  checkIssueSeverityPerReportingContext(o[1]);
}

core.int buildCounterItemIssueSeverity = 0;
api.ItemIssueSeverity buildItemIssueSeverity() {
  final o = api.ItemIssueSeverity();
  buildCounterItemIssueSeverity++;
  if (buildCounterItemIssueSeverity < 3) {
    o.aggregatedSeverity = 'foo';
    o.severityPerReportingContext = buildUnnamed3();
  }
  buildCounterItemIssueSeverity--;
  return o;
}

void checkItemIssueSeverity(api.ItemIssueSeverity o) {
  buildCounterItemIssueSeverity++;
  if (buildCounterItemIssueSeverity < 3) {
    unittest.expect(o.aggregatedSeverity!, unittest.equals('foo'));
    checkUnnamed3(o.severityPerReportingContext!);
  }
  buildCounterItemIssueSeverity--;
}

core.int buildCounterItemIssueType = 0;
api.ItemIssueType buildItemIssueType() {
  final o = api.ItemIssueType();
  buildCounterItemIssueType++;
  if (buildCounterItemIssueType < 3) {
    o.canonicalAttribute = 'foo';
    o.code = 'foo';
  }
  buildCounterItemIssueType--;
  return o;
}

void checkItemIssueType(api.ItemIssueType o) {
  buildCounterItemIssueType++;
  if (buildCounterItemIssueType < 3) {
    unittest.expect(o.canonicalAttribute!, unittest.equals('foo'));
    unittest.expect(o.code!, unittest.equals('foo'));
  }
  buildCounterItemIssueType--;
}

core.int buildCounterNonProductPerformanceView = 0;
api.NonProductPerformanceView buildNonProductPerformanceView() {
  final o = api.NonProductPerformanceView();
  buildCounterNonProductPerformanceView++;
  if (buildCounterNonProductPerformanceView < 3) {
    o.clickThroughRate = 42.0;
    o.clicks = 'foo';
    o.date = buildDate();
    o.impressions = 'foo';
    o.week = buildDate();
  }
  buildCounterNonProductPerformanceView--;
  return o;
}

void checkNonProductPerformanceView(api.NonProductPerformanceView o) {
  buildCounterNonProductPerformanceView++;
  if (buildCounterNonProductPerformanceView < 3) {
    unittest.expect(o.clickThroughRate!, unittest.equals(42.0));
    unittest.expect(o.clicks!, unittest.equals('foo'));
    checkDate(o.date!);
    unittest.expect(o.impressions!, unittest.equals('foo'));
    checkDate(o.week!);
  }
  buildCounterNonProductPerformanceView--;
}

core.int buildCounterPrice = 0;
api.Price buildPrice() {
  final o = api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.amountMicros = 'foo';
    o.currencyCode = 'foo';
  }
  buildCounterPrice--;
  return o;
}

void checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(o.amountMicros!, unittest.equals('foo'));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
  }
  buildCounterPrice--;
}

core.int buildCounterPriceCompetitivenessProductView = 0;
api.PriceCompetitivenessProductView buildPriceCompetitivenessProductView() {
  final o = api.PriceCompetitivenessProductView();
  buildCounterPriceCompetitivenessProductView++;
  if (buildCounterPriceCompetitivenessProductView < 3) {
    o.benchmarkPrice = buildPrice();
    o.brand = 'foo';
    o.categoryL1 = 'foo';
    o.categoryL2 = 'foo';
    o.categoryL3 = 'foo';
    o.categoryL4 = 'foo';
    o.categoryL5 = 'foo';
    o.id = 'foo';
    o.offerId = 'foo';
    o.price = buildPrice();
    o.productTypeL1 = 'foo';
    o.productTypeL2 = 'foo';
    o.productTypeL3 = 'foo';
    o.productTypeL4 = 'foo';
    o.productTypeL5 = 'foo';
    o.reportCountryCode = 'foo';
    o.title = 'foo';
  }
  buildCounterPriceCompetitivenessProductView--;
  return o;
}

void checkPriceCompetitivenessProductView(
  api.PriceCompetitivenessProductView o,
) {
  buildCounterPriceCompetitivenessProductView++;
  if (buildCounterPriceCompetitivenessProductView < 3) {
    checkPrice(o.benchmarkPrice!);
    unittest.expect(o.brand!, unittest.equals('foo'));
    unittest.expect(o.categoryL1!, unittest.equals('foo'));
    unittest.expect(o.categoryL2!, unittest.equals('foo'));
    unittest.expect(o.categoryL3!, unittest.equals('foo'));
    unittest.expect(o.categoryL4!, unittest.equals('foo'));
    unittest.expect(o.categoryL5!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.offerId!, unittest.equals('foo'));
    checkPrice(o.price!);
    unittest.expect(o.productTypeL1!, unittest.equals('foo'));
    unittest.expect(o.productTypeL2!, unittest.equals('foo'));
    unittest.expect(o.productTypeL3!, unittest.equals('foo'));
    unittest.expect(o.productTypeL4!, unittest.equals('foo'));
    unittest.expect(o.productTypeL5!, unittest.equals('foo'));
    unittest.expect(o.reportCountryCode!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterPriceCompetitivenessProductView--;
}

core.int buildCounterPriceInsightsProductView = 0;
api.PriceInsightsProductView buildPriceInsightsProductView() {
  final o = api.PriceInsightsProductView();
  buildCounterPriceInsightsProductView++;
  if (buildCounterPriceInsightsProductView < 3) {
    o.brand = 'foo';
    o.categoryL1 = 'foo';
    o.categoryL2 = 'foo';
    o.categoryL3 = 'foo';
    o.categoryL4 = 'foo';
    o.categoryL5 = 'foo';
    o.effectiveness = 'foo';
    o.id = 'foo';
    o.offerId = 'foo';
    o.predictedClicksChangeFraction = 42.0;
    o.predictedConversionsChangeFraction = 42.0;
    o.predictedImpressionsChangeFraction = 42.0;
    o.price = buildPrice();
    o.productTypeL1 = 'foo';
    o.productTypeL2 = 'foo';
    o.productTypeL3 = 'foo';
    o.productTypeL4 = 'foo';
    o.productTypeL5 = 'foo';
    o.suggestedPrice = buildPrice();
    o.title = 'foo';
  }
  buildCounterPriceInsightsProductView--;
  return o;
}

void checkPriceInsightsProductView(api.PriceInsightsProductView o) {
  buildCounterPriceInsightsProductView++;
  if (buildCounterPriceInsightsProductView < 3) {
    unittest.expect(o.brand!, unittest.equals('foo'));
    unittest.expect(o.categoryL1!, unittest.equals('foo'));
    unittest.expect(o.categoryL2!, unittest.equals('foo'));
    unittest.expect(o.categoryL3!, unittest.equals('foo'));
    unittest.expect(o.categoryL4!, unittest.equals('foo'));
    unittest.expect(o.categoryL5!, unittest.equals('foo'));
    unittest.expect(o.effectiveness!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.offerId!, unittest.equals('foo'));
    unittest.expect(o.predictedClicksChangeFraction!, unittest.equals(42.0));
    unittest.expect(
      o.predictedConversionsChangeFraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.predictedImpressionsChangeFraction!,
      unittest.equals(42.0),
    );
    checkPrice(o.price!);
    unittest.expect(o.productTypeL1!, unittest.equals('foo'));
    unittest.expect(o.productTypeL2!, unittest.equals('foo'));
    unittest.expect(o.productTypeL3!, unittest.equals('foo'));
    unittest.expect(o.productTypeL4!, unittest.equals('foo'));
    unittest.expect(o.productTypeL5!, unittest.equals('foo'));
    checkPrice(o.suggestedPrice!);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterPriceInsightsProductView--;
}

core.int buildCounterProductPerformanceView = 0;
api.ProductPerformanceView buildProductPerformanceView() {
  final o = api.ProductPerformanceView();
  buildCounterProductPerformanceView++;
  if (buildCounterProductPerformanceView < 3) {
    o.brand = 'foo';
    o.categoryL1 = 'foo';
    o.categoryL2 = 'foo';
    o.categoryL3 = 'foo';
    o.categoryL4 = 'foo';
    o.categoryL5 = 'foo';
    o.clickThroughRate = 42.0;
    o.clicks = 'foo';
    o.conversionRate = 42.0;
    o.conversionValue = buildPrice();
    o.conversions = 42.0;
    o.customLabel0 = 'foo';
    o.customLabel1 = 'foo';
    o.customLabel2 = 'foo';
    o.customLabel3 = 'foo';
    o.customLabel4 = 'foo';
    o.customerCountryCode = 'foo';
    o.date = buildDate();
    o.impressions = 'foo';
    o.marketingMethod = 'foo';
    o.offerId = 'foo';
    o.productTypeL1 = 'foo';
    o.productTypeL2 = 'foo';
    o.productTypeL3 = 'foo';
    o.productTypeL4 = 'foo';
    o.productTypeL5 = 'foo';
    o.title = 'foo';
    o.week = buildDate();
  }
  buildCounterProductPerformanceView--;
  return o;
}

void checkProductPerformanceView(api.ProductPerformanceView o) {
  buildCounterProductPerformanceView++;
  if (buildCounterProductPerformanceView < 3) {
    unittest.expect(o.brand!, unittest.equals('foo'));
    unittest.expect(o.categoryL1!, unittest.equals('foo'));
    unittest.expect(o.categoryL2!, unittest.equals('foo'));
    unittest.expect(o.categoryL3!, unittest.equals('foo'));
    unittest.expect(o.categoryL4!, unittest.equals('foo'));
    unittest.expect(o.categoryL5!, unittest.equals('foo'));
    unittest.expect(o.clickThroughRate!, unittest.equals(42.0));
    unittest.expect(o.clicks!, unittest.equals('foo'));
    unittest.expect(o.conversionRate!, unittest.equals(42.0));
    checkPrice(o.conversionValue!);
    unittest.expect(o.conversions!, unittest.equals(42.0));
    unittest.expect(o.customLabel0!, unittest.equals('foo'));
    unittest.expect(o.customLabel1!, unittest.equals('foo'));
    unittest.expect(o.customLabel2!, unittest.equals('foo'));
    unittest.expect(o.customLabel3!, unittest.equals('foo'));
    unittest.expect(o.customLabel4!, unittest.equals('foo'));
    unittest.expect(o.customerCountryCode!, unittest.equals('foo'));
    checkDate(o.date!);
    unittest.expect(o.impressions!, unittest.equals('foo'));
    unittest.expect(o.marketingMethod!, unittest.equals('foo'));
    unittest.expect(o.offerId!, unittest.equals('foo'));
    unittest.expect(o.productTypeL1!, unittest.equals('foo'));
    unittest.expect(o.productTypeL2!, unittest.equals('foo'));
    unittest.expect(o.productTypeL3!, unittest.equals('foo'));
    unittest.expect(o.productTypeL4!, unittest.equals('foo'));
    unittest.expect(o.productTypeL5!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    checkDate(o.week!);
  }
  buildCounterProductPerformanceView--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ItemIssue> buildUnnamed5() => [
  buildItemIssue(),
  buildItemIssue(),
];

void checkUnnamed5(core.List<api.ItemIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItemIssue(o[0]);
  checkItemIssue(o[1]);
}

core.int buildCounterProductView = 0;
api.ProductView buildProductView() {
  final o = api.ProductView();
  buildCounterProductView++;
  if (buildCounterProductView < 3) {
    o.aggregatedReportingContextStatus = 'foo';
    o.availability = 'foo';
    o.brand = 'foo';
    o.categoryL1 = 'foo';
    o.categoryL2 = 'foo';
    o.categoryL3 = 'foo';
    o.categoryL4 = 'foo';
    o.categoryL5 = 'foo';
    o.channel = 'foo';
    o.clickPotential = 'foo';
    o.clickPotentialRank = 'foo';
    o.condition = 'foo';
    o.creationTime = 'foo';
    o.expirationDate = buildDate();
    o.feedLabel = 'foo';
    o.gtin = buildUnnamed4();
    o.id = 'foo';
    o.itemGroupId = 'foo';
    o.itemIssues = buildUnnamed5();
    o.languageCode = 'foo';
    o.offerId = 'foo';
    o.price = buildPrice();
    o.productTypeL1 = 'foo';
    o.productTypeL2 = 'foo';
    o.productTypeL3 = 'foo';
    o.productTypeL4 = 'foo';
    o.productTypeL5 = 'foo';
    o.shippingLabel = 'foo';
    o.thumbnailLink = 'foo';
    o.title = 'foo';
  }
  buildCounterProductView--;
  return o;
}

void checkProductView(api.ProductView o) {
  buildCounterProductView++;
  if (buildCounterProductView < 3) {
    unittest.expect(
      o.aggregatedReportingContextStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.availability!, unittest.equals('foo'));
    unittest.expect(o.brand!, unittest.equals('foo'));
    unittest.expect(o.categoryL1!, unittest.equals('foo'));
    unittest.expect(o.categoryL2!, unittest.equals('foo'));
    unittest.expect(o.categoryL3!, unittest.equals('foo'));
    unittest.expect(o.categoryL4!, unittest.equals('foo'));
    unittest.expect(o.categoryL5!, unittest.equals('foo'));
    unittest.expect(o.channel!, unittest.equals('foo'));
    unittest.expect(o.clickPotential!, unittest.equals('foo'));
    unittest.expect(o.clickPotentialRank!, unittest.equals('foo'));
    unittest.expect(o.condition!, unittest.equals('foo'));
    unittest.expect(o.creationTime!, unittest.equals('foo'));
    checkDate(o.expirationDate!);
    unittest.expect(o.feedLabel!, unittest.equals('foo'));
    checkUnnamed4(o.gtin!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.itemGroupId!, unittest.equals('foo'));
    checkUnnamed5(o.itemIssues!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.offerId!, unittest.equals('foo'));
    checkPrice(o.price!);
    unittest.expect(o.productTypeL1!, unittest.equals('foo'));
    unittest.expect(o.productTypeL2!, unittest.equals('foo'));
    unittest.expect(o.productTypeL3!, unittest.equals('foo'));
    unittest.expect(o.productTypeL4!, unittest.equals('foo'));
    unittest.expect(o.productTypeL5!, unittest.equals('foo'));
    unittest.expect(o.shippingLabel!, unittest.equals('foo'));
    unittest.expect(o.thumbnailLink!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterProductView--;
}

core.int buildCounterReportRow = 0;
api.ReportRow buildReportRow() {
  final o = api.ReportRow();
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    o.bestSellersBrandView = buildBestSellersBrandView();
    o.bestSellersProductClusterView = buildBestSellersProductClusterView();
    o.competitiveVisibilityBenchmarkView =
        buildCompetitiveVisibilityBenchmarkView();
    o.competitiveVisibilityCompetitorView =
        buildCompetitiveVisibilityCompetitorView();
    o.competitiveVisibilityTopMerchantView =
        buildCompetitiveVisibilityTopMerchantView();
    o.nonProductPerformanceView = buildNonProductPerformanceView();
    o.priceCompetitivenessProductView = buildPriceCompetitivenessProductView();
    o.priceInsightsProductView = buildPriceInsightsProductView();
    o.productPerformanceView = buildProductPerformanceView();
    o.productView = buildProductView();
  }
  buildCounterReportRow--;
  return o;
}

void checkReportRow(api.ReportRow o) {
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    checkBestSellersBrandView(o.bestSellersBrandView!);
    checkBestSellersProductClusterView(o.bestSellersProductClusterView!);
    checkCompetitiveVisibilityBenchmarkView(
      o.competitiveVisibilityBenchmarkView!,
    );
    checkCompetitiveVisibilityCompetitorView(
      o.competitiveVisibilityCompetitorView!,
    );
    checkCompetitiveVisibilityTopMerchantView(
      o.competitiveVisibilityTopMerchantView!,
    );
    checkNonProductPerformanceView(o.nonProductPerformanceView!);
    checkPriceCompetitivenessProductView(o.priceCompetitivenessProductView!);
    checkPriceInsightsProductView(o.priceInsightsProductView!);
    checkProductPerformanceView(o.productPerformanceView!);
    checkProductView(o.productView!);
  }
  buildCounterReportRow--;
}

core.int buildCounterSearchRequest = 0;
api.SearchRequest buildSearchRequest() {
  final o = api.SearchRequest();
  buildCounterSearchRequest++;
  if (buildCounterSearchRequest < 3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.query = 'foo';
  }
  buildCounterSearchRequest--;
  return o;
}

void checkSearchRequest(api.SearchRequest o) {
  buildCounterSearchRequest++;
  if (buildCounterSearchRequest < 3) {
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterSearchRequest--;
}

core.List<api.ReportRow> buildUnnamed6() => [
  buildReportRow(),
  buildReportRow(),
];

void checkUnnamed6(core.List<api.ReportRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRow(o[0]);
  checkReportRow(o[1]);
}

core.int buildCounterSearchResponse = 0;
api.SearchResponse buildSearchResponse() {
  final o = api.SearchResponse();
  buildCounterSearchResponse++;
  if (buildCounterSearchResponse < 3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed6();
  }
  buildCounterSearchResponse--;
  return o;
}

void checkSearchResponse(api.SearchResponse o) {
  buildCounterSearchResponse++;
  if (buildCounterSearchResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed6(o.results!);
  }
  buildCounterSearchResponse--;
}

void main() {
  unittest.group('obj-schema-BestSellersBrandView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBestSellersBrandView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BestSellersBrandView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBestSellersBrandView(od);
    });
  });

  unittest.group('obj-schema-BestSellersProductClusterView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBestSellersProductClusterView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BestSellersProductClusterView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBestSellersProductClusterView(od);
    });
  });

  unittest.group('obj-schema-CompetitiveVisibilityBenchmarkView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompetitiveVisibilityBenchmarkView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompetitiveVisibilityBenchmarkView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCompetitiveVisibilityBenchmarkView(od);
    });
  });

  unittest.group('obj-schema-CompetitiveVisibilityCompetitorView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompetitiveVisibilityCompetitorView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompetitiveVisibilityCompetitorView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCompetitiveVisibilityCompetitorView(od);
    });
  });

  unittest.group('obj-schema-CompetitiveVisibilityTopMerchantView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompetitiveVisibilityTopMerchantView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompetitiveVisibilityTopMerchantView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCompetitiveVisibilityTopMerchantView(od);
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

  unittest.group('obj-schema-IssueSeverityPerReportingContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIssueSeverityPerReportingContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IssueSeverityPerReportingContext.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIssueSeverityPerReportingContext(od);
    });
  });

  unittest.group('obj-schema-ItemIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemIssue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkItemIssue(od);
    });
  });

  unittest.group('obj-schema-ItemIssueSeverity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemIssueSeverity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemIssueSeverity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkItemIssueSeverity(od);
    });
  });

  unittest.group('obj-schema-ItemIssueType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemIssueType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemIssueType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkItemIssueType(od);
    });
  });

  unittest.group('obj-schema-NonProductPerformanceView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonProductPerformanceView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NonProductPerformanceView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNonProductPerformanceView(od);
    });
  });

  unittest.group('obj-schema-Price', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Price.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrice(od);
    });
  });

  unittest.group('obj-schema-PriceCompetitivenessProductView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPriceCompetitivenessProductView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PriceCompetitivenessProductView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPriceCompetitivenessProductView(od);
    });
  });

  unittest.group('obj-schema-PriceInsightsProductView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPriceInsightsProductView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PriceInsightsProductView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPriceInsightsProductView(od);
    });
  });

  unittest.group('obj-schema-ProductPerformanceView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductPerformanceView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductPerformanceView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductPerformanceView(od);
    });
  });

  unittest.group('obj-schema-ProductView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductView(od);
    });
  });

  unittest.group('obj-schema-ReportRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportRow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportRow(od);
    });
  });

  unittest.group('obj-schema-SearchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchRequest(od);
    });
  });

  unittest.group('obj-schema-SearchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchResponse(od);
    });
  });

  unittest.group('resource-AccountsReportsResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.reports;
      final arg_request = buildSearchRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SearchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSearchRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('reports/v1/'),
          );
          pathOffset += 11;
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
          final resp = convert.json.encode(buildSearchResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkSearchResponse(response as api.SearchResponse);
    });
  });
}
