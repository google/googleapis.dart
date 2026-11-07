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

import 'package:googleapis/agentregistry/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterA2ASkill = 0;
api.A2ASkill buildA2ASkill() {
  final o = api.A2ASkill();
  buildCounterA2ASkill++;
  if (buildCounterA2ASkill < 3) {
    o.description = 'foo';
    o.examples = buildUnnamed0();
    o.id = 'foo';
    o.name = 'foo';
    o.tags = buildUnnamed1();
  }
  buildCounterA2ASkill--;
  return o;
}

void checkA2ASkill(api.A2ASkill o) {
  buildCounterA2ASkill++;
  if (buildCounterA2ASkill < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed0(o.examples!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed1(o.tags!);
  }
  buildCounterA2ASkill--;
}

core.Map<core.String, core.Object?> buildUnnamed2() => {
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

void checkUnnamed2(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed3() => {
  'x': buildUnnamed2(),
  'y': buildUnnamed2(),
};

void checkUnnamed3(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2(o['x']!);
  checkUnnamed2(o['y']!);
}

core.List<api.Protocol> buildUnnamed4() => [buildProtocol(), buildProtocol()];

void checkUnnamed4(core.List<api.Protocol> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProtocol(o[0]);
  checkProtocol(o[1]);
}

core.List<api.A2ASkill> buildUnnamed5() => [buildA2ASkill(), buildA2ASkill()];

void checkUnnamed5(core.List<api.A2ASkill> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkA2ASkill(o[0]);
  checkA2ASkill(o[1]);
}

core.int buildCounterAgent = 0;
api.Agent buildAgent() {
  final o = api.Agent();
  buildCounterAgent++;
  if (buildCounterAgent < 3) {
    o.agentId = 'foo';
    o.attributes = buildUnnamed3();
    o.card = buildCard();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.location = 'foo';
    o.name = 'foo';
    o.protocols = buildUnnamed4();
    o.skills = buildUnnamed5();
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.version = 'foo';
  }
  buildCounterAgent--;
  return o;
}

void checkAgent(api.Agent o) {
  buildCounterAgent++;
  if (buildCounterAgent < 3) {
    unittest.expect(o.agentId!, unittest.equals('foo'));
    checkUnnamed3(o.attributes!);
    checkCard(o.card!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed4(o.protocols!);
    checkUnnamed5(o.skills!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterAgent--;
}

core.Map<core.String, core.Object?> buildUnnamed6() => {
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

void checkUnnamed6(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterAgentSpec = 0;
api.AgentSpec buildAgentSpec() {
  final o = api.AgentSpec();
  buildCounterAgentSpec++;
  if (buildCounterAgentSpec < 3) {
    o.content = buildUnnamed6();
    o.type = 'foo';
  }
  buildCounterAgentSpec--;
  return o;
}

void checkAgentSpec(api.AgentSpec o) {
  buildCounterAgentSpec++;
  if (buildCounterAgentSpec < 3) {
    checkUnnamed6(o.content!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterAgentSpec--;
}

core.int buildCounterAiApplication = 0;
api.AiApplication buildAiApplication() {
  final o = api.AiApplication();
  buildCounterAiApplication++;
  if (buildCounterAiApplication < 3) {
    o.applicationProperties = buildApplicationProperties();
    o.attributes = buildAttributes();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAiApplication--;
  return o;
}

void checkAiApplication(api.AiApplication o) {
  buildCounterAiApplication++;
  if (buildCounterAiApplication < 3) {
    checkApplicationProperties(o.applicationProperties!);
    checkAttributes(o.attributes!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAiApplication--;
}

core.int buildCounterAnnotations = 0;
api.Annotations buildAnnotations() {
  final o = api.Annotations();
  buildCounterAnnotations++;
  if (buildCounterAnnotations < 3) {
    o.destructiveHint = true;
    o.idempotentHint = true;
    o.openWorldHint = true;
    o.readOnlyHint = true;
    o.title = 'foo';
  }
  buildCounterAnnotations--;
  return o;
}

void checkAnnotations(api.Annotations o) {
  buildCounterAnnotations++;
  if (buildCounterAnnotations < 3) {
    unittest.expect(o.destructiveHint!, unittest.isTrue);
    unittest.expect(o.idempotentHint!, unittest.isTrue);
    unittest.expect(o.openWorldHint!, unittest.isTrue);
    unittest.expect(o.readOnlyHint!, unittest.isTrue);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterAnnotations--;
}

core.Map<core.String, api.ExtendedMetadata> buildUnnamed7() => {
  'x': buildExtendedMetadata(),
  'y': buildExtendedMetadata(),
};

void checkUnnamed7(core.Map<core.String, api.ExtendedMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtendedMetadata(o['x']!);
  checkExtendedMetadata(o['y']!);
}

core.int buildCounterApplicationProperties = 0;
api.ApplicationProperties buildApplicationProperties() {
  final o = api.ApplicationProperties();
  buildCounterApplicationProperties++;
  if (buildCounterApplicationProperties < 3) {
    o.extendedMetadata = buildUnnamed7();
  }
  buildCounterApplicationProperties--;
  return o;
}

void checkApplicationProperties(api.ApplicationProperties o) {
  buildCounterApplicationProperties++;
  if (buildCounterApplicationProperties < 3) {
    checkUnnamed7(o.extendedMetadata!);
  }
  buildCounterApplicationProperties--;
}

core.int buildCounterArchiveUploadSource = 0;
api.ArchiveUploadSource buildArchiveUploadSource() {
  final o = api.ArchiveUploadSource();
  buildCounterArchiveUploadSource++;
  if (buildCounterArchiveUploadSource < 3) {
    o.archiveContent = 'foo';
  }
  buildCounterArchiveUploadSource--;
  return o;
}

void checkArchiveUploadSource(api.ArchiveUploadSource o) {
  buildCounterArchiveUploadSource++;
  if (buildCounterArchiveUploadSource < 3) {
    unittest.expect(o.archiveContent!, unittest.equals('foo'));
  }
  buildCounterArchiveUploadSource--;
}

core.List<api.ContactInfo> buildUnnamed8() => [
  buildContactInfo(),
  buildContactInfo(),
];

void checkUnnamed8(core.List<api.ContactInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInfo(o[0]);
  checkContactInfo(o[1]);
}

core.List<api.ContactInfo> buildUnnamed9() => [
  buildContactInfo(),
  buildContactInfo(),
];

void checkUnnamed9(core.List<api.ContactInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInfo(o[0]);
  checkContactInfo(o[1]);
}

core.List<api.ContactInfo> buildUnnamed10() => [
  buildContactInfo(),
  buildContactInfo(),
];

void checkUnnamed10(core.List<api.ContactInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInfo(o[0]);
  checkContactInfo(o[1]);
}

core.int buildCounterAttributes = 0;
api.Attributes buildAttributes() {
  final o = api.Attributes();
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    o.businessOwners = buildUnnamed8();
    o.criticality = buildCriticality();
    o.developerOwners = buildUnnamed9();
    o.environment = buildEnvironment();
    o.operatorOwners = buildUnnamed10();
  }
  buildCounterAttributes--;
  return o;
}

void checkAttributes(api.Attributes o) {
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    checkUnnamed8(o.businessOwners!);
    checkCriticality(o.criticality!);
    checkUnnamed9(o.developerOwners!);
    checkEnvironment(o.environment!);
    checkUnnamed10(o.operatorOwners!);
  }
  buildCounterAttributes--;
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuthProviderBinding = 0;
api.AuthProviderBinding buildAuthProviderBinding() {
  final o = api.AuthProviderBinding();
  buildCounterAuthProviderBinding++;
  if (buildCounterAuthProviderBinding < 3) {
    o.authProvider = 'foo';
    o.continueUri = 'foo';
    o.scopes = buildUnnamed11();
  }
  buildCounterAuthProviderBinding--;
  return o;
}

void checkAuthProviderBinding(api.AuthProviderBinding o) {
  buildCounterAuthProviderBinding++;
  if (buildCounterAuthProviderBinding < 3) {
    unittest.expect(o.authProvider!, unittest.equals('foo'));
    unittest.expect(o.continueUri!, unittest.equals('foo'));
    checkUnnamed11(o.scopes!);
  }
  buildCounterAuthProviderBinding--;
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.authProviderBinding = buildAuthProviderBinding();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.source = buildSource();
    o.target = buildTarget();
    o.updateTime = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkAuthProviderBinding(o.authProviderBinding!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkSource(o.source!);
    checkTarget(o.target!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed12() => {
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

void checkUnnamed12(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterCard = 0;
api.Card buildCard() {
  final o = api.Card();
  buildCounterCard++;
  if (buildCounterCard < 3) {
    o.content = buildUnnamed12();
    o.type = 'foo';
  }
  buildCounterCard--;
  return o;
}

void checkCard(api.Card o) {
  buildCounterCard++;
  if (buildCounterCard < 3) {
    checkUnnamed12(o.content!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterCard--;
}

core.int buildCounterContactInfo = 0;
api.ContactInfo buildContactInfo() {
  final o = api.ContactInfo();
  buildCounterContactInfo++;
  if (buildCounterContactInfo < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
  }
  buildCounterContactInfo--;
  return o;
}

void checkContactInfo(api.ContactInfo o) {
  buildCounterContactInfo++;
  if (buildCounterContactInfo < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
  }
  buildCounterContactInfo--;
}

core.int buildCounterCriticality = 0;
api.Criticality buildCriticality() {
  final o = api.Criticality();
  buildCounterCriticality++;
  if (buildCounterCriticality < 3) {
    o.type = 'foo';
  }
  buildCounterCriticality--;
  return o;
}

void checkCriticality(api.Criticality o) {
  buildCounterCriticality++;
  if (buildCounterCriticality < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterCriticality--;
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

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed14() => {
  'x': buildUnnamed13(),
  'y': buildUnnamed13(),
};

void checkUnnamed14(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed13(o['x']!);
  checkUnnamed13(o['y']!);
}

core.List<api.Interface> buildUnnamed15() => [
  buildInterface(),
  buildInterface(),
];

void checkUnnamed15(core.List<api.Interface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterface(o[0]);
  checkInterface(o[1]);
}

core.int buildCounterEndpoint = 0;
api.Endpoint buildEndpoint() {
  final o = api.Endpoint();
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    o.attributes = buildUnnamed14();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.endpointId = 'foo';
    o.interfaces = buildUnnamed15();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterEndpoint--;
  return o;
}

void checkEndpoint(api.Endpoint o) {
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    checkUnnamed14(o.attributes!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.endpointId!, unittest.equals('foo'));
    checkUnnamed15(o.interfaces!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterEndpoint--;
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

core.int buildCounterEndpointSpec = 0;
api.EndpointSpec buildEndpointSpec() {
  final o = api.EndpointSpec();
  buildCounterEndpointSpec++;
  if (buildCounterEndpointSpec < 3) {
    o.content = buildUnnamed16();
    o.type = 'foo';
  }
  buildCounterEndpointSpec--;
  return o;
}

void checkEndpointSpec(api.EndpointSpec o) {
  buildCounterEndpointSpec++;
  if (buildCounterEndpointSpec < 3) {
    checkUnnamed16(o.content!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterEndpointSpec--;
}

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  final o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.type = 'foo';
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterEnvironment--;
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

core.Map<core.String, core.Object?> buildUnnamed17() => {
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

void checkUnnamed17(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterExtendedMetadata = 0;
api.ExtendedMetadata buildExtendedMetadata() {
  final o = api.ExtendedMetadata();
  buildCounterExtendedMetadata++;
  if (buildCounterExtendedMetadata < 3) {
    o.metadataStruct = buildUnnamed17();
  }
  buildCounterExtendedMetadata--;
  return o;
}

void checkExtendedMetadata(api.ExtendedMetadata o) {
  buildCounterExtendedMetadata++;
  if (buildCounterExtendedMetadata < 3) {
    checkUnnamed17(o.metadataStruct!);
  }
  buildCounterExtendedMetadata--;
}

core.List<api.Binding> buildUnnamed18() => [buildBinding(), buildBinding()];

void checkUnnamed18(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterFetchAvailableBindingsResponse = 0;
api.FetchAvailableBindingsResponse buildFetchAvailableBindingsResponse() {
  final o = api.FetchAvailableBindingsResponse();
  buildCounterFetchAvailableBindingsResponse++;
  if (buildCounterFetchAvailableBindingsResponse < 3) {
    o.bindings = buildUnnamed18();
    o.nextPageToken = 'foo';
  }
  buildCounterFetchAvailableBindingsResponse--;
  return o;
}

void checkFetchAvailableBindingsResponse(api.FetchAvailableBindingsResponse o) {
  buildCounterFetchAvailableBindingsResponse++;
  if (buildCounterFetchAvailableBindingsResponse < 3) {
    checkUnnamed18(o.bindings!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterFetchAvailableBindingsResponse--;
}

core.int buildCounterFile = 0;
api.File buildFile() {
  final o = api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.lineNumber = 'foo';
    o.path = 'foo';
  }
  buildCounterFile--;
  return o;
}

void checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    unittest.expect(o.lineNumber!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
  }
  buildCounterFile--;
}

core.List<api.File> buildUnnamed19() => [buildFile(), buildFile()];

void checkUnnamed19(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterFinding = 0;
api.Finding buildFinding() {
  final o = api.Finding();
  buildCounterFinding++;
  if (buildCounterFinding < 3) {
    o.createTime = 'foo';
    o.detail = 'foo';
    o.files = buildUnnamed19();
    o.findingClass = 'foo';
    o.name = 'foo';
    o.resource = 'foo';
    o.severity = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterFinding--;
  return o;
}

void checkFinding(api.Finding o) {
  buildCounterFinding++;
  if (buildCounterFinding < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.detail!, unittest.equals('foo'));
    checkUnnamed19(o.files!);
    unittest.expect(o.findingClass!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.resource!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterFinding--;
}

core.Map<core.String, core.String> buildUnnamed20() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed20(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterFrontmatter = 0;
api.Frontmatter buildFrontmatter() {
  final o = api.Frontmatter();
  buildCounterFrontmatter++;
  if (buildCounterFrontmatter < 3) {
    o.compatibility = 'foo';
    o.description = 'foo';
    o.license = 'foo';
    o.metadata = buildUnnamed20();
    o.name = 'foo';
  }
  buildCounterFrontmatter--;
  return o;
}

void checkFrontmatter(api.Frontmatter o) {
  buildCounterFrontmatter++;
  if (buildCounterFrontmatter < 3) {
    unittest.expect(o.compatibility!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.license!, unittest.equals('foo'));
    checkUnnamed20(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterFrontmatter--;
}

core.int buildCounterGcsSource = 0;
api.GcsSource buildGcsSource() {
  final o = api.GcsSource();
  buildCounterGcsSource++;
  if (buildCounterGcsSource < 3) {
    o.generation = 'foo';
    o.uri = 'foo';
  }
  buildCounterGcsSource--;
  return o;
}

void checkGcsSource(api.GcsSource o) {
  buildCounterGcsSource++;
  if (buildCounterGcsSource < 3) {
    unittest.expect(o.generation!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGcsSource--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed21() => [
  buildGoogleIamV1AuditLogConfig(),
  buildGoogleIamV1AuditLogConfig(),
];

void checkUnnamed21(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed21();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed21(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  final o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed22();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed22(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  final o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed23();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkExpr(o.condition!);
    checkUnnamed23(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed24() => [
  buildGoogleIamV1AuditConfig(),
  buildGoogleIamV1AuditConfig(),
];

void checkUnnamed24(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed25() => [
  buildGoogleIamV1Binding(),
  buildGoogleIamV1Binding(),
];

void checkUnnamed25(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed24();
    o.bindings = buildUnnamed25();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed24(o.auditConfigs!);
    checkUnnamed25(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterGoogleIamV1Policy--;
}

core.int buildCounterGoogleIamV1SetIamPolicyRequest = 0;
api.GoogleIamV1SetIamPolicyRequest buildGoogleIamV1SetIamPolicyRequest() {
  final o = api.GoogleIamV1SetIamPolicyRequest();
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    o.policy = buildGoogleIamV1Policy();
    o.updateMask = 'foo';
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
  return o;
}

void checkGoogleIamV1SetIamPolicyRequest(api.GoogleIamV1SetIamPolicyRequest o) {
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    checkGoogleIamV1Policy(o.policy!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsRequest = 0;
api.GoogleIamV1TestIamPermissionsRequest
buildGoogleIamV1TestIamPermissionsRequest() {
  final o = api.GoogleIamV1TestIamPermissionsRequest();
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed26();
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsRequest(
  api.GoogleIamV1TestIamPermissionsRequest o,
) {
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    checkUnnamed26(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsResponse = 0;
api.GoogleIamV1TestIamPermissionsResponse
buildGoogleIamV1TestIamPermissionsResponse() {
  final o = api.GoogleIamV1TestIamPermissionsResponse();
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed27();
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsResponse(
  api.GoogleIamV1TestIamPermissionsResponse o,
) {
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    checkUnnamed27(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
}

core.int buildCounterInterface = 0;
api.Interface buildInterface() {
  final o = api.Interface();
  buildCounterInterface++;
  if (buildCounterInterface < 3) {
    o.protocolBinding = 'foo';
    o.url = 'foo';
  }
  buildCounterInterface--;
  return o;
}

void checkInterface(api.Interface o) {
  buildCounterInterface++;
  if (buildCounterInterface < 3) {
    unittest.expect(o.protocolBinding!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterInterface--;
}

core.List<api.Agent> buildUnnamed28() => [buildAgent(), buildAgent()];

void checkUnnamed28(core.List<api.Agent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgent(o[0]);
  checkAgent(o[1]);
}

core.int buildCounterListAgentsResponse = 0;
api.ListAgentsResponse buildListAgentsResponse() {
  final o = api.ListAgentsResponse();
  buildCounterListAgentsResponse++;
  if (buildCounterListAgentsResponse < 3) {
    o.agents = buildUnnamed28();
    o.nextPageToken = 'foo';
  }
  buildCounterListAgentsResponse--;
  return o;
}

void checkListAgentsResponse(api.ListAgentsResponse o) {
  buildCounterListAgentsResponse++;
  if (buildCounterListAgentsResponse < 3) {
    checkUnnamed28(o.agents!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAgentsResponse--;
}

core.List<api.Agent> buildUnnamed29() => [buildAgent(), buildAgent()];

void checkUnnamed29(core.List<api.Agent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgent(o[0]);
  checkAgent(o[1]);
}

core.int buildCounterListAiApplicationAgentsResponse = 0;
api.ListAiApplicationAgentsResponse buildListAiApplicationAgentsResponse() {
  final o = api.ListAiApplicationAgentsResponse();
  buildCounterListAiApplicationAgentsResponse++;
  if (buildCounterListAiApplicationAgentsResponse < 3) {
    o.agents = buildUnnamed29();
    o.nextPageToken = 'foo';
  }
  buildCounterListAiApplicationAgentsResponse--;
  return o;
}

void checkListAiApplicationAgentsResponse(
  api.ListAiApplicationAgentsResponse o,
) {
  buildCounterListAiApplicationAgentsResponse++;
  if (buildCounterListAiApplicationAgentsResponse < 3) {
    checkUnnamed29(o.agents!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAiApplicationAgentsResponse--;
}

core.List<api.Endpoint> buildUnnamed30() => [buildEndpoint(), buildEndpoint()];

void checkUnnamed30(core.List<api.Endpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpoint(o[0]);
  checkEndpoint(o[1]);
}

core.int buildCounterListAiApplicationEndpointsResponse = 0;
api.ListAiApplicationEndpointsResponse
buildListAiApplicationEndpointsResponse() {
  final o = api.ListAiApplicationEndpointsResponse();
  buildCounterListAiApplicationEndpointsResponse++;
  if (buildCounterListAiApplicationEndpointsResponse < 3) {
    o.endpoints = buildUnnamed30();
    o.nextPageToken = 'foo';
  }
  buildCounterListAiApplicationEndpointsResponse--;
  return o;
}

void checkListAiApplicationEndpointsResponse(
  api.ListAiApplicationEndpointsResponse o,
) {
  buildCounterListAiApplicationEndpointsResponse++;
  if (buildCounterListAiApplicationEndpointsResponse < 3) {
    checkUnnamed30(o.endpoints!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAiApplicationEndpointsResponse--;
}

core.List<api.McpServer> buildUnnamed31() => [
  buildMcpServer(),
  buildMcpServer(),
];

void checkUnnamed31(core.List<api.McpServer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMcpServer(o[0]);
  checkMcpServer(o[1]);
}

core.int buildCounterListAiApplicationMcpServersResponse = 0;
api.ListAiApplicationMcpServersResponse
buildListAiApplicationMcpServersResponse() {
  final o = api.ListAiApplicationMcpServersResponse();
  buildCounterListAiApplicationMcpServersResponse++;
  if (buildCounterListAiApplicationMcpServersResponse < 3) {
    o.mcpServers = buildUnnamed31();
    o.nextPageToken = 'foo';
  }
  buildCounterListAiApplicationMcpServersResponse--;
  return o;
}

void checkListAiApplicationMcpServersResponse(
  api.ListAiApplicationMcpServersResponse o,
) {
  buildCounterListAiApplicationMcpServersResponse++;
  if (buildCounterListAiApplicationMcpServersResponse < 3) {
    checkUnnamed31(o.mcpServers!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAiApplicationMcpServersResponse--;
}

core.List<api.AiApplication> buildUnnamed32() => [
  buildAiApplication(),
  buildAiApplication(),
];

void checkUnnamed32(core.List<api.AiApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAiApplication(o[0]);
  checkAiApplication(o[1]);
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAiApplicationsResponse = 0;
api.ListAiApplicationsResponse buildListAiApplicationsResponse() {
  final o = api.ListAiApplicationsResponse();
  buildCounterListAiApplicationsResponse++;
  if (buildCounterListAiApplicationsResponse < 3) {
    o.aiApplications = buildUnnamed32();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed33();
  }
  buildCounterListAiApplicationsResponse--;
  return o;
}

void checkListAiApplicationsResponse(api.ListAiApplicationsResponse o) {
  buildCounterListAiApplicationsResponse++;
  if (buildCounterListAiApplicationsResponse < 3) {
    checkUnnamed32(o.aiApplications!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed33(o.unreachable!);
  }
  buildCounterListAiApplicationsResponse--;
}

core.List<api.Binding> buildUnnamed34() => [buildBinding(), buildBinding()];

void checkUnnamed34(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterListBindingsResponse = 0;
api.ListBindingsResponse buildListBindingsResponse() {
  final o = api.ListBindingsResponse();
  buildCounterListBindingsResponse++;
  if (buildCounterListBindingsResponse < 3) {
    o.bindings = buildUnnamed34();
    o.nextPageToken = 'foo';
  }
  buildCounterListBindingsResponse--;
  return o;
}

void checkListBindingsResponse(api.ListBindingsResponse o) {
  buildCounterListBindingsResponse++;
  if (buildCounterListBindingsResponse < 3) {
    checkUnnamed34(o.bindings!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListBindingsResponse--;
}

core.List<api.Endpoint> buildUnnamed35() => [buildEndpoint(), buildEndpoint()];

void checkUnnamed35(core.List<api.Endpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpoint(o[0]);
  checkEndpoint(o[1]);
}

core.int buildCounterListEndpointsResponse = 0;
api.ListEndpointsResponse buildListEndpointsResponse() {
  final o = api.ListEndpointsResponse();
  buildCounterListEndpointsResponse++;
  if (buildCounterListEndpointsResponse < 3) {
    o.endpoints = buildUnnamed35();
    o.nextPageToken = 'foo';
  }
  buildCounterListEndpointsResponse--;
  return o;
}

void checkListEndpointsResponse(api.ListEndpointsResponse o) {
  buildCounterListEndpointsResponse++;
  if (buildCounterListEndpointsResponse < 3) {
    checkUnnamed35(o.endpoints!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListEndpointsResponse--;
}

core.List<api.Finding> buildUnnamed36() => [buildFinding(), buildFinding()];

void checkUnnamed36(core.List<api.Finding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFinding(o[0]);
  checkFinding(o[1]);
}

core.int buildCounterListFindingsResponse = 0;
api.ListFindingsResponse buildListFindingsResponse() {
  final o = api.ListFindingsResponse();
  buildCounterListFindingsResponse++;
  if (buildCounterListFindingsResponse < 3) {
    o.findings = buildUnnamed36();
    o.nextPageToken = 'foo';
  }
  buildCounterListFindingsResponse--;
  return o;
}

void checkListFindingsResponse(api.ListFindingsResponse o) {
  buildCounterListFindingsResponse++;
  if (buildCounterListFindingsResponse < 3) {
    checkUnnamed36(o.findings!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListFindingsResponse--;
}

core.List<api.Location> buildUnnamed37() => [buildLocation(), buildLocation()];

void checkUnnamed37(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed37();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed37(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.McpServer> buildUnnamed38() => [
  buildMcpServer(),
  buildMcpServer(),
];

void checkUnnamed38(core.List<api.McpServer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMcpServer(o[0]);
  checkMcpServer(o[1]);
}

core.int buildCounterListMcpServersResponse = 0;
api.ListMcpServersResponse buildListMcpServersResponse() {
  final o = api.ListMcpServersResponse();
  buildCounterListMcpServersResponse++;
  if (buildCounterListMcpServersResponse < 3) {
    o.mcpServers = buildUnnamed38();
    o.nextPageToken = 'foo';
  }
  buildCounterListMcpServersResponse--;
  return o;
}

void checkListMcpServersResponse(api.ListMcpServersResponse o) {
  buildCounterListMcpServersResponse++;
  if (buildCounterListMcpServersResponse < 3) {
    checkUnnamed38(o.mcpServers!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListMcpServersResponse--;
}

core.List<api.Operation> buildUnnamed39() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed39(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed39();
    o.unreachable = buildUnnamed40();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed39(o.operations!);
    checkUnnamed40(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Publisher> buildUnnamed41() => [
  buildPublisher(),
  buildPublisher(),
];

void checkUnnamed41(core.List<api.Publisher> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisher(o[0]);
  checkPublisher(o[1]);
}

core.int buildCounterListPublishersResponse = 0;
api.ListPublishersResponse buildListPublishersResponse() {
  final o = api.ListPublishersResponse();
  buildCounterListPublishersResponse++;
  if (buildCounterListPublishersResponse < 3) {
    o.nextPageToken = 'foo';
    o.publishers = buildUnnamed41();
  }
  buildCounterListPublishersResponse--;
  return o;
}

void checkListPublishersResponse(api.ListPublishersResponse o) {
  buildCounterListPublishersResponse++;
  if (buildCounterListPublishersResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed41(o.publishers!);
  }
  buildCounterListPublishersResponse--;
}

core.List<api.Service> buildUnnamed42() => [buildService(), buildService()];

void checkUnnamed42(core.List<api.Service> o) {
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
    o.services = buildUnnamed42();
  }
  buildCounterListServicesResponse--;
  return o;
}

void checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed42(o.services!);
  }
  buildCounterListServicesResponse--;
}

core.List<api.SkillRevision> buildUnnamed43() => [
  buildSkillRevision(),
  buildSkillRevision(),
];

void checkUnnamed43(core.List<api.SkillRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSkillRevision(o[0]);
  checkSkillRevision(o[1]);
}

core.int buildCounterListSkillRevisionsResponse = 0;
api.ListSkillRevisionsResponse buildListSkillRevisionsResponse() {
  final o = api.ListSkillRevisionsResponse();
  buildCounterListSkillRevisionsResponse++;
  if (buildCounterListSkillRevisionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.skillRevisions = buildUnnamed43();
  }
  buildCounterListSkillRevisionsResponse--;
  return o;
}

void checkListSkillRevisionsResponse(api.ListSkillRevisionsResponse o) {
  buildCounterListSkillRevisionsResponse++;
  if (buildCounterListSkillRevisionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed43(o.skillRevisions!);
  }
  buildCounterListSkillRevisionsResponse--;
}

core.List<api.Skill> buildUnnamed44() => [buildSkill(), buildSkill()];

void checkUnnamed44(core.List<api.Skill> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSkill(o[0]);
  checkSkill(o[1]);
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListSkillsResponse = 0;
api.ListSkillsResponse buildListSkillsResponse() {
  final o = api.ListSkillsResponse();
  buildCounterListSkillsResponse++;
  if (buildCounterListSkillsResponse < 3) {
    o.nextPageToken = 'foo';
    o.skills = buildUnnamed44();
    o.unreachable = buildUnnamed45();
  }
  buildCounterListSkillsResponse--;
  return o;
}

void checkListSkillsResponse(api.ListSkillsResponse o) {
  buildCounterListSkillsResponse++;
  if (buildCounterListSkillsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed44(o.skills!);
    checkUnnamed45(o.unreachable!);
  }
  buildCounterListSkillsResponse--;
}

core.Map<core.String, core.String> buildUnnamed46() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed46(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed47() => {
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

void checkUnnamed47(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed46();
    o.locationId = 'foo';
    o.metadata = buildUnnamed47();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed46(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed47(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
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

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed49() => {
  'x': buildUnnamed48(),
  'y': buildUnnamed48(),
};

void checkUnnamed49(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed48(o['x']!);
  checkUnnamed48(o['y']!);
}

core.List<api.Interface> buildUnnamed50() => [
  buildInterface(),
  buildInterface(),
];

void checkUnnamed50(core.List<api.Interface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterface(o[0]);
  checkInterface(o[1]);
}

core.List<api.Tool> buildUnnamed51() => [buildTool(), buildTool()];

void checkUnnamed51(core.List<api.Tool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTool(o[0]);
  checkTool(o[1]);
}

core.int buildCounterMcpServer = 0;
api.McpServer buildMcpServer() {
  final o = api.McpServer();
  buildCounterMcpServer++;
  if (buildCounterMcpServer < 3) {
    o.attributes = buildUnnamed49();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.interfaces = buildUnnamed50();
    o.mcpServerId = 'foo';
    o.name = 'foo';
    o.tools = buildUnnamed51();
    o.updateTime = 'foo';
  }
  buildCounterMcpServer--;
  return o;
}

void checkMcpServer(api.McpServer o) {
  buildCounterMcpServer++;
  if (buildCounterMcpServer < 3) {
    checkUnnamed49(o.attributes!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed50(o.interfaces!);
    unittest.expect(o.mcpServerId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed51(o.tools!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterMcpServer--;
}

core.Map<core.String, core.Object?> buildUnnamed52() => {
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

void checkUnnamed52(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterMcpServerSpec = 0;
api.McpServerSpec buildMcpServerSpec() {
  final o = api.McpServerSpec();
  buildCounterMcpServerSpec++;
  if (buildCounterMcpServerSpec < 3) {
    o.content = buildUnnamed52();
    o.type = 'foo';
  }
  buildCounterMcpServerSpec--;
  return o;
}

void checkMcpServerSpec(api.McpServerSpec o) {
  buildCounterMcpServerSpec++;
  if (buildCounterMcpServerSpec < 3) {
    checkUnnamed52(o.content!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterMcpServerSpec--;
}

core.Map<core.String, core.Object?> buildUnnamed53() => {
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

void checkUnnamed53(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed54() => {
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

void checkUnnamed54(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o['x']!) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(casted21['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted21['bool'], unittest.equals(true));
  unittest.expect(casted21['string'], unittest.equals('foo'));
  var casted22 = (o['y']!) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(casted22['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted22['bool'], unittest.equals(true));
  unittest.expect(casted22['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed53();
    o.name = 'foo';
    o.response = buildUnnamed54();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed53(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed54(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.Interface> buildUnnamed55() => [
  buildInterface(),
  buildInterface(),
];

void checkUnnamed55(core.List<api.Interface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterface(o[0]);
  checkInterface(o[1]);
}

core.int buildCounterProtocol = 0;
api.Protocol buildProtocol() {
  final o = api.Protocol();
  buildCounterProtocol++;
  if (buildCounterProtocol < 3) {
    o.interfaces = buildUnnamed55();
    o.protocolVersion = 'foo';
    o.type = 'foo';
  }
  buildCounterProtocol--;
  return o;
}

void checkProtocol(api.Protocol o) {
  buildCounterProtocol++;
  if (buildCounterProtocol < 3) {
    checkUnnamed55(o.interfaces!);
    unittest.expect(o.protocolVersion!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterProtocol--;
}

core.int buildCounterPublisher = 0;
api.Publisher buildPublisher() {
  final o = api.Publisher();
  buildCounterPublisher++;
  if (buildCounterPublisher < 3) {
    o.displayName = 'foo';
    o.documentationUri = 'foo';
    o.name = 'foo';
    o.publisherTier = 'foo';
    o.supportUri = 'foo';
    o.verifiedPrefix = 'foo';
  }
  buildCounterPublisher--;
  return o;
}

void checkPublisher(api.Publisher o) {
  buildCounterPublisher++;
  if (buildCounterPublisher < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.documentationUri!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.publisherTier!, unittest.equals('foo'));
    unittest.expect(o.supportUri!, unittest.equals('foo'));
    unittest.expect(o.verifiedPrefix!, unittest.equals('foo'));
  }
  buildCounterPublisher--;
}

core.List<core.String> buildUnnamed56() => ['foo', 'foo'];

void checkUnnamed56(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterScanResult = 0;
api.ScanResult buildScanResult() {
  final o = api.ScanResult();
  buildCounterScanResult++;
  if (buildCounterScanResult < 3) {
    o.errorMessage = 'foo';
    o.findings = buildUnnamed56();
    o.scanState = 'foo';
    o.scanTime = 'foo';
  }
  buildCounterScanResult--;
  return o;
}

void checkScanResult(api.ScanResult o) {
  buildCounterScanResult++;
  if (buildCounterScanResult < 3) {
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    checkUnnamed56(o.findings!);
    unittest.expect(o.scanState!, unittest.equals('foo'));
    unittest.expect(o.scanTime!, unittest.equals('foo'));
  }
  buildCounterScanResult--;
}

core.int buildCounterScanningConfig = 0;
api.ScanningConfig buildScanningConfig() {
  final o = api.ScanningConfig();
  buildCounterScanningConfig++;
  if (buildCounterScanningConfig < 3) {
    o.policy = 'foo';
  }
  buildCounterScanningConfig--;
  return o;
}

void checkScanningConfig(api.ScanningConfig o) {
  buildCounterScanningConfig++;
  if (buildCounterScanningConfig < 3) {
    unittest.expect(o.policy!, unittest.equals('foo'));
  }
  buildCounterScanningConfig--;
}

core.int buildCounterSearchAgentsRequest = 0;
api.SearchAgentsRequest buildSearchAgentsRequest() {
  final o = api.SearchAgentsRequest();
  buildCounterSearchAgentsRequest++;
  if (buildCounterSearchAgentsRequest < 3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.searchString = 'foo';
  }
  buildCounterSearchAgentsRequest--;
  return o;
}

void checkSearchAgentsRequest(api.SearchAgentsRequest o) {
  buildCounterSearchAgentsRequest++;
  if (buildCounterSearchAgentsRequest < 3) {
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    unittest.expect(o.searchString!, unittest.equals('foo'));
  }
  buildCounterSearchAgentsRequest--;
}

core.List<api.Agent> buildUnnamed57() => [buildAgent(), buildAgent()];

void checkUnnamed57(core.List<api.Agent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgent(o[0]);
  checkAgent(o[1]);
}

core.int buildCounterSearchAgentsResponse = 0;
api.SearchAgentsResponse buildSearchAgentsResponse() {
  final o = api.SearchAgentsResponse();
  buildCounterSearchAgentsResponse++;
  if (buildCounterSearchAgentsResponse < 3) {
    o.agents = buildUnnamed57();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchAgentsResponse--;
  return o;
}

void checkSearchAgentsResponse(api.SearchAgentsResponse o) {
  buildCounterSearchAgentsResponse++;
  if (buildCounterSearchAgentsResponse < 3) {
    checkUnnamed57(o.agents!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterSearchAgentsResponse--;
}

core.int buildCounterSearchMcpServersRequest = 0;
api.SearchMcpServersRequest buildSearchMcpServersRequest() {
  final o = api.SearchMcpServersRequest();
  buildCounterSearchMcpServersRequest++;
  if (buildCounterSearchMcpServersRequest < 3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.searchString = 'foo';
  }
  buildCounterSearchMcpServersRequest--;
  return o;
}

void checkSearchMcpServersRequest(api.SearchMcpServersRequest o) {
  buildCounterSearchMcpServersRequest++;
  if (buildCounterSearchMcpServersRequest < 3) {
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    unittest.expect(o.searchString!, unittest.equals('foo'));
  }
  buildCounterSearchMcpServersRequest--;
}

core.List<api.McpServer> buildUnnamed58() => [
  buildMcpServer(),
  buildMcpServer(),
];

void checkUnnamed58(core.List<api.McpServer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMcpServer(o[0]);
  checkMcpServer(o[1]);
}

core.int buildCounterSearchMcpServersResponse = 0;
api.SearchMcpServersResponse buildSearchMcpServersResponse() {
  final o = api.SearchMcpServersResponse();
  buildCounterSearchMcpServersResponse++;
  if (buildCounterSearchMcpServersResponse < 3) {
    o.mcpServers = buildUnnamed58();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchMcpServersResponse--;
  return o;
}

void checkSearchMcpServersResponse(api.SearchMcpServersResponse o) {
  buildCounterSearchMcpServersResponse++;
  if (buildCounterSearchMcpServersResponse < 3) {
    checkUnnamed58(o.mcpServers!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterSearchMcpServersResponse--;
}

core.List<api.Skill> buildUnnamed59() => [buildSkill(), buildSkill()];

void checkUnnamed59(core.List<api.Skill> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSkill(o[0]);
  checkSkill(o[1]);
}

core.int buildCounterSearchSkillsResponse = 0;
api.SearchSkillsResponse buildSearchSkillsResponse() {
  final o = api.SearchSkillsResponse();
  buildCounterSearchSkillsResponse++;
  if (buildCounterSearchSkillsResponse < 3) {
    o.nextPageToken = 'foo';
    o.skills = buildUnnamed59();
  }
  buildCounterSearchSkillsResponse--;
  return o;
}

void checkSearchSkillsResponse(api.SearchSkillsResponse o) {
  buildCounterSearchSkillsResponse++;
  if (buildCounterSearchSkillsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed59(o.skills!);
  }
  buildCounterSearchSkillsResponse--;
}

core.List<api.Interface> buildUnnamed60() => [
  buildInterface(),
  buildInterface(),
];

void checkUnnamed60(core.List<api.Interface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterface(o[0]);
  checkInterface(o[1]);
}

core.int buildCounterService = 0;
api.Service buildService() {
  final o = api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.agentSpec = buildAgentSpec();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.endpointSpec = buildEndpointSpec();
    o.interfaces = buildUnnamed60();
    o.mcpServerSpec = buildMcpServerSpec();
    o.name = 'foo';
    o.registryResource = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    checkAgentSpec(o.agentSpec!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkEndpointSpec(o.endpointSpec!);
    checkUnnamed60(o.interfaces!);
    checkMcpServerSpec(o.mcpServerSpec!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.registryResource!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterService--;
}

core.int buildCounterSkill = 0;
api.Skill buildSkill() {
  final o = api.Skill();
  buildCounterSkill++;
  if (buildCounterSkill < 3) {
    o.createTime = 'foo';
    o.defaultRevision = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.frontmatter = buildFrontmatter();
    o.initialRevision = buildSkillRevision();
    o.name = 'foo';
    o.publisher = 'foo';
    o.scanningConfig = buildScanningConfig();
    o.skillId = 'foo';
    o.state = 'foo';
    o.targetState = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSkill--;
  return o;
}

void checkSkill(api.Skill o) {
  buildCounterSkill++;
  if (buildCounterSkill < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.defaultRevision!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkFrontmatter(o.frontmatter!);
    checkSkillRevision(o.initialRevision!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.publisher!, unittest.equals('foo'));
    checkScanningConfig(o.scanningConfig!);
    unittest.expect(o.skillId!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.targetState!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterSkill--;
}

core.int buildCounterSkillRevision = 0;
api.SkillRevision buildSkillRevision() {
  final o = api.SkillRevision();
  buildCounterSkillRevision++;
  if (buildCounterSkillRevision < 3) {
    o.archiveUploadSource = buildArchiveUploadSource();
    o.createTime = 'foo';
    o.frontmatter = buildFrontmatter();
    o.gcsSource = buildGcsSource();
    o.name = 'foo';
    o.scanResult = buildScanResult();
    o.sha256Hash = 'foo';
    o.sizeBytes = 'foo';
    o.state = 'foo';
    o.uid = 'foo';
  }
  buildCounterSkillRevision--;
  return o;
}

void checkSkillRevision(api.SkillRevision o) {
  buildCounterSkillRevision++;
  if (buildCounterSkillRevision < 3) {
    checkArchiveUploadSource(o.archiveUploadSource!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkFrontmatter(o.frontmatter!);
    checkGcsSource(o.gcsSource!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkScanResult(o.scanResult!);
    unittest.expect(o.sha256Hash!, unittest.equals('foo'));
    unittest.expect(o.sizeBytes!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
  }
  buildCounterSkillRevision--;
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.identifier = 'foo';
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    unittest.expect(o.identifier!, unittest.equals('foo'));
  }
  buildCounterSource--;
}

core.Map<core.String, core.Object?> buildUnnamed61() => {
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

void checkUnnamed61(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o['x']!) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(casted23['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted23['bool'], unittest.equals(true));
  unittest.expect(casted23['string'], unittest.equals('foo'));
  var casted24 = (o['y']!) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(casted24['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted24['bool'], unittest.equals(true));
  unittest.expect(casted24['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed62() => [
  buildUnnamed61(),
  buildUnnamed61(),
];

void checkUnnamed62(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed61(o[0]);
  checkUnnamed61(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed62();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed62(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTarget = 0;
api.Target buildTarget() {
  final o = api.Target();
  buildCounterTarget++;
  if (buildCounterTarget < 3) {
    o.identifier = 'foo';
  }
  buildCounterTarget--;
  return o;
}

void checkTarget(api.Target o) {
  buildCounterTarget++;
  if (buildCounterTarget < 3) {
    unittest.expect(o.identifier!, unittest.equals('foo'));
  }
  buildCounterTarget--;
}

core.Map<core.String, core.Object?> buildUnnamed63() => {
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

void checkUnnamed63(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted25 = (o['x']!) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(casted25['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted25['bool'], unittest.equals(true));
  unittest.expect(casted25['string'], unittest.equals('foo'));
  var casted26 = (o['y']!) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(casted26['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted26['bool'], unittest.equals(true));
  unittest.expect(casted26['string'], unittest.equals('foo'));
}

core.int buildCounterTool = 0;
api.Tool buildTool() {
  final o = api.Tool();
  buildCounterTool++;
  if (buildCounterTool < 3) {
    o.P_meta = buildUnnamed63();
    o.annotations = buildAnnotations();
    o.description = 'foo';
    o.name = 'foo';
  }
  buildCounterTool--;
  return o;
}

void checkTool(api.Tool o) {
  buildCounterTool++;
  if (buildCounterTool < 3) {
    checkUnnamed63(o.P_meta!);
    checkAnnotations(o.annotations!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterTool--;
}

core.List<core.String> buildUnnamed64() => ['foo', 'foo'];

void checkUnnamed64(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-A2ASkill', () {
    unittest.test('to-json--from-json', () async {
      final o = buildA2ASkill();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.A2ASkill.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkA2ASkill(od);
    });
  });

  unittest.group('obj-schema-Agent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Agent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgent(od);
    });
  });

  unittest.group('obj-schema-AgentSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentSpec(od);
    });
  });

  unittest.group('obj-schema-AiApplication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAiApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AiApplication.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAiApplication(od);
    });
  });

  unittest.group('obj-schema-Annotations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Annotations.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnnotations(od);
    });
  });

  unittest.group('obj-schema-ApplicationProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplicationProperties(od);
    });
  });

  unittest.group('obj-schema-ArchiveUploadSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArchiveUploadSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArchiveUploadSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkArchiveUploadSource(od);
    });
  });

  unittest.group('obj-schema-Attributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Attributes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttributes(od);
    });
  });

  unittest.group('obj-schema-AuthProviderBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthProviderBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthProviderBinding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthProviderBinding(od);
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

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-Card', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Card.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCard(od);
    });
  });

  unittest.group('obj-schema-ContactInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContactInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContactInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContactInfo(od);
    });
  });

  unittest.group('obj-schema-Criticality', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCriticality();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Criticality.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCriticality(od);
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

  unittest.group('obj-schema-Endpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Endpoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEndpoint(od);
    });
  });

  unittest.group('obj-schema-EndpointSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpointSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndpointSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEndpointSpec(od);
    });
  });

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Environment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnvironment(od);
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

  unittest.group('obj-schema-ExtendedMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtendedMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtendedMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtendedMetadata(od);
    });
  });

  unittest.group('obj-schema-FetchAvailableBindingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchAvailableBindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchAvailableBindingsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchAvailableBindingsResponse(od);
    });
  });

  unittest.group('obj-schema-File', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.File.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFile(od);
    });
  });

  unittest.group('obj-schema-Finding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Finding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFinding(od);
    });
  });

  unittest.group('obj-schema-Frontmatter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFrontmatter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Frontmatter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFrontmatter(od);
    });
  });

  unittest.group('obj-schema-GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGcsSource(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Binding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1Policy(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1SetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1SetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1SetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1TestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1TestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1TestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1TestIamPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1TestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-Interface', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterface();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Interface.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterface(od);
    });
  });

  unittest.group('obj-schema-ListAgentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAgentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAgentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAgentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAiApplicationAgentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAiApplicationAgentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAiApplicationAgentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAiApplicationAgentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAiApplicationEndpointsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAiApplicationEndpointsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAiApplicationEndpointsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAiApplicationEndpointsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAiApplicationMcpServersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAiApplicationMcpServersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAiApplicationMcpServersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAiApplicationMcpServersResponse(od);
    });
  });

  unittest.group('obj-schema-ListAiApplicationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAiApplicationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAiApplicationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAiApplicationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListBindingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBindingsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListBindingsResponse(od);
    });
  });

  unittest.group('obj-schema-ListEndpointsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEndpointsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEndpointsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListEndpointsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFindingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFindingsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListFindingsResponse(od);
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

  unittest.group('obj-schema-ListMcpServersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMcpServersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMcpServersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMcpServersResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPublishersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPublishersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPublishersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPublishersResponse(od);
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

  unittest.group('obj-schema-ListSkillRevisionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSkillRevisionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSkillRevisionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSkillRevisionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSkillsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSkillsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSkillsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSkillsResponse(od);
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

  unittest.group('obj-schema-McpServer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMcpServer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.McpServer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMcpServer(od);
    });
  });

  unittest.group('obj-schema-McpServerSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMcpServerSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.McpServerSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMcpServerSpec(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-Protocol', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProtocol();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Protocol.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProtocol(od);
    });
  });

  unittest.group('obj-schema-Publisher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublisher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Publisher.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPublisher(od);
    });
  });

  unittest.group('obj-schema-ScanResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScanResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScanResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScanResult(od);
    });
  });

  unittest.group('obj-schema-ScanningConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScanningConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScanningConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScanningConfig(od);
    });
  });

  unittest.group('obj-schema-SearchAgentsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchAgentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchAgentsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchAgentsRequest(od);
    });
  });

  unittest.group('obj-schema-SearchAgentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchAgentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchAgentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchAgentsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchMcpServersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchMcpServersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchMcpServersRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchMcpServersRequest(od);
    });
  });

  unittest.group('obj-schema-SearchMcpServersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchMcpServersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchMcpServersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchMcpServersResponse(od);
    });
  });

  unittest.group('obj-schema-SearchSkillsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchSkillsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchSkillsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchSkillsResponse(od);
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

  unittest.group('obj-schema-Skill', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSkill();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Skill.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSkill(od);
    });
  });

  unittest.group('obj-schema-SkillRevision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSkillRevision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SkillRevision.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSkillRevision(od);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Source.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSource(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-Target', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Target.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTarget(od);
    });
  });

  unittest.group('obj-schema-Tool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Tool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTool(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations;
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
      final res = api.AgentRegistryApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed64();
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

  unittest.group('resource-ProjectsLocationsAgentsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.agents;
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
          final resp = convert.json.encode(buildAgent());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAgent(response as api.Agent);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.agents;
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
          final resp = convert.json.encode(buildListAgentsResponse());
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
      checkListAgentsResponse(response as api.ListAgentsResponse);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.agents;
      final arg_request = buildSearchAgentsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SearchAgentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSearchAgentsRequest(obj);

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
          final resp = convert.json.encode(buildSearchAgentsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkSearchAgentsResponse(response as api.SearchAgentsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAiApplicationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.aiApplications;
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
          final resp = convert.json.encode(buildAiApplication());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAiApplication(response as api.AiApplication);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.aiApplications;
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
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.aiApplications;
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
          final resp = convert.json.encode(buildListAiApplicationsResponse());
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
      checkListAiApplicationsResponse(
        response as api.ListAiApplicationsResponse,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.aiApplications;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1SetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.aiApplications;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1TestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(
            buildGoogleIamV1TestIamPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1TestIamPermissionsResponse(
        response as api.GoogleIamV1TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAiApplicationsAgentsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(
        mock,
      ).projects.locations.aiApplications.agents;
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
          final resp = convert.json.encode(buildAgent());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAgent(response as api.Agent);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(
        mock,
      ).projects.locations.aiApplications.agents;
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
            buildListAiApplicationAgentsResponse(),
          );
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
      checkListAiApplicationAgentsResponse(
        response as api.ListAiApplicationAgentsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAiApplicationsEndpointsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(
        mock,
      ).projects.locations.aiApplications.endpoints;
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
          final resp = convert.json.encode(buildEndpoint());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEndpoint(response as api.Endpoint);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(
        mock,
      ).projects.locations.aiApplications.endpoints;
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
            buildListAiApplicationEndpointsResponse(),
          );
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
      checkListAiApplicationEndpointsResponse(
        response as api.ListAiApplicationEndpointsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAiApplicationsMcpServersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(
        mock,
      ).projects.locations.aiApplications.mcpServers;
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
          final resp = convert.json.encode(buildMcpServer());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMcpServer(response as api.McpServer);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(
        mock,
      ).projects.locations.aiApplications.mcpServers;
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
            buildListAiApplicationMcpServersResponse(),
          );
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
      checkListAiApplicationMcpServersResponse(
        response as api.ListAiApplicationMcpServersResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsBindingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.bindings;
      final arg_request = buildBinding();
      final arg_parent = 'foo';
      final arg_bindingId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Binding.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBinding(obj);

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
            queryMap['bindingId']!.first,
            unittest.equals(arg_bindingId),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        bindingId: arg_bindingId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.bindings;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetchAvailable', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.bindings;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_sourceIdentifier = 'foo';
      final arg_targetIdentifier = 'foo';
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
            queryMap['sourceIdentifier']!.first,
            unittest.equals(arg_sourceIdentifier),
          );
          unittest.expect(
            queryMap['targetIdentifier']!.first,
            unittest.equals(arg_targetIdentifier),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildFetchAvailableBindingsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchAvailable(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        sourceIdentifier: arg_sourceIdentifier,
        targetIdentifier: arg_targetIdentifier,
        $fields: arg_$fields,
      );
      checkFetchAvailableBindingsResponse(
        response as api.FetchAvailableBindingsResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.bindings;
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
          final resp = convert.json.encode(buildBinding());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBinding(response as api.Binding);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.bindings;
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
          final resp = convert.json.encode(buildListBindingsResponse());
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
      checkListBindingsResponse(response as api.ListBindingsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.bindings;
      final arg_request = buildBinding();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Binding.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBinding(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsEndpointsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.endpoints;
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
          final resp = convert.json.encode(buildEndpoint());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEndpoint(response as api.Endpoint);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.endpoints;
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
          final resp = convert.json.encode(buildListEndpointsResponse());
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
      checkListEndpointsResponse(response as api.ListEndpointsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsFindingsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.findings;
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
          final resp = convert.json.encode(buildFinding());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFinding(response as api.Finding);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.findings;
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
          final resp = convert.json.encode(buildListFindingsResponse());
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
      checkListFindingsResponse(response as api.ListFindingsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsMcpServersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.mcpServers;
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
          final resp = convert.json.encode(buildMcpServer());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMcpServer(response as api.McpServer);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.mcpServers;
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
          final resp = convert.json.encode(buildListMcpServersResponse());
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
      checkListMcpServersResponse(response as api.ListMcpServersResponse);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.mcpServers;
      final arg_request = buildSearchMcpServersRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SearchMcpServersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSearchMcpServersRequest(obj);

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
          final resp = convert.json.encode(buildSearchMcpServersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkSearchMcpServersResponse(response as api.SearchMcpServersResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelOperationRequest(obj);

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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.operations;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.operations;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsPublishersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.publishers;
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
          final resp = convert.json.encode(buildPublisher());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPublisher(response as api.Publisher);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.publishers;
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
          final resp = convert.json.encode(buildListPublishersResponse());
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
      checkListPublishersResponse(response as api.ListPublishersResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsServicesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.services;
      final arg_request = buildService();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_serviceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Service.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkService(obj);

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
            queryMap['serviceId']!.first,
            unittest.equals(arg_serviceId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        serviceId: arg_serviceId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.services;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.services;
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
          final resp = convert.json.encode(buildService());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkService(response as api.Service);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.services;
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
          final resp = convert.json.encode(buildListServicesResponse());
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
      checkListServicesResponse(response as api.ListServicesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.services;
      final arg_request = buildService();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Service.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkService(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsSkillsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.skills;
      final arg_request = buildSkill();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_skillId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Skill.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSkill(obj);

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
            queryMap['skillId']!.first,
            unittest.equals(arg_skillId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        skillId: arg_skillId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.skills;
      final arg_name = 'foo';
      final arg_force = true;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.skills;
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
          final resp = convert.json.encode(buildSkill());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSkill(response as api.Skill);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.skills;
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
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.skills;
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
          final resp = convert.json.encode(buildListSkillsResponse());
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
      checkListSkillsResponse(response as api.ListSkillsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.skills;
      final arg_request = buildSkill();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Skill.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSkill(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.skills;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_searchType = 'foo';
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
            queryMap['searchString']!.first,
            unittest.equals(arg_searchString),
          );
          unittest.expect(
            queryMap['searchType']!.first,
            unittest.equals(arg_searchType),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSearchSkillsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        searchString: arg_searchString,
        searchType: arg_searchType,
        $fields: arg_$fields,
      );
      checkSearchSkillsResponse(response as api.SearchSkillsResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.skills;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1SetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(mock).projects.locations.skills;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1TestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(
            buildGoogleIamV1TestIamPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1TestIamPermissionsResponse(
        response as api.GoogleIamV1TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsSkillsRevisionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(
        mock,
      ).projects.locations.skills.revisions;
      final arg_request = buildSkillRevision();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_skillRevisionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SkillRevision.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSkillRevision(obj);

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
            queryMap['skillRevisionId']!.first,
            unittest.equals(arg_skillRevisionId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        skillRevisionId: arg_skillRevisionId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(
        mock,
      ).projects.locations.skills.revisions;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(
        mock,
      ).projects.locations.skills.revisions;
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
          final resp = convert.json.encode(buildSkillRevision());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSkillRevision(response as api.SkillRevision);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AgentRegistryApi(
        mock,
      ).projects.locations.skills.revisions;
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
          final resp = convert.json.encode(buildListSkillRevisionsResponse());
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
      checkListSkillRevisionsResponse(
        response as api.ListSkillRevisionsResponse,
      );
    });
  });
}
