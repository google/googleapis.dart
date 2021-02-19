// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis_beta/analyticsadmin/v1alpha.dart' as api;

import '../test_shared.dart';

core.int buildCounterGoogleAnalyticsAdminV1alphaAccount = 0;
api.GoogleAnalyticsAdminV1alphaAccount
    buildGoogleAnalyticsAdminV1alphaAccount() {
  var o = api.GoogleAnalyticsAdminV1alphaAccount();
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
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccount--;
}

core.List<api.GoogleAnalyticsAdminV1alphaPropertySummary> buildUnnamed7386() {
  var o = <api.GoogleAnalyticsAdminV1alphaPropertySummary>[];
  o.add(buildGoogleAnalyticsAdminV1alphaPropertySummary());
  o.add(buildGoogleAnalyticsAdminV1alphaPropertySummary());
  return o;
}

void checkUnnamed7386(
    core.List<api.GoogleAnalyticsAdminV1alphaPropertySummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaPropertySummary(
      o[0] as api.GoogleAnalyticsAdminV1alphaPropertySummary);
  checkGoogleAnalyticsAdminV1alphaPropertySummary(
      o[1] as api.GoogleAnalyticsAdminV1alphaPropertySummary);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAccountSummary = 0;
api.GoogleAnalyticsAdminV1alphaAccountSummary
    buildGoogleAnalyticsAdminV1alphaAccountSummary() {
  var o = api.GoogleAnalyticsAdminV1alphaAccountSummary();
  buildCounterGoogleAnalyticsAdminV1alphaAccountSummary++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccountSummary < 3) {
    o.account = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.propertySummaries = buildUnnamed7386();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccountSummary--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAccountSummary(
    api.GoogleAnalyticsAdminV1alphaAccountSummary o) {
  buildCounterGoogleAnalyticsAdminV1alphaAccountSummary++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAccountSummary < 3) {
    unittest.expect(o.account, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7386(o.propertySummaries);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAccountSummary--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAndroidAppDataStream = 0;
api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream
    buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream() {
  var o = api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream();
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
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.firebaseAppId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaAndroidAppDataStream--;
}

core.List<core.String> buildUnnamed7387() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7387(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7388() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7388(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAuditUserLink = 0;
api.GoogleAnalyticsAdminV1alphaAuditUserLink
    buildGoogleAnalyticsAdminV1alphaAuditUserLink() {
  var o = api.GoogleAnalyticsAdminV1alphaAuditUserLink();
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAuditUserLink < 3) {
    o.directRoles = buildUnnamed7387();
    o.effectiveRoles = buildUnnamed7388();
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
    checkUnnamed7387(o.directRoles);
    checkUnnamed7388(o.effectiveRoles);
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLink--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksRequest = 0;
api.GoogleAnalyticsAdminV1alphaAuditUserLinksRequest
    buildGoogleAnalyticsAdminV1alphaAuditUserLinksRequest() {
  var o = api.GoogleAnalyticsAdminV1alphaAuditUserLinksRequest();
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
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksRequest--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAuditUserLink> buildUnnamed7389() {
  var o = <api.GoogleAnalyticsAdminV1alphaAuditUserLink>[];
  o.add(buildGoogleAnalyticsAdminV1alphaAuditUserLink());
  o.add(buildGoogleAnalyticsAdminV1alphaAuditUserLink());
  return o;
}

void checkUnnamed7389(
    core.List<api.GoogleAnalyticsAdminV1alphaAuditUserLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAuditUserLink(
      o[0] as api.GoogleAnalyticsAdminV1alphaAuditUserLink);
  checkGoogleAnalyticsAdminV1alphaAuditUserLink(
      o[1] as api.GoogleAnalyticsAdminV1alphaAuditUserLink);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksResponse = 0;
api.GoogleAnalyticsAdminV1alphaAuditUserLinksResponse
    buildGoogleAnalyticsAdminV1alphaAuditUserLinksResponse() {
  var o = api.GoogleAnalyticsAdminV1alphaAuditUserLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksResponse < 3) {
    o.nextPageToken = 'foo';
    o.userLinks = buildUnnamed7389();
  }
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaAuditUserLinksResponse(
    api.GoogleAnalyticsAdminV1alphaAuditUserLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7389(o.userLinks);
  }
  buildCounterGoogleAnalyticsAdminV1alphaAuditUserLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest>
    buildUnnamed7390() {
  var o = <api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest>[];
  o.add(buildGoogleAnalyticsAdminV1alphaCreateUserLinkRequest());
  o.add(buildGoogleAnalyticsAdminV1alphaCreateUserLinkRequest());
  return o;
}

void checkUnnamed7390(
    core.List<api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaCreateUserLinkRequest(
      o[0] as api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest);
  checkGoogleAnalyticsAdminV1alphaCreateUserLinkRequest(
      o[1] as api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest = 0;
api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest
    buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest() {
  var o = api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest();
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest < 3) {
    o.notifyNewUsers = true;
    o.requests = buildUnnamed7390();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest(
    api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest < 3) {
    unittest.expect(o.notifyNewUsers, unittest.isTrue);
    checkUnnamed7390(o.requests);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest--;
}

core.List<api.GoogleAnalyticsAdminV1alphaUserLink> buildUnnamed7391() {
  var o = <api.GoogleAnalyticsAdminV1alphaUserLink>[];
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  return o;
}

void checkUnnamed7391(core.List<api.GoogleAnalyticsAdminV1alphaUserLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaUserLink(
      o[0] as api.GoogleAnalyticsAdminV1alphaUserLink);
  checkGoogleAnalyticsAdminV1alphaUserLink(
      o[1] as api.GoogleAnalyticsAdminV1alphaUserLink);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse =
    0;
api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse
    buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse() {
  var o = api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse < 3) {
    o.userLinks = buildUnnamed7391();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse(
    api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse < 3) {
    checkUnnamed7391(o.userLinks);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest>
    buildUnnamed7392() {
  var o = <api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest>[];
  o.add(buildGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest());
  o.add(buildGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest());
  return o;
}

void checkUnnamed7392(
    core.List<api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest(
      o[0] as api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest);
  checkGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest(
      o[1] as api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest = 0;
api.GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest
    buildGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest() {
  var o = api.GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest();
  buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest < 3) {
    o.requests = buildUnnamed7392();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest(
    api.GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest < 3) {
    checkUnnamed7392(o.requests);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest--;
}

core.List<api.GoogleAnalyticsAdminV1alphaUserLink> buildUnnamed7393() {
  var o = <api.GoogleAnalyticsAdminV1alphaUserLink>[];
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  return o;
}

void checkUnnamed7393(core.List<api.GoogleAnalyticsAdminV1alphaUserLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaUserLink(
      o[0] as api.GoogleAnalyticsAdminV1alphaUserLink);
  checkGoogleAnalyticsAdminV1alphaUserLink(
      o[1] as api.GoogleAnalyticsAdminV1alphaUserLink);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse = 0;
api.GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse
    buildGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse() {
  var o = api.GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse < 3) {
    o.userLinks = buildUnnamed7393();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse(
    api.GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse < 3) {
    checkUnnamed7393(o.userLinks);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest>
    buildUnnamed7394() {
  var o = <api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest>[];
  o.add(buildGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest());
  o.add(buildGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest());
  return o;
}

void checkUnnamed7394(
    core.List<api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest(
      o[0] as api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest);
  checkGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest(
      o[1] as api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest = 0;
api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest
    buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest() {
  var o = api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest();
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest < 3) {
    o.requests = buildUnnamed7394();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest(
    api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest < 3) {
    checkUnnamed7394(o.requests);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest--;
}

core.List<api.GoogleAnalyticsAdminV1alphaUserLink> buildUnnamed7395() {
  var o = <api.GoogleAnalyticsAdminV1alphaUserLink>[];
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  return o;
}

void checkUnnamed7395(core.List<api.GoogleAnalyticsAdminV1alphaUserLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaUserLink(
      o[0] as api.GoogleAnalyticsAdminV1alphaUserLink);
  checkGoogleAnalyticsAdminV1alphaUserLink(
      o[1] as api.GoogleAnalyticsAdminV1alphaUserLink);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse =
    0;
api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse
    buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse() {
  var o = api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse < 3) {
    o.userLinks = buildUnnamed7395();
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse(
    api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse < 3) {
    checkUnnamed7395(o.userLinks);
  }
  buildCounterGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaCreateUserLinkRequest = 0;
api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest
    buildGoogleAnalyticsAdminV1alphaCreateUserLinkRequest() {
  var o = api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest();
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
    unittest.expect(o.notifyNewUser, unittest.isTrue);
    unittest.expect(o.parent, unittest.equals('foo'));
    checkGoogleAnalyticsAdminV1alphaUserLink(
        o.userLink as api.GoogleAnalyticsAdminV1alphaUserLink);
  }
  buildCounterGoogleAnalyticsAdminV1alphaCreateUserLinkRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaDataSharingSettings = 0;
api.GoogleAnalyticsAdminV1alphaDataSharingSettings
    buildGoogleAnalyticsAdminV1alphaDataSharingSettings() {
  var o = api.GoogleAnalyticsAdminV1alphaDataSharingSettings();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sharingWithGoogleAnySalesEnabled, unittest.isTrue);
    unittest.expect(o.sharingWithGoogleAssignedSalesEnabled, unittest.isTrue);
    unittest.expect(o.sharingWithGoogleProductsEnabled, unittest.isTrue);
    unittest.expect(o.sharingWithGoogleSupportEnabled, unittest.isTrue);
    unittest.expect(o.sharingWithOthersEnabled, unittest.isTrue);
  }
  buildCounterGoogleAnalyticsAdminV1alphaDataSharingSettings--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest = 0;
api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest
    buildGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest() {
  var o = api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest();
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
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings = 0;
api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings
    buildGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings() {
  var o = api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings();
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
    unittest.expect(o.fileDownloadsEnabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.outboundClicksEnabled, unittest.isTrue);
    unittest.expect(o.pageChangesEnabled, unittest.isTrue);
    unittest.expect(o.pageLoadsEnabled, unittest.isTrue);
    unittest.expect(o.pageViewsEnabled, unittest.isTrue);
    unittest.expect(o.scrollsEnabled, unittest.isTrue);
    unittest.expect(o.searchQueryParameter, unittest.equals('foo'));
    unittest.expect(o.siteSearchEnabled, unittest.isTrue);
    unittest.expect(o.streamEnabled, unittest.isTrue);
    unittest.expect(o.uriQueryParameter, unittest.equals('foo'));
    unittest.expect(o.videoEngagementEnabled, unittest.isTrue);
  }
  buildCounterGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaFirebaseLink = 0;
api.GoogleAnalyticsAdminV1alphaFirebaseLink
    buildGoogleAnalyticsAdminV1alphaFirebaseLink() {
  var o = api.GoogleAnalyticsAdminV1alphaFirebaseLink();
  buildCounterGoogleAnalyticsAdminV1alphaFirebaseLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaFirebaseLink < 3) {
    o.createTime = 'foo';
    o.maximumUserAccess = 'foo';
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
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.maximumUserAccess, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.project, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaFirebaseLink--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaGlobalSiteTag = 0;
api.GoogleAnalyticsAdminV1alphaGlobalSiteTag
    buildGoogleAnalyticsAdminV1alphaGlobalSiteTag() {
  var o = api.GoogleAnalyticsAdminV1alphaGlobalSiteTag();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.snippet, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaGlobalSiteTag--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaGoogleAdsLink = 0;
api.GoogleAnalyticsAdminV1alphaGoogleAdsLink
    buildGoogleAnalyticsAdminV1alphaGoogleAdsLink() {
  var o = api.GoogleAnalyticsAdminV1alphaGoogleAdsLink();
  buildCounterGoogleAnalyticsAdminV1alphaGoogleAdsLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaGoogleAdsLink < 3) {
    o.adsPersonalizationEnabled = true;
    o.canManageClients = true;
    o.createTime = 'foo';
    o.customerId = 'foo';
    o.emailAddress = 'foo';
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
    unittest.expect(o.adsPersonalizationEnabled, unittest.isTrue);
    unittest.expect(o.canManageClients, unittest.isTrue);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.customerId, unittest.equals('foo'));
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaGoogleAdsLink--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaIosAppDataStream = 0;
api.GoogleAnalyticsAdminV1alphaIosAppDataStream
    buildGoogleAnalyticsAdminV1alphaIosAppDataStream() {
  var o = api.GoogleAnalyticsAdminV1alphaIosAppDataStream();
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
    unittest.expect(o.bundleId, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.firebaseAppId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaIosAppDataStream--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAccountSummary> buildUnnamed7396() {
  var o = <api.GoogleAnalyticsAdminV1alphaAccountSummary>[];
  o.add(buildGoogleAnalyticsAdminV1alphaAccountSummary());
  o.add(buildGoogleAnalyticsAdminV1alphaAccountSummary());
  return o;
}

void checkUnnamed7396(
    core.List<api.GoogleAnalyticsAdminV1alphaAccountSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccountSummary(
      o[0] as api.GoogleAnalyticsAdminV1alphaAccountSummary);
  checkGoogleAnalyticsAdminV1alphaAccountSummary(
      o[1] as api.GoogleAnalyticsAdminV1alphaAccountSummary);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListAccountSummariesResponse
    buildGoogleAnalyticsAdminV1alphaListAccountSummariesResponse() {
  var o = api.GoogleAnalyticsAdminV1alphaListAccountSummariesResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse < 3) {
    o.accountSummaries = buildUnnamed7396();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListAccountSummariesResponse(
    api.GoogleAnalyticsAdminV1alphaListAccountSummariesResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse < 3) {
    checkUnnamed7396(o.accountSummaries);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAccountSummariesResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAccount> buildUnnamed7397() {
  var o = <api.GoogleAnalyticsAdminV1alphaAccount>[];
  o.add(buildGoogleAnalyticsAdminV1alphaAccount());
  o.add(buildGoogleAnalyticsAdminV1alphaAccount());
  return o;
}

void checkUnnamed7397(core.List<api.GoogleAnalyticsAdminV1alphaAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAccount(
      o[0] as api.GoogleAnalyticsAdminV1alphaAccount);
  checkGoogleAnalyticsAdminV1alphaAccount(
      o[1] as api.GoogleAnalyticsAdminV1alphaAccount);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse = 0;
api.GoogleAnalyticsAdminV1alphaListAccountsResponse
    buildGoogleAnalyticsAdminV1alphaListAccountsResponse() {
  var o = api.GoogleAnalyticsAdminV1alphaListAccountsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse < 3) {
    o.accounts = buildUnnamed7397();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListAccountsResponse(
    api.GoogleAnalyticsAdminV1alphaListAccountsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse < 3) {
    checkUnnamed7397(o.accounts);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAccountsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream>
    buildUnnamed7398() {
  var o = <api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream>[];
  o.add(buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream());
  o.add(buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream());
  return o;
}

void checkUnnamed7398(
    core.List<api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(
      o[0] as api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream);
  checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(
      o[1] as api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream);
}

core.int
    buildCounterGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse
    buildGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse() {
  var o = api.GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse <
      3) {
    o.androidAppDataStreams = buildUnnamed7398();
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
    checkUnnamed7398(o.androidAppDataStreams);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaFirebaseLink> buildUnnamed7399() {
  var o = <api.GoogleAnalyticsAdminV1alphaFirebaseLink>[];
  o.add(buildGoogleAnalyticsAdminV1alphaFirebaseLink());
  o.add(buildGoogleAnalyticsAdminV1alphaFirebaseLink());
  return o;
}

void checkUnnamed7399(
    core.List<api.GoogleAnalyticsAdminV1alphaFirebaseLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaFirebaseLink(
      o[0] as api.GoogleAnalyticsAdminV1alphaFirebaseLink);
  checkGoogleAnalyticsAdminV1alphaFirebaseLink(
      o[1] as api.GoogleAnalyticsAdminV1alphaFirebaseLink);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse = 0;
api.GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse
    buildGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse() {
  var o = api.GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse < 3) {
    o.firebaseLinks = buildUnnamed7399();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse(
    api.GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse < 3) {
    checkUnnamed7399(o.firebaseLinks);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaGoogleAdsLink> buildUnnamed7400() {
  var o = <api.GoogleAnalyticsAdminV1alphaGoogleAdsLink>[];
  o.add(buildGoogleAnalyticsAdminV1alphaGoogleAdsLink());
  o.add(buildGoogleAnalyticsAdminV1alphaGoogleAdsLink());
  return o;
}

void checkUnnamed7400(
    core.List<api.GoogleAnalyticsAdminV1alphaGoogleAdsLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(
      o[0] as api.GoogleAnalyticsAdminV1alphaGoogleAdsLink);
  checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(
      o[1] as api.GoogleAnalyticsAdminV1alphaGoogleAdsLink);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse = 0;
api.GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse
    buildGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse() {
  var o = api.GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse < 3) {
    o.googleAdsLinks = buildUnnamed7400();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse(
    api.GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse < 3) {
    checkUnnamed7400(o.googleAdsLinks);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaIosAppDataStream> buildUnnamed7401() {
  var o = <api.GoogleAnalyticsAdminV1alphaIosAppDataStream>[];
  o.add(buildGoogleAnalyticsAdminV1alphaIosAppDataStream());
  o.add(buildGoogleAnalyticsAdminV1alphaIosAppDataStream());
  return o;
}

void checkUnnamed7401(
    core.List<api.GoogleAnalyticsAdminV1alphaIosAppDataStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaIosAppDataStream(
      o[0] as api.GoogleAnalyticsAdminV1alphaIosAppDataStream);
  checkGoogleAnalyticsAdminV1alphaIosAppDataStream(
      o[1] as api.GoogleAnalyticsAdminV1alphaIosAppDataStream);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse =
    0;
api.GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse
    buildGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse() {
  var o = api.GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse <
      3) {
    o.iosAppDataStreams = buildUnnamed7401();
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
    checkUnnamed7401(o.iosAppDataStreams);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaProperty> buildUnnamed7402() {
  var o = <api.GoogleAnalyticsAdminV1alphaProperty>[];
  o.add(buildGoogleAnalyticsAdminV1alphaProperty());
  o.add(buildGoogleAnalyticsAdminV1alphaProperty());
  return o;
}

void checkUnnamed7402(core.List<api.GoogleAnalyticsAdminV1alphaProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaProperty(
      o[0] as api.GoogleAnalyticsAdminV1alphaProperty);
  checkGoogleAnalyticsAdminV1alphaProperty(
      o[1] as api.GoogleAnalyticsAdminV1alphaProperty);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListPropertiesResponse = 0;
api.GoogleAnalyticsAdminV1alphaListPropertiesResponse
    buildGoogleAnalyticsAdminV1alphaListPropertiesResponse() {
  var o = api.GoogleAnalyticsAdminV1alphaListPropertiesResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListPropertiesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListPropertiesResponse < 3) {
    o.nextPageToken = 'foo';
    o.properties = buildUnnamed7402();
  }
  buildCounterGoogleAnalyticsAdminV1alphaListPropertiesResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListPropertiesResponse(
    api.GoogleAnalyticsAdminV1alphaListPropertiesResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListPropertiesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListPropertiesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7402(o.properties);
  }
  buildCounterGoogleAnalyticsAdminV1alphaListPropertiesResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaUserLink> buildUnnamed7403() {
  var o = <api.GoogleAnalyticsAdminV1alphaUserLink>[];
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  o.add(buildGoogleAnalyticsAdminV1alphaUserLink());
  return o;
}

void checkUnnamed7403(core.List<api.GoogleAnalyticsAdminV1alphaUserLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaUserLink(
      o[0] as api.GoogleAnalyticsAdminV1alphaUserLink);
  checkGoogleAnalyticsAdminV1alphaUserLink(
      o[1] as api.GoogleAnalyticsAdminV1alphaUserLink);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListUserLinksResponse = 0;
api.GoogleAnalyticsAdminV1alphaListUserLinksResponse
    buildGoogleAnalyticsAdminV1alphaListUserLinksResponse() {
  var o = api.GoogleAnalyticsAdminV1alphaListUserLinksResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListUserLinksResponse < 3) {
    o.nextPageToken = 'foo';
    o.userLinks = buildUnnamed7403();
  }
  buildCounterGoogleAnalyticsAdminV1alphaListUserLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListUserLinksResponse(
    api.GoogleAnalyticsAdminV1alphaListUserLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListUserLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListUserLinksResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7403(o.userLinks);
  }
  buildCounterGoogleAnalyticsAdminV1alphaListUserLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1alphaWebDataStream> buildUnnamed7404() {
  var o = <api.GoogleAnalyticsAdminV1alphaWebDataStream>[];
  o.add(buildGoogleAnalyticsAdminV1alphaWebDataStream());
  o.add(buildGoogleAnalyticsAdminV1alphaWebDataStream());
  return o;
}

void checkUnnamed7404(
    core.List<api.GoogleAnalyticsAdminV1alphaWebDataStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1alphaWebDataStream(
      o[0] as api.GoogleAnalyticsAdminV1alphaWebDataStream);
  checkGoogleAnalyticsAdminV1alphaWebDataStream(
      o[1] as api.GoogleAnalyticsAdminV1alphaWebDataStream);
}

core.int buildCounterGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse = 0;
api.GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse
    buildGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse() {
  var o = api.GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse();
  buildCounterGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse < 3) {
    o.nextPageToken = 'foo';
    o.webDataStreams = buildUnnamed7404();
  }
  buildCounterGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse(
    api.GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse o) {
  buildCounterGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7404(o.webDataStreams);
  }
  buildCounterGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaProperty = 0;
api.GoogleAnalyticsAdminV1alphaProperty
    buildGoogleAnalyticsAdminV1alphaProperty() {
  var o = api.GoogleAnalyticsAdminV1alphaProperty();
  buildCounterGoogleAnalyticsAdminV1alphaProperty++;
  if (buildCounterGoogleAnalyticsAdminV1alphaProperty < 3) {
    o.createTime = 'foo';
    o.currencyCode = 'foo';
    o.deleted = true;
    o.displayName = 'foo';
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
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.industryCategory, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaProperty--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaPropertySummary = 0;
api.GoogleAnalyticsAdminV1alphaPropertySummary
    buildGoogleAnalyticsAdminV1alphaPropertySummary() {
  var o = api.GoogleAnalyticsAdminV1alphaPropertySummary();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.property, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaPropertySummary--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest =
    0;
api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest
    buildGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest() {
  var o = api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest();
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
    checkGoogleAnalyticsAdminV1alphaAccount(
        o.account as api.GoogleAnalyticsAdminV1alphaAccount);
    unittest.expect(o.redirectUri, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse =
    0;
api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse
    buildGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse() {
  var o = api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse();
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
    unittest.expect(o.accountTicketId, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest = 0;
api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest
    buildGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest() {
  var o = api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest();
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
    checkGoogleAnalyticsAdminV1alphaUserLink(
        o.userLink as api.GoogleAnalyticsAdminV1alphaUserLink);
  }
  buildCounterGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest--;
}

core.List<core.String> buildUnnamed7405() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7405(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleAnalyticsAdminV1alphaUserLink = 0;
api.GoogleAnalyticsAdminV1alphaUserLink
    buildGoogleAnalyticsAdminV1alphaUserLink() {
  var o = api.GoogleAnalyticsAdminV1alphaUserLink();
  buildCounterGoogleAnalyticsAdminV1alphaUserLink++;
  if (buildCounterGoogleAnalyticsAdminV1alphaUserLink < 3) {
    o.directRoles = buildUnnamed7405();
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
    checkUnnamed7405(o.directRoles);
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaUserLink--;
}

core.int buildCounterGoogleAnalyticsAdminV1alphaWebDataStream = 0;
api.GoogleAnalyticsAdminV1alphaWebDataStream
    buildGoogleAnalyticsAdminV1alphaWebDataStream() {
  var o = api.GoogleAnalyticsAdminV1alphaWebDataStream();
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
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.defaultUri, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.firebaseAppId, unittest.equals('foo'));
    unittest.expect(o.measurementId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsAdminV1alphaWebDataStream--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  var o = api.GoogleProtobufEmpty();
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

core.List<core.String> buildUnnamed7406() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7406(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7407() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7407(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaAccount();
      var od = api.GoogleAnalyticsAdminV1alphaAccount.fromJson(o.toJson());
      checkGoogleAnalyticsAdminV1alphaAccount(
          od as api.GoogleAnalyticsAdminV1alphaAccount);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAccountSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaAccountSummary();
      var od =
          api.GoogleAnalyticsAdminV1alphaAccountSummary.fromJson(o.toJson());
      checkGoogleAnalyticsAdminV1alphaAccountSummary(
          od as api.GoogleAnalyticsAdminV1alphaAccountSummary);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAndroidAppDataStream',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream();
      var od = api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream.fromJson(
          o.toJson());
      checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(
          od as api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAuditUserLink', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaAuditUserLink();
      var od =
          api.GoogleAnalyticsAdminV1alphaAuditUserLink.fromJson(o.toJson());
      checkGoogleAnalyticsAdminV1alphaAuditUserLink(
          od as api.GoogleAnalyticsAdminV1alphaAuditUserLink);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAuditUserLinksRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaAuditUserLinksRequest();
      var od = api.GoogleAnalyticsAdminV1alphaAuditUserLinksRequest.fromJson(
          o.toJson());
      checkGoogleAnalyticsAdminV1alphaAuditUserLinksRequest(
          od as api.GoogleAnalyticsAdminV1alphaAuditUserLinksRequest);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaAuditUserLinksResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaAuditUserLinksResponse();
      var od = api.GoogleAnalyticsAdminV1alphaAuditUserLinksResponse.fromJson(
          o.toJson());
      checkGoogleAnalyticsAdminV1alphaAuditUserLinksResponse(
          od as api.GoogleAnalyticsAdminV1alphaAuditUserLinksResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest();
      var od =
          api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest.fromJson(
              o.toJson());
      checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest(
          od as api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse();
      var od =
          api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse.fromJson(
              o.toJson());
      checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse(
          od as api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest();
      var od =
          api.GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest.fromJson(
              o.toJson());
      checkGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest(
          od as api.GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse();
      var od =
          api.GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse.fromJson(
              o.toJson());
      checkGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse(
          od as api.GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest();
      var od =
          api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest.fromJson(
              o.toJson());
      checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest(
          od as api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse();
      var od =
          api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse.fromJson(
              o.toJson());
      checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse(
          od as api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaCreateUserLinkRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaCreateUserLinkRequest();
      var od = api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest.fromJson(
          o.toJson());
      checkGoogleAnalyticsAdminV1alphaCreateUserLinkRequest(
          od as api.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaDataSharingSettings',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaDataSharingSettings();
      var od = api.GoogleAnalyticsAdminV1alphaDataSharingSettings.fromJson(
          o.toJson());
      checkGoogleAnalyticsAdminV1alphaDataSharingSettings(
          od as api.GoogleAnalyticsAdminV1alphaDataSharingSettings);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest();
      var od = api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest.fromJson(
          o.toJson());
      checkGoogleAnalyticsAdminV1alphaDeleteUserLinkRequest(
          od as api.GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings();
      var od =
          api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings.fromJson(
              o.toJson());
      checkGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings(
          od as api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaFirebaseLink', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaFirebaseLink();
      var od = api.GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(o.toJson());
      checkGoogleAnalyticsAdminV1alphaFirebaseLink(
          od as api.GoogleAnalyticsAdminV1alphaFirebaseLink);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaGlobalSiteTag', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaGlobalSiteTag();
      var od =
          api.GoogleAnalyticsAdminV1alphaGlobalSiteTag.fromJson(o.toJson());
      checkGoogleAnalyticsAdminV1alphaGlobalSiteTag(
          od as api.GoogleAnalyticsAdminV1alphaGlobalSiteTag);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaGoogleAdsLink', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaGoogleAdsLink();
      var od =
          api.GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(o.toJson());
      checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(
          od as api.GoogleAnalyticsAdminV1alphaGoogleAdsLink);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaIosAppDataStream', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaIosAppDataStream();
      var od =
          api.GoogleAnalyticsAdminV1alphaIosAppDataStream.fromJson(o.toJson());
      checkGoogleAnalyticsAdminV1alphaIosAppDataStream(
          od as api.GoogleAnalyticsAdminV1alphaIosAppDataStream);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListAccountSummariesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaListAccountSummariesResponse();
      var od =
          api.GoogleAnalyticsAdminV1alphaListAccountSummariesResponse.fromJson(
              o.toJson());
      checkGoogleAnalyticsAdminV1alphaListAccountSummariesResponse(
          od as api.GoogleAnalyticsAdminV1alphaListAccountSummariesResponse);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaListAccountsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaListAccountsResponse();
      var od = api.GoogleAnalyticsAdminV1alphaListAccountsResponse.fromJson(
          o.toJson());
      checkGoogleAnalyticsAdminV1alphaListAccountsResponse(
          od as api.GoogleAnalyticsAdminV1alphaListAccountsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse();
      var od = api.GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse
          .fromJson(o.toJson());
      checkGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse(od
          as api.GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse();
      var od =
          api.GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse.fromJson(
              o.toJson());
      checkGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse(
          od as api.GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse();
      var od =
          api.GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse.fromJson(
              o.toJson());
      checkGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse(
          od as api.GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse();
      var od =
          api.GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse.fromJson(
              o.toJson());
      checkGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse(
          od as api.GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaListPropertiesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaListPropertiesResponse();
      var od = api.GoogleAnalyticsAdminV1alphaListPropertiesResponse.fromJson(
          o.toJson());
      checkGoogleAnalyticsAdminV1alphaListPropertiesResponse(
          od as api.GoogleAnalyticsAdminV1alphaListPropertiesResponse);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaListUserLinksResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaListUserLinksResponse();
      var od = api.GoogleAnalyticsAdminV1alphaListUserLinksResponse.fromJson(
          o.toJson());
      checkGoogleAnalyticsAdminV1alphaListUserLinksResponse(
          od as api.GoogleAnalyticsAdminV1alphaListUserLinksResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse();
      var od =
          api.GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse.fromJson(
              o.toJson());
      checkGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse(
          od as api.GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaProperty', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaProperty();
      var od = api.GoogleAnalyticsAdminV1alphaProperty.fromJson(o.toJson());
      checkGoogleAnalyticsAdminV1alphaProperty(
          od as api.GoogleAnalyticsAdminV1alphaProperty);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaPropertySummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaPropertySummary();
      var od =
          api.GoogleAnalyticsAdminV1alphaPropertySummary.fromJson(o.toJson());
      checkGoogleAnalyticsAdminV1alphaPropertySummary(
          od as api.GoogleAnalyticsAdminV1alphaPropertySummary);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest();
      var od =
          api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest.fromJson(
              o.toJson());
      checkGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest(
          od as api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse();
      var od = api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse
          .fromJson(o.toJson());
      checkGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse(
          od as api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest();
      var od = api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest.fromJson(
          o.toJson());
      checkGoogleAnalyticsAdminV1alphaUpdateUserLinkRequest(
          od as api.GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaUserLink', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaUserLink();
      var od = api.GoogleAnalyticsAdminV1alphaUserLink.fromJson(o.toJson());
      checkGoogleAnalyticsAdminV1alphaUserLink(
          od as api.GoogleAnalyticsAdminV1alphaUserLink);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1alphaWebDataStream', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAnalyticsAdminV1alphaWebDataStream();
      var od =
          api.GoogleAnalyticsAdminV1alphaWebDataStream.fromJson(o.toJson());
      checkGoogleAnalyticsAdminV1alphaWebDataStream(
          od as api.GoogleAnalyticsAdminV1alphaWebDataStream);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleProtobufEmpty();
      var od = api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('resource-AccountSummariesResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accountSummaries;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("v1alpha/accountSummaries"));
        pathOffset += 24;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaListAccountSummariesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaListAccountSummariesResponse(response
            as api.GoogleAnalyticsAdminV1alphaListAccountSummariesResponse);
      })));
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaAccount(
            response as api.GoogleAnalyticsAdminV1alphaAccount);
      })));
    });

    unittest.test('method--getDataSharingSettings', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaDataSharingSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getDataSharingSettings(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaDataSharingSettings(
            response as api.GoogleAnalyticsAdminV1alphaDataSharingSettings);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_showDeleted = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1alpha/accounts"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals("$arg_showDeleted"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaListAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              showDeleted: arg_showDeleted,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaListAccountsResponse(
            response as api.GoogleAnalyticsAdminV1alphaListAccountsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts;
      var arg_request = buildGoogleAnalyticsAdminV1alphaAccount();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaAccount.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAccount(
            obj as api.GoogleAnalyticsAdminV1alphaAccount);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaAccount(
            response as api.GoogleAnalyticsAdminV1alphaAccount);
      })));
    });

    unittest.test('method--provisionAccountTicket', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts;
      var arg_request =
          buildGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest(obj
            as api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 39),
            unittest.equals("v1alpha/accounts:provisionAccountTicket"));
        pathOffset += 39;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .provisionAccountTicket(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse(response
            as api.GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse);
      })));
    });
  });

  unittest.group('resource-AccountsUserLinksResource', () {
    unittest.test('method--audit', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      var arg_request = buildGoogleAnalyticsAdminV1alphaAuditUserLinksRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaAuditUserLinksRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAuditUserLinksRequest(
            obj as api.GoogleAnalyticsAdminV1alphaAuditUserLinksRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaAuditUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .audit(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaAuditUserLinksResponse(
            response as api.GoogleAnalyticsAdminV1alphaAuditUserLinksResponse);
      })));
    });

    unittest.test('method--batchCreate', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      var arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest(
            obj as api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchCreate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse(response
            as api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse);
      })));
    });

    unittest.test('method--batchDelete', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      var arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest(
            obj as api.GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--batchGet', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      var arg_parent = 'foo';
      var arg_names = buildUnnamed7406();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["names"], unittest.equals(arg_names));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGet(arg_parent, names: arg_names, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse(response
            as api.GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse);
      })));
    });

    unittest.test('method--batchUpdate', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      var arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest(
            obj as api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse(response
            as api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      var arg_request = buildGoogleAnalyticsAdminV1alphaUserLink();
      var arg_parent = 'foo';
      var arg_notifyNewUser = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaUserLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaUserLink(
            obj as api.GoogleAnalyticsAdminV1alphaUserLink);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["notifyNewUser"].first,
            unittest.equals("$arg_notifyNewUser"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              notifyNewUser: arg_notifyNewUser, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaUserLink(
            response as api.GoogleAnalyticsAdminV1alphaUserLink);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaUserLink(
            response as api.GoogleAnalyticsAdminV1alphaUserLink);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaListUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaListUserLinksResponse(
            response as api.GoogleAnalyticsAdminV1alphaListUserLinksResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).accounts.userLinks;
      var arg_request = buildGoogleAnalyticsAdminV1alphaUserLink();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaUserLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaUserLink(
            obj as api.GoogleAnalyticsAdminV1alphaUserLink);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaUserLink(
            response as api.GoogleAnalyticsAdminV1alphaUserLink);
      })));
    });
  });

  unittest.group('resource-PropertiesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties;
      var arg_request = buildGoogleAnalyticsAdminV1alphaProperty();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaProperty.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaProperty(
            obj as api.GoogleAnalyticsAdminV1alphaProperty);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1alpha/properties"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaProperty(
            response as api.GoogleAnalyticsAdminV1alphaProperty);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaProperty(
            response as api.GoogleAnalyticsAdminV1alphaProperty);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties;
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_showDeleted = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1alpha/properties"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals("$arg_showDeleted"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaListPropertiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              showDeleted: arg_showDeleted,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaListPropertiesResponse(
            response as api.GoogleAnalyticsAdminV1alphaListPropertiesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties;
      var arg_request = buildGoogleAnalyticsAdminV1alphaProperty();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaProperty.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaProperty(
            obj as api.GoogleAnalyticsAdminV1alphaProperty);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaProperty(
            response as api.GoogleAnalyticsAdminV1alphaProperty);
      })));
    });
  });

  unittest.group('resource-PropertiesAndroidAppDataStreamsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res =
          api.GoogleAnalyticsAdminApi(mock).properties.androidAppDataStreams;
      var arg_request = buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(
            obj as api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(
            response as api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res =
          api.GoogleAnalyticsAdminApi(mock).properties.androidAppDataStreams;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res =
          api.GoogleAnalyticsAdminApi(mock).properties.androidAppDataStreams;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(
            response as api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.GoogleAnalyticsAdminApi(mock).properties.androidAppDataStreams;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse(
            response as api
                .GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res =
          api.GoogleAnalyticsAdminApi(mock).properties.androidAppDataStreams;
      var arg_request = buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(
            obj as api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaAndroidAppDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaAndroidAppDataStream(
            response as api.GoogleAnalyticsAdminV1alphaAndroidAppDataStream);
      })));
    });
  });

  unittest.group('resource-PropertiesFirebaseLinksResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.firebaseLinks;
      var arg_request = buildGoogleAnalyticsAdminV1alphaFirebaseLink();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaFirebaseLink(
            obj as api.GoogleAnalyticsAdminV1alphaFirebaseLink);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaFirebaseLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaFirebaseLink(
            response as api.GoogleAnalyticsAdminV1alphaFirebaseLink);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.firebaseLinks;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.firebaseLinks;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaListFirebaseLinksResponse(response
            as api.GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.firebaseLinks;
      var arg_request = buildGoogleAnalyticsAdminV1alphaFirebaseLink();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaFirebaseLink(
            obj as api.GoogleAnalyticsAdminV1alphaFirebaseLink);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaFirebaseLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaFirebaseLink(
            response as api.GoogleAnalyticsAdminV1alphaFirebaseLink);
      })));
    });
  });

  unittest.group('resource-PropertiesGoogleAdsLinksResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.googleAdsLinks;
      var arg_request = buildGoogleAnalyticsAdminV1alphaGoogleAdsLink();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(
            obj as api.GoogleAnalyticsAdminV1alphaGoogleAdsLink);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaGoogleAdsLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(
            response as api.GoogleAnalyticsAdminV1alphaGoogleAdsLink);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.googleAdsLinks;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.googleAdsLinks;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse(response
            as api.GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.googleAdsLinks;
      var arg_request = buildGoogleAnalyticsAdminV1alphaGoogleAdsLink();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(
            obj as api.GoogleAnalyticsAdminV1alphaGoogleAdsLink);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaGoogleAdsLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaGoogleAdsLink(
            response as api.GoogleAnalyticsAdminV1alphaGoogleAdsLink);
      })));
    });
  });

  unittest.group('resource-PropertiesIosAppDataStreamsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.iosAppDataStreams;
      var arg_request = buildGoogleAnalyticsAdminV1alphaIosAppDataStream();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaIosAppDataStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaIosAppDataStream(
            obj as api.GoogleAnalyticsAdminV1alphaIosAppDataStream);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaIosAppDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaIosAppDataStream(
            response as api.GoogleAnalyticsAdminV1alphaIosAppDataStream);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.iosAppDataStreams;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.iosAppDataStreams;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaIosAppDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaIosAppDataStream(
            response as api.GoogleAnalyticsAdminV1alphaIosAppDataStream);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.iosAppDataStreams;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse(response
            as api.GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.iosAppDataStreams;
      var arg_request = buildGoogleAnalyticsAdminV1alphaIosAppDataStream();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaIosAppDataStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaIosAppDataStream(
            obj as api.GoogleAnalyticsAdminV1alphaIosAppDataStream);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaIosAppDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaIosAppDataStream(
            response as api.GoogleAnalyticsAdminV1alphaIosAppDataStream);
      })));
    });
  });

  unittest.group('resource-PropertiesUserLinksResource', () {
    unittest.test('method--audit', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      var arg_request = buildGoogleAnalyticsAdminV1alphaAuditUserLinksRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaAuditUserLinksRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaAuditUserLinksRequest(
            obj as api.GoogleAnalyticsAdminV1alphaAuditUserLinksRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaAuditUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .audit(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaAuditUserLinksResponse(
            response as api.GoogleAnalyticsAdminV1alphaAuditUserLinksResponse);
      })));
    });

    unittest.test('method--batchCreate', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      var arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest(
            obj as api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchCreate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse(response
            as api.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse);
      })));
    });

    unittest.test('method--batchDelete', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      var arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest(
            obj as api.GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--batchGet', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      var arg_parent = 'foo';
      var arg_names = buildUnnamed7407();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["names"], unittest.equals(arg_names));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGet(arg_parent, names: arg_names, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse(response
            as api.GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse);
      })));
    });

    unittest.test('method--batchUpdate', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      var arg_request =
          buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest(
            obj as api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse(response
            as api.GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      var arg_request = buildGoogleAnalyticsAdminV1alphaUserLink();
      var arg_parent = 'foo';
      var arg_notifyNewUser = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaUserLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaUserLink(
            obj as api.GoogleAnalyticsAdminV1alphaUserLink);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["notifyNewUser"].first,
            unittest.equals("$arg_notifyNewUser"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              notifyNewUser: arg_notifyNewUser, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaUserLink(
            response as api.GoogleAnalyticsAdminV1alphaUserLink);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaUserLink(
            response as api.GoogleAnalyticsAdminV1alphaUserLink);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaListUserLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaListUserLinksResponse(
            response as api.GoogleAnalyticsAdminV1alphaListUserLinksResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.userLinks;
      var arg_request = buildGoogleAnalyticsAdminV1alphaUserLink();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaUserLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaUserLink(
            obj as api.GoogleAnalyticsAdminV1alphaUserLink);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1alphaUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaUserLink(
            response as api.GoogleAnalyticsAdminV1alphaUserLink);
      })));
    });
  });

  unittest.group('resource-PropertiesWebDataStreamsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
      var arg_request = buildGoogleAnalyticsAdminV1alphaWebDataStream();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaWebDataStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaWebDataStream(
            obj as api.GoogleAnalyticsAdminV1alphaWebDataStream);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaWebDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaWebDataStream(
            response as api.GoogleAnalyticsAdminV1alphaWebDataStream);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaWebDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaWebDataStream(
            response as api.GoogleAnalyticsAdminV1alphaWebDataStream);
      })));
    });

    unittest.test('method--getEnhancedMeasurementSettings', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getEnhancedMeasurementSettings(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings(response
            as api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings);
      })));
    });

    unittest.test('method--getGlobalSiteTag', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaGlobalSiteTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getGlobalSiteTag(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaGlobalSiteTag(
            response as api.GoogleAnalyticsAdminV1alphaGlobalSiteTag);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaListWebDataStreamsResponse(response
            as api.GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
      var arg_request = buildGoogleAnalyticsAdminV1alphaWebDataStream();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAnalyticsAdminV1alphaWebDataStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaWebDataStream(
            obj as api.GoogleAnalyticsAdminV1alphaWebDataStream);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1alphaWebDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaWebDataStream(
            response as api.GoogleAnalyticsAdminV1alphaWebDataStream);
      })));
    });

    unittest.test('method--updateEnhancedMeasurementSettings', () {
      var mock = HttpServerMock();
      var res = api.GoogleAnalyticsAdminApi(mock).properties.webDataStreams;
      var arg_request =
          buildGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings(
            obj as api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1alpha/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateEnhancedMeasurementSettings(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings(response
            as api.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings);
      })));
    });
  });
}
