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

import 'package:googleapis/admob/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed7656() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7656(core.List<core.String> o) {
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

core.int buildCounterAdUnit = 0;
api.AdUnit buildAdUnit() {
  final o = api.AdUnit();
  buildCounterAdUnit++;
  if (buildCounterAdUnit < 3) {
    o.adFormat = 'foo';
    o.adTypes = buildUnnamed7656();
    o.adUnitId = 'foo';
    o.appId = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterAdUnit--;
  return o;
}

void checkAdUnit(api.AdUnit o) {
  buildCounterAdUnit++;
  if (buildCounterAdUnit < 3) {
    unittest.expect(
      o.adFormat!,
      unittest.equals('foo'),
    );
    checkUnnamed7656(o.adTypes!);
    unittest.expect(
      o.adUnitId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appId!,
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
  }
  buildCounterAdUnit--;
}

core.int buildCounterApp = 0;
api.App buildApp() {
  final o = api.App();
  buildCounterApp++;
  if (buildCounterApp < 3) {
    o.appId = 'foo';
    o.linkedAppInfo = buildAppLinkedAppInfo();
    o.manualAppInfo = buildAppManualAppInfo();
    o.name = 'foo';
    o.platform = 'foo';
  }
  buildCounterApp--;
  return o;
}

void checkApp(api.App o) {
  buildCounterApp++;
  if (buildCounterApp < 3) {
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    checkAppLinkedAppInfo(o.linkedAppInfo!);
    checkAppManualAppInfo(o.manualAppInfo!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platform!,
      unittest.equals('foo'),
    );
  }
  buildCounterApp--;
}

core.int buildCounterAppLinkedAppInfo = 0;
api.AppLinkedAppInfo buildAppLinkedAppInfo() {
  final o = api.AppLinkedAppInfo();
  buildCounterAppLinkedAppInfo++;
  if (buildCounterAppLinkedAppInfo < 3) {
    o.appStoreId = 'foo';
    o.displayName = 'foo';
  }
  buildCounterAppLinkedAppInfo--;
  return o;
}

void checkAppLinkedAppInfo(api.AppLinkedAppInfo o) {
  buildCounterAppLinkedAppInfo++;
  if (buildCounterAppLinkedAppInfo < 3) {
    unittest.expect(
      o.appStoreId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppLinkedAppInfo--;
}

core.int buildCounterAppManualAppInfo = 0;
api.AppManualAppInfo buildAppManualAppInfo() {
  final o = api.AppManualAppInfo();
  buildCounterAppManualAppInfo++;
  if (buildCounterAppManualAppInfo < 3) {
    o.displayName = 'foo';
  }
  buildCounterAppManualAppInfo--;
  return o;
}

void checkAppManualAppInfo(api.AppManualAppInfo o) {
  buildCounterAppManualAppInfo++;
  if (buildCounterAppManualAppInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppManualAppInfo--;
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
  buildCounterDate--;
}

core.int buildCounterDateRange = 0;
api.DateRange buildDateRange() {
  final o = api.DateRange();
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    o.endDate = buildDate();
    o.startDate = buildDate();
  }
  buildCounterDateRange--;
  return o;
}

void checkDateRange(api.DateRange o) {
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    checkDate(o.endDate!);
    checkDate(o.startDate!);
  }
  buildCounterDateRange--;
}

core.int buildCounterGenerateMediationReportRequest = 0;
api.GenerateMediationReportRequest buildGenerateMediationReportRequest() {
  final o = api.GenerateMediationReportRequest();
  buildCounterGenerateMediationReportRequest++;
  if (buildCounterGenerateMediationReportRequest < 3) {
    o.reportSpec = buildMediationReportSpec();
  }
  buildCounterGenerateMediationReportRequest--;
  return o;
}

void checkGenerateMediationReportRequest(api.GenerateMediationReportRequest o) {
  buildCounterGenerateMediationReportRequest++;
  if (buildCounterGenerateMediationReportRequest < 3) {
    checkMediationReportSpec(o.reportSpec!);
  }
  buildCounterGenerateMediationReportRequest--;
}

core.int buildCounterGenerateMediationReportResponse = 0;
api.GenerateMediationReportResponse buildGenerateMediationReportResponse() {
  final o = api.GenerateMediationReportResponse();
  buildCounterGenerateMediationReportResponse++;
  if (buildCounterGenerateMediationReportResponse < 3) {
    o.footer = buildReportFooter();
    o.header = buildReportHeader();
    o.row = buildReportRow();
  }
  buildCounterGenerateMediationReportResponse--;
  return o;
}

void checkGenerateMediationReportResponse(
    api.GenerateMediationReportResponse o) {
  buildCounterGenerateMediationReportResponse++;
  if (buildCounterGenerateMediationReportResponse < 3) {
    checkReportFooter(o.footer!);
    checkReportHeader(o.header!);
    checkReportRow(o.row!);
  }
  buildCounterGenerateMediationReportResponse--;
}

core.int buildCounterGenerateNetworkReportRequest = 0;
api.GenerateNetworkReportRequest buildGenerateNetworkReportRequest() {
  final o = api.GenerateNetworkReportRequest();
  buildCounterGenerateNetworkReportRequest++;
  if (buildCounterGenerateNetworkReportRequest < 3) {
    o.reportSpec = buildNetworkReportSpec();
  }
  buildCounterGenerateNetworkReportRequest--;
  return o;
}

void checkGenerateNetworkReportRequest(api.GenerateNetworkReportRequest o) {
  buildCounterGenerateNetworkReportRequest++;
  if (buildCounterGenerateNetworkReportRequest < 3) {
    checkNetworkReportSpec(o.reportSpec!);
  }
  buildCounterGenerateNetworkReportRequest--;
}

core.int buildCounterGenerateNetworkReportResponse = 0;
api.GenerateNetworkReportResponse buildGenerateNetworkReportResponse() {
  final o = api.GenerateNetworkReportResponse();
  buildCounterGenerateNetworkReportResponse++;
  if (buildCounterGenerateNetworkReportResponse < 3) {
    o.footer = buildReportFooter();
    o.header = buildReportHeader();
    o.row = buildReportRow();
  }
  buildCounterGenerateNetworkReportResponse--;
  return o;
}

void checkGenerateNetworkReportResponse(api.GenerateNetworkReportResponse o) {
  buildCounterGenerateNetworkReportResponse++;
  if (buildCounterGenerateNetworkReportResponse < 3) {
    checkReportFooter(o.footer!);
    checkReportHeader(o.header!);
    checkReportRow(o.row!);
  }
  buildCounterGenerateNetworkReportResponse--;
}

core.List<api.AdUnit> buildUnnamed7657() {
  final o = <api.AdUnit>[];
  o.add(buildAdUnit());
  o.add(buildAdUnit());
  return o;
}

void checkUnnamed7657(core.List<api.AdUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdUnit(o[0]);
  checkAdUnit(o[1]);
}

core.int buildCounterListAdUnitsResponse = 0;
api.ListAdUnitsResponse buildListAdUnitsResponse() {
  final o = api.ListAdUnitsResponse();
  buildCounterListAdUnitsResponse++;
  if (buildCounterListAdUnitsResponse < 3) {
    o.adUnits = buildUnnamed7657();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdUnitsResponse--;
  return o;
}

void checkListAdUnitsResponse(api.ListAdUnitsResponse o) {
  buildCounterListAdUnitsResponse++;
  if (buildCounterListAdUnitsResponse < 3) {
    checkUnnamed7657(o.adUnits!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAdUnitsResponse--;
}

core.List<api.App> buildUnnamed7658() {
  final o = <api.App>[];
  o.add(buildApp());
  o.add(buildApp());
  return o;
}

void checkUnnamed7658(core.List<api.App> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApp(o[0]);
  checkApp(o[1]);
}

core.int buildCounterListAppsResponse = 0;
api.ListAppsResponse buildListAppsResponse() {
  final o = api.ListAppsResponse();
  buildCounterListAppsResponse++;
  if (buildCounterListAppsResponse < 3) {
    o.apps = buildUnnamed7658();
    o.nextPageToken = 'foo';
  }
  buildCounterListAppsResponse--;
  return o;
}

void checkListAppsResponse(api.ListAppsResponse o) {
  buildCounterListAppsResponse++;
  if (buildCounterListAppsResponse < 3) {
    checkUnnamed7658(o.apps!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAppsResponse--;
}

core.List<api.PublisherAccount> buildUnnamed7659() {
  final o = <api.PublisherAccount>[];
  o.add(buildPublisherAccount());
  o.add(buildPublisherAccount());
  return o;
}

void checkUnnamed7659(core.List<api.PublisherAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherAccount(o[0]);
  checkPublisherAccount(o[1]);
}

core.int buildCounterListPublisherAccountsResponse = 0;
api.ListPublisherAccountsResponse buildListPublisherAccountsResponse() {
  final o = api.ListPublisherAccountsResponse();
  buildCounterListPublisherAccountsResponse++;
  if (buildCounterListPublisherAccountsResponse < 3) {
    o.account = buildUnnamed7659();
    o.nextPageToken = 'foo';
  }
  buildCounterListPublisherAccountsResponse--;
  return o;
}

void checkListPublisherAccountsResponse(api.ListPublisherAccountsResponse o) {
  buildCounterListPublisherAccountsResponse++;
  if (buildCounterListPublisherAccountsResponse < 3) {
    checkUnnamed7659(o.account!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListPublisherAccountsResponse--;
}

core.int buildCounterLocalizationSettings = 0;
api.LocalizationSettings buildLocalizationSettings() {
  final o = api.LocalizationSettings();
  buildCounterLocalizationSettings++;
  if (buildCounterLocalizationSettings < 3) {
    o.currencyCode = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterLocalizationSettings--;
  return o;
}

void checkLocalizationSettings(api.LocalizationSettings o) {
  buildCounterLocalizationSettings++;
  if (buildCounterLocalizationSettings < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocalizationSettings--;
}

core.List<api.MediationReportSpecDimensionFilter> buildUnnamed7660() {
  final o = <api.MediationReportSpecDimensionFilter>[];
  o.add(buildMediationReportSpecDimensionFilter());
  o.add(buildMediationReportSpecDimensionFilter());
  return o;
}

void checkUnnamed7660(core.List<api.MediationReportSpecDimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMediationReportSpecDimensionFilter(o[0]);
  checkMediationReportSpecDimensionFilter(o[1]);
}

core.List<core.String> buildUnnamed7661() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7661(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7662() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7662(core.List<core.String> o) {
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

core.List<api.MediationReportSpecSortCondition> buildUnnamed7663() {
  final o = <api.MediationReportSpecSortCondition>[];
  o.add(buildMediationReportSpecSortCondition());
  o.add(buildMediationReportSpecSortCondition());
  return o;
}

void checkUnnamed7663(core.List<api.MediationReportSpecSortCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMediationReportSpecSortCondition(o[0]);
  checkMediationReportSpecSortCondition(o[1]);
}

core.int buildCounterMediationReportSpec = 0;
api.MediationReportSpec buildMediationReportSpec() {
  final o = api.MediationReportSpec();
  buildCounterMediationReportSpec++;
  if (buildCounterMediationReportSpec < 3) {
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed7660();
    o.dimensions = buildUnnamed7661();
    o.localizationSettings = buildLocalizationSettings();
    o.maxReportRows = 42;
    o.metrics = buildUnnamed7662();
    o.sortConditions = buildUnnamed7663();
    o.timeZone = 'foo';
  }
  buildCounterMediationReportSpec--;
  return o;
}

void checkMediationReportSpec(api.MediationReportSpec o) {
  buildCounterMediationReportSpec++;
  if (buildCounterMediationReportSpec < 3) {
    checkDateRange(o.dateRange!);
    checkUnnamed7660(o.dimensionFilters!);
    checkUnnamed7661(o.dimensions!);
    checkLocalizationSettings(o.localizationSettings!);
    unittest.expect(
      o.maxReportRows!,
      unittest.equals(42),
    );
    checkUnnamed7662(o.metrics!);
    checkUnnamed7663(o.sortConditions!);
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterMediationReportSpec--;
}

core.int buildCounterMediationReportSpecDimensionFilter = 0;
api.MediationReportSpecDimensionFilter
    buildMediationReportSpecDimensionFilter() {
  final o = api.MediationReportSpecDimensionFilter();
  buildCounterMediationReportSpecDimensionFilter++;
  if (buildCounterMediationReportSpecDimensionFilter < 3) {
    o.dimension = 'foo';
    o.matchesAny = buildStringList();
  }
  buildCounterMediationReportSpecDimensionFilter--;
  return o;
}

void checkMediationReportSpecDimensionFilter(
    api.MediationReportSpecDimensionFilter o) {
  buildCounterMediationReportSpecDimensionFilter++;
  if (buildCounterMediationReportSpecDimensionFilter < 3) {
    unittest.expect(
      o.dimension!,
      unittest.equals('foo'),
    );
    checkStringList(o.matchesAny!);
  }
  buildCounterMediationReportSpecDimensionFilter--;
}

core.int buildCounterMediationReportSpecSortCondition = 0;
api.MediationReportSpecSortCondition buildMediationReportSpecSortCondition() {
  final o = api.MediationReportSpecSortCondition();
  buildCounterMediationReportSpecSortCondition++;
  if (buildCounterMediationReportSpecSortCondition < 3) {
    o.dimension = 'foo';
    o.metric = 'foo';
    o.order = 'foo';
  }
  buildCounterMediationReportSpecSortCondition--;
  return o;
}

void checkMediationReportSpecSortCondition(
    api.MediationReportSpecSortCondition o) {
  buildCounterMediationReportSpecSortCondition++;
  if (buildCounterMediationReportSpecSortCondition < 3) {
    unittest.expect(
      o.dimension!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metric!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.order!,
      unittest.equals('foo'),
    );
  }
  buildCounterMediationReportSpecSortCondition--;
}

core.List<api.NetworkReportSpecDimensionFilter> buildUnnamed7664() {
  final o = <api.NetworkReportSpecDimensionFilter>[];
  o.add(buildNetworkReportSpecDimensionFilter());
  o.add(buildNetworkReportSpecDimensionFilter());
  return o;
}

void checkUnnamed7664(core.List<api.NetworkReportSpecDimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkReportSpecDimensionFilter(o[0]);
  checkNetworkReportSpecDimensionFilter(o[1]);
}

core.List<core.String> buildUnnamed7665() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7665(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7666() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7666(core.List<core.String> o) {
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

core.List<api.NetworkReportSpecSortCondition> buildUnnamed7667() {
  final o = <api.NetworkReportSpecSortCondition>[];
  o.add(buildNetworkReportSpecSortCondition());
  o.add(buildNetworkReportSpecSortCondition());
  return o;
}

void checkUnnamed7667(core.List<api.NetworkReportSpecSortCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkReportSpecSortCondition(o[0]);
  checkNetworkReportSpecSortCondition(o[1]);
}

core.int buildCounterNetworkReportSpec = 0;
api.NetworkReportSpec buildNetworkReportSpec() {
  final o = api.NetworkReportSpec();
  buildCounterNetworkReportSpec++;
  if (buildCounterNetworkReportSpec < 3) {
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed7664();
    o.dimensions = buildUnnamed7665();
    o.localizationSettings = buildLocalizationSettings();
    o.maxReportRows = 42;
    o.metrics = buildUnnamed7666();
    o.sortConditions = buildUnnamed7667();
    o.timeZone = 'foo';
  }
  buildCounterNetworkReportSpec--;
  return o;
}

void checkNetworkReportSpec(api.NetworkReportSpec o) {
  buildCounterNetworkReportSpec++;
  if (buildCounterNetworkReportSpec < 3) {
    checkDateRange(o.dateRange!);
    checkUnnamed7664(o.dimensionFilters!);
    checkUnnamed7665(o.dimensions!);
    checkLocalizationSettings(o.localizationSettings!);
    unittest.expect(
      o.maxReportRows!,
      unittest.equals(42),
    );
    checkUnnamed7666(o.metrics!);
    checkUnnamed7667(o.sortConditions!);
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkReportSpec--;
}

core.int buildCounterNetworkReportSpecDimensionFilter = 0;
api.NetworkReportSpecDimensionFilter buildNetworkReportSpecDimensionFilter() {
  final o = api.NetworkReportSpecDimensionFilter();
  buildCounterNetworkReportSpecDimensionFilter++;
  if (buildCounterNetworkReportSpecDimensionFilter < 3) {
    o.dimension = 'foo';
    o.matchesAny = buildStringList();
  }
  buildCounterNetworkReportSpecDimensionFilter--;
  return o;
}

void checkNetworkReportSpecDimensionFilter(
    api.NetworkReportSpecDimensionFilter o) {
  buildCounterNetworkReportSpecDimensionFilter++;
  if (buildCounterNetworkReportSpecDimensionFilter < 3) {
    unittest.expect(
      o.dimension!,
      unittest.equals('foo'),
    );
    checkStringList(o.matchesAny!);
  }
  buildCounterNetworkReportSpecDimensionFilter--;
}

core.int buildCounterNetworkReportSpecSortCondition = 0;
api.NetworkReportSpecSortCondition buildNetworkReportSpecSortCondition() {
  final o = api.NetworkReportSpecSortCondition();
  buildCounterNetworkReportSpecSortCondition++;
  if (buildCounterNetworkReportSpecSortCondition < 3) {
    o.dimension = 'foo';
    o.metric = 'foo';
    o.order = 'foo';
  }
  buildCounterNetworkReportSpecSortCondition--;
  return o;
}

void checkNetworkReportSpecSortCondition(api.NetworkReportSpecSortCondition o) {
  buildCounterNetworkReportSpecSortCondition++;
  if (buildCounterNetworkReportSpecSortCondition < 3) {
    unittest.expect(
      o.dimension!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metric!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.order!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkReportSpecSortCondition--;
}

core.int buildCounterPublisherAccount = 0;
api.PublisherAccount buildPublisherAccount() {
  final o = api.PublisherAccount();
  buildCounterPublisherAccount++;
  if (buildCounterPublisherAccount < 3) {
    o.currencyCode = 'foo';
    o.name = 'foo';
    o.publisherId = 'foo';
    o.reportingTimeZone = 'foo';
  }
  buildCounterPublisherAccount--;
  return o;
}

void checkPublisherAccount(api.PublisherAccount o) {
  buildCounterPublisherAccount++;
  if (buildCounterPublisherAccount < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisherId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportingTimeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterPublisherAccount--;
}

core.List<api.ReportWarning> buildUnnamed7668() {
  final o = <api.ReportWarning>[];
  o.add(buildReportWarning());
  o.add(buildReportWarning());
  return o;
}

void checkUnnamed7668(core.List<api.ReportWarning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportWarning(o[0]);
  checkReportWarning(o[1]);
}

core.int buildCounterReportFooter = 0;
api.ReportFooter buildReportFooter() {
  final o = api.ReportFooter();
  buildCounterReportFooter++;
  if (buildCounterReportFooter < 3) {
    o.matchingRowCount = 'foo';
    o.warnings = buildUnnamed7668();
  }
  buildCounterReportFooter--;
  return o;
}

void checkReportFooter(api.ReportFooter o) {
  buildCounterReportFooter++;
  if (buildCounterReportFooter < 3) {
    unittest.expect(
      o.matchingRowCount!,
      unittest.equals('foo'),
    );
    checkUnnamed7668(o.warnings!);
  }
  buildCounterReportFooter--;
}

core.int buildCounterReportHeader = 0;
api.ReportHeader buildReportHeader() {
  final o = api.ReportHeader();
  buildCounterReportHeader++;
  if (buildCounterReportHeader < 3) {
    o.dateRange = buildDateRange();
    o.localizationSettings = buildLocalizationSettings();
    o.reportingTimeZone = 'foo';
  }
  buildCounterReportHeader--;
  return o;
}

void checkReportHeader(api.ReportHeader o) {
  buildCounterReportHeader++;
  if (buildCounterReportHeader < 3) {
    checkDateRange(o.dateRange!);
    checkLocalizationSettings(o.localizationSettings!);
    unittest.expect(
      o.reportingTimeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportHeader--;
}

core.Map<core.String, api.ReportRowDimensionValue> buildUnnamed7669() {
  final o = <core.String, api.ReportRowDimensionValue>{};
  o['x'] = buildReportRowDimensionValue();
  o['y'] = buildReportRowDimensionValue();
  return o;
}

void checkUnnamed7669(core.Map<core.String, api.ReportRowDimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRowDimensionValue(o['x']!);
  checkReportRowDimensionValue(o['y']!);
}

core.Map<core.String, api.ReportRowMetricValue> buildUnnamed7670() {
  final o = <core.String, api.ReportRowMetricValue>{};
  o['x'] = buildReportRowMetricValue();
  o['y'] = buildReportRowMetricValue();
  return o;
}

void checkUnnamed7670(core.Map<core.String, api.ReportRowMetricValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRowMetricValue(o['x']!);
  checkReportRowMetricValue(o['y']!);
}

core.int buildCounterReportRow = 0;
api.ReportRow buildReportRow() {
  final o = api.ReportRow();
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    o.dimensionValues = buildUnnamed7669();
    o.metricValues = buildUnnamed7670();
  }
  buildCounterReportRow--;
  return o;
}

void checkReportRow(api.ReportRow o) {
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    checkUnnamed7669(o.dimensionValues!);
    checkUnnamed7670(o.metricValues!);
  }
  buildCounterReportRow--;
}

core.int buildCounterReportRowDimensionValue = 0;
api.ReportRowDimensionValue buildReportRowDimensionValue() {
  final o = api.ReportRowDimensionValue();
  buildCounterReportRowDimensionValue++;
  if (buildCounterReportRowDimensionValue < 3) {
    o.displayLabel = 'foo';
    o.value = 'foo';
  }
  buildCounterReportRowDimensionValue--;
  return o;
}

void checkReportRowDimensionValue(api.ReportRowDimensionValue o) {
  buildCounterReportRowDimensionValue++;
  if (buildCounterReportRowDimensionValue < 3) {
    unittest.expect(
      o.displayLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportRowDimensionValue--;
}

core.int buildCounterReportRowMetricValue = 0;
api.ReportRowMetricValue buildReportRowMetricValue() {
  final o = api.ReportRowMetricValue();
  buildCounterReportRowMetricValue++;
  if (buildCounterReportRowMetricValue < 3) {
    o.doubleValue = 42.0;
    o.integerValue = 'foo';
    o.microsValue = 'foo';
  }
  buildCounterReportRowMetricValue--;
  return o;
}

void checkReportRowMetricValue(api.ReportRowMetricValue o) {
  buildCounterReportRowMetricValue++;
  if (buildCounterReportRowMetricValue < 3) {
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.integerValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.microsValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportRowMetricValue--;
}

core.int buildCounterReportWarning = 0;
api.ReportWarning buildReportWarning() {
  final o = api.ReportWarning();
  buildCounterReportWarning++;
  if (buildCounterReportWarning < 3) {
    o.description = 'foo';
    o.type = 'foo';
  }
  buildCounterReportWarning--;
  return o;
}

void checkReportWarning(api.ReportWarning o) {
  buildCounterReportWarning++;
  if (buildCounterReportWarning < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportWarning--;
}

core.List<core.String> buildUnnamed7671() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7671(core.List<core.String> o) {
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

core.int buildCounterStringList = 0;
api.StringList buildStringList() {
  final o = api.StringList();
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    o.values = buildUnnamed7671();
  }
  buildCounterStringList--;
  return o;
}

void checkStringList(api.StringList o) {
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    checkUnnamed7671(o.values!);
  }
  buildCounterStringList--;
}

void main() {
  unittest.group('obj-schema-AdUnit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdUnit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AdUnit.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAdUnit(od);
    });
  });

  unittest.group('obj-schema-App', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.App.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApp(od);
    });
  });

  unittest.group('obj-schema-AppLinkedAppInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppLinkedAppInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppLinkedAppInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppLinkedAppInfo(od);
    });
  });

  unittest.group('obj-schema-AppManualAppInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppManualAppInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppManualAppInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppManualAppInfo(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DateRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DateRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDateRange(od);
    });
  });

  unittest.group('obj-schema-GenerateMediationReportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateMediationReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateMediationReportRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateMediationReportRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateMediationReportResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateMediationReportResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateMediationReportResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateMediationReportResponse(od);
    });
  });

  unittest.group('obj-schema-GenerateNetworkReportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateNetworkReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateNetworkReportRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateNetworkReportRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateNetworkReportResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateNetworkReportResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateNetworkReportResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateNetworkReportResponse(od);
    });
  });

  unittest.group('obj-schema-ListAdUnitsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAdUnitsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAdUnitsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAdUnitsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAppsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAppsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAppsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAppsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPublisherAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPublisherAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPublisherAccountsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPublisherAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-LocalizationSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalizationSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalizationSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalizationSettings(od);
    });
  });

  unittest.group('obj-schema-MediationReportSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediationReportSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediationReportSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMediationReportSpec(od);
    });
  });

  unittest.group('obj-schema-MediationReportSpecDimensionFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediationReportSpecDimensionFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediationReportSpecDimensionFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMediationReportSpecDimensionFilter(od);
    });
  });

  unittest.group('obj-schema-MediationReportSpecSortCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediationReportSpecSortCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediationReportSpecSortCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMediationReportSpecSortCondition(od);
    });
  });

  unittest.group('obj-schema-NetworkReportSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkReportSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkReportSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkReportSpec(od);
    });
  });

  unittest.group('obj-schema-NetworkReportSpecDimensionFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkReportSpecDimensionFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkReportSpecDimensionFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkReportSpecDimensionFilter(od);
    });
  });

  unittest.group('obj-schema-NetworkReportSpecSortCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkReportSpecSortCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkReportSpecSortCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkReportSpecSortCondition(od);
    });
  });

  unittest.group('obj-schema-PublisherAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublisherAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublisherAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPublisherAccount(od);
    });
  });

  unittest.group('obj-schema-ReportFooter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportFooter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportFooter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportFooter(od);
    });
  });

  unittest.group('obj-schema-ReportHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportHeader(od);
    });
  });

  unittest.group('obj-schema-ReportRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ReportRow.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReportRow(od);
    });
  });

  unittest.group('obj-schema-ReportRowDimensionValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRowDimensionValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportRowDimensionValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportRowDimensionValue(od);
    });
  });

  unittest.group('obj-schema-ReportRowMetricValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRowMetricValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportRowMetricValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportRowMetricValue(od);
    });
  });

  unittest.group('obj-schema-ReportWarning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportWarning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportWarning.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportWarning(od);
    });
  });

  unittest.group('obj-schema-StringList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStringList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.StringList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStringList(od);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildPublisherAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPublisherAccount(response as api.PublisherAccount);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/accounts'),
        );
        pathOffset += 11;

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
        final resp = convert.json.encode(buildListPublisherAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPublisherAccountsResponse(
          response as api.ListPublisherAccountsResponse);
    });
  });

  unittest.group('resource-AccountsAdUnitsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.adUnits;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildListAdUnitsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAdUnitsResponse(response as api.ListAdUnitsResponse);
    });
  });

  unittest.group('resource-AccountsAppsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.apps;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildListAppsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAppsResponse(response as api.ListAppsResponse);
    });
  });

  unittest.group('resource-AccountsMediationReportResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.mediationReport;
      final arg_request = buildGenerateMediationReportRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GenerateMediationReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGenerateMediationReportRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp =
            convert.json.encode(buildGenerateMediationReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.generate(arg_request, arg_parent, $fields: arg_$fields);
      checkGenerateMediationReportResponse(
          response as api.GenerateMediationReportResponse);
    });
  });

  unittest.group('resource-AccountsNetworkReportResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.networkReport;
      final arg_request = buildGenerateNetworkReportRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GenerateNetworkReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGenerateNetworkReportRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildGenerateNetworkReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.generate(arg_request, arg_parent, $fields: arg_$fields);
      checkGenerateNetworkReportResponse(
          response as api.GenerateNetworkReportResponse);
    });
  });
}
