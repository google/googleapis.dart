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

core.int buildCounterAgentIdentityPool = 0;
api.AgentIdentityPool buildAgentIdentityPool() {
  final o = api.AgentIdentityPool();
  buildCounterAgentIdentityPool++;
  if (buildCounterAgentIdentityPool < 3) {}
  buildCounterAgentIdentityPool--;
  return o;
}

void checkAgentIdentityPool(api.AgentIdentityPool o) {
  buildCounterAgentIdentityPool++;
  if (buildCounterAgentIdentityPool < 3) {}
  buildCounterAgentIdentityPool--;
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
    o.connectorReferenceAuthProvider = buildConnectorReferenceAuthProvider();
    o.geAuthProvider = buildGeminiEnterpriseAuthProviderParams();
    o.threeLeggedOauth = buildThreeLeggedOAuth();
    o.twoLeggedOauth = buildTwoLeggedOAuth();
    o.xaaAuthProvider = buildCrossAppAccessAuthProvider();
  }
  buildCounterAuthProviderTypeParams--;
  return o;
}

void checkAuthProviderTypeParams(api.AuthProviderTypeParams o) {
  buildCounterAuthProviderTypeParams++;
  if (buildCounterAuthProviderTypeParams < 3) {
    checkApiKeyParams(o.apiKey!);
    checkConnectorReferenceAuthProvider(o.connectorReferenceAuthProvider!);
    checkGeminiEnterpriseAuthProviderParams(o.geAuthProvider!);
    checkThreeLeggedOAuth(o.threeLeggedOauth!);
    checkTwoLeggedOAuth(o.twoLeggedOauth!);
    checkCrossAppAccessAuthProvider(o.xaaAuthProvider!);
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

core.int buildCounterClientAssertionJwtAuth = 0;
api.ClientAssertionJwtAuth buildClientAssertionJwtAuth() {
  final o = api.ClientAssertionJwtAuth();
  buildCounterClientAssertionJwtAuth++;
  if (buildCounterClientAssertionJwtAuth < 3) {
    o.clientId = 'foo';
  }
  buildCounterClientAssertionJwtAuth--;
  return o;
}

void checkClientAssertionJwtAuth(api.ClientAssertionJwtAuth o) {
  buildCounterClientAssertionJwtAuth++;
  if (buildCounterClientAssertionJwtAuth < 3) {
    unittest.expect(o.clientId!, unittest.equals('foo'));
  }
  buildCounterClientAssertionJwtAuth--;
}

core.int buildCounterClientSecretAuth = 0;
api.ClientSecretAuth buildClientSecretAuth() {
  final o = api.ClientSecretAuth();
  buildCounterClientSecretAuth++;
  if (buildCounterClientSecretAuth < 3) {
    o.clientId = 'foo';
    o.clientSecret = 'foo';
  }
  buildCounterClientSecretAuth--;
  return o;
}

void checkClientSecretAuth(api.ClientSecretAuth o) {
  buildCounterClientSecretAuth++;
  if (buildCounterClientSecretAuth < 3) {
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.clientSecret!, unittest.equals('foo'));
  }
  buildCounterClientSecretAuth--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed11() => [
  buildUnnamed10(),
  buildUnnamed10(),
];

void checkUnnamed11(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed10(o[0]);
  checkUnnamed10(o[1]);
}

core.int buildCounterConnectorReferenceAuthProvider = 0;
api.ConnectorReferenceAuthProvider buildConnectorReferenceAuthProvider() {
  final o = api.ConnectorReferenceAuthProvider();
  buildCounterConnectorReferenceAuthProvider++;
  if (buildCounterConnectorReferenceAuthProvider < 3) {
    o.authorizationDetails = buildUnnamed11();
    o.connector = 'foo';
  }
  buildCounterConnectorReferenceAuthProvider--;
  return o;
}

void checkConnectorReferenceAuthProvider(api.ConnectorReferenceAuthProvider o) {
  buildCounterConnectorReferenceAuthProvider++;
  if (buildCounterConnectorReferenceAuthProvider < 3) {
    checkUnnamed11(o.authorizationDetails!);
    unittest.expect(o.connector!, unittest.equals('foo'));
  }
  buildCounterConnectorReferenceAuthProvider--;
}

core.Map<core.String, core.String> buildUnnamed12() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed12(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterCrossAppAccessAuthProvider = 0;
api.CrossAppAccessAuthProvider buildCrossAppAccessAuthProvider() {
  final o = api.CrossAppAccessAuthProvider();
  buildCounterCrossAppAccessAuthProvider++;
  if (buildCounterCrossAppAccessAuthProvider < 3) {
    o.additionalParameters = buildUnnamed12();
    o.clientAssertionJwtAuth = buildClientAssertionJwtAuth();
    o.clientSecretAuth = buildClientSecretAuth();
    o.customIssuer = buildCustomIssuer();
    o.googleAccount = buildGoogleAccount();
    o.idJagInput = buildDirectIdJagInput();
    o.idTokenInput = buildIdTokenProcessingConfig();
    o.workforceIdentityFederation = buildWorkforceIdentityFederation();
  }
  buildCounterCrossAppAccessAuthProvider--;
  return o;
}

void checkCrossAppAccessAuthProvider(api.CrossAppAccessAuthProvider o) {
  buildCounterCrossAppAccessAuthProvider++;
  if (buildCounterCrossAppAccessAuthProvider < 3) {
    checkUnnamed12(o.additionalParameters!);
    checkClientAssertionJwtAuth(o.clientAssertionJwtAuth!);
    checkClientSecretAuth(o.clientSecretAuth!);
    checkCustomIssuer(o.customIssuer!);
    checkGoogleAccount(o.googleAccount!);
    checkDirectIdJagInput(o.idJagInput!);
    checkIdTokenProcessingConfig(o.idTokenInput!);
    checkWorkforceIdentityFederation(o.workforceIdentityFederation!);
  }
  buildCounterCrossAppAccessAuthProvider--;
}

core.int buildCounterCustomIssuer = 0;
api.CustomIssuer buildCustomIssuer() {
  final o = api.CustomIssuer();
  buildCounterCustomIssuer++;
  if (buildCounterCustomIssuer < 3) {
    o.issuer = 'foo';
    o.tokenUrl = 'foo';
  }
  buildCounterCustomIssuer--;
  return o;
}

void checkCustomIssuer(api.CustomIssuer o) {
  buildCounterCustomIssuer++;
  if (buildCounterCustomIssuer < 3) {
    unittest.expect(o.issuer!, unittest.equals('foo'));
    unittest.expect(o.tokenUrl!, unittest.equals('foo'));
  }
  buildCounterCustomIssuer--;
}

core.int buildCounterDirectIdJagInput = 0;
api.DirectIdJagInput buildDirectIdJagInput() {
  final o = api.DirectIdJagInput();
  buildCounterDirectIdJagInput++;
  if (buildCounterDirectIdJagInput < 3) {}
  buildCounterDirectIdJagInput--;
  return o;
}

void checkDirectIdJagInput(api.DirectIdJagInput o) {
  buildCounterDirectIdJagInput++;
  if (buildCounterDirectIdJagInput < 3) {}
  buildCounterDirectIdJagInput--;
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

core.int buildCounterGoogleAccount = 0;
api.GoogleAccount buildGoogleAccount() {
  final o = api.GoogleAccount();
  buildCounterGoogleAccount++;
  if (buildCounterGoogleAccount < 3) {}
  buildCounterGoogleAccount--;
  return o;
}

void checkGoogleAccount(api.GoogleAccount o) {
  buildCounterGoogleAccount++;
  if (buildCounterGoogleAccount < 3) {}
  buildCounterGoogleAccount--;
}

core.Map<core.String, core.Object?> buildUnnamed13() => {
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

void checkUnnamed13(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.int buildCounterIdTokenProcessingConfig = 0;
api.IdTokenProcessingConfig buildIdTokenProcessingConfig() {
  final o = api.IdTokenProcessingConfig();
  buildCounterIdTokenProcessingConfig++;
  if (buildCounterIdTokenProcessingConfig < 3) {
    o.agentIdentityPool = buildAgentIdentityPool();
    o.idJagAdditionalClaims = buildUnnamed13();
    o.idJagAuthProvider = 'foo';
  }
  buildCounterIdTokenProcessingConfig--;
  return o;
}

void checkIdTokenProcessingConfig(api.IdTokenProcessingConfig o) {
  buildCounterIdTokenProcessingConfig++;
  if (buildCounterIdTokenProcessingConfig < 3) {
    checkAgentIdentityPool(o.agentIdentityPool!);
    checkUnnamed13(o.idJagAdditionalClaims!);
    unittest.expect(o.idJagAuthProvider!, unittest.equals('foo'));
  }
  buildCounterIdTokenProcessingConfig--;
}

core.List<api.AccessSummary> buildUnnamed14() => [
  buildAccessSummary(),
  buildAccessSummary(),
];

void checkUnnamed14(core.List<api.AccessSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessSummary(o[0]);
  checkAccessSummary(o[1]);
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAccessSummariesResponse = 0;
api.ListAccessSummariesResponse buildListAccessSummariesResponse() {
  final o = api.ListAccessSummariesResponse();
  buildCounterListAccessSummariesResponse++;
  if (buildCounterListAccessSummariesResponse < 3) {
    o.accessSummaries = buildUnnamed14();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed15();
  }
  buildCounterListAccessSummariesResponse--;
  return o;
}

void checkListAccessSummariesResponse(api.ListAccessSummariesResponse o) {
  buildCounterListAccessSummariesResponse++;
  if (buildCounterListAccessSummariesResponse < 3) {
    checkUnnamed14(o.accessSummaries!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed15(o.unreachable!);
  }
  buildCounterListAccessSummariesResponse--;
}

core.List<api.AuthProvider> buildUnnamed16() => [
  buildAuthProvider(),
  buildAuthProvider(),
];

void checkUnnamed16(core.List<api.AuthProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthProvider(o[0]);
  checkAuthProvider(o[1]);
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAuthProvidersResponse = 0;
api.ListAuthProvidersResponse buildListAuthProvidersResponse() {
  final o = api.ListAuthProvidersResponse();
  buildCounterListAuthProvidersResponse++;
  if (buildCounterListAuthProvidersResponse < 3) {
    o.authProviders = buildUnnamed16();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed17();
  }
  buildCounterListAuthProvidersResponse--;
  return o;
}

void checkListAuthProvidersResponse(api.ListAuthProvidersResponse o) {
  buildCounterListAuthProvidersResponse++;
  if (buildCounterListAuthProvidersResponse < 3) {
    checkUnnamed16(o.authProviders!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed17(o.unreachable!);
  }
  buildCounterListAuthProvidersResponse--;
}

core.List<api.Authorization> buildUnnamed18() => [
  buildAuthorization(),
  buildAuthorization(),
];

void checkUnnamed18(core.List<api.Authorization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorization(o[0]);
  checkAuthorization(o[1]);
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAuthorizationsResponse = 0;
api.ListAuthorizationsResponse buildListAuthorizationsResponse() {
  final o = api.ListAuthorizationsResponse();
  buildCounterListAuthorizationsResponse++;
  if (buildCounterListAuthorizationsResponse < 3) {
    o.authorizations = buildUnnamed18();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed19();
  }
  buildCounterListAuthorizationsResponse--;
  return o;
}

void checkListAuthorizationsResponse(api.ListAuthorizationsResponse o) {
  buildCounterListAuthorizationsResponse++;
  if (buildCounterListAuthorizationsResponse < 3) {
    checkUnnamed18(o.authorizations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed19(o.unreachable!);
  }
  buildCounterListAuthorizationsResponse--;
}

core.List<api.Location> buildUnnamed20() => [buildLocation(), buildLocation()];

void checkUnnamed20(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed20();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed20(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed21() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed21(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed22() => {
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

void checkUnnamed22(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed21();
    o.locationId = 'foo';
    o.metadata = buildUnnamed22();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed21(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed22(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.List<api.AuditConfig> buildUnnamed23() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed23(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed24() => [buildBinding(), buildBinding()];

void checkUnnamed24(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed23();
    o.bindings = buildUnnamed24();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed23(o.auditConfigs!);
    checkUnnamed24(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterQueryAuthProvidersResponse = 0;
api.QueryAuthProvidersResponse buildQueryAuthProvidersResponse() {
  final o = api.QueryAuthProvidersResponse();
  buildCounterQueryAuthProvidersResponse++;
  if (buildCounterQueryAuthProvidersResponse < 3) {
    o.authProviderNames = buildUnnamed25();
    o.nextPageToken = 'foo';
  }
  buildCounterQueryAuthProvidersResponse--;
  return o;
}

void checkQueryAuthProvidersResponse(api.QueryAuthProvidersResponse o) {
  buildCounterQueryAuthProvidersResponse++;
  if (buildCounterQueryAuthProvidersResponse < 3) {
    checkUnnamed25(o.authProviderNames!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterQueryAuthProvidersResponse--;
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
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
    o.workloadIds = buildUnnamed26();
  }
  buildCounterQueryWorkloadsResponse--;
  return o;
}

void checkQueryWorkloadsResponse(api.QueryWorkloadsResponse o) {
  buildCounterQueryWorkloadsResponse++;
  if (buildCounterQueryWorkloadsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed26(o.workloadIds!);
  }
  buildCounterQueryWorkloadsResponse--;
}

core.int buildCounterResolveAuthorizationRequest = 0;
api.ResolveAuthorizationRequest buildResolveAuthorizationRequest() {
  final o = api.ResolveAuthorizationRequest();
  buildCounterResolveAuthorizationRequest++;
  if (buildCounterResolveAuthorizationRequest < 3) {
    o.clientUserId = 'foo';
  }
  buildCounterResolveAuthorizationRequest--;
  return o;
}

void checkResolveAuthorizationRequest(api.ResolveAuthorizationRequest o) {
  buildCounterResolveAuthorizationRequest++;
  if (buildCounterResolveAuthorizationRequest < 3) {
    unittest.expect(o.clientUserId!, unittest.equals('foo'));
  }
  buildCounterResolveAuthorizationRequest--;
}

core.int buildCounterResolveAuthorizationResponse = 0;
api.ResolveAuthorizationResponse buildResolveAuthorizationResponse() {
  final o = api.ResolveAuthorizationResponse();
  buildCounterResolveAuthorizationResponse++;
  if (buildCounterResolveAuthorizationResponse < 3) {
    o.authorization = 'foo';
  }
  buildCounterResolveAuthorizationResponse--;
  return o;
}

void checkResolveAuthorizationResponse(api.ResolveAuthorizationResponse o) {
  buildCounterResolveAuthorizationResponse++;
  if (buildCounterResolveAuthorizationResponse < 3) {
    unittest.expect(o.authorization!, unittest.equals('foo'));
  }
  buildCounterResolveAuthorizationResponse--;
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

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed27();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed27(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed28();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed28(o.permissions!);
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

core.int buildCounterWorkforceIdentityFederation = 0;
api.WorkforceIdentityFederation buildWorkforceIdentityFederation() {
  final o = api.WorkforceIdentityFederation();
  buildCounterWorkforceIdentityFederation++;
  if (buildCounterWorkforceIdentityFederation < 3) {}
  buildCounterWorkforceIdentityFederation--;
  return o;
}

void checkWorkforceIdentityFederation(api.WorkforceIdentityFederation o) {
  buildCounterWorkforceIdentityFederation++;
  if (buildCounterWorkforceIdentityFederation < 3) {}
  buildCounterWorkforceIdentityFederation--;
}

core.List<core.String> buildUnnamed29() => ['foo', 'foo'];

void checkUnnamed29(core.List<core.String> o) {
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

  unittest.group('obj-schema-AgentIdentityPool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentIdentityPool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentIdentityPool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentIdentityPool(od);
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

  unittest.group('obj-schema-ClientAssertionJwtAuth', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientAssertionJwtAuth();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientAssertionJwtAuth.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClientAssertionJwtAuth(od);
    });
  });

  unittest.group('obj-schema-ClientSecretAuth', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientSecretAuth();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientSecretAuth.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClientSecretAuth(od);
    });
  });

  unittest.group('obj-schema-ConnectorReferenceAuthProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectorReferenceAuthProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectorReferenceAuthProvider.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnectorReferenceAuthProvider(od);
    });
  });

  unittest.group('obj-schema-CrossAppAccessAuthProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCrossAppAccessAuthProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CrossAppAccessAuthProvider.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCrossAppAccessAuthProvider(od);
    });
  });

  unittest.group('obj-schema-CustomIssuer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomIssuer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomIssuer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomIssuer(od);
    });
  });

  unittest.group('obj-schema-DirectIdJagInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDirectIdJagInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DirectIdJagInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDirectIdJagInput(od);
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

  unittest.group('obj-schema-GoogleAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAccount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAccount(od);
    });
  });

  unittest.group('obj-schema-IdTokenProcessingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdTokenProcessingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdTokenProcessingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIdTokenProcessingConfig(od);
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

  unittest.group('obj-schema-ResolveAuthorizationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResolveAuthorizationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResolveAuthorizationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResolveAuthorizationRequest(od);
    });
  });

  unittest.group('obj-schema-ResolveAuthorizationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResolveAuthorizationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResolveAuthorizationResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResolveAuthorizationResponse(od);
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

  unittest.group('obj-schema-WorkforceIdentityFederation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkforceIdentityFederation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkforceIdentityFederation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkforceIdentityFederation(od);
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
      final arg_extraLocationTypes = buildUnnamed29();
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

    unittest.test('method--resolveAuthorization', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(mock).projects.locations.authProviders;
      final arg_request = buildResolveAuthorizationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ResolveAuthorizationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkResolveAuthorizationRequest(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildResolveAuthorizationResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resolveAuthorization(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkResolveAuthorizationResponse(
        response as api.ResolveAuthorizationResponse,
      );
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

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(
        mock,
      ).projects.locations.authProviders.authorizations;
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

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityApi(
        mock,
      ).projects.locations.authProviders.authorizations;
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
      final res = api.AgentIdentityApi(
        mock,
      ).projects.locations.authProviders.authorizations;
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
  });
}
