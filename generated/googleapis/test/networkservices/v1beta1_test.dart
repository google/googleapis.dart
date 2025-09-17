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

import 'package:googleapis/networkservices/v1beta1.dart' as api;
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

core.int buildCounterAuthzExtension = 0;
api.AuthzExtension buildAuthzExtension() {
  final o = api.AuthzExtension();
  buildCounterAuthzExtension++;
  if (buildCounterAuthzExtension < 3) {
    o.authority = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.failOpen = true;
    o.forwardHeaders = buildUnnamed0();
    o.labels = buildUnnamed1();
    o.loadBalancingScheme = 'foo';
    o.metadata = buildUnnamed2();
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
    checkUnnamed0(o.forwardHeaders!);
    checkUnnamed1(o.labels!);
    unittest.expect(o.loadBalancingScheme!, unittest.equals('foo'));
    checkUnnamed2(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
    unittest.expect(o.timeout!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.wireFormat!, unittest.equals('foo'));
  }
  buildCounterAuthzExtension--;
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
    o.metadataLabelMatcher = buildMetadataLabelMatcher();
  }
  buildCounterEndpointMatcher--;
  return o;
}

void checkEndpointMatcher(api.EndpointMatcher o) {
  buildCounterEndpointMatcher++;
  if (buildCounterEndpointMatcher < 3) {
    checkMetadataLabelMatcher(o.metadataLabelMatcher!);
  }
  buildCounterEndpointMatcher--;
}

core.Map<core.String, core.String> buildUnnamed3() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed3(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed3();
    o.name = 'foo';
    o.securityPolicy = 'foo';
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
    checkUnnamed3(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.securityPolicy!, unittest.equals('foo'));
    unittest.expect(o.serverTlsPolicy!, unittest.equals('foo'));
    checkTrafficPortSelector(o.trafficPortSelector!);
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterEndpointPolicy--;
}

core.List<api.ExtensionChainExtension> buildUnnamed4() => [
  buildExtensionChainExtension(),
  buildExtensionChainExtension(),
];

void checkUnnamed4(core.List<api.ExtensionChainExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtensionChainExtension(o[0]);
  checkExtensionChainExtension(o[1]);
}

core.int buildCounterExtensionChain = 0;
api.ExtensionChain buildExtensionChain() {
  final o = api.ExtensionChain();
  buildCounterExtensionChain++;
  if (buildCounterExtensionChain < 3) {
    o.extensions = buildUnnamed4();
    o.matchCondition = buildExtensionChainMatchCondition();
    o.name = 'foo';
  }
  buildCounterExtensionChain--;
  return o;
}

