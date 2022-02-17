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

import 'package:googleapis/searchconsole/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AmpIssue> buildUnnamed0() => [
      buildAmpIssue(),
      buildAmpIssue(),
    ];

void checkUnnamed0(core.List<api.AmpIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAmpIssue(o[0]);
  checkAmpIssue(o[1]);
}

core.int buildCounterAmpInspectionResult = 0;
api.AmpInspectionResult buildAmpInspectionResult() {
  final o = api.AmpInspectionResult();
  buildCounterAmpInspectionResult++;
  if (buildCounterAmpInspectionResult < 3) {
    o.ampIndexStatusVerdict = 'foo';
    o.ampUrl = 'foo';
    o.indexingState = 'foo';
    o.issues = buildUnnamed0();
    o.lastCrawlTime = 'foo';
    o.pageFetchState = 'foo';
    o.robotsTxtState = 'foo';
    o.verdict = 'foo';
  }
  buildCounterAmpInspectionResult--;
  return o;
}

void checkAmpInspectionResult(api.AmpInspectionResult o) {
  buildCounterAmpInspectionResult++;
  if (buildCounterAmpInspectionResult < 3) {
    unittest.expect(
      o.ampIndexStatusVerdict!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ampUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.indexingState!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.issues!);
    unittest.expect(
      o.lastCrawlTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageFetchState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.robotsTxtState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verdict!,
      unittest.equals('foo'),
    );
  }
  buildCounterAmpInspectionResult--;
}

core.int buildCounterAmpIssue = 0;
api.AmpIssue buildAmpIssue() {
  final o = api.AmpIssue();
  buildCounterAmpIssue++;
  if (buildCounterAmpIssue < 3) {
    o.issueMessage = 'foo';
    o.severity = 'foo';
  }
  buildCounterAmpIssue--;
  return o;
}

