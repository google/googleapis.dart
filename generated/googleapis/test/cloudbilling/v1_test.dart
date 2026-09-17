// Copyright 2015 Google LLC
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

import 'package:googleapis/cloudbilling/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAPIKeySecurityScheme = 0;
api.APIKeySecurityScheme buildAPIKeySecurityScheme() {
  final o = api.APIKeySecurityScheme();
  buildCounterAPIKeySecurityScheme++;
  if (buildCounterAPIKeySecurityScheme < 3) {
    o.description = 'foo';
    o.location = 'foo';
    o.name = 'foo';
  }
  buildCounterAPIKeySecurityScheme--;
  return o;
}

void checkAPIKeySecurityScheme(api.APIKeySecurityScheme o) {
  buildCounterAPIKeySecurityScheme++;
  if (buildCounterAPIKeySecurityScheme < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterAPIKeySecurityScheme--;
}

core.List<api.AgentExtension> buildUnnamed0() => [
  buildAgentExtension(),
  buildAgentExtension(),
];

void checkUnnamed0(core.List<api.AgentExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentExtension(o[0]);
  checkAgentExtension(o[1]);
}

core.int buildCounterAgentCapabilities = 0;
api.AgentCapabilities buildAgentCapabilities() {
  final o = api.AgentCapabilities();
  buildCounterAgentCapabilities++;
  if (buildCounterAgentCapabilities < 3) {
    o.extensions = buildUnnamed0();
    o.pushNotifications = true;
    o.streaming = true;
  }
  buildCounterAgentCapabilities--;
  return o;
}

void checkAgentCapabilities(api.AgentCapabilities o) {
  buildCounterAgentCapabilities++;
  if (buildCounterAgentCapabilities < 3) {
    checkUnnamed0(o.extensions!);
    unittest.expect(o.pushNotifications!, unittest.isTrue);
    unittest.expect(o.streaming!, unittest.isTrue);
  }
  buildCounterAgentCapabilities--;
}

core.List<api.AgentInterface> buildUnnamed1() => [
  buildAgentInterface(),
  buildAgentInterface(),
];

void checkUnnamed1(core.List<api.AgentInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentInterface(o[0]);
  checkAgentInterface(o[1]);
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Security> buildUnnamed4() => [buildSecurity(), buildSecurity()];

void checkUnnamed4(core.List<api.Security> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecurity(o[0]);
  checkSecurity(o[1]);
}

core.Map<core.String, api.SecurityScheme> buildUnnamed5() => {
  'x': buildSecurityScheme(),
  'y': buildSecurityScheme(),
};

void checkUnnamed5(core.Map<core.String, api.SecurityScheme> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecurityScheme(o['x']!);
  checkSecurityScheme(o['y']!);
}

core.List<api.AgentCardSignature> buildUnnamed6() => [
  buildAgentCardSignature(),
  buildAgentCardSignature(),
];

void checkUnnamed6(core.List<api.AgentCardSignature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentCardSignature(o[0]);
  checkAgentCardSignature(o[1]);
}

core.List<api.AgentSkill> buildUnnamed7() => [
  buildAgentSkill(),
  buildAgentSkill(),
];

void checkUnnamed7(core.List<api.AgentSkill> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentSkill(o[0]);
  checkAgentSkill(o[1]);
}

core.int buildCounterAgentCard = 0;
api.AgentCard buildAgentCard() {
  final o = api.AgentCard();
  buildCounterAgentCard++;
  if (buildCounterAgentCard < 3) {
    o.additionalInterfaces = buildUnnamed1();
    o.capabilities = buildAgentCapabilities();
    o.defaultInputModes = buildUnnamed2();
    o.defaultOutputModes = buildUnnamed3();
    o.description = 'foo';
    o.documentationUrl = 'foo';
    o.iconUrl = 'foo';
    o.name = 'foo';
    o.preferredTransport = 'foo';
    o.protocolVersion = 'foo';
    o.provider = buildAgentProvider();
    o.security = buildUnnamed4();
    o.securitySchemes = buildUnnamed5();
    o.signatures = buildUnnamed6();
    o.skills = buildUnnamed7();
    o.supportsAuthenticatedExtendedCard = true;
    o.url = 'foo';
    o.version = 'foo';
  }
  buildCounterAgentCard--;
  return o;
}

void checkAgentCard(api.AgentCard o) {
  buildCounterAgentCard++;
  if (buildCounterAgentCard < 3) {
    checkUnnamed1(o.additionalInterfaces!);
    checkAgentCapabilities(o.capabilities!);
    checkUnnamed2(o.defaultInputModes!);
    checkUnnamed3(o.defaultOutputModes!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.documentationUrl!, unittest.equals('foo'));
    unittest.expect(o.iconUrl!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.preferredTransport!, unittest.equals('foo'));
    unittest.expect(o.protocolVersion!, unittest.equals('foo'));
    checkAgentProvider(o.provider!);
    checkUnnamed4(o.security!);
    checkUnnamed5(o.securitySchemes!);
    checkUnnamed6(o.signatures!);
    checkUnnamed7(o.skills!);
    unittest.expect(o.supportsAuthenticatedExtendedCard!, unittest.isTrue);
    unittest.expect(o.url!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterAgentCard--;
}

core.Map<core.String, core.Object?> buildUnnamed8() => {
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

void checkUnnamed8(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterAgentCardSignature = 0;
api.AgentCardSignature buildAgentCardSignature() {
  final o = api.AgentCardSignature();
  buildCounterAgentCardSignature++;
  if (buildCounterAgentCardSignature < 3) {
    o.header = buildUnnamed8();
    o.protected = 'foo';
    o.signature = 'foo';
  }
  buildCounterAgentCardSignature--;
  return o;
}

void checkAgentCardSignature(api.AgentCardSignature o) {
  buildCounterAgentCardSignature++;
  if (buildCounterAgentCardSignature < 3) {
    checkUnnamed8(o.header!);
    unittest.expect(o.protected!, unittest.equals('foo'));
    unittest.expect(o.signature!, unittest.equals('foo'));
  }
  buildCounterAgentCardSignature--;
}

core.Map<core.String, core.Object?> buildUnnamed9() => {
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

void checkUnnamed9(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterAgentExtension = 0;
api.AgentExtension buildAgentExtension() {
  final o = api.AgentExtension();
  buildCounterAgentExtension++;
  if (buildCounterAgentExtension < 3) {
    o.description = 'foo';
    o.params = buildUnnamed9();
    o.required = true;
    o.uri = 'foo';
  }
  buildCounterAgentExtension--;
  return o;
}

void checkAgentExtension(api.AgentExtension o) {
  buildCounterAgentExtension++;
  if (buildCounterAgentExtension < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed9(o.params!);
    unittest.expect(o.required!, unittest.isTrue);
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterAgentExtension--;
}

core.int buildCounterAgentInterface = 0;
api.AgentInterface buildAgentInterface() {
  final o = api.AgentInterface();
  buildCounterAgentInterface++;
  if (buildCounterAgentInterface < 3) {
    o.tenant = 'foo';
    o.transport = 'foo';
    o.url = 'foo';
  }
  buildCounterAgentInterface--;
  return o;
}

void checkAgentInterface(api.AgentInterface o) {
  buildCounterAgentInterface++;
  if (buildCounterAgentInterface < 3) {
    unittest.expect(o.tenant!, unittest.equals('foo'));
    unittest.expect(o.transport!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterAgentInterface--;
}

core.int buildCounterAgentProvider = 0;
api.AgentProvider buildAgentProvider() {
  final o = api.AgentProvider();
  buildCounterAgentProvider++;
  if (buildCounterAgentProvider < 3) {
    o.organization = 'foo';
    o.url = 'foo';
  }
  buildCounterAgentProvider--;
  return o;
}

void checkAgentProvider(api.AgentProvider o) {
  buildCounterAgentProvider++;
  if (buildCounterAgentProvider < 3) {
    unittest.expect(o.organization!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterAgentProvider--;
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Security> buildUnnamed13() => [buildSecurity(), buildSecurity()];

void checkUnnamed13(core.List<api.Security> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecurity(o[0]);
  checkSecurity(o[1]);
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAgentSkill = 0;
api.AgentSkill buildAgentSkill() {
  final o = api.AgentSkill();
  buildCounterAgentSkill++;
  if (buildCounterAgentSkill < 3) {
    o.description = 'foo';
    o.examples = buildUnnamed10();
    o.id = 'foo';
    o.inputModes = buildUnnamed11();
    o.name = 'foo';
    o.outputModes = buildUnnamed12();
    o.security = buildUnnamed13();
    o.tags = buildUnnamed14();
  }
  buildCounterAgentSkill--;
  return o;
}

void checkAgentSkill(api.AgentSkill o) {
  buildCounterAgentSkill++;
  if (buildCounterAgentSkill < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed10(o.examples!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed11(o.inputModes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed12(o.outputModes!);
    checkUnnamed13(o.security!);
    checkUnnamed14(o.tags!);
  }
  buildCounterAgentSkill--;
}

core.int buildCounterAggregationInfo = 0;
api.AggregationInfo buildAggregationInfo() {
  final o = api.AggregationInfo();
  buildCounterAggregationInfo++;
  if (buildCounterAggregationInfo < 3) {
    o.aggregationCount = 42;
    o.aggregationInterval = 'foo';
    o.aggregationLevel = 'foo';
  }
  buildCounterAggregationInfo--;
  return o;
}

void checkAggregationInfo(api.AggregationInfo o) {
  buildCounterAggregationInfo++;
  if (buildCounterAggregationInfo < 3) {
    unittest.expect(o.aggregationCount!, unittest.equals(42));
    unittest.expect(o.aggregationInterval!, unittest.equals('foo'));
    unittest.expect(o.aggregationLevel!, unittest.equals('foo'));
  }
  buildCounterAggregationInfo--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
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

core.List<api.Part> buildUnnamed17() => [buildPart(), buildPart()];

void checkUnnamed17(core.List<api.Part> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPart(o[0]);
  checkPart(o[1]);
}

core.int buildCounterArtifact = 0;
api.Artifact buildArtifact() {
  final o = api.Artifact();
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    o.artifactId = 'foo';
    o.description = 'foo';
    o.extensions = buildUnnamed15();
    o.metadata = buildUnnamed16();
    o.name = 'foo';
    o.parts = buildUnnamed17();
  }
  buildCounterArtifact--;
  return o;
}

void checkArtifact(api.Artifact o) {
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    unittest.expect(o.artifactId!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed15(o.extensions!);
    checkUnnamed16(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed17(o.parts!);
  }
  buildCounterArtifact--;
}

core.List<api.AuditLogConfig> buildUnnamed18() => [
  buildAuditLogConfig(),
  buildAuditLogConfig(),
];

void checkUnnamed18(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed18();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed18(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed19();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed19(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuthenticationInfo = 0;
api.AuthenticationInfo buildAuthenticationInfo() {
  final o = api.AuthenticationInfo();
  buildCounterAuthenticationInfo++;
  if (buildCounterAuthenticationInfo < 3) {
    o.credentials = 'foo';
    o.schemes = buildUnnamed20();
  }
  buildCounterAuthenticationInfo--;
  return o;
}

void checkAuthenticationInfo(api.AuthenticationInfo o) {
  buildCounterAuthenticationInfo++;
  if (buildCounterAuthenticationInfo < 3) {
    unittest.expect(o.credentials!, unittest.equals('foo'));
    checkUnnamed20(o.schemes!);
  }
  buildCounterAuthenticationInfo--;
}

core.Map<core.String, core.String> buildUnnamed21() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed21(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAuthorizationCodeOAuthFlow = 0;
api.AuthorizationCodeOAuthFlow buildAuthorizationCodeOAuthFlow() {
  final o = api.AuthorizationCodeOAuthFlow();
  buildCounterAuthorizationCodeOAuthFlow++;
  if (buildCounterAuthorizationCodeOAuthFlow < 3) {
    o.authorizationUrl = 'foo';
    o.refreshUrl = 'foo';
    o.scopes = buildUnnamed21();
    o.tokenUrl = 'foo';
  }
  buildCounterAuthorizationCodeOAuthFlow--;
  return o;
}

void checkAuthorizationCodeOAuthFlow(api.AuthorizationCodeOAuthFlow o) {
  buildCounterAuthorizationCodeOAuthFlow++;
  if (buildCounterAuthorizationCodeOAuthFlow < 3) {
    unittest.expect(o.authorizationUrl!, unittest.equals('foo'));
    unittest.expect(o.refreshUrl!, unittest.equals('foo'));
    checkUnnamed21(o.scopes!);
    unittest.expect(o.tokenUrl!, unittest.equals('foo'));
  }
  buildCounterAuthorizationCodeOAuthFlow--;
}

core.int buildCounterBillingAccount = 0;
api.BillingAccount buildBillingAccount() {
  final o = api.BillingAccount();
  buildCounterBillingAccount++;
  if (buildCounterBillingAccount < 3) {
    o.currencyCode = 'foo';
    o.displayName = 'foo';
    o.masterBillingAccount = 'foo';
    o.name = 'foo';
    o.open = true;
    o.parent = 'foo';
  }
  buildCounterBillingAccount--;
  return o;
}

void checkBillingAccount(api.BillingAccount o) {
  buildCounterBillingAccount++;
  if (buildCounterBillingAccount < 3) {
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.masterBillingAccount!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.open!, unittest.isTrue);
    unittest.expect(o.parent!, unittest.equals('foo'));
  }
  buildCounterBillingAccount--;
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
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
    o.members = buildUnnamed22();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed22(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCancelTaskRequest = 0;
api.CancelTaskRequest buildCancelTaskRequest() {
  final o = api.CancelTaskRequest();
  buildCounterCancelTaskRequest++;
  if (buildCounterCancelTaskRequest < 3) {
    o.tenant = 'foo';
  }
  buildCounterCancelTaskRequest--;
  return o;
}

void checkCancelTaskRequest(api.CancelTaskRequest o) {
  buildCounterCancelTaskRequest++;
  if (buildCounterCancelTaskRequest < 3) {
    unittest.expect(o.tenant!, unittest.equals('foo'));
  }
  buildCounterCancelTaskRequest--;
}

core.int buildCounterCategory = 0;
api.Category buildCategory() {
  final o = api.Category();
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    o.resourceFamily = 'foo';
    o.resourceGroup = 'foo';
    o.serviceDisplayName = 'foo';
    o.usageType = 'foo';
  }
  buildCounterCategory--;
  return o;
}

void checkCategory(api.Category o) {
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    unittest.expect(o.resourceFamily!, unittest.equals('foo'));
    unittest.expect(o.resourceGroup!, unittest.equals('foo'));
    unittest.expect(o.serviceDisplayName!, unittest.equals('foo'));
    unittest.expect(o.usageType!, unittest.equals('foo'));
  }
  buildCounterCategory--;
}

core.Map<core.String, core.String> buildUnnamed23() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed23(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterClientCredentialsOAuthFlow = 0;
api.ClientCredentialsOAuthFlow buildClientCredentialsOAuthFlow() {
  final o = api.ClientCredentialsOAuthFlow();
  buildCounterClientCredentialsOAuthFlow++;
  if (buildCounterClientCredentialsOAuthFlow < 3) {
    o.refreshUrl = 'foo';
    o.scopes = buildUnnamed23();
    o.tokenUrl = 'foo';
  }
  buildCounterClientCredentialsOAuthFlow--;
  return o;
}

void checkClientCredentialsOAuthFlow(api.ClientCredentialsOAuthFlow o) {
  buildCounterClientCredentialsOAuthFlow++;
  if (buildCounterClientCredentialsOAuthFlow < 3) {
    unittest.expect(o.refreshUrl!, unittest.equals('foo'));
    checkUnnamed23(o.scopes!);
    unittest.expect(o.tokenUrl!, unittest.equals('foo'));
  }
  buildCounterClientCredentialsOAuthFlow--;
}

core.Map<core.String, core.Object?> buildUnnamed24() => {
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

void checkUnnamed24(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.int buildCounterDataPart = 0;
api.DataPart buildDataPart() {
  final o = api.DataPart();
  buildCounterDataPart++;
  if (buildCounterDataPart < 3) {
    o.data = buildUnnamed24();
  }
  buildCounterDataPart--;
  return o;
}

void checkDataPart(api.DataPart o) {
  buildCounterDataPart++;
  if (buildCounterDataPart < 3) {
    checkUnnamed24(o.data!);
  }
  buildCounterDataPart--;
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

core.int buildCounterFilePart = 0;
api.FilePart buildFilePart() {
  final o = api.FilePart();
  buildCounterFilePart++;
  if (buildCounterFilePart < 3) {
    o.fileWithBytes = 'foo';
    o.fileWithUri = 'foo';
    o.mimeType = 'foo';
    o.name = 'foo';
  }
  buildCounterFilePart--;
  return o;
}

void checkFilePart(api.FilePart o) {
  buildCounterFilePart++;
  if (buildCounterFilePart < 3) {
    unittest.expect(o.fileWithBytes!, unittest.equals('foo'));
    unittest.expect(o.fileWithUri!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterFilePart--;
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGeoTaxonomy = 0;
api.GeoTaxonomy buildGeoTaxonomy() {
  final o = api.GeoTaxonomy();
  buildCounterGeoTaxonomy++;
  if (buildCounterGeoTaxonomy < 3) {
    o.regions = buildUnnamed25();
    o.type = 'foo';
  }
  buildCounterGeoTaxonomy--;
  return o;
}

void checkGeoTaxonomy(api.GeoTaxonomy o) {
  buildCounterGeoTaxonomy++;
  if (buildCounterGeoTaxonomy < 3) {
    checkUnnamed25(o.regions!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGeoTaxonomy--;
}

core.int buildCounterHTTPAuthSecurityScheme = 0;
api.HTTPAuthSecurityScheme buildHTTPAuthSecurityScheme() {
  final o = api.HTTPAuthSecurityScheme();
  buildCounterHTTPAuthSecurityScheme++;
  if (buildCounterHTTPAuthSecurityScheme < 3) {
    o.bearerFormat = 'foo';
    o.description = 'foo';
    o.scheme = 'foo';
  }
  buildCounterHTTPAuthSecurityScheme--;
  return o;
}

void checkHTTPAuthSecurityScheme(api.HTTPAuthSecurityScheme o) {
  buildCounterHTTPAuthSecurityScheme++;
  if (buildCounterHTTPAuthSecurityScheme < 3) {
    unittest.expect(o.bearerFormat!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.scheme!, unittest.equals('foo'));
  }
  buildCounterHTTPAuthSecurityScheme--;
}

core.Map<core.String, core.String> buildUnnamed26() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed26(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterImplicitOAuthFlow = 0;
api.ImplicitOAuthFlow buildImplicitOAuthFlow() {
  final o = api.ImplicitOAuthFlow();
  buildCounterImplicitOAuthFlow++;
  if (buildCounterImplicitOAuthFlow < 3) {
    o.authorizationUrl = 'foo';
    o.refreshUrl = 'foo';
    o.scopes = buildUnnamed26();
  }
  buildCounterImplicitOAuthFlow--;
  return o;
}

void checkImplicitOAuthFlow(api.ImplicitOAuthFlow o) {
  buildCounterImplicitOAuthFlow++;
  if (buildCounterImplicitOAuthFlow < 3) {
    unittest.expect(o.authorizationUrl!, unittest.equals('foo'));
    unittest.expect(o.refreshUrl!, unittest.equals('foo'));
    checkUnnamed26(o.scopes!);
  }
  buildCounterImplicitOAuthFlow--;
}

core.List<api.BillingAccount> buildUnnamed27() => [
  buildBillingAccount(),
  buildBillingAccount(),
];

void checkUnnamed27(core.List<api.BillingAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingAccount(o[0]);
  checkBillingAccount(o[1]);
}

core.int buildCounterListBillingAccountsResponse = 0;
api.ListBillingAccountsResponse buildListBillingAccountsResponse() {
  final o = api.ListBillingAccountsResponse();
  buildCounterListBillingAccountsResponse++;
  if (buildCounterListBillingAccountsResponse < 3) {
    o.billingAccounts = buildUnnamed27();
    o.nextPageToken = 'foo';
  }
  buildCounterListBillingAccountsResponse--;
  return o;
}

void checkListBillingAccountsResponse(api.ListBillingAccountsResponse o) {
  buildCounterListBillingAccountsResponse++;
  if (buildCounterListBillingAccountsResponse < 3) {
    checkUnnamed27(o.billingAccounts!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListBillingAccountsResponse--;
}

core.List<api.ProjectBillingInfo> buildUnnamed28() => [
  buildProjectBillingInfo(),
  buildProjectBillingInfo(),
];

void checkUnnamed28(core.List<api.ProjectBillingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProjectBillingInfo(o[0]);
  checkProjectBillingInfo(o[1]);
}

core.int buildCounterListProjectBillingInfoResponse = 0;
api.ListProjectBillingInfoResponse buildListProjectBillingInfoResponse() {
  final o = api.ListProjectBillingInfoResponse();
  buildCounterListProjectBillingInfoResponse++;
  if (buildCounterListProjectBillingInfoResponse < 3) {
    o.nextPageToken = 'foo';
    o.projectBillingInfo = buildUnnamed28();
  }
  buildCounterListProjectBillingInfoResponse--;
  return o;
}

void checkListProjectBillingInfoResponse(api.ListProjectBillingInfoResponse o) {
  buildCounterListProjectBillingInfoResponse++;
  if (buildCounterListProjectBillingInfoResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed28(o.projectBillingInfo!);
  }
  buildCounterListProjectBillingInfoResponse--;
}

core.List<api.Service> buildUnnamed29() => [buildService(), buildService()];

void checkUnnamed29(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.int buildCounterListServicesResponse = 0;
api.ListServicesResponse buildListServicesResponse() {
  final o = api.ListServicesResponse();
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    o.nextPageToken = 'foo';
    o.services = buildUnnamed29();
  }
  buildCounterListServicesResponse--;
  return o;
}

void checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed29(o.services!);
  }
  buildCounterListServicesResponse--;
}

core.List<api.Sku> buildUnnamed30() => [buildSku(), buildSku()];

void checkUnnamed30(core.List<api.Sku> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSku(o[0]);
  checkSku(o[1]);
}

core.int buildCounterListSkusResponse = 0;
api.ListSkusResponse buildListSkusResponse() {
  final o = api.ListSkusResponse();
  buildCounterListSkusResponse++;
  if (buildCounterListSkusResponse < 3) {
    o.nextPageToken = 'foo';
    o.skus = buildUnnamed30();
  }
  buildCounterListSkusResponse--;
  return o;
}

void checkListSkusResponse(api.ListSkusResponse o) {
  buildCounterListSkusResponse++;
  if (buildCounterListSkusResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed30(o.skus!);
  }
  buildCounterListSkusResponse--;
}

core.List<api.TaskPushNotificationConfig> buildUnnamed31() => [
  buildTaskPushNotificationConfig(),
  buildTaskPushNotificationConfig(),
];

void checkUnnamed31(core.List<api.TaskPushNotificationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTaskPushNotificationConfig(o[0]);
  checkTaskPushNotificationConfig(o[1]);
}

core.int buildCounterListTaskPushNotificationConfigResponse = 0;
api.ListTaskPushNotificationConfigResponse
buildListTaskPushNotificationConfigResponse() {
  final o = api.ListTaskPushNotificationConfigResponse();
  buildCounterListTaskPushNotificationConfigResponse++;
  if (buildCounterListTaskPushNotificationConfigResponse < 3) {
    o.configs = buildUnnamed31();
    o.nextPageToken = 'foo';
  }
  buildCounterListTaskPushNotificationConfigResponse--;
  return o;
}

void checkListTaskPushNotificationConfigResponse(
  api.ListTaskPushNotificationConfigResponse o,
) {
  buildCounterListTaskPushNotificationConfigResponse++;
  if (buildCounterListTaskPushNotificationConfigResponse < 3) {
    checkUnnamed31(o.configs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListTaskPushNotificationConfigResponse--;
}

core.List<api.Part> buildUnnamed32() => [buildPart(), buildPart()];

void checkUnnamed32(core.List<api.Part> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPart(o[0]);
  checkPart(o[1]);
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed34() => {
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

void checkUnnamed34(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.int buildCounterMessage = 0;
api.Message buildMessage() {
  final o = api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.content = buildUnnamed32();
    o.contextId = 'foo';
    o.extensions = buildUnnamed33();
    o.messageId = 'foo';
    o.metadata = buildUnnamed34();
    o.role = 'foo';
    o.taskId = 'foo';
  }
  buildCounterMessage--;
  return o;
}

void checkMessage(api.Message o) {
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    checkUnnamed32(o.content!);
    unittest.expect(o.contextId!, unittest.equals('foo'));
    checkUnnamed33(o.extensions!);
    unittest.expect(o.messageId!, unittest.equals('foo'));
    checkUnnamed34(o.metadata!);
    unittest.expect(o.role!, unittest.equals('foo'));
    unittest.expect(o.taskId!, unittest.equals('foo'));
  }
  buildCounterMessage--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  final o = api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterMoney--;
  return o;
}

void checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.units!, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

core.int buildCounterMoveBillingAccountRequest = 0;
api.MoveBillingAccountRequest buildMoveBillingAccountRequest() {
  final o = api.MoveBillingAccountRequest();
  buildCounterMoveBillingAccountRequest++;
  if (buildCounterMoveBillingAccountRequest < 3) {
    o.destinationParent = 'foo';
  }
  buildCounterMoveBillingAccountRequest--;
  return o;
}

void checkMoveBillingAccountRequest(api.MoveBillingAccountRequest o) {
  buildCounterMoveBillingAccountRequest++;
  if (buildCounterMoveBillingAccountRequest < 3) {
    unittest.expect(o.destinationParent!, unittest.equals('foo'));
  }
  buildCounterMoveBillingAccountRequest--;
}

core.int buildCounterMutualTlsSecurityScheme = 0;
api.MutualTlsSecurityScheme buildMutualTlsSecurityScheme() {
  final o = api.MutualTlsSecurityScheme();
  buildCounterMutualTlsSecurityScheme++;
  if (buildCounterMutualTlsSecurityScheme < 3) {
    o.description = 'foo';
  }
  buildCounterMutualTlsSecurityScheme--;
  return o;
}

void checkMutualTlsSecurityScheme(api.MutualTlsSecurityScheme o) {
  buildCounterMutualTlsSecurityScheme++;
  if (buildCounterMutualTlsSecurityScheme < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
  }
  buildCounterMutualTlsSecurityScheme--;
}

core.int buildCounterOAuth2SecurityScheme = 0;
api.OAuth2SecurityScheme buildOAuth2SecurityScheme() {
  final o = api.OAuth2SecurityScheme();
  buildCounterOAuth2SecurityScheme++;
  if (buildCounterOAuth2SecurityScheme < 3) {
    o.description = 'foo';
    o.flows = buildOAuthFlows();
    o.oauth2MetadataUrl = 'foo';
  }
  buildCounterOAuth2SecurityScheme--;
  return o;
}

void checkOAuth2SecurityScheme(api.OAuth2SecurityScheme o) {
  buildCounterOAuth2SecurityScheme++;
  if (buildCounterOAuth2SecurityScheme < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkOAuthFlows(o.flows!);
    unittest.expect(o.oauth2MetadataUrl!, unittest.equals('foo'));
  }
  buildCounterOAuth2SecurityScheme--;
}

core.int buildCounterOAuthFlows = 0;
api.OAuthFlows buildOAuthFlows() {
  final o = api.OAuthFlows();
  buildCounterOAuthFlows++;
  if (buildCounterOAuthFlows < 3) {
    o.authorizationCode = buildAuthorizationCodeOAuthFlow();
    o.clientCredentials = buildClientCredentialsOAuthFlow();
    o.implicit = buildImplicitOAuthFlow();
    o.password = buildPasswordOAuthFlow();
  }
  buildCounterOAuthFlows--;
  return o;
}

void checkOAuthFlows(api.OAuthFlows o) {
  buildCounterOAuthFlows++;
  if (buildCounterOAuthFlows < 3) {
    checkAuthorizationCodeOAuthFlow(o.authorizationCode!);
    checkClientCredentialsOAuthFlow(o.clientCredentials!);
    checkImplicitOAuthFlow(o.implicit!);
    checkPasswordOAuthFlow(o.password!);
  }
  buildCounterOAuthFlows--;
}

core.int buildCounterOpenIdConnectSecurityScheme = 0;
api.OpenIdConnectSecurityScheme buildOpenIdConnectSecurityScheme() {
  final o = api.OpenIdConnectSecurityScheme();
  buildCounterOpenIdConnectSecurityScheme++;
  if (buildCounterOpenIdConnectSecurityScheme < 3) {
    o.description = 'foo';
    o.openIdConnectUrl = 'foo';
  }
  buildCounterOpenIdConnectSecurityScheme--;
  return o;
}

void checkOpenIdConnectSecurityScheme(api.OpenIdConnectSecurityScheme o) {
  buildCounterOpenIdConnectSecurityScheme++;
  if (buildCounterOpenIdConnectSecurityScheme < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.openIdConnectUrl!, unittest.equals('foo'));
  }
  buildCounterOpenIdConnectSecurityScheme--;
}

core.Map<core.String, core.Object?> buildUnnamed35() => {
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

void checkUnnamed35(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted11['bool'], unittest.equals(true));
  unittest.expect(casted11['string'], unittest.equals('foo'));
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted12['bool'], unittest.equals(true));
  unittest.expect(casted12['string'], unittest.equals('foo'));
}

core.int buildCounterPart = 0;
api.Part buildPart() {
  final o = api.Part();
  buildCounterPart++;
  if (buildCounterPart < 3) {
    o.data = buildDataPart();
    o.file = buildFilePart();
    o.metadata = buildUnnamed35();
    o.text = 'foo';
  }
  buildCounterPart--;
  return o;
}

void checkPart(api.Part o) {
  buildCounterPart++;
  if (buildCounterPart < 3) {
    checkDataPart(o.data!);
    checkFilePart(o.file!);
    checkUnnamed35(o.metadata!);
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterPart--;
}

core.Map<core.String, core.String> buildUnnamed36() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed36(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterPasswordOAuthFlow = 0;
api.PasswordOAuthFlow buildPasswordOAuthFlow() {
  final o = api.PasswordOAuthFlow();
  buildCounterPasswordOAuthFlow++;
  if (buildCounterPasswordOAuthFlow < 3) {
    o.refreshUrl = 'foo';
    o.scopes = buildUnnamed36();
    o.tokenUrl = 'foo';
  }
  buildCounterPasswordOAuthFlow--;
  return o;
}

void checkPasswordOAuthFlow(api.PasswordOAuthFlow o) {
  buildCounterPasswordOAuthFlow++;
  if (buildCounterPasswordOAuthFlow < 3) {
    unittest.expect(o.refreshUrl!, unittest.equals('foo'));
    checkUnnamed36(o.scopes!);
    unittest.expect(o.tokenUrl!, unittest.equals('foo'));
  }
  buildCounterPasswordOAuthFlow--;
}

core.List<api.AuditConfig> buildUnnamed37() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed37(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed38() => [buildBinding(), buildBinding()];

void checkUnnamed38(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed37();
    o.bindings = buildUnnamed38();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed37(o.auditConfigs!);
    checkUnnamed38(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.List<api.TierRate> buildUnnamed39() => [buildTierRate(), buildTierRate()];

void checkUnnamed39(core.List<api.TierRate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTierRate(o[0]);
  checkTierRate(o[1]);
}

core.int buildCounterPricingExpression = 0;
api.PricingExpression buildPricingExpression() {
  final o = api.PricingExpression();
  buildCounterPricingExpression++;
  if (buildCounterPricingExpression < 3) {
    o.baseUnit = 'foo';
    o.baseUnitConversionFactor = 42.0;
    o.baseUnitDescription = 'foo';
    o.displayQuantity = 42.0;
    o.tieredRates = buildUnnamed39();
    o.usageUnit = 'foo';
    o.usageUnitDescription = 'foo';
  }
  buildCounterPricingExpression--;
  return o;
}

void checkPricingExpression(api.PricingExpression o) {
  buildCounterPricingExpression++;
  if (buildCounterPricingExpression < 3) {
    unittest.expect(o.baseUnit!, unittest.equals('foo'));
    unittest.expect(o.baseUnitConversionFactor!, unittest.equals(42.0));
    unittest.expect(o.baseUnitDescription!, unittest.equals('foo'));
    unittest.expect(o.displayQuantity!, unittest.equals(42.0));
    checkUnnamed39(o.tieredRates!);
    unittest.expect(o.usageUnit!, unittest.equals('foo'));
    unittest.expect(o.usageUnitDescription!, unittest.equals('foo'));
  }
  buildCounterPricingExpression--;
}

core.int buildCounterPricingInfo = 0;
api.PricingInfo buildPricingInfo() {
  final o = api.PricingInfo();
  buildCounterPricingInfo++;
  if (buildCounterPricingInfo < 3) {
    o.aggregationInfo = buildAggregationInfo();
    o.currencyConversionRate = 42.0;
    o.effectiveTime = 'foo';
    o.pricingExpression = buildPricingExpression();
    o.summary = 'foo';
  }
  buildCounterPricingInfo--;
  return o;
}

void checkPricingInfo(api.PricingInfo o) {
  buildCounterPricingInfo++;
  if (buildCounterPricingInfo < 3) {
    checkAggregationInfo(o.aggregationInfo!);
    unittest.expect(o.currencyConversionRate!, unittest.equals(42.0));
    unittest.expect(o.effectiveTime!, unittest.equals('foo'));
    checkPricingExpression(o.pricingExpression!);
    unittest.expect(o.summary!, unittest.equals('foo'));
  }
  buildCounterPricingInfo--;
}

core.int buildCounterProjectBillingInfo = 0;
api.ProjectBillingInfo buildProjectBillingInfo() {
  final o = api.ProjectBillingInfo();
  buildCounterProjectBillingInfo++;
  if (buildCounterProjectBillingInfo < 3) {
    o.billingAccountName = 'foo';
    o.billingEnabled = true;
    o.name = 'foo';
    o.projectId = 'foo';
  }
  buildCounterProjectBillingInfo--;
  return o;
}

void checkProjectBillingInfo(api.ProjectBillingInfo o) {
  buildCounterProjectBillingInfo++;
  if (buildCounterProjectBillingInfo < 3) {
    unittest.expect(o.billingAccountName!, unittest.equals('foo'));
    unittest.expect(o.billingEnabled!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
  }
  buildCounterProjectBillingInfo--;
}

core.int buildCounterPushNotificationConfig = 0;
api.PushNotificationConfig buildPushNotificationConfig() {
  final o = api.PushNotificationConfig();
  buildCounterPushNotificationConfig++;
  if (buildCounterPushNotificationConfig < 3) {
    o.authentication = buildAuthenticationInfo();
    o.id = 'foo';
    o.token = 'foo';
    o.url = 'foo';
  }
  buildCounterPushNotificationConfig--;
  return o;
}

void checkPushNotificationConfig(api.PushNotificationConfig o) {
  buildCounterPushNotificationConfig++;
  if (buildCounterPushNotificationConfig < 3) {
    checkAuthenticationInfo(o.authentication!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.token!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterPushNotificationConfig--;
}

core.Map<core.String, api.StringList> buildUnnamed40() => {
  'x': buildStringList(),
  'y': buildStringList(),
};

void checkUnnamed40(core.Map<core.String, api.StringList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStringList(o['x']!);
  checkStringList(o['y']!);
}

core.int buildCounterSecurity = 0;
api.Security buildSecurity() {
  final o = api.Security();
  buildCounterSecurity++;
  if (buildCounterSecurity < 3) {
    o.schemes = buildUnnamed40();
  }
  buildCounterSecurity--;
  return o;
}

void checkSecurity(api.Security o) {
  buildCounterSecurity++;
  if (buildCounterSecurity < 3) {
    checkUnnamed40(o.schemes!);
  }
  buildCounterSecurity--;
}

core.int buildCounterSecurityScheme = 0;
api.SecurityScheme buildSecurityScheme() {
  final o = api.SecurityScheme();
  buildCounterSecurityScheme++;
  if (buildCounterSecurityScheme < 3) {
    o.apiKeySecurityScheme = buildAPIKeySecurityScheme();
    o.httpAuthSecurityScheme = buildHTTPAuthSecurityScheme();
    o.mtlsSecurityScheme = buildMutualTlsSecurityScheme();
    o.oauth2SecurityScheme = buildOAuth2SecurityScheme();
    o.openIdConnectSecurityScheme = buildOpenIdConnectSecurityScheme();
  }
  buildCounterSecurityScheme--;
  return o;
}

void checkSecurityScheme(api.SecurityScheme o) {
  buildCounterSecurityScheme++;
  if (buildCounterSecurityScheme < 3) {
    checkAPIKeySecurityScheme(o.apiKeySecurityScheme!);
    checkHTTPAuthSecurityScheme(o.httpAuthSecurityScheme!);
    checkMutualTlsSecurityScheme(o.mtlsSecurityScheme!);
    checkOAuth2SecurityScheme(o.oauth2SecurityScheme!);
    checkOpenIdConnectSecurityScheme(o.openIdConnectSecurityScheme!);
  }
  buildCounterSecurityScheme--;
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSendMessageConfiguration = 0;
api.SendMessageConfiguration buildSendMessageConfiguration() {
  final o = api.SendMessageConfiguration();
  buildCounterSendMessageConfiguration++;
  if (buildCounterSendMessageConfiguration < 3) {
    o.acceptedOutputModes = buildUnnamed41();
    o.blocking = true;
    o.historyLength = 42;
    o.pushNotification = buildPushNotificationConfig();
  }
  buildCounterSendMessageConfiguration--;
  return o;
}

void checkSendMessageConfiguration(api.SendMessageConfiguration o) {
  buildCounterSendMessageConfiguration++;
  if (buildCounterSendMessageConfiguration < 3) {
    checkUnnamed41(o.acceptedOutputModes!);
    unittest.expect(o.blocking!, unittest.isTrue);
    unittest.expect(o.historyLength!, unittest.equals(42));
    checkPushNotificationConfig(o.pushNotification!);
  }
  buildCounterSendMessageConfiguration--;
}

core.Map<core.String, core.Object?> buildUnnamed42() => {
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

void checkUnnamed42(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted13['bool'], unittest.equals(true));
  unittest.expect(casted13['string'], unittest.equals('foo'));
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted14['bool'], unittest.equals(true));
  unittest.expect(casted14['string'], unittest.equals('foo'));
}

core.int buildCounterSendMessageRequest = 0;
api.SendMessageRequest buildSendMessageRequest() {
  final o = api.SendMessageRequest();
  buildCounterSendMessageRequest++;
  if (buildCounterSendMessageRequest < 3) {
    o.configuration = buildSendMessageConfiguration();
    o.message = buildMessage();
    o.metadata = buildUnnamed42();
    o.tenant = 'foo';
  }
  buildCounterSendMessageRequest--;
  return o;
}

void checkSendMessageRequest(api.SendMessageRequest o) {
  buildCounterSendMessageRequest++;
  if (buildCounterSendMessageRequest < 3) {
    checkSendMessageConfiguration(o.configuration!);
    checkMessage(o.message!);
    checkUnnamed42(o.metadata!);
    unittest.expect(o.tenant!, unittest.equals('foo'));
  }
  buildCounterSendMessageRequest--;
}

core.int buildCounterSendMessageResponse = 0;
api.SendMessageResponse buildSendMessageResponse() {
  final o = api.SendMessageResponse();
  buildCounterSendMessageResponse++;
  if (buildCounterSendMessageResponse < 3) {
    o.message = buildMessage();
    o.task = buildTask();
  }
  buildCounterSendMessageResponse--;
  return o;
}

void checkSendMessageResponse(api.SendMessageResponse o) {
  buildCounterSendMessageResponse++;
  if (buildCounterSendMessageResponse < 3) {
    checkMessage(o.message!);
    checkTask(o.task!);
  }
  buildCounterSendMessageResponse--;
}

core.int buildCounterService = 0;
api.Service buildService() {
  final o = api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.businessEntityName = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.serviceId = 'foo';
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    unittest.expect(o.businessEntityName!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.serviceId!, unittest.equals('foo'));
  }
  buildCounterService--;
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

core.List<api.PricingInfo> buildUnnamed43() => [
  buildPricingInfo(),
  buildPricingInfo(),
];

void checkUnnamed43(core.List<api.PricingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricingInfo(o[0]);
  checkPricingInfo(o[1]);
}

core.List<core.String> buildUnnamed44() => ['foo', 'foo'];

void checkUnnamed44(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSku = 0;
api.Sku buildSku() {
  final o = api.Sku();
  buildCounterSku++;
  if (buildCounterSku < 3) {
    o.category = buildCategory();
    o.description = 'foo';
    o.geoTaxonomy = buildGeoTaxonomy();
    o.name = 'foo';
    o.pricingInfo = buildUnnamed43();
    o.serviceProviderName = 'foo';
    o.serviceRegions = buildUnnamed44();
    o.skuId = 'foo';
  }
  buildCounterSku--;
  return o;
}

void checkSku(api.Sku o) {
  buildCounterSku++;
  if (buildCounterSku < 3) {
    checkCategory(o.category!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkGeoTaxonomy(o.geoTaxonomy!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed43(o.pricingInfo!);
    unittest.expect(o.serviceProviderName!, unittest.equals('foo'));
    checkUnnamed44(o.serviceRegions!);
    unittest.expect(o.skuId!, unittest.equals('foo'));
  }
  buildCounterSku--;
}

core.int buildCounterStreamResponse = 0;
api.StreamResponse buildStreamResponse() {
  final o = api.StreamResponse();
  buildCounterStreamResponse++;
  if (buildCounterStreamResponse < 3) {
    o.artifactUpdate = buildTaskArtifactUpdateEvent();
    o.message = buildMessage();
    o.statusUpdate = buildTaskStatusUpdateEvent();
    o.task = buildTask();
  }
  buildCounterStreamResponse--;
  return o;
}

void checkStreamResponse(api.StreamResponse o) {
  buildCounterStreamResponse++;
  if (buildCounterStreamResponse < 3) {
    checkTaskArtifactUpdateEvent(o.artifactUpdate!);
    checkMessage(o.message!);
    checkTaskStatusUpdateEvent(o.statusUpdate!);
    checkTask(o.task!);
  }
  buildCounterStreamResponse--;
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringList = 0;
api.StringList buildStringList() {
  final o = api.StringList();
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    o.list = buildUnnamed45();
  }
  buildCounterStringList--;
  return o;
}

void checkStringList(api.StringList o) {
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    checkUnnamed45(o.list!);
  }
  buildCounterStringList--;
}

core.List<api.Artifact> buildUnnamed46() => [buildArtifact(), buildArtifact()];

void checkUnnamed46(core.List<api.Artifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifact(o[0]);
  checkArtifact(o[1]);
}

core.List<api.Message> buildUnnamed47() => [buildMessage(), buildMessage()];

void checkUnnamed47(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed48() => {
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

void checkUnnamed48(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o['x']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted15['bool'], unittest.equals(true));
  unittest.expect(casted15['string'], unittest.equals('foo'));
  var casted16 = (o['y']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted16['bool'], unittest.equals(true));
  unittest.expect(casted16['string'], unittest.equals('foo'));
}

core.int buildCounterTask = 0;
api.Task buildTask() {
  final o = api.Task();
  buildCounterTask++;
  if (buildCounterTask < 3) {
    o.artifacts = buildUnnamed46();
    o.contextId = 'foo';
    o.history = buildUnnamed47();
    o.id = 'foo';
    o.metadata = buildUnnamed48();
    o.status = buildTaskStatus();
  }
  buildCounterTask--;
  return o;
}

void checkTask(api.Task o) {
  buildCounterTask++;
  if (buildCounterTask < 3) {
    checkUnnamed46(o.artifacts!);
    unittest.expect(o.contextId!, unittest.equals('foo'));
    checkUnnamed47(o.history!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed48(o.metadata!);
    checkTaskStatus(o.status!);
  }
  buildCounterTask--;
}

core.Map<core.String, core.Object?> buildUnnamed49() => {
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

void checkUnnamed49(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o['x']!) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(casted17['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted17['bool'], unittest.equals(true));
  unittest.expect(casted17['string'], unittest.equals('foo'));
  var casted18 = (o['y']!) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(casted18['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted18['bool'], unittest.equals(true));
  unittest.expect(casted18['string'], unittest.equals('foo'));
}

core.int buildCounterTaskArtifactUpdateEvent = 0;
api.TaskArtifactUpdateEvent buildTaskArtifactUpdateEvent() {
  final o = api.TaskArtifactUpdateEvent();
  buildCounterTaskArtifactUpdateEvent++;
  if (buildCounterTaskArtifactUpdateEvent < 3) {
    o.append = true;
    o.artifact = buildArtifact();
    o.contextId = 'foo';
    o.lastChunk = true;
    o.metadata = buildUnnamed49();
    o.taskId = 'foo';
  }
  buildCounterTaskArtifactUpdateEvent--;
  return o;
}

void checkTaskArtifactUpdateEvent(api.TaskArtifactUpdateEvent o) {
  buildCounterTaskArtifactUpdateEvent++;
  if (buildCounterTaskArtifactUpdateEvent < 3) {
    unittest.expect(o.append!, unittest.isTrue);
    checkArtifact(o.artifact!);
    unittest.expect(o.contextId!, unittest.equals('foo'));
    unittest.expect(o.lastChunk!, unittest.isTrue);
    checkUnnamed49(o.metadata!);
    unittest.expect(o.taskId!, unittest.equals('foo'));
  }
  buildCounterTaskArtifactUpdateEvent--;
}

core.int buildCounterTaskPushNotificationConfig = 0;
api.TaskPushNotificationConfig buildTaskPushNotificationConfig() {
  final o = api.TaskPushNotificationConfig();
  buildCounterTaskPushNotificationConfig++;
  if (buildCounterTaskPushNotificationConfig < 3) {
    o.name = 'foo';
    o.pushNotificationConfig = buildPushNotificationConfig();
  }
  buildCounterTaskPushNotificationConfig--;
  return o;
}

void checkTaskPushNotificationConfig(api.TaskPushNotificationConfig o) {
  buildCounterTaskPushNotificationConfig++;
  if (buildCounterTaskPushNotificationConfig < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPushNotificationConfig(o.pushNotificationConfig!);
  }
  buildCounterTaskPushNotificationConfig--;
}

core.int buildCounterTaskStatus = 0;
api.TaskStatus buildTaskStatus() {
  final o = api.TaskStatus();
  buildCounterTaskStatus++;
  if (buildCounterTaskStatus < 3) {
    o.message = buildMessage();
    o.state = 'foo';
    o.timestamp = 'foo';
  }
  buildCounterTaskStatus--;
  return o;
}

void checkTaskStatus(api.TaskStatus o) {
  buildCounterTaskStatus++;
  if (buildCounterTaskStatus < 3) {
    checkMessage(o.message!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.timestamp!, unittest.equals('foo'));
  }
  buildCounterTaskStatus--;
}

core.Map<core.String, core.Object?> buildUnnamed50() => {
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

void checkUnnamed50(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o['x']!) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(casted19['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted19['bool'], unittest.equals(true));
  unittest.expect(casted19['string'], unittest.equals('foo'));
  var casted20 = (o['y']!) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(casted20['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted20['bool'], unittest.equals(true));
  unittest.expect(casted20['string'], unittest.equals('foo'));
}

core.int buildCounterTaskStatusUpdateEvent = 0;
api.TaskStatusUpdateEvent buildTaskStatusUpdateEvent() {
  final o = api.TaskStatusUpdateEvent();
  buildCounterTaskStatusUpdateEvent++;
  if (buildCounterTaskStatusUpdateEvent < 3) {
    o.contextId = 'foo';
    o.final_ = true;
    o.metadata = buildUnnamed50();
    o.status = buildTaskStatus();
    o.taskId = 'foo';
  }
  buildCounterTaskStatusUpdateEvent--;
  return o;
}

void checkTaskStatusUpdateEvent(api.TaskStatusUpdateEvent o) {
  buildCounterTaskStatusUpdateEvent++;
  if (buildCounterTaskStatusUpdateEvent < 3) {
    unittest.expect(o.contextId!, unittest.equals('foo'));
    unittest.expect(o.final_!, unittest.isTrue);
    checkUnnamed50(o.metadata!);
    checkTaskStatus(o.status!);
    unittest.expect(o.taskId!, unittest.equals('foo'));
  }
  buildCounterTaskStatusUpdateEvent--;
}

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed51();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed51(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed52() => ['foo', 'foo'];

void checkUnnamed52(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed52();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed52(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTierRate = 0;
api.TierRate buildTierRate() {
  final o = api.TierRate();
  buildCounterTierRate++;
  if (buildCounterTierRate < 3) {
    o.startUsageAmount = 42.0;
    o.unitPrice = buildMoney();
  }
  buildCounterTierRate--;
  return o;
}

void checkTierRate(api.TierRate o) {
  buildCounterTierRate++;
  if (buildCounterTierRate < 3) {
    unittest.expect(o.startUsageAmount!, unittest.equals(42.0));
    checkMoney(o.unitPrice!);
  }
  buildCounterTierRate--;
}

void main() {
  unittest.group('obj-schema-APIKeySecurityScheme', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAPIKeySecurityScheme();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.APIKeySecurityScheme.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAPIKeySecurityScheme(od);
    });
  });

  unittest.group('obj-schema-AgentCapabilities', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentCapabilities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentCapabilities.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentCapabilities(od);
    });
  });

  unittest.group('obj-schema-AgentCard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentCard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentCard.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentCard(od);
    });
  });

  unittest.group('obj-schema-AgentCardSignature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentCardSignature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentCardSignature.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentCardSignature(od);
    });
  });

  unittest.group('obj-schema-AgentExtension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentExtension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentExtension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentExtension(od);
    });
  });

  unittest.group('obj-schema-AgentInterface', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentInterface();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentInterface.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentInterface(od);
    });
  });

  unittest.group('obj-schema-AgentProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentProvider.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentProvider(od);
    });
  });

  unittest.group('obj-schema-AgentSkill', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentSkill();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentSkill.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentSkill(od);
    });
  });

  unittest.group('obj-schema-AggregationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregationInfo(od);
    });
  });

  unittest.group('obj-schema-Artifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Artifact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkArtifact(od);
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

  unittest.group('obj-schema-AuthenticationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthenticationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthenticationInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthenticationInfo(od);
    });
  });

  unittest.group('obj-schema-AuthorizationCodeOAuthFlow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorizationCodeOAuthFlow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorizationCodeOAuthFlow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthorizationCodeOAuthFlow(od);
    });
  });

  unittest.group('obj-schema-BillingAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBillingAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BillingAccount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBillingAccount(od);
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

  unittest.group('obj-schema-CancelTaskRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelTaskRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelTaskRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelTaskRequest(od);
    });
  });

  unittest.group('obj-schema-Category', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCategory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Category.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCategory(od);
    });
  });

  unittest.group('obj-schema-ClientCredentialsOAuthFlow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientCredentialsOAuthFlow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientCredentialsOAuthFlow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClientCredentialsOAuthFlow(od);
    });
  });

  unittest.group('obj-schema-DataPart', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataPart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataPart.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataPart(od);
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

  unittest.group('obj-schema-FilePart', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilePart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilePart.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFilePart(od);
    });
  });

  unittest.group('obj-schema-GeoTaxonomy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeoTaxonomy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeoTaxonomy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGeoTaxonomy(od);
    });
  });

  unittest.group('obj-schema-HTTPAuthSecurityScheme', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHTTPAuthSecurityScheme();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HTTPAuthSecurityScheme.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHTTPAuthSecurityScheme(od);
    });
  });

  unittest.group('obj-schema-ImplicitOAuthFlow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImplicitOAuthFlow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImplicitOAuthFlow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImplicitOAuthFlow(od);
    });
  });

  unittest.group('obj-schema-ListBillingAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBillingAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBillingAccountsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListBillingAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-ListProjectBillingInfoResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProjectBillingInfoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProjectBillingInfoResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListProjectBillingInfoResponse(od);
    });
  });

  unittest.group('obj-schema-ListServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServicesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListServicesResponse(od);
    });
  });

  unittest.group('obj-schema-ListSkusResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSkusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSkusResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSkusResponse(od);
    });
  });

  unittest.group('obj-schema-ListTaskPushNotificationConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTaskPushNotificationConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTaskPushNotificationConfigResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTaskPushNotificationConfigResponse(od);
    });
  });

  unittest.group('obj-schema-Message', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Message.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMessage(od);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Money.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMoney(od);
    });
  });

  unittest.group('obj-schema-MoveBillingAccountRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoveBillingAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MoveBillingAccountRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMoveBillingAccountRequest(od);
    });
  });

  unittest.group('obj-schema-MutualTlsSecurityScheme', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMutualTlsSecurityScheme();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MutualTlsSecurityScheme.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMutualTlsSecurityScheme(od);
    });
  });

  unittest.group('obj-schema-OAuth2SecurityScheme', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOAuth2SecurityScheme();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OAuth2SecurityScheme.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOAuth2SecurityScheme(od);
    });
  });

  unittest.group('obj-schema-OAuthFlows', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOAuthFlows();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OAuthFlows.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOAuthFlows(od);
    });
  });

  unittest.group('obj-schema-OpenIdConnectSecurityScheme', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOpenIdConnectSecurityScheme();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OpenIdConnectSecurityScheme.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOpenIdConnectSecurityScheme(od);
    });
  });

  unittest.group('obj-schema-Part', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Part.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPart(od);
    });
  });

  unittest.group('obj-schema-PasswordOAuthFlow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPasswordOAuthFlow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PasswordOAuthFlow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPasswordOAuthFlow(od);
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

  unittest.group('obj-schema-PricingExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPricingExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PricingExpression.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPricingExpression(od);
    });
  });

  unittest.group('obj-schema-PricingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPricingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PricingInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPricingInfo(od);
    });
  });

  unittest.group('obj-schema-ProjectBillingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjectBillingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProjectBillingInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProjectBillingInfo(od);
    });
  });

  unittest.group('obj-schema-PushNotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPushNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PushNotificationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPushNotificationConfig(od);
    });
  });

  unittest.group('obj-schema-Security', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Security.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurity(od);
    });
  });

  unittest.group('obj-schema-SecurityScheme', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityScheme();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityScheme.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityScheme(od);
    });
  });

  unittest.group('obj-schema-SendMessageConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendMessageConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendMessageConfiguration.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSendMessageConfiguration(od);
    });
  });

  unittest.group('obj-schema-SendMessageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendMessageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendMessageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSendMessageRequest(od);
    });
  });

  unittest.group('obj-schema-SendMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSendMessageResponse(od);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () async {
      final o = buildService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Service.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkService(od);
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

  unittest.group('obj-schema-Sku', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSku();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Sku.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSku(od);
    });
  });

  unittest.group('obj-schema-StreamResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStreamResponse(od);
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

  unittest.group('obj-schema-Task', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Task.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTask(od);
    });
  });

  unittest.group('obj-schema-TaskArtifactUpdateEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskArtifactUpdateEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskArtifactUpdateEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTaskArtifactUpdateEvent(od);
    });
  });

  unittest.group('obj-schema-TaskPushNotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskPushNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskPushNotificationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTaskPushNotificationConfig(od);
    });
  });

  unittest.group('obj-schema-TaskStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTaskStatus(od);
    });
  });

  unittest.group('obj-schema-TaskStatusUpdateEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskStatusUpdateEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskStatusUpdateEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTaskStatusUpdateEvent(od);
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

  unittest.group('obj-schema-TierRate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTierRate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TierRate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTierRate(od);
    });
  });

  unittest.group('resource-BillingAccountsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts;
      final arg_request = buildBillingAccount();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BillingAccount.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBillingAccount(obj);

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
            unittest.equals('v1/billingAccounts'),
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildBillingAccount());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkBillingAccount(response as api.BillingAccount);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts;
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
          final resp = convert.json.encode(buildBillingAccount());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBillingAccount(response as api.BillingAccount);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts;
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
      final res = api.CloudbillingApi(mock).billingAccounts;
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('v1/billingAccounts'),
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListBillingAccountsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkListBillingAccountsResponse(
        response as api.ListBillingAccountsResponse,
      );
    });

    unittest.test('method--move', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts;
      final arg_request = buildMoveBillingAccountRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MoveBillingAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMoveBillingAccountRequest(obj);

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
          final resp = convert.json.encode(buildBillingAccount());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.move(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkBillingAccount(response as api.BillingAccount);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts;
      final arg_request = buildBillingAccount();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BillingAccount.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBillingAccount(obj);

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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildBillingAccount());
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
      checkBillingAccount(response as api.BillingAccount);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts;
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
      final res = api.CloudbillingApi(mock).billingAccounts;
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

  unittest.group('resource-BillingAccountsProjectsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts.projects;
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
          final resp = convert.json.encode(
            buildListProjectBillingInfoResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListProjectBillingInfoResponse(
        response as api.ListProjectBillingInfoResponse,
      );
    });
  });

  unittest.group('resource-BillingAccountsSubAccountsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts.subAccounts;
      final arg_request = buildBillingAccount();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BillingAccount.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBillingAccount(obj);

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
          final resp = convert.json.encode(buildBillingAccount());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkBillingAccount(response as api.BillingAccount);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts.subAccounts;
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
          final resp = convert.json.encode(buildListBillingAccountsResponse());
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
      checkListBillingAccountsResponse(
        response as api.ListBillingAccountsResponse,
      );
    });
  });

  unittest.group('resource-MessageResource', () {
    unittest.test('method--send', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).message;
      final arg_request = buildSendMessageRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SendMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSendMessageRequest(obj);

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
            unittest.equals('v1/message:send'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSendMessageResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.send(arg_request, $fields: arg_$fields);
      checkSendMessageResponse(response as api.SendMessageResponse);
    });

    unittest.test('method--stream', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).message;
      final arg_request = buildSendMessageRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SendMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSendMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 17),
            unittest.equals('v1/message:stream'),
          );
          pathOffset += 17;

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
          final resp = convert.json.encode(buildStreamResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.stream(arg_request, $fields: arg_$fields);
      checkStreamResponse(response as api.StreamResponse);
    });
  });

  unittest.group('resource-OrganizationsBillingAccountsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).organizations.billingAccounts;
      final arg_request = buildBillingAccount();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BillingAccount.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBillingAccount(obj);

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
          final resp = convert.json.encode(buildBillingAccount());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkBillingAccount(response as api.BillingAccount);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).organizations.billingAccounts;
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
          final resp = convert.json.encode(buildListBillingAccountsResponse());
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
      checkListBillingAccountsResponse(
        response as api.ListBillingAccountsResponse,
      );
    });

    unittest.test('method--move', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).organizations.billingAccounts;
      final arg_destinationParent = 'foo';
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
          final resp = convert.json.encode(buildBillingAccount());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.move(
        arg_destinationParent,
        arg_name,
        $fields: arg_$fields,
      );
      checkBillingAccount(response as api.BillingAccount);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--getBillingInfo', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).projects;
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
          final resp = convert.json.encode(buildProjectBillingInfo());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getBillingInfo(arg_name, $fields: arg_$fields);
      checkProjectBillingInfo(response as api.ProjectBillingInfo);
    });

    unittest.test('method--updateBillingInfo', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).projects;
      final arg_request = buildProjectBillingInfo();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ProjectBillingInfo.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkProjectBillingInfo(obj);

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
          final resp = convert.json.encode(buildProjectBillingInfo());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateBillingInfo(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkProjectBillingInfo(response as api.ProjectBillingInfo);
    });
  });

  unittest.group('resource-ServicesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).services;
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
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('v1/services'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(buildListServicesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListServicesResponse(response as api.ListServicesResponse);
    });
  });

  unittest.group('resource-ServicesSkusResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).services.skus;
      final arg_parent = 'foo';
      final arg_currencyCode = 'foo';
      final arg_endTime = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_startTime = 'foo';
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
            queryMap['currencyCode']!.first,
            unittest.equals(arg_currencyCode),
          );
          unittest.expect(
            queryMap['endTime']!.first,
            unittest.equals(arg_endTime),
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
            queryMap['startTime']!.first,
            unittest.equals(arg_startTime),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListSkusResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        currencyCode: arg_currencyCode,
        endTime: arg_endTime,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        startTime: arg_startTime,
        $fields: arg_$fields,
      );
      checkListSkusResponse(response as api.ListSkusResponse);
    });
  });

  unittest.group('resource-TasksResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).tasks;
      final arg_request = buildCancelTaskRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelTaskRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelTaskRequest(obj);

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
          final resp = convert.json.encode(buildTask());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkTask(response as api.Task);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).tasks;
      final arg_name = 'foo';
      final arg_historyLength = 42;
      final arg_tenant = 'foo';
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
            core.int.parse(queryMap['historyLength']!.first),
            unittest.equals(arg_historyLength),
          );
          unittest.expect(
            queryMap['tenant']!.first,
            unittest.equals(arg_tenant),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTask());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        historyLength: arg_historyLength,
        tenant: arg_tenant,
        $fields: arg_$fields,
      );
      checkTask(response as api.Task);
    });

    unittest.test('method--subscribe', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).tasks;
      final arg_name = 'foo';
      final arg_tenant = 'foo';
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
            queryMap['tenant']!.first,
            unittest.equals(arg_tenant),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildStreamResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.subscribe(
        arg_name,
        tenant: arg_tenant,
        $fields: arg_$fields,
      );
      checkStreamResponse(response as api.StreamResponse);
    });
  });

  unittest.group('resource-TasksPushNotificationConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).tasks.pushNotificationConfigs;
      final arg_request = buildTaskPushNotificationConfig();
      final arg_parent = 'foo';
      final arg_configId = 'foo';
      final arg_tenant = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TaskPushNotificationConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTaskPushNotificationConfig(obj);

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
            queryMap['configId']!.first,
            unittest.equals(arg_configId),
          );
          unittest.expect(
            queryMap['tenant']!.first,
            unittest.equals(arg_tenant),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTaskPushNotificationConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        configId: arg_configId,
        tenant: arg_tenant,
        $fields: arg_$fields,
      );
      checkTaskPushNotificationConfig(
        response as api.TaskPushNotificationConfig,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).tasks.pushNotificationConfigs;
      final arg_name = 'foo';
      final arg_tenant = 'foo';
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
            queryMap['tenant']!.first,
            unittest.equals(arg_tenant),
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
        tenant: arg_tenant,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).tasks.pushNotificationConfigs;
      final arg_name = 'foo';
      final arg_tenant = 'foo';
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
            queryMap['tenant']!.first,
            unittest.equals(arg_tenant),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTaskPushNotificationConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        tenant: arg_tenant,
        $fields: arg_$fields,
      );
      checkTaskPushNotificationConfig(
        response as api.TaskPushNotificationConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).tasks.pushNotificationConfigs;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_tenant = 'foo';
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
            queryMap['tenant']!.first,
            unittest.equals(arg_tenant),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListTaskPushNotificationConfigResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        tenant: arg_tenant,
        $fields: arg_$fields,
      );
      checkListTaskPushNotificationConfigResponse(
        response as api.ListTaskPushNotificationConfigResponse,
      );
    });
  });

  unittest.group('resource-V1Resource', () {
    unittest.test('method--getCard', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).v1;
      final arg_tenant = 'foo';
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
            unittest.equals('v1/card'),
          );
          pathOffset += 7;

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
            queryMap['tenant']!.first,
            unittest.equals(arg_tenant),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAgentCard());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getCard(
        tenant: arg_tenant,
        $fields: arg_$fields,
      );
      checkAgentCard(response as api.AgentCard);
    });
  });
}