void checkExtensionChain(api.ExtensionChain o) {
  buildCounterExtensionChain++;
  if (buildCounterExtensionChain < 3) {
    checkUnnamed4(o.extensions!);
    checkExtensionChainMatchCondition(o.matchCondition!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterExtensionChain--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExtensionChainExtension = 0;
api.ExtensionChainExtension buildExtensionChainExtension() {
  final o = api.ExtensionChainExtension();
  buildCounterExtensionChainExtension++;
  if (buildCounterExtensionChainExtension < 3) {
    o.allowDynamicForwarding = true;
    o.authority = 'foo';
    o.failOpen = true;
    o.forwardHeaders = buildUnnamed5();
    o.metadata = buildUnnamed6();
    o.name = 'foo';
    o.requestBodySendMode = 'foo';
    o.responseBodySendMode = 'foo';
    o.service = 'foo';
    o.supportedEvents = buildUnnamed7();
    o.timeout = 'foo';
  }
  buildCounterExtensionChainExtension--;
  return o;
}

void checkExtensionChainExtension(api.ExtensionChainExtension o) {
  buildCounterExtensionChainExtension++;
  if (buildCounterExtensionChainExtension < 3) {
    unittest.expect(o.allowDynamicForwarding!, unittest.isTrue);
    unittest.expect(o.authority!, unittest.equals('foo'));
    unittest.expect(o.failOpen!, unittest.isTrue);
    checkUnnamed5(o.forwardHeaders!);
    checkUnnamed6(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.requestBodySendMode!, unittest.equals('foo'));
    unittest.expect(o.responseBodySendMode!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
    checkUnnamed7(o.supportedEvents!);
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

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed10() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed10(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.int> buildUnnamed11() => [42, 42];

void checkUnnamed11(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGateway = 0;
api.Gateway buildGateway() {
  final o = api.Gateway();
  buildCounterGateway++;
  if (buildCounterGateway < 3) {
    o.addresses = buildUnnamed8();
    o.certificateUrls = buildUnnamed9();
    o.createTime = 'foo';
    o.description = 'foo';
    o.envoyHeaders = 'foo';
    o.gatewaySecurityPolicy = 'foo';
    o.ipVersion = 'foo';
    o.labels = buildUnnamed10();
    o.name = 'foo';
    o.network = 'foo';
    o.ports = buildUnnamed11();
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
    checkUnnamed8(o.addresses!);
    checkUnnamed9(o.certificateUrls!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.envoyHeaders!, unittest.equals('foo'));
    unittest.expect(o.gatewaySecurityPolicy!, unittest.equals('foo'));
    unittest.expect(o.ipVersion!, unittest.equals('foo'));
    checkUnnamed10(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    checkUnnamed11(o.ports!);
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

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed14() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed14(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GrpcRouteRouteRule> buildUnnamed16() => [
  buildGrpcRouteRouteRule(),
  buildGrpcRouteRouteRule(),
];

void checkUnnamed16(core.List<api.GrpcRouteRouteRule> o) {
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
    o.gateways = buildUnnamed12();
    o.hostnames = buildUnnamed13();
    o.labels = buildUnnamed14();
    o.meshes = buildUnnamed15();
    o.name = 'foo';
    o.rules = buildUnnamed16();
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
    checkUnnamed12(o.gateways!);
    checkUnnamed13(o.hostnames!);
    checkUnnamed14(o.labels!);
    checkUnnamed15(o.meshes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed16(o.rules!);
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

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
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
    o.retryConditions = buildUnnamed17();
  }
  buildCounterGrpcRouteRetryPolicy--;
  return o;
}

void checkGrpcRouteRetryPolicy(api.GrpcRouteRetryPolicy o) {
  buildCounterGrpcRouteRetryPolicy++;
  if (buildCounterGrpcRouteRetryPolicy < 3) {
    unittest.expect(o.numRetries!, unittest.equals(42));
    checkUnnamed17(o.retryConditions!);
  }
  buildCounterGrpcRouteRetryPolicy--;
}

core.List<api.GrpcRouteDestination> buildUnnamed18() => [
  buildGrpcRouteDestination(),
  buildGrpcRouteDestination(),
];

void checkUnnamed18(core.List<api.GrpcRouteDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrpcRouteDestination(o[0]);
  checkGrpcRouteDestination(o[1]);
}

core.int buildCounterGrpcRouteRouteAction = 0;
api.GrpcRouteRouteAction buildGrpcRouteRouteAction() {
  final o = api.GrpcRouteRouteAction();
  buildCounterGrpcRouteRouteAction++;
  if (buildCounterGrpcRouteRouteAction < 3) {
    o.destinations = buildUnnamed18();
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
    checkUnnamed18(o.destinations!);
    checkGrpcRouteFaultInjectionPolicy(o.faultInjectionPolicy!);
    unittest.expect(o.idleTimeout!, unittest.equals('foo'));
    checkGrpcRouteRetryPolicy(o.retryPolicy!);
    checkGrpcRouteStatefulSessionAffinityPolicy(o.statefulSessionAffinity!);
    unittest.expect(o.timeout!, unittest.equals('foo'));
  }
  buildCounterGrpcRouteRouteAction--;
}

core.List<api.GrpcRouteHeaderMatch> buildUnnamed19() => [
  buildGrpcRouteHeaderMatch(),
  buildGrpcRouteHeaderMatch(),
];

void checkUnnamed19(core.List<api.GrpcRouteHeaderMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrpcRouteHeaderMatch(o[0]);
  checkGrpcRouteHeaderMatch(o[1]);
}

core.int buildCounterGrpcRouteRouteMatch = 0;
api.GrpcRouteRouteMatch buildGrpcRouteRouteMatch() {
  final o = api.GrpcRouteRouteMatch();
  buildCounterGrpcRouteRouteMatch++;
  if (buildCounterGrpcRouteRouteMatch < 3) {
    o.headers = buildUnnamed19();
    o.method = buildGrpcRouteMethodMatch();
  }
  buildCounterGrpcRouteRouteMatch--;
  return o;
}

void checkGrpcRouteRouteMatch(api.GrpcRouteRouteMatch o) {
  buildCounterGrpcRouteRouteMatch++;
  if (buildCounterGrpcRouteRouteMatch < 3) {
    checkUnnamed19(o.headers!);
    checkGrpcRouteMethodMatch(o.method!);
  }
  buildCounterGrpcRouteRouteMatch--;
}

core.List<api.GrpcRouteRouteMatch> buildUnnamed20() => [
  buildGrpcRouteRouteMatch(),
  buildGrpcRouteRouteMatch(),
];

void checkUnnamed20(core.List<api.GrpcRouteRouteMatch> o) {
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
    o.matches = buildUnnamed20();
  }
  buildCounterGrpcRouteRouteRule--;
  return o;
}

void checkGrpcRouteRouteRule(api.GrpcRouteRouteRule o) {
  buildCounterGrpcRouteRouteRule++;
  if (buildCounterGrpcRouteRouteRule < 3) {
    checkGrpcRouteRouteAction(o.action!);
    checkUnnamed20(o.matches!);
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

core.Map<core.String, core.String> buildUnnamed23() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed23(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.HttpRouteRouteRule> buildUnnamed25() => [
  buildHttpRouteRouteRule(),
  buildHttpRouteRouteRule(),
];

void checkUnnamed25(core.List<api.HttpRouteRouteRule> o) {
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
    o.gateways = buildUnnamed21();
    o.hostnames = buildUnnamed22();
    o.labels = buildUnnamed23();
    o.meshes = buildUnnamed24();
    o.name = 'foo';
    o.rules = buildUnnamed25();
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
    checkUnnamed21(o.gateways!);
    checkUnnamed22(o.hostnames!);
    checkUnnamed23(o.labels!);
    checkUnnamed24(o.meshes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed25(o.rules!);
    unittest.expect(o.selfLink!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterHttpRoute--;
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.int buildCounterHttpRouteCorsPolicy = 0;
api.HttpRouteCorsPolicy buildHttpRouteCorsPolicy() {
  final o = api.HttpRouteCorsPolicy();
  buildCounterHttpRouteCorsPolicy++;
  if (buildCounterHttpRouteCorsPolicy < 3) {
    o.allowCredentials = true;
    o.allowHeaders = buildUnnamed26();
    o.allowMethods = buildUnnamed27();
    o.allowOriginRegexes = buildUnnamed28();
    o.allowOrigins = buildUnnamed29();
    o.disabled = true;
    o.exposeHeaders = buildUnnamed30();
    o.maxAge = 'foo';
  }
  buildCounterHttpRouteCorsPolicy--;
  return o;
}

void checkHttpRouteCorsPolicy(api.HttpRouteCorsPolicy o) {
  buildCounterHttpRouteCorsPolicy++;
  if (buildCounterHttpRouteCorsPolicy < 3) {
    unittest.expect(o.allowCredentials!, unittest.isTrue);
    checkUnnamed26(o.allowHeaders!);
    checkUnnamed27(o.allowMethods!);
    checkUnnamed28(o.allowOriginRegexes!);
    checkUnnamed29(o.allowOrigins!);
    unittest.expect(o.disabled!, unittest.isTrue);
    checkUnnamed30(o.exposeHeaders!);
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

core.Map<core.String, core.String> buildUnnamed31() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed31(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
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

core.int buildCounterHttpRouteHeaderModifier = 0;
api.HttpRouteHeaderModifier buildHttpRouteHeaderModifier() {
  final o = api.HttpRouteHeaderModifier();
  buildCounterHttpRouteHeaderModifier++;
  if (buildCounterHttpRouteHeaderModifier < 3) {
    o.add = buildUnnamed31();
    o.remove = buildUnnamed32();
    o.set = buildUnnamed33();
  }
  buildCounterHttpRouteHeaderModifier--;
  return o;
}

void checkHttpRouteHeaderModifier(api.HttpRouteHeaderModifier o) {
  buildCounterHttpRouteHeaderModifier++;
  if (buildCounterHttpRouteHeaderModifier < 3) {
    checkUnnamed31(o.add!);
    checkUnnamed32(o.remove!);
    checkUnnamed33(o.set!);
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

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
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
    o.retryConditions = buildUnnamed34();
  }
  buildCounterHttpRouteRetryPolicy--;
  return o;
}

void checkHttpRouteRetryPolicy(api.HttpRouteRetryPolicy o) {
  buildCounterHttpRouteRetryPolicy++;
  if (buildCounterHttpRouteRetryPolicy < 3) {
    unittest.expect(o.numRetries!, unittest.equals(42));
    unittest.expect(o.perTryTimeout!, unittest.equals('foo'));
    checkUnnamed34(o.retryConditions!);
  }
  buildCounterHttpRouteRetryPolicy--;
}

core.List<api.HttpRouteDestination> buildUnnamed35() => [
  buildHttpRouteDestination(),
  buildHttpRouteDestination(),
];

void checkUnnamed35(core.List<api.HttpRouteDestination> o) {
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
    o.destinations = buildUnnamed35();
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
    checkUnnamed35(o.destinations!);
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

core.List<api.HttpRouteHeaderMatch> buildUnnamed36() => [
  buildHttpRouteHeaderMatch(),
  buildHttpRouteHeaderMatch(),
];

void checkUnnamed36(core.List<api.HttpRouteHeaderMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRouteHeaderMatch(o[0]);
  checkHttpRouteHeaderMatch(o[1]);
}

core.List<api.HttpRouteQueryParameterMatch> buildUnnamed37() => [
  buildHttpRouteQueryParameterMatch(),
  buildHttpRouteQueryParameterMatch(),
];

void checkUnnamed37(core.List<api.HttpRouteQueryParameterMatch> o) {
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
    o.headers = buildUnnamed36();
    o.ignoreCase = true;
    o.prefixMatch = 'foo';
    o.queryParameters = buildUnnamed37();
    o.regexMatch = 'foo';
  }
  buildCounterHttpRouteRouteMatch--;
  return o;
}

void checkHttpRouteRouteMatch(api.HttpRouteRouteMatch o) {
  buildCounterHttpRouteRouteMatch++;
  if (buildCounterHttpRouteRouteMatch < 3) {
    unittest.expect(o.fullPathMatch!, unittest.equals('foo'));
    checkUnnamed36(o.headers!);
    unittest.expect(o.ignoreCase!, unittest.isTrue);
    unittest.expect(o.prefixMatch!, unittest.equals('foo'));
    checkUnnamed37(o.queryParameters!);
    unittest.expect(o.regexMatch!, unittest.equals('foo'));
  }
  buildCounterHttpRouteRouteMatch--;
}

core.List<api.HttpRouteRouteMatch> buildUnnamed38() => [
  buildHttpRouteRouteMatch(),
  buildHttpRouteRouteMatch(),
];

void checkUnnamed38(core.List<api.HttpRouteRouteMatch> o) {
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
    o.matches = buildUnnamed38();
  }
  buildCounterHttpRouteRouteRule--;
  return o;
}

void checkHttpRouteRouteRule(api.HttpRouteRouteRule o) {
  buildCounterHttpRouteRouteRule++;
  if (buildCounterHttpRouteRouteRule < 3) {
    checkHttpRouteRouteAction(o.action!);
    checkUnnamed38(o.matches!);
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

core.List<api.ExtensionChain> buildUnnamed39() => [
  buildExtensionChain(),
  buildExtensionChain(),
];

void checkUnnamed39(core.List<api.ExtensionChain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtensionChain(o[0]);
  checkExtensionChain(o[1]);
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed41() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed41(core.Map<core.String, core.String> o) {
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
    o.extensionChains = buildUnnamed39();
    o.forwardingRules = buildUnnamed40();
    o.labels = buildUnnamed41();
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
    checkUnnamed39(o.extensionChains!);
    checkUnnamed40(o.forwardingRules!);
    checkUnnamed41(o.labels!);
    unittest.expect(o.loadBalancingScheme!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterLbEdgeExtension--;
}

core.List<api.ExtensionChain> buildUnnamed42() => [
  buildExtensionChain(),
  buildExtensionChain(),
];

void checkUnnamed42(core.List<api.ExtensionChain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtensionChain(o[0]);
  checkExtensionChain(o[1]);
}

core.List<core.String> buildUnnamed43() => ['foo', 'foo'];

void checkUnnamed43(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed44() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed44(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed45() => {
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

void checkUnnamed45(core.Map<core.String, core.Object?> o) {
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
    o.extensionChains = buildUnnamed42();
    o.forwardingRules = buildUnnamed43();
    o.labels = buildUnnamed44();
    o.loadBalancingScheme = 'foo';
    o.metadata = buildUnnamed45();
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
    checkUnnamed42(o.extensionChains!);
    checkUnnamed43(o.forwardingRules!);
    checkUnnamed44(o.labels!);
    unittest.expect(o.loadBalancingScheme!, unittest.equals('foo'));
    checkUnnamed45(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterLbRouteExtension--;
}

core.List<api.ExtensionChain> buildUnnamed46() => [
  buildExtensionChain(),
  buildExtensionChain(),
];

void checkUnnamed46(core.List<api.ExtensionChain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtensionChain(o[0]);
  checkExtensionChain(o[1]);
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed48() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed48(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
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
    o.extensionChains = buildUnnamed46();
    o.forwardingRules = buildUnnamed47();
    o.labels = buildUnnamed48();
    o.loadBalancingScheme = 'foo';
    o.metadata = buildUnnamed49();
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
    checkUnnamed46(o.extensionChains!);
    checkUnnamed47(o.forwardingRules!);
    checkUnnamed48(o.labels!);
    unittest.expect(o.loadBalancingScheme!, unittest.equals('foo'));
    checkUnnamed49(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterLbTrafficExtension--;
}

core.List<api.AuthzExtension> buildUnnamed50() => [
  buildAuthzExtension(),
  buildAuthzExtension(),
];

void checkUnnamed50(core.List<api.AuthzExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthzExtension(o[0]);
  checkAuthzExtension(o[1]);
}

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAuthzExtensionsResponse = 0;
api.ListAuthzExtensionsResponse buildListAuthzExtensionsResponse() {
  final o = api.ListAuthzExtensionsResponse();
  buildCounterListAuthzExtensionsResponse++;
  if (buildCounterListAuthzExtensionsResponse < 3) {
    o.authzExtensions = buildUnnamed50();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed51();
  }
  buildCounterListAuthzExtensionsResponse--;
  return o;
}

void checkListAuthzExtensionsResponse(api.ListAuthzExtensionsResponse o) {
  buildCounterListAuthzExtensionsResponse++;
  if (buildCounterListAuthzExtensionsResponse < 3) {
    checkUnnamed50(o.authzExtensions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed51(o.unreachable!);
  }
  buildCounterListAuthzExtensionsResponse--;
}

core.List<api.EndpointPolicy> buildUnnamed52() => [
  buildEndpointPolicy(),
  buildEndpointPolicy(),
];

void checkUnnamed52(core.List<api.EndpointPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpointPolicy(o[0]);
  checkEndpointPolicy(o[1]);
}

core.List<core.String> buildUnnamed53() => ['foo', 'foo'];

void checkUnnamed53(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListEndpointPoliciesResponse = 0;
api.ListEndpointPoliciesResponse buildListEndpointPoliciesResponse() {
  final o = api.ListEndpointPoliciesResponse();
  buildCounterListEndpointPoliciesResponse++;
  if (buildCounterListEndpointPoliciesResponse < 3) {
    o.endpointPolicies = buildUnnamed52();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed53();
  }
  buildCounterListEndpointPoliciesResponse--;
  return o;
}

void checkListEndpointPoliciesResponse(api.ListEndpointPoliciesResponse o) {
  buildCounterListEndpointPoliciesResponse++;
  if (buildCounterListEndpointPoliciesResponse < 3) {
    checkUnnamed52(o.endpointPolicies!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed53(o.unreachable!);
  }
  buildCounterListEndpointPoliciesResponse--;
}

core.List<api.GatewayRouteView> buildUnnamed54() => [
  buildGatewayRouteView(),
  buildGatewayRouteView(),
];

void checkUnnamed54(core.List<api.GatewayRouteView> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGatewayRouteView(o[0]);
  checkGatewayRouteView(o[1]);
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGatewayRouteViewsResponse = 0;
api.ListGatewayRouteViewsResponse buildListGatewayRouteViewsResponse() {
  final o = api.ListGatewayRouteViewsResponse();
  buildCounterListGatewayRouteViewsResponse++;
  if (buildCounterListGatewayRouteViewsResponse < 3) {
    o.gatewayRouteViews = buildUnnamed54();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed55();
  }
  buildCounterListGatewayRouteViewsResponse--;
  return o;
}

void checkListGatewayRouteViewsResponse(api.ListGatewayRouteViewsResponse o) {
  buildCounterListGatewayRouteViewsResponse++;
  if (buildCounterListGatewayRouteViewsResponse < 3) {
    checkUnnamed54(o.gatewayRouteViews!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed55(o.unreachable!);
  }
  buildCounterListGatewayRouteViewsResponse--;
}

core.List<api.Gateway> buildUnnamed56() => [buildGateway(), buildGateway()];

void checkUnnamed56(core.List<api.Gateway> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGateway(o[0]);
  checkGateway(o[1]);
}

core.List<core.String> buildUnnamed57() => ['foo', 'foo'];

void checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGatewaysResponse = 0;
api.ListGatewaysResponse buildListGatewaysResponse() {
  final o = api.ListGatewaysResponse();
  buildCounterListGatewaysResponse++;
  if (buildCounterListGatewaysResponse < 3) {
    o.gateways = buildUnnamed56();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed57();
  }
  buildCounterListGatewaysResponse--;
  return o;
}

void checkListGatewaysResponse(api.ListGatewaysResponse o) {
  buildCounterListGatewaysResponse++;
  if (buildCounterListGatewaysResponse < 3) {
    checkUnnamed56(o.gateways!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed57(o.unreachable!);
  }
  buildCounterListGatewaysResponse--;
}

core.List<api.GrpcRoute> buildUnnamed58() => [
  buildGrpcRoute(),
  buildGrpcRoute(),
];

void checkUnnamed58(core.List<api.GrpcRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrpcRoute(o[0]);
  checkGrpcRoute(o[1]);
}

core.List<core.String> buildUnnamed59() => ['foo', 'foo'];

void checkUnnamed59(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGrpcRoutesResponse = 0;
api.ListGrpcRoutesResponse buildListGrpcRoutesResponse() {
  final o = api.ListGrpcRoutesResponse();
  buildCounterListGrpcRoutesResponse++;
  if (buildCounterListGrpcRoutesResponse < 3) {
    o.grpcRoutes = buildUnnamed58();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed59();
  }
  buildCounterListGrpcRoutesResponse--;
  return o;
}

void checkListGrpcRoutesResponse(api.ListGrpcRoutesResponse o) {
  buildCounterListGrpcRoutesResponse++;
  if (buildCounterListGrpcRoutesResponse < 3) {
    checkUnnamed58(o.grpcRoutes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed59(o.unreachable!);
  }
  buildCounterListGrpcRoutesResponse--;
}

core.List<api.HttpRoute> buildUnnamed60() => [
  buildHttpRoute(),
  buildHttpRoute(),
];

void checkUnnamed60(core.List<api.HttpRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRoute(o[0]);
  checkHttpRoute(o[1]);
}

core.List<core.String> buildUnnamed61() => ['foo', 'foo'];

void checkUnnamed61(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListHttpRoutesResponse = 0;
api.ListHttpRoutesResponse buildListHttpRoutesResponse() {
  final o = api.ListHttpRoutesResponse();
  buildCounterListHttpRoutesResponse++;
  if (buildCounterListHttpRoutesResponse < 3) {
    o.httpRoutes = buildUnnamed60();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed61();
  }
  buildCounterListHttpRoutesResponse--;
  return o;
}

void checkListHttpRoutesResponse(api.ListHttpRoutesResponse o) {
  buildCounterListHttpRoutesResponse++;
  if (buildCounterListHttpRoutesResponse < 3) {
    checkUnnamed60(o.httpRoutes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed61(o.unreachable!);
  }
  buildCounterListHttpRoutesResponse--;
}

core.List<api.LbEdgeExtension> buildUnnamed62() => [
  buildLbEdgeExtension(),
  buildLbEdgeExtension(),
];

void checkUnnamed62(core.List<api.LbEdgeExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLbEdgeExtension(o[0]);
  checkLbEdgeExtension(o[1]);
}

core.List<core.String> buildUnnamed63() => ['foo', 'foo'];

void checkUnnamed63(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListLbEdgeExtensionsResponse = 0;
api.ListLbEdgeExtensionsResponse buildListLbEdgeExtensionsResponse() {
  final o = api.ListLbEdgeExtensionsResponse();
  buildCounterListLbEdgeExtensionsResponse++;
  if (buildCounterListLbEdgeExtensionsResponse < 3) {
    o.lbEdgeExtensions = buildUnnamed62();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed63();
  }
  buildCounterListLbEdgeExtensionsResponse--;
  return o;
}

void checkListLbEdgeExtensionsResponse(api.ListLbEdgeExtensionsResponse o) {
  buildCounterListLbEdgeExtensionsResponse++;
  if (buildCounterListLbEdgeExtensionsResponse < 3) {
    checkUnnamed62(o.lbEdgeExtensions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed63(o.unreachable!);
  }
  buildCounterListLbEdgeExtensionsResponse--;
}

core.List<api.LbRouteExtension> buildUnnamed64() => [
  buildLbRouteExtension(),
  buildLbRouteExtension(),
];

void checkUnnamed64(core.List<api.LbRouteExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLbRouteExtension(o[0]);
  checkLbRouteExtension(o[1]);
}

core.List<core.String> buildUnnamed65() => ['foo', 'foo'];

void checkUnnamed65(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListLbRouteExtensionsResponse = 0;
api.ListLbRouteExtensionsResponse buildListLbRouteExtensionsResponse() {
  final o = api.ListLbRouteExtensionsResponse();
  buildCounterListLbRouteExtensionsResponse++;
  if (buildCounterListLbRouteExtensionsResponse < 3) {
    o.lbRouteExtensions = buildUnnamed64();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed65();
  }
  buildCounterListLbRouteExtensionsResponse--;
  return o;
}

void checkListLbRouteExtensionsResponse(api.ListLbRouteExtensionsResponse o) {
  buildCounterListLbRouteExtensionsResponse++;
  if (buildCounterListLbRouteExtensionsResponse < 3) {
    checkUnnamed64(o.lbRouteExtensions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed65(o.unreachable!);
  }
  buildCounterListLbRouteExtensionsResponse--;
}

core.List<api.LbTrafficExtension> buildUnnamed66() => [
  buildLbTrafficExtension(),
  buildLbTrafficExtension(),
];

void checkUnnamed66(core.List<api.LbTrafficExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLbTrafficExtension(o[0]);
  checkLbTrafficExtension(o[1]);
}

core.List<core.String> buildUnnamed67() => ['foo', 'foo'];

void checkUnnamed67(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListLbTrafficExtensionsResponse = 0;
api.ListLbTrafficExtensionsResponse buildListLbTrafficExtensionsResponse() {
  final o = api.ListLbTrafficExtensionsResponse();
  buildCounterListLbTrafficExtensionsResponse++;
  if (buildCounterListLbTrafficExtensionsResponse < 3) {
    o.lbTrafficExtensions = buildUnnamed66();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed67();
  }
  buildCounterListLbTrafficExtensionsResponse--;
  return o;
}

void checkListLbTrafficExtensionsResponse(
  api.ListLbTrafficExtensionsResponse o,
) {
  buildCounterListLbTrafficExtensionsResponse++;
  if (buildCounterListLbTrafficExtensionsResponse < 3) {
    checkUnnamed66(o.lbTrafficExtensions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed67(o.unreachable!);
  }
  buildCounterListLbTrafficExtensionsResponse--;
}

core.List<api.Location> buildUnnamed68() => [buildLocation(), buildLocation()];

void checkUnnamed68(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed68();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed68(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.MeshRouteView> buildUnnamed69() => [
  buildMeshRouteView(),
  buildMeshRouteView(),
];

void checkUnnamed69(core.List<api.MeshRouteView> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMeshRouteView(o[0]);
  checkMeshRouteView(o[1]);
}

core.List<core.String> buildUnnamed70() => ['foo', 'foo'];

void checkUnnamed70(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListMeshRouteViewsResponse = 0;
api.ListMeshRouteViewsResponse buildListMeshRouteViewsResponse() {
  final o = api.ListMeshRouteViewsResponse();
  buildCounterListMeshRouteViewsResponse++;
  if (buildCounterListMeshRouteViewsResponse < 3) {
    o.meshRouteViews = buildUnnamed69();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed70();
  }
  buildCounterListMeshRouteViewsResponse--;
  return o;
}

void checkListMeshRouteViewsResponse(api.ListMeshRouteViewsResponse o) {
  buildCounterListMeshRouteViewsResponse++;
  if (buildCounterListMeshRouteViewsResponse < 3) {
    checkUnnamed69(o.meshRouteViews!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed70(o.unreachable!);
  }
  buildCounterListMeshRouteViewsResponse--;
}

core.List<api.Mesh> buildUnnamed71() => [buildMesh(), buildMesh()];

void checkUnnamed71(core.List<api.Mesh> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMesh(o[0]);
  checkMesh(o[1]);
}

core.List<core.String> buildUnnamed72() => ['foo', 'foo'];

void checkUnnamed72(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListMeshesResponse = 0;
api.ListMeshesResponse buildListMeshesResponse() {
  final o = api.ListMeshesResponse();
  buildCounterListMeshesResponse++;
  if (buildCounterListMeshesResponse < 3) {
    o.meshes = buildUnnamed71();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed72();
  }
  buildCounterListMeshesResponse--;
  return o;
}

void checkListMeshesResponse(api.ListMeshesResponse o) {
  buildCounterListMeshesResponse++;
  if (buildCounterListMeshesResponse < 3) {
    checkUnnamed71(o.meshes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed72(o.unreachable!);
  }
  buildCounterListMeshesResponse--;
}

core.List<api.Operation> buildUnnamed73() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed73(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed73();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed73(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.ServiceBinding> buildUnnamed74() => [
  buildServiceBinding(),
  buildServiceBinding(),
];

void checkUnnamed74(core.List<api.ServiceBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceBinding(o[0]);
  checkServiceBinding(o[1]);
}

core.List<core.String> buildUnnamed75() => ['foo', 'foo'];

void checkUnnamed75(core.List<core.String> o) {
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
    o.serviceBindings = buildUnnamed74();
    o.unreachable = buildUnnamed75();
  }
  buildCounterListServiceBindingsResponse--;
  return o;
}

void checkListServiceBindingsResponse(api.ListServiceBindingsResponse o) {
  buildCounterListServiceBindingsResponse++;
  if (buildCounterListServiceBindingsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed74(o.serviceBindings!);
    checkUnnamed75(o.unreachable!);
  }
  buildCounterListServiceBindingsResponse--;
}

core.List<api.ServiceLbPolicy> buildUnnamed76() => [
  buildServiceLbPolicy(),
  buildServiceLbPolicy(),
];

void checkUnnamed76(core.List<api.ServiceLbPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceLbPolicy(o[0]);
  checkServiceLbPolicy(o[1]);
}

core.List<core.String> buildUnnamed77() => ['foo', 'foo'];

void checkUnnamed77(core.List<core.String> o) {
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
    o.serviceLbPolicies = buildUnnamed76();
    o.unreachable = buildUnnamed77();
  }
  buildCounterListServiceLbPoliciesResponse--;
  return o;
}

void checkListServiceLbPoliciesResponse(api.ListServiceLbPoliciesResponse o) {
  buildCounterListServiceLbPoliciesResponse++;
  if (buildCounterListServiceLbPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed76(o.serviceLbPolicies!);
    checkUnnamed77(o.unreachable!);
  }
  buildCounterListServiceLbPoliciesResponse--;
}

core.List<api.TcpRoute> buildUnnamed78() => [buildTcpRoute(), buildTcpRoute()];

void checkUnnamed78(core.List<api.TcpRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTcpRoute(o[0]);
  checkTcpRoute(o[1]);
}

core.List<core.String> buildUnnamed79() => ['foo', 'foo'];

void checkUnnamed79(core.List<core.String> o) {
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
    o.tcpRoutes = buildUnnamed78();
    o.unreachable = buildUnnamed79();
  }
  buildCounterListTcpRoutesResponse--;
  return o;
}

void checkListTcpRoutesResponse(api.ListTcpRoutesResponse o) {
  buildCounterListTcpRoutesResponse++;
  if (buildCounterListTcpRoutesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed78(o.tcpRoutes!);
    checkUnnamed79(o.unreachable!);
  }
  buildCounterListTcpRoutesResponse--;
}

core.List<api.TlsRoute> buildUnnamed80() => [buildTlsRoute(), buildTlsRoute()];

void checkUnnamed80(core.List<api.TlsRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTlsRoute(o[0]);
  checkTlsRoute(o[1]);
}

core.List<core.String> buildUnnamed81() => ['foo', 'foo'];

void checkUnnamed81(core.List<core.String> o) {
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
    o.tlsRoutes = buildUnnamed80();
    o.unreachable = buildUnnamed81();
  }
  buildCounterListTlsRoutesResponse--;
  return o;
}

void checkListTlsRoutesResponse(api.ListTlsRoutesResponse o) {
  buildCounterListTlsRoutesResponse++;
  if (buildCounterListTlsRoutesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed80(o.tlsRoutes!);
    checkUnnamed81(o.unreachable!);
  }
  buildCounterListTlsRoutesResponse--;
}

core.List<core.String> buildUnnamed82() => ['foo', 'foo'];

void checkUnnamed82(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.WasmPluginVersion> buildUnnamed83() => [
  buildWasmPluginVersion(),
  buildWasmPluginVersion(),
];

void checkUnnamed83(core.List<api.WasmPluginVersion> o) {
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
    o.unreachable = buildUnnamed82();
    o.wasmPluginVersions = buildUnnamed83();
  }
  buildCounterListWasmPluginVersionsResponse--;
  return o;
}

void checkListWasmPluginVersionsResponse(api.ListWasmPluginVersionsResponse o) {
  buildCounterListWasmPluginVersionsResponse++;
  if (buildCounterListWasmPluginVersionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed82(o.unreachable!);
    checkUnnamed83(o.wasmPluginVersions!);
  }
  buildCounterListWasmPluginVersionsResponse--;
}

core.List<core.String> buildUnnamed84() => ['foo', 'foo'];

void checkUnnamed84(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.WasmPlugin> buildUnnamed85() => [
  buildWasmPlugin(),
  buildWasmPlugin(),
];

void checkUnnamed85(core.List<api.WasmPlugin> o) {
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
    o.unreachable = buildUnnamed84();
    o.wasmPlugins = buildUnnamed85();
  }
  buildCounterListWasmPluginsResponse--;
  return o;
}

void checkListWasmPluginsResponse(api.ListWasmPluginsResponse o) {
  buildCounterListWasmPluginsResponse++;
  if (buildCounterListWasmPluginsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed84(o.unreachable!);
    checkUnnamed85(o.wasmPlugins!);
  }
  buildCounterListWasmPluginsResponse--;
}

core.Map<core.String, core.String> buildUnnamed86() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed86(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed87() => {
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

void checkUnnamed87(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed86();
    o.locationId = 'foo';
    o.metadata = buildUnnamed87();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed86(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed87(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed88() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed88(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed88();
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
    checkUnnamed88(o.labels!);
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

core.List<api.MetadataLabels> buildUnnamed89() => [
  buildMetadataLabels(),
  buildMetadataLabels(),
];

void checkUnnamed89(core.List<api.MetadataLabels> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetadataLabels(o[0]);
  checkMetadataLabels(o[1]);
}

core.int buildCounterMetadataLabelMatcher = 0;
api.MetadataLabelMatcher buildMetadataLabelMatcher() {
  final o = api.MetadataLabelMatcher();
  buildCounterMetadataLabelMatcher++;
  if (buildCounterMetadataLabelMatcher < 3) {
    o.metadataLabelMatchCriteria = 'foo';
    o.metadataLabels = buildUnnamed89();
  }
  buildCounterMetadataLabelMatcher--;
  return o;
}

void checkMetadataLabelMatcher(api.MetadataLabelMatcher o) {
  buildCounterMetadataLabelMatcher++;
  if (buildCounterMetadataLabelMatcher < 3) {
    unittest.expect(o.metadataLabelMatchCriteria!, unittest.equals('foo'));
    checkUnnamed89(o.metadataLabels!);
  }
  buildCounterMetadataLabelMatcher--;
}

core.int buildCounterMetadataLabels = 0;
api.MetadataLabels buildMetadataLabels() {
  final o = api.MetadataLabels();
  buildCounterMetadataLabels++;
  if (buildCounterMetadataLabels < 3) {
    o.labelName = 'foo';
    o.labelValue = 'foo';
  }
  buildCounterMetadataLabels--;
  return o;
}

void checkMetadataLabels(api.MetadataLabels o) {
  buildCounterMetadataLabels++;
  if (buildCounterMetadataLabels < 3) {
    unittest.expect(o.labelName!, unittest.equals('foo'));
    unittest.expect(o.labelValue!, unittest.equals('foo'));
  }
  buildCounterMetadataLabels--;
}

core.Map<core.String, core.Object?> buildUnnamed90() => {
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

void checkUnnamed90(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed91() => {
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

void checkUnnamed91(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed90();
    o.name = 'foo';
    o.response = buildUnnamed91();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed90(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed91(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.String> buildUnnamed92() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed92(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed92();
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
    checkUnnamed92(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
    unittest.expect(o.serviceId!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterServiceBinding--;
}

core.Map<core.String, core.String> buildUnnamed93() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed93(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed93();
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
    checkUnnamed93(o.labels!);
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

core.Map<core.String, core.Object?> buildUnnamed94() => {
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

void checkUnnamed94(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed95() => [
  buildUnnamed94(),
  buildUnnamed94(),
];

void checkUnnamed95(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed94(o[0]);
  checkUnnamed94(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed95();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed95(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed96() => ['foo', 'foo'];

void checkUnnamed96(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed97() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed97(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed98() => ['foo', 'foo'];

void checkUnnamed98(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TcpRouteRouteRule> buildUnnamed99() => [
  buildTcpRouteRouteRule(),
  buildTcpRouteRouteRule(),
];

void checkUnnamed99(core.List<api.TcpRouteRouteRule> o) {
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
    o.gateways = buildUnnamed96();
    o.labels = buildUnnamed97();
    o.meshes = buildUnnamed98();
    o.name = 'foo';
    o.rules = buildUnnamed99();
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
    checkUnnamed96(o.gateways!);
    checkUnnamed97(o.labels!);
    checkUnnamed98(o.meshes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed99(o.rules!);
    unittest.expect(o.selfLink!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterTcpRoute--;
}

core.List<api.TcpRouteRouteDestination> buildUnnamed100() => [
  buildTcpRouteRouteDestination(),
  buildTcpRouteRouteDestination(),
];

void checkUnnamed100(core.List<api.TcpRouteRouteDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTcpRouteRouteDestination(o[0]);
  checkTcpRouteRouteDestination(o[1]);
}

core.int buildCounterTcpRouteRouteAction = 0;
api.TcpRouteRouteAction buildTcpRouteRouteAction() {
  final o = api.TcpRouteRouteAction();
  buildCounterTcpRouteRouteAction++;
  if (buildCounterTcpRouteRouteAction < 3) {
    o.destinations = buildUnnamed100();
    o.idleTimeout = 'foo';
    o.originalDestination = true;
  }
  buildCounterTcpRouteRouteAction--;
  return o;
}

void checkTcpRouteRouteAction(api.TcpRouteRouteAction o) {
  buildCounterTcpRouteRouteAction++;
  if (buildCounterTcpRouteRouteAction < 3) {
    checkUnnamed100(o.destinations!);
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

core.List<api.TcpRouteRouteMatch> buildUnnamed101() => [
  buildTcpRouteRouteMatch(),
  buildTcpRouteRouteMatch(),
];

void checkUnnamed101(core.List<api.TcpRouteRouteMatch> o) {
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
    o.matches = buildUnnamed101();
  }
  buildCounterTcpRouteRouteRule--;
  return o;
}

void checkTcpRouteRouteRule(api.TcpRouteRouteRule o) {
  buildCounterTcpRouteRouteRule++;
  if (buildCounterTcpRouteRouteRule < 3) {
    checkTcpRouteRouteAction(o.action!);
    checkUnnamed101(o.matches!);
  }
  buildCounterTcpRouteRouteRule--;
}

core.List<core.String> buildUnnamed102() => ['foo', 'foo'];

void checkUnnamed102(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed103() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed103(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed104() => ['foo', 'foo'];

void checkUnnamed104(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TlsRouteRouteRule> buildUnnamed105() => [
  buildTlsRouteRouteRule(),
  buildTlsRouteRouteRule(),
];

void checkUnnamed105(core.List<api.TlsRouteRouteRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTlsRouteRouteRule(o[0]);
  checkTlsRouteRouteRule(o[1]);
}

core.int buildCounterTlsRoute = 0;
api.TlsRoute buildTlsRoute() {
  final o = api.TlsRoute();
  buildCounterTlsRoute++;
  if (buildCounterTlsRoute < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.gateways = buildUnnamed102();
    o.labels = buildUnnamed103();
    o.meshes = buildUnnamed104();
    o.name = 'foo';
    o.rules = buildUnnamed105();
    o.selfLink = 'foo';
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
    checkUnnamed102(o.gateways!);
    checkUnnamed103(o.labels!);
    checkUnnamed104(o.meshes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed105(o.rules!);
    unittest.expect(o.selfLink!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterTlsRoute--;
}

core.List<api.TlsRouteRouteDestination> buildUnnamed106() => [
  buildTlsRouteRouteDestination(),
  buildTlsRouteRouteDestination(),
];

void checkUnnamed106(core.List<api.TlsRouteRouteDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTlsRouteRouteDestination(o[0]);
  checkTlsRouteRouteDestination(o[1]);
}

core.int buildCounterTlsRouteRouteAction = 0;
api.TlsRouteRouteAction buildTlsRouteRouteAction() {
  final o = api.TlsRouteRouteAction();
  buildCounterTlsRouteRouteAction++;
  if (buildCounterTlsRouteRouteAction < 3) {
    o.destinations = buildUnnamed106();
    o.idleTimeout = 'foo';
  }
  buildCounterTlsRouteRouteAction--;
  return o;
}

void checkTlsRouteRouteAction(api.TlsRouteRouteAction o) {
  buildCounterTlsRouteRouteAction++;
  if (buildCounterTlsRouteRouteAction < 3) {
    checkUnnamed106(o.destinations!);
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

core.List<core.String> buildUnnamed107() => ['foo', 'foo'];

void checkUnnamed107(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed108() => ['foo', 'foo'];

void checkUnnamed108(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTlsRouteRouteMatch = 0;
api.TlsRouteRouteMatch buildTlsRouteRouteMatch() {
  final o = api.TlsRouteRouteMatch();
  buildCounterTlsRouteRouteMatch++;
  if (buildCounterTlsRouteRouteMatch < 3) {
    o.alpn = buildUnnamed107();
    o.sniHost = buildUnnamed108();
  }
  buildCounterTlsRouteRouteMatch--;
  return o;
}

void checkTlsRouteRouteMatch(api.TlsRouteRouteMatch o) {
  buildCounterTlsRouteRouteMatch++;
  if (buildCounterTlsRouteRouteMatch < 3) {
    checkUnnamed107(o.alpn!);
    checkUnnamed108(o.sniHost!);
  }
  buildCounterTlsRouteRouteMatch--;
}

core.List<api.TlsRouteRouteMatch> buildUnnamed109() => [
  buildTlsRouteRouteMatch(),
  buildTlsRouteRouteMatch(),
];

void checkUnnamed109(core.List<api.TlsRouteRouteMatch> o) {
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
    o.matches = buildUnnamed109();
  }
  buildCounterTlsRouteRouteRule--;
  return o;
}

void checkTlsRouteRouteRule(api.TlsRouteRouteRule o) {
  buildCounterTlsRouteRouteRule++;
  if (buildCounterTlsRouteRouteRule < 3) {
    checkTlsRouteRouteAction(o.action!);
    checkUnnamed109(o.matches!);
  }
  buildCounterTlsRouteRouteRule--;
}

core.List<core.String> buildUnnamed110() => ['foo', 'foo'];

void checkUnnamed110(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTrafficPortSelector = 0;
api.TrafficPortSelector buildTrafficPortSelector() {
  final o = api.TrafficPortSelector();
  buildCounterTrafficPortSelector++;
  if (buildCounterTrafficPortSelector < 3) {
    o.ports = buildUnnamed110();
  }
  buildCounterTrafficPortSelector--;
  return o;
}

void checkTrafficPortSelector(api.TrafficPortSelector o) {
  buildCounterTrafficPortSelector++;
  if (buildCounterTrafficPortSelector < 3) {
    checkUnnamed110(o.ports!);
  }
  buildCounterTrafficPortSelector--;
}

core.Map<core.String, core.String> buildUnnamed111() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed111(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.WasmPluginUsedBy> buildUnnamed112() => [
  buildWasmPluginUsedBy(),
  buildWasmPluginUsedBy(),
];

void checkUnnamed112(core.List<api.WasmPluginUsedBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWasmPluginUsedBy(o[0]);
  checkWasmPluginUsedBy(o[1]);
}

core.Map<core.String, api.WasmPluginVersionDetails> buildUnnamed113() => {
  'x': buildWasmPluginVersionDetails(),
  'y': buildWasmPluginVersionDetails(),
};

void checkUnnamed113(core.Map<core.String, api.WasmPluginVersionDetails> o) {
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
    o.labels = buildUnnamed111();
    o.logConfig = buildWasmPluginLogConfig();
    o.mainVersionId = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
    o.usedBy = buildUnnamed112();
    o.versions = buildUnnamed113();
  }
  buildCounterWasmPlugin--;
  return o;
}

void checkWasmPlugin(api.WasmPlugin o) {
  buildCounterWasmPlugin++;
  if (buildCounterWasmPlugin < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed111(o.labels!);
    checkWasmPluginLogConfig(o.logConfig!);
    unittest.expect(o.mainVersionId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUnnamed112(o.usedBy!);
    checkUnnamed113(o.versions!);
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

core.Map<core.String, core.String> buildUnnamed114() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed114(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed114();
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
    checkUnnamed114(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.pluginConfigData!, unittest.equals('foo'));
    unittest.expect(o.pluginConfigDigest!, unittest.equals('foo'));
    unittest.expect(o.pluginConfigUri!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterWasmPluginVersion--;
}

core.Map<core.String, core.String> buildUnnamed115() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed115(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed115();
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
    checkUnnamed115(o.labels!);
    unittest.expect(o.pluginConfigData!, unittest.equals('foo'));
    unittest.expect(o.pluginConfigDigest!, unittest.equals('foo'));
    unittest.expect(o.pluginConfigUri!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterWasmPluginVersionDetails--;
}

core.List<core.String> buildUnnamed116() => ['foo', 'foo'];

void checkUnnamed116(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
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

  unittest.group('obj-schema-MetadataLabelMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadataLabelMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetadataLabelMatcher.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetadataLabelMatcher(od);
    });
  });

  unittest.group('obj-schema-MetadataLabels', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadataLabels();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetadataLabels.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetadataLabels(od);
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final arg_extraLocationTypes = buildUnnamed116();
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

  unittest.group('resource-ProjectsLocationsAuthzExtensionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.authzExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.authzExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.authzExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.authzExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.authzExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

  unittest.group('resource-ProjectsLocationsEndpointPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.endpointPolicies;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.endpointPolicies;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.endpointPolicies;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.endpointPolicies;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.endpointPolicies;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.gateways.routeViews;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.gateways.routeViews;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildListHttpRoutesResponse());
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.lbEdgeExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.lbEdgeExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.lbEdgeExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.lbEdgeExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.lbEdgeExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.lbRouteExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.lbRouteExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.lbRouteExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.lbRouteExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.lbRouteExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.lbTrafficExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.lbTrafficExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.lbTrafficExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.lbTrafficExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.lbTrafficExtensions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.meshes.routeViews;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.meshes.routeViews;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsServiceBindingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceBindings;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceBindings;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceBindings;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceBindings;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceBindings;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceLbPolicies;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceLbPolicies;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceLbPolicies;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceLbPolicies;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceLbPolicies;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.wasmPlugins.versions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.wasmPlugins.versions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.wasmPlugins.versions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res =
          api.NetworkServicesApi(mock).projects.locations.wasmPlugins.versions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
