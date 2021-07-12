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

import 'package:googleapis_beta/analyticsadmin/v1alpha.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleAnalyticsAdminV1alphaAccount = 0;
api.GoogleAnalyticsAdminV1alphaAccount
    buildGoogleAnalyticsAdminV1alphaAccount() {
  final o = api.GoogleAnalyticsAdminV1alphaAccount();
  buildCounterGoogleAnalyticsAdminV1alphaAccount++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccount < 3) {
    o.createTime = 'foo';
    o.deleted = true;
    o.displayName = 'foo';
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

core.List<api.GoogleAnalyticsAdminV1alphaPropertySummary> buildUnnamed8251() {
  final o = <api.GoogleAnalyticsAdminV1alphaPropertySummary>[];
  o.add(buildGoogleAnalyticsAdminV1alphaPropertySummary());
  o.add(buildGoogleAnalyticsAdminV1alphaPropertySummary());
  return o;
}

void checkUnnamed8251(
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
    o.propertySummaries = buildUnnamed8251();
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
    checkUnnamed8251(o.propertySummaries!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccountSummary--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAndroidAppDataStream = 0;
api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream
    buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream() {
  final o = api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream();
  buildCounterGoogleAnalyticsAdminV1alphaAndroidAppDataStream++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAndroidAppDataStream < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.firebaseAppId = 'foo';
    o.name = 'foo';
    o.packageName = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAndroidAppDataStream--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(
    api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream o) {
  buildCounterGoogleAnalyticsAdminV1alphaAndroidAppDataStream++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAndroidAppDataStream < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firebaseAppId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAndroidAppDataStream--;
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

core.List<core.String> buildUnnamed8252() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8252(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8253() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8253(core.List<core.String> o) {
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

core.int buildCounterGoogleAnalyticsAdminV1alphaAuditUserLink = 0;
api.GoogleAnalyticsAdminV1alphaAuditUserLink
    buildGoogleAnalyticsAdminV1alphaAuditUserLink() {
  final o = api.GoogleAnalyticsAdminV1alphaAuditUserLink();
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAuditUserLink < 3) {
    o.directRoles = buildUnnamed8252();
    o.effectiveRoles = buildUnnamed8253();
    o.emailAddress = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLink--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAuditUserLink(
    api.GoogleAnalyticsAdminV1alphaAuditUserLink o) {
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAuditUserLink < 3) {
    checkUnnamed8252(o.directRoles!);
    checkUnnamed8253(o.effectiveRoles!);
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLink--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksRequest = 0;
api.GoogleAnalyticsAdminV1alphaAuditUserLinksRequest
    buildGoogleAnalyticsAdminV1alphaAuditUserLinksRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaAuditUserLinksRequest();
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksRequest < 3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAuditUserLinksRequest(
    api.GoogleAnalyticsAdminV1alphaAuditUserLinksRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksRequest < 3) {
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksRequest--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAuditUserLink> buildUnnamed8254() {
  final o = <api.GoogleAnalyticsAdminV1alphaAuditUserLink>[];
  o.add(buildGoogleAnalyticsAdminV1alphaAuditUserLink());
  o.add(buildGoogleAnalyticsAdminV1alphaAuditUserLink());
  return o;
}

void checkUnnamed8254(
    core.List<api.GoogleAnalyticsAdminV1alphaAuditUserLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAuditUserLink(o[0]);
  checkGoogleAnalyticsAdminV1alphaAuditUserLink(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksResponse = 0;
api.GoogleAnalyticsAdminV1alphaAuditUserLinksResponse
    buildGoogleAnalyticsAdminV1alphaAuditUserLinksResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaAuditUserLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksResponse < 3) {
    o.nextPageToken = 'foo';
    o.userLinks = buildUnnamed8254();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAuditUserLinksResponse(
    api.GoogleAnalyticsAdminV1alphaAuditUserLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8254(o.userLinks!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest>
    buildUnnamed8255() {
  final o = <api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest>[];
  o.add(buildGoogleAnalyticsAdminV1alphaCreateUserLinkRequest());
  o.add(buildGoogleAnalyticsAdminV1alphaCreateUserLinkRequest());
  return o;
}

void checkUnnamed8255(
    core.List<api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaCreateUserLinkRequest(o[0]);
  checkGoogleAnalyticsAdminV1alphaCreateUserLinkRequest(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest = 0;
api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest
    buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest();
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest < 3) {
    o.notifyNewUsers = true;
    o.requests = buildUnnamed8255();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest(
    api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest < 3) {
    unittest.expect(o.notifyNewUsers!, unittest.isTrue);
    checkUnnamed8255(o.requests!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest--;
}

core.List<api.GoogleAnalyticsAdminV1alphaUserLink> buildUnnamed8256() {
  final o = <api.GoogleAnalyticsAdminV1alphaUserLink>[];
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  return o;
}

void checkUnnamed8256(core.List<api.GoogleAnalyticsAdminV1alphaUserLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaUserLink(o[0]);
  checkGoogleAnalyticsAdminV1alphaUserLink(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse =
    0;
api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse
    buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse < 3) {
    o.userLinks = buildUnnamed8256();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse(
    api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse < 3) {
    checkUnnamed8256(o.userLinks!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest>
    buildUnnamed8257() {
  final o = <api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest>[];
  o.add(buildGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest());
  o.add(buildGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest());
  return o;
}

void checkUnnamed8257(
    core.List<api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest(o[0]);
  checkGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest = 0;
api.GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest
    buildGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest();
  buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest < 3) {
    o.requests = buildUnnamed8257();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest(
    api.GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest < 3) {
    checkUnnamed8257(o.requests!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest--;
}

core.List<api.GoogleAnalyticsAdminV1alphaUserLink> buildUnnamed8258() {
  final o = <api.GoogleAnalyticsAdminV1alphaUserLink>[];
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  return o;
}

void checkUnnamed8258(core.List<api.GoogleAnalyticsAdminV1alphaUserLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaUserLink(o[0]);
  checkGoogleAnalyticsAdminV1alphaUserLink(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse = 0;
api.GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse
    buildGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse < 3) {
    o.userLinks = buildUnnamed8258();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse(
    api.GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse < 3) {
    checkUnnamed8258(o.userLinks!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest>
    buildUnnamed8259() {
  final o = <api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest>[];
  o.add(buildGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest());
  o.add(buildGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest());
  return o;
}

void checkUnnamed8259(
    core.List<api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest(o[0]);
  checkGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest = 0;
api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest
    buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest();
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest < 3) {
    o.requests = buildUnnamed8259();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest(
    api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest < 3) {
    checkUnnamed8259(o.requests!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest--;
}

core.List<api.GoogleAnalyticsAdminV1alphaUserLink> buildUnnamed8260() {
  final o = <api.GoogleAnalyticsAdminV1alphaUserLink>[];
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  return o;
}

void checkUnnamed8260(core.List<api.GoogleAnalyticsAdminV1alphaUserLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaUserLink(o[0]);
  checkGoogleAnalyticsAdminV1alphaUserLink(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse =
    0;
api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse
    buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse < 3) {
    o.userLinks = buildUnnamed8260();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse(
    api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse < 3) {
    checkUnnamed8260(o.userLinks!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse--;
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
    o.androidAppDataStream =
        buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream();
    o.conversionEvent = buildGoogleAnalyticsAdminV1alphaConversionEvent();
    o.customDimension = buildGoogleAnalyticsAdminV1alphaCustomDimension();
    o.customMetric = buildGoogleAnalyticsAdminV1alphaCustomMetric();
    o.firebaseLink = buildGoogleAnalyticsAdminV1alphaFirebaseLink();
    o.googleAdsLink = buildGoogleAnalyticsAdminV1alphaGoogleAdsLink();
    o.googleSignalsSettings =
        buildGoogleAnalyticsAdminV1alphaGoogleSignalsSettings();
    o.iosAppDataStream = buildGoogleAnalyticsAdminV1alphaIosAppDataStream();
    o.measurementProtocolSecret =
        buildGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret();
    o.property = buildGoogleAnalyticsAdminV1alphaProperty();
    o.webDataStream = buildGoogleAnalyticsAdminV1alphaWebDataStream();
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
    checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(
        o.androidAppDataStream!);
    checkGoogleAnalyticsAdminV1alphaConversionEvent(o.conversionEvent!);
    checkGoogleAnalyticsAdminV1alphaCustomDimension(o.customDimension!);
    checkGoogleAnalyticsAdminV1alphaCustomMetric(o.customMetric!);
    checkGoogleAnalyticsAdminV1alphaFirebaseLink(o.firebaseLink!);
    checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(o.googleAdsLink!);
    checkGoogleAnalyticsAdminV1alphaGoogleSignalsSettings(
        o.googleSignalsSettings!);
    checkGoogleAnalyticsAdminV1alphaIosAppDataStream(o.iosAppDataStream!);
    checkGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret(
        o.measurementProtocolSecret!);
    checkGoogleAnalyticsAdminV1alphaProperty(o.property!);
    checkGoogleAnalyticsAdminV1alphaWebDataStream(o.webDataStream!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource--;
}

core.List<api.GoogleAnalyticsAdminV1alphaChangeHistoryChange>
    buildUnnamed8261() {
  final o = <api.GoogleAnalyticsAdminV1alphaChangeHistoryChange>[];
  o.add(buildGoogleAnalyticsAdminV1alphaChangeHistoryChange());
  o.add(buildGoogleAnalyticsAdminV1alphaChangeHistoryChange());
  return o;
}

void checkUnnamed8261(
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
    o.changes = buildUnnamed8261();
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
    checkUnnamed8261(o.changes!);
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

core.int buildCounterGoogleAnalyticsAdminV1alphaConversionEvent = 0;
api.GoogleAnalyticsAdminV1alphaConversionEvent
    buildGoogleAnalyticsAdminV1alphaConversionEvent() {
  final o = api.GoogleAnalyticsAdminV1alphaConversionEvent();
  buildCounterGoogleAnalyticsAdminV1alphaConversionEvent++;
  if (buildCounterGoogleAnalyticsAdminV1alphaConversionEvent < 3) {
    o.createTime = 'foo';
    o.custom = true;
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
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.custom!, unittest.isTrue);
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

core.int buildCounterGoogleAnalyticsAdminV1alphaCreateUserLinkRequest = 0;
api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest
    buildGoogleAnalyticsAdminV1alphaCreateUserLinkRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest();
  buildCounterGoogleAnalyticsAdminV1alphaCreateUserLinkRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCreateUserLinkRequest < 3) {
    o.notifyNewUser = true;
    o.parent = 'foo';
    o.userLink = buildGoogleAnalyticsAdminV1alphaUserLink();
  }
  buildCounterGoogleAnalyticsAdminV1alphaCreateUserLinkRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaCreateUserLinkRequest(
    api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaCreateUserLinkRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaCreateUserLinkRequest < 3) {
    unittest.expect(o.notifyNewUser!, unittest.isTrue);
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1alphaUserLink(o.userLink!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaCreateUserLinkRequest--;
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
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaCustomMetric--;
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

core.int buildCounterGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest = 0;
api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest
    buildGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest();
  buildCounterGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest < 3) {
    o.name = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest(
    api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings = 0;
api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings
    buildGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings() {
  final o = api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings();
  buildCounterGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings++;
  if (buildCounterGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings < 3) {
    o.fileDownloadsEnabled = true;
    o.name = 'foo';
    o.outboundClicksEnabled = true;
    o.pageChangesEnabled = true;
    o.pageLoadsEnabled = true;
    o.pageViewsEnabled = true;
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.outboundClicksEnabled!, unittest.isTrue);
    unittest.expect(o.pageChangesEnabled!, unittest.isTrue);
    unittest.expect(o.pageLoadsEnabled!, unittest.isTrue);
    unittest.expect(o.pageViewsEnabled!, unittest.isTrue);
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

core.int buildCounterGoogleAnalyticsAdminV1alphaIosAppDataStream = 0;
api.GoogleAnalyticsAdminV1alphaIosAppDataStream
    buildGoogleAnalyticsAdminV1alphaIosAppDataStream() {
  final o = api.GoogleAnalyticsAdminV1alphaIosAppDataStream();
  buildCounterGoogleAnalyticsAdminV1alphaIosAppDataStream++;
  if (buildCounterGoogleAnalyticsAdminV1alphaIosAppDataStream < 3) {
    o.bundleId = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.firebaseAppId = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaIosAppDataStream--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaIosAppDataStream(
    api.GoogleAnalyticsAdminV1alphaIosAppDataStream o) {
  buildCounterGoogleAnalyticsAdminV1alphaIosAppDataStream++;
  if (buildCounterGoogleAnalyticsAdminV1alphaIosAppDataStream < 3) {
    unittest.expect(
      o.bundleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firebaseAppId!,
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
  buildCounterGoogleAnalyticsAdminV1alphaIosAppDataStream--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAccountSummary> buildUnnamed8262() {
  final o = <api.GoogleAnalyticsAdminV1alphaAccountSummary>[];
  o.add(buildGoogleAnalyticsAdminV1alphaAccountSummary());
  o.add(buildGoogleAnalyticsAdminV1alphaAccountSummary());
  return o;
}

void checkUnnamed8262(
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
    o.accountSummaries = buildUnnamed8262();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListAccountSummariesResponse(
    api.GoogleAnalyticsAdminV1alphaListAccountSummariesResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse < 3) {
    checkUnnamed8262(o.accountSummaries!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAccount> buildUnnamed8263() {
  final o = <api.GoogleAnalyticsAdminV1alphaAccount>[];
  o.add(buildGoogleAnalyticsAdminV1alphaAccount());
  o.add(buildGoogleAnalyticsAdminV1alphaAccount());
  return o;
}

void checkUnnamed8263(core.List<api.GoogleAnalyticsAdminV1alphaAccount> o) {
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
    o.accounts = buildUnnamed8263();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListAccountsResponse(
    api.GoogleAnalyticsAdminV1alphaListAccountsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse < 3) {
    checkUnnamed8263(o.accounts!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream>
    buildUnnamed8264() {
  final o = <api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream>[];
  o.add(buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream());
  o.add(buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream());
  return o;
}

void checkUnnamed8264(
    core.List<api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(o[0]);
  checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse
    buildGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse <
      3) {
    o.androidAppDataStreams = buildUnnamed8264();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse(
    api.GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse <
      3) {
    checkUnnamed8264(o.androidAppDataStreams!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaConversionEvent> buildUnnamed8265() {
  final o = <api.GoogleAnalyticsAdminV1alphaConversionEvent>[];
  o.add(buildGoogleAnalyticsAdminV1alphaConversionEvent());
  o.add(buildGoogleAnalyticsAdminV1alphaConversionEvent());
  return o;
}

void checkUnnamed8265(
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
    o.conversionEvents = buildUnnamed8265();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListConversionEventsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListConversionEventsResponse(
    api.GoogleAnalyticsAdminV1alphaListConversionEventsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListConversionEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListConversionEventsResponse < 3) {
    checkUnnamed8265(o.conversionEvents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListConversionEventsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaCustomDimension> buildUnnamed8266() {
  final o = <api.GoogleAnalyticsAdminV1alphaCustomDimension>[];
  o.add(buildGoogleAnalyticsAdminV1alphaCustomDimension());
  o.add(buildGoogleAnalyticsAdminV1alphaCustomDimension());
  return o;
}

void checkUnnamed8266(
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
    o.customDimensions = buildUnnamed8266();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse(
    api.GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse < 3) {
    checkUnnamed8266(o.customDimensions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListCustomDimensionsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaCustomMetric> buildUnnamed8267() {
  final o = <api.GoogleAnalyticsAdminV1alphaCustomMetric>[];
  o.add(buildGoogleAnalyticsAdminV1alphaCustomMetric());
  o.add(buildGoogleAnalyticsAdminV1alphaCustomMetric());
  return o;
}

void checkUnnamed8267(
    core.List<api.GoogleAnalyticsAdminV1alphaCustomMetric> o) {
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
    o.customMetrics = buildUnnamed8267();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListCustomMetricsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListCustomMetricsResponse(
    api.GoogleAnalyticsAdminV1alphaListCustomMetricsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListCustomMetricsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListCustomMetricsResponse < 3) {
    checkUnnamed8267(o.customMetrics!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListCustomMetricsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaFirebaseLink> buildUnnamed8268() {
  final o = <api.GoogleAnalyticsAdminV1alphaFirebaseLink>[];
  o.add(buildGoogleAnalyticsAdminV1alphaFirebaseLink());
  o.add(buildGoogleAnalyticsAdminV1alphaFirebaseLink());
  return o;
}

void checkUnnamed8268(
    core.List<api.GoogleAnalyticsAdminV1alphaFirebaseLink> o) {
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
    o.firebaseLinks = buildUnnamed8268();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse(
    api.GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse < 3) {
    checkUnnamed8268(o.firebaseLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaGoogleAdsLink> buildUnnamed8269() {
  final o = <api.GoogleAnalyticsAdminV1alphaGoogleAdsLink>[];
  o.add(buildGoogleAnalyticsAdminV1alphaGoogleAdsLink());
  o.add(buildGoogleAnalyticsAdminV1alphaGoogleAdsLink());
  return o;
}

void checkUnnamed8269(
    core.List<api.GoogleAnalyticsAdminV1alphaGoogleAdsLink> o) {
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
    o.googleAdsLinks = buildUnnamed8269();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse(
    api.GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse < 3) {
    checkUnnamed8269(o.googleAdsLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaIosAppDataStream> buildUnnamed8270() {
  final o = <api.GoogleAnalyticsAdminV1alphaIosAppDataStream>[];
  o.add(buildGoogleAnalyticsAdminV1alphaIosAppDataStream());
  o.add(buildGoogleAnalyticsAdminV1alphaIosAppDataStream());
  return o;
}

void checkUnnamed8270(
    core.List<api.GoogleAnalyticsAdminV1alphaIosAppDataStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaIosAppDataStream(o[0]);
  checkGoogleAnalyticsAdminV1alphaIosAppDataStream(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse
    buildGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse <
      3) {
    o.iosAppDataStreams = buildUnnamed8270();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse(
    api.GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse <
      3) {
    checkUnnamed8270(o.iosAppDataStreams!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret>
    buildUnnamed8271() {
  final o = <api.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret>[];
  o.add(buildGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret());
  o.add(buildGoogleAnalyticsAdminV1alphaMeasurementProtocolSecret());
  return o;
}

void checkUnnamed8271(
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
    o.measurementProtocolSecrets = buildUnnamed8271();
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
    checkUnnamed8271(o.measurementProtocolSecrets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaProperty> buildUnnamed8272() {
  final o = <api.GoogleAnalyticsAdminV1alphaProperty>[];
  o.add(buildGoogleAnalyticsAdminV1alphaProperty());
  o.add(buildGoogleAnalyticsAdminV1alphaProperty());
  return o;
}

void checkUnnamed8272(core.List<api.GoogleAnalyticsAdminV1alphaProperty> o) {
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
    o.properties = buildUnnamed8272();
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
    checkUnnamed8272(o.properties!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaListPropertiesResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaUserLink> buildUnnamed8273() {
  final o = <api.GoogleAnalyticsAdminV1alphaUserLink>[];
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  return o;
}

void checkUnnamed8273(core.List<api.GoogleAnalyticsAdminV1alphaUserLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaUserLink(o[0]);
  checkGoogleAnalyticsAdminV1alphaUserLink(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListUserLinksResponse = 0;
api.GoogleAnalyticsAdminV1alphaListUserLinksResponse
    buildGoogleAnalyticsAdminV1alphaListUserLinksResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListUserLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListUserLinksResponse < 3) {
    o.nextPageToken = 'foo';
    o.userLinks = buildUnnamed8273();
  }
  buildCounterGoogleAnalyticsAdminV1alphaListUserLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListUserLinksResponse(
    api.GoogleAnalyticsAdminV1alphaListUserLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListUserLinksResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8273(o.userLinks!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaListUserLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaWebDataStream> buildUnnamed8274() {
  final o = <api.GoogleAnalyticsAdminV1alphaWebDataStream>[];
  o.add(buildGoogleAnalyticsAdminV1alphaWebDataStream());
  o.add(buildGoogleAnalyticsAdminV1alphaWebDataStream());
  return o;
}

void checkUnnamed8274(
    core.List<api.GoogleAnalyticsAdminV1alphaWebDataStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaWebDataStream(o[0]);
  checkGoogleAnalyticsAdminV1alphaWebDataStream(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse = 0;
api.GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse
    buildGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse() {
  final o = api.GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse < 3) {
    o.nextPageToken = 'foo';
    o.webDataStreams = buildUnnamed8274();
  }
  buildCounterGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse(
    api.GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8274(o.webDataStreams!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse--;
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

core.int buildCounterGoogleAnalyticsAdminV1alphaProperty = 0;
api.GoogleAnalyticsAdminV1alphaProperty
    buildGoogleAnalyticsAdminV1alphaProperty() {
  final o = api.GoogleAnalyticsAdminV1alphaProperty();
  buildCounterGoogleAnalyticsAdminV1alphaProperty++;
  if (buildCounterGoogleAnalyticsAdminV1alphaProperty < 3) {
    o.createTime = 'foo';
    o.currencyCode = 'foo';
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.expireTime = 'foo';
    o.industryCategory = 'foo';
    o.name = 'foo';
    o.parent = 'foo';
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
    o.property = 'foo';
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
      o.property!,
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

core.List<core.String> buildUnnamed8275() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8275(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8276() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8276(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8277() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8277(core.List<core.String> o) {
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
    o.action = buildUnnamed8275();
    o.actorEmail = buildUnnamed8276();
    o.earliestChangeTime = 'foo';
    o.latestChangeTime = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.property = 'foo';
    o.resourceType = buildUnnamed8277();
  }
  buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest(
    api.GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest <
      3) {
    checkUnnamed8275(o.action!);
    checkUnnamed8276(o.actorEmail!);
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
    checkUnnamed8277(o.resourceType!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest--;
}

core.List<api.GoogleAnalyticsAdminV1alphaChangeHistoryEvent>
    buildUnnamed8278() {
  final o = <api.GoogleAnalyticsAdminV1alphaChangeHistoryEvent>[];
  o.add(buildGoogleAnalyticsAdminV1alphaChangeHistoryEvent());
  o.add(buildGoogleAnalyticsAdminV1alphaChangeHistoryEvent());
  return o;
}

void checkUnnamed8278(
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
    o.changeHistoryEvents = buildUnnamed8278();
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
    checkUnnamed8278(o.changeHistoryEvents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest = 0;
api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest
    buildGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest() {
  final o = api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest();
  buildCounterGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest < 3) {
    o.userLink = buildGoogleAnalyticsAdminV1alphaUserLink();
  }
  buildCounterGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest(
    api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest < 3) {
    checkGoogleAnalyticsAdminV1alphaUserLink(o.userLink!);
  }
  buildCounterGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest--;
}

core.List<core.String> buildUnnamed8279() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8279(core.List<core.String> o) {
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

core.int buildCounterGoogleAnalyticsAdminV1alphaUserLink = 0;
api.GoogleAnalyticsAdminV1alphaUserLink
    buildGoogleAnalyticsAdminV1alphaUserLink() {
  final o = api.GoogleAnalyticsAdminV1alphaUserLink();
  buildCounterGoogleAnalyticsAdminV1alphaUserLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaUserLink < 3) {
    o.directRoles = buildUnnamed8279();
    o.emailAddress = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaUserLink--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaUserLink(
    api.GoogleAnalyticsAdminV1alphaUserLink o) {
  buildCounterGoogleAnalyticsAdminV1alphaUserLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaUserLink < 3) {
    checkUnnamed8279(o.directRoles!);
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaUserLink--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaWebDataStream = 0;
api.GoogleAnalyticsAdminV1alphaWebDataStream
    buildGoogleAnalyticsAdminV1alphaWebDataStream() {
  final o = api.GoogleAnalyticsAdminV1alphaWebDataStream();
  buildCounterGoogleAnalyticsAdminV1alphaWebDataStream++;
  if (buildCounterGoogleAnalyticsAdminV1alphaWebDataStream < 3) {
    o.createTime = 'foo';
    o.defaultUri = 'foo';
    o.displayName = 'foo';
    o.firebaseAppId = 'foo';
    o.measurementId = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaWebDataStream--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaWebDataStream(
    api.GoogleAnalyticsAdminV1alphaWebDataStream o) {
  buildCounterGoogleAnalyticsAdminV1alphaWebDataStream++;
  if (buildCounterGoogleAnalyticsAdminV1alphaWebDataStream < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1alphaWebDataStream--;
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

core.List<core.String> buildUnnamed8280() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8280(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8281() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8281(core.List<core.String> o) {
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

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAndroidAppDataStream',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(od);
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

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAuditUserLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAuditUserLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAuditUserLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAuditUserLink(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAuditUserLinksRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAuditUserLinksRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAuditUserLinksRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAuditUserLinksRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAuditUserLinksResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaAuditUserLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaAuditUserLinksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaAuditUserLinksResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse(od);
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

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaConversionEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaConversionEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaConversionEvent(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaCreateUserLinkRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaCreateUserLinkRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaCreateUserLinkRequest(od);
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

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest(od);
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

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaIosAppDataStream', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaIosAppDataStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaIosAppDataStream.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaIosAppDataStream(od);
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
      'obj-schema-GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse(od);
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

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse(od);
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

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaListUserLinksResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListUserLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaListUserLinksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListUserLinksResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse(od);
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

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaUserLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaUserLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaUserLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaUserLink(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaWebDataStream', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1alphaWebDataStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1alphaWebDataStream.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1alphaWebDataStream(od);
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('v1alpha/accountSummaries'),
        );
        pathOffset += 24;

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1alpha/accounts'),
        );
        pathOffset += 16;

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 39),
          unittest.equals('v1alpha/accounts:provisionAccountTicket'),
        );
        pathOffset += 39;

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
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.provisionAccountTicket(arg_request, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse(response
          as api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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

  unittest.group('resource-AccountsUserLinksResource', () {
    unittest.test('method--audit', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaAuditUserLinksRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaAuditUserLinksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAuditUserLinksRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaAuditUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.audit(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAuditUserLinksResponse(
          response as api.GoogleAnalyticsAdminV1alphaAuditUserLinksResponse);
    });

    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse(response
          as api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse);
    });

    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      final arg_parent = 'foo';
      final arg_names = buildUnnamed8280();
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse(
          response as api.GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse(response
          as api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      final arg_request = buildGoogleAnalyticsAdminV1alphaUserLink();
      final arg_parent = 'foo';
      final arg_notifyNewUser = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaUserLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaUserLink(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          queryMap['notifyNewUser']!.first,
          unittest.equals('$arg_notifyNewUser'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          notifyNewUser: arg_notifyNewUser, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaUserLink(
          response as api.GoogleAnalyticsAdminV1alphaUserLink);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaUserLink(
          response as api.GoogleAnalyticsAdminV1alphaUserLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaListUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListUserLinksResponse(
          response as api.GoogleAnalyticsAdminV1alphaListUserLinksResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      final arg_request = buildGoogleAnalyticsAdminV1alphaUserLink();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaUserLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaUserLink(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaUserLink(
          response as api.GoogleAnalyticsAdminV1alphaUserLink);
    });
  });

  unittest.group('resource-PropertiesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request = buildGoogleAnalyticsAdminV1alphaProperty();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaProperty.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaProperty(obj);

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
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('v1alpha/properties'),
        );
        pathOffset += 18;

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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaProperty(
          response as api.GoogleAnalyticsAdminV1alphaProperty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaProperty(
          response as api.GoogleAnalyticsAdminV1alphaProperty);
    });

    unittest.test('method--getGoogleSignalsSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaGoogleSignalsSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getGoogleSignalsSettings(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaGoogleSignalsSettings(
          response as api.GoogleAnalyticsAdminV1alphaGoogleSignalsSettings);
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
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('v1alpha/properties'),
        );
        pathOffset += 18;

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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

  unittest.group('resource-PropertiesAndroidAppDataStreamsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.androidAppDataStreams;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.androidAppDataStreams;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(
          response as api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.androidAppDataStreams;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse(response
          as api.GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.androidAppDataStreams;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(
          response as api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream);
    });
  });

  unittest.group(
      'resource-PropertiesAndroidAppDataStreamsMeasurementProtocolSecretsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .androidAppDataStreams
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .androidAppDataStreams
          .measurementProtocolSecrets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .androidAppDataStreams
          .measurementProtocolSecrets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .androidAppDataStreams
          .measurementProtocolSecrets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .androidAppDataStreams
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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

  unittest.group('resource-PropertiesIosAppDataStreamsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.iosAppDataStreams;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.iosAppDataStreams;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaIosAppDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaIosAppDataStream(
          response as api.GoogleAnalyticsAdminV1alphaIosAppDataStream);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.iosAppDataStreams;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse(response
          as api.GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleAnalyticsAdminApi(mock).properties.iosAppDataStreams;
      final arg_request = buildGoogleAnalyticsAdminV1alphaIosAppDataStream();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaIosAppDataStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaIosAppDataStream(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaIosAppDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaIosAppDataStream(
          response as api.GoogleAnalyticsAdminV1alphaIosAppDataStream);
    });
  });

  unittest.group(
      'resource-PropertiesIosAppDataStreamsMeasurementProtocolSecretsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .iosAppDataStreams
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .iosAppDataStreams
          .measurementProtocolSecrets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .iosAppDataStreams
          .measurementProtocolSecrets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .iosAppDataStreams
          .measurementProtocolSecrets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .iosAppDataStreams
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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

  unittest.group('resource-PropertiesUserLinksResource', () {
    unittest.test('method--audit', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaAuditUserLinksRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaAuditUserLinksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAuditUserLinksRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaAuditUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.audit(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaAuditUserLinksResponse(
          response as api.GoogleAnalyticsAdminV1alphaAuditUserLinksResponse);
    });

    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse(response
          as api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse);
    });

    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      final arg_parent = 'foo';
      final arg_names = buildUnnamed8281();
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            buildGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse(
          response as api.GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      final arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse(response
          as api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      final arg_request = buildGoogleAnalyticsAdminV1alphaUserLink();
      final arg_parent = 'foo';
      final arg_notifyNewUser = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaUserLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaUserLink(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          queryMap['notifyNewUser']!.first,
          unittest.equals('$arg_notifyNewUser'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          notifyNewUser: arg_notifyNewUser, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaUserLink(
          response as api.GoogleAnalyticsAdminV1alphaUserLink);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaUserLink(
          response as api.GoogleAnalyticsAdminV1alphaUserLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaListUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListUserLinksResponse(
          response as api.GoogleAnalyticsAdminV1alphaListUserLinksResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      final arg_request = buildGoogleAnalyticsAdminV1alphaUserLink();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaUserLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaUserLink(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaUserLink(
          response as api.GoogleAnalyticsAdminV1alphaUserLink);
    });
  });

  unittest.group('resource-PropertiesWebDataStreamsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
      final arg_request = buildGoogleAnalyticsAdminV1alphaWebDataStream();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaWebDataStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaWebDataStream(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaWebDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaWebDataStream(
          response as api.GoogleAnalyticsAdminV1alphaWebDataStream);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaWebDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaWebDataStream(
          response as api.GoogleAnalyticsAdminV1alphaWebDataStream);
    });

    unittest.test('method--getEnhancedMeasurementSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse(response
          as api.GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
      final arg_request = buildGoogleAnalyticsAdminV1alphaWebDataStream();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1alphaWebDataStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaWebDataStream(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleAnalyticsAdminV1alphaWebDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1alphaWebDataStream(
          response as api.GoogleAnalyticsAdminV1alphaWebDataStream);
    });

    unittest.test('method--updateEnhancedMeasurementSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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

  unittest.group(
      'resource-PropertiesWebDataStreamsMeasurementProtocolSecretsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .webDataStreams
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .webDataStreams
          .measurementProtocolSecrets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .webDataStreams
          .measurementProtocolSecrets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .webDataStreams
          .measurementProtocolSecrets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          .webDataStreams
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
}
