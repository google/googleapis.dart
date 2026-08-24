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

import 'package:googleapis/agentidentity/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, core.String> buildUnnamed0() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed0(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccessSummary = 0;
api.AccessSummary buildAccessSummary() {
  final o = api.AccessSummary();
  buildCounterAccessSummary++;
  if (buildCounterAccessSummary < 3) {
    o.authProvider = 'foo';
    o.authProviderType = 'foo';
    o.firstAccessTime = 'foo';
    o.labels = buildUnnamed0();
    o.lastAccessTime = 'foo';
    o.name = 'foo';
    o.purgeTime = 'foo';
    o.scopes = buildUnnamed1();
    o.tokenUrl = 'foo';
    o.userId = 'foo';
    o.workloadId = 'foo';
  }
  buildCounterAccessSummary--;
  return o;
}

void checkAccessSummary(api.AccessSummary o) {
  buildCounterAccessSummary++;
  if (buildCounterAccessSummary < 3) {
    unittest.expect(o.authProvider!, unittest.equals('foo'));
    unittest.expect(o.authProviderType!, unittest.equals('foo'));
    unittest.expect(o.firstAccessTime!, unittest.equals('foo'));
    checkUnnamed0(o.labels!);
    unittest.expect(o.lastAccessTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.purgeTime!, unittest.equals('foo'));
    checkUnnamed1(o.scopes!);
    unittest.expect(o.tokenUrl!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
    unittest.expect(o.workloadId!, unittest.equals('foo'));
  }
  buildCounterAccessSummary--;
}

core.int buildCounterApiKeyParams = 0;
api.ApiKeyParams buildApiKeyParams() {
  final o = api.ApiKeyParams();
  buildCounterApiKeyParams++;
  if (buildCounterApiKeyParams < 3) {
    o.apiKey = 'foo';
  }
  buildCounterApiKeyParams--;
  return o;
}

void checkApiKeyParams(api.ApiKeyParams o) {
  buildCounterApiKeyParams++;
  if (buildCounterApiKeyParams < 3) {
    unittest.expect(o.apiKey!, unittest.equals('foo'));
  }
  buildCounterApiKeyParams--;
}

core.List<api.AuditLogConfig> buildUnnamed2() => [
  buildAuditLogConfig(),
  buildAuditLogConfig(),
];

void checkUnnamed2(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed2();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed2(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed3();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed3(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed6() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed6(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuthProvider = 0;
api.AuthProvider buildAuthProvider() {
  final o = api.AuthProvider();
  buildCounterAuthProvider++;
  if (buildCounterAuthProvider < 3) {
    o.allowedScopes = buildUnnamed4();
    o.authProviderTypeParams = buildAuthProviderTypeParams();
    o.blockedScopes = buildUnnamed5();
    o.createTime = 'foo';
    o.deleted = true;
    o.description = 'foo';
    o.expireTime = 'foo';
    o.labels = buildUnnamed6();
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
    o.workloadIds = buildUnnamed7();
  }
  buildCounterAuthProvider--;
  return o;
}

void checkAuthProvider(api.AuthProvider o) {
  buildCounterAuthProvider++;
  if (buildCounterAuthProvider < 3) {
    checkUnnamed4(o.allowedScopes!);
    checkAuthProviderTypeParams(o.authProviderTypeParams!);
    checkUnnamed5(o.blockedScopes!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    checkUnnamed6(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUnnamed7(o.workloadIds!);
  }
  buildCounterAuthProvider--;
}

core.int buildCounterAuthProviderTypeParams = 0;
api.AuthProviderTypeParams buildAuthProviderTypeParams() {
  final o = api.AuthProviderTypeParams();
  buildCounterAuthProviderTypeParams++;
  if (buildCounterAuthProviderTypeParams < 3) {
    o.apiKey = buildApiKeyParams();
    o.geAuthProvider = buildGeminiEnterpriseAuthProviderParams();
    o.threeLeggedOauth = buildThreeLeggedOAuth();
    o.twoLeggedOauth = buildTwoLeggedOAuth();
  }
  buildCounterAuthProviderTypeParams--;
  return o;
}

void checkAuthProviderTypeParams(api.AuthProviderTypeParams o) {
  buildCounterAuthProviderTypeParams++;
  if (buildCounterAuthProviderTypeParams < 3) {
    checkApiKeyParams(o.apiKey!);
    checkGeminiEnterpriseAuthProviderParams(o.geAuthProvider!);
    checkThreeLeggedOAuth(o.threeLeggedOauth!);
    checkTwoLeggedOAuth(o.twoLeggedOauth!);
  }
  buildCounterAuthProviderTypeParams--;
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuthorization = 0;
api.Authorization buildAuthorization() {
  final o = api.Authorization();
  buildCounterAuthorization++;
  if (buildCounterAuthorization < 3) {
    o.clientUserId = 'foo';
    o.createTime = 'foo';
    o.name = 'foo';
    o.scopes = buildUnnamed8();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAuthorization--;
  return o;
}

void checkAuthorization(api.Authorization o) {
  buildCounterAuthorization++;
  if (buildCounterAuthorization < 3) {
    unittest.expect(o.clientUserId!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed8(o.scopes!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAuthorization--;
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed9();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed9(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterDisableAuthProviderRequest = 0;
api.DisableAuthProviderRequest buildDisableAuthProviderRequest() {
  final o = api.DisableAuthProviderRequest();
  buildCounterDisableAuthProviderRequest++;
  if (buildCounterDisableAuthProviderRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterDisableAuthProviderRequest--;
  return o;
}

void checkDisableAuthProviderRequest(api.DisableAuthProviderRequest o) {
  buildCounterDisableAuthProviderRequest++;
  if (buildCounterDisableAuthProviderRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterDisableAuthProviderRequest--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterEnableAuthProviderRequest = 0;
api.EnableAuthProviderRequest buildEnableAuthProviderRequest() {
  final o = api.EnableAuthProviderRequest();
  buildCounterEnableAuthProviderRequest++;
  if (buildCounterEnableAuthProviderRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterEnableAuthProviderRequest--;
  return o;
}

void checkEnableAuthProviderRequest(api.EnableAuthProviderRequest o) {
  buildCounterEnableAuthProviderRequest++;
  if (buildCounterEnableAuthProviderRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterEnableAuthProviderRequest--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  final o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.int buildCounterGeminiEnterpriseAuthProviderParams = 0;
api.GeminiEnterpriseAuthProviderParams
buildGeminiEnterpriseAuthProviderParams() {
  final o = api.GeminiEnterpriseAuthProviderParams();
  buildCounterGeminiEnterpriseAuthProviderParams++;
  if (buildCounterGeminiEnterpriseAuthProviderParams < 3) {}
  buildCounterGeminiEnterpriseAuthProviderParams--;
  return o;
}

void checkGeminiEnterpriseAuthProviderParams(
  api.GeminiEnterpriseAuthProviderParams o,
) {
  buildCounterGeminiEnterpriseAuthProviderParams++;
  if (buildCounterGeminiEnterpriseAuthProviderParams < 3) {}
  buildCounterGeminiEnterpriseAuthProviderParams--;
}

core.List<api.AccessSummary> buildUnnamed10() => [
  buildAccessSummary(),
  buildAccessSummary(),
];

void checkUnnamed10(core.List<api.AccessSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessSummary(o[0]);
  checkAccessSummary(o[1]);
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAccessSummariesResponse = 0;
api.ListAccessSummariesResponse buildListAccessSummariesResponse() {
  final o = api.ListAccessSummariesResponse();
  buildCounterListAccessSummariesResponse++;
  if (buildCounterListAccessSummariesResponse < 3) {
    o.accessSummaries = buildUnnamed10();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed11();
  }
  buildCounterListAccessSummariesResponse--;
  return o;
}

void checkListAccessSummariesResponse(api.ListAccessSummariesResponse o) {
  buildCounterListAccessSummariesResponse++;
  if (buildCounterListAccessSummariesResponse < 3) {
    checkUnnamed10(o.accessSummaries!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed11(o.unreachable!);
  }
  buildCounterListAccessSummariesResponse--;
}

core.List<api.AuthProvider> buildUnnamed12() => [
  buildAuthProvider(),
  buildAuthProvider(),
];

void checkUnnamed12(core.List<api.AuthProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthProvider(o[0]);
  checkAuthProvider(o[1]);
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAuthProvidersResponse = 0;
api.ListAuthProvidersResponse buildListAuthProvidersResponse() {
  final o = api.ListAuthProvidersResponse();
  buildCounterListAuthProvidersResponse++;
  if (buildCounterListAuthProvidersResponse < 3) {
    o.authProviders = buildUnnamed12();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed13();
  }
  buildCounterListAuthProvidersResponse--;
  return o;
}

void checkListAuthProvidersResponse(api.ListAuthProvidersResponse o) {
  buildCounterListAuthProvidersResponse++;
  if (buildCounterListAuthProvidersResponse < 3) {
    checkUnnamed12(o.authProviders!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed13(o.unreachable!);
  }
  buildCounterListAuthProvidersResponse--;
}

core.List<api.Authorization> buildUnnamed14() => [
  buildAuthorization(),
  buildAuthorization(),
];

void checkUnnamed14(core.List<api.Authorization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorization(o[0]);
  checkAuthorization(o[1]);
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAuthorizationsResponse = 0;
api.ListAuthorizationsResponse buildListAuthorizationsResponse() {
  final o = api.ListAuthorizationsResponse();
  buildCounterListAuthorizationsResponse++;
  if (buildCounterListAuthorizationsResponse < 3) {
    o.authorizations = buildUnnamed14();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed15();
  }
  buildCounterListAuthorizationsResponse--;
  return o;
}

void checkListAuthorizationsResponse(api.ListAuthorizationsResponse o) {
  buildCounterListAuthorizationsResponse++;
  if (buildCounterListAuthorizationsResponse < 3) {
    checkUnnamed14(o.authorizations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed15(o.unreachable!);
  }
  buildCounterListAuthorizationsResponse--;
}

core.List<api.Location> buildUnnamed16() => [buildLocation(), buildLocation()];

void checkUnnamed16(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed16();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed16(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed17() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed17(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed18() => {
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

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed17();
    o.locationId = 'foo';
    o.metadata = buildUnnamed18();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed17(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed18(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.List<api.AuditConfig> buildUnnamed19() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed19(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed20() => [buildBinding(), buildBinding()];

void checkUnnamed20(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed19();
    o.bindings = buildUnnamed20();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed19(o.auditConfigs!);
    checkUnnamed20(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterQueryAuthProvidersResponse = 0;
api.QueryAuthProvidersResponse buildQueryAuthProvidersResponse() {
  final o = api.QueryAuthProvidersResponse();
  buildCounterQueryAuthProvidersResponse++;
  if (buildCounterQueryAuthProvidersResponse < 3) {
    o.authProviderNames = buildUnnamed21();
    o.nextPageToken = 'foo';
  }
  buildCounterQueryAuthProvidersResponse--;
  return o;
}

void checkQueryAuthProvidersResponse(api.QueryAuthProvidersResponse o) {
  buildCounterQueryAuthProvidersResponse++;
  if (buildCounterQueryAuthProvidersResponse < 3) {
    checkUnnamed21(o.authProviderNames!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterQueryAuthProvidersResponse--;
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterQueryWorkloadsResponse = 0;
api.QueryWorkloadsResponse buildQueryWorkloadsResponse() {
  final o = api.QueryWorkloadsResponse();
  buildCounterQueryWorkloadsResponse++;
  if (buildCounterQueryWorkloadsResponse < 3) {
    o.nextPageToken = 'foo';
    o.workloadIds = buildUnnamed22();
  }
  buildCounterQueryWorkloadsResponse--;
  return o;
}

void checkQueryWorkloadsResponse(api.QueryWorkloadsResponse o) {
  buildCounterQueryWorkloadsResponse++;
  if (buildCounterQueryWorkloadsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed22(o.workloadIds!);
  }
  buildCounterQueryWorkloadsResponse--;
}

core.int buildCounterRevokeAuthorizationRequest = 0;
api.RevokeAuthorizationRequest buildRevokeAuthorizationRequest() {
  final o = api.RevokeAuthorizationRequest();
  buildCounterRevokeAuthorizationRequest++;
  if (buildCounterRevokeAuthorizationRequest < 3) {
    o.userId = 'foo';
  }
  buildCounterRevokeAuthorizationRequest--;
  return o;
}

void checkRevokeAuthorizationRequest(api.RevokeAuthorizationRequest o) {
  buildCounterRevokeAuthorizationRequest++;
  if (buildCounterRevokeAuthorizationRequest < 3) {
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterRevokeAuthorizationRequest--;
}

core.int buildCounterRevokeAuthorizationResponse = 0;
api.RevokeAuthorizationResponse buildRevokeAuthorizationResponse() {
  final o = api.RevokeAuthorizationResponse();
  buildCounterRevokeAuthorizationResponse++;
  if (buildCounterRevokeAuthorizationResponse < 3) {}
  buildCounterRevokeAuthorizationResponse--;
  return o;
}

void checkRevokeAuthorizationResponse(api.RevokeAuthorizationResponse o) {
  buildCounterRevokeAuthorizationResponse++;
  if (buildCounterRevokeAuthorizationResponse < 3) {}
  buildCounterRevokeAuthorizationResponse--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed23();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed23(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed24();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed24(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterThreeLeggedOAuth = 0;
api.ThreeLeggedOAuth buildThreeLeggedOAuth() {
  final o = api.ThreeLeggedOAuth();
  buildCounterThreeLeggedOAuth++;
  if (buildCounterThreeLeggedOAuth < 3) {
    o.authorizationUrl = 'foo';
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.defaultContinueUri = 'foo';
    o.enablePkce = true;
    o.redirectUrl = 'foo';
    o.tokenUrl = 'foo';
  }
  buildCounterThreeLeggedOAuth--;
  return o;
}

void checkThreeLeggedOAuth(api.ThreeLeggedOAuth o) {
  buildCounterThreeLeggedOAuth++;
  if (buildCounterThreeLeggedOAuth < 3) {
    unittest.expect(o.authorizationUrl!, unittest.equals('foo'));
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.clientSecret!, unittest.equals('foo'));
    unittest.expect(o.defaultContinueUri!, unittest.equals('foo'));
    unittest.expect(o.enablePkce!, unittest.isTrue);
    unittest.expect(o.redirectUrl!, unittest.equals('foo'));
    unittest.expect(o.tokenUrl!, unittest.equals('foo'));
  }
  buildCounterThreeLeggedOAuth--;
}

core.int buildCounterTwoLeggedOAuth = 0;
api.TwoLeggedOAuth buildTwoLeggedOAuth() {
  final o = api.TwoLeggedOAuth();
  buildCounterTwoLeggedOAuth++;
  if (buildCounterTwoLeggedOAuth < 3) {
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.tokenUrl = 'foo';
  }
  buildCounterTwoLeggedOAuth--;
  return o;
}

void checkTwoLeggedOAuth(api.TwoLeggedOAuth o) {
  buildCounterTwoLeggedOAuth++;
  if (buildCounterTwoLeggedOAuth < 3) {
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.clientSecret!, unittest.equals('foo'));
    unittest.expect(o.tokenUrl!, unittest.equals('foo'));
  }
  buildCounterTwoLeggedOAuth--;
}

core.int buildCounterUndeleteAuthProviderRequest = 0;
api.UndeleteAuthProviderRequest buildUndeleteAuthProviderRequest() {
  final o = api.UndeleteAuthProviderRequest();
  buildCounterUndeleteAuthProviderRequest++;
  if (buildCounterUndeleteAuthProviderRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterUndeleteAuthProviderRequest--;
  return o;
}

void checkUndeleteAuthProviderRequest(api.UndeleteAuthProviderRequest o) {
  buildCounterUndeleteAuthProviderRequest++;
  if (buildCounterUndeleteAuthProviderRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterUndeleteAuthProviderRequest--;
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AccessSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessSummary(od);
    });
  });

  unittest.group('obj-schema-ApiKeyParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApiKeyParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApiKeyParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApiKeyParams(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-AuthProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthProvider.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthProvider(od);
    });
  });

  unittest.group('obj-schema-AuthProviderTypeParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthProviderTypeParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthProviderTypeParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthProviderTypeParams(od);
    });
  });

  unittest.group('obj-schema-Authorization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Authorization.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthorization(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-DisableAuthProviderRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisableAuthProviderRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisableAuthProviderRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDisableAuthProviderRequest(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-EnableAuthProviderRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnableAuthProviderRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnableAuthProviderRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnableAuthProviderRequest(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Expr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-GeminiEnterpriseAuthProviderParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeminiEnterpriseAuthProviderParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeminiEnterpriseAuthProviderParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGeminiEnterpriseAuthProviderParams(od);
    });
  });

  unittest.group('obj-schema-ListAccessSummariesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccessSummariesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccessSummariesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAccessSummariesResponse(od);
    });
  });

  unittest.group('obj-schema-ListAuthProvidersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAuthProvidersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAuthProvidersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAuthProvidersResponse(od);
    });
  });

  unittest.group('obj-schema-ListAuthorizationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAuthorizationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAuthorizationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAuthorizationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-QueryAuthProvidersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryAuthProvidersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryAuthProvidersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryAuthProvidersResponse(od);
    });
  });

  unittest.group('obj-schema-QueryWorkloadsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryWorkloadsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryWorkloadsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryWorkloadsResponse(od);
    });
  });

  unittest.group('obj-schema-RevokeAuthorizationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevokeAuthorizationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevokeAuthorizationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRevokeAuthorizationRequest(od);
    });
  });

  unittest.group('obj-schema-RevokeAuthorizationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevokeAuthorizationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevokeAuthorizationResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRevokeAuthorizationResponse(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-ThreeLeggedOAuth', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThreeLeggedOAuth();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThreeLeggedOAuth.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkThreeLeggedOAuth(od);
    });
  });

  unittest.group('obj-schema-TwoLeggedOAuth', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTwoLeggedOAuth();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TwoLeggedOAuth.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTwoLeggedOAuth(od);
    });
  });

  unittest.group('obj-schema-UndeleteAuthProviderRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteAuthProviderRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteAuthProviderRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUndeleteAuthProviderRequest(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed25();
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
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
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
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
          final resp = convert.json.encode(buildListLocationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAccessSummariesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.accessSummaries;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildAccessSummary());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAccessSummary(response as api.AccessSummary);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.accessSummaries;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
          final resp = convert.json.encode(buildListAccessSummariesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAccessSummariesResponse(
        response as api.ListAccessSummariesResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAuthProvidersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.authProviders;
      final arg_request = buildAuthProvider();
      final arg_parent = 'foo';
      final arg_authProviderId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuthProvider.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuthProvider(obj);

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
            unittest.equals('v1/'),
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
            queryMap['authProviderId']!.first,
            unittest.equals(arg_authProviderId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAuthProvider());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        authProviderId: arg_authProviderId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkAuthProvider(response as api.AuthProvider);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.authProviders;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
            unittest.equals('v1/'),
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.authProviders;
      final arg_request = buildDisableAuthProviderRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DisableAuthProviderRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDisableAuthProviderRequest(obj);

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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildAuthProvider());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.disable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkAuthProvider(response as api.AuthProvider);
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.authProviders;
      final arg_request = buildEnableAuthProviderRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EnableAuthProviderRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEnableAuthProviderRequest(obj);

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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildAuthProvider());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkAuthProvider(response as api.AuthProvider);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.authProviders;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildAuthProvider());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAuthProvider(response as api.AuthProvider);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.authProviders;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            unittest.equals('v1/'),
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.authProviders;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
            unittest.equals('v1/'),
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAuthProvidersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        showDeleted: arg_showDeleted,
        $fields: arg_$fields,
      );
      checkListAuthProvidersResponse(response as api.ListAuthProvidersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.authProviders;
      final arg_request = buildAuthProvider();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuthProvider.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuthProvider(obj);

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
            unittest.equals('v1/'),
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAuthProvider());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkAuthProvider(response as api.AuthProvider);
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.authProviders;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_workloadId = 'foo';
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
            unittest.equals('v1/'),
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
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['workloadId']!.first,
            unittest.equals(arg_workloadId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildQueryAuthProvidersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.query(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        workloadId: arg_workloadId,
        $fields: arg_$fields,
      );
      checkQueryAuthProvidersResponse(
        response as api.QueryAuthProvidersResponse,
      );
    });

    unittest.test('method--queryWorkloads', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.authProviders;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildQueryWorkloadsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.queryWorkloads(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkQueryWorkloadsResponse(response as api.QueryWorkloadsResponse);
    });

    unittest.test('method--revokeAuthorization', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.authProviders;
      final arg_request = buildRevokeAuthorizationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RevokeAuthorizationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRevokeAuthorizationRequest(obj);

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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildRevokeAuthorizationResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.revokeAuthorization(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkRevokeAuthorizationResponse(
        response as api.RevokeAuthorizationResponse,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.authProviders;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.authProviders;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.authProviders;
      final arg_request = buildUndeleteAuthProviderRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UndeleteAuthProviderRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUndeleteAuthProviderRequest(obj);

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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildAuthProvider());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.undelete(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkAuthProvider(response as api.AuthProvider);
    });
  });

  unittest.group('resource-ProjectsLocationsAuthProvidersAuthorizationsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(
        mock,
      ).projects.locations.authProviders.authorizations;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
            unittest.equals('v1/'),
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(
        mock,
      ).projects.locations.authProviders.authorizations;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildAuthorization());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAuthorization(response as api.Authorization);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(
        mock,
      ).projects.locations.authProviders.authorizations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
          final resp = convert.json.encode(buildListAuthorizationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAuthorizationsResponse(
        response as api.ListAuthorizationsResponse,
      );
    });
  });
}
