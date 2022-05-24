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

import 'package:googleapis/adsense/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  final o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.pendingTasks = buildUnnamed0();
    o.premium = true;
    o.state = 'foo';
    o.timeZone = buildTimeZone();
  }
  buildCounterAccount--;
  return o;
}

void checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    unittest.expect(
      o.createTime!,
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
    checkUnnamed0(o.pendingTasks!);
    unittest.expect(o.premium!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkTimeZone(o.timeZone!);
  }
  buildCounterAccount--;
}

core.int buildCounterAdClient = 0;
api.AdClient buildAdClient() {
  final o = api.AdClient();
  buildCounterAdClient++;
  if (buildCounterAdClient < 3) {
    o.name = 'foo';
    o.productCode = 'foo';
    o.reportingDimensionId = 'foo';
    o.state = 'foo';
  }
  buildCounterAdClient--;
  return o;
}

void checkAdClient(api.AdClient o) {
  buildCounterAdClient++;
  if (buildCounterAdClient < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportingDimensionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdClient--;
}

core.int buildCounterAdClientAdCode = 0;
api.AdClientAdCode buildAdClientAdCode() {
  final o = api.AdClientAdCode();
  buildCounterAdClientAdCode++;
  if (buildCounterAdClientAdCode < 3) {
    o.adCode = 'foo';
    o.ampBody = 'foo';
    o.ampHead = 'foo';
  }
  buildCounterAdClientAdCode--;
  return o;
}

void checkAdClientAdCode(api.AdClientAdCode o) {
  buildCounterAdClientAdCode++;
  if (buildCounterAdClientAdCode < 3) {
    unittest.expect(
      o.adCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ampBody!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ampHead!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdClientAdCode--;
}

core.int buildCounterAdUnit = 0;
api.AdUnit buildAdUnit() {
  final o = api.AdUnit();
  buildCounterAdUnit++;
  if (buildCounterAdUnit < 3) {
    o.contentAdsSettings = buildContentAdsSettings();
    o.displayName = 'foo';
    o.name = 'foo';
    o.reportingDimensionId = 'foo';
    o.state = 'foo';
  }
  buildCounterAdUnit--;
  return o;
}

void checkAdUnit(api.AdUnit o) {
  buildCounterAdUnit++;
  if (buildCounterAdUnit < 3) {
    checkContentAdsSettings(o.contentAdsSettings!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportingDimensionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdUnit--;
}

core.int buildCounterAdUnitAdCode = 0;
api.AdUnitAdCode buildAdUnitAdCode() {
  final o = api.AdUnitAdCode();
  buildCounterAdUnitAdCode++;
  if (buildCounterAdUnitAdCode < 3) {
    o.adCode = 'foo';
  }
  buildCounterAdUnitAdCode--;
  return o;
}

void checkAdUnitAdCode(api.AdUnitAdCode o) {
  buildCounterAdUnitAdCode++;
  if (buildCounterAdUnitAdCode < 3) {
    unittest.expect(
      o.adCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdUnitAdCode--;
}

core.int buildCounterAlert = 0;
api.Alert buildAlert() {
  final o = api.Alert();
  buildCounterAlert++;
  if (buildCounterAlert < 3) {
    o.message = 'foo';
    o.name = 'foo';
    o.severity = 'foo';
    o.type = 'foo';
  }
  buildCounterAlert--;
  return o;
}

void checkAlert(api.Alert o) {
  buildCounterAlert++;
  if (buildCounterAlert < 3) {
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAlert--;
}

core.int buildCounterCell = 0;
api.Cell buildCell() {
  final o = api.Cell();
  buildCounterCell++;
  if (buildCounterCell < 3) {
    o.value = 'foo';
  }
  buildCounterCell--;
  return o;
}

void checkCell(api.Cell o) {
  buildCounterCell++;
  if (buildCounterCell < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterCell--;
}

core.int buildCounterContentAdsSettings = 0;
api.ContentAdsSettings buildContentAdsSettings() {
  final o = api.ContentAdsSettings();
  buildCounterContentAdsSettings++;
  if (buildCounterContentAdsSettings < 3) {
    o.size = 'foo';
    o.type = 'foo';
  }
  buildCounterContentAdsSettings--;
  return o;
}

void checkContentAdsSettings(api.ContentAdsSettings o) {
  buildCounterContentAdsSettings++;
  if (buildCounterContentAdsSettings < 3) {
    unittest.expect(
      o.size!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterContentAdsSettings--;
}

core.int buildCounterCustomChannel = 0;
api.CustomChannel buildCustomChannel() {
  final o = api.CustomChannel();
  buildCounterCustomChannel++;
  if (buildCounterCustomChannel < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.reportingDimensionId = 'foo';
  }
  buildCounterCustomChannel--;
  return o;
}

void checkCustomChannel(api.CustomChannel o) {
  buildCounterCustomChannel++;
  if (buildCounterCustomChannel < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportingDimensionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomChannel--;
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

core.int buildCounterHeader = 0;
api.Header buildHeader() {
  final o = api.Header();
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    o.currencyCode = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterHeader--;
  return o;
}

void checkHeader(api.Header o) {
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterHeader--;
}

core.Map<core.String, core.Object?> buildUnnamed1() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed1(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed2() => [
      buildUnnamed1(),
      buildUnnamed1(),
    ];

void checkUnnamed2(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1(o[0]);
  checkUnnamed1(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed2();
  }
  buildCounterHttpBody--;
  return o;
}

void checkHttpBody(api.HttpBody o) {
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.extensions!);
  }
  buildCounterHttpBody--;
}

core.List<api.Account> buildUnnamed3() => [
      buildAccount(),
      buildAccount(),
    ];

void checkUnnamed3(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterListAccountsResponse = 0;
api.ListAccountsResponse buildListAccountsResponse() {
  final o = api.ListAccountsResponse();
  buildCounterListAccountsResponse++;
  if (buildCounterListAccountsResponse < 3) {
    o.accounts = buildUnnamed3();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccountsResponse--;
  return o;
}

void checkListAccountsResponse(api.ListAccountsResponse o) {
  buildCounterListAccountsResponse++;
  if (buildCounterListAccountsResponse < 3) {
    checkUnnamed3(o.accounts!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAccountsResponse--;
}

core.List<api.AdClient> buildUnnamed4() => [
      buildAdClient(),
      buildAdClient(),
    ];

void checkUnnamed4(core.List<api.AdClient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdClient(o[0]);
  checkAdClient(o[1]);
}

core.int buildCounterListAdClientsResponse = 0;
api.ListAdClientsResponse buildListAdClientsResponse() {
  final o = api.ListAdClientsResponse();
  buildCounterListAdClientsResponse++;
  if (buildCounterListAdClientsResponse < 3) {
    o.adClients = buildUnnamed4();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdClientsResponse--;
  return o;
}

void checkListAdClientsResponse(api.ListAdClientsResponse o) {
  buildCounterListAdClientsResponse++;
  if (buildCounterListAdClientsResponse < 3) {
    checkUnnamed4(o.adClients!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAdClientsResponse--;
}

core.List<api.AdUnit> buildUnnamed5() => [
      buildAdUnit(),
      buildAdUnit(),
    ];

void checkUnnamed5(core.List<api.AdUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdUnit(o[0]);
  checkAdUnit(o[1]);
}

core.int buildCounterListAdUnitsResponse = 0;
api.ListAdUnitsResponse buildListAdUnitsResponse() {
  final o = api.ListAdUnitsResponse();
  buildCounterListAdUnitsResponse++;
  if (buildCounterListAdUnitsResponse < 3) {
    o.adUnits = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdUnitsResponse--;
  return o;
}

void checkListAdUnitsResponse(api.ListAdUnitsResponse o) {
  buildCounterListAdUnitsResponse++;
  if (buildCounterListAdUnitsResponse < 3) {
    checkUnnamed5(o.adUnits!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAdUnitsResponse--;
}

core.List<api.Alert> buildUnnamed6() => [
      buildAlert(),
      buildAlert(),
    ];

void checkUnnamed6(core.List<api.Alert> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlert(o[0]);
  checkAlert(o[1]);
}

core.int buildCounterListAlertsResponse = 0;
api.ListAlertsResponse buildListAlertsResponse() {
  final o = api.ListAlertsResponse();
  buildCounterListAlertsResponse++;
  if (buildCounterListAlertsResponse < 3) {
    o.alerts = buildUnnamed6();
  }
  buildCounterListAlertsResponse--;
  return o;
}

void checkListAlertsResponse(api.ListAlertsResponse o) {
  buildCounterListAlertsResponse++;
  if (buildCounterListAlertsResponse < 3) {
    checkUnnamed6(o.alerts!);
  }
  buildCounterListAlertsResponse--;
}

core.List<api.Account> buildUnnamed7() => [
      buildAccount(),
      buildAccount(),
    ];

void checkUnnamed7(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterListChildAccountsResponse = 0;
api.ListChildAccountsResponse buildListChildAccountsResponse() {
  final o = api.ListChildAccountsResponse();
  buildCounterListChildAccountsResponse++;
  if (buildCounterListChildAccountsResponse < 3) {
    o.accounts = buildUnnamed7();
    o.nextPageToken = 'foo';
  }
  buildCounterListChildAccountsResponse--;
  return o;
}

void checkListChildAccountsResponse(api.ListChildAccountsResponse o) {
  buildCounterListChildAccountsResponse++;
  if (buildCounterListChildAccountsResponse < 3) {
    checkUnnamed7(o.accounts!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListChildAccountsResponse--;
}

core.List<api.CustomChannel> buildUnnamed8() => [
      buildCustomChannel(),
      buildCustomChannel(),
    ];

void checkUnnamed8(core.List<api.CustomChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomChannel(o[0]);
  checkCustomChannel(o[1]);
}

core.int buildCounterListCustomChannelsResponse = 0;
api.ListCustomChannelsResponse buildListCustomChannelsResponse() {
  final o = api.ListCustomChannelsResponse();
  buildCounterListCustomChannelsResponse++;
  if (buildCounterListCustomChannelsResponse < 3) {
    o.customChannels = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterListCustomChannelsResponse--;
  return o;
}

void checkListCustomChannelsResponse(api.ListCustomChannelsResponse o) {
  buildCounterListCustomChannelsResponse++;
  if (buildCounterListCustomChannelsResponse < 3) {
    checkUnnamed8(o.customChannels!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCustomChannelsResponse--;
}

core.List<api.AdUnit> buildUnnamed9() => [
      buildAdUnit(),
      buildAdUnit(),
    ];

void checkUnnamed9(core.List<api.AdUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdUnit(o[0]);
  checkAdUnit(o[1]);
}

core.int buildCounterListLinkedAdUnitsResponse = 0;
api.ListLinkedAdUnitsResponse buildListLinkedAdUnitsResponse() {
  final o = api.ListLinkedAdUnitsResponse();
  buildCounterListLinkedAdUnitsResponse++;
  if (buildCounterListLinkedAdUnitsResponse < 3) {
    o.adUnits = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterListLinkedAdUnitsResponse--;
  return o;
}

void checkListLinkedAdUnitsResponse(api.ListLinkedAdUnitsResponse o) {
  buildCounterListLinkedAdUnitsResponse++;
  if (buildCounterListLinkedAdUnitsResponse < 3) {
    checkUnnamed9(o.adUnits!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLinkedAdUnitsResponse--;
}

core.List<api.CustomChannel> buildUnnamed10() => [
      buildCustomChannel(),
      buildCustomChannel(),
    ];

void checkUnnamed10(core.List<api.CustomChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomChannel(o[0]);
  checkCustomChannel(o[1]);
}

core.int buildCounterListLinkedCustomChannelsResponse = 0;
api.ListLinkedCustomChannelsResponse buildListLinkedCustomChannelsResponse() {
  final o = api.ListLinkedCustomChannelsResponse();
  buildCounterListLinkedCustomChannelsResponse++;
  if (buildCounterListLinkedCustomChannelsResponse < 3) {
    o.customChannels = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterListLinkedCustomChannelsResponse--;
  return o;
}

void checkListLinkedCustomChannelsResponse(
    api.ListLinkedCustomChannelsResponse o) {
  buildCounterListLinkedCustomChannelsResponse++;
  if (buildCounterListLinkedCustomChannelsResponse < 3) {
    checkUnnamed10(o.customChannels!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLinkedCustomChannelsResponse--;
}

core.List<api.Payment> buildUnnamed11() => [
      buildPayment(),
      buildPayment(),
    ];

void checkUnnamed11(core.List<api.Payment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPayment(o[0]);
  checkPayment(o[1]);
}

core.int buildCounterListPaymentsResponse = 0;
api.ListPaymentsResponse buildListPaymentsResponse() {
  final o = api.ListPaymentsResponse();
  buildCounterListPaymentsResponse++;
  if (buildCounterListPaymentsResponse < 3) {
    o.payments = buildUnnamed11();
  }
  buildCounterListPaymentsResponse--;
  return o;
}

void checkListPaymentsResponse(api.ListPaymentsResponse o) {
  buildCounterListPaymentsResponse++;
  if (buildCounterListPaymentsResponse < 3) {
    checkUnnamed11(o.payments!);
  }
  buildCounterListPaymentsResponse--;
}

core.List<api.SavedReport> buildUnnamed12() => [
      buildSavedReport(),
      buildSavedReport(),
    ];

void checkUnnamed12(core.List<api.SavedReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSavedReport(o[0]);
  checkSavedReport(o[1]);
}

core.int buildCounterListSavedReportsResponse = 0;
api.ListSavedReportsResponse buildListSavedReportsResponse() {
  final o = api.ListSavedReportsResponse();
  buildCounterListSavedReportsResponse++;
  if (buildCounterListSavedReportsResponse < 3) {
    o.nextPageToken = 'foo';
    o.savedReports = buildUnnamed12();
  }
  buildCounterListSavedReportsResponse--;
  return o;
}

void checkListSavedReportsResponse(api.ListSavedReportsResponse o) {
  buildCounterListSavedReportsResponse++;
  if (buildCounterListSavedReportsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.savedReports!);
  }
  buildCounterListSavedReportsResponse--;
}

core.List<api.Site> buildUnnamed13() => [
      buildSite(),
      buildSite(),
    ];

void checkUnnamed13(core.List<api.Site> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSite(o[0]);
  checkSite(o[1]);
}

core.int buildCounterListSitesResponse = 0;
api.ListSitesResponse buildListSitesResponse() {
  final o = api.ListSitesResponse();
  buildCounterListSitesResponse++;
  if (buildCounterListSitesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sites = buildUnnamed13();
  }
  buildCounterListSitesResponse--;
  return o;
}

void checkListSitesResponse(api.ListSitesResponse o) {
  buildCounterListSitesResponse++;
  if (buildCounterListSitesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.sites!);
  }
  buildCounterListSitesResponse--;
}

core.List<api.UrlChannel> buildUnnamed14() => [
      buildUrlChannel(),
      buildUrlChannel(),
    ];

void checkUnnamed14(core.List<api.UrlChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrlChannel(o[0]);
  checkUrlChannel(o[1]);
}

core.int buildCounterListUrlChannelsResponse = 0;
api.ListUrlChannelsResponse buildListUrlChannelsResponse() {
  final o = api.ListUrlChannelsResponse();
  buildCounterListUrlChannelsResponse++;
  if (buildCounterListUrlChannelsResponse < 3) {
    o.nextPageToken = 'foo';
    o.urlChannels = buildUnnamed14();
  }
  buildCounterListUrlChannelsResponse--;
  return o;
}

void checkListUrlChannelsResponse(api.ListUrlChannelsResponse o) {
  buildCounterListUrlChannelsResponse++;
  if (buildCounterListUrlChannelsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.urlChannels!);
  }
  buildCounterListUrlChannelsResponse--;
}

core.int buildCounterPayment = 0;
api.Payment buildPayment() {
  final o = api.Payment();
  buildCounterPayment++;
  if (buildCounterPayment < 3) {
    o.amount = 'foo';
    o.date = buildDate();
    o.name = 'foo';
  }
  buildCounterPayment--;
  return o;
}

void checkPayment(api.Payment o) {
  buildCounterPayment++;
  if (buildCounterPayment < 3) {
    unittest.expect(
      o.amount!,
      unittest.equals('foo'),
    );
    checkDate(o.date!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterPayment--;
}

core.List<api.Header> buildUnnamed15() => [
      buildHeader(),
      buildHeader(),
    ];

void checkUnnamed15(core.List<api.Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeader(o[0]);
  checkHeader(o[1]);
}

core.List<api.Row> buildUnnamed16() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed16(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
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

core.int buildCounterReportResult = 0;
api.ReportResult buildReportResult() {
  final o = api.ReportResult();
  buildCounterReportResult++;
  if (buildCounterReportResult < 3) {
    o.averages = buildRow();
    o.endDate = buildDate();
    o.headers = buildUnnamed15();
    o.rows = buildUnnamed16();
    o.startDate = buildDate();
    o.totalMatchedRows = 'foo';
    o.totals = buildRow();
    o.warnings = buildUnnamed17();
  }
  buildCounterReportResult--;
  return o;
}

void checkReportResult(api.ReportResult o) {
  buildCounterReportResult++;
  if (buildCounterReportResult < 3) {
    checkRow(o.averages!);
    checkDate(o.endDate!);
    checkUnnamed15(o.headers!);
    checkUnnamed16(o.rows!);
    checkDate(o.startDate!);
    unittest.expect(
      o.totalMatchedRows!,
      unittest.equals('foo'),
    );
    checkRow(o.totals!);
    checkUnnamed17(o.warnings!);
  }
  buildCounterReportResult--;
}

core.List<api.Cell> buildUnnamed18() => [
      buildCell(),
      buildCell(),
    ];

void checkUnnamed18(core.List<api.Cell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCell(o[0]);
  checkCell(o[1]);
}

core.int buildCounterRow = 0;
api.Row buildRow() {
  final o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.cells = buildUnnamed18();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    checkUnnamed18(o.cells!);
  }
  buildCounterRow--;
}

core.int buildCounterSavedReport = 0;
api.SavedReport buildSavedReport() {
  final o = api.SavedReport();
  buildCounterSavedReport++;
  if (buildCounterSavedReport < 3) {
    o.name = 'foo';
    o.title = 'foo';
  }
  buildCounterSavedReport--;
  return o;
}

void checkSavedReport(api.SavedReport o) {
  buildCounterSavedReport++;
  if (buildCounterSavedReport < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterSavedReport--;
}

core.int buildCounterSite = 0;
api.Site buildSite() {
  final o = api.Site();
  buildCounterSite++;
  if (buildCounterSite < 3) {
    o.autoAdsEnabled = true;
    o.domain = 'foo';
    o.name = 'foo';
    o.reportingDimensionId = 'foo';
    o.state = 'foo';
  }
  buildCounterSite--;
  return o;
}

void checkSite(api.Site o) {
  buildCounterSite++;
  if (buildCounterSite < 3) {
    unittest.expect(o.autoAdsEnabled!, unittest.isTrue);
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportingDimensionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterSite--;
}

core.int buildCounterTimeZone = 0;
api.TimeZone buildTimeZone() {
  final o = api.TimeZone();
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    o.id = 'foo';
    o.version = 'foo';
  }
  buildCounterTimeZone--;
  return o;
}

void checkTimeZone(api.TimeZone o) {
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimeZone--;
}

core.int buildCounterUrlChannel = 0;
api.UrlChannel buildUrlChannel() {
  final o = api.UrlChannel();
  buildCounterUrlChannel++;
  if (buildCounterUrlChannel < 3) {
    o.name = 'foo';
    o.reportingDimensionId = 'foo';
    o.uriPattern = 'foo';
  }
  buildCounterUrlChannel--;
  return o;
}

void checkUrlChannel(api.UrlChannel o) {
  buildCounterUrlChannel++;
  if (buildCounterUrlChannel < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportingDimensionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uriPattern!,
      unittest.equals('foo'),
    );
  }
  buildCounterUrlChannel--;
}

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Account.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAccount(od);
    });
  });

  unittest.group('obj-schema-AdClient', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdClient();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AdClient.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAdClient(od);
    });
  });

  unittest.group('obj-schema-AdClientAdCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdClientAdCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdClientAdCode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdClientAdCode(od);
    });
  });

  unittest.group('obj-schema-AdUnit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdUnit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AdUnit.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAdUnit(od);
    });
  });

  unittest.group('obj-schema-AdUnitAdCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdUnitAdCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdUnitAdCode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdUnitAdCode(od);
    });
  });

  unittest.group('obj-schema-Alert', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlert();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Alert.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAlert(od);
    });
  });

  unittest.group('obj-schema-Cell', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCell();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Cell.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCell(od);
    });
  });

  unittest.group('obj-schema-ContentAdsSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentAdsSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentAdsSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContentAdsSettings(od);
    });
  });

  unittest.group('obj-schema-CustomChannel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomChannel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomChannel(od);
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

  unittest.group('obj-schema-Header', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Header.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHeader(od);
    });
  });

  unittest.group('obj-schema-HttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HttpBody.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttpBody(od);
    });
  });

  unittest.group('obj-schema-ListAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccountsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAdClientsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAdClientsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAdClientsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAdClientsResponse(od);
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

  unittest.group('obj-schema-ListAlertsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAlertsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAlertsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAlertsResponse(od);
    });
  });

  unittest.group('obj-schema-ListChildAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListChildAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListChildAccountsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListChildAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCustomChannelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCustomChannelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCustomChannelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCustomChannelsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLinkedAdUnitsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLinkedAdUnitsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLinkedAdUnitsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLinkedAdUnitsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLinkedCustomChannelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLinkedCustomChannelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLinkedCustomChannelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLinkedCustomChannelsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPaymentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPaymentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPaymentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPaymentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSavedReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSavedReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSavedReportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSavedReportsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSitesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSitesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSitesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSitesResponse(od);
    });
  });

  unittest.group('obj-schema-ListUrlChannelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUrlChannelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUrlChannelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUrlChannelsResponse(od);
    });
  });

  unittest.group('obj-schema-Payment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPayment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Payment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPayment(od);
    });
  });

  unittest.group('obj-schema-ReportResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportResult(od);
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

  unittest.group('obj-schema-SavedReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSavedReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SavedReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSavedReport(od);
    });
  });

  unittest.group('obj-schema-Site', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Site.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSite(od);
    });
  });

  unittest.group('obj-schema-TimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeZone.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeZone(od);
    });
  });

  unittest.group('obj-schema-UrlChannel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUrlChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UrlChannel.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUrlChannel(od);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts;
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
          unittest.equals('v2/accounts'),
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
        final resp = convert.json.encode(buildListAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAccountsResponse(response as api.ListAccountsResponse);
    });

    unittest.test('method--listChildAccounts', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListChildAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listChildAccounts(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListChildAccountsResponse(response as api.ListChildAccountsResponse);
    });
  });

  unittest.group('resource-AccountsAdclientsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.adclients;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildAdClient());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAdClient(response as api.AdClient);
    });

    unittest.test('method--getAdcode', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.adclients;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildAdClientAdCode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getAdcode(arg_name, $fields: arg_$fields);
      checkAdClientAdCode(response as api.AdClientAdCode);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.adclients;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListAdClientsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAdClientsResponse(response as api.ListAdClientsResponse);
    });
  });

  unittest.group('resource-AccountsAdclientsAdunitsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.adclients.adunits;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildAdUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAdUnit(response as api.AdUnit);
    });

    unittest.test('method--getAdcode', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.adclients.adunits;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildAdUnitAdCode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getAdcode(arg_name, $fields: arg_$fields);
      checkAdUnitAdCode(response as api.AdUnitAdCode);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.adclients.adunits;
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
          unittest.equals('v2/'),
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

    unittest.test('method--listLinkedCustomChannels', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.adclients.adunits;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildListLinkedCustomChannelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listLinkedCustomChannels(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLinkedCustomChannelsResponse(
          response as api.ListLinkedCustomChannelsResponse);
    });
  });

  unittest.group('resource-AccountsAdclientsCustomchannelsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.adclients.customchannels;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildCustomChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCustomChannel(response as api.CustomChannel);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.adclients.customchannels;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListCustomChannelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCustomChannelsResponse(
          response as api.ListCustomChannelsResponse);
    });

    unittest.test('method--listLinkedAdUnits', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.adclients.customchannels;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListLinkedAdUnitsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listLinkedAdUnits(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLinkedAdUnitsResponse(response as api.ListLinkedAdUnitsResponse);
    });
  });

  unittest.group('resource-AccountsAdclientsUrlchannelsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.adclients.urlchannels;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildUrlChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUrlChannel(response as api.UrlChannel);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.adclients.urlchannels;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListUrlChannelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListUrlChannelsResponse(response as api.ListUrlChannelsResponse);
    });
  });

  unittest.group('resource-AccountsAlertsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.alerts;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v2/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListAlertsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkListAlertsResponse(response as api.ListAlertsResponse);
    });
  });

  unittest.group('resource-AccountsPaymentsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.payments;
      final arg_parent = 'foo';
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListPaymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkListPaymentsResponse(response as api.ListPaymentsResponse);
    });
  });

  unittest.group('resource-AccountsReportsResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.reports;
      final arg_account = 'foo';
      final arg_currencyCode = 'foo';
      final arg_dateRange = 'foo';
      final arg_dimensions = buildUnnamed19();
      final arg_endDate_day = 42;
      final arg_endDate_month = 42;
      final arg_endDate_year = 42;
      final arg_filters = buildUnnamed20();
      final arg_languageCode = 'foo';
      final arg_limit = 42;
      final arg_metrics = buildUnnamed21();
      final arg_orderBy = buildUnnamed22();
      final arg_reportingTimeZone = 'foo';
      final arg_startDate_day = 42;
      final arg_startDate_month = 42;
      final arg_startDate_year = 42;
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
          unittest.equals('v2/'),
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
          queryMap['currencyCode']!.first,
          unittest.equals(arg_currencyCode),
        );
        unittest.expect(
          queryMap['dateRange']!.first,
          unittest.equals(arg_dateRange),
        );
        unittest.expect(
          queryMap['dimensions']!,
          unittest.equals(arg_dimensions),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.day']!.first),
          unittest.equals(arg_endDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.month']!.first),
          unittest.equals(arg_endDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.year']!.first),
          unittest.equals(arg_endDate_year),
        );
        unittest.expect(
          queryMap['filters']!,
          unittest.equals(arg_filters),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          core.int.parse(queryMap['limit']!.first),
          unittest.equals(arg_limit),
        );
        unittest.expect(
          queryMap['metrics']!,
          unittest.equals(arg_metrics),
        );
        unittest.expect(
          queryMap['orderBy']!,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['reportingTimeZone']!.first,
          unittest.equals(arg_reportingTimeZone),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.day']!.first),
          unittest.equals(arg_startDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.month']!.first),
          unittest.equals(arg_startDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.year']!.first),
          unittest.equals(arg_startDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReportResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generate(arg_account,
          currencyCode: arg_currencyCode,
          dateRange: arg_dateRange,
          dimensions: arg_dimensions,
          endDate_day: arg_endDate_day,
          endDate_month: arg_endDate_month,
          endDate_year: arg_endDate_year,
          filters: arg_filters,
          languageCode: arg_languageCode,
          limit: arg_limit,
          metrics: arg_metrics,
          orderBy: arg_orderBy,
          reportingTimeZone: arg_reportingTimeZone,
          startDate_day: arg_startDate_day,
          startDate_month: arg_startDate_month,
          startDate_year: arg_startDate_year,
          $fields: arg_$fields);
      checkReportResult(response as api.ReportResult);
    });

    unittest.test('method--generateCsv', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.reports;
      final arg_account = 'foo';
      final arg_currencyCode = 'foo';
      final arg_dateRange = 'foo';
      final arg_dimensions = buildUnnamed23();
      final arg_endDate_day = 42;
      final arg_endDate_month = 42;
      final arg_endDate_year = 42;
      final arg_filters = buildUnnamed24();
      final arg_languageCode = 'foo';
      final arg_limit = 42;
      final arg_metrics = buildUnnamed25();
      final arg_orderBy = buildUnnamed26();
      final arg_reportingTimeZone = 'foo';
      final arg_startDate_day = 42;
      final arg_startDate_month = 42;
      final arg_startDate_year = 42;
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
          unittest.equals('v2/'),
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
          queryMap['currencyCode']!.first,
          unittest.equals(arg_currencyCode),
        );
        unittest.expect(
          queryMap['dateRange']!.first,
          unittest.equals(arg_dateRange),
        );
        unittest.expect(
          queryMap['dimensions']!,
          unittest.equals(arg_dimensions),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.day']!.first),
          unittest.equals(arg_endDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.month']!.first),
          unittest.equals(arg_endDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.year']!.first),
          unittest.equals(arg_endDate_year),
        );
        unittest.expect(
          queryMap['filters']!,
          unittest.equals(arg_filters),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          core.int.parse(queryMap['limit']!.first),
          unittest.equals(arg_limit),
        );
        unittest.expect(
          queryMap['metrics']!,
          unittest.equals(arg_metrics),
        );
        unittest.expect(
          queryMap['orderBy']!,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['reportingTimeZone']!.first,
          unittest.equals(arg_reportingTimeZone),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.day']!.first),
          unittest.equals(arg_startDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.month']!.first),
          unittest.equals(arg_startDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.year']!.first),
          unittest.equals(arg_startDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateCsv(arg_account,
          currencyCode: arg_currencyCode,
          dateRange: arg_dateRange,
          dimensions: arg_dimensions,
          endDate_day: arg_endDate_day,
          endDate_month: arg_endDate_month,
          endDate_year: arg_endDate_year,
          filters: arg_filters,
          languageCode: arg_languageCode,
          limit: arg_limit,
          metrics: arg_metrics,
          orderBy: arg_orderBy,
          reportingTimeZone: arg_reportingTimeZone,
          startDate_day: arg_startDate_day,
          startDate_month: arg_startDate_month,
          startDate_year: arg_startDate_year,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--getSaved', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.reports;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildSavedReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSaved(arg_name, $fields: arg_$fields);
      checkSavedReport(response as api.SavedReport);
    });
  });

  unittest.group('resource-AccountsReportsSavedResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.reports.saved;
      final arg_name = 'foo';
      final arg_currencyCode = 'foo';
      final arg_dateRange = 'foo';
      final arg_endDate_day = 42;
      final arg_endDate_month = 42;
      final arg_endDate_year = 42;
      final arg_languageCode = 'foo';
      final arg_reportingTimeZone = 'foo';
      final arg_startDate_day = 42;
      final arg_startDate_month = 42;
      final arg_startDate_year = 42;
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
          unittest.equals('v2/'),
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
          queryMap['currencyCode']!.first,
          unittest.equals(arg_currencyCode),
        );
        unittest.expect(
          queryMap['dateRange']!.first,
          unittest.equals(arg_dateRange),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.day']!.first),
          unittest.equals(arg_endDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.month']!.first),
          unittest.equals(arg_endDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.year']!.first),
          unittest.equals(arg_endDate_year),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['reportingTimeZone']!.first,
          unittest.equals(arg_reportingTimeZone),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.day']!.first),
          unittest.equals(arg_startDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.month']!.first),
          unittest.equals(arg_startDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.year']!.first),
          unittest.equals(arg_startDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReportResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generate(arg_name,
          currencyCode: arg_currencyCode,
          dateRange: arg_dateRange,
          endDate_day: arg_endDate_day,
          endDate_month: arg_endDate_month,
          endDate_year: arg_endDate_year,
          languageCode: arg_languageCode,
          reportingTimeZone: arg_reportingTimeZone,
          startDate_day: arg_startDate_day,
          startDate_month: arg_startDate_month,
          startDate_year: arg_startDate_year,
          $fields: arg_$fields);
      checkReportResult(response as api.ReportResult);
    });

    unittest.test('method--generateCsv', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.reports.saved;
      final arg_name = 'foo';
      final arg_currencyCode = 'foo';
      final arg_dateRange = 'foo';
      final arg_endDate_day = 42;
      final arg_endDate_month = 42;
      final arg_endDate_year = 42;
      final arg_languageCode = 'foo';
      final arg_reportingTimeZone = 'foo';
      final arg_startDate_day = 42;
      final arg_startDate_month = 42;
      final arg_startDate_year = 42;
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
          unittest.equals('v2/'),
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
          queryMap['currencyCode']!.first,
          unittest.equals(arg_currencyCode),
        );
        unittest.expect(
          queryMap['dateRange']!.first,
          unittest.equals(arg_dateRange),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.day']!.first),
          unittest.equals(arg_endDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.month']!.first),
          unittest.equals(arg_endDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.year']!.first),
          unittest.equals(arg_endDate_year),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['reportingTimeZone']!.first,
          unittest.equals(arg_reportingTimeZone),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.day']!.first),
          unittest.equals(arg_startDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.month']!.first),
          unittest.equals(arg_startDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.year']!.first),
          unittest.equals(arg_startDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateCsv(arg_name,
          currencyCode: arg_currencyCode,
          dateRange: arg_dateRange,
          endDate_day: arg_endDate_day,
          endDate_month: arg_endDate_month,
          endDate_year: arg_endDate_year,
          languageCode: arg_languageCode,
          reportingTimeZone: arg_reportingTimeZone,
          startDate_day: arg_startDate_day,
          startDate_month: arg_startDate_month,
          startDate_year: arg_startDate_year,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.reports.saved;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListSavedReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSavedReportsResponse(response as api.ListSavedReportsResponse);
    });
  });

  unittest.group('resource-AccountsSitesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.sites;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildSite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSite(response as api.Site);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdsenseApi(mock).accounts.sites;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListSitesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSitesResponse(response as api.ListSitesResponse);
    });
  });
}
