// Copyright 2021 Google LLC
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

import 'package:googleapis/networkservices/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed1() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed1(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAgentConnectivityTemplate = 0;
api.AgentConnectivityTemplate buildAgentConnectivityTemplate() {
  final o = api.AgentConnectivityTemplate();
  buildCounterAgentConnectivityTemplate++;
  if (buildCounterAgentConnectivityTemplate < 3) {
    o.accessPath = 'foo';
    o.accessTypes = buildUnnamed0();
    o.agentCompute = 'foo';
    o.createTime = 'foo';
    o.deploymentModel = 'foo';
    o.description = 'foo';
    o.egressNetworkConfig = buildEgressNetworkConfig();
    o.etag = 'foo';
    o.labels = buildUnnamed1();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAgentConnectivityTemplate--;
  return o;
}

void checkAgentConnectivityTemplate(api.AgentConnectivityTemplate o) {
  buildCounterAgentConnectivityTemplate++;
  if (buildCounterAgentConnectivityTemplate < 3) {
    unittest.expect(o.accessPath!, unittest.equals('foo'));
    checkUnnamed0(o.accessTypes!);
    unittest.expect(o.agentCompute!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deploymentModel!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkEgressNetworkConfig(o.egressNetworkConfig!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed1(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAgentConnectivityTemplate--;
}

core.Map<core.String, core.String> buildUnnamed2() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed2(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAgentGateway = 0;
api.AgentGateway buildAgentGateway() {
  final o = api.AgentGateway();
  buildCounterAgentGateway++;
  if (buildCounterAgentGateway < 3) {
    o.agentConnectivityTemplate = 'foo';
    o.agentGatewayCard = buildAgentGatewayAgentGatewayOutputCard();
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.googleManaged = buildAgentGatewayGoogleManaged();
    o.labels = buildUnnamed2();
    o.name = 'foo';
    o.networkConfig = buildAgentGatewayNetworkConfig();
    o.protocols = buildUnnamed3();
    o.registries = buildUnnamed4();
    o.selfManaged = buildAgentGatewaySelfManaged();
    o.updateTime = 'foo';
  }
  buildCounterAgentGateway--;
  return o;
}

void checkAgentGateway(api.AgentGateway o) {
  buildCounterAgentGateway++;
  if (buildCounterAgentGateway < 3) {
    unittest.expect(o.agentConnectivityTemplate!, unittest.equals('foo'));
    checkAgentGatewayAgentGatewayOutputCard(o.agentGatewayCard!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkAgentGatewayGoogleManaged(o.googleManaged!);
    checkUnnamed2(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkAgentGatewayNetworkConfig(o.networkConfig!);
    checkUnnamed3(o.protocols!);
    checkUnnamed4(o.registries!);
    checkAgentGatewaySelfManaged(o.selfManaged!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAgentGateway--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAgentGatewayAgentGatewayOutputCard = 0;
api.AgentGatewayAgentGatewayOutputCard
buildAgentGatewayAgentGatewayOutputCard() {
  final o = api.AgentGatewayAgentGatewayOutputCard();
  buildCounterAgentGatewayAgentGatewayOutputCard++;
  if (buildCounterAgentGatewayAgentGatewayOutputCard < 3) {
    o.mtlsEndpoint = 'foo';
    o.rootCertificates = buildUnnamed5();
    o.serviceExtensionsServiceAccount = 'foo';
  }
  buildCounterAgentGatewayAgentGatewayOutputCard--;
  return o;
}

void checkAgentGatewayAgentGatewayOutputCard(
  api.AgentGatewayAgentGatewayOutputCard o,
) {
  buildCounterAgentGatewayAgentGatewayOutputCard++;
  if (buildCounterAgentGatewayAgentGatewayOutputCard < 3) {
    unittest.expect(o.mtlsEndpoint!, unittest.equals('foo'));
    checkUnnamed5(o.rootCertificates!);
    unittest.expect(o.serviceExtensionsServiceAccount!, unittest.equals('foo'));
  }
  buildCounterAgentGatewayAgentGatewayOutputCard--;
}

core.int buildCounterAgentGatewayGoogleManaged = 0;
api.AgentGatewayGoogleManaged buildAgentGatewayGoogleManaged() {
  final o = api.AgentGatewayGoogleManaged();
  buildCounterAgentGatewayGoogleManaged++;
  if (buildCounterAgentGatewayGoogleManaged < 3) {
    o.governedAccessPath = 'foo';
  }
  buildCounterAgentGatewayGoogleManaged--;
  return o;
}

void checkAgentGatewayGoogleManaged(api.AgentGatewayGoogleManaged o) {
  buildCounterAgentGatewayGoogleManaged++;
  if (buildCounterAgentGatewayGoogleManaged < 3) {
    unittest.expect(o.governedAccessPath!, unittest.equals('foo'));
  }
  buildCounterAgentGatewayGoogleManaged--;
}

core.int buildCounterAgentGatewayNetworkConfig = 0;
api.AgentGatewayNetworkConfig buildAgentGatewayNetworkConfig() {
  final o = api.AgentGatewayNetworkConfig();
  buildCounterAgentGatewayNetworkConfig++;
  if (buildCounterAgentGatewayNetworkConfig < 3) {
    o.dnsPeeringConfig = buildAgentGatewayNetworkConfigDnsPeeringConfig();
    o.egress = buildAgentGatewayNetworkConfigEgress();
  }
  buildCounterAgentGatewayNetworkConfig--;
  return o;
}

void checkAgentGatewayNetworkConfig(api.AgentGatewayNetworkConfig o) {
  buildCounterAgentGatewayNetworkConfig++;
  if (buildCounterAgentGatewayNetworkConfig < 3) {
    checkAgentGatewayNetworkConfigDnsPeeringConfig(o.dnsPeeringConfig!);
    checkAgentGatewayNetworkConfigEgress(o.egress!);
  }
  buildCounterAgentGatewayNetworkConfig--;
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAgentGatewayNetworkConfigDnsPeeringConfig = 0;
api.AgentGatewayNetworkConfigDnsPeeringConfig
buildAgentGatewayNetworkConfigDnsPeeringConfig() {
  final o = api.AgentGatewayNetworkConfigDnsPeeringConfig();
  buildCounterAgentGatewayNetworkConfigDnsPeeringConfig++;
  if (buildCounterAgentGatewayNetworkConfigDnsPeeringConfig < 3) {
    o.domains = buildUnnamed6();
    o.targetNetwork = 'foo';
    o.targetProject = 'foo';
  }
  buildCounterAgentGatewayNetworkConfigDnsPeeringConfig--;
  return o;
}

void checkAgentGatewayNetworkConfigDnsPeeringConfig(
  api.AgentGatewayNetworkConfigDnsPeeringConfig o,
) {
  buildCounterAgentGatewayNetworkConfigDnsPeeringConfig++;
  if (buildCounterAgentGatewayNetworkConfigDnsPeeringConfig < 3) {
    checkUnnamed6(o.domains!);
    unittest.expect(o.targetNetwork!, unittest.equals('foo'));
    unittest.expect(o.targetProject!, unittest.equals('foo'));
  }
  buildCounterAgentGatewayNetworkConfigDnsPeeringConfig--;
}

core.int buildCounterAgentGatewayNetworkConfigEgress = 0;
api.AgentGatewayNetworkConfigEgress buildAgentGatewayNetworkConfigEgress() {
  final o = api.AgentGatewayNetworkConfigEgress();
  buildCounterAgentGatewayNetworkConfigEgress++;
  if (buildCounterAgentGatewayNetworkConfigEgress < 3) {
    o.networkAttachment = 'foo';
  }
  buildCounterAgentGatewayNetworkConfigEgress--;
  return o;
}

void checkAgentGatewayNetworkConfigEgress(
  api.AgentGatewayNetworkConfigEgress o,
) {
  buildCounterAgentGatewayNetworkConfigEgress++;
  if (buildCounterAgentGatewayNetworkConfigEgress < 3) {
    unittest.expect(o.networkAttachment!, unittest.equals('foo'));
  }
  buildCounterAgentGatewayNetworkConfigEgress--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAgentGatewaySelfManaged = 0;
api.AgentGatewaySelfManaged buildAgentGatewaySelfManaged() {
  final o = api.AgentGatewaySelfManaged();
  buildCounterAgentGatewaySelfManaged++;
  if (buildCounterAgentGatewaySelfManaged < 3) {
    o.resourceUri = 'foo';
    o.resourceUris = buildUnnamed7();
  }
  buildCounterAgentGatewaySelfManaged--;
  return o;
}

void checkAgentGatewaySelfManaged(api.AgentGatewaySelfManaged o) {
  buildCounterAgentGatewaySelfManaged++;
  if (buildCounterAgentGatewaySelfManaged < 3) {
    unittest.expect(o.resourceUri!, unittest.equals('foo'));
    checkUnnamed7(o.resourceUris!);
  }
  buildCounterAgentGatewaySelfManaged--;
}

core.List<api.AuditLogConfig> buildUnnamed8() => [
  buildAuditLogConfig(),
  buildAuditLogConfig(),
];

void checkUnnamed8(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed8();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed8(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed9();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed9(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
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

core.Map<core.String, core.String> buildUnnamed12() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed12(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
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

core.int buildCounterAuthzExtension = 0;
api.AuthzExtension buildAuthzExtension() {
  final o = api.AuthzExtension();
  buildCounterAuthzExtension++;
  if (buildCounterAuthzExtension < 3) {
    o.authority = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.failOpen = true;
    o.forwardAttributes = buildUnnamed10();
    o.forwardHeaders = buildUnnamed11();
    o.labels = buildUnnamed12();
    o.loadBalancingScheme = 'foo';
    o.metadata = buildUnnamed13();
    o.name = 'foo';
    o.service = 'foo';
    o.timeout = 'foo';
    o.updateTime = 'foo';
    o.wireFormat = 'foo';
  }
  buildCounterAuthzExtension--;
  return o;
}

void checkAuthzExtension(api.AuthzExtension o) {
  buildCounterAuthzExtension++;
  if (buildCounterAuthzExtension < 3) {
    unittest.expect(o.authority!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.failOpen!, unittest.isTrue);
    checkUnnamed10(o.forwardAttributes!);
    checkUnnamed11(o.forwardHeaders!);
    checkUnnamed12(o.labels!);
    unittest.expect(o.loadBalancingScheme!, unittest.equals('foo'));
    checkUnnamed13(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
    unittest.expect(o.timeout!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.wireFormat!, unittest.equals('foo'));
  }
  buildCounterAuthzExtension--;
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
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
    o.members = buildUnnamed14();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed14(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
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

core.int buildCounterDnsPeeringConfig = 0;
api.DnsPeeringConfig buildDnsPeeringConfig() {
  final o = api.DnsPeeringConfig();
  buildCounterDnsPeeringConfig++;
  if (buildCounterDnsPeeringConfig < 3) {
    o.domain = 'foo';
    o.targetNetwork = 'foo';
  }
  buildCounterDnsPeeringConfig--;
  return o;
}

void checkDnsPeeringConfig(api.DnsPeeringConfig o) {
  buildCounterDnsPeeringConfig++;
  if (buildCounterDnsPeeringConfig < 3) {
    unittest.expect(o.domain!, unittest.equals('foo'));
    unittest.expect(o.targetNetwork!, unittest.equals('foo'));
  }
  buildCounterDnsPeeringConfig--;
}

core.int buildCounterEgressNetworkConfig = 0;
api.EgressNetworkConfig buildEgressNetworkConfig() {
  final o = api.EgressNetworkConfig();
  buildCounterEgressNetworkConfig++;
  if (buildCounterEgressNetworkConfig < 3) {
    o.dnsPeeringConfig = buildDnsPeeringConfig();
    o.networkAttachment = 'foo';
    o.trustConfig = 'foo';
    o.vpcEgress = 'foo';
  }
  buildCounterEgressNetworkConfig--;
  return o;
}

void checkEgressNetworkConfig(api.EgressNetworkConfig o) {
  buildCounterEgressNetworkConfig++;
  if (buildCounterEgressNetworkConfig < 3) {
    checkDnsPeeringConfig(o.dnsPeeringConfig!);
    unittest.expect(o.networkAttachment!, unittest.equals('foo'));
    unittest.expect(o.trustConfig!, unittest.equals('foo'));
    unittest.expect(o.vpcEgress!, unittest.equals('foo'));
  }
  buildCounterEgressNetworkConfig--;
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

core.int buildCounterEndpointMatcher = 0;
api.EndpointMatcher buildEndpointMatcher() {
  final o = api.EndpointMatcher();
  buildCounterEndpointMatcher++;
  if (buildCounterEndpointMatcher < 3) {
    o.metadataLabelMatcher = buildEndpointMatcherMetadataLabelMatcher();
  }
  buildCounterEndpointMatcher--;
  return o;
}

void checkEndpointMatcher(api.EndpointMatcher o) {
  buildCounterEndpointMatcher++;
  if (buildCounterEndpointMatcher < 3) {
    checkEndpointMatcherMetadataLabelMatcher(o.metadataLabelMatcher!);
  }
  buildCounterEndpointMatcher--;
}

core.List<api.EndpointMatcherMetadataLabelMatcherMetadataLabels>
buildUnnamed15() => [
  buildEndpointMatcherMetadataLabelMatcherMetadataLabels(),
  buildEndpointMatcherMetadataLabelMatcherMetadataLabels(),
];

void checkUnnamed15(
  core.List<api.EndpointMatcherMetadataLabelMatcherMetadataLabels> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpointMatcherMetadataLabelMatcherMetadataLabels(o[0]);
  checkEndpointMatcherMetadataLabelMatcherMetadataLabels(o[1]);
}

core.int buildCounterEndpointMatcherMetadataLabelMatcher = 0;
api.EndpointMatcherMetadataLabelMatcher
buildEndpointMatcherMetadataLabelMatcher() {
  final o = api.EndpointMatcherMetadataLabelMatcher();
  buildCounterEndpointMatcherMetadataLabelMatcher++;
  if (buildCounterEndpointMatcherMetadataLabelMatcher < 3) {
    o.metadataLabelMatchCriteria = 'foo';
    o.metadataLabels = buildUnnamed15();
  }
  buildCounterEndpointMatcherMetadataLabelMatcher--;
  return o;
}

void checkEndpointMatcherMetadataLabelMatcher(
  api.EndpointMatcherMetadataLabelMatcher o,
) {
  buildCounterEndpointMatcherMetadataLabelMatcher++;
  if (buildCounterEndpointMatcherMetadataLabelMatcher < 3) {
    unittest.expect(o.metadataLabelMatchCriteria!, unittest.equals('foo'));
    checkUnnamed15(o.metadataLabels!);
  }
  buildCounterEndpointMatcherMetadataLabelMatcher--;
}

core.int buildCounterEndpointMatcherMetadataLabelMatcherMetadataLabels = 0;
api.EndpointMatcherMetadataLabelMatcherMetadataLabels
buildEndpointMatcherMetadataLabelMatcherMetadataLabels() {
  final o = api.EndpointMatcherMetadataLabelMatcherMetadataLabels();
  buildCounterEndpointMatcherMetadataLabelMatcherMetadataLabels++;
  if (buildCounterEndpointMatcherMetadataLabelMatcherMetadataLabels < 3) {
    o.labelName = 'foo';
    o.labelValue = 'foo';
  }
  buildCounterEndpointMatcherMetadataLabelMatcherMetadataLabels--;
  return o;
}

void checkEndpointMatcherMetadataLabelMatcherMetadataLabels(
  api.EndpointMatcherMetadataLabelMatcherMetadataLabels o,
) {
  buildCounterEndpointMatcherMetadataLabelMatcherMetadataLabels++;
  if (buildCounterEndpointMatcherMetadataLabelMatcherMetadataLabels < 3) {
    unittest.expect(o.labelName!, unittest.equals('foo'));
    unittest.expect(o.labelValue!, unittest.equals('foo'));
  }
  buildCounterEndpointMatcherMetadataLabelMatcherMetadataLabels--;
}

core.Map<core.String, core.String> buildUnnamed16() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed16(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterEndpointPolicy = 0;
api.EndpointPolicy buildEndpointPolicy() {
  final o = api.EndpointPolicy();
  buildCounterEndpointPolicy++;
  if (buildCounterEndpointPolicy < 3) {
    o.authorizationPolicy = 'foo';
    o.clientTlsPolicy = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.endpointMatcher = buildEndpointMatcher();
    o.labels = buildUnnamed16();
    o.name = 'foo';
    o.serverTlsPolicy = 'foo';
    o.trafficPortSelector = buildTrafficPortSelector();
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterEndpointPolicy--;
  return o;
}

void checkEndpointPolicy(api.EndpointPolicy o) {
  buildCounterEndpointPolicy++;
  if (buildCounterEndpointPolicy < 3) {
    unittest.expect(o.authorizationPolicy!, unittest.equals('foo'));
    unittest.expect(o.clientTlsPolicy!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkEndpointMatcher(o.endpointMatcher!);
    checkUnnamed16(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.serverTlsPolicy!, unittest.equals('foo'));
    checkTrafficPortSelector(o.trafficPortSelector!);
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterEndpointPolicy--;
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

core.Map<core.String, core.String> buildUnnamed17() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed17(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.ExtensionBindingMatchCondition> buildUnnamed18() => [
  buildExtensionBindingMatchCondition(),
  buildExtensionBindingMatchCondition(),
];

void checkUnnamed18(core.List<api.ExtensionBindingMatchCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtensionBindingMatchCondition(o[0]);
  checkExtensionBindingMatchCondition(o[1]);
}

core.Map<core.String, core.String> buildUnnamed19() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed19(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterExtensionBinding = 0;
api.ExtensionBinding buildExtensionBinding() {
  final o = api.ExtensionBinding();
  buildCounterExtensionBinding++;
  if (buildCounterExtensionBinding < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.failOpen = true;
    o.labels = buildUnnamed17();
    o.matchConditions = buildUnnamed18();
    o.name = 'foo';
    o.priority = 42;
    o.producerExtension = 'foo';
    o.producerMetadata = buildUnnamed19();
    o.target = buildExtensionBindingTarget();
    o.updateTime = 'foo';
  }
  buildCounterExtensionBinding--;
  return o;
}

void checkExtensionBinding(api.ExtensionBinding o) {
  buildCounterExtensionBinding++;
  if (buildCounterExtensionBinding < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.failOpen!, unittest.isTrue);
    checkUnnamed17(o.labels!);
    checkUnnamed18(o.matchConditions!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.priority!, unittest.equals(42));
    unittest.expect(o.producerExtension!, unittest.equals('foo'));
    checkUnnamed19(o.producerMetadata!);
    checkExtensionBindingTarget(o.target!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterExtensionBinding--;
}

core.int buildCounterExtensionBindingMatchCondition = 0;
api.ExtensionBindingMatchCondition buildExtensionBindingMatchCondition() {
  final o = api.ExtensionBindingMatchCondition();
  buildCounterExtensionBindingMatchCondition++;
  if (buildCounterExtensionBindingMatchCondition < 3) {
    o.to = buildExtensionBindingMatchConditionTo();
  }
  buildCounterExtensionBindingMatchCondition--;
  return o;
}

void checkExtensionBindingMatchCondition(api.ExtensionBindingMatchCondition o) {
  buildCounterExtensionBindingMatchCondition++;
  if (buildCounterExtensionBindingMatchCondition < 3) {
    checkExtensionBindingMatchConditionTo(o.to!);
  }
  buildCounterExtensionBindingMatchCondition--;
}

core.int buildCounterExtensionBindingMatchConditionHeaderMatch = 0;
api.ExtensionBindingMatchConditionHeaderMatch
buildExtensionBindingMatchConditionHeaderMatch() {
  final o = api.ExtensionBindingMatchConditionHeaderMatch();
  buildCounterExtensionBindingMatchConditionHeaderMatch++;
  if (buildCounterExtensionBindingMatchConditionHeaderMatch < 3) {
    o.name = 'foo';
    o.value = buildExtensionBindingMatchConditionStringMatch();
  }
  buildCounterExtensionBindingMatchConditionHeaderMatch--;
  return o;
}

void checkExtensionBindingMatchConditionHeaderMatch(
  api.ExtensionBindingMatchConditionHeaderMatch o,
) {
  buildCounterExtensionBindingMatchConditionHeaderMatch++;
  if (buildCounterExtensionBindingMatchConditionHeaderMatch < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkExtensionBindingMatchConditionStringMatch(o.value!);
  }
  buildCounterExtensionBindingMatchConditionHeaderMatch--;
}

core.int buildCounterExtensionBindingMatchConditionStringMatch = 0;
api.ExtensionBindingMatchConditionStringMatch
buildExtensionBindingMatchConditionStringMatch() {
  final o = api.ExtensionBindingMatchConditionStringMatch();
  buildCounterExtensionBindingMatchConditionStringMatch++;
  if (buildCounterExtensionBindingMatchConditionStringMatch < 3) {
    o.contains = 'foo';
    o.exact = 'foo';
    o.ignoreCase = true;
    o.prefix = 'foo';
    o.suffix = 'foo';
  }
  buildCounterExtensionBindingMatchConditionStringMatch--;
  return o;
}

void checkExtensionBindingMatchConditionStringMatch(
  api.ExtensionBindingMatchConditionStringMatch o,
) {
  buildCounterExtensionBindingMatchConditionStringMatch++;
  if (buildCounterExtensionBindingMatchConditionStringMatch < 3) {
    unittest.expect(o.contains!, unittest.equals('foo'));
    unittest.expect(o.exact!, unittest.equals('foo'));
    unittest.expect(o.ignoreCase!, unittest.isTrue);
    unittest.expect(o.prefix!, unittest.equals('foo'));
    unittest.expect(o.suffix!, unittest.equals('foo'));
  }
  buildCounterExtensionBindingMatchConditionStringMatch--;
}

core.int buildCounterExtensionBindingMatchConditionTo = 0;
api.ExtensionBindingMatchConditionTo buildExtensionBindingMatchConditionTo() {
  final o = api.ExtensionBindingMatchConditionTo();
  buildCounterExtensionBindingMatchConditionTo++;
  if (buildCounterExtensionBindingMatchConditionTo < 3) {
    o.destination = buildExtensionBindingMatchConditionToDestination();
    o.notDestination = buildExtensionBindingMatchConditionToDestination();
  }
  buildCounterExtensionBindingMatchConditionTo--;
  return o;
}

void checkExtensionBindingMatchConditionTo(
  api.ExtensionBindingMatchConditionTo o,
) {
  buildCounterExtensionBindingMatchConditionTo++;
  if (buildCounterExtensionBindingMatchConditionTo < 3) {
    checkExtensionBindingMatchConditionToDestination(o.destination!);
    checkExtensionBindingMatchConditionToDestination(o.notDestination!);
  }
  buildCounterExtensionBindingMatchConditionTo--;
}

core.List<api.ExtensionBindingMatchConditionStringMatch> buildUnnamed20() => [
  buildExtensionBindingMatchConditionStringMatch(),
  buildExtensionBindingMatchConditionStringMatch(),
];

void checkUnnamed20(
  core.List<api.ExtensionBindingMatchConditionStringMatch> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtensionBindingMatchConditionStringMatch(o[0]);
  checkExtensionBindingMatchConditionStringMatch(o[1]);
}

core.List<api.ExtensionBindingMatchConditionStringMatch> buildUnnamed21() => [
  buildExtensionBindingMatchConditionStringMatch(),
  buildExtensionBindingMatchConditionStringMatch(),
];

void checkUnnamed21(
  core.List<api.ExtensionBindingMatchConditionStringMatch> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtensionBindingMatchConditionStringMatch(o[0]);
  checkExtensionBindingMatchConditionStringMatch(o[1]);
}

core.List<api.ExtensionBindingMatchConditionStringMatch> buildUnnamed22() => [
  buildExtensionBindingMatchConditionStringMatch(),
  buildExtensionBindingMatchConditionStringMatch(),
];

void checkUnnamed22(
  core.List<api.ExtensionBindingMatchConditionStringMatch> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtensionBindingMatchConditionStringMatch(o[0]);
  checkExtensionBindingMatchConditionStringMatch(o[1]);
}

core.int buildCounterExtensionBindingMatchConditionToDestination = 0;
api.ExtensionBindingMatchConditionToDestination
buildExtensionBindingMatchConditionToDestination() {
  final o = api.ExtensionBindingMatchConditionToDestination();
  buildCounterExtensionBindingMatchConditionToDestination++;
  if (buildCounterExtensionBindingMatchConditionToDestination < 3) {
    o.headerSet = buildExtensionBindingMatchConditionToDestinationHeaderSet();
    o.hosts = buildUnnamed20();
    o.paths = buildUnnamed21();
    o.resources = buildUnnamed22();
  }
  buildCounterExtensionBindingMatchConditionToDestination--;
  return o;
}

void checkExtensionBindingMatchConditionToDestination(
  api.ExtensionBindingMatchConditionToDestination o,
) {
  buildCounterExtensionBindingMatchConditionToDestination++;
  if (buildCounterExtensionBindingMatchConditionToDestination < 3) {
    checkExtensionBindingMatchConditionToDestinationHeaderSet(o.headerSet!);
    checkUnnamed20(o.hosts!);
    checkUnnamed21(o.paths!);
    checkUnnamed22(o.resources!);
  }
  buildCounterExtensionBindingMatchConditionToDestination--;
}

core.List<api.ExtensionBindingMatchConditionHeaderMatch> buildUnnamed23() => [
  buildExtensionBindingMatchConditionHeaderMatch(),
  buildExtensionBindingMatchConditionHeaderMatch(),
];

void checkUnnamed23(
  core.List<api.ExtensionBindingMatchConditionHeaderMatch> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtensionBindingMatchConditionHeaderMatch(o[0]);
  checkExtensionBindingMatchConditionHeaderMatch(o[1]);
}

core.int buildCounterExtensionBindingMatchConditionToDestinationHeaderSet = 0;
api.ExtensionBindingMatchConditionToDestinationHeaderSet
buildExtensionBindingMatchConditionToDestinationHeaderSet() {
  final o = api.ExtensionBindingMatchConditionToDestinationHeaderSet();
  buildCounterExtensionBindingMatchConditionToDestinationHeaderSet++;
  if (buildCounterExtensionBindingMatchConditionToDestinationHeaderSet < 3) {
    o.headers = buildUnnamed23();
  }
  buildCounterExtensionBindingMatchConditionToDestinationHeaderSet--;
  return o;
}

void checkExtensionBindingMatchConditionToDestinationHeaderSet(
  api.ExtensionBindingMatchConditionToDestinationHeaderSet o,
) {
  buildCounterExtensionBindingMatchConditionToDestinationHeaderSet++;
  if (buildCounterExtensionBindingMatchConditionToDestinationHeaderSet < 3) {
    checkUnnamed23(o.headers!);
  }
  buildCounterExtensionBindingMatchConditionToDestinationHeaderSet--;
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExtensionBindingTarget = 0;
api.ExtensionBindingTarget buildExtensionBindingTarget() {
  final o = api.ExtensionBindingTarget();
  buildCounterExtensionBindingTarget++;
  if (buildCounterExtensionBindingTarget < 3) {
    o.resources = buildUnnamed24();
    o.scope = buildExtensionBindingTargetScope();
  }
  buildCounterExtensionBindingTarget--;
  return o;
}

void checkExtensionBindingTarget(api.ExtensionBindingTarget o) {
  buildCounterExtensionBindingTarget++;
  if (buildCounterExtensionBindingTarget < 3) {
    checkUnnamed24(o.resources!);
    checkExtensionBindingTargetScope(o.scope!);
  }
  buildCounterExtensionBindingTarget--;
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExtensionBindingTargetScope = 0;
api.ExtensionBindingTargetScope buildExtensionBindingTargetScope() {
  final o = api.ExtensionBindingTargetScope();
  buildCounterExtensionBindingTargetScope++;
  if (buildCounterExtensionBindingTargetScope < 3) {
    o.parent = 'foo';
    o.resourceTypes = buildUnnamed25();
  }
  buildCounterExtensionBindingTargetScope--;
  return o;
}

void checkExtensionBindingTargetScope(api.ExtensionBindingTargetScope o) {
  buildCounterExtensionBindingTargetScope++;
  if (buildCounterExtensionBindingTargetScope < 3) {
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkUnnamed25(o.resourceTypes!);
  }
  buildCounterExtensionBindingTargetScope--;
}

core.List<api.ExtensionChainExtension> buildUnnamed26() => [
  buildExtensionChainExtension(),
  buildExtensionChainExtension(),
];

void checkUnnamed26(core.List<api.ExtensionChainExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtensionChainExtension(o[0]);
  checkExtensionChainExtension(o[1]);
}

core.int buildCounterExtensionChain = 0;
api.ExtensionChain buildExtensionChain() {
  final o = api.ExtensionChain();
  buildCounterExtensionChain++;
  if (buildCounterExtensionChain < 3) {
    o.extensions = buildUnnamed26();
    o.matchCondition = buildExtensionChainMatchCondition();
    o.name = 'foo';
  }
  buildCounterExtensionChain--;
  return o;
}

void checkExtensionChain(api.ExtensionChain o) {
  buildCounterExtensionChain++;
  if (buildCounterExtensionChain < 3) {
    checkUnnamed26(o.extensions!);
    checkExtensionChainMatchCondition(o.matchCondition!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterExtensionChain--;
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed29() => {
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

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
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

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExtensionChainExtension = 0;
api.ExtensionChainExtension buildExtensionChainExtension() {
  final o = api.ExtensionChainExtension();
  buildCounterExtensionChainExtension++;
  if (buildCounterExtensionChainExtension < 3) {
    o.authority = 'foo';
    o.failOpen = true;
    o.forwardAttributes = buildUnnamed27();
    o.forwardHeaders = buildUnnamed28();
    o.metadata = buildUnnamed29();
    o.name = 'foo';
    o.observabilityMode = true;
    o.requestBodySendMode = 'foo';
    o.responseBodySendMode = 'foo';
    o.service = 'foo';
    o.supportedEvents = buildUnnamed30();
    o.timeout = 'foo';
  }
  buildCounterExtensionChainExtension--;
  return o;
}

void checkExtensionChainExtension(api.ExtensionChainExtension o) {
  buildCounterExtensionChainExtension++;
  if (buildCounterExtensionChainExtension < 3) {
    unittest.expect(o.authority!, unittest.equals('foo'));
    unittest.expect(o.failOpen!, unittest.isTrue);
    checkUnnamed27(o.forwardAttributes!);
    checkUnnamed28(o.forwardHeaders!);
    checkUnnamed29(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.observabilityMode!, unittest.isTrue);
    unittest.expect(o.requestBodySendMode!, unittest.equals('foo'));
    unittest.expect(o.responseBodySendMode!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
    checkUnnamed30(o.supportedEvents!);
    unittest.expect(o.timeout!, unittest.equals('foo'));
  }
  buildCounterExtensionChainExtension--;
}

core.int buildCounterExtensionChainMatchCondition = 0;
api.ExtensionChainMatchCondition buildExtensionChainMatchCondition() {
  final o = api.ExtensionChainMatchCondition();
  buildCounterExtensionChainMatchCondition++;
  if (buildCounterExtensionChainMatchCondition < 3) {
    o.celExpression = 'foo';
  }
  buildCounterExtensionChainMatchCondition--;
  return o;
}

void checkExtensionChainMatchCondition(api.ExtensionChainMatchCondition o) {
  buildCounterExtensionChainMatchCondition++;
  if (buildCounterExtensionChainMatchCondition < 3) {
    unittest.expect(o.celExpression!, unittest.equals('foo'));
  }
  buildCounterExtensionChainMatchCondition--;
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed33() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed33(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.int> buildUnnamed34() => [42, 42];

void checkUnnamed34(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGateway = 0;
api.Gateway buildGateway() {
  final o = api.Gateway();
  buildCounterGateway++;
  if (buildCounterGateway < 3) {
    o.addresses = buildUnnamed31();
    o.allPorts = true;
    o.allowGlobalAccess = true;
    o.certificateUrls = buildUnnamed32();
    o.createTime = 'foo';
    o.description = 'foo';
    o.envoyHeaders = 'foo';
    o.gatewaySecurityPolicy = 'foo';
    o.ipVersion = 'foo';
    o.labels = buildUnnamed33();
    o.name = 'foo';
    o.network = 'foo';
    o.ports = buildUnnamed34();
    o.routingMode = 'foo';
    o.scope = 'foo';
    o.selfLink = 'foo';
    o.serverTlsPolicy = 'foo';
    o.subnetwork = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGateway--;
  return o;
}

void checkGateway(api.Gateway o) {
  buildCounterGateway++;
  if (buildCounterGateway < 3) {
    checkUnnamed31(o.addresses!);
    unittest.expect(o.allPorts!, unittest.isTrue);
    unittest.expect(o.allowGlobalAccess!, unittest.isTrue);
    checkUnnamed32(o.certificateUrls!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.envoyHeaders!, unittest.equals('foo'));
    unittest.expect(o.gatewaySecurityPolicy!, unittest.equals('foo'));
    unittest.expect(o.ipVersion!, unittest.equals('foo'));
    checkUnnamed33(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    checkUnnamed34(o.ports!);
    unittest.expect(o.routingMode!, unittest.equals('foo'));
    unittest.expect(o.scope!, unittest.equals('foo'));
    unittest.expect(o.selfLink!, unittest.equals('foo'));
    unittest.expect(o.serverTlsPolicy!, unittest.equals('foo'));
    unittest.expect(o.subnetwork!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGateway--;
}

core.int buildCounterGatewayRouteView = 0;
api.GatewayRouteView buildGatewayRouteView() {
  final o = api.GatewayRouteView();
  buildCounterGatewayRouteView++;
  if (buildCounterGatewayRouteView < 3) {
    o.name = 'foo';
    o.routeId = 'foo';
    o.routeLocation = 'foo';
    o.routeProjectNumber = 'foo';
    o.routeType = 'foo';
  }
  buildCounterGatewayRouteView--;
  return o;
}

void checkGatewayRouteView(api.GatewayRouteView o) {
  buildCounterGatewayRouteView++;
  if (buildCounterGatewayRouteView < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.routeId!, unittest.equals('foo'));
    unittest.expect(o.routeLocation!, unittest.equals('foo'));
    unittest.expect(o.routeProjectNumber!, unittest.equals('foo'));
    unittest.expect(o.routeType!, unittest.equals('foo'));
  }
  buildCounterGatewayRouteView--;
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed37() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed37(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GrpcRouteRouteRule> buildUnnamed39() => [
  buildGrpcRouteRouteRule(),
  buildGrpcRouteRouteRule(),
];

void checkUnnamed39(core.List<api.GrpcRouteRouteRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrpcRouteRouteRule(o[0]);
  checkGrpcRouteRouteRule(o[1]);
}

core.int buildCounterGrpcRoute = 0;
api.GrpcRoute buildGrpcRoute() {
  final o = api.GrpcRoute();
  buildCounterGrpcRoute++;
  if (buildCounterGrpcRoute < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.gateways = buildUnnamed35();
    o.hostnames = buildUnnamed36();
    o.labels = buildUnnamed37();
    o.meshes = buildUnnamed38();
    o.name = 'foo';
    o.rules = buildUnnamed39();
    o.selfLink = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGrpcRoute--;
  return o;
}

void checkGrpcRoute(api.GrpcRoute o) {
  buildCounterGrpcRoute++;
  if (buildCounterGrpcRoute < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed35(o.gateways!);
    checkUnnamed36(o.hostnames!);
    checkUnnamed37(o.labels!);
    checkUnnamed38(o.meshes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed39(o.rules!);
    unittest.expect(o.selfLink!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGrpcRoute--;
}

core.int buildCounterGrpcRouteDestination = 0;
api.GrpcRouteDestination buildGrpcRouteDestination() {
  final o = api.GrpcRouteDestination();
  buildCounterGrpcRouteDestination++;
  if (buildCounterGrpcRouteDestination < 3) {
    o.serviceName = 'foo';
    o.weight = 42;
  }
  buildCounterGrpcRouteDestination--;
  return o;
}

void checkGrpcRouteDestination(api.GrpcRouteDestination o) {
  buildCounterGrpcRouteDestination++;
  if (buildCounterGrpcRouteDestination < 3) {
    unittest.expect(o.serviceName!, unittest.equals('foo'));
    unittest.expect(o.weight!, unittest.equals(42));
  }
  buildCounterGrpcRouteDestination--;
}

core.int buildCounterGrpcRouteFaultInjectionPolicy = 0;
api.GrpcRouteFaultInjectionPolicy buildGrpcRouteFaultInjectionPolicy() {
  final o = api.GrpcRouteFaultInjectionPolicy();
  buildCounterGrpcRouteFaultInjectionPolicy++;
  if (buildCounterGrpcRouteFaultInjectionPolicy < 3) {
    o.abort = buildGrpcRouteFaultInjectionPolicyAbort();
    o.delay = buildGrpcRouteFaultInjectionPolicyDelay();
  }
  buildCounterGrpcRouteFaultInjectionPolicy--;
  return o;
}

void checkGrpcRouteFaultInjectionPolicy(api.GrpcRouteFaultInjectionPolicy o) {
  buildCounterGrpcRouteFaultInjectionPolicy++;
  if (buildCounterGrpcRouteFaultInjectionPolicy < 3) {
    checkGrpcRouteFaultInjectionPolicyAbort(o.abort!);
    checkGrpcRouteFaultInjectionPolicyDelay(o.delay!);
  }
  buildCounterGrpcRouteFaultInjectionPolicy--;
}

core.int buildCounterGrpcRouteFaultInjectionPolicyAbort = 0;
api.GrpcRouteFaultInjectionPolicyAbort
buildGrpcRouteFaultInjectionPolicyAbort() {
  final o = api.GrpcRouteFaultInjectionPolicyAbort();
  buildCounterGrpcRouteFaultInjectionPolicyAbort++;
  if (buildCounterGrpcRouteFaultInjectionPolicyAbort < 3) {
    o.httpStatus = 42;
    o.percentage = 42;
  }
  buildCounterGrpcRouteFaultInjectionPolicyAbort--;
  return o;
}

void checkGrpcRouteFaultInjectionPolicyAbort(
  api.GrpcRouteFaultInjectionPolicyAbort o,
) {
  buildCounterGrpcRouteFaultInjectionPolicyAbort++;
  if (buildCounterGrpcRouteFaultInjectionPolicyAbort < 3) {
    unittest.expect(o.httpStatus!, unittest.equals(42));
    unittest.expect(o.percentage!, unittest.equals(42));
  }
  buildCounterGrpcRouteFaultInjectionPolicyAbort--;
}

core.int buildCounterGrpcRouteFaultInjectionPolicyDelay = 0;
api.GrpcRouteFaultInjectionPolicyDelay
buildGrpcRouteFaultInjectionPolicyDelay() {
  final o = api.GrpcRouteFaultInjectionPolicyDelay();
  buildCounterGrpcRouteFaultInjectionPolicyDelay++;
  if (buildCounterGrpcRouteFaultInjectionPolicyDelay < 3) {
    o.fixedDelay = 'foo';
    o.percentage = 42;
  }
  buildCounterGrpcRouteFaultInjectionPolicyDelay--;
  return o;
}

void checkGrpcRouteFaultInjectionPolicyDelay(
  api.GrpcRouteFaultInjectionPolicyDelay o,
) {
  buildCounterGrpcRouteFaultInjectionPolicyDelay++;
  if (buildCounterGrpcRouteFaultInjectionPolicyDelay < 3) {
    unittest.expect(o.fixedDelay!, unittest.equals('foo'));
    unittest.expect(o.percentage!, unittest.equals(42));
  }
  buildCounterGrpcRouteFaultInjectionPolicyDelay--;
}

core.int buildCounterGrpcRouteHeaderMatch = 0;
api.GrpcRouteHeaderMatch buildGrpcRouteHeaderMatch() {
  final o = api.GrpcRouteHeaderMatch();
  buildCounterGrpcRouteHeaderMatch++;
  if (buildCounterGrpcRouteHeaderMatch < 3) {
    o.key = 'foo';
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterGrpcRouteHeaderMatch--;
  return o;
}

void checkGrpcRouteHeaderMatch(api.GrpcRouteHeaderMatch o) {
  buildCounterGrpcRouteHeaderMatch++;
  if (buildCounterGrpcRouteHeaderMatch < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGrpcRouteHeaderMatch--;
}

core.int buildCounterGrpcRouteMethodMatch = 0;
api.GrpcRouteMethodMatch buildGrpcRouteMethodMatch() {
  final o = api.GrpcRouteMethodMatch();
  buildCounterGrpcRouteMethodMatch++;
  if (buildCounterGrpcRouteMethodMatch < 3) {
    o.caseSensitive = true;
    o.grpcMethod = 'foo';
    o.grpcService = 'foo';
    o.type = 'foo';
  }
  buildCounterGrpcRouteMethodMatch--;
  return o;
}

void checkGrpcRouteMethodMatch(api.GrpcRouteMethodMatch o) {
  buildCounterGrpcRouteMethodMatch++;
  if (buildCounterGrpcRouteMethodMatch < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    unittest.expect(o.grpcMethod!, unittest.equals('foo'));
    unittest.expect(o.grpcService!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGrpcRouteMethodMatch--;
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGrpcRouteRetryPolicy = 0;
api.GrpcRouteRetryPolicy buildGrpcRouteRetryPolicy() {
  final o = api.GrpcRouteRetryPolicy();
  buildCounterGrpcRouteRetryPolicy++;
  if (buildCounterGrpcRouteRetryPolicy < 3) {
    o.numRetries = 42;
    o.retryConditions = buildUnnamed40();
  }
  buildCounterGrpcRouteRetryPolicy--;
  return o;
}

void checkGrpcRouteRetryPolicy(api.GrpcRouteRetryPolicy o) {
  buildCounterGrpcRouteRetryPolicy++;
  if (buildCounterGrpcRouteRetryPolicy < 3) {
    unittest.expect(o.numRetries!, unittest.equals(42));
    checkUnnamed40(o.retryConditions!);
  }
  buildCounterGrpcRouteRetryPolicy--;
}

core.List<api.GrpcRouteDestination> buildUnnamed41() => [
  buildGrpcRouteDestination(),
  buildGrpcRouteDestination(),
];

void checkUnnamed41(core.List<api.GrpcRouteDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrpcRouteDestination(o[0]);
  checkGrpcRouteDestination(o[1]);
}

core.int buildCounterGrpcRouteRouteAction = 0;
api.GrpcRouteRouteAction buildGrpcRouteRouteAction() {
  final o = api.GrpcRouteRouteAction();
  buildCounterGrpcRouteRouteAction++;
  if (buildCounterGrpcRouteRouteAction < 3) {
    o.destinations = buildUnnamed41();
    o.faultInjectionPolicy = buildGrpcRouteFaultInjectionPolicy();
    o.idleTimeout = 'foo';
    o.retryPolicy = buildGrpcRouteRetryPolicy();
    o.statefulSessionAffinity = buildGrpcRouteStatefulSessionAffinityPolicy();
    o.timeout = 'foo';
  }
  buildCounterGrpcRouteRouteAction--;
  return o;
}

void checkGrpcRouteRouteAction(api.GrpcRouteRouteAction o) {
  buildCounterGrpcRouteRouteAction++;
  if (buildCounterGrpcRouteRouteAction < 3) {
    checkUnnamed41(o.destinations!);
    checkGrpcRouteFaultInjectionPolicy(o.faultInjectionPolicy!);
    unittest.expect(o.idleTimeout!, unittest.equals('foo'));
    checkGrpcRouteRetryPolicy(o.retryPolicy!);
    checkGrpcRouteStatefulSessionAffinityPolicy(o.statefulSessionAffinity!);
    unittest.expect(o.timeout!, unittest.equals('foo'));
  }
  buildCounterGrpcRouteRouteAction--;
}

core.List<api.GrpcRouteHeaderMatch> buildUnnamed42() => [
  buildGrpcRouteHeaderMatch(),
  buildGrpcRouteHeaderMatch(),
];

void checkUnnamed42(core.List<api.GrpcRouteHeaderMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrpcRouteHeaderMatch(o[0]);
  checkGrpcRouteHeaderMatch(o[1]);
}

core.int buildCounterGrpcRouteRouteMatch = 0;
api.GrpcRouteRouteMatch buildGrpcRouteRouteMatch() {
  final o = api.GrpcRouteRouteMatch();
  buildCounterGrpcRouteRouteMatch++;
  if (buildCounterGrpcRouteRouteMatch < 3) {
    o.headers = buildUnnamed42();
    o.method = buildGrpcRouteMethodMatch();
  }
  buildCounterGrpcRouteRouteMatch--;
  return o;
}

void checkGrpcRouteRouteMatch(api.GrpcRouteRouteMatch o) {
  buildCounterGrpcRouteRouteMatch++;
  if (buildCounterGrpcRouteRouteMatch < 3) {
    checkUnnamed42(o.headers!);
    checkGrpcRouteMethodMatch(o.method!);
  }
  buildCounterGrpcRouteRouteMatch--;
}

core.List<api.GrpcRouteRouteMatch> buildUnnamed43() => [
  buildGrpcRouteRouteMatch(),
  buildGrpcRouteRouteMatch(),
];

void checkUnnamed43(core.List<api.GrpcRouteRouteMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrpcRouteRouteMatch(o[0]);
  checkGrpcRouteRouteMatch(o[1]);
}

core.int buildCounterGrpcRouteRouteRule = 0;
api.GrpcRouteRouteRule buildGrpcRouteRouteRule() {
  final o = api.GrpcRouteRouteRule();
  buildCounterGrpcRouteRouteRule++;
  if (buildCounterGrpcRouteRouteRule < 3) {
    o.action = buildGrpcRouteRouteAction();
    o.matches = buildUnnamed43();
  }
  buildCounterGrpcRouteRouteRule--;
  return o;
}

void checkGrpcRouteRouteRule(api.GrpcRouteRouteRule o) {
  buildCounterGrpcRouteRouteRule++;
  if (buildCounterGrpcRouteRouteRule < 3) {
    checkGrpcRouteRouteAction(o.action!);
    checkUnnamed43(o.matches!);
  }
  buildCounterGrpcRouteRouteRule--;
}

core.int buildCounterGrpcRouteStatefulSessionAffinityPolicy = 0;
api.GrpcRouteStatefulSessionAffinityPolicy
buildGrpcRouteStatefulSessionAffinityPolicy() {
  final o = api.GrpcRouteStatefulSessionAffinityPolicy();
  buildCounterGrpcRouteStatefulSessionAffinityPolicy++;
  if (buildCounterGrpcRouteStatefulSessionAffinityPolicy < 3) {
    o.cookieTtl = 'foo';
  }
  buildCounterGrpcRouteStatefulSessionAffinityPolicy--;
  return o;
}

void checkGrpcRouteStatefulSessionAffinityPolicy(
  api.GrpcRouteStatefulSessionAffinityPolicy o,
) {
  buildCounterGrpcRouteStatefulSessionAffinityPolicy++;
  if (buildCounterGrpcRouteStatefulSessionAffinityPolicy < 3) {
    unittest.expect(o.cookieTtl!, unittest.equals('foo'));
  }
  buildCounterGrpcRouteStatefulSessionAffinityPolicy--;
}

core.List<core.String> buildUnnamed44() => ['foo', 'foo'];

void checkUnnamed44(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed46() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed46(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.HttpRouteRouteRule> buildUnnamed48() => [
  buildHttpRouteRouteRule(),
  buildHttpRouteRouteRule(),
];

void checkUnnamed48(core.List<api.HttpRouteRouteRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRouteRouteRule(o[0]);
  checkHttpRouteRouteRule(o[1]);
}

core.int buildCounterHttpRoute = 0;
api.HttpRoute buildHttpRoute() {
  final o = api.HttpRoute();
  buildCounterHttpRoute++;
  if (buildCounterHttpRoute < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.gateways = buildUnnamed44();
    o.hostnames = buildUnnamed45();
    o.labels = buildUnnamed46();
    o.meshes = buildUnnamed47();
    o.name = 'foo';
    o.rules = buildUnnamed48();
    o.selfLink = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterHttpRoute--;
  return o;
}

void checkHttpRoute(api.HttpRoute o) {
  buildCounterHttpRoute++;
  if (buildCounterHttpRoute < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed44(o.gateways!);
    checkUnnamed45(o.hostnames!);
    checkUnnamed46(o.labels!);
    checkUnnamed47(o.meshes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed48(o.rules!);
    unittest.expect(o.selfLink!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterHttpRoute--;
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed50() => ['foo', 'foo'];

void checkUnnamed50(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed52() => ['foo', 'foo'];

void checkUnnamed52(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed53() => ['foo', 'foo'];

void checkUnnamed53(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHttpRouteCorsPolicy = 0;
api.HttpRouteCorsPolicy buildHttpRouteCorsPolicy() {
  final o = api.HttpRouteCorsPolicy();
  buildCounterHttpRouteCorsPolicy++;
  if (buildCounterHttpRouteCorsPolicy < 3) {
    o.allowCredentials = true;
    o.allowHeaders = buildUnnamed49();
    o.allowMethods = buildUnnamed50();
    o.allowOriginRegexes = buildUnnamed51();
    o.allowOrigins = buildUnnamed52();
    o.disabled = true;
    o.exposeHeaders = buildUnnamed53();
    o.maxAge = 'foo';
  }
  buildCounterHttpRouteCorsPolicy--;
  return o;
}

void checkHttpRouteCorsPolicy(api.HttpRouteCorsPolicy o) {
  buildCounterHttpRouteCorsPolicy++;
  if (buildCounterHttpRouteCorsPolicy < 3) {
    unittest.expect(o.allowCredentials!, unittest.isTrue);
    checkUnnamed49(o.allowHeaders!);
    checkUnnamed50(o.allowMethods!);
    checkUnnamed51(o.allowOriginRegexes!);
    checkUnnamed52(o.allowOrigins!);
    unittest.expect(o.disabled!, unittest.isTrue);
    checkUnnamed53(o.exposeHeaders!);
    unittest.expect(o.maxAge!, unittest.equals('foo'));
  }
  buildCounterHttpRouteCorsPolicy--;
}

core.int buildCounterHttpRouteDestination = 0;
api.HttpRouteDestination buildHttpRouteDestination() {
  final o = api.HttpRouteDestination();
  buildCounterHttpRouteDestination++;
  if (buildCounterHttpRouteDestination < 3) {
    o.requestHeaderModifier = buildHttpRouteHeaderModifier();
    o.responseHeaderModifier = buildHttpRouteHeaderModifier();
    o.serviceName = 'foo';
    o.weight = 42;
  }
  buildCounterHttpRouteDestination--;
  return o;
}

void checkHttpRouteDestination(api.HttpRouteDestination o) {
  buildCounterHttpRouteDestination++;
  if (buildCounterHttpRouteDestination < 3) {
    checkHttpRouteHeaderModifier(o.requestHeaderModifier!);
    checkHttpRouteHeaderModifier(o.responseHeaderModifier!);
    unittest.expect(o.serviceName!, unittest.equals('foo'));
    unittest.expect(o.weight!, unittest.equals(42));
  }
  buildCounterHttpRouteDestination--;
}

core.int buildCounterHttpRouteFaultInjectionPolicy = 0;
api.HttpRouteFaultInjectionPolicy buildHttpRouteFaultInjectionPolicy() {
  final o = api.HttpRouteFaultInjectionPolicy();
  buildCounterHttpRouteFaultInjectionPolicy++;
  if (buildCounterHttpRouteFaultInjectionPolicy < 3) {
    o.abort = buildHttpRouteFaultInjectionPolicyAbort();
    o.delay = buildHttpRouteFaultInjectionPolicyDelay();
  }
  buildCounterHttpRouteFaultInjectionPolicy--;
  return o;
}

void checkHttpRouteFaultInjectionPolicy(api.HttpRouteFaultInjectionPolicy o) {
  buildCounterHttpRouteFaultInjectionPolicy++;
  if (buildCounterHttpRouteFaultInjectionPolicy < 3) {
    checkHttpRouteFaultInjectionPolicyAbort(o.abort!);
    checkHttpRouteFaultInjectionPolicyDelay(o.delay!);
  }
  buildCounterHttpRouteFaultInjectionPolicy--;
}

core.int buildCounterHttpRouteFaultInjectionPolicyAbort = 0;
api.HttpRouteFaultInjectionPolicyAbort
buildHttpRouteFaultInjectionPolicyAbort() {
  final o = api.HttpRouteFaultInjectionPolicyAbort();
  buildCounterHttpRouteFaultInjectionPolicyAbort++;
  if (buildCounterHttpRouteFaultInjectionPolicyAbort < 3) {
    o.httpStatus = 42;
    o.percentage = 42;
  }
  buildCounterHttpRouteFaultInjectionPolicyAbort--;
  return o;
}

void checkHttpRouteFaultInjectionPolicyAbort(
  api.HttpRouteFaultInjectionPolicyAbort o,
) {
  buildCounterHttpRouteFaultInjectionPolicyAbort++;
  if (buildCounterHttpRouteFaultInjectionPolicyAbort < 3) {
    unittest.expect(o.httpStatus!, unittest.equals(42));
    unittest.expect(o.percentage!, unittest.equals(42));
  }
  buildCounterHttpRouteFaultInjectionPolicyAbort--;
}

core.int buildCounterHttpRouteFaultInjectionPolicyDelay = 0;
api.HttpRouteFaultInjectionPolicyDelay
buildHttpRouteFaultInjectionPolicyDelay() {
  final o = api.HttpRouteFaultInjectionPolicyDelay();
  buildCounterHttpRouteFaultInjectionPolicyDelay++;
  if (buildCounterHttpRouteFaultInjectionPolicyDelay < 3) {
    o.fixedDelay = 'foo';
    o.percentage = 42;
  }
  buildCounterHttpRouteFaultInjectionPolicyDelay--;
  return o;
}

void checkHttpRouteFaultInjectionPolicyDelay(
  api.HttpRouteFaultInjectionPolicyDelay o,
) {
  buildCounterHttpRouteFaultInjectionPolicyDelay++;
  if (buildCounterHttpRouteFaultInjectionPolicyDelay < 3) {
    unittest.expect(o.fixedDelay!, unittest.equals('foo'));
    unittest.expect(o.percentage!, unittest.equals(42));
  }
  buildCounterHttpRouteFaultInjectionPolicyDelay--;
}

core.int buildCounterHttpRouteHeaderMatch = 0;
api.HttpRouteHeaderMatch buildHttpRouteHeaderMatch() {
  final o = api.HttpRouteHeaderMatch();
  buildCounterHttpRouteHeaderMatch++;
  if (buildCounterHttpRouteHeaderMatch < 3) {
    o.exactMatch = 'foo';
    o.header = 'foo';
    o.invertMatch = true;
    o.prefixMatch = 'foo';
    o.presentMatch = true;
    o.rangeMatch = buildHttpRouteHeaderMatchIntegerRange();
    o.regexMatch = 'foo';
    o.suffixMatch = 'foo';
  }
  buildCounterHttpRouteHeaderMatch--;
  return o;
}

void checkHttpRouteHeaderMatch(api.HttpRouteHeaderMatch o) {
  buildCounterHttpRouteHeaderMatch++;
  if (buildCounterHttpRouteHeaderMatch < 3) {
    unittest.expect(o.exactMatch!, unittest.equals('foo'));
    unittest.expect(o.header!, unittest.equals('foo'));
    unittest.expect(o.invertMatch!, unittest.isTrue);
    unittest.expect(o.prefixMatch!, unittest.equals('foo'));
    unittest.expect(o.presentMatch!, unittest.isTrue);
    checkHttpRouteHeaderMatchIntegerRange(o.rangeMatch!);
    unittest.expect(o.regexMatch!, unittest.equals('foo'));
    unittest.expect(o.suffixMatch!, unittest.equals('foo'));
  }
  buildCounterHttpRouteHeaderMatch--;
}

core.int buildCounterHttpRouteHeaderMatchIntegerRange = 0;
api.HttpRouteHeaderMatchIntegerRange buildHttpRouteHeaderMatchIntegerRange() {
  final o = api.HttpRouteHeaderMatchIntegerRange();
  buildCounterHttpRouteHeaderMatchIntegerRange++;
  if (buildCounterHttpRouteHeaderMatchIntegerRange < 3) {
    o.end = 42;
    o.start = 42;
  }
  buildCounterHttpRouteHeaderMatchIntegerRange--;
  return o;
}

void checkHttpRouteHeaderMatchIntegerRange(
  api.HttpRouteHeaderMatchIntegerRange o,
) {
  buildCounterHttpRouteHeaderMatchIntegerRange++;
  if (buildCounterHttpRouteHeaderMatchIntegerRange < 3) {
    unittest.expect(o.end!, unittest.equals(42));
    unittest.expect(o.start!, unittest.equals(42));
  }
  buildCounterHttpRouteHeaderMatchIntegerRange--;
}

core.Map<core.String, core.String> buildUnnamed54() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed54(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed56() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed56(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterHttpRouteHeaderModifier = 0;
api.HttpRouteHeaderModifier buildHttpRouteHeaderModifier() {
  final o = api.HttpRouteHeaderModifier();
  buildCounterHttpRouteHeaderModifier++;
  if (buildCounterHttpRouteHeaderModifier < 3) {
    o.add = buildUnnamed54();
    o.remove = buildUnnamed55();
    o.set = buildUnnamed56();
  }
  buildCounterHttpRouteHeaderModifier--;
  return o;
}

void checkHttpRouteHeaderModifier(api.HttpRouteHeaderModifier o) {
  buildCounterHttpRouteHeaderModifier++;
  if (buildCounterHttpRouteHeaderModifier < 3) {
    checkUnnamed54(o.add!);
    checkUnnamed55(o.remove!);
    checkUnnamed56(o.set!);
  }
  buildCounterHttpRouteHeaderModifier--;
}

core.int buildCounterHttpRouteHttpDirectResponse = 0;
api.HttpRouteHttpDirectResponse buildHttpRouteHttpDirectResponse() {
  final o = api.HttpRouteHttpDirectResponse();
  buildCounterHttpRouteHttpDirectResponse++;
  if (buildCounterHttpRouteHttpDirectResponse < 3) {
    o.bytesBody = 'foo';
    o.status = 42;
    o.stringBody = 'foo';
  }
  buildCounterHttpRouteHttpDirectResponse--;
  return o;
}

void checkHttpRouteHttpDirectResponse(api.HttpRouteHttpDirectResponse o) {
  buildCounterHttpRouteHttpDirectResponse++;
  if (buildCounterHttpRouteHttpDirectResponse < 3) {
    unittest.expect(o.bytesBody!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals(42));
    unittest.expect(o.stringBody!, unittest.equals('foo'));
  }
  buildCounterHttpRouteHttpDirectResponse--;
}

core.int buildCounterHttpRouteQueryParameterMatch = 0;
api.HttpRouteQueryParameterMatch buildHttpRouteQueryParameterMatch() {
  final o = api.HttpRouteQueryParameterMatch();
  buildCounterHttpRouteQueryParameterMatch++;
  if (buildCounterHttpRouteQueryParameterMatch < 3) {
    o.exactMatch = 'foo';
    o.presentMatch = true;
    o.queryParameter = 'foo';
    o.regexMatch = 'foo';
  }
  buildCounterHttpRouteQueryParameterMatch--;
  return o;
}

void checkHttpRouteQueryParameterMatch(api.HttpRouteQueryParameterMatch o) {
  buildCounterHttpRouteQueryParameterMatch++;
  if (buildCounterHttpRouteQueryParameterMatch < 3) {
    unittest.expect(o.exactMatch!, unittest.equals('foo'));
    unittest.expect(o.presentMatch!, unittest.isTrue);
    unittest.expect(o.queryParameter!, unittest.equals('foo'));
    unittest.expect(o.regexMatch!, unittest.equals('foo'));
  }
  buildCounterHttpRouteQueryParameterMatch--;
}

core.int buildCounterHttpRouteRedirect = 0;
api.HttpRouteRedirect buildHttpRouteRedirect() {
  final o = api.HttpRouteRedirect();
  buildCounterHttpRouteRedirect++;
  if (buildCounterHttpRouteRedirect < 3) {
    o.hostRedirect = 'foo';
    o.httpsRedirect = true;
    o.pathRedirect = 'foo';
    o.portRedirect = 42;
    o.prefixRewrite = 'foo';
    o.responseCode = 'foo';
    o.stripQuery = true;
  }
  buildCounterHttpRouteRedirect--;
  return o;
}

void checkHttpRouteRedirect(api.HttpRouteRedirect o) {
  buildCounterHttpRouteRedirect++;
  if (buildCounterHttpRouteRedirect < 3) {
    unittest.expect(o.hostRedirect!, unittest.equals('foo'));
    unittest.expect(o.httpsRedirect!, unittest.isTrue);
    unittest.expect(o.pathRedirect!, unittest.equals('foo'));
    unittest.expect(o.portRedirect!, unittest.equals(42));
    unittest.expect(o.prefixRewrite!, unittest.equals('foo'));
    unittest.expect(o.responseCode!, unittest.equals('foo'));
    unittest.expect(o.stripQuery!, unittest.isTrue);
  }
  buildCounterHttpRouteRedirect--;
}

core.int buildCounterHttpRouteRequestMirrorPolicy = 0;
api.HttpRouteRequestMirrorPolicy buildHttpRouteRequestMirrorPolicy() {
  final o = api.HttpRouteRequestMirrorPolicy();
  buildCounterHttpRouteRequestMirrorPolicy++;
  if (buildCounterHttpRouteRequestMirrorPolicy < 3) {
    o.destination = buildHttpRouteDestination();
    o.mirrorPercent = 42.0;
  }
  buildCounterHttpRouteRequestMirrorPolicy--;
  return o;
}

void checkHttpRouteRequestMirrorPolicy(api.HttpRouteRequestMirrorPolicy o) {
  buildCounterHttpRouteRequestMirrorPolicy++;
  if (buildCounterHttpRouteRequestMirrorPolicy < 3) {
    checkHttpRouteDestination(o.destination!);
    unittest.expect(o.mirrorPercent!, unittest.equals(42.0));
  }
  buildCounterHttpRouteRequestMirrorPolicy--;
}

core.List<core.String> buildUnnamed57() => ['foo', 'foo'];

void checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHttpRouteRetryPolicy = 0;
api.HttpRouteRetryPolicy buildHttpRouteRetryPolicy() {
  final o = api.HttpRouteRetryPolicy();
  buildCounterHttpRouteRetryPolicy++;
  if (buildCounterHttpRouteRetryPolicy < 3) {
    o.numRetries = 42;
    o.perTryTimeout = 'foo';
    o.retryConditions = buildUnnamed57();
  }
  buildCounterHttpRouteRetryPolicy--;
  return o;
}

void checkHttpRouteRetryPolicy(api.HttpRouteRetryPolicy o) {
  buildCounterHttpRouteRetryPolicy++;
  if (buildCounterHttpRouteRetryPolicy < 3) {
    unittest.expect(o.numRetries!, unittest.equals(42));
    unittest.expect(o.perTryTimeout!, unittest.equals('foo'));
    checkUnnamed57(o.retryConditions!);
  }
  buildCounterHttpRouteRetryPolicy--;
}

core.List<api.HttpRouteDestination> buildUnnamed58() => [
  buildHttpRouteDestination(),
  buildHttpRouteDestination(),
];

void checkUnnamed58(core.List<api.HttpRouteDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRouteDestination(o[0]);
  checkHttpRouteDestination(o[1]);
}

core.int buildCounterHttpRouteRouteAction = 0;
api.HttpRouteRouteAction buildHttpRouteRouteAction() {
  final o = api.HttpRouteRouteAction();
  buildCounterHttpRouteRouteAction++;
  if (buildCounterHttpRouteRouteAction < 3) {
    o.corsPolicy = buildHttpRouteCorsPolicy();
    o.destinations = buildUnnamed58();
    o.directResponse = buildHttpRouteHttpDirectResponse();
    o.faultInjectionPolicy = buildHttpRouteFaultInjectionPolicy();
    o.idleTimeout = 'foo';
    o.redirect = buildHttpRouteRedirect();
    o.requestHeaderModifier = buildHttpRouteHeaderModifier();
    o.requestMirrorPolicy = buildHttpRouteRequestMirrorPolicy();
    o.responseHeaderModifier = buildHttpRouteHeaderModifier();
    o.retryPolicy = buildHttpRouteRetryPolicy();
    o.statefulSessionAffinity = buildHttpRouteStatefulSessionAffinityPolicy();
    o.timeout = 'foo';
    o.urlRewrite = buildHttpRouteURLRewrite();
  }
  buildCounterHttpRouteRouteAction--;
  return o;
}

void checkHttpRouteRouteAction(api.HttpRouteRouteAction o) {
  buildCounterHttpRouteRouteAction++;
  if (buildCounterHttpRouteRouteAction < 3) {
    checkHttpRouteCorsPolicy(o.corsPolicy!);
    checkUnnamed58(o.destinations!);
    checkHttpRouteHttpDirectResponse(o.directResponse!);
    checkHttpRouteFaultInjectionPolicy(o.faultInjectionPolicy!);
    unittest.expect(o.idleTimeout!, unittest.equals('foo'));
    checkHttpRouteRedirect(o.redirect!);
    checkHttpRouteHeaderModifier(o.requestHeaderModifier!);
    checkHttpRouteRequestMirrorPolicy(o.requestMirrorPolicy!);
    checkHttpRouteHeaderModifier(o.responseHeaderModifier!);
    checkHttpRouteRetryPolicy(o.retryPolicy!);
    checkHttpRouteStatefulSessionAffinityPolicy(o.statefulSessionAffinity!);
    unittest.expect(o.timeout!, unittest.equals('foo'));
    checkHttpRouteURLRewrite(o.urlRewrite!);
  }
  buildCounterHttpRouteRouteAction--;
}

core.List<api.HttpRouteHeaderMatch> buildUnnamed59() => [
  buildHttpRouteHeaderMatch(),
  buildHttpRouteHeaderMatch(),
];

void checkUnnamed59(core.List<api.HttpRouteHeaderMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRouteHeaderMatch(o[0]);
  checkHttpRouteHeaderMatch(o[1]);
}

core.List<api.HttpRouteQueryParameterMatch> buildUnnamed60() => [
  buildHttpRouteQueryParameterMatch(),
  buildHttpRouteQueryParameterMatch(),
];

void checkUnnamed60(core.List<api.HttpRouteQueryParameterMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRouteQueryParameterMatch(o[0]);
  checkHttpRouteQueryParameterMatch(o[1]);
}

core.int buildCounterHttpRouteRouteMatch = 0;
api.HttpRouteRouteMatch buildHttpRouteRouteMatch() {
  final o = api.HttpRouteRouteMatch();
  buildCounterHttpRouteRouteMatch++;
  if (buildCounterHttpRouteRouteMatch < 3) {
    o.fullPathMatch = 'foo';
    o.headers = buildUnnamed59();
    o.ignoreCase = true;
    o.prefixMatch = 'foo';
    o.queryParameters = buildUnnamed60();
    o.regexMatch = 'foo';
  }
  buildCounterHttpRouteRouteMatch--;
  return o;
}

void checkHttpRouteRouteMatch(api.HttpRouteRouteMatch o) {
  buildCounterHttpRouteRouteMatch++;
  if (buildCounterHttpRouteRouteMatch < 3) {
    unittest.expect(o.fullPathMatch!, unittest.equals('foo'));
    checkUnnamed59(o.headers!);
    unittest.expect(o.ignoreCase!, unittest.isTrue);
    unittest.expect(o.prefixMatch!, unittest.equals('foo'));
    checkUnnamed60(o.queryParameters!);
    unittest.expect(o.regexMatch!, unittest.equals('foo'));
  }
  buildCounterHttpRouteRouteMatch--;
}

core.List<api.HttpRouteRouteMatch> buildUnnamed61() => [
  buildHttpRouteRouteMatch(),
  buildHttpRouteRouteMatch(),
];

void checkUnnamed61(core.List<api.HttpRouteRouteMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRouteRouteMatch(o[0]);
  checkHttpRouteRouteMatch(o[1]);
}

core.int buildCounterHttpRouteRouteRule = 0;
api.HttpRouteRouteRule buildHttpRouteRouteRule() {
  final o = api.HttpRouteRouteRule();
  buildCounterHttpRouteRouteRule++;
  if (buildCounterHttpRouteRouteRule < 3) {
    o.action = buildHttpRouteRouteAction();
    o.matches = buildUnnamed61();
  }
  buildCounterHttpRouteRouteRule--;
  return o;
}

void checkHttpRouteRouteRule(api.HttpRouteRouteRule o) {
  buildCounterHttpRouteRouteRule++;
  if (buildCounterHttpRouteRouteRule < 3) {
    checkHttpRouteRouteAction(o.action!);
    checkUnnamed61(o.matches!);
  }
  buildCounterHttpRouteRouteRule--;
}

core.int buildCounterHttpRouteStatefulSessionAffinityPolicy = 0;
api.HttpRouteStatefulSessionAffinityPolicy
buildHttpRouteStatefulSessionAffinityPolicy() {
  final o = api.HttpRouteStatefulSessionAffinityPolicy();
  buildCounterHttpRouteStatefulSessionAffinityPolicy++;
  if (buildCounterHttpRouteStatefulSessionAffinityPolicy < 3) {
    o.cookieTtl = 'foo';
  }
  buildCounterHttpRouteStatefulSessionAffinityPolicy--;
  return o;
}

void checkHttpRouteStatefulSessionAffinityPolicy(
  api.HttpRouteStatefulSessionAffinityPolicy o,
) {
  buildCounterHttpRouteStatefulSessionAffinityPolicy++;
  if (buildCounterHttpRouteStatefulSessionAffinityPolicy < 3) {
    unittest.expect(o.cookieTtl!, unittest.equals('foo'));
  }
  buildCounterHttpRouteStatefulSessionAffinityPolicy--;
}

core.int buildCounterHttpRouteURLRewrite = 0;
api.HttpRouteURLRewrite buildHttpRouteURLRewrite() {
  final o = api.HttpRouteURLRewrite();
  buildCounterHttpRouteURLRewrite++;
  if (buildCounterHttpRouteURLRewrite < 3) {
    o.hostRewrite = 'foo';
    o.pathPrefixRewrite = 'foo';
  }
  buildCounterHttpRouteURLRewrite--;
  return o;
}

void checkHttpRouteURLRewrite(api.HttpRouteURLRewrite o) {
  buildCounterHttpRouteURLRewrite++;
  if (buildCounterHttpRouteURLRewrite < 3) {
    unittest.expect(o.hostRewrite!, unittest.equals('foo'));
    unittest.expect(o.pathPrefixRewrite!, unittest.equals('foo'));
  }
  buildCounterHttpRouteURLRewrite--;
}

core.List<api.ExtensionChain> buildUnnamed62() => [
  buildExtensionChain(),
  buildExtensionChain(),
];

void checkUnnamed62(core.List<api.ExtensionChain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtensionChain(o[0]);
  checkExtensionChain(o[1]);
}

core.List<core.String> buildUnnamed63() => ['foo', 'foo'];

void checkUnnamed63(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed64() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed64(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterLbEdgeExtension = 0;
api.LbEdgeExtension buildLbEdgeExtension() {
  final o = api.LbEdgeExtension();
  buildCounterLbEdgeExtension++;
  if (buildCounterLbEdgeExtension < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.extensionChains = buildUnnamed62();
    o.forwardingRules = buildUnnamed63();
    o.labels = buildUnnamed64();
    o.loadBalancingScheme = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterLbEdgeExtension--;
  return o;
}

void checkLbEdgeExtension(api.LbEdgeExtension o) {
  buildCounterLbEdgeExtension++;
  if (buildCounterLbEdgeExtension < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed62(o.extensionChains!);
    checkUnnamed63(o.forwardingRules!);
    checkUnnamed64(o.labels!);
    unittest.expect(o.loadBalancingScheme!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterLbEdgeExtension--;
}

core.List<api.ExtensionChain> buildUnnamed65() => [
  buildExtensionChain(),
  buildExtensionChain(),
];

void checkUnnamed65(core.List<api.ExtensionChain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtensionChain(o[0]);
  checkExtensionChain(o[1]);
}

core.List<core.String> buildUnnamed66() => ['foo', 'foo'];

void checkUnnamed66(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed67() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed67(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed68() => {
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

void checkUnnamed68(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLbRouteExtension = 0;
api.LbRouteExtension buildLbRouteExtension() {
  final o = api.LbRouteExtension();
  buildCounterLbRouteExtension++;
  if (buildCounterLbRouteExtension < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.extensionChains = buildUnnamed65();
    o.forwardingRules = buildUnnamed66();
    o.labels = buildUnnamed67();
    o.loadBalancingScheme = 'foo';
    o.metadata = buildUnnamed68();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterLbRouteExtension--;
  return o;
}

void checkLbRouteExtension(api.LbRouteExtension o) {
  buildCounterLbRouteExtension++;
  if (buildCounterLbRouteExtension < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed65(o.extensionChains!);
    checkUnnamed66(o.forwardingRules!);
    checkUnnamed67(o.labels!);
    unittest.expect(o.loadBalancingScheme!, unittest.equals('foo'));
    checkUnnamed68(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterLbRouteExtension--;
}

core.List<api.ExtensionChain> buildUnnamed69() => [
  buildExtensionChain(),
  buildExtensionChain(),
];

void checkUnnamed69(core.List<api.ExtensionChain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtensionChain(o[0]);
  checkExtensionChain(o[1]);
}

core.List<core.String> buildUnnamed70() => ['foo', 'foo'];

void checkUnnamed70(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed71() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed71(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed72() => {
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

void checkUnnamed72(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLbTrafficExtension = 0;
api.LbTrafficExtension buildLbTrafficExtension() {
  final o = api.LbTrafficExtension();
  buildCounterLbTrafficExtension++;
  if (buildCounterLbTrafficExtension < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.extensionChains = buildUnnamed69();
    o.forwardingRules = buildUnnamed70();
    o.labels = buildUnnamed71();
    o.loadBalancingScheme = 'foo';
    o.metadata = buildUnnamed72();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterLbTrafficExtension--;
  return o;
}

void checkLbTrafficExtension(api.LbTrafficExtension o) {
  buildCounterLbTrafficExtension++;
  if (buildCounterLbTrafficExtension < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed69(o.extensionChains!);
    checkUnnamed70(o.forwardingRules!);
    checkUnnamed71(o.labels!);
    unittest.expect(o.loadBalancingScheme!, unittest.equals('foo'));
    checkUnnamed72(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterLbTrafficExtension--;
}

core.List<api.AgentConnectivityTemplate> buildUnnamed73() => [
  buildAgentConnectivityTemplate(),
  buildAgentConnectivityTemplate(),
];

void checkUnnamed73(core.List<api.AgentConnectivityTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentConnectivityTemplate(o[0]);
  checkAgentConnectivityTemplate(o[1]);
}

core.List<core.String> buildUnnamed74() => ['foo', 'foo'];

void checkUnnamed74(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAgentConnectivityTemplatesResponse = 0;
api.ListAgentConnectivityTemplatesResponse
buildListAgentConnectivityTemplatesResponse() {
  final o = api.ListAgentConnectivityTemplatesResponse();
  buildCounterListAgentConnectivityTemplatesResponse++;
  if (buildCounterListAgentConnectivityTemplatesResponse < 3) {
    o.agentConnectivityTemplates = buildUnnamed73();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed74();
  }
  buildCounterListAgentConnectivityTemplatesResponse--;
  return o;
}

void checkListAgentConnectivityTemplatesResponse(
  api.ListAgentConnectivityTemplatesResponse o,
) {
  buildCounterListAgentConnectivityTemplatesResponse++;
  if (buildCounterListAgentConnectivityTemplatesResponse < 3) {
    checkUnnamed73(o.agentConnectivityTemplates!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed74(o.unreachable!);
  }
  buildCounterListAgentConnectivityTemplatesResponse--;
}

core.List<api.AgentGateway> buildUnnamed75() => [
  buildAgentGateway(),
  buildAgentGateway(),
];

void checkUnnamed75(core.List<api.AgentGateway> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentGateway(o[0]);
  checkAgentGateway(o[1]);
}

core.List<core.String> buildUnnamed76() => ['foo', 'foo'];

void checkUnnamed76(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAgentGatewaysResponse = 0;
api.ListAgentGatewaysResponse buildListAgentGatewaysResponse() {
  final o = api.ListAgentGatewaysResponse();
  buildCounterListAgentGatewaysResponse++;
  if (buildCounterListAgentGatewaysResponse < 3) {
    o.agentGateways = buildUnnamed75();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed76();
  }
  buildCounterListAgentGatewaysResponse--;
  return o;
}

void checkListAgentGatewaysResponse(api.ListAgentGatewaysResponse o) {
  buildCounterListAgentGatewaysResponse++;
  if (buildCounterListAgentGatewaysResponse < 3) {
    checkUnnamed75(o.agentGateways!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed76(o.unreachable!);
  }
  buildCounterListAgentGatewaysResponse--;
}

core.List<api.AuthzExtension> buildUnnamed77() => [
  buildAuthzExtension(),
  buildAuthzExtension(),
];

void checkUnnamed77(core.List<api.AuthzExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthzExtension(o[0]);
  checkAuthzExtension(o[1]);
}

core.List<core.String> buildUnnamed78() => ['foo', 'foo'];

void checkUnnamed78(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAuthzExtensionsResponse = 0;
api.ListAuthzExtensionsResponse buildListAuthzExtensionsResponse() {
  final o = api.ListAuthzExtensionsResponse();
  buildCounterListAuthzExtensionsResponse++;
  if (buildCounterListAuthzExtensionsResponse < 3) {
    o.authzExtensions = buildUnnamed77();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed78();
  }
  buildCounterListAuthzExtensionsResponse--;
  return o;
}

void checkListAuthzExtensionsResponse(api.ListAuthzExtensionsResponse o) {
  buildCounterListAuthzExtensionsResponse++;
  if (buildCounterListAuthzExtensionsResponse < 3) {
    checkUnnamed77(o.authzExtensions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed78(o.unreachable!);
  }
  buildCounterListAuthzExtensionsResponse--;
}

core.List<api.EndpointPolicy> buildUnnamed79() => [
  buildEndpointPolicy(),
  buildEndpointPolicy(),
];

void checkUnnamed79(core.List<api.EndpointPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpointPolicy(o[0]);
  checkEndpointPolicy(o[1]);
}

core.List<core.String> buildUnnamed80() => ['foo', 'foo'];

void checkUnnamed80(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListEndpointPoliciesResponse = 0;
api.ListEndpointPoliciesResponse buildListEndpointPoliciesResponse() {
  final o = api.ListEndpointPoliciesResponse();
  buildCounterListEndpointPoliciesResponse++;
  if (buildCounterListEndpointPoliciesResponse < 3) {
    o.endpointPolicies = buildUnnamed79();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed80();
  }
  buildCounterListEndpointPoliciesResponse--;
  return o;
}

void checkListEndpointPoliciesResponse(api.ListEndpointPoliciesResponse o) {
  buildCounterListEndpointPoliciesResponse++;
  if (buildCounterListEndpointPoliciesResponse < 3) {
    checkUnnamed79(o.endpointPolicies!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed80(o.unreachable!);
  }
  buildCounterListEndpointPoliciesResponse--;
}

core.List<api.ExtensionBinding> buildUnnamed81() => [
  buildExtensionBinding(),
  buildExtensionBinding(),
];

void checkUnnamed81(core.List<api.ExtensionBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtensionBinding(o[0]);
  checkExtensionBinding(o[1]);
}

core.List<core.String> buildUnnamed82() => ['foo', 'foo'];

void checkUnnamed82(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListExtensionBindingsResponse = 0;
api.ListExtensionBindingsResponse buildListExtensionBindingsResponse() {
  final o = api.ListExtensionBindingsResponse();
  buildCounterListExtensionBindingsResponse++;
  if (buildCounterListExtensionBindingsResponse < 3) {
    o.extensionBindings = buildUnnamed81();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed82();
  }
  buildCounterListExtensionBindingsResponse--;
  return o;
}

void checkListExtensionBindingsResponse(api.ListExtensionBindingsResponse o) {
  buildCounterListExtensionBindingsResponse++;
  if (buildCounterListExtensionBindingsResponse < 3) {
    checkUnnamed81(o.extensionBindings!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed82(o.unreachable!);
  }
  buildCounterListExtensionBindingsResponse--;
}

core.List<api.GatewayRouteView> buildUnnamed83() => [
  buildGatewayRouteView(),
  buildGatewayRouteView(),
];

void checkUnnamed83(core.List<api.GatewayRouteView> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGatewayRouteView(o[0]);
  checkGatewayRouteView(o[1]);
}

core.List<core.String> buildUnnamed84() => ['foo', 'foo'];

void checkUnnamed84(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGatewayRouteViewsResponse = 0;
api.ListGatewayRouteViewsResponse buildListGatewayRouteViewsResponse() {
  final o = api.ListGatewayRouteViewsResponse();
  buildCounterListGatewayRouteViewsResponse++;
  if (buildCounterListGatewayRouteViewsResponse < 3) {
    o.gatewayRouteViews = buildUnnamed83();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed84();
  }
  buildCounterListGatewayRouteViewsResponse--;
  return o;
}

void checkListGatewayRouteViewsResponse(api.ListGatewayRouteViewsResponse o) {
  buildCounterListGatewayRouteViewsResponse++;
  if (buildCounterListGatewayRouteViewsResponse < 3) {
    checkUnnamed83(o.gatewayRouteViews!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed84(o.unreachable!);
  }
  buildCounterListGatewayRouteViewsResponse--;
}

core.List<api.Gateway> buildUnnamed85() => [buildGateway(), buildGateway()];

void checkUnnamed85(core.List<api.Gateway> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGateway(o[0]);
  checkGateway(o[1]);
}

core.List<core.String> buildUnnamed86() => ['foo', 'foo'];

void checkUnnamed86(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGatewaysResponse = 0;
api.ListGatewaysResponse buildListGatewaysResponse() {
  final o = api.ListGatewaysResponse();
  buildCounterListGatewaysResponse++;
  if (buildCounterListGatewaysResponse < 3) {
    o.gateways = buildUnnamed85();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed86();
  }
  buildCounterListGatewaysResponse--;
  return o;
}

void checkListGatewaysResponse(api.ListGatewaysResponse o) {
  buildCounterListGatewaysResponse++;
  if (buildCounterListGatewaysResponse < 3) {
    checkUnnamed85(o.gateways!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed86(o.unreachable!);
  }
  buildCounterListGatewaysResponse--;
}

core.List<api.GrpcRoute> buildUnnamed87() => [
  buildGrpcRoute(),
  buildGrpcRoute(),
];

void checkUnnamed87(core.List<api.GrpcRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrpcRoute(o[0]);
  checkGrpcRoute(o[1]);
}

core.List<core.String> buildUnnamed88() => ['foo', 'foo'];

void checkUnnamed88(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGrpcRoutesResponse = 0;
api.ListGrpcRoutesResponse buildListGrpcRoutesResponse() {
  final o = api.ListGrpcRoutesResponse();
  buildCounterListGrpcRoutesResponse++;
  if (buildCounterListGrpcRoutesResponse < 3) {
    o.grpcRoutes = buildUnnamed87();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed88();
  }
  buildCounterListGrpcRoutesResponse--;
  return o;
}

void checkListGrpcRoutesResponse(api.ListGrpcRoutesResponse o) {
  buildCounterListGrpcRoutesResponse++;
  if (buildCounterListGrpcRoutesResponse < 3) {
    checkUnnamed87(o.grpcRoutes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed88(o.unreachable!);
  }
  buildCounterListGrpcRoutesResponse--;
}

core.List<api.HttpRoute> buildUnnamed89() => [
  buildHttpRoute(),
  buildHttpRoute(),
];

void checkUnnamed89(core.List<api.HttpRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRoute(o[0]);
  checkHttpRoute(o[1]);
}

core.List<core.String> buildUnnamed90() => ['foo', 'foo'];

void checkUnnamed90(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListHttpRoutesResponse = 0;
api.ListHttpRoutesResponse buildListHttpRoutesResponse() {
  final o = api.ListHttpRoutesResponse();
  buildCounterListHttpRoutesResponse++;
  if (buildCounterListHttpRoutesResponse < 3) {
    o.httpRoutes = buildUnnamed89();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed90();
  }
  buildCounterListHttpRoutesResponse--;
  return o;
}

void checkListHttpRoutesResponse(api.ListHttpRoutesResponse o) {
  buildCounterListHttpRoutesResponse++;
  if (buildCounterListHttpRoutesResponse < 3) {
    checkUnnamed89(o.httpRoutes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed90(o.unreachable!);
  }
  buildCounterListHttpRoutesResponse--;
}

core.List<api.LbEdgeExtension> buildUnnamed91() => [
  buildLbEdgeExtension(),
  buildLbEdgeExtension(),
];

void checkUnnamed91(core.List<api.LbEdgeExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLbEdgeExtension(o[0]);
  checkLbEdgeExtension(o[1]);
}

core.List<core.String> buildUnnamed92() => ['foo', 'foo'];

void checkUnnamed92(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListLbEdgeExtensionsResponse = 0;
api.ListLbEdgeExtensionsResponse buildListLbEdgeExtensionsResponse() {
  final o = api.ListLbEdgeExtensionsResponse();
  buildCounterListLbEdgeExtensionsResponse++;
  if (buildCounterListLbEdgeExtensionsResponse < 3) {
    o.lbEdgeExtensions = buildUnnamed91();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed92();
  }
  buildCounterListLbEdgeExtensionsResponse--;
  return o;
}

void checkListLbEdgeExtensionsResponse(api.ListLbEdgeExtensionsResponse o) {
  buildCounterListLbEdgeExtensionsResponse++;
  if (buildCounterListLbEdgeExtensionsResponse < 3) {
    checkUnnamed91(o.lbEdgeExtensions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed92(o.unreachable!);
  }
  buildCounterListLbEdgeExtensionsResponse--;
}

core.List<api.LbRouteExtension> buildUnnamed93() => [
  buildLbRouteExtension(),
  buildLbRouteExtension(),
];

void checkUnnamed93(core.List<api.LbRouteExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLbRouteExtension(o[0]);
  checkLbRouteExtension(o[1]);
}

core.List<core.String> buildUnnamed94() => ['foo', 'foo'];

void checkUnnamed94(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListLbRouteExtensionsResponse = 0;
api.ListLbRouteExtensionsResponse buildListLbRouteExtensionsResponse() {
  final o = api.ListLbRouteExtensionsResponse();
  buildCounterListLbRouteExtensionsResponse++;
  if (buildCounterListLbRouteExtensionsResponse < 3) {
    o.lbRouteExtensions = buildUnnamed93();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed94();
  }
  buildCounterListLbRouteExtensionsResponse--;
  return o;
}

void checkListLbRouteExtensionsResponse(api.ListLbRouteExtensionsResponse o) {
  buildCounterListLbRouteExtensionsResponse++;
  if (buildCounterListLbRouteExtensionsResponse < 3) {
    checkUnnamed93(o.lbRouteExtensions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed94(o.unreachable!);
  }
  buildCounterListLbRouteExtensionsResponse--;
}

core.List<api.LbTrafficExtension> buildUnnamed95() => [
  buildLbTrafficExtension(),
  buildLbTrafficExtension(),
];

void checkUnnamed95(core.List<api.LbTrafficExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLbTrafficExtension(o[0]);
  checkLbTrafficExtension(o[1]);
}

core.List<core.String> buildUnnamed96() => ['foo', 'foo'];

void checkUnnamed96(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListLbTrafficExtensionsResponse = 0;
api.ListLbTrafficExtensionsResponse buildListLbTrafficExtensionsResponse() {
  final o = api.ListLbTrafficExtensionsResponse();
  buildCounterListLbTrafficExtensionsResponse++;
  if (buildCounterListLbTrafficExtensionsResponse < 3) {
    o.lbTrafficExtensions = buildUnnamed95();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed96();
  }
  buildCounterListLbTrafficExtensionsResponse--;
  return o;
}

void checkListLbTrafficExtensionsResponse(
  api.ListLbTrafficExtensionsResponse o,
) {
  buildCounterListLbTrafficExtensionsResponse++;
  if (buildCounterListLbTrafficExtensionsResponse < 3) {
    checkUnnamed95(o.lbTrafficExtensions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed96(o.unreachable!);
  }
  buildCounterListLbTrafficExtensionsResponse--;
}

core.List<api.Location> buildUnnamed97() => [buildLocation(), buildLocation()];

void checkUnnamed97(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed97();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed97(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.MeshRouteView> buildUnnamed98() => [
  buildMeshRouteView(),
  buildMeshRouteView(),
];

void checkUnnamed98(core.List<api.MeshRouteView> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMeshRouteView(o[0]);
  checkMeshRouteView(o[1]);
}

core.List<core.String> buildUnnamed99() => ['foo', 'foo'];

void checkUnnamed99(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListMeshRouteViewsResponse = 0;
api.ListMeshRouteViewsResponse buildListMeshRouteViewsResponse() {
  final o = api.ListMeshRouteViewsResponse();
  buildCounterListMeshRouteViewsResponse++;
  if (buildCounterListMeshRouteViewsResponse < 3) {
    o.meshRouteViews = buildUnnamed98();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed99();
  }
  buildCounterListMeshRouteViewsResponse--;
  return o;
}

void checkListMeshRouteViewsResponse(api.ListMeshRouteViewsResponse o) {
  buildCounterListMeshRouteViewsResponse++;
  if (buildCounterListMeshRouteViewsResponse < 3) {
    checkUnnamed98(o.meshRouteViews!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed99(o.unreachable!);
  }
  buildCounterListMeshRouteViewsResponse--;
}

core.List<api.Mesh> buildUnnamed100() => [buildMesh(), buildMesh()];

void checkUnnamed100(core.List<api.Mesh> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMesh(o[0]);
  checkMesh(o[1]);
}

core.List<core.String> buildUnnamed101() => ['foo', 'foo'];

void checkUnnamed101(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListMeshesResponse = 0;
api.ListMeshesResponse buildListMeshesResponse() {
  final o = api.ListMeshesResponse();
  buildCounterListMeshesResponse++;
  if (buildCounterListMeshesResponse < 3) {
    o.meshes = buildUnnamed100();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed101();
  }
  buildCounterListMeshesResponse--;
  return o;
}

void checkListMeshesResponse(api.ListMeshesResponse o) {
  buildCounterListMeshesResponse++;
  if (buildCounterListMeshesResponse < 3) {
    checkUnnamed100(o.meshes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed101(o.unreachable!);
  }
  buildCounterListMeshesResponse--;
}

core.List<api.MulticastConsumerAssociation> buildUnnamed102() => [
  buildMulticastConsumerAssociation(),
  buildMulticastConsumerAssociation(),
];

void checkUnnamed102(core.List<api.MulticastConsumerAssociation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMulticastConsumerAssociation(o[0]);
  checkMulticastConsumerAssociation(o[1]);
}

core.List<core.String> buildUnnamed103() => ['foo', 'foo'];

void checkUnnamed103(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListMulticastConsumerAssociationsResponse = 0;
api.ListMulticastConsumerAssociationsResponse
buildListMulticastConsumerAssociationsResponse() {
  final o = api.ListMulticastConsumerAssociationsResponse();
  buildCounterListMulticastConsumerAssociationsResponse++;
  if (buildCounterListMulticastConsumerAssociationsResponse < 3) {
    o.multicastConsumerAssociations = buildUnnamed102();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed103();
  }
  buildCounterListMulticastConsumerAssociationsResponse--;
  return o;
}

void checkListMulticastConsumerAssociationsResponse(
  api.ListMulticastConsumerAssociationsResponse o,
) {
  buildCounterListMulticastConsumerAssociationsResponse++;
  if (buildCounterListMulticastConsumerAssociationsResponse < 3) {
    checkUnnamed102(o.multicastConsumerAssociations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed103(o.unreachable!);
  }
  buildCounterListMulticastConsumerAssociationsResponse--;
}

core.List<api.MulticastGroupConsumerActivation> buildUnnamed104() => [
  buildMulticastGroupConsumerActivation(),
  buildMulticastGroupConsumerActivation(),
];

void checkUnnamed104(core.List<api.MulticastGroupConsumerActivation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMulticastGroupConsumerActivation(o[0]);
  checkMulticastGroupConsumerActivation(o[1]);
}

core.List<core.String> buildUnnamed105() => ['foo', 'foo'];

void checkUnnamed105(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListMulticastGroupConsumerActivationsResponse = 0;
api.ListMulticastGroupConsumerActivationsResponse
buildListMulticastGroupConsumerActivationsResponse() {
  final o = api.ListMulticastGroupConsumerActivationsResponse();
  buildCounterListMulticastGroupConsumerActivationsResponse++;
  if (buildCounterListMulticastGroupConsumerActivationsResponse < 3) {
    o.multicastGroupConsumerActivations = buildUnnamed104();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed105();
  }
  buildCounterListMulticastGroupConsumerActivationsResponse--;
  return o;
}

void checkListMulticastGroupConsumerActivationsResponse(
  api.ListMulticastGroupConsumerActivationsResponse o,
) {
  buildCounterListMulticastGroupConsumerActivationsResponse++;
  if (buildCounterListMulticastGroupConsumerActivationsResponse < 3) {
    checkUnnamed104(o.multicastGroupConsumerActivations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed105(o.unreachable!);
  }
  buildCounterListMulticastGroupConsumerActivationsResponse--;
}

core.List<api.Operation> buildUnnamed106() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed106(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed107() => ['foo', 'foo'];

void checkUnnamed107(core.List<core.String> o) {
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
    o.operations = buildUnnamed106();
    o.unreachable = buildUnnamed107();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed106(o.operations!);
    checkUnnamed107(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.ProducerExtension> buildUnnamed108() => [
  buildProducerExtension(),
  buildProducerExtension(),
];

void checkUnnamed108(core.List<api.ProducerExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProducerExtension(o[0]);
  checkProducerExtension(o[1]);
}

core.List<core.String> buildUnnamed109() => ['foo', 'foo'];

void checkUnnamed109(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListProducerExtensionsResponse = 0;
api.ListProducerExtensionsResponse buildListProducerExtensionsResponse() {
  final o = api.ListProducerExtensionsResponse();
  buildCounterListProducerExtensionsResponse++;
  if (buildCounterListProducerExtensionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.producerExtensions = buildUnnamed108();
    o.unreachable = buildUnnamed109();
  }
  buildCounterListProducerExtensionsResponse--;
  return o;
}

void checkListProducerExtensionsResponse(api.ListProducerExtensionsResponse o) {
  buildCounterListProducerExtensionsResponse++;
  if (buildCounterListProducerExtensionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed108(o.producerExtensions!);
    checkUnnamed109(o.unreachable!);
  }
  buildCounterListProducerExtensionsResponse--;
}

core.List<api.ServiceBinding> buildUnnamed110() => [
  buildServiceBinding(),
  buildServiceBinding(),
];

void checkUnnamed110(core.List<api.ServiceBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceBinding(o[0]);
  checkServiceBinding(o[1]);
}

core.List<core.String> buildUnnamed111() => ['foo', 'foo'];

void checkUnnamed111(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListServiceBindingsResponse = 0;
api.ListServiceBindingsResponse buildListServiceBindingsResponse() {
  final o = api.ListServiceBindingsResponse();
  buildCounterListServiceBindingsResponse++;
  if (buildCounterListServiceBindingsResponse < 3) {
    o.nextPageToken = 'foo';
    o.serviceBindings = buildUnnamed110();
    o.unreachable = buildUnnamed111();
  }
  buildCounterListServiceBindingsResponse--;
  return o;
}

void checkListServiceBindingsResponse(api.ListServiceBindingsResponse o) {
  buildCounterListServiceBindingsResponse++;
  if (buildCounterListServiceBindingsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed110(o.serviceBindings!);
    checkUnnamed111(o.unreachable!);
  }
  buildCounterListServiceBindingsResponse--;
}

core.List<api.ServiceLbPolicy> buildUnnamed112() => [
  buildServiceLbPolicy(),
  buildServiceLbPolicy(),
];

void checkUnnamed112(core.List<api.ServiceLbPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceLbPolicy(o[0]);
  checkServiceLbPolicy(o[1]);
}

core.List<core.String> buildUnnamed113() => ['foo', 'foo'];

void checkUnnamed113(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListServiceLbPoliciesResponse = 0;
api.ListServiceLbPoliciesResponse buildListServiceLbPoliciesResponse() {
  final o = api.ListServiceLbPoliciesResponse();
  buildCounterListServiceLbPoliciesResponse++;
  if (buildCounterListServiceLbPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.serviceLbPolicies = buildUnnamed112();
    o.unreachable = buildUnnamed113();
  }
  buildCounterListServiceLbPoliciesResponse--;
  return o;
}

void checkListServiceLbPoliciesResponse(api.ListServiceLbPoliciesResponse o) {
  buildCounterListServiceLbPoliciesResponse++;
  if (buildCounterListServiceLbPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed112(o.serviceLbPolicies!);
    checkUnnamed113(o.unreachable!);
  }
  buildCounterListServiceLbPoliciesResponse--;
}

core.List<api.TcpRoute> buildUnnamed114() => [buildTcpRoute(), buildTcpRoute()];

void checkUnnamed114(core.List<api.TcpRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTcpRoute(o[0]);
  checkTcpRoute(o[1]);
}

core.List<core.String> buildUnnamed115() => ['foo', 'foo'];

void checkUnnamed115(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListTcpRoutesResponse = 0;
api.ListTcpRoutesResponse buildListTcpRoutesResponse() {
  final o = api.ListTcpRoutesResponse();
  buildCounterListTcpRoutesResponse++;
  if (buildCounterListTcpRoutesResponse < 3) {
    o.nextPageToken = 'foo';
    o.tcpRoutes = buildUnnamed114();
    o.unreachable = buildUnnamed115();
  }
  buildCounterListTcpRoutesResponse--;
  return o;
}

void checkListTcpRoutesResponse(api.ListTcpRoutesResponse o) {
  buildCounterListTcpRoutesResponse++;
  if (buildCounterListTcpRoutesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed114(o.tcpRoutes!);
    checkUnnamed115(o.unreachable!);
  }
  buildCounterListTcpRoutesResponse--;
}

core.List<api.TlsRoute> buildUnnamed116() => [buildTlsRoute(), buildTlsRoute()];

void checkUnnamed116(core.List<api.TlsRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTlsRoute(o[0]);
  checkTlsRoute(o[1]);
}

core.List<core.String> buildUnnamed117() => ['foo', 'foo'];

void checkUnnamed117(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListTlsRoutesResponse = 0;
api.ListTlsRoutesResponse buildListTlsRoutesResponse() {
  final o = api.ListTlsRoutesResponse();
  buildCounterListTlsRoutesResponse++;
  if (buildCounterListTlsRoutesResponse < 3) {
    o.nextPageToken = 'foo';
    o.tlsRoutes = buildUnnamed116();
    o.unreachable = buildUnnamed117();
  }
  buildCounterListTlsRoutesResponse--;
  return o;
}

void checkListTlsRoutesResponse(api.ListTlsRoutesResponse o) {
  buildCounterListTlsRoutesResponse++;
  if (buildCounterListTlsRoutesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed116(o.tlsRoutes!);
    checkUnnamed117(o.unreachable!);
  }
  buildCounterListTlsRoutesResponse--;
}

core.List<core.String> buildUnnamed118() => ['foo', 'foo'];

void checkUnnamed118(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.WasmPluginVersion> buildUnnamed119() => [
  buildWasmPluginVersion(),
  buildWasmPluginVersion(),
];

void checkUnnamed119(core.List<api.WasmPluginVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWasmPluginVersion(o[0]);
  checkWasmPluginVersion(o[1]);
}

core.int buildCounterListWasmPluginVersionsResponse = 0;
api.ListWasmPluginVersionsResponse buildListWasmPluginVersionsResponse() {
  final o = api.ListWasmPluginVersionsResponse();
  buildCounterListWasmPluginVersionsResponse++;
  if (buildCounterListWasmPluginVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed118();
    o.wasmPluginVersions = buildUnnamed119();
  }
  buildCounterListWasmPluginVersionsResponse--;
  return o;
}

void checkListWasmPluginVersionsResponse(api.ListWasmPluginVersionsResponse o) {
  buildCounterListWasmPluginVersionsResponse++;
  if (buildCounterListWasmPluginVersionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed118(o.unreachable!);
    checkUnnamed119(o.wasmPluginVersions!);
  }
  buildCounterListWasmPluginVersionsResponse--;
}

core.List<core.String> buildUnnamed120() => ['foo', 'foo'];

void checkUnnamed120(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.WasmPlugin> buildUnnamed121() => [
  buildWasmPlugin(),
  buildWasmPlugin(),
];

void checkUnnamed121(core.List<api.WasmPlugin> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWasmPlugin(o[0]);
  checkWasmPlugin(o[1]);
}

core.int buildCounterListWasmPluginsResponse = 0;
api.ListWasmPluginsResponse buildListWasmPluginsResponse() {
  final o = api.ListWasmPluginsResponse();
  buildCounterListWasmPluginsResponse++;
  if (buildCounterListWasmPluginsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed120();
    o.wasmPlugins = buildUnnamed121();
  }
  buildCounterListWasmPluginsResponse--;
  return o;
}

void checkListWasmPluginsResponse(api.ListWasmPluginsResponse o) {
  buildCounterListWasmPluginsResponse++;
  if (buildCounterListWasmPluginsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed120(o.unreachable!);
    checkUnnamed121(o.wasmPlugins!);
  }
  buildCounterListWasmPluginsResponse--;
}

core.Map<core.String, core.String> buildUnnamed122() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed122(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed123() => {
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

void checkUnnamed123(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed122();
    o.locationId = 'foo';
    o.metadata = buildUnnamed123();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed122(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed123(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed124() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed124(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterMesh = 0;
api.Mesh buildMesh() {
  final o = api.Mesh();
  buildCounterMesh++;
  if (buildCounterMesh < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.envoyHeaders = 'foo';
    o.interceptionPort = 42;
    o.labels = buildUnnamed124();
    o.name = 'foo';
    o.selfLink = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMesh--;
  return o;
}

void checkMesh(api.Mesh o) {
  buildCounterMesh++;
  if (buildCounterMesh < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.envoyHeaders!, unittest.equals('foo'));
    unittest.expect(o.interceptionPort!, unittest.equals(42));
    checkUnnamed124(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.selfLink!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterMesh--;
}

core.int buildCounterMeshRouteView = 0;
api.MeshRouteView buildMeshRouteView() {
  final o = api.MeshRouteView();
  buildCounterMeshRouteView++;
  if (buildCounterMeshRouteView < 3) {
    o.name = 'foo';
    o.routeId = 'foo';
    o.routeLocation = 'foo';
    o.routeProjectNumber = 'foo';
    o.routeType = 'foo';
  }
  buildCounterMeshRouteView--;
  return o;
}

void checkMeshRouteView(api.MeshRouteView o) {
  buildCounterMeshRouteView++;
  if (buildCounterMeshRouteView < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.routeId!, unittest.equals('foo'));
    unittest.expect(o.routeLocation!, unittest.equals('foo'));
    unittest.expect(o.routeProjectNumber!, unittest.equals('foo'));
    unittest.expect(o.routeType!, unittest.equals('foo'));
  }
  buildCounterMeshRouteView--;
}

core.Map<core.String, core.String> buildUnnamed125() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed125(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterMulticastConsumerAssociation = 0;
api.MulticastConsumerAssociation buildMulticastConsumerAssociation() {
  final o = api.MulticastConsumerAssociation();
  buildCounterMulticastConsumerAssociation++;
  if (buildCounterMulticastConsumerAssociation < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed125();
    o.multicastDomainActivation = 'foo';
    o.name = 'foo';
    o.network = 'foo';
    o.placementPolicy = 'foo';
    o.resourceState = 'foo';
    o.state = buildMulticastResourceState();
    o.uniqueId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMulticastConsumerAssociation--;
  return o;
}

void checkMulticastConsumerAssociation(api.MulticastConsumerAssociation o) {
  buildCounterMulticastConsumerAssociation++;
  if (buildCounterMulticastConsumerAssociation < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed125(o.labels!);
    unittest.expect(o.multicastDomainActivation!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.placementPolicy!, unittest.equals('foo'));
    unittest.expect(o.resourceState!, unittest.equals('foo'));
    checkMulticastResourceState(o.state!);
    unittest.expect(o.uniqueId!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterMulticastConsumerAssociation--;
}

core.Map<core.String, core.String> buildUnnamed126() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed126(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterMulticastGroupConsumerActivation = 0;
api.MulticastGroupConsumerActivation buildMulticastGroupConsumerActivation() {
  final o = api.MulticastGroupConsumerActivation();
  buildCounterMulticastGroupConsumerActivation++;
  if (buildCounterMulticastGroupConsumerActivation < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed126();
    o.logConfig = buildMulticastLogConfig();
    o.multicastConsumerAssociation = 'foo';
    o.multicastGroup = 'foo';
    o.multicastGroupRangeActivation = 'foo';
    o.name = 'foo';
    o.resourceState = 'foo';
    o.state = buildMulticastResourceState();
    o.uniqueId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMulticastGroupConsumerActivation--;
  return o;
}

void checkMulticastGroupConsumerActivation(
  api.MulticastGroupConsumerActivation o,
) {
  buildCounterMulticastGroupConsumerActivation++;
  if (buildCounterMulticastGroupConsumerActivation < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed126(o.labels!);
    checkMulticastLogConfig(o.logConfig!);
    unittest.expect(o.multicastConsumerAssociation!, unittest.equals('foo'));
    unittest.expect(o.multicastGroup!, unittest.equals('foo'));
    unittest.expect(o.multicastGroupRangeActivation!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.resourceState!, unittest.equals('foo'));
    checkMulticastResourceState(o.state!);
    unittest.expect(o.uniqueId!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterMulticastGroupConsumerActivation--;
}

core.int buildCounterMulticastLogConfig = 0;
api.MulticastLogConfig buildMulticastLogConfig() {
  final o = api.MulticastLogConfig();
  buildCounterMulticastLogConfig++;
  if (buildCounterMulticastLogConfig < 3) {
    o.enabled = true;
  }
  buildCounterMulticastLogConfig--;
  return o;
}

void checkMulticastLogConfig(api.MulticastLogConfig o) {
  buildCounterMulticastLogConfig++;
  if (buildCounterMulticastLogConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterMulticastLogConfig--;
}

core.int buildCounterMulticastResourceState = 0;
api.MulticastResourceState buildMulticastResourceState() {
  final o = api.MulticastResourceState();
  buildCounterMulticastResourceState++;
  if (buildCounterMulticastResourceState < 3) {
    o.state = 'foo';
  }
  buildCounterMulticastResourceState--;
  return o;
}

void checkMulticastResourceState(api.MulticastResourceState o) {
  buildCounterMulticastResourceState++;
  if (buildCounterMulticastResourceState < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterMulticastResourceState--;
}

core.Map<core.String, core.Object?> buildUnnamed127() => {
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

void checkUnnamed127(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed128() => {
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

void checkUnnamed128(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed127();
    o.name = 'foo';
    o.response = buildUnnamed128();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed127(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed128(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed129() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed129(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed130() => [buildBinding(), buildBinding()];

void checkUnnamed130(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed129();
    o.bindings = buildUnnamed130();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed129(o.auditConfigs!);
    checkUnnamed130(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.Map<core.String, core.String> buildUnnamed131() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed131(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterProducerExtension = 0;
api.ProducerExtension buildProducerExtension() {
  final o = api.ProducerExtension();
  buildCounterProducerExtension++;
  if (buildCounterProducerExtension < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.extensionSettings = buildProducerExtensionExtensionSettings();
    o.labels = buildUnnamed131();
    o.name = 'foo';
    o.phase = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterProducerExtension--;
  return o;
}

void checkProducerExtension(api.ProducerExtension o) {
  buildCounterProducerExtension++;
  if (buildCounterProducerExtension < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkProducerExtensionExtensionSettings(o.extensionSettings!);
    checkUnnamed131(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.phase!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterProducerExtension--;
}

core.List<core.String> buildUnnamed132() => ['foo', 'foo'];

void checkUnnamed132(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProducerExtensionExtensionSettings = 0;
api.ProducerExtensionExtensionSettings
buildProducerExtensionExtensionSettings() {
  final o = api.ProducerExtensionExtensionSettings();
  buildCounterProducerExtensionExtensionSettings++;
  if (buildCounterProducerExtensionExtensionSettings < 3) {
    o.authority = 'foo';
    o.observabilityMode = true;
    o.service = 'foo';
    o.supportedEvents = buildUnnamed132();
  }
  buildCounterProducerExtensionExtensionSettings--;
  return o;
}

void checkProducerExtensionExtensionSettings(
  api.ProducerExtensionExtensionSettings o,
) {
  buildCounterProducerExtensionExtensionSettings++;
  if (buildCounterProducerExtensionExtensionSettings < 3) {
    unittest.expect(o.authority!, unittest.equals('foo'));
    unittest.expect(o.observabilityMode!, unittest.isTrue);
    unittest.expect(o.service!, unittest.equals('foo'));
    checkUnnamed132(o.supportedEvents!);
  }
  buildCounterProducerExtensionExtensionSettings--;
}

core.Map<core.String, core.String> buildUnnamed133() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed133(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterServiceBinding = 0;
api.ServiceBinding buildServiceBinding() {
  final o = api.ServiceBinding();
  buildCounterServiceBinding++;
  if (buildCounterServiceBinding < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed133();
    o.name = 'foo';
    o.service = 'foo';
    o.serviceId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterServiceBinding--;
  return o;
}

void checkServiceBinding(api.ServiceBinding o) {
  buildCounterServiceBinding++;
  if (buildCounterServiceBinding < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed133(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
    unittest.expect(o.serviceId!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterServiceBinding--;
}

core.Map<core.String, core.String> buildUnnamed134() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed134(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterServiceLbPolicy = 0;
api.ServiceLbPolicy buildServiceLbPolicy() {
  final o = api.ServiceLbPolicy();
  buildCounterServiceLbPolicy++;
  if (buildCounterServiceLbPolicy < 3) {
    o.autoCapacityDrain = buildServiceLbPolicyAutoCapacityDrain();
    o.createTime = 'foo';
    o.description = 'foo';
    o.failoverConfig = buildServiceLbPolicyFailoverConfig();
    o.isolationConfig = buildServiceLbPolicyIsolationConfig();
    o.labels = buildUnnamed134();
    o.loadBalancingAlgorithm = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterServiceLbPolicy--;
  return o;
}

void checkServiceLbPolicy(api.ServiceLbPolicy o) {
  buildCounterServiceLbPolicy++;
  if (buildCounterServiceLbPolicy < 3) {
    checkServiceLbPolicyAutoCapacityDrain(o.autoCapacityDrain!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkServiceLbPolicyFailoverConfig(o.failoverConfig!);
    checkServiceLbPolicyIsolationConfig(o.isolationConfig!);
    checkUnnamed134(o.labels!);
    unittest.expect(o.loadBalancingAlgorithm!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterServiceLbPolicy--;
}

core.int buildCounterServiceLbPolicyAutoCapacityDrain = 0;
api.ServiceLbPolicyAutoCapacityDrain buildServiceLbPolicyAutoCapacityDrain() {
  final o = api.ServiceLbPolicyAutoCapacityDrain();
  buildCounterServiceLbPolicyAutoCapacityDrain++;
  if (buildCounterServiceLbPolicyAutoCapacityDrain < 3) {
    o.enable = true;
  }
  buildCounterServiceLbPolicyAutoCapacityDrain--;
  return o;
}

void checkServiceLbPolicyAutoCapacityDrain(
  api.ServiceLbPolicyAutoCapacityDrain o,
) {
  buildCounterServiceLbPolicyAutoCapacityDrain++;
  if (buildCounterServiceLbPolicyAutoCapacityDrain < 3) {
    unittest.expect(o.enable!, unittest.isTrue);
  }
  buildCounterServiceLbPolicyAutoCapacityDrain--;
}

core.int buildCounterServiceLbPolicyFailoverConfig = 0;
api.ServiceLbPolicyFailoverConfig buildServiceLbPolicyFailoverConfig() {
  final o = api.ServiceLbPolicyFailoverConfig();
  buildCounterServiceLbPolicyFailoverConfig++;
  if (buildCounterServiceLbPolicyFailoverConfig < 3) {
    o.failoverHealthThreshold = 42;
  }
  buildCounterServiceLbPolicyFailoverConfig--;
  return o;
}

void checkServiceLbPolicyFailoverConfig(api.ServiceLbPolicyFailoverConfig o) {
  buildCounterServiceLbPolicyFailoverConfig++;
  if (buildCounterServiceLbPolicyFailoverConfig < 3) {
    unittest.expect(o.failoverHealthThreshold!, unittest.equals(42));
  }
  buildCounterServiceLbPolicyFailoverConfig--;
}

core.int buildCounterServiceLbPolicyIsolationConfig = 0;
api.ServiceLbPolicyIsolationConfig buildServiceLbPolicyIsolationConfig() {
  final o = api.ServiceLbPolicyIsolationConfig();
  buildCounterServiceLbPolicyIsolationConfig++;
  if (buildCounterServiceLbPolicyIsolationConfig < 3) {
    o.isolationGranularity = 'foo';
    o.isolationMode = 'foo';
  }
  buildCounterServiceLbPolicyIsolationConfig--;
  return o;
}

void checkServiceLbPolicyIsolationConfig(api.ServiceLbPolicyIsolationConfig o) {
  buildCounterServiceLbPolicyIsolationConfig++;
  if (buildCounterServiceLbPolicyIsolationConfig < 3) {
    unittest.expect(o.isolationGranularity!, unittest.equals('foo'));
    unittest.expect(o.isolationMode!, unittest.equals('foo'));
  }
  buildCounterServiceLbPolicyIsolationConfig--;
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

core.Map<core.String, core.Object?> buildUnnamed135() => {
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

void checkUnnamed135(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed136() => [
  buildUnnamed135(),
  buildUnnamed135(),
];

void checkUnnamed136(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed135(o[0]);
  checkUnnamed135(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed136();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed136(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed137() => ['foo', 'foo'];

void checkUnnamed137(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed138() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed138(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed139() => ['foo', 'foo'];

void checkUnnamed139(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TcpRouteRouteRule> buildUnnamed140() => [
  buildTcpRouteRouteRule(),
  buildTcpRouteRouteRule(),
];

void checkUnnamed140(core.List<api.TcpRouteRouteRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTcpRouteRouteRule(o[0]);
  checkTcpRouteRouteRule(o[1]);
}

core.int buildCounterTcpRoute = 0;
api.TcpRoute buildTcpRoute() {
  final o = api.TcpRoute();
  buildCounterTcpRoute++;
  if (buildCounterTcpRoute < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.gateways = buildUnnamed137();
    o.labels = buildUnnamed138();
    o.meshes = buildUnnamed139();
    o.name = 'foo';
    o.rules = buildUnnamed140();
    o.selfLink = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterTcpRoute--;
  return o;
}

void checkTcpRoute(api.TcpRoute o) {
  buildCounterTcpRoute++;
  if (buildCounterTcpRoute < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed137(o.gateways!);
    checkUnnamed138(o.labels!);
    checkUnnamed139(o.meshes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed140(o.rules!);
    unittest.expect(o.selfLink!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterTcpRoute--;
}

core.List<api.TcpRouteRouteDestination> buildUnnamed141() => [
  buildTcpRouteRouteDestination(),
  buildTcpRouteRouteDestination(),
];

void checkUnnamed141(core.List<api.TcpRouteRouteDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTcpRouteRouteDestination(o[0]);
  checkTcpRouteRouteDestination(o[1]);
}

core.int buildCounterTcpRouteRouteAction = 0;
api.TcpRouteRouteAction buildTcpRouteRouteAction() {
  final o = api.TcpRouteRouteAction();
  buildCounterTcpRouteRouteAction++;
  if (buildCounterTcpRouteRouteAction < 3) {
    o.destinations = buildUnnamed141();
    o.idleTimeout = 'foo';
    o.originalDestination = true;
  }
  buildCounterTcpRouteRouteAction--;
  return o;
}

void checkTcpRouteRouteAction(api.TcpRouteRouteAction o) {
  buildCounterTcpRouteRouteAction++;
  if (buildCounterTcpRouteRouteAction < 3) {
    checkUnnamed141(o.destinations!);
    unittest.expect(o.idleTimeout!, unittest.equals('foo'));
    unittest.expect(o.originalDestination!, unittest.isTrue);
  }
  buildCounterTcpRouteRouteAction--;
}

core.int buildCounterTcpRouteRouteDestination = 0;
api.TcpRouteRouteDestination buildTcpRouteRouteDestination() {
  final o = api.TcpRouteRouteDestination();
  buildCounterTcpRouteRouteDestination++;
  if (buildCounterTcpRouteRouteDestination < 3) {
    o.serviceName = 'foo';
    o.weight = 42;
  }
  buildCounterTcpRouteRouteDestination--;
  return o;
}

void checkTcpRouteRouteDestination(api.TcpRouteRouteDestination o) {
  buildCounterTcpRouteRouteDestination++;
  if (buildCounterTcpRouteRouteDestination < 3) {
    unittest.expect(o.serviceName!, unittest.equals('foo'));
    unittest.expect(o.weight!, unittest.equals(42));
  }
  buildCounterTcpRouteRouteDestination--;
}

core.int buildCounterTcpRouteRouteMatch = 0;
api.TcpRouteRouteMatch buildTcpRouteRouteMatch() {
  final o = api.TcpRouteRouteMatch();
  buildCounterTcpRouteRouteMatch++;
  if (buildCounterTcpRouteRouteMatch < 3) {
    o.address = 'foo';
    o.port = 'foo';
  }
  buildCounterTcpRouteRouteMatch--;
  return o;
}

void checkTcpRouteRouteMatch(api.TcpRouteRouteMatch o) {
  buildCounterTcpRouteRouteMatch++;
  if (buildCounterTcpRouteRouteMatch < 3) {
    unittest.expect(o.address!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals('foo'));
  }
  buildCounterTcpRouteRouteMatch--;
}

core.List<api.TcpRouteRouteMatch> buildUnnamed142() => [
  buildTcpRouteRouteMatch(),
  buildTcpRouteRouteMatch(),
];

void checkUnnamed142(core.List<api.TcpRouteRouteMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTcpRouteRouteMatch(o[0]);
  checkTcpRouteRouteMatch(o[1]);
}

core.int buildCounterTcpRouteRouteRule = 0;
api.TcpRouteRouteRule buildTcpRouteRouteRule() {
  final o = api.TcpRouteRouteRule();
  buildCounterTcpRouteRouteRule++;
  if (buildCounterTcpRouteRouteRule < 3) {
    o.action = buildTcpRouteRouteAction();
    o.matches = buildUnnamed142();
  }
  buildCounterTcpRouteRouteRule--;
  return o;
}

void checkTcpRouteRouteRule(api.TcpRouteRouteRule o) {
  buildCounterTcpRouteRouteRule++;
  if (buildCounterTcpRouteRouteRule < 3) {
    checkTcpRouteRouteAction(o.action!);
    checkUnnamed142(o.matches!);
  }
  buildCounterTcpRouteRouteRule--;
}

core.List<core.String> buildUnnamed143() => ['foo', 'foo'];

void checkUnnamed143(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed143();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed143(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed144() => ['foo', 'foo'];

void checkUnnamed144(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed144();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed144(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed145() => ['foo', 'foo'];

void checkUnnamed145(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed146() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed146(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed147() => ['foo', 'foo'];

void checkUnnamed147(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TlsRouteRouteRule> buildUnnamed148() => [
  buildTlsRouteRouteRule(),
  buildTlsRouteRouteRule(),
];

void checkUnnamed148(core.List<api.TlsRouteRouteRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTlsRouteRouteRule(o[0]);
  checkTlsRouteRouteRule(o[1]);
}

core.List<core.String> buildUnnamed149() => ['foo', 'foo'];

void checkUnnamed149(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTlsRoute = 0;
api.TlsRoute buildTlsRoute() {
  final o = api.TlsRoute();
  buildCounterTlsRoute++;
  if (buildCounterTlsRoute < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.gateways = buildUnnamed145();
    o.labels = buildUnnamed146();
    o.meshes = buildUnnamed147();
    o.name = 'foo';
    o.rules = buildUnnamed148();
    o.selfLink = 'foo';
    o.targetProxies = buildUnnamed149();
    o.updateTime = 'foo';
  }
  buildCounterTlsRoute--;
  return o;
}

void checkTlsRoute(api.TlsRoute o) {
  buildCounterTlsRoute++;
  if (buildCounterTlsRoute < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed145(o.gateways!);
    checkUnnamed146(o.labels!);
    checkUnnamed147(o.meshes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed148(o.rules!);
    unittest.expect(o.selfLink!, unittest.equals('foo'));
    checkUnnamed149(o.targetProxies!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterTlsRoute--;
}

core.List<api.TlsRouteRouteDestination> buildUnnamed150() => [
  buildTlsRouteRouteDestination(),
  buildTlsRouteRouteDestination(),
];

void checkUnnamed150(core.List<api.TlsRouteRouteDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTlsRouteRouteDestination(o[0]);
  checkTlsRouteRouteDestination(o[1]);
}

core.int buildCounterTlsRouteRouteAction = 0;
api.TlsRouteRouteAction buildTlsRouteRouteAction() {
  final o = api.TlsRouteRouteAction();
  buildCounterTlsRouteRouteAction++;
  if (buildCounterTlsRouteRouteAction < 3) {
    o.destinations = buildUnnamed150();
    o.idleTimeout = 'foo';
  }
  buildCounterTlsRouteRouteAction--;
  return o;
}

void checkTlsRouteRouteAction(api.TlsRouteRouteAction o) {
  buildCounterTlsRouteRouteAction++;
  if (buildCounterTlsRouteRouteAction < 3) {
    checkUnnamed150(o.destinations!);
    unittest.expect(o.idleTimeout!, unittest.equals('foo'));
  }
  buildCounterTlsRouteRouteAction--;
}

core.int buildCounterTlsRouteRouteDestination = 0;
api.TlsRouteRouteDestination buildTlsRouteRouteDestination() {
  final o = api.TlsRouteRouteDestination();
  buildCounterTlsRouteRouteDestination++;
  if (buildCounterTlsRouteRouteDestination < 3) {
    o.serviceName = 'foo';
    o.weight = 42;
  }
  buildCounterTlsRouteRouteDestination--;
  return o;
}

void checkTlsRouteRouteDestination(api.TlsRouteRouteDestination o) {
  buildCounterTlsRouteRouteDestination++;
  if (buildCounterTlsRouteRouteDestination < 3) {
    unittest.expect(o.serviceName!, unittest.equals('foo'));
    unittest.expect(o.weight!, unittest.equals(42));
  }
  buildCounterTlsRouteRouteDestination--;
}

core.List<core.String> buildUnnamed151() => ['foo', 'foo'];

void checkUnnamed151(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed152() => ['foo', 'foo'];

void checkUnnamed152(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTlsRouteRouteMatch = 0;
api.TlsRouteRouteMatch buildTlsRouteRouteMatch() {
  final o = api.TlsRouteRouteMatch();
  buildCounterTlsRouteRouteMatch++;
  if (buildCounterTlsRouteRouteMatch < 3) {
    o.alpn = buildUnnamed151();
    o.sniHost = buildUnnamed152();
  }
  buildCounterTlsRouteRouteMatch--;
  return o;
}

void checkTlsRouteRouteMatch(api.TlsRouteRouteMatch o) {
  buildCounterTlsRouteRouteMatch++;
  if (buildCounterTlsRouteRouteMatch < 3) {
    checkUnnamed151(o.alpn!);
    checkUnnamed152(o.sniHost!);
  }
  buildCounterTlsRouteRouteMatch--;
}

core.List<api.TlsRouteRouteMatch> buildUnnamed153() => [
  buildTlsRouteRouteMatch(),
  buildTlsRouteRouteMatch(),
];

void checkUnnamed153(core.List<api.TlsRouteRouteMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTlsRouteRouteMatch(o[0]);
  checkTlsRouteRouteMatch(o[1]);
}

core.int buildCounterTlsRouteRouteRule = 0;
api.TlsRouteRouteRule buildTlsRouteRouteRule() {
  final o = api.TlsRouteRouteRule();
  buildCounterTlsRouteRouteRule++;
  if (buildCounterTlsRouteRouteRule < 3) {
    o.action = buildTlsRouteRouteAction();
    o.matches = buildUnnamed153();
  }
  buildCounterTlsRouteRouteRule--;
  return o;
}

void checkTlsRouteRouteRule(api.TlsRouteRouteRule o) {
  buildCounterTlsRouteRouteRule++;
  if (buildCounterTlsRouteRouteRule < 3) {
    checkTlsRouteRouteAction(o.action!);
    checkUnnamed153(o.matches!);
  }
  buildCounterTlsRouteRouteRule--;
}

core.List<core.String> buildUnnamed154() => ['foo', 'foo'];

void checkUnnamed154(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTrafficPortSelector = 0;
api.TrafficPortSelector buildTrafficPortSelector() {
  final o = api.TrafficPortSelector();
  buildCounterTrafficPortSelector++;
  if (buildCounterTrafficPortSelector < 3) {
    o.ports = buildUnnamed154();
  }
  buildCounterTrafficPortSelector--;
  return o;
}

void checkTrafficPortSelector(api.TrafficPortSelector o) {
  buildCounterTrafficPortSelector++;
  if (buildCounterTrafficPortSelector < 3) {
    checkUnnamed154(o.ports!);
  }
  buildCounterTrafficPortSelector--;
}

core.Map<core.String, core.String> buildUnnamed155() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed155(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.WasmPluginUsedBy> buildUnnamed156() => [
  buildWasmPluginUsedBy(),
  buildWasmPluginUsedBy(),
];

void checkUnnamed156(core.List<api.WasmPluginUsedBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWasmPluginUsedBy(o[0]);
  checkWasmPluginUsedBy(o[1]);
}

core.Map<core.String, api.WasmPluginVersionDetails> buildUnnamed157() => {
  'x': buildWasmPluginVersionDetails(),
  'y': buildWasmPluginVersionDetails(),
};

void checkUnnamed157(core.Map<core.String, api.WasmPluginVersionDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWasmPluginVersionDetails(o['x']!);
  checkWasmPluginVersionDetails(o['y']!);
}

core.int buildCounterWasmPlugin = 0;
api.WasmPlugin buildWasmPlugin() {
  final o = api.WasmPlugin();
  buildCounterWasmPlugin++;
  if (buildCounterWasmPlugin < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed155();
    o.logConfig = buildWasmPluginLogConfig();
    o.mainVersionId = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
    o.usedBy = buildUnnamed156();
    o.versions = buildUnnamed157();
  }
  buildCounterWasmPlugin--;
  return o;
}

void checkWasmPlugin(api.WasmPlugin o) {
  buildCounterWasmPlugin++;
  if (buildCounterWasmPlugin < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed155(o.labels!);
    checkWasmPluginLogConfig(o.logConfig!);
    unittest.expect(o.mainVersionId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUnnamed156(o.usedBy!);
    checkUnnamed157(o.versions!);
  }
  buildCounterWasmPlugin--;
}

core.int buildCounterWasmPluginLogConfig = 0;
api.WasmPluginLogConfig buildWasmPluginLogConfig() {
  final o = api.WasmPluginLogConfig();
  buildCounterWasmPluginLogConfig++;
  if (buildCounterWasmPluginLogConfig < 3) {
    o.enable = true;
    o.minLogLevel = 'foo';
    o.sampleRate = 42.0;
  }
  buildCounterWasmPluginLogConfig--;
  return o;
}

void checkWasmPluginLogConfig(api.WasmPluginLogConfig o) {
  buildCounterWasmPluginLogConfig++;
  if (buildCounterWasmPluginLogConfig < 3) {
    unittest.expect(o.enable!, unittest.isTrue);
    unittest.expect(o.minLogLevel!, unittest.equals('foo'));
    unittest.expect(o.sampleRate!, unittest.equals(42.0));
  }
  buildCounterWasmPluginLogConfig--;
}

core.int buildCounterWasmPluginUsedBy = 0;
api.WasmPluginUsedBy buildWasmPluginUsedBy() {
  final o = api.WasmPluginUsedBy();
  buildCounterWasmPluginUsedBy++;
  if (buildCounterWasmPluginUsedBy < 3) {
    o.name = 'foo';
  }
  buildCounterWasmPluginUsedBy--;
  return o;
}

void checkWasmPluginUsedBy(api.WasmPluginUsedBy o) {
  buildCounterWasmPluginUsedBy++;
  if (buildCounterWasmPluginUsedBy < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterWasmPluginUsedBy--;
}

core.Map<core.String, core.String> buildUnnamed158() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed158(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterWasmPluginVersion = 0;
api.WasmPluginVersion buildWasmPluginVersion() {
  final o = api.WasmPluginVersion();
  buildCounterWasmPluginVersion++;
  if (buildCounterWasmPluginVersion < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.imageDigest = 'foo';
    o.imageUri = 'foo';
    o.labels = buildUnnamed158();
    o.name = 'foo';
    o.pluginConfigData = 'foo';
    o.pluginConfigDigest = 'foo';
    o.pluginConfigUri = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterWasmPluginVersion--;
  return o;
}

void checkWasmPluginVersion(api.WasmPluginVersion o) {
  buildCounterWasmPluginVersion++;
  if (buildCounterWasmPluginVersion < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.imageDigest!, unittest.equals('foo'));
    unittest.expect(o.imageUri!, unittest.equals('foo'));
    checkUnnamed158(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.pluginConfigData!, unittest.equals('foo'));
    unittest.expect(o.pluginConfigDigest!, unittest.equals('foo'));
    unittest.expect(o.pluginConfigUri!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterWasmPluginVersion--;
}

core.Map<core.String, core.String> buildUnnamed159() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed159(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterWasmPluginVersionDetails = 0;
api.WasmPluginVersionDetails buildWasmPluginVersionDetails() {
  final o = api.WasmPluginVersionDetails();
  buildCounterWasmPluginVersionDetails++;
  if (buildCounterWasmPluginVersionDetails < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.imageDigest = 'foo';
    o.imageUri = 'foo';
    o.labels = buildUnnamed159();
    o.pluginConfigData = 'foo';
    o.pluginConfigDigest = 'foo';
    o.pluginConfigUri = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterWasmPluginVersionDetails--;
  return o;
}

void checkWasmPluginVersionDetails(api.WasmPluginVersionDetails o) {
  buildCounterWasmPluginVersionDetails++;
  if (buildCounterWasmPluginVersionDetails < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.imageDigest!, unittest.equals('foo'));
    unittest.expect(o.imageUri!, unittest.equals('foo'));
    checkUnnamed159(o.labels!);
    unittest.expect(o.pluginConfigData!, unittest.equals('foo'));
    unittest.expect(o.pluginConfigDigest!, unittest.equals('foo'));
    unittest.expect(o.pluginConfigUri!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterWasmPluginVersionDetails--;
}

core.List<core.String> buildUnnamed160() => ['foo', 'foo'];

void checkUnnamed160(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AgentConnectivityTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentConnectivityTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentConnectivityTemplate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentConnectivityTemplate(od);
    });
  });

  unittest.group('obj-schema-AgentGateway', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentGateway();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentGateway.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentGateway(od);
    });
  });

  unittest.group('obj-schema-AgentGatewayAgentGatewayOutputCard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentGatewayAgentGatewayOutputCard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentGatewayAgentGatewayOutputCard.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentGatewayAgentGatewayOutputCard(od);
    });
  });

  unittest.group('obj-schema-AgentGatewayGoogleManaged', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentGatewayGoogleManaged();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentGatewayGoogleManaged.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentGatewayGoogleManaged(od);
    });
  });

  unittest.group('obj-schema-AgentGatewayNetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentGatewayNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentGatewayNetworkConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentGatewayNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-AgentGatewayNetworkConfigDnsPeeringConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentGatewayNetworkConfigDnsPeeringConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentGatewayNetworkConfigDnsPeeringConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentGatewayNetworkConfigDnsPeeringConfig(od);
    });
  });

  unittest.group('obj-schema-AgentGatewayNetworkConfigEgress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentGatewayNetworkConfigEgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentGatewayNetworkConfigEgress.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentGatewayNetworkConfigEgress(od);
    });
  });

  unittest.group('obj-schema-AgentGatewaySelfManaged', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentGatewaySelfManaged();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentGatewaySelfManaged.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentGatewaySelfManaged(od);
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

  unittest.group('obj-schema-AuthzExtension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzExtension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzExtension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzExtension(od);
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

  unittest.group('obj-schema-DnsPeeringConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsPeeringConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DnsPeeringConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDnsPeeringConfig(od);
    });
  });

  unittest.group('obj-schema-EgressNetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEgressNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EgressNetworkConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEgressNetworkConfig(od);
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

  unittest.group('obj-schema-EndpointMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpointMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndpointMatcher.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEndpointMatcher(od);
    });
  });

  unittest.group('obj-schema-EndpointMatcherMetadataLabelMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpointMatcherMetadataLabelMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndpointMatcherMetadataLabelMatcher.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEndpointMatcherMetadataLabelMatcher(od);
    });
  });

  unittest.group(
    'obj-schema-EndpointMatcherMetadataLabelMatcherMetadataLabels',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildEndpointMatcherMetadataLabelMatcherMetadataLabels();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.EndpointMatcherMetadataLabelMatcherMetadataLabels.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkEndpointMatcherMetadataLabelMatcherMetadataLabels(od);
      });
    },
  );

  unittest.group('obj-schema-EndpointPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpointPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndpointPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEndpointPolicy(od);
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

  unittest.group('obj-schema-ExtensionBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtensionBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtensionBinding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtensionBinding(od);
    });
  });

  unittest.group('obj-schema-ExtensionBindingMatchCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtensionBindingMatchCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtensionBindingMatchCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtensionBindingMatchCondition(od);
    });
  });

  unittest.group('obj-schema-ExtensionBindingMatchConditionHeaderMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtensionBindingMatchConditionHeaderMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtensionBindingMatchConditionHeaderMatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtensionBindingMatchConditionHeaderMatch(od);
    });
  });

  unittest.group('obj-schema-ExtensionBindingMatchConditionStringMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtensionBindingMatchConditionStringMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtensionBindingMatchConditionStringMatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtensionBindingMatchConditionStringMatch(od);
    });
  });

  unittest.group('obj-schema-ExtensionBindingMatchConditionTo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtensionBindingMatchConditionTo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtensionBindingMatchConditionTo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtensionBindingMatchConditionTo(od);
    });
  });

  unittest.group('obj-schema-ExtensionBindingMatchConditionToDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtensionBindingMatchConditionToDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtensionBindingMatchConditionToDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtensionBindingMatchConditionToDestination(od);
    });
  });

  unittest.group(
    'obj-schema-ExtensionBindingMatchConditionToDestinationHeaderSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildExtensionBindingMatchConditionToDestinationHeaderSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.ExtensionBindingMatchConditionToDestinationHeaderSet.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkExtensionBindingMatchConditionToDestinationHeaderSet(od);
      });
    },
  );

  unittest.group('obj-schema-ExtensionBindingTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtensionBindingTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtensionBindingTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtensionBindingTarget(od);
    });
  });

  unittest.group('obj-schema-ExtensionBindingTargetScope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtensionBindingTargetScope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtensionBindingTargetScope.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtensionBindingTargetScope(od);
    });
  });

  unittest.group('obj-schema-ExtensionChain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtensionChain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtensionChain.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtensionChain(od);
    });
  });

  unittest.group('obj-schema-ExtensionChainExtension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtensionChainExtension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtensionChainExtension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtensionChainExtension(od);
    });
  });

  unittest.group('obj-schema-ExtensionChainMatchCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtensionChainMatchCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtensionChainMatchCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtensionChainMatchCondition(od);
    });
  });

  unittest.group('obj-schema-Gateway', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGateway();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Gateway.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGateway(od);
    });
  });

  unittest.group('obj-schema-GatewayRouteView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGatewayRouteView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GatewayRouteView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGatewayRouteView(od);
    });
  });

  unittest.group('obj-schema-GrpcRoute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRoute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRoute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrpcRoute(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrpcRouteDestination(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteFaultInjectionPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteFaultInjectionPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteFaultInjectionPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrpcRouteFaultInjectionPolicy(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteFaultInjectionPolicyAbort', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteFaultInjectionPolicyAbort();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteFaultInjectionPolicyAbort.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrpcRouteFaultInjectionPolicyAbort(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteFaultInjectionPolicyDelay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteFaultInjectionPolicyDelay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteFaultInjectionPolicyDelay.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrpcRouteFaultInjectionPolicyDelay(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteHeaderMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteHeaderMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteHeaderMatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrpcRouteHeaderMatch(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteMethodMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteMethodMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteMethodMatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrpcRouteMethodMatch(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteRetryPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteRetryPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteRetryPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrpcRouteRetryPolicy(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteRouteAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteRouteAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteRouteAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrpcRouteRouteAction(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteRouteMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteRouteMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteRouteMatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrpcRouteRouteMatch(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteRouteRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteRouteRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteRouteRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrpcRouteRouteRule(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteStatefulSessionAffinityPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteStatefulSessionAffinityPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteStatefulSessionAffinityPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrpcRouteStatefulSessionAffinityPolicy(od);
    });
  });

  unittest.group('obj-schema-HttpRoute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRoute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRoute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRoute(od);
    });
  });

  unittest.group('obj-schema-HttpRouteCorsPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteCorsPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteCorsPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteCorsPolicy(od);
    });
  });

  unittest.group('obj-schema-HttpRouteDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteDestination(od);
    });
  });

  unittest.group('obj-schema-HttpRouteFaultInjectionPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteFaultInjectionPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteFaultInjectionPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteFaultInjectionPolicy(od);
    });
  });

  unittest.group('obj-schema-HttpRouteFaultInjectionPolicyAbort', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteFaultInjectionPolicyAbort();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteFaultInjectionPolicyAbort.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteFaultInjectionPolicyAbort(od);
    });
  });

  unittest.group('obj-schema-HttpRouteFaultInjectionPolicyDelay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteFaultInjectionPolicyDelay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteFaultInjectionPolicyDelay.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteFaultInjectionPolicyDelay(od);
    });
  });

  unittest.group('obj-schema-HttpRouteHeaderMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteHeaderMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteHeaderMatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteHeaderMatch(od);
    });
  });

  unittest.group('obj-schema-HttpRouteHeaderMatchIntegerRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteHeaderMatchIntegerRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteHeaderMatchIntegerRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteHeaderMatchIntegerRange(od);
    });
  });

  unittest.group('obj-schema-HttpRouteHeaderModifier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteHeaderModifier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteHeaderModifier.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteHeaderModifier(od);
    });
  });

  unittest.group('obj-schema-HttpRouteHttpDirectResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteHttpDirectResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteHttpDirectResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteHttpDirectResponse(od);
    });
  });

  unittest.group('obj-schema-HttpRouteQueryParameterMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteQueryParameterMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteQueryParameterMatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteQueryParameterMatch(od);
    });
  });

  unittest.group('obj-schema-HttpRouteRedirect', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteRedirect();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteRedirect.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteRedirect(od);
    });
  });

  unittest.group('obj-schema-HttpRouteRequestMirrorPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteRequestMirrorPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteRequestMirrorPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteRequestMirrorPolicy(od);
    });
  });

  unittest.group('obj-schema-HttpRouteRetryPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteRetryPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteRetryPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteRetryPolicy(od);
    });
  });

  unittest.group('obj-schema-HttpRouteRouteAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteRouteAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteRouteAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteRouteAction(od);
    });
  });

  unittest.group('obj-schema-HttpRouteRouteMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteRouteMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteRouteMatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteRouteMatch(od);
    });
  });

  unittest.group('obj-schema-HttpRouteRouteRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteRouteRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteRouteRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteRouteRule(od);
    });
  });

  unittest.group('obj-schema-HttpRouteStatefulSessionAffinityPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteStatefulSessionAffinityPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteStatefulSessionAffinityPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteStatefulSessionAffinityPolicy(od);
    });
  });

  unittest.group('obj-schema-HttpRouteURLRewrite', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteURLRewrite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteURLRewrite.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRouteURLRewrite(od);
    });
  });

  unittest.group('obj-schema-LbEdgeExtension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLbEdgeExtension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LbEdgeExtension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLbEdgeExtension(od);
    });
  });

  unittest.group('obj-schema-LbRouteExtension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLbRouteExtension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LbRouteExtension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLbRouteExtension(od);
    });
  });

  unittest.group('obj-schema-LbTrafficExtension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLbTrafficExtension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LbTrafficExtension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLbTrafficExtension(od);
    });
  });

  unittest.group('obj-schema-ListAgentConnectivityTemplatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAgentConnectivityTemplatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAgentConnectivityTemplatesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAgentConnectivityTemplatesResponse(od);
    });
  });

  unittest.group('obj-schema-ListAgentGatewaysResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAgentGatewaysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAgentGatewaysResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAgentGatewaysResponse(od);
    });
  });

  unittest.group('obj-schema-ListAuthzExtensionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAuthzExtensionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAuthzExtensionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAuthzExtensionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListEndpointPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEndpointPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEndpointPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListEndpointPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListExtensionBindingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExtensionBindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExtensionBindingsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListExtensionBindingsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGatewayRouteViewsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGatewayRouteViewsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGatewayRouteViewsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGatewayRouteViewsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGatewaysResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGatewaysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGatewaysResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGatewaysResponse(od);
    });
  });

  unittest.group('obj-schema-ListGrpcRoutesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGrpcRoutesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGrpcRoutesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGrpcRoutesResponse(od);
    });
  });

  unittest.group('obj-schema-ListHttpRoutesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListHttpRoutesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListHttpRoutesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListHttpRoutesResponse(od);
    });
  });

  unittest.group('obj-schema-ListLbEdgeExtensionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLbEdgeExtensionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLbEdgeExtensionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLbEdgeExtensionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLbRouteExtensionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLbRouteExtensionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLbRouteExtensionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLbRouteExtensionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLbTrafficExtensionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLbTrafficExtensionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLbTrafficExtensionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLbTrafficExtensionsResponse(od);
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

  unittest.group('obj-schema-ListMeshRouteViewsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMeshRouteViewsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMeshRouteViewsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMeshRouteViewsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMeshesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMeshesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMeshesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMeshesResponse(od);
    });
  });

  unittest.group('obj-schema-ListMulticastConsumerAssociationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMulticastConsumerAssociationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMulticastConsumerAssociationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMulticastConsumerAssociationsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-ListMulticastGroupConsumerActivationsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildListMulticastGroupConsumerActivationsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.ListMulticastGroupConsumerActivationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkListMulticastGroupConsumerActivationsResponse(od);
      });
    },
  );

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

  unittest.group('obj-schema-ListProducerExtensionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProducerExtensionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProducerExtensionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListProducerExtensionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListServiceBindingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServiceBindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServiceBindingsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListServiceBindingsResponse(od);
    });
  });

  unittest.group('obj-schema-ListServiceLbPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServiceLbPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServiceLbPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListServiceLbPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListTcpRoutesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTcpRoutesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTcpRoutesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTcpRoutesResponse(od);
    });
  });

  unittest.group('obj-schema-ListTlsRoutesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTlsRoutesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTlsRoutesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTlsRoutesResponse(od);
    });
  });

  unittest.group('obj-schema-ListWasmPluginVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWasmPluginVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWasmPluginVersionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListWasmPluginVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListWasmPluginsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWasmPluginsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWasmPluginsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListWasmPluginsResponse(od);
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

  unittest.group('obj-schema-Mesh', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMesh();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Mesh.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMesh(od);
    });
  });

  unittest.group('obj-schema-MeshRouteView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMeshRouteView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MeshRouteView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMeshRouteView(od);
    });
  });

  unittest.group('obj-schema-MulticastConsumerAssociation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMulticastConsumerAssociation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MulticastConsumerAssociation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMulticastConsumerAssociation(od);
    });
  });

  unittest.group('obj-schema-MulticastGroupConsumerActivation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMulticastGroupConsumerActivation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MulticastGroupConsumerActivation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMulticastGroupConsumerActivation(od);
    });
  });

  unittest.group('obj-schema-MulticastLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMulticastLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MulticastLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMulticastLogConfig(od);
    });
  });

  unittest.group('obj-schema-MulticastResourceState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMulticastResourceState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MulticastResourceState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMulticastResourceState(od);
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

  unittest.group('obj-schema-ProducerExtension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProducerExtension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProducerExtension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProducerExtension(od);
    });
  });

  unittest.group('obj-schema-ProducerExtensionExtensionSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProducerExtensionExtensionSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProducerExtensionExtensionSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProducerExtensionExtensionSettings(od);
    });
  });

  unittest.group('obj-schema-ServiceBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceBinding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceBinding(od);
    });
  });

  unittest.group('obj-schema-ServiceLbPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceLbPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceLbPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceLbPolicy(od);
    });
  });

  unittest.group('obj-schema-ServiceLbPolicyAutoCapacityDrain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceLbPolicyAutoCapacityDrain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceLbPolicyAutoCapacityDrain.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceLbPolicyAutoCapacityDrain(od);
    });
  });

  unittest.group('obj-schema-ServiceLbPolicyFailoverConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceLbPolicyFailoverConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceLbPolicyFailoverConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceLbPolicyFailoverConfig(od);
    });
  });

  unittest.group('obj-schema-ServiceLbPolicyIsolationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceLbPolicyIsolationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceLbPolicyIsolationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceLbPolicyIsolationConfig(od);
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

  unittest.group('obj-schema-TcpRoute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTcpRoute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TcpRoute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTcpRoute(od);
    });
  });

  unittest.group('obj-schema-TcpRouteRouteAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTcpRouteRouteAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TcpRouteRouteAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTcpRouteRouteAction(od);
    });
  });

  unittest.group('obj-schema-TcpRouteRouteDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTcpRouteRouteDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TcpRouteRouteDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTcpRouteRouteDestination(od);
    });
  });

  unittest.group('obj-schema-TcpRouteRouteMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTcpRouteRouteMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TcpRouteRouteMatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTcpRouteRouteMatch(od);
    });
  });

  unittest.group('obj-schema-TcpRouteRouteRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTcpRouteRouteRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TcpRouteRouteRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTcpRouteRouteRule(od);
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

  unittest.group('obj-schema-TlsRoute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTlsRoute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TlsRoute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTlsRoute(od);
    });
  });

  unittest.group('obj-schema-TlsRouteRouteAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTlsRouteRouteAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TlsRouteRouteAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTlsRouteRouteAction(od);
    });
  });

  unittest.group('obj-schema-TlsRouteRouteDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTlsRouteRouteDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TlsRouteRouteDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTlsRouteRouteDestination(od);
    });
  });

  unittest.group('obj-schema-TlsRouteRouteMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTlsRouteRouteMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TlsRouteRouteMatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTlsRouteRouteMatch(od);
    });
  });

  unittest.group('obj-schema-TlsRouteRouteRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTlsRouteRouteRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TlsRouteRouteRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTlsRouteRouteRule(od);
    });
  });

  unittest.group('obj-schema-TrafficPortSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrafficPortSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrafficPortSelector.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTrafficPortSelector(od);
    });
  });

  unittest.group('obj-schema-WasmPlugin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWasmPlugin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WasmPlugin.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWasmPlugin(od);
    });
  });

  unittest.group('obj-schema-WasmPluginLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWasmPluginLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WasmPluginLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWasmPluginLogConfig(od);
    });
  });

  unittest.group('obj-schema-WasmPluginUsedBy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWasmPluginUsedBy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WasmPluginUsedBy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWasmPluginUsedBy(od);
    });
  });

  unittest.group('obj-schema-WasmPluginVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWasmPluginVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WasmPluginVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWasmPluginVersion(od);
    });
  });

  unittest.group('obj-schema-WasmPluginVersionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWasmPluginVersionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WasmPluginVersionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWasmPluginVersionDetails(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations;
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
      final res = api.NetworkServicesApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed160();
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

  unittest.group('resource-ProjectsLocationsAgentConnectivityTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.agentConnectivityTemplates;
      final arg_request = buildAgentConnectivityTemplate();
      final arg_parent = 'foo';
      final arg_agentConnectivityTemplateId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AgentConnectivityTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAgentConnectivityTemplate(obj);

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
            queryMap['agentConnectivityTemplateId']!.first,
            unittest.equals(arg_agentConnectivityTemplateId),
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
        agentConnectivityTemplateId: arg_agentConnectivityTemplateId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.agentConnectivityTemplates;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.agentConnectivityTemplates;
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
          final resp = convert.json.encode(buildAgentConnectivityTemplate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAgentConnectivityTemplate(response as api.AgentConnectivityTemplate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.agentConnectivityTemplates;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(
            buildListAgentConnectivityTemplatesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListAgentConnectivityTemplatesResponse(
        response as api.ListAgentConnectivityTemplatesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.agentConnectivityTemplates;
      final arg_request = buildAgentConnectivityTemplate();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AgentConnectivityTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAgentConnectivityTemplate(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentGatewaysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.agentGateways;
      final arg_request = buildAgentGateway();
      final arg_parent = 'foo';
      final arg_agentGatewayId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AgentGateway.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAgentGateway(obj);

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
            queryMap['agentGatewayId']!.first,
            unittest.equals(arg_agentGatewayId),
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
        agentGatewayId: arg_agentGatewayId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.agentGateways;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.agentGateways;
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
          final resp = convert.json.encode(buildAgentGateway());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAgentGateway(response as api.AgentGateway);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.agentGateways;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListAgentGatewaysResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListAgentGatewaysResponse(response as api.ListAgentGatewaysResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.agentGateways;
      final arg_request = buildAgentGateway();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AgentGateway.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAgentGateway(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsAuthzExtensionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.authzExtensions;
      final arg_request = buildAuthzExtension();
      final arg_parent = 'foo';
      final arg_authzExtensionId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuthzExtension.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuthzExtension(obj);

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
            queryMap['authzExtensionId']!.first,
            unittest.equals(arg_authzExtensionId),
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
        authzExtensionId: arg_authzExtensionId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.authzExtensions;
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
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.authzExtensions;
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
          final resp = convert.json.encode(buildAuthzExtension());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAuthzExtension(response as api.AuthzExtension);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.authzExtensions;
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
          final resp = convert.json.encode(buildListAuthzExtensionsResponse());
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
      checkListAuthzExtensionsResponse(
        response as api.ListAuthzExtensionsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.authzExtensions;
      final arg_request = buildAuthzExtension();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuthzExtension.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuthzExtension(obj);

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

  unittest.group('resource-ProjectsLocationsEdgeCacheKeysetsResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.edgeCacheKeysets;
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

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.edgeCacheKeysets;
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
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.edgeCacheKeysets;
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

  unittest.group('resource-ProjectsLocationsEdgeCacheOriginsResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.edgeCacheOrigins;
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

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.edgeCacheOrigins;
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
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.edgeCacheOrigins;
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

  unittest.group('resource-ProjectsLocationsEdgeCacheServicesResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.edgeCacheServices;
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

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.edgeCacheServices;
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
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.edgeCacheServices;
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

  unittest.group('resource-ProjectsLocationsEndpointPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.endpointPolicies;
      final arg_request = buildEndpointPolicy();
      final arg_parent = 'foo';
      final arg_endpointPolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EndpointPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEndpointPolicy(obj);

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
            queryMap['endpointPolicyId']!.first,
            unittest.equals(arg_endpointPolicyId),
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
        endpointPolicyId: arg_endpointPolicyId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.endpointPolicies;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.endpointPolicies;
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
          final resp = convert.json.encode(buildEndpointPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEndpointPolicy(response as api.EndpointPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.endpointPolicies;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListEndpointPoliciesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListEndpointPoliciesResponse(
        response as api.ListEndpointPoliciesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.endpointPolicies;
      final arg_request = buildEndpointPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EndpointPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEndpointPolicy(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsExtensionBindingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.extensionBindings;
      final arg_request = buildExtensionBinding();
      final arg_parent = 'foo';
      final arg_extensionBindingId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExtensionBinding.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExtensionBinding(obj);

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
            queryMap['extensionBindingId']!.first,
            unittest.equals(arg_extensionBindingId),
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
        extensionBindingId: arg_extensionBindingId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.extensionBindings;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.extensionBindings;
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
          final resp = convert.json.encode(buildExtensionBinding());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkExtensionBinding(response as api.ExtensionBinding);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.extensionBindings;
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
            buildListExtensionBindingsResponse(),
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
      checkListExtensionBindingsResponse(
        response as api.ListExtensionBindingsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.extensionBindings;
      final arg_request = buildExtensionBinding();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExtensionBinding.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExtensionBinding(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsGatewaysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.gateways;
      final arg_request = buildGateway();
      final arg_parent = 'foo';
      final arg_gatewayId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Gateway.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGateway(obj);

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
            queryMap['gatewayId']!.first,
            unittest.equals(arg_gatewayId),
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
        gatewayId: arg_gatewayId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.gateways;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.gateways;
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
          final resp = convert.json.encode(buildGateway());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGateway(response as api.Gateway);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.gateways;
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
          final resp = convert.json.encode(buildListGatewaysResponse());
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
      checkListGatewaysResponse(response as api.ListGatewaysResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.gateways;
      final arg_request = buildGateway();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Gateway.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGateway(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsGatewaysRouteViewsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.gateways.routeViews;
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
          final resp = convert.json.encode(buildGatewayRouteView());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGatewayRouteView(response as api.GatewayRouteView);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.gateways.routeViews;
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
            buildListGatewayRouteViewsResponse(),
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
      checkListGatewayRouteViewsResponse(
        response as api.ListGatewayRouteViewsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsGrpcRoutesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.grpcRoutes;
      final arg_request = buildGrpcRoute();
      final arg_parent = 'foo';
      final arg_grpcRouteId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GrpcRoute.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGrpcRoute(obj);

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
            queryMap['grpcRouteId']!.first,
            unittest.equals(arg_grpcRouteId),
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
        grpcRouteId: arg_grpcRouteId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.grpcRoutes;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.grpcRoutes;
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
          final resp = convert.json.encode(buildGrpcRoute());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGrpcRoute(response as api.GrpcRoute);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.grpcRoutes;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListGrpcRoutesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListGrpcRoutesResponse(response as api.ListGrpcRoutesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.grpcRoutes;
      final arg_request = buildGrpcRoute();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GrpcRoute.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGrpcRoute(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsHttpRoutesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.httpRoutes;
      final arg_request = buildHttpRoute();
      final arg_parent = 'foo';
      final arg_httpRouteId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.HttpRoute.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHttpRoute(obj);

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
            queryMap['httpRouteId']!.first,
            unittest.equals(arg_httpRouteId),
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
        httpRouteId: arg_httpRouteId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.httpRoutes;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.httpRoutes;
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
          final resp = convert.json.encode(buildHttpRoute());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkHttpRoute(response as api.HttpRoute);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.httpRoutes;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListHttpRoutesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListHttpRoutesResponse(response as api.ListHttpRoutesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.httpRoutes;
      final arg_request = buildHttpRoute();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.HttpRoute.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHttpRoute(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsLbEdgeExtensionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.lbEdgeExtensions;
      final arg_request = buildLbEdgeExtension();
      final arg_parent = 'foo';
      final arg_lbEdgeExtensionId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LbEdgeExtension.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLbEdgeExtension(obj);

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
            queryMap['lbEdgeExtensionId']!.first,
            unittest.equals(arg_lbEdgeExtensionId),
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
        lbEdgeExtensionId: arg_lbEdgeExtensionId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.lbEdgeExtensions;
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
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.lbEdgeExtensions;
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
          final resp = convert.json.encode(buildLbEdgeExtension());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLbEdgeExtension(response as api.LbEdgeExtension);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.lbEdgeExtensions;
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
          final resp = convert.json.encode(buildListLbEdgeExtensionsResponse());
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
      checkListLbEdgeExtensionsResponse(
        response as api.ListLbEdgeExtensionsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.lbEdgeExtensions;
      final arg_request = buildLbEdgeExtension();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LbEdgeExtension.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLbEdgeExtension(obj);

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

  unittest.group('resource-ProjectsLocationsLbRouteExtensionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.lbRouteExtensions;
      final arg_request = buildLbRouteExtension();
      final arg_parent = 'foo';
      final arg_lbRouteExtensionId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LbRouteExtension.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLbRouteExtension(obj);

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
            queryMap['lbRouteExtensionId']!.first,
            unittest.equals(arg_lbRouteExtensionId),
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
        lbRouteExtensionId: arg_lbRouteExtensionId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.lbRouteExtensions;
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
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.lbRouteExtensions;
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
          final resp = convert.json.encode(buildLbRouteExtension());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLbRouteExtension(response as api.LbRouteExtension);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.lbRouteExtensions;
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
          final resp = convert.json.encode(
            buildListLbRouteExtensionsResponse(),
          );
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
      checkListLbRouteExtensionsResponse(
        response as api.ListLbRouteExtensionsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.lbRouteExtensions;
      final arg_request = buildLbRouteExtension();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LbRouteExtension.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLbRouteExtension(obj);

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

  unittest.group('resource-ProjectsLocationsLbTrafficExtensionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.lbTrafficExtensions;
      final arg_request = buildLbTrafficExtension();
      final arg_parent = 'foo';
      final arg_lbTrafficExtensionId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LbTrafficExtension.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLbTrafficExtension(obj);

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
            queryMap['lbTrafficExtensionId']!.first,
            unittest.equals(arg_lbTrafficExtensionId),
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
        lbTrafficExtensionId: arg_lbTrafficExtensionId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.lbTrafficExtensions;
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
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.lbTrafficExtensions;
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
          final resp = convert.json.encode(buildLbTrafficExtension());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLbTrafficExtension(response as api.LbTrafficExtension);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.lbTrafficExtensions;
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
          final resp = convert.json.encode(
            buildListLbTrafficExtensionsResponse(),
          );
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
      checkListLbTrafficExtensionsResponse(
        response as api.ListLbTrafficExtensionsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.lbTrafficExtensions;
      final arg_request = buildLbTrafficExtension();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LbTrafficExtension.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLbTrafficExtension(obj);

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

  unittest.group('resource-ProjectsLocationsMeshesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.meshes;
      final arg_request = buildMesh();
      final arg_parent = 'foo';
      final arg_meshId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Mesh.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMesh(obj);

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
            queryMap['meshId']!.first,
            unittest.equals(arg_meshId),
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
        meshId: arg_meshId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.meshes;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.meshes;
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
          final resp = convert.json.encode(buildMesh());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMesh(response as api.Mesh);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.meshes;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListMeshesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListMeshesResponse(response as api.ListMeshesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.meshes;
      final arg_request = buildMesh();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Mesh.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMesh(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsMeshesRouteViewsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.meshes.routeViews;
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
          final resp = convert.json.encode(buildMeshRouteView());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMeshRouteView(response as api.MeshRouteView);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.meshes.routeViews;
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
          final resp = convert.json.encode(buildListMeshRouteViewsResponse());
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
      checkListMeshRouteViewsResponse(
        response as api.ListMeshRouteViewsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsMulticastConsumerAssociationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.multicastConsumerAssociations;
      final arg_request = buildMulticastConsumerAssociation();
      final arg_parent = 'foo';
      final arg_multicastConsumerAssociationId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MulticastConsumerAssociation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMulticastConsumerAssociation(obj);

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
            queryMap['multicastConsumerAssociationId']!.first,
            unittest.equals(arg_multicastConsumerAssociationId),
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
        multicastConsumerAssociationId: arg_multicastConsumerAssociationId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.multicastConsumerAssociations;
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
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.multicastConsumerAssociations;
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
          final resp = convert.json.encode(buildMulticastConsumerAssociation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMulticastConsumerAssociation(
        response as api.MulticastConsumerAssociation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.multicastConsumerAssociations;
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
          final resp = convert.json.encode(
            buildListMulticastConsumerAssociationsResponse(),
          );
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
      checkListMulticastConsumerAssociationsResponse(
        response as api.ListMulticastConsumerAssociationsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.multicastConsumerAssociations;
      final arg_request = buildMulticastConsumerAssociation();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MulticastConsumerAssociation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMulticastConsumerAssociation(obj);

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

  unittest.group(
    'resource-ProjectsLocationsMulticastGroupConsumerActivationsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res = api.NetworkServicesApi(
          mock,
        ).projects.locations.multicastGroupConsumerActivations;
        final arg_request = buildMulticastGroupConsumerActivation();
        final arg_parent = 'foo';
        final arg_multicastGroupConsumerActivationId = 'foo';
        final arg_requestId = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.MulticastGroupConsumerActivation.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkMulticastGroupConsumerActivation(obj);

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
              queryMap['multicastGroupConsumerActivationId']!.first,
              unittest.equals(arg_multicastGroupConsumerActivationId),
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
          multicastGroupConsumerActivationId:
              arg_multicastGroupConsumerActivationId,
          requestId: arg_requestId,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res = api.NetworkServicesApi(
          mock,
        ).projects.locations.multicastGroupConsumerActivations;
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
        final res = api.NetworkServicesApi(
          mock,
        ).projects.locations.multicastGroupConsumerActivations;
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
            final resp = convert.json.encode(
              buildMulticastGroupConsumerActivation(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkMulticastGroupConsumerActivation(
          response as api.MulticastGroupConsumerActivation,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.NetworkServicesApi(
          mock,
        ).projects.locations.multicastGroupConsumerActivations;
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
            final resp = convert.json.encode(
              buildListMulticastGroupConsumerActivationsResponse(),
            );
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
        checkListMulticastGroupConsumerActivationsResponse(
          response as api.ListMulticastGroupConsumerActivationsResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res = api.NetworkServicesApi(
          mock,
        ).projects.locations.multicastGroupConsumerActivations;
        final arg_request = buildMulticastGroupConsumerActivation();
        final arg_name = 'foo';
        final arg_requestId = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.MulticastGroupConsumerActivation.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkMulticastGroupConsumerActivation(obj);

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
    },
  );

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.operations;
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
      final res = api.NetworkServicesApi(mock).projects.locations.operations;
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
      final res = api.NetworkServicesApi(mock).projects.locations.operations;
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
      final res = api.NetworkServicesApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsProducerExtensionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.producerExtensions;
      final arg_request = buildProducerExtension();
      final arg_parent = 'foo';
      final arg_producerExtensionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ProducerExtension.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkProducerExtension(obj);

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
            queryMap['producerExtensionId']!.first,
            unittest.equals(arg_producerExtensionId),
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
        producerExtensionId: arg_producerExtensionId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.producerExtensions;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.producerExtensions;
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
          final resp = convert.json.encode(buildProducerExtension());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkProducerExtension(response as api.ProducerExtension);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.producerExtensions;
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
            buildListProducerExtensionsResponse(),
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
      checkListProducerExtensionsResponse(
        response as api.ListProducerExtensionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsServiceBindingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.serviceBindings;
      final arg_request = buildServiceBinding();
      final arg_parent = 'foo';
      final arg_serviceBindingId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ServiceBinding.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkServiceBinding(obj);

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
            queryMap['serviceBindingId']!.first,
            unittest.equals(arg_serviceBindingId),
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
        serviceBindingId: arg_serviceBindingId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.serviceBindings;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.serviceBindings;
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
          final resp = convert.json.encode(buildServiceBinding());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkServiceBinding(response as api.ServiceBinding);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.serviceBindings;
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
          final resp = convert.json.encode(buildListServiceBindingsResponse());
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
      checkListServiceBindingsResponse(
        response as api.ListServiceBindingsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.serviceBindings;
      final arg_request = buildServiceBinding();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ServiceBinding.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkServiceBinding(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsServiceLbPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.serviceLbPolicies;
      final arg_request = buildServiceLbPolicy();
      final arg_parent = 'foo';
      final arg_serviceLbPolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ServiceLbPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkServiceLbPolicy(obj);

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
            queryMap['serviceLbPolicyId']!.first,
            unittest.equals(arg_serviceLbPolicyId),
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
        serviceLbPolicyId: arg_serviceLbPolicyId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.serviceLbPolicies;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.serviceLbPolicies;
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
          final resp = convert.json.encode(buildServiceLbPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkServiceLbPolicy(response as api.ServiceLbPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.serviceLbPolicies;
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
            buildListServiceLbPoliciesResponse(),
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
      checkListServiceLbPoliciesResponse(
        response as api.ListServiceLbPoliciesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.serviceLbPolicies;
      final arg_request = buildServiceLbPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ServiceLbPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkServiceLbPolicy(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsTcpRoutesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tcpRoutes;
      final arg_request = buildTcpRoute();
      final arg_parent = 'foo';
      final arg_tcpRouteId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TcpRoute.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTcpRoute(obj);

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
            queryMap['tcpRouteId']!.first,
            unittest.equals(arg_tcpRouteId),
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
        tcpRouteId: arg_tcpRouteId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tcpRoutes;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tcpRoutes;
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
          final resp = convert.json.encode(buildTcpRoute());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTcpRoute(response as api.TcpRoute);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tcpRoutes;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListTcpRoutesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListTcpRoutesResponse(response as api.ListTcpRoutesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tcpRoutes;
      final arg_request = buildTcpRoute();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TcpRoute.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTcpRoute(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsTlsRoutesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tlsRoutes;
      final arg_request = buildTlsRoute();
      final arg_parent = 'foo';
      final arg_tlsRouteId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TlsRoute.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTlsRoute(obj);

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
            queryMap['tlsRouteId']!.first,
            unittest.equals(arg_tlsRouteId),
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
        tlsRouteId: arg_tlsRouteId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tlsRoutes;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tlsRoutes;
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
          final resp = convert.json.encode(buildTlsRoute());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTlsRoute(response as api.TlsRoute);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tlsRoutes;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListTlsRoutesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListTlsRoutesResponse(response as api.ListTlsRoutesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tlsRoutes;
      final arg_request = buildTlsRoute();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TlsRoute.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTlsRoute(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsWasmPluginsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.wasmPlugins;
      final arg_request = buildWasmPlugin();
      final arg_parent = 'foo';
      final arg_wasmPluginId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WasmPlugin.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWasmPlugin(obj);

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
            queryMap['wasmPluginId']!.first,
            unittest.equals(arg_wasmPluginId),
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
        wasmPluginId: arg_wasmPluginId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.wasmPlugins;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.wasmPlugins;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWasmPlugin());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkWasmPlugin(response as api.WasmPlugin);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.wasmPlugins;
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
          final resp = convert.json.encode(buildListWasmPluginsResponse());
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
      checkListWasmPluginsResponse(response as api.ListWasmPluginsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.wasmPlugins;
      final arg_request = buildWasmPlugin();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WasmPlugin.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWasmPlugin(obj);

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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsWasmPluginsVersionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.wasmPlugins.versions;
      final arg_request = buildWasmPluginVersion();
      final arg_parent = 'foo';
      final arg_wasmPluginVersionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WasmPluginVersion.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWasmPluginVersion(obj);

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
            queryMap['wasmPluginVersionId']!.first,
            unittest.equals(arg_wasmPluginVersionId),
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
        wasmPluginVersionId: arg_wasmPluginVersionId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.wasmPlugins.versions;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.wasmPlugins.versions;
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
          final resp = convert.json.encode(buildWasmPluginVersion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWasmPluginVersion(response as api.WasmPluginVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(
        mock,
      ).projects.locations.wasmPlugins.versions;
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
            buildListWasmPluginVersionsResponse(),
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
      checkListWasmPluginVersionsResponse(
        response as api.ListWasmPluginVersionsResponse,
      );
    });
  });
}