void checkAmpIssue(api.AmpIssue o) {
  buildCounterAmpIssue++;
  if (buildCounterAmpIssue < 3) {
    unittest.expect(
      o.issueMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterAmpIssue--;
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

core.int buildCounterApiDataRow = 0;
api.ApiDataRow buildApiDataRow() {
  final o = api.ApiDataRow();
  buildCounterApiDataRow++;
  if (buildCounterApiDataRow < 3) {
    o.clicks = 42.0;
    o.ctr = 42.0;
    o.impressions = 42.0;
    o.keys = buildUnnamed1();
    o.position = 42.0;
  }
  buildCounterApiDataRow--;
  return o;
}

void checkApiDataRow(api.ApiDataRow o) {
  buildCounterApiDataRow++;
  if (buildCounterApiDataRow < 3) {
    unittest.expect(
      o.clicks!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.ctr!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.impressions!,
      unittest.equals(42.0),
    );
    checkUnnamed1(o.keys!);
    unittest.expect(
      o.position!,
      unittest.equals(42.0),
    );
  }
  buildCounterApiDataRow--;
}

core.int buildCounterApiDimensionFilter = 0;
api.ApiDimensionFilter buildApiDimensionFilter() {
  final o = api.ApiDimensionFilter();
  buildCounterApiDimensionFilter++;
  if (buildCounterApiDimensionFilter < 3) {
    o.dimension = 'foo';
    o.expression = 'foo';
    o.operator = 'foo';
  }
  buildCounterApiDimensionFilter--;
  return o;
}

void checkApiDimensionFilter(api.ApiDimensionFilter o) {
  buildCounterApiDimensionFilter++;
  if (buildCounterApiDimensionFilter < 3) {
    unittest.expect(
      o.dimension!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
  }
  buildCounterApiDimensionFilter--;
}

core.List<api.ApiDimensionFilter> buildUnnamed2() => [
      buildApiDimensionFilter(),
      buildApiDimensionFilter(),
    ];

void checkUnnamed2(core.List<api.ApiDimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDimensionFilter(o[0]);
  checkApiDimensionFilter(o[1]);
}

core.int buildCounterApiDimensionFilterGroup = 0;
api.ApiDimensionFilterGroup buildApiDimensionFilterGroup() {
  final o = api.ApiDimensionFilterGroup();
  buildCounterApiDimensionFilterGroup++;
  if (buildCounterApiDimensionFilterGroup < 3) {
    o.filters = buildUnnamed2();
    o.groupType = 'foo';
  }
  buildCounterApiDimensionFilterGroup--;
  return o;
}

void checkApiDimensionFilterGroup(api.ApiDimensionFilterGroup o) {
  buildCounterApiDimensionFilterGroup++;
  if (buildCounterApiDimensionFilterGroup < 3) {
    checkUnnamed2(o.filters!);
    unittest.expect(
      o.groupType!,
      unittest.equals('foo'),
    );
  }
  buildCounterApiDimensionFilterGroup--;
}

core.int buildCounterBlockedResource = 0;
api.BlockedResource buildBlockedResource() {
  final o = api.BlockedResource();
  buildCounterBlockedResource++;
  if (buildCounterBlockedResource < 3) {
    o.url = 'foo';
  }
  buildCounterBlockedResource--;
  return o;
}

void checkBlockedResource(api.BlockedResource o) {
  buildCounterBlockedResource++;
  if (buildCounterBlockedResource < 3) {
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterBlockedResource--;
}

core.List<api.Item> buildUnnamed3() => [
      buildItem(),
      buildItem(),
    ];

void checkUnnamed3(core.List<api.Item> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItem(o[0]);
  checkItem(o[1]);
}

core.int buildCounterDetectedItems = 0;
api.DetectedItems buildDetectedItems() {
  final o = api.DetectedItems();
  buildCounterDetectedItems++;
  if (buildCounterDetectedItems < 3) {
    o.items = buildUnnamed3();
    o.richResultType = 'foo';
  }
  buildCounterDetectedItems--;
  return o;
}

void checkDetectedItems(api.DetectedItems o) {
  buildCounterDetectedItems++;
  if (buildCounterDetectedItems < 3) {
    checkUnnamed3(o.items!);
    unittest.expect(
      o.richResultType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDetectedItems--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  final o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.data = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterImage--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.int buildCounterIndexStatusInspectionResult = 0;
api.IndexStatusInspectionResult buildIndexStatusInspectionResult() {
  final o = api.IndexStatusInspectionResult();
  buildCounterIndexStatusInspectionResult++;
  if (buildCounterIndexStatusInspectionResult < 3) {
    o.coverageState = 'foo';
    o.crawledAs = 'foo';
    o.googleCanonical = 'foo';
    o.indexingState = 'foo';
    o.lastCrawlTime = 'foo';
    o.pageFetchState = 'foo';
    o.referringUrls = buildUnnamed4();
    o.robotsTxtState = 'foo';
    o.sitemap = buildUnnamed5();
    o.userCanonical = 'foo';
    o.verdict = 'foo';
  }
  buildCounterIndexStatusInspectionResult--;
  return o;
}

void checkIndexStatusInspectionResult(api.IndexStatusInspectionResult o) {
  buildCounterIndexStatusInspectionResult++;
  if (buildCounterIndexStatusInspectionResult < 3) {
    unittest.expect(
      o.coverageState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crawledAs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.googleCanonical!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.indexingState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastCrawlTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageFetchState!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.referringUrls!);
    unittest.expect(
      o.robotsTxtState!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.sitemap!);
    unittest.expect(
      o.userCanonical!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verdict!,
      unittest.equals('foo'),
    );
  }
  buildCounterIndexStatusInspectionResult--;
}

core.int buildCounterInspectUrlIndexRequest = 0;
api.InspectUrlIndexRequest buildInspectUrlIndexRequest() {
  final o = api.InspectUrlIndexRequest();
  buildCounterInspectUrlIndexRequest++;
  if (buildCounterInspectUrlIndexRequest < 3) {
    o.inspectionUrl = 'foo';
    o.languageCode = 'foo';
    o.siteUrl = 'foo';
  }
  buildCounterInspectUrlIndexRequest--;
  return o;
}

void checkInspectUrlIndexRequest(api.InspectUrlIndexRequest o) {
  buildCounterInspectUrlIndexRequest++;
  if (buildCounterInspectUrlIndexRequest < 3) {
    unittest.expect(
      o.inspectionUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterInspectUrlIndexRequest--;
}

core.int buildCounterInspectUrlIndexResponse = 0;
api.InspectUrlIndexResponse buildInspectUrlIndexResponse() {
  final o = api.InspectUrlIndexResponse();
  buildCounterInspectUrlIndexResponse++;
  if (buildCounterInspectUrlIndexResponse < 3) {
    o.inspectionResult = buildUrlInspectionResult();
  }
  buildCounterInspectUrlIndexResponse--;
  return o;
}

void checkInspectUrlIndexResponse(api.InspectUrlIndexResponse o) {
  buildCounterInspectUrlIndexResponse++;
  if (buildCounterInspectUrlIndexResponse < 3) {
    checkUrlInspectionResult(o.inspectionResult!);
  }
  buildCounterInspectUrlIndexResponse--;
}

core.List<api.RichResultsIssue> buildUnnamed6() => [
      buildRichResultsIssue(),
      buildRichResultsIssue(),
    ];

void checkUnnamed6(core.List<api.RichResultsIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRichResultsIssue(o[0]);
  checkRichResultsIssue(o[1]);
}

core.int buildCounterItem = 0;
api.Item buildItem() {
  final o = api.Item();
  buildCounterItem++;
  if (buildCounterItem < 3) {
    o.issues = buildUnnamed6();
    o.name = 'foo';
  }
  buildCounterItem--;
  return o;
}

void checkItem(api.Item o) {
  buildCounterItem++;
  if (buildCounterItem < 3) {
    checkUnnamed6(o.issues!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterItem--;
}

core.int buildCounterMobileFriendlyIssue = 0;
api.MobileFriendlyIssue buildMobileFriendlyIssue() {
  final o = api.MobileFriendlyIssue();
  buildCounterMobileFriendlyIssue++;
  if (buildCounterMobileFriendlyIssue < 3) {
    o.rule = 'foo';
  }
  buildCounterMobileFriendlyIssue--;
  return o;
}

void checkMobileFriendlyIssue(api.MobileFriendlyIssue o) {
  buildCounterMobileFriendlyIssue++;
  if (buildCounterMobileFriendlyIssue < 3) {
    unittest.expect(
      o.rule!,
      unittest.equals('foo'),
    );
  }
  buildCounterMobileFriendlyIssue--;
}

core.List<api.MobileUsabilityIssue> buildUnnamed7() => [
      buildMobileUsabilityIssue(),
      buildMobileUsabilityIssue(),
    ];

void checkUnnamed7(core.List<api.MobileUsabilityIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileUsabilityIssue(o[0]);
  checkMobileUsabilityIssue(o[1]);
}

core.int buildCounterMobileUsabilityInspectionResult = 0;
api.MobileUsabilityInspectionResult buildMobileUsabilityInspectionResult() {
  final o = api.MobileUsabilityInspectionResult();
  buildCounterMobileUsabilityInspectionResult++;
  if (buildCounterMobileUsabilityInspectionResult < 3) {
    o.issues = buildUnnamed7();
    o.verdict = 'foo';
  }
  buildCounterMobileUsabilityInspectionResult--;
  return o;
}

void checkMobileUsabilityInspectionResult(
    api.MobileUsabilityInspectionResult o) {
  buildCounterMobileUsabilityInspectionResult++;
  if (buildCounterMobileUsabilityInspectionResult < 3) {
    checkUnnamed7(o.issues!);
    unittest.expect(
      o.verdict!,
      unittest.equals('foo'),
    );
  }
  buildCounterMobileUsabilityInspectionResult--;
}

core.int buildCounterMobileUsabilityIssue = 0;
api.MobileUsabilityIssue buildMobileUsabilityIssue() {
  final o = api.MobileUsabilityIssue();
  buildCounterMobileUsabilityIssue++;
  if (buildCounterMobileUsabilityIssue < 3) {
    o.issueType = 'foo';
    o.message = 'foo';
    o.severity = 'foo';
  }
  buildCounterMobileUsabilityIssue--;
  return o;
}

void checkMobileUsabilityIssue(api.MobileUsabilityIssue o) {
  buildCounterMobileUsabilityIssue++;
  if (buildCounterMobileUsabilityIssue < 3) {
    unittest.expect(
      o.issueType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterMobileUsabilityIssue--;
}

core.int buildCounterResourceIssue = 0;
api.ResourceIssue buildResourceIssue() {
  final o = api.ResourceIssue();
  buildCounterResourceIssue++;
  if (buildCounterResourceIssue < 3) {
    o.blockedResource = buildBlockedResource();
  }
  buildCounterResourceIssue--;
  return o;
}

void checkResourceIssue(api.ResourceIssue o) {
  buildCounterResourceIssue++;
  if (buildCounterResourceIssue < 3) {
    checkBlockedResource(o.blockedResource!);
  }
  buildCounterResourceIssue--;
}

core.List<api.DetectedItems> buildUnnamed8() => [
      buildDetectedItems(),
      buildDetectedItems(),
    ];

void checkUnnamed8(core.List<api.DetectedItems> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetectedItems(o[0]);
  checkDetectedItems(o[1]);
}

core.int buildCounterRichResultsInspectionResult = 0;
api.RichResultsInspectionResult buildRichResultsInspectionResult() {
  final o = api.RichResultsInspectionResult();
  buildCounterRichResultsInspectionResult++;
  if (buildCounterRichResultsInspectionResult < 3) {
    o.detectedItems = buildUnnamed8();
    o.verdict = 'foo';
  }
  buildCounterRichResultsInspectionResult--;
  return o;
}

void checkRichResultsInspectionResult(api.RichResultsInspectionResult o) {
  buildCounterRichResultsInspectionResult++;
  if (buildCounterRichResultsInspectionResult < 3) {
    checkUnnamed8(o.detectedItems!);
    unittest.expect(
      o.verdict!,
      unittest.equals('foo'),
    );
  }
  buildCounterRichResultsInspectionResult--;
}

core.int buildCounterRichResultsIssue = 0;
api.RichResultsIssue buildRichResultsIssue() {
  final o = api.RichResultsIssue();
  buildCounterRichResultsIssue++;
  if (buildCounterRichResultsIssue < 3) {
    o.issueMessage = 'foo';
    o.severity = 'foo';
  }
  buildCounterRichResultsIssue--;
  return o;
}

void checkRichResultsIssue(api.RichResultsIssue o) {
  buildCounterRichResultsIssue++;
  if (buildCounterRichResultsIssue < 3) {
    unittest.expect(
      o.issueMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterRichResultsIssue--;
}

core.int buildCounterRunMobileFriendlyTestRequest = 0;
api.RunMobileFriendlyTestRequest buildRunMobileFriendlyTestRequest() {
  final o = api.RunMobileFriendlyTestRequest();
  buildCounterRunMobileFriendlyTestRequest++;
  if (buildCounterRunMobileFriendlyTestRequest < 3) {
    o.requestScreenshot = true;
    o.url = 'foo';
  }
  buildCounterRunMobileFriendlyTestRequest--;
  return o;
}

void checkRunMobileFriendlyTestRequest(api.RunMobileFriendlyTestRequest o) {
  buildCounterRunMobileFriendlyTestRequest++;
  if (buildCounterRunMobileFriendlyTestRequest < 3) {
    unittest.expect(o.requestScreenshot!, unittest.isTrue);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunMobileFriendlyTestRequest--;
}

core.List<api.MobileFriendlyIssue> buildUnnamed9() => [
      buildMobileFriendlyIssue(),
      buildMobileFriendlyIssue(),
    ];

void checkUnnamed9(core.List<api.MobileFriendlyIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileFriendlyIssue(o[0]);
  checkMobileFriendlyIssue(o[1]);
}

core.List<api.ResourceIssue> buildUnnamed10() => [
      buildResourceIssue(),
      buildResourceIssue(),
    ];

void checkUnnamed10(core.List<api.ResourceIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceIssue(o[0]);
  checkResourceIssue(o[1]);
}

core.int buildCounterRunMobileFriendlyTestResponse = 0;
api.RunMobileFriendlyTestResponse buildRunMobileFriendlyTestResponse() {
  final o = api.RunMobileFriendlyTestResponse();
  buildCounterRunMobileFriendlyTestResponse++;
  if (buildCounterRunMobileFriendlyTestResponse < 3) {
    o.mobileFriendliness = 'foo';
    o.mobileFriendlyIssues = buildUnnamed9();
    o.resourceIssues = buildUnnamed10();
    o.screenshot = buildImage();
    o.testStatus = buildTestStatus();
  }
  buildCounterRunMobileFriendlyTestResponse--;
  return o;
}

void checkRunMobileFriendlyTestResponse(api.RunMobileFriendlyTestResponse o) {
  buildCounterRunMobileFriendlyTestResponse++;
  if (buildCounterRunMobileFriendlyTestResponse < 3) {
    unittest.expect(
      o.mobileFriendliness!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.mobileFriendlyIssues!);
    checkUnnamed10(o.resourceIssues!);
    checkImage(o.screenshot!);
    checkTestStatus(o.testStatus!);
  }
  buildCounterRunMobileFriendlyTestResponse--;
}

core.List<api.ApiDimensionFilterGroup> buildUnnamed11() => [
      buildApiDimensionFilterGroup(),
      buildApiDimensionFilterGroup(),
    ];

void checkUnnamed11(core.List<api.ApiDimensionFilterGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDimensionFilterGroup(o[0]);
  checkApiDimensionFilterGroup(o[1]);
}

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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

core.int buildCounterSearchAnalyticsQueryRequest = 0;
api.SearchAnalyticsQueryRequest buildSearchAnalyticsQueryRequest() {
  final o = api.SearchAnalyticsQueryRequest();
  buildCounterSearchAnalyticsQueryRequest++;
  if (buildCounterSearchAnalyticsQueryRequest < 3) {
    o.aggregationType = 'foo';
    o.dataState = 'foo';
    o.dimensionFilterGroups = buildUnnamed11();
    o.dimensions = buildUnnamed12();
    o.endDate = 'foo';
    o.rowLimit = 42;
    o.searchType = 'foo';
    o.startDate = 'foo';
    o.startRow = 42;
    o.type = 'foo';
  }
  buildCounterSearchAnalyticsQueryRequest--;
  return o;
}

void checkSearchAnalyticsQueryRequest(api.SearchAnalyticsQueryRequest o) {
  buildCounterSearchAnalyticsQueryRequest++;
  if (buildCounterSearchAnalyticsQueryRequest < 3) {
    unittest.expect(
      o.aggregationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataState!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.dimensionFilterGroups!);
    checkUnnamed12(o.dimensions!);
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rowLimit!,
      unittest.equals(42),
    );
    unittest.expect(
      o.searchType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startRow!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchAnalyticsQueryRequest--;
}

core.List<api.ApiDataRow> buildUnnamed13() => [
      buildApiDataRow(),
      buildApiDataRow(),
    ];

void checkUnnamed13(core.List<api.ApiDataRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDataRow(o[0]);
  checkApiDataRow(o[1]);
}

core.int buildCounterSearchAnalyticsQueryResponse = 0;
api.SearchAnalyticsQueryResponse buildSearchAnalyticsQueryResponse() {
  final o = api.SearchAnalyticsQueryResponse();
  buildCounterSearchAnalyticsQueryResponse++;
  if (buildCounterSearchAnalyticsQueryResponse < 3) {
    o.responseAggregationType = 'foo';
    o.rows = buildUnnamed13();
  }
  buildCounterSearchAnalyticsQueryResponse--;
  return o;
}

void checkSearchAnalyticsQueryResponse(api.SearchAnalyticsQueryResponse o) {
  buildCounterSearchAnalyticsQueryResponse++;
  if (buildCounterSearchAnalyticsQueryResponse < 3) {
    unittest.expect(
      o.responseAggregationType!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.rows!);
  }
  buildCounterSearchAnalyticsQueryResponse--;
}

core.List<api.WmxSitemap> buildUnnamed14() => [
      buildWmxSitemap(),
      buildWmxSitemap(),
    ];

void checkUnnamed14(core.List<api.WmxSitemap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSitemap(o[0]);
  checkWmxSitemap(o[1]);
}

core.int buildCounterSitemapsListResponse = 0;
api.SitemapsListResponse buildSitemapsListResponse() {
  final o = api.SitemapsListResponse();
  buildCounterSitemapsListResponse++;
  if (buildCounterSitemapsListResponse < 3) {
    o.sitemap = buildUnnamed14();
  }
  buildCounterSitemapsListResponse--;
  return o;
}

void checkSitemapsListResponse(api.SitemapsListResponse o) {
  buildCounterSitemapsListResponse++;
  if (buildCounterSitemapsListResponse < 3) {
    checkUnnamed14(o.sitemap!);
  }
  buildCounterSitemapsListResponse--;
}

core.List<api.WmxSite> buildUnnamed15() => [
      buildWmxSite(),
      buildWmxSite(),
    ];

void checkUnnamed15(core.List<api.WmxSite> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSite(o[0]);
  checkWmxSite(o[1]);
}

core.int buildCounterSitesListResponse = 0;
api.SitesListResponse buildSitesListResponse() {
  final o = api.SitesListResponse();
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    o.siteEntry = buildUnnamed15();
  }
  buildCounterSitesListResponse--;
  return o;
}

void checkSitesListResponse(api.SitesListResponse o) {
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    checkUnnamed15(o.siteEntry!);
  }
  buildCounterSitesListResponse--;
}

core.int buildCounterTestStatus = 0;
api.TestStatus buildTestStatus() {
  final o = api.TestStatus();
  buildCounterTestStatus++;
  if (buildCounterTestStatus < 3) {
    o.details = 'foo';
    o.status = 'foo';
  }
  buildCounterTestStatus--;
  return o;
}

void checkTestStatus(api.TestStatus o) {
  buildCounterTestStatus++;
  if (buildCounterTestStatus < 3) {
    unittest.expect(
      o.details!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterTestStatus--;
}

core.int buildCounterUrlInspectionResult = 0;
api.UrlInspectionResult buildUrlInspectionResult() {
  final o = api.UrlInspectionResult();
  buildCounterUrlInspectionResult++;
  if (buildCounterUrlInspectionResult < 3) {
    o.ampResult = buildAmpInspectionResult();
    o.indexStatusResult = buildIndexStatusInspectionResult();
    o.inspectionResultLink = 'foo';
    o.mobileUsabilityResult = buildMobileUsabilityInspectionResult();
    o.richResultsResult = buildRichResultsInspectionResult();
  }
  buildCounterUrlInspectionResult--;
  return o;
}

void checkUrlInspectionResult(api.UrlInspectionResult o) {
  buildCounterUrlInspectionResult++;
  if (buildCounterUrlInspectionResult < 3) {
    checkAmpInspectionResult(o.ampResult!);
    checkIndexStatusInspectionResult(o.indexStatusResult!);
    unittest.expect(
      o.inspectionResultLink!,
      unittest.equals('foo'),
    );
    checkMobileUsabilityInspectionResult(o.mobileUsabilityResult!);
    checkRichResultsInspectionResult(o.richResultsResult!);
  }
  buildCounterUrlInspectionResult--;
}

core.int buildCounterWmxSite = 0;
api.WmxSite buildWmxSite() {
  final o = api.WmxSite();
  buildCounterWmxSite++;
  if (buildCounterWmxSite < 3) {
    o.permissionLevel = 'foo';
    o.siteUrl = 'foo';
  }
  buildCounterWmxSite--;
  return o;
}

void checkWmxSite(api.WmxSite o) {
  buildCounterWmxSite++;
  if (buildCounterWmxSite < 3) {
    unittest.expect(
      o.permissionLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterWmxSite--;
}

core.List<api.WmxSitemapContent> buildUnnamed16() => [
      buildWmxSitemapContent(),
      buildWmxSitemapContent(),
    ];

void checkUnnamed16(core.List<api.WmxSitemapContent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSitemapContent(o[0]);
  checkWmxSitemapContent(o[1]);
}

core.int buildCounterWmxSitemap = 0;
api.WmxSitemap buildWmxSitemap() {
  final o = api.WmxSitemap();
  buildCounterWmxSitemap++;
  if (buildCounterWmxSitemap < 3) {
    o.contents = buildUnnamed16();
    o.errors = 'foo';
    o.isPending = true;
    o.isSitemapsIndex = true;
    o.lastDownloaded = 'foo';
    o.lastSubmitted = 'foo';
    o.path = 'foo';
    o.type = 'foo';
    o.warnings = 'foo';
  }
  buildCounterWmxSitemap--;
  return o;
}

void checkWmxSitemap(api.WmxSitemap o) {
  buildCounterWmxSitemap++;
  if (buildCounterWmxSitemap < 3) {
    checkUnnamed16(o.contents!);
    unittest.expect(
      o.errors!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isPending!, unittest.isTrue);
    unittest.expect(o.isSitemapsIndex!, unittest.isTrue);
    unittest.expect(
      o.lastDownloaded!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastSubmitted!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.warnings!,
      unittest.equals('foo'),
    );
  }
  buildCounterWmxSitemap--;
}

core.int buildCounterWmxSitemapContent = 0;
api.WmxSitemapContent buildWmxSitemapContent() {
  final o = api.WmxSitemapContent();
  buildCounterWmxSitemapContent++;
  if (buildCounterWmxSitemapContent < 3) {
    o.indexed = 'foo';
    o.submitted = 'foo';
    o.type = 'foo';
  }
  buildCounterWmxSitemapContent--;
  return o;
}

void checkWmxSitemapContent(api.WmxSitemapContent o) {
  buildCounterWmxSitemapContent++;
  if (buildCounterWmxSitemapContent < 3) {
    unittest.expect(
      o.indexed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.submitted!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterWmxSitemapContent--;
}

void main() {
  unittest.group('obj-schema-AmpInspectionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAmpInspectionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AmpInspectionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAmpInspectionResult(od);
    });
  });

  unittest.group('obj-schema-AmpIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAmpIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AmpIssue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAmpIssue(od);
    });
  });

  unittest.group('obj-schema-ApiDataRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApiDataRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ApiDataRow.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApiDataRow(od);
    });
  });

  unittest.group('obj-schema-ApiDimensionFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApiDimensionFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApiDimensionFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApiDimensionFilter(od);
    });
  });

  unittest.group('obj-schema-ApiDimensionFilterGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApiDimensionFilterGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApiDimensionFilterGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApiDimensionFilterGroup(od);
    });
  });

  unittest.group('obj-schema-BlockedResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlockedResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BlockedResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBlockedResource(od);
    });
  });

  unittest.group('obj-schema-DetectedItems', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetectedItems();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetectedItems.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDetectedItems(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Image.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImage(od);
    });
  });

  unittest.group('obj-schema-IndexStatusInspectionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIndexStatusInspectionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IndexStatusInspectionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIndexStatusInspectionResult(od);
    });
  });

  unittest.group('obj-schema-InspectUrlIndexRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInspectUrlIndexRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InspectUrlIndexRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInspectUrlIndexRequest(od);
    });
  });

  unittest.group('obj-schema-InspectUrlIndexResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInspectUrlIndexResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InspectUrlIndexResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInspectUrlIndexResponse(od);
    });
  });

  unittest.group('obj-schema-Item', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Item.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkItem(od);
    });
  });

  unittest.group('obj-schema-MobileFriendlyIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileFriendlyIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobileFriendlyIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMobileFriendlyIssue(od);
    });
  });

  unittest.group('obj-schema-MobileUsabilityInspectionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileUsabilityInspectionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobileUsabilityInspectionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMobileUsabilityInspectionResult(od);
    });
  });

  unittest.group('obj-schema-MobileUsabilityIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileUsabilityIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobileUsabilityIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMobileUsabilityIssue(od);
    });
  });

  unittest.group('obj-schema-ResourceIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceIssue(od);
    });
  });

  unittest.group('obj-schema-RichResultsInspectionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRichResultsInspectionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RichResultsInspectionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRichResultsInspectionResult(od);
    });
  });

  unittest.group('obj-schema-RichResultsIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRichResultsIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RichResultsIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRichResultsIssue(od);
    });
  });

  unittest.group('obj-schema-RunMobileFriendlyTestRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunMobileFriendlyTestRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunMobileFriendlyTestRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunMobileFriendlyTestRequest(od);
    });
  });

  unittest.group('obj-schema-RunMobileFriendlyTestResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunMobileFriendlyTestResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunMobileFriendlyTestResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunMobileFriendlyTestResponse(od);
    });
  });

  unittest.group('obj-schema-SearchAnalyticsQueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchAnalyticsQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchAnalyticsQueryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchAnalyticsQueryRequest(od);
    });
  });

  unittest.group('obj-schema-SearchAnalyticsQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchAnalyticsQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchAnalyticsQueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchAnalyticsQueryResponse(od);
    });
  });

  unittest.group('obj-schema-SitemapsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSitemapsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SitemapsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSitemapsListResponse(od);
    });
  });

  unittest.group('obj-schema-SitesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSitesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SitesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSitesListResponse(od);
    });
  });

  unittest.group('obj-schema-TestStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TestStatus.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTestStatus(od);
    });
  });

  unittest.group('obj-schema-UrlInspectionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUrlInspectionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UrlInspectionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUrlInspectionResult(od);
    });
  });

  unittest.group('obj-schema-WmxSite', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWmxSite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WmxSite.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWmxSite(od);
    });
  });

  unittest.group('obj-schema-WmxSitemap', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWmxSitemap();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WmxSitemap.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWmxSitemap(od);
    });
  });

  unittest.group('obj-schema-WmxSitemapContent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWmxSitemapContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WmxSitemapContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWmxSitemapContent(od);
    });
  });

  unittest.group('resource-SearchanalyticsResource', () {
    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.SearchConsoleApi(mock).searchanalytics;
      final arg_request = buildSearchAnalyticsQueryRequest();
      final arg_siteUrl = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchAnalyticsQueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchAnalyticsQueryRequest(obj);

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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('webmasters/v3/sites/'),
        );
        pathOffset += 20;
        index = path.indexOf('/searchAnalytics/query', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_siteUrl'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('/searchAnalytics/query'),
        );
        pathOffset += 22;

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
        final resp = convert.json.encode(buildSearchAnalyticsQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.query(arg_request, arg_siteUrl, $fields: arg_$fields);
      checkSearchAnalyticsQueryResponse(
          response as api.SearchAnalyticsQueryResponse);
    });
  });

  unittest.group('resource-SitemapsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SearchConsoleApi(mock).sitemaps;
      final arg_siteUrl = 'foo';
      final arg_feedpath = 'foo';
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('webmasters/v3/sites/'),
        );
        pathOffset += 20;
        index = path.indexOf('/sitemaps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_siteUrl'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/sitemaps/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_feedpath'),
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_siteUrl, arg_feedpath, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SearchConsoleApi(mock).sitemaps;
      final arg_siteUrl = 'foo';
      final arg_feedpath = 'foo';
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('webmasters/v3/sites/'),
        );
        pathOffset += 20;
        index = path.indexOf('/sitemaps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_siteUrl'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/sitemaps/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_feedpath'),
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
        final resp = convert.json.encode(buildWmxSitemap());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_siteUrl, arg_feedpath, $fields: arg_$fields);
      checkWmxSitemap(response as api.WmxSitemap);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SearchConsoleApi(mock).sitemaps;
      final arg_siteUrl = 'foo';
      final arg_sitemapIndex = 'foo';
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('webmasters/v3/sites/'),
        );
        pathOffset += 20;
        index = path.indexOf('/sitemaps', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_siteUrl'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/sitemaps'),
        );
        pathOffset += 9;

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
          queryMap['sitemapIndex']!.first,
          unittest.equals(arg_sitemapIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSitemapsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_siteUrl,
          sitemapIndex: arg_sitemapIndex, $fields: arg_$fields);
      checkSitemapsListResponse(response as api.SitemapsListResponse);
    });

    unittest.test('method--submit', () async {
      final mock = HttpServerMock();
      final res = api.SearchConsoleApi(mock).sitemaps;
      final arg_siteUrl = 'foo';
      final arg_feedpath = 'foo';
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('webmasters/v3/sites/'),
        );
        pathOffset += 20;
        index = path.indexOf('/sitemaps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_siteUrl'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/sitemaps/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_feedpath'),
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.submit(arg_siteUrl, arg_feedpath, $fields: arg_$fields);
    });
  });

  unittest.group('resource-SitesResource', () {
    unittest.test('method--add', () async {
      final mock = HttpServerMock();
      final res = api.SearchConsoleApi(mock).sites;
      final arg_siteUrl = 'foo';
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('webmasters/v3/sites/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_siteUrl'),
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.add(arg_siteUrl, $fields: arg_$fields);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SearchConsoleApi(mock).sites;
      final arg_siteUrl = 'foo';
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('webmasters/v3/sites/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_siteUrl'),
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_siteUrl, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SearchConsoleApi(mock).sites;
      final arg_siteUrl = 'foo';
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('webmasters/v3/sites/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_siteUrl'),
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
        final resp = convert.json.encode(buildWmxSite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_siteUrl, $fields: arg_$fields);
      checkWmxSite(response as api.WmxSite);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SearchConsoleApi(mock).sites;
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('webmasters/v3/sites'),
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
        final resp = convert.json.encode(buildSitesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list($fields: arg_$fields);
      checkSitesListResponse(response as api.SitesListResponse);
    });
  });

  unittest.group('resource-UrlInspectionIndexResource', () {
    unittest.test('method--inspect', () async {
      final mock = HttpServerMock();
      final res = api.SearchConsoleApi(mock).urlInspection.index;
      final arg_request = buildInspectUrlIndexRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InspectUrlIndexRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInspectUrlIndexRequest(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('v1/urlInspection/index:inspect'),
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
        final resp = convert.json.encode(buildInspectUrlIndexResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.inspect(arg_request, $fields: arg_$fields);
      checkInspectUrlIndexResponse(response as api.InspectUrlIndexResponse);
    });
  });

  unittest.group('resource-UrlTestingToolsMobileFriendlyTestResource', () {
    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.SearchConsoleApi(mock).urlTestingTools.mobileFriendlyTest;
      final arg_request = buildRunMobileFriendlyTestRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RunMobileFriendlyTestRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunMobileFriendlyTestRequest(obj);

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
          path.substring(pathOffset, pathOffset + 41),
          unittest.equals('v1/urlTestingTools/mobileFriendlyTest:run'),
        );
        pathOffset += 41;

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
        final resp = convert.json.encode(buildRunMobileFriendlyTestResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.run(arg_request, $fields: arg_$fields);
      checkRunMobileFriendlyTestResponse(
          response as api.RunMobileFriendlyTestResponse);
    });
  });
}
