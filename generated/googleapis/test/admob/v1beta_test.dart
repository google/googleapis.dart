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

import 'package:googleapis/admob/v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAdSource = 0;
api.AdSource buildAdSource() {
  final o = api.AdSource();
  buildCounterAdSource++;
  if (buildCounterAdSource < 3) {
    o.adSourceId = 'foo';
    o.name = 'foo';
    o.title = 'foo';
  }
  buildCounterAdSource--;
  return o;
}

void checkAdSource(api.AdSource o) {
  buildCounterAdSource++;
  if (buildCounterAdSource < 3) {
    unittest.expect(o.adSourceId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterAdSource--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdUnit = 0;
api.AdUnit buildAdUnit() {
  final o = api.AdUnit();
  buildCounterAdUnit++;
  if (buildCounterAdUnit < 3) {
    o.adFormat = 'foo';
    o.adTypes = buildUnnamed0();
    o.adUnitId = 'foo';
    o.appId = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.rewardSettings = buildAdUnitRewardSettings();
  }
  buildCounterAdUnit--;
  return o;
}

void checkAdUnit(api.AdUnit o) {
  buildCounterAdUnit++;
  if (buildCounterAdUnit < 3) {
    unittest.expect(o.adFormat!, unittest.equals('foo'));
    checkUnnamed0(o.adTypes!);
    unittest.expect(o.adUnitId!, unittest.equals('foo'));
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkAdUnitRewardSettings(o.rewardSettings!);
  }
  buildCounterAdUnit--;
}

core.Map<core.String, core.String> buildUnnamed1() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed1(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAdUnitMapping = 0;
api.AdUnitMapping buildAdUnitMapping() {
  final o = api.AdUnitMapping();
  buildCounterAdUnitMapping++;
  if (buildCounterAdUnitMapping < 3) {
    o.adUnitConfigurations = buildUnnamed1();
    o.adapterId = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterAdUnitMapping--;
  return o;
}

void checkAdUnitMapping(api.AdUnitMapping o) {
  buildCounterAdUnitMapping++;
  if (buildCounterAdUnitMapping < 3) {
    checkUnnamed1(o.adUnitConfigurations!);
    unittest.expect(o.adapterId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterAdUnitMapping--;
}

core.int buildCounterAdUnitRewardSettings = 0;
api.AdUnitRewardSettings buildAdUnitRewardSettings() {
  final o = api.AdUnitRewardSettings();
  buildCounterAdUnitRewardSettings++;
  if (buildCounterAdUnitRewardSettings < 3) {
    o.unitAmount = 'foo';
    o.unitType = 'foo';
  }
  buildCounterAdUnitRewardSettings--;
  return o;
}

void checkAdUnitRewardSettings(api.AdUnitRewardSettings o) {
  buildCounterAdUnitRewardSettings++;
  if (buildCounterAdUnitRewardSettings < 3) {
    unittest.expect(o.unitAmount!, unittest.equals('foo'));
    unittest.expect(o.unitType!, unittest.equals('foo'));
  }
  buildCounterAdUnitRewardSettings--;
}

core.List<api.AdapterAdapterConfigMetadata> buildUnnamed2() => [
  buildAdapterAdapterConfigMetadata(),
  buildAdapterAdapterConfigMetadata(),
];

void checkUnnamed2(core.List<api.AdapterAdapterConfigMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdapterAdapterConfigMetadata(o[0]);
  checkAdapterAdapterConfigMetadata(o[1]);
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdapter = 0;
api.Adapter buildAdapter() {
  final o = api.Adapter();
  buildCounterAdapter++;
  if (buildCounterAdapter < 3) {
    o.adapterConfigMetadata = buildUnnamed2();
    o.adapterId = 'foo';
    o.formats = buildUnnamed3();
    o.name = 'foo';
    o.platform = 'foo';
    o.title = 'foo';
  }
  buildCounterAdapter--;
  return o;
}

void checkAdapter(api.Adapter o) {
  buildCounterAdapter++;
  if (buildCounterAdapter < 3) {
    checkUnnamed2(o.adapterConfigMetadata!);
    unittest.expect(o.adapterId!, unittest.equals('foo'));
    checkUnnamed3(o.formats!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.platform!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterAdapter--;
}

core.int buildCounterAdapterAdapterConfigMetadata = 0;
api.AdapterAdapterConfigMetadata buildAdapterAdapterConfigMetadata() {
  final o = api.AdapterAdapterConfigMetadata();
  buildCounterAdapterAdapterConfigMetadata++;
  if (buildCounterAdapterAdapterConfigMetadata < 3) {
    o.adapterConfigMetadataId = 'foo';
    o.adapterConfigMetadataLabel = 'foo';
    o.isRequired = true;
  }
  buildCounterAdapterAdapterConfigMetadata--;
  return o;
}

void checkAdapterAdapterConfigMetadata(api.AdapterAdapterConfigMetadata o) {
  buildCounterAdapterAdapterConfigMetadata++;
  if (buildCounterAdapterAdapterConfigMetadata < 3) {
    unittest.expect(o.adapterConfigMetadataId!, unittest.equals('foo'));
    unittest.expect(o.adapterConfigMetadataLabel!, unittest.equals('foo'));
    unittest.expect(o.isRequired!, unittest.isTrue);
  }
  buildCounterAdapterAdapterConfigMetadata--;
}

core.int buildCounterApp = 0;
api.App buildApp() {
  final o = api.App();
  buildCounterApp++;
  if (buildCounterApp < 3) {
    o.appApprovalState = 'foo';
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
    unittest.expect(o.appApprovalState!, unittest.equals('foo'));
    unittest.expect(o.appId!, unittest.equals('foo'));
    checkAppLinkedAppInfo(o.linkedAppInfo!);
    checkAppManualAppInfo(o.manualAppInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.platform!, unittest.equals('foo'));
  }
  buildCounterApp--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAppLinkedAppInfo = 0;
api.AppLinkedAppInfo buildAppLinkedAppInfo() {
  final o = api.AppLinkedAppInfo();
  buildCounterAppLinkedAppInfo++;
  if (buildCounterAppLinkedAppInfo < 3) {
    o.androidAppStores = buildUnnamed4();
    o.appStoreId = 'foo';
    o.displayName = 'foo';
  }
  buildCounterAppLinkedAppInfo--;
  return o;
}

void checkAppLinkedAppInfo(api.AppLinkedAppInfo o) {
  buildCounterAppLinkedAppInfo++;
  if (buildCounterAppLinkedAppInfo < 3) {
    checkUnnamed4(o.androidAppStores!);
    unittest.expect(o.appStoreId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
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
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterAppManualAppInfo--;
}

core.List<api.CreateAdUnitMappingRequest> buildUnnamed5() => [
  buildCreateAdUnitMappingRequest(),
  buildCreateAdUnitMappingRequest(),
];

void checkUnnamed5(core.List<api.CreateAdUnitMappingRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateAdUnitMappingRequest(o[0]);
  checkCreateAdUnitMappingRequest(o[1]);
}

core.int buildCounterBatchCreateAdUnitMappingsRequest = 0;
api.BatchCreateAdUnitMappingsRequest buildBatchCreateAdUnitMappingsRequest() {
  final o = api.BatchCreateAdUnitMappingsRequest();
  buildCounterBatchCreateAdUnitMappingsRequest++;
  if (buildCounterBatchCreateAdUnitMappingsRequest < 3) {
    o.requests = buildUnnamed5();
  }
  buildCounterBatchCreateAdUnitMappingsRequest--;
  return o;
}

void checkBatchCreateAdUnitMappingsRequest(
  api.BatchCreateAdUnitMappingsRequest o,
) {
  buildCounterBatchCreateAdUnitMappingsRequest++;
  if (buildCounterBatchCreateAdUnitMappingsRequest < 3) {
    checkUnnamed5(o.requests!);
  }
  buildCounterBatchCreateAdUnitMappingsRequest--;
}

core.List<api.AdUnitMapping> buildUnnamed6() => [
  buildAdUnitMapping(),
  buildAdUnitMapping(),
];

void checkUnnamed6(core.List<api.AdUnitMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdUnitMapping(o[0]);
  checkAdUnitMapping(o[1]);
}

core.int buildCounterBatchCreateAdUnitMappingsResponse = 0;
api.BatchCreateAdUnitMappingsResponse buildBatchCreateAdUnitMappingsResponse() {
  final o = api.BatchCreateAdUnitMappingsResponse();
  buildCounterBatchCreateAdUnitMappingsResponse++;
  if (buildCounterBatchCreateAdUnitMappingsResponse < 3) {
    o.adUnitMappings = buildUnnamed6();
  }
  buildCounterBatchCreateAdUnitMappingsResponse--;
  return o;
}

void checkBatchCreateAdUnitMappingsResponse(
  api.BatchCreateAdUnitMappingsResponse o,
) {
  buildCounterBatchCreateAdUnitMappingsResponse++;
  if (buildCounterBatchCreateAdUnitMappingsResponse < 3) {
    checkUnnamed6(o.adUnitMappings!);
  }
  buildCounterBatchCreateAdUnitMappingsResponse--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCampaignReportSpec = 0;
api.CampaignReportSpec buildCampaignReportSpec() {
  final o = api.CampaignReportSpec();
  buildCounterCampaignReportSpec++;
  if (buildCounterCampaignReportSpec < 3) {
    o.dateRange = buildDateRange();
    o.dimensions = buildUnnamed7();
    o.languageCode = 'foo';
    o.metrics = buildUnnamed8();
  }
  buildCounterCampaignReportSpec--;
  return o;
}

void checkCampaignReportSpec(api.CampaignReportSpec o) {
  buildCounterCampaignReportSpec++;
  if (buildCounterCampaignReportSpec < 3) {
    checkDateRange(o.dateRange!);
    checkUnnamed7(o.dimensions!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkUnnamed8(o.metrics!);
  }
  buildCounterCampaignReportSpec--;
}

core.int buildCounterCreateAdUnitMappingRequest = 0;
api.CreateAdUnitMappingRequest buildCreateAdUnitMappingRequest() {
  final o = api.CreateAdUnitMappingRequest();
  buildCounterCreateAdUnitMappingRequest++;
  if (buildCounterCreateAdUnitMappingRequest < 3) {
    o.adUnitMapping = buildAdUnitMapping();
    o.parent = 'foo';
  }
  buildCounterCreateAdUnitMappingRequest--;
  return o;
}

void checkCreateAdUnitMappingRequest(api.CreateAdUnitMappingRequest o) {
  buildCounterCreateAdUnitMappingRequest++;
  if (buildCounterCreateAdUnitMappingRequest < 3) {
    checkAdUnitMapping(o.adUnitMapping!);
    unittest.expect(o.parent!, unittest.equals('foo'));
  }
  buildCounterCreateAdUnitMappingRequest--;
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

core.int buildCounterGenerateCampaignReportRequest = 0;
api.GenerateCampaignReportRequest buildGenerateCampaignReportRequest() {
  final o = api.GenerateCampaignReportRequest();
  buildCounterGenerateCampaignReportRequest++;
  if (buildCounterGenerateCampaignReportRequest < 3) {
    o.reportSpec = buildCampaignReportSpec();
  }
  buildCounterGenerateCampaignReportRequest--;
  return o;
}

void checkGenerateCampaignReportRequest(api.GenerateCampaignReportRequest o) {
  buildCounterGenerateCampaignReportRequest++;
  if (buildCounterGenerateCampaignReportRequest < 3) {
    checkCampaignReportSpec(o.reportSpec!);
  }
  buildCounterGenerateCampaignReportRequest--;
}

core.List<api.ReportRow> buildUnnamed9() => [
  buildReportRow(),
  buildReportRow(),
];

void checkUnnamed9(core.List<api.ReportRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRow(o[0]);
  checkReportRow(o[1]);
}

core.int buildCounterGenerateCampaignReportResponse = 0;
api.GenerateCampaignReportResponse buildGenerateCampaignReportResponse() {
  final o = api.GenerateCampaignReportResponse();
  buildCounterGenerateCampaignReportResponse++;
  if (buildCounterGenerateCampaignReportResponse < 3) {
    o.rows = buildUnnamed9();
  }
  buildCounterGenerateCampaignReportResponse--;
  return o;
}

void checkGenerateCampaignReportResponse(api.GenerateCampaignReportResponse o) {
  buildCounterGenerateCampaignReportResponse++;
  if (buildCounterGenerateCampaignReportResponse < 3) {
    checkUnnamed9(o.rows!);
  }
  buildCounterGenerateCampaignReportResponse--;
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
  api.GenerateMediationReportResponse o,
) {
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

core.List<api.AdSource> buildUnnamed10() => [buildAdSource(), buildAdSource()];

void checkUnnamed10(core.List<api.AdSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSource(o[0]);
  checkAdSource(o[1]);
}

core.int buildCounterListAdSourcesResponse = 0;
api.ListAdSourcesResponse buildListAdSourcesResponse() {
  final o = api.ListAdSourcesResponse();
  buildCounterListAdSourcesResponse++;
  if (buildCounterListAdSourcesResponse < 3) {
    o.adSources = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdSourcesResponse--;
  return o;
}

void checkListAdSourcesResponse(api.ListAdSourcesResponse o) {
  buildCounterListAdSourcesResponse++;
  if (buildCounterListAdSourcesResponse < 3) {
    checkUnnamed10(o.adSources!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAdSourcesResponse--;
}

core.List<api.AdUnitMapping> buildUnnamed11() => [
  buildAdUnitMapping(),
  buildAdUnitMapping(),
];

void checkUnnamed11(core.List<api.AdUnitMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdUnitMapping(o[0]);
  checkAdUnitMapping(o[1]);
}

core.int buildCounterListAdUnitMappingsResponse = 0;
api.ListAdUnitMappingsResponse buildListAdUnitMappingsResponse() {
  final o = api.ListAdUnitMappingsResponse();
  buildCounterListAdUnitMappingsResponse++;
  if (buildCounterListAdUnitMappingsResponse < 3) {
    o.adUnitMappings = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdUnitMappingsResponse--;
  return o;
}

void checkListAdUnitMappingsResponse(api.ListAdUnitMappingsResponse o) {
  buildCounterListAdUnitMappingsResponse++;
  if (buildCounterListAdUnitMappingsResponse < 3) {
    checkUnnamed11(o.adUnitMappings!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAdUnitMappingsResponse--;
}

core.List<api.AdUnit> buildUnnamed12() => [buildAdUnit(), buildAdUnit()];

void checkUnnamed12(core.List<api.AdUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdUnit(o[0]);
  checkAdUnit(o[1]);
}

core.int buildCounterListAdUnitsResponse = 0;
api.ListAdUnitsResponse buildListAdUnitsResponse() {
  final o = api.ListAdUnitsResponse();
  buildCounterListAdUnitsResponse++;
  if (buildCounterListAdUnitsResponse < 3) {
    o.adUnits = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdUnitsResponse--;
  return o;
}

void checkListAdUnitsResponse(api.ListAdUnitsResponse o) {
  buildCounterListAdUnitsResponse++;
  if (buildCounterListAdUnitsResponse < 3) {
    checkUnnamed12(o.adUnits!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAdUnitsResponse--;
}

core.List<api.Adapter> buildUnnamed13() => [buildAdapter(), buildAdapter()];

void checkUnnamed13(core.List<api.Adapter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdapter(o[0]);
  checkAdapter(o[1]);
}

core.int buildCounterListAdaptersResponse = 0;
api.ListAdaptersResponse buildListAdaptersResponse() {
  final o = api.ListAdaptersResponse();
  buildCounterListAdaptersResponse++;
  if (buildCounterListAdaptersResponse < 3) {
    o.adapters = buildUnnamed13();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdaptersResponse--;
  return o;
}

void checkListAdaptersResponse(api.ListAdaptersResponse o) {
  buildCounterListAdaptersResponse++;
  if (buildCounterListAdaptersResponse < 3) {
    checkUnnamed13(o.adapters!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAdaptersResponse--;
}

core.List<api.App> buildUnnamed14() => [buildApp(), buildApp()];

void checkUnnamed14(core.List<api.App> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApp(o[0]);
  checkApp(o[1]);
}

core.int buildCounterListAppsResponse = 0;
api.ListAppsResponse buildListAppsResponse() {
  final o = api.ListAppsResponse();
  buildCounterListAppsResponse++;
  if (buildCounterListAppsResponse < 3) {
    o.apps = buildUnnamed14();
    o.nextPageToken = 'foo';
  }
  buildCounterListAppsResponse--;
  return o;
}

void checkListAppsResponse(api.ListAppsResponse o) {
  buildCounterListAppsResponse++;
  if (buildCounterListAppsResponse < 3) {
    checkUnnamed14(o.apps!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAppsResponse--;
}

core.List<api.MediationGroup> buildUnnamed15() => [
  buildMediationGroup(),
  buildMediationGroup(),
];

void checkUnnamed15(core.List<api.MediationGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMediationGroup(o[0]);
  checkMediationGroup(o[1]);
}

core.int buildCounterListMediationGroupsResponse = 0;
api.ListMediationGroupsResponse buildListMediationGroupsResponse() {
  final o = api.ListMediationGroupsResponse();
  buildCounterListMediationGroupsResponse++;
  if (buildCounterListMediationGroupsResponse < 3) {
    o.mediationGroups = buildUnnamed15();
    o.nextPageToken = 'foo';
  }
  buildCounterListMediationGroupsResponse--;
  return o;
}

void checkListMediationGroupsResponse(api.ListMediationGroupsResponse o) {
  buildCounterListMediationGroupsResponse++;
  if (buildCounterListMediationGroupsResponse < 3) {
    checkUnnamed15(o.mediationGroups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListMediationGroupsResponse--;
}

core.List<api.PublisherAccount> buildUnnamed16() => [
  buildPublisherAccount(),
  buildPublisherAccount(),
];

void checkUnnamed16(core.List<api.PublisherAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherAccount(o[0]);
  checkPublisherAccount(o[1]);
}

core.int buildCounterListPublisherAccountsResponse = 0;
api.ListPublisherAccountsResponse buildListPublisherAccountsResponse() {
  final o = api.ListPublisherAccountsResponse();
  buildCounterListPublisherAccountsResponse++;
  if (buildCounterListPublisherAccountsResponse < 3) {
    o.account = buildUnnamed16();
    o.nextPageToken = 'foo';
  }
  buildCounterListPublisherAccountsResponse--;
  return o;
}

void checkListPublisherAccountsResponse(api.ListPublisherAccountsResponse o) {
  buildCounterListPublisherAccountsResponse++;
  if (buildCounterListPublisherAccountsResponse < 3) {
    checkUnnamed16(o.account!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
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
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
  }
  buildCounterLocalizationSettings--;
}

core.List<api.MediationAbExperimentExperimentMediationLine> buildUnnamed17() =>
    [
      buildMediationAbExperimentExperimentMediationLine(),
      buildMediationAbExperimentExperimentMediationLine(),
    ];

void checkUnnamed17(
  core.List<api.MediationAbExperimentExperimentMediationLine> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkMediationAbExperimentExperimentMediationLine(o[0]);
  checkMediationAbExperimentExperimentMediationLine(o[1]);
}

core.List<api.MediationAbExperimentExperimentMediationLine> buildUnnamed18() =>
    [
      buildMediationAbExperimentExperimentMediationLine(),
      buildMediationAbExperimentExperimentMediationLine(),
    ];

void checkUnnamed18(
  core.List<api.MediationAbExperimentExperimentMediationLine> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkMediationAbExperimentExperimentMediationLine(o[0]);
  checkMediationAbExperimentExperimentMediationLine(o[1]);
}

core.int buildCounterMediationAbExperiment = 0;
api.MediationAbExperiment buildMediationAbExperiment() {
  final o = api.MediationAbExperiment();
  buildCounterMediationAbExperiment++;
  if (buildCounterMediationAbExperiment < 3) {
    o.controlMediationLines = buildUnnamed17();
    o.displayName = 'foo';
    o.endTime = 'foo';
    o.experimentId = 'foo';
    o.mediationGroupId = 'foo';
    o.name = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
    o.treatmentMediationLines = buildUnnamed18();
    o.treatmentTrafficPercentage = 'foo';
    o.variantLeader = 'foo';
  }
  buildCounterMediationAbExperiment--;
  return o;
}

void checkMediationAbExperiment(api.MediationAbExperiment o) {
  buildCounterMediationAbExperiment++;
  if (buildCounterMediationAbExperiment < 3) {
    checkUnnamed17(o.controlMediationLines!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.experimentId!, unittest.equals('foo'));
    unittest.expect(o.mediationGroupId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed18(o.treatmentMediationLines!);
    unittest.expect(o.treatmentTrafficPercentage!, unittest.equals('foo'));
    unittest.expect(o.variantLeader!, unittest.equals('foo'));
  }
  buildCounterMediationAbExperiment--;
}

core.int buildCounterMediationAbExperimentExperimentMediationLine = 0;
api.MediationAbExperimentExperimentMediationLine
buildMediationAbExperimentExperimentMediationLine() {
  final o = api.MediationAbExperimentExperimentMediationLine();
  buildCounterMediationAbExperimentExperimentMediationLine++;
  if (buildCounterMediationAbExperimentExperimentMediationLine < 3) {
    o.mediationGroupLine = buildMediationGroupMediationGroupLine();
  }
  buildCounterMediationAbExperimentExperimentMediationLine--;
  return o;
}

void checkMediationAbExperimentExperimentMediationLine(
  api.MediationAbExperimentExperimentMediationLine o,
) {
  buildCounterMediationAbExperimentExperimentMediationLine++;
  if (buildCounterMediationAbExperimentExperimentMediationLine < 3) {
    checkMediationGroupMediationGroupLine(o.mediationGroupLine!);
  }
  buildCounterMediationAbExperimentExperimentMediationLine--;
}

core.Map<core.String, api.MediationGroupMediationGroupLine> buildUnnamed19() =>
    {
      'x': buildMediationGroupMediationGroupLine(),
      'y': buildMediationGroupMediationGroupLine(),
    };

void checkUnnamed19(
  core.Map<core.String, api.MediationGroupMediationGroupLine> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkMediationGroupMediationGroupLine(o['x']!);
  checkMediationGroupMediationGroupLine(o['y']!);
}

core.int buildCounterMediationGroup = 0;
api.MediationGroup buildMediationGroup() {
  final o = api.MediationGroup();
  buildCounterMediationGroup++;
  if (buildCounterMediationGroup < 3) {
    o.displayName = 'foo';
    o.mediationAbExperimentState = 'foo';
    o.mediationGroupId = 'foo';
    o.mediationGroupLines = buildUnnamed19();
    o.name = 'foo';
    o.state = 'foo';
    o.targeting = buildMediationGroupTargeting();
  }
  buildCounterMediationGroup--;
  return o;
}

void checkMediationGroup(api.MediationGroup o) {
  buildCounterMediationGroup++;
  if (buildCounterMediationGroup < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.mediationAbExperimentState!, unittest.equals('foo'));
    unittest.expect(o.mediationGroupId!, unittest.equals('foo'));
    checkUnnamed19(o.mediationGroupLines!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkMediationGroupTargeting(o.targeting!);
  }
  buildCounterMediationGroup--;
}

core.Map<core.String, core.String> buildUnnamed20() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed20(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterMediationGroupMediationGroupLine = 0;
api.MediationGroupMediationGroupLine buildMediationGroupMediationGroupLine() {
  final o = api.MediationGroupMediationGroupLine();
  buildCounterMediationGroupMediationGroupLine++;
  if (buildCounterMediationGroupMediationGroupLine < 3) {
    o.adSourceId = 'foo';
    o.adUnitMappings = buildUnnamed20();
    o.cpmMicros = 'foo';
    o.cpmMode = 'foo';
    o.displayName = 'foo';
    o.experimentVariant = 'foo';
    o.id = 'foo';
    o.state = 'foo';
  }
  buildCounterMediationGroupMediationGroupLine--;
  return o;
}

void checkMediationGroupMediationGroupLine(
  api.MediationGroupMediationGroupLine o,
) {
  buildCounterMediationGroupMediationGroupLine++;
  if (buildCounterMediationGroupMediationGroupLine < 3) {
    unittest.expect(o.adSourceId!, unittest.equals('foo'));
    checkUnnamed20(o.adUnitMappings!);
    unittest.expect(o.cpmMicros!, unittest.equals('foo'));
    unittest.expect(o.cpmMode!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.experimentVariant!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterMediationGroupMediationGroupLine--;
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

core.int buildCounterMediationGroupTargeting = 0;
api.MediationGroupTargeting buildMediationGroupTargeting() {
  final o = api.MediationGroupTargeting();
  buildCounterMediationGroupTargeting++;
  if (buildCounterMediationGroupTargeting < 3) {
    o.adUnitIds = buildUnnamed21();
    o.excludedRegionCodes = buildUnnamed22();
    o.format = 'foo';
    o.idfaTargeting = 'foo';
    o.platform = 'foo';
    o.targetedRegionCodes = buildUnnamed23();
  }
  buildCounterMediationGroupTargeting--;
  return o;
}

void checkMediationGroupTargeting(api.MediationGroupTargeting o) {
  buildCounterMediationGroupTargeting++;
  if (buildCounterMediationGroupTargeting < 3) {
    checkUnnamed21(o.adUnitIds!);
    checkUnnamed22(o.excludedRegionCodes!);
    unittest.expect(o.format!, unittest.equals('foo'));
    unittest.expect(o.idfaTargeting!, unittest.equals('foo'));
    unittest.expect(o.platform!, unittest.equals('foo'));
    checkUnnamed23(o.targetedRegionCodes!);
  }
  buildCounterMediationGroupTargeting--;
}

core.List<api.MediationReportSpecDimensionFilter> buildUnnamed24() => [
  buildMediationReportSpecDimensionFilter(),
  buildMediationReportSpecDimensionFilter(),
];

void checkUnnamed24(core.List<api.MediationReportSpecDimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMediationReportSpecDimensionFilter(o[0]);
  checkMediationReportSpecDimensionFilter(o[1]);
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

core.List<api.MediationReportSpecSortCondition> buildUnnamed27() => [
  buildMediationReportSpecSortCondition(),
  buildMediationReportSpecSortCondition(),
];

void checkUnnamed27(core.List<api.MediationReportSpecSortCondition> o) {
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
    o.dimensionFilters = buildUnnamed24();
    o.dimensions = buildUnnamed25();
    o.localizationSettings = buildLocalizationSettings();
    o.maxReportRows = 42;
    o.metrics = buildUnnamed26();
    o.sortConditions = buildUnnamed27();
    o.timeZone = 'foo';
  }
  buildCounterMediationReportSpec--;
  return o;
}

void checkMediationReportSpec(api.MediationReportSpec o) {
  buildCounterMediationReportSpec++;
  if (buildCounterMediationReportSpec < 3) {
    checkDateRange(o.dateRange!);
    checkUnnamed24(o.dimensionFilters!);
    checkUnnamed25(o.dimensions!);
    checkLocalizationSettings(o.localizationSettings!);
    unittest.expect(o.maxReportRows!, unittest.equals(42));
    checkUnnamed26(o.metrics!);
    checkUnnamed27(o.sortConditions!);
    unittest.expect(o.timeZone!, unittest.equals('foo'));
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
  api.MediationReportSpecDimensionFilter o,
) {
  buildCounterMediationReportSpecDimensionFilter++;
  if (buildCounterMediationReportSpecDimensionFilter < 3) {
    unittest.expect(o.dimension!, unittest.equals('foo'));
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
  api.MediationReportSpecSortCondition o,
) {
  buildCounterMediationReportSpecSortCondition++;
  if (buildCounterMediationReportSpecSortCondition < 3) {
    unittest.expect(o.dimension!, unittest.equals('foo'));
    unittest.expect(o.metric!, unittest.equals('foo'));
    unittest.expect(o.order!, unittest.equals('foo'));
  }
  buildCounterMediationReportSpecSortCondition--;
}

core.List<api.NetworkReportSpecDimensionFilter> buildUnnamed28() => [
  buildNetworkReportSpecDimensionFilter(),
  buildNetworkReportSpecDimensionFilter(),
];

void checkUnnamed28(core.List<api.NetworkReportSpecDimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkReportSpecDimensionFilter(o[0]);
  checkNetworkReportSpecDimensionFilter(o[1]);
}

core.List<core.String> buildUnnamed29() => ['foo', 'foo'];

void checkUnnamed29(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.NetworkReportSpecSortCondition> buildUnnamed31() => [
  buildNetworkReportSpecSortCondition(),
  buildNetworkReportSpecSortCondition(),
];

void checkUnnamed31(core.List<api.NetworkReportSpecSortCondition> o) {
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
    o.dimensionFilters = buildUnnamed28();
    o.dimensions = buildUnnamed29();
    o.localizationSettings = buildLocalizationSettings();
    o.maxReportRows = 42;
    o.metrics = buildUnnamed30();
    o.sortConditions = buildUnnamed31();
    o.timeZone = 'foo';
  }
  buildCounterNetworkReportSpec--;
  return o;
}

void checkNetworkReportSpec(api.NetworkReportSpec o) {
  buildCounterNetworkReportSpec++;
  if (buildCounterNetworkReportSpec < 3) {
    checkDateRange(o.dateRange!);
    checkUnnamed28(o.dimensionFilters!);
    checkUnnamed29(o.dimensions!);
    checkLocalizationSettings(o.localizationSettings!);
    unittest.expect(o.maxReportRows!, unittest.equals(42));
    checkUnnamed30(o.metrics!);
    checkUnnamed31(o.sortConditions!);
    unittest.expect(o.timeZone!, unittest.equals('foo'));
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
  api.NetworkReportSpecDimensionFilter o,
) {
  buildCounterNetworkReportSpecDimensionFilter++;
  if (buildCounterNetworkReportSpecDimensionFilter < 3) {
    unittest.expect(o.dimension!, unittest.equals('foo'));
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
    unittest.expect(o.dimension!, unittest.equals('foo'));
    unittest.expect(o.metric!, unittest.equals('foo'));
    unittest.expect(o.order!, unittest.equals('foo'));
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
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.publisherId!, unittest.equals('foo'));
    unittest.expect(o.reportingTimeZone!, unittest.equals('foo'));
  }
  buildCounterPublisherAccount--;
}

core.List<api.ReportWarning> buildUnnamed32() => [
  buildReportWarning(),
  buildReportWarning(),
];

void checkUnnamed32(core.List<api.ReportWarning> o) {
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
    o.warnings = buildUnnamed32();
  }
  buildCounterReportFooter--;
  return o;
}

void checkReportFooter(api.ReportFooter o) {
  buildCounterReportFooter++;
  if (buildCounterReportFooter < 3) {
    unittest.expect(o.matchingRowCount!, unittest.equals('foo'));
    checkUnnamed32(o.warnings!);
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
    unittest.expect(o.reportingTimeZone!, unittest.equals('foo'));
  }
  buildCounterReportHeader--;
}

core.Map<core.String, api.ReportRowDimensionValue> buildUnnamed33() => {
  'x': buildReportRowDimensionValue(),
  'y': buildReportRowDimensionValue(),
};

void checkUnnamed33(core.Map<core.String, api.ReportRowDimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRowDimensionValue(o['x']!);
  checkReportRowDimensionValue(o['y']!);
}

core.Map<core.String, api.ReportRowMetricValue> buildUnnamed34() => {
  'x': buildReportRowMetricValue(),
  'y': buildReportRowMetricValue(),
};

void checkUnnamed34(core.Map<core.String, api.ReportRowMetricValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRowMetricValue(o['x']!);
  checkReportRowMetricValue(o['y']!);
}

core.int buildCounterReportRow = 0;
api.ReportRow buildReportRow() {
  final o = api.ReportRow();
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    o.dimensionValues = buildUnnamed33();
    o.metricValues = buildUnnamed34();
  }
  buildCounterReportRow--;
  return o;
}

void checkReportRow(api.ReportRow o) {
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    checkUnnamed33(o.dimensionValues!);
    checkUnnamed34(o.metricValues!);
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
    unittest.expect(o.displayLabel!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
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
    unittest.expect(o.doubleValue!, unittest.equals(42.0));
    unittest.expect(o.integerValue!, unittest.equals('foo'));
    unittest.expect(o.microsValue!, unittest.equals('foo'));
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
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterReportWarning--;
}

core.int buildCounterStopMediationAbExperimentRequest = 0;
api.StopMediationAbExperimentRequest buildStopMediationAbExperimentRequest() {
  final o = api.StopMediationAbExperimentRequest();
  buildCounterStopMediationAbExperimentRequest++;
  if (buildCounterStopMediationAbExperimentRequest < 3) {
    o.variantChoice = 'foo';
  }
  buildCounterStopMediationAbExperimentRequest--;
  return o;
}

void checkStopMediationAbExperimentRequest(
  api.StopMediationAbExperimentRequest o,
) {
  buildCounterStopMediationAbExperimentRequest++;
  if (buildCounterStopMediationAbExperimentRequest < 3) {
    unittest.expect(o.variantChoice!, unittest.equals('foo'));
  }
  buildCounterStopMediationAbExperimentRequest--;
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringList = 0;
api.StringList buildStringList() {
  final o = api.StringList();
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    o.values = buildUnnamed35();
  }
  buildCounterStringList--;
  return o;
}

void checkStringList(api.StringList o) {
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    checkUnnamed35(o.values!);
  }
  buildCounterStringList--;
}

void main() {
  unittest.group('obj-schema-AdSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdSource(od);
    });
  });

  unittest.group('obj-schema-AdUnit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdUnit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdUnit.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdUnit(od);
    });
  });

  unittest.group('obj-schema-AdUnitMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdUnitMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdUnitMapping.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdUnitMapping(od);
    });
  });

  unittest.group('obj-schema-AdUnitRewardSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdUnitRewardSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdUnitRewardSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdUnitRewardSettings(od);
    });
  });

  unittest.group('obj-schema-Adapter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdapter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Adapter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdapter(od);
    });
  });

  unittest.group('obj-schema-AdapterAdapterConfigMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdapterAdapterConfigMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdapterAdapterConfigMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdapterAdapterConfigMetadata(od);
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
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppLinkedAppInfo(od);
    });
  });

  unittest.group('obj-schema-AppManualAppInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppManualAppInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppManualAppInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppManualAppInfo(od);
    });
  });

  unittest.group('obj-schema-BatchCreateAdUnitMappingsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateAdUnitMappingsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateAdUnitMappingsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchCreateAdUnitMappingsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreateAdUnitMappingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateAdUnitMappingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateAdUnitMappingsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchCreateAdUnitMappingsResponse(od);
    });
  });

  unittest.group('obj-schema-CampaignReportSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCampaignReportSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CampaignReportSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCampaignReportSpec(od);
    });
  });

  unittest.group('obj-schema-CreateAdUnitMappingRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateAdUnitMappingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateAdUnitMappingRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateAdUnitMappingRequest(od);
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

  unittest.group('obj-schema-GenerateCampaignReportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateCampaignReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateCampaignReportRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateCampaignReportRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateCampaignReportResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateCampaignReportResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateCampaignReportResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateCampaignReportResponse(od);
    });
  });

  unittest.group('obj-schema-GenerateMediationReportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateMediationReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateMediationReportRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateMediationReportRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateMediationReportResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateMediationReportResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateMediationReportResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateMediationReportResponse(od);
    });
  });

  unittest.group('obj-schema-GenerateNetworkReportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateNetworkReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateNetworkReportRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateNetworkReportRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateNetworkReportResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateNetworkReportResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateNetworkReportResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateNetworkReportResponse(od);
    });
  });

  unittest.group('obj-schema-ListAdSourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAdSourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAdSourcesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAdSourcesResponse(od);
    });
  });

  unittest.group('obj-schema-ListAdUnitMappingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAdUnitMappingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAdUnitMappingsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAdUnitMappingsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAdUnitsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAdUnitsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAdUnitsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAdUnitsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAdaptersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAdaptersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAdaptersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAdaptersResponse(od);
    });
  });

  unittest.group('obj-schema-ListAppsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAppsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAppsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAppsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMediationGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMediationGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMediationGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMediationGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPublisherAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPublisherAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPublisherAccountsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPublisherAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-LocalizationSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalizationSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalizationSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocalizationSettings(od);
    });
  });

  unittest.group('obj-schema-MediationAbExperiment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediationAbExperiment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediationAbExperiment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMediationAbExperiment(od);
    });
  });

  unittest.group('obj-schema-MediationAbExperimentExperimentMediationLine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediationAbExperimentExperimentMediationLine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediationAbExperimentExperimentMediationLine.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMediationAbExperimentExperimentMediationLine(od);
    });
  });

  unittest.group('obj-schema-MediationGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediationGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediationGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMediationGroup(od);
    });
  });

  unittest.group('obj-schema-MediationGroupMediationGroupLine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediationGroupMediationGroupLine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediationGroupMediationGroupLine.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMediationGroupMediationGroupLine(od);
    });
  });

  unittest.group('obj-schema-MediationGroupTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediationGroupTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediationGroupTargeting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMediationGroupTargeting(od);
    });
  });

  unittest.group('obj-schema-MediationReportSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediationReportSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediationReportSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMediationReportSpec(od);
    });
  });

  unittest.group('obj-schema-MediationReportSpecDimensionFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediationReportSpecDimensionFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediationReportSpecDimensionFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMediationReportSpecDimensionFilter(od);
    });
  });

  unittest.group('obj-schema-MediationReportSpecSortCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediationReportSpecSortCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediationReportSpecSortCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMediationReportSpecSortCondition(od);
    });
  });

  unittest.group('obj-schema-NetworkReportSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkReportSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkReportSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkReportSpec(od);
    });
  });

  unittest.group('obj-schema-NetworkReportSpecDimensionFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkReportSpecDimensionFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkReportSpecDimensionFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkReportSpecDimensionFilter(od);
    });
  });

  unittest.group('obj-schema-NetworkReportSpecSortCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkReportSpecSortCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkReportSpecSortCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkReportSpecSortCondition(od);
    });
  });

  unittest.group('obj-schema-PublisherAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublisherAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublisherAccount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPublisherAccount(od);
    });
  });

  unittest.group('obj-schema-ReportFooter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportFooter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportFooter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportFooter(od);
    });
  });

  unittest.group('obj-schema-ReportHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportHeader.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportHeader(od);
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

  unittest.group('obj-schema-ReportRowDimensionValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRowDimensionValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportRowDimensionValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportRowDimensionValue(od);
    });
  });

  unittest.group('obj-schema-ReportRowMetricValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRowMetricValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportRowMetricValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportRowMetricValue(od);
    });
  });

  unittest.group('obj-schema-ReportWarning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportWarning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportWarning.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportWarning(od);
    });
  });

  unittest.group('obj-schema-StopMediationAbExperimentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopMediationAbExperimentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopMediationAbExperimentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStopMediationAbExperimentRequest(od);
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

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPublisherAccount());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPublisherAccount(response as api.PublisherAccount);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListPublisherAccountsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListPublisherAccountsResponse(
        response as api.ListPublisherAccountsResponse,
      );
    });
  });

  unittest.group('resource-AccountsAdSourcesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.adSources;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAdSourcesResponse());
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
      checkListAdSourcesResponse(response as api.ListAdSourcesResponse);
    });
  });

  unittest.group('resource-AccountsAdSourcesAdaptersResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.adSources.adapters;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAdaptersResponse());
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
      checkListAdaptersResponse(response as api.ListAdaptersResponse);
    });
  });

  unittest.group('resource-AccountsAdUnitMappingsResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.adUnitMappings;
      final arg_request = buildBatchCreateAdUnitMappingsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchCreateAdUnitMappingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchCreateAdUnitMappingsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildBatchCreateAdUnitMappingsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchCreate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkBatchCreateAdUnitMappingsResponse(
        response as api.BatchCreateAdUnitMappingsResponse,
      );
    });
  });

  unittest.group('resource-AccountsAdUnitsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.adUnits;
      final arg_request = buildAdUnit();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AdUnit.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAdUnit(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAdUnit());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkAdUnit(response as api.AdUnit);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.adUnits;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAdUnitsResponse());
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
      checkListAdUnitsResponse(response as api.ListAdUnitsResponse);
    });
  });

  unittest.group('resource-AccountsAdUnitsAdUnitMappingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.adUnits.adUnitMappings;
      final arg_request = buildAdUnitMapping();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AdUnitMapping.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAdUnitMapping(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAdUnitMapping());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkAdUnitMapping(response as api.AdUnitMapping);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.adUnits.adUnitMappings;
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
          final resp = convert.json.encode(buildListAdUnitMappingsResponse());
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
      checkListAdUnitMappingsResponse(
        response as api.ListAdUnitMappingsResponse,
      );
    });
  });

  unittest.group('resource-AccountsAppsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.apps;
      final arg_request = buildApp();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.App.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkApp(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildApp());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkApp(response as api.App);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.apps;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAppsResponse());
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
      checkListAppsResponse(response as api.ListAppsResponse);
    });
  });

  unittest.group('resource-AccountsCampaignReportResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.campaignReport;
      final arg_request = buildGenerateCampaignReportRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateCampaignReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateCampaignReportRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGenerateCampaignReportResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGenerateCampaignReportResponse(
        response as api.GenerateCampaignReportResponse,
      );
    });
  });

  unittest.group('resource-AccountsMediationGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.mediationGroups;
      final arg_request = buildMediationGroup();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MediationGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMediationGroup(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildMediationGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkMediationGroup(response as api.MediationGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.mediationGroups;
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
          final resp = convert.json.encode(buildListMediationGroupsResponse());
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
      checkListMediationGroupsResponse(
        response as api.ListMediationGroupsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.mediationGroups;
      final arg_request = buildMediationGroup();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MediationGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMediationGroup(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildMediationGroup());
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
      checkMediationGroup(response as api.MediationGroup);
    });
  });

  unittest.group(
    'resource-AccountsMediationGroupsMediationAbExperimentsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.AdMobApi(mock).accounts.mediationGroups.mediationAbExperiments;
        final arg_request = buildMediationAbExperiment();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.MediationAbExperiment.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkMediationAbExperiment(obj);

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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildMediationAbExperiment());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkMediationAbExperiment(response as api.MediationAbExperiment);
      });

      unittest.test('method--stop', () async {
        final mock = HttpServerMock();
        final res =
            api.AdMobApi(mock).accounts.mediationGroups.mediationAbExperiments;
        final arg_request = buildStopMediationAbExperimentRequest();
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.StopMediationAbExperimentRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkStopMediationAbExperimentRequest(obj);

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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildMediationAbExperiment());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.stop(
          arg_request,
          arg_name,
          $fields: arg_$fields,
        );
        checkMediationAbExperiment(response as api.MediationAbExperiment);
      });
    },
  );

  unittest.group('resource-AccountsMediationReportResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.mediationReport;
      final arg_request = buildGenerateMediationReportRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateMediationReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateMediationReportRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGenerateMediationReportResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGenerateMediationReportResponse(
        response as api.GenerateMediationReportResponse,
      );
    });
  });

  unittest.group('resource-AccountsNetworkReportResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.AdMobApi(mock).accounts.networkReport;
      final arg_request = buildGenerateNetworkReportRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateNetworkReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateNetworkReportRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGenerateNetworkReportResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGenerateNetworkReportResponse(
        response as api.GenerateNetworkReportResponse,
      );
    });
  });
}
