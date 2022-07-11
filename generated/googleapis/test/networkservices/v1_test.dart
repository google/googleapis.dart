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

import 'package:googleapis/networkservices/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AuditLogConfig> buildUnnamed0() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed0(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed0();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed0(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed2();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed2(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
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
    buildUnnamed3() => [
          buildEndpointMatcherMetadataLabelMatcherMetadataLabels(),
          buildEndpointMatcherMetadataLabelMatcherMetadataLabels(),
        ];

void checkUnnamed3(
    core.List<api.EndpointMatcherMetadataLabelMatcherMetadataLabels> o) {
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
    o.metadataLabels = buildUnnamed3();
  }
  buildCounterEndpointMatcherMetadataLabelMatcher--;
  return o;
}

void checkEndpointMatcherMetadataLabelMatcher(
    api.EndpointMatcherMetadataLabelMatcher o) {
  buildCounterEndpointMatcherMetadataLabelMatcher++;
  if (buildCounterEndpointMatcherMetadataLabelMatcher < 3) {
    unittest.expect(
      o.metadataLabelMatchCriteria!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.metadataLabels!);
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
    api.EndpointMatcherMetadataLabelMatcherMetadataLabels o) {
  buildCounterEndpointMatcherMetadataLabelMatcherMetadataLabels++;
  if (buildCounterEndpointMatcherMetadataLabelMatcherMetadataLabels < 3) {
    unittest.expect(
      o.labelName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.labelValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterEndpointMatcherMetadataLabelMatcherMetadataLabels--;
}

core.Map<core.String, core.String> buildUnnamed4() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
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
    o.labels = buildUnnamed4();
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
    unittest.expect(
      o.authorizationPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientTlsPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkEndpointMatcher(o.endpointMatcher!);
    checkUnnamed4(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serverTlsPolicy!,
      unittest.equals('foo'),
    );
    checkTrafficPortSelector(o.trafficPortSelector!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterExpr--;
}

core.Map<core.String, core.String> buildUnnamed5() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<core.int> buildUnnamed6() => [
      42,
      42,
    ];

void checkUnnamed6(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterGateway = 0;
api.Gateway buildGateway() {
  final o = api.Gateway();
  buildCounterGateway++;
  if (buildCounterGateway < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed5();
    o.name = 'foo';
    o.ports = buildUnnamed6();
    o.scope = 'foo';
    o.selfLink = 'foo';
    o.serverTlsPolicy = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGateway--;
  return o;
}

void checkGateway(api.Gateway o) {
  buildCounterGateway++;
  if (buildCounterGateway < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.ports!);
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serverTlsPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGateway--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed9() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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

core.List<api.GrpcRouteRouteRule> buildUnnamed11() => [
      buildGrpcRouteRouteRule(),
      buildGrpcRouteRouteRule(),
    ];

void checkUnnamed11(core.List<api.GrpcRouteRouteRule> o) {
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
    o.gateways = buildUnnamed7();
    o.hostnames = buildUnnamed8();
    o.labels = buildUnnamed9();
    o.meshes = buildUnnamed10();
    o.name = 'foo';
    o.rules = buildUnnamed11();
    o.selfLink = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGrpcRoute--;
  return o;
}

void checkGrpcRoute(api.GrpcRoute o) {
  buildCounterGrpcRoute++;
  if (buildCounterGrpcRoute < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.gateways!);
    checkUnnamed8(o.hostnames!);
    checkUnnamed9(o.labels!);
    checkUnnamed10(o.meshes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.rules!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.serviceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.weight!,
      unittest.equals(42),
    );
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
    api.GrpcRouteFaultInjectionPolicyAbort o) {
  buildCounterGrpcRouteFaultInjectionPolicyAbort++;
  if (buildCounterGrpcRouteFaultInjectionPolicyAbort < 3) {
    unittest.expect(
      o.httpStatus!,
      unittest.equals(42),
    );
    unittest.expect(
      o.percentage!,
      unittest.equals(42),
    );
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
    api.GrpcRouteFaultInjectionPolicyDelay o) {
  buildCounterGrpcRouteFaultInjectionPolicyDelay++;
  if (buildCounterGrpcRouteFaultInjectionPolicyDelay < 3) {
    unittest.expect(
      o.fixedDelay!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.percentage!,
      unittest.equals(42),
    );
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
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.grpcMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.grpcService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGrpcRouteMethodMatch--;
}

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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

core.int buildCounterGrpcRouteRetryPolicy = 0;
api.GrpcRouteRetryPolicy buildGrpcRouteRetryPolicy() {
  final o = api.GrpcRouteRetryPolicy();
  buildCounterGrpcRouteRetryPolicy++;
  if (buildCounterGrpcRouteRetryPolicy < 3) {
    o.numRetries = 42;
    o.retryConditions = buildUnnamed12();
  }
  buildCounterGrpcRouteRetryPolicy--;
  return o;
}

void checkGrpcRouteRetryPolicy(api.GrpcRouteRetryPolicy o) {
  buildCounterGrpcRouteRetryPolicy++;
  if (buildCounterGrpcRouteRetryPolicy < 3) {
    unittest.expect(
      o.numRetries!,
      unittest.equals(42),
    );
    checkUnnamed12(o.retryConditions!);
  }
  buildCounterGrpcRouteRetryPolicy--;
}

core.List<api.GrpcRouteDestination> buildUnnamed13() => [
      buildGrpcRouteDestination(),
      buildGrpcRouteDestination(),
    ];

void checkUnnamed13(core.List<api.GrpcRouteDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrpcRouteDestination(o[0]);
  checkGrpcRouteDestination(o[1]);
}

core.int buildCounterGrpcRouteRouteAction = 0;
api.GrpcRouteRouteAction buildGrpcRouteRouteAction() {
  final o = api.GrpcRouteRouteAction();
  buildCounterGrpcRouteRouteAction++;
  if (buildCounterGrpcRouteRouteAction < 3) {
    o.destinations = buildUnnamed13();
    o.faultInjectionPolicy = buildGrpcRouteFaultInjectionPolicy();
    o.retryPolicy = buildGrpcRouteRetryPolicy();
    o.timeout = 'foo';
  }
  buildCounterGrpcRouteRouteAction--;
  return o;
}

void checkGrpcRouteRouteAction(api.GrpcRouteRouteAction o) {
  buildCounterGrpcRouteRouteAction++;
  if (buildCounterGrpcRouteRouteAction < 3) {
    checkUnnamed13(o.destinations!);
    checkGrpcRouteFaultInjectionPolicy(o.faultInjectionPolicy!);
    checkGrpcRouteRetryPolicy(o.retryPolicy!);
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
  }
  buildCounterGrpcRouteRouteAction--;
}

core.List<api.GrpcRouteHeaderMatch> buildUnnamed14() => [
      buildGrpcRouteHeaderMatch(),
      buildGrpcRouteHeaderMatch(),
    ];

void checkUnnamed14(core.List<api.GrpcRouteHeaderMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrpcRouteHeaderMatch(o[0]);
  checkGrpcRouteHeaderMatch(o[1]);
}

core.int buildCounterGrpcRouteRouteMatch = 0;
api.GrpcRouteRouteMatch buildGrpcRouteRouteMatch() {
  final o = api.GrpcRouteRouteMatch();
  buildCounterGrpcRouteRouteMatch++;
  if (buildCounterGrpcRouteRouteMatch < 3) {
    o.headers = buildUnnamed14();
    o.method = buildGrpcRouteMethodMatch();
  }
  buildCounterGrpcRouteRouteMatch--;
  return o;
}

void checkGrpcRouteRouteMatch(api.GrpcRouteRouteMatch o) {
  buildCounterGrpcRouteRouteMatch++;
  if (buildCounterGrpcRouteRouteMatch < 3) {
    checkUnnamed14(o.headers!);
    checkGrpcRouteMethodMatch(o.method!);
  }
  buildCounterGrpcRouteRouteMatch--;
}

core.List<api.GrpcRouteRouteMatch> buildUnnamed15() => [
      buildGrpcRouteRouteMatch(),
      buildGrpcRouteRouteMatch(),
    ];

void checkUnnamed15(core.List<api.GrpcRouteRouteMatch> o) {
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
    o.matches = buildUnnamed15();
  }
  buildCounterGrpcRouteRouteRule--;
  return o;
}

void checkGrpcRouteRouteRule(api.GrpcRouteRouteRule o) {
  buildCounterGrpcRouteRouteRule++;
  if (buildCounterGrpcRouteRouteRule < 3) {
    checkGrpcRouteRouteAction(o.action!);
    checkUnnamed15(o.matches!);
  }
  buildCounterGrpcRouteRouteRule--;
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed18() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed18(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
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

core.List<api.HttpRouteRouteRule> buildUnnamed20() => [
      buildHttpRouteRouteRule(),
      buildHttpRouteRouteRule(),
    ];

void checkUnnamed20(core.List<api.HttpRouteRouteRule> o) {
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
    o.gateways = buildUnnamed16();
    o.hostnames = buildUnnamed17();
    o.labels = buildUnnamed18();
    o.meshes = buildUnnamed19();
    o.name = 'foo';
    o.rules = buildUnnamed20();
    o.selfLink = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterHttpRoute--;
  return o;
}

void checkHttpRoute(api.HttpRoute o) {
  buildCounterHttpRoute++;
  if (buildCounterHttpRoute < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.gateways!);
    checkUnnamed17(o.hostnames!);
    checkUnnamed18(o.labels!);
    checkUnnamed19(o.meshes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.rules!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterHttpRoute--;
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

core.int buildCounterHttpRouteCorsPolicy = 0;
api.HttpRouteCorsPolicy buildHttpRouteCorsPolicy() {
  final o = api.HttpRouteCorsPolicy();
  buildCounterHttpRouteCorsPolicy++;
  if (buildCounterHttpRouteCorsPolicy < 3) {
    o.allowCredentials = true;
    o.allowHeaders = buildUnnamed21();
    o.allowMethods = buildUnnamed22();
    o.allowOriginRegexes = buildUnnamed23();
    o.allowOrigins = buildUnnamed24();
    o.disabled = true;
    o.exposeHeaders = buildUnnamed25();
    o.maxAge = 'foo';
  }
  buildCounterHttpRouteCorsPolicy--;
  return o;
}

void checkHttpRouteCorsPolicy(api.HttpRouteCorsPolicy o) {
  buildCounterHttpRouteCorsPolicy++;
  if (buildCounterHttpRouteCorsPolicy < 3) {
    unittest.expect(o.allowCredentials!, unittest.isTrue);
    checkUnnamed21(o.allowHeaders!);
    checkUnnamed22(o.allowMethods!);
    checkUnnamed23(o.allowOriginRegexes!);
    checkUnnamed24(o.allowOrigins!);
    unittest.expect(o.disabled!, unittest.isTrue);
    checkUnnamed25(o.exposeHeaders!);
    unittest.expect(
      o.maxAge!,
      unittest.equals('foo'),
    );
  }
  buildCounterHttpRouteCorsPolicy--;
}

core.int buildCounterHttpRouteDestination = 0;
api.HttpRouteDestination buildHttpRouteDestination() {
  final o = api.HttpRouteDestination();
  buildCounterHttpRouteDestination++;
  if (buildCounterHttpRouteDestination < 3) {
    o.serviceName = 'foo';
    o.weight = 42;
  }
  buildCounterHttpRouteDestination--;
  return o;
}

void checkHttpRouteDestination(api.HttpRouteDestination o) {
  buildCounterHttpRouteDestination++;
  if (buildCounterHttpRouteDestination < 3) {
    unittest.expect(
      o.serviceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.weight!,
      unittest.equals(42),
    );
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
    api.HttpRouteFaultInjectionPolicyAbort o) {
  buildCounterHttpRouteFaultInjectionPolicyAbort++;
  if (buildCounterHttpRouteFaultInjectionPolicyAbort < 3) {
    unittest.expect(
      o.httpStatus!,
      unittest.equals(42),
    );
    unittest.expect(
      o.percentage!,
      unittest.equals(42),
    );
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
    api.HttpRouteFaultInjectionPolicyDelay o) {
  buildCounterHttpRouteFaultInjectionPolicyDelay++;
  if (buildCounterHttpRouteFaultInjectionPolicyDelay < 3) {
    unittest.expect(
      o.fixedDelay!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.percentage!,
      unittest.equals(42),
    );
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
    unittest.expect(
      o.exactMatch!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.header!,
      unittest.equals('foo'),
    );
    unittest.expect(o.invertMatch!, unittest.isTrue);
    unittest.expect(
      o.prefixMatch!,
      unittest.equals('foo'),
    );
    unittest.expect(o.presentMatch!, unittest.isTrue);
    checkHttpRouteHeaderMatchIntegerRange(o.rangeMatch!);
    unittest.expect(
      o.regexMatch!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.suffixMatch!,
      unittest.equals('foo'),
    );
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
    api.HttpRouteHeaderMatchIntegerRange o) {
  buildCounterHttpRouteHeaderMatchIntegerRange++;
  if (buildCounterHttpRouteHeaderMatchIntegerRange < 3) {
    unittest.expect(
      o.end!,
      unittest.equals(42),
    );
    unittest.expect(
      o.start!,
      unittest.equals(42),
    );
  }
  buildCounterHttpRouteHeaderMatchIntegerRange--;
}

core.Map<core.String, core.String> buildUnnamed26() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed26(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed28() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed28(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterHttpRouteHeaderModifier = 0;
api.HttpRouteHeaderModifier buildHttpRouteHeaderModifier() {
  final o = api.HttpRouteHeaderModifier();
  buildCounterHttpRouteHeaderModifier++;
  if (buildCounterHttpRouteHeaderModifier < 3) {
    o.add = buildUnnamed26();
    o.remove = buildUnnamed27();
    o.set = buildUnnamed28();
  }
  buildCounterHttpRouteHeaderModifier--;
  return o;
}

void checkHttpRouteHeaderModifier(api.HttpRouteHeaderModifier o) {
  buildCounterHttpRouteHeaderModifier++;
  if (buildCounterHttpRouteHeaderModifier < 3) {
    checkUnnamed26(o.add!);
    checkUnnamed27(o.remove!);
    checkUnnamed28(o.set!);
  }
  buildCounterHttpRouteHeaderModifier--;
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
    unittest.expect(
      o.exactMatch!,
      unittest.equals('foo'),
    );
    unittest.expect(o.presentMatch!, unittest.isTrue);
    unittest.expect(
      o.queryParameter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regexMatch!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.hostRedirect!,
      unittest.equals('foo'),
    );
    unittest.expect(o.httpsRedirect!, unittest.isTrue);
    unittest.expect(
      o.pathRedirect!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.portRedirect!,
      unittest.equals(42),
    );
    unittest.expect(
      o.prefixRewrite!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseCode!,
      unittest.equals('foo'),
    );
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
  }
  buildCounterHttpRouteRequestMirrorPolicy--;
  return o;
}

void checkHttpRouteRequestMirrorPolicy(api.HttpRouteRequestMirrorPolicy o) {
  buildCounterHttpRouteRequestMirrorPolicy++;
  if (buildCounterHttpRouteRequestMirrorPolicy < 3) {
    checkHttpRouteDestination(o.destination!);
  }
  buildCounterHttpRouteRequestMirrorPolicy--;
}

core.List<core.String> buildUnnamed29() => [
      'foo',
      'foo',
    ];

void checkUnnamed29(core.List<core.String> o) {
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

core.int buildCounterHttpRouteRetryPolicy = 0;
api.HttpRouteRetryPolicy buildHttpRouteRetryPolicy() {
  final o = api.HttpRouteRetryPolicy();
  buildCounterHttpRouteRetryPolicy++;
  if (buildCounterHttpRouteRetryPolicy < 3) {
    o.numRetries = 42;
    o.perTryTimeout = 'foo';
    o.retryConditions = buildUnnamed29();
  }
  buildCounterHttpRouteRetryPolicy--;
  return o;
}

void checkHttpRouteRetryPolicy(api.HttpRouteRetryPolicy o) {
  buildCounterHttpRouteRetryPolicy++;
  if (buildCounterHttpRouteRetryPolicy < 3) {
    unittest.expect(
      o.numRetries!,
      unittest.equals(42),
    );
    unittest.expect(
      o.perTryTimeout!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.retryConditions!);
  }
  buildCounterHttpRouteRetryPolicy--;
}

core.List<api.HttpRouteDestination> buildUnnamed30() => [
      buildHttpRouteDestination(),
      buildHttpRouteDestination(),
    ];

void checkUnnamed30(core.List<api.HttpRouteDestination> o) {
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
    o.destinations = buildUnnamed30();
    o.faultInjectionPolicy = buildHttpRouteFaultInjectionPolicy();
    o.redirect = buildHttpRouteRedirect();
    o.requestHeaderModifier = buildHttpRouteHeaderModifier();
    o.requestMirrorPolicy = buildHttpRouteRequestMirrorPolicy();
    o.responseHeaderModifier = buildHttpRouteHeaderModifier();
    o.retryPolicy = buildHttpRouteRetryPolicy();
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
    checkUnnamed30(o.destinations!);
    checkHttpRouteFaultInjectionPolicy(o.faultInjectionPolicy!);
    checkHttpRouteRedirect(o.redirect!);
    checkHttpRouteHeaderModifier(o.requestHeaderModifier!);
    checkHttpRouteRequestMirrorPolicy(o.requestMirrorPolicy!);
    checkHttpRouteHeaderModifier(o.responseHeaderModifier!);
    checkHttpRouteRetryPolicy(o.retryPolicy!);
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
    checkHttpRouteURLRewrite(o.urlRewrite!);
  }
  buildCounterHttpRouteRouteAction--;
}

core.List<api.HttpRouteHeaderMatch> buildUnnamed31() => [
      buildHttpRouteHeaderMatch(),
      buildHttpRouteHeaderMatch(),
    ];

void checkUnnamed31(core.List<api.HttpRouteHeaderMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRouteHeaderMatch(o[0]);
  checkHttpRouteHeaderMatch(o[1]);
}

core.List<api.HttpRouteQueryParameterMatch> buildUnnamed32() => [
      buildHttpRouteQueryParameterMatch(),
      buildHttpRouteQueryParameterMatch(),
    ];

void checkUnnamed32(core.List<api.HttpRouteQueryParameterMatch> o) {
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
    o.headers = buildUnnamed31();
    o.ignoreCase = true;
    o.prefixMatch = 'foo';
    o.queryParameters = buildUnnamed32();
    o.regexMatch = 'foo';
  }
  buildCounterHttpRouteRouteMatch--;
  return o;
}

void checkHttpRouteRouteMatch(api.HttpRouteRouteMatch o) {
  buildCounterHttpRouteRouteMatch++;
  if (buildCounterHttpRouteRouteMatch < 3) {
    unittest.expect(
      o.fullPathMatch!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.headers!);
    unittest.expect(o.ignoreCase!, unittest.isTrue);
    unittest.expect(
      o.prefixMatch!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.queryParameters!);
    unittest.expect(
      o.regexMatch!,
      unittest.equals('foo'),
    );
  }
  buildCounterHttpRouteRouteMatch--;
}

core.List<api.HttpRouteRouteMatch> buildUnnamed33() => [
      buildHttpRouteRouteMatch(),
      buildHttpRouteRouteMatch(),
    ];

void checkUnnamed33(core.List<api.HttpRouteRouteMatch> o) {
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
    o.matches = buildUnnamed33();
  }
  buildCounterHttpRouteRouteRule--;
  return o;
}

void checkHttpRouteRouteRule(api.HttpRouteRouteRule o) {
  buildCounterHttpRouteRouteRule++;
  if (buildCounterHttpRouteRouteRule < 3) {
    checkHttpRouteRouteAction(o.action!);
    checkUnnamed33(o.matches!);
  }
  buildCounterHttpRouteRouteRule--;
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
    unittest.expect(
      o.hostRewrite!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pathPrefixRewrite!,
      unittest.equals('foo'),
    );
  }
  buildCounterHttpRouteURLRewrite--;
}

core.List<api.EndpointPolicy> buildUnnamed34() => [
      buildEndpointPolicy(),
      buildEndpointPolicy(),
    ];

void checkUnnamed34(core.List<api.EndpointPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpointPolicy(o[0]);
  checkEndpointPolicy(o[1]);
}

core.int buildCounterListEndpointPoliciesResponse = 0;
api.ListEndpointPoliciesResponse buildListEndpointPoliciesResponse() {
  final o = api.ListEndpointPoliciesResponse();
  buildCounterListEndpointPoliciesResponse++;
  if (buildCounterListEndpointPoliciesResponse < 3) {
    o.endpointPolicies = buildUnnamed34();
    o.nextPageToken = 'foo';
  }
  buildCounterListEndpointPoliciesResponse--;
  return o;
}

void checkListEndpointPoliciesResponse(api.ListEndpointPoliciesResponse o) {
  buildCounterListEndpointPoliciesResponse++;
  if (buildCounterListEndpointPoliciesResponse < 3) {
    checkUnnamed34(o.endpointPolicies!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListEndpointPoliciesResponse--;
}

core.List<api.Gateway> buildUnnamed35() => [
      buildGateway(),
      buildGateway(),
    ];

void checkUnnamed35(core.List<api.Gateway> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGateway(o[0]);
  checkGateway(o[1]);
}

core.int buildCounterListGatewaysResponse = 0;
api.ListGatewaysResponse buildListGatewaysResponse() {
  final o = api.ListGatewaysResponse();
  buildCounterListGatewaysResponse++;
  if (buildCounterListGatewaysResponse < 3) {
    o.gateways = buildUnnamed35();
    o.nextPageToken = 'foo';
  }
  buildCounterListGatewaysResponse--;
  return o;
}

void checkListGatewaysResponse(api.ListGatewaysResponse o) {
  buildCounterListGatewaysResponse++;
  if (buildCounterListGatewaysResponse < 3) {
    checkUnnamed35(o.gateways!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGatewaysResponse--;
}

core.List<api.GrpcRoute> buildUnnamed36() => [
      buildGrpcRoute(),
      buildGrpcRoute(),
    ];

void checkUnnamed36(core.List<api.GrpcRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrpcRoute(o[0]);
  checkGrpcRoute(o[1]);
}

core.int buildCounterListGrpcRoutesResponse = 0;
api.ListGrpcRoutesResponse buildListGrpcRoutesResponse() {
  final o = api.ListGrpcRoutesResponse();
  buildCounterListGrpcRoutesResponse++;
  if (buildCounterListGrpcRoutesResponse < 3) {
    o.grpcRoutes = buildUnnamed36();
    o.nextPageToken = 'foo';
  }
  buildCounterListGrpcRoutesResponse--;
  return o;
}

void checkListGrpcRoutesResponse(api.ListGrpcRoutesResponse o) {
  buildCounterListGrpcRoutesResponse++;
  if (buildCounterListGrpcRoutesResponse < 3) {
    checkUnnamed36(o.grpcRoutes!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGrpcRoutesResponse--;
}

core.List<api.HttpRoute> buildUnnamed37() => [
      buildHttpRoute(),
      buildHttpRoute(),
    ];

void checkUnnamed37(core.List<api.HttpRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRoute(o[0]);
  checkHttpRoute(o[1]);
}

core.int buildCounterListHttpRoutesResponse = 0;
api.ListHttpRoutesResponse buildListHttpRoutesResponse() {
  final o = api.ListHttpRoutesResponse();
  buildCounterListHttpRoutesResponse++;
  if (buildCounterListHttpRoutesResponse < 3) {
    o.httpRoutes = buildUnnamed37();
    o.nextPageToken = 'foo';
  }
  buildCounterListHttpRoutesResponse--;
  return o;
}

void checkListHttpRoutesResponse(api.ListHttpRoutesResponse o) {
  buildCounterListHttpRoutesResponse++;
  if (buildCounterListHttpRoutesResponse < 3) {
    checkUnnamed37(o.httpRoutes!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListHttpRoutesResponse--;
}

core.List<api.Location> buildUnnamed38() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed38(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed38();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed38(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Mesh> buildUnnamed39() => [
      buildMesh(),
      buildMesh(),
    ];

void checkUnnamed39(core.List<api.Mesh> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMesh(o[0]);
  checkMesh(o[1]);
}

core.int buildCounterListMeshesResponse = 0;
api.ListMeshesResponse buildListMeshesResponse() {
  final o = api.ListMeshesResponse();
  buildCounterListMeshesResponse++;
  if (buildCounterListMeshesResponse < 3) {
    o.meshes = buildUnnamed39();
    o.nextPageToken = 'foo';
  }
  buildCounterListMeshesResponse--;
  return o;
}

void checkListMeshesResponse(api.ListMeshesResponse o) {
  buildCounterListMeshesResponse++;
  if (buildCounterListMeshesResponse < 3) {
    checkUnnamed39(o.meshes!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListMeshesResponse--;
}

core.List<api.Operation> buildUnnamed40() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed40(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed40();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.ServiceBinding> buildUnnamed41() => [
      buildServiceBinding(),
      buildServiceBinding(),
    ];

void checkUnnamed41(core.List<api.ServiceBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceBinding(o[0]);
  checkServiceBinding(o[1]);
}

core.int buildCounterListServiceBindingsResponse = 0;
api.ListServiceBindingsResponse buildListServiceBindingsResponse() {
  final o = api.ListServiceBindingsResponse();
  buildCounterListServiceBindingsResponse++;
  if (buildCounterListServiceBindingsResponse < 3) {
    o.nextPageToken = 'foo';
    o.serviceBindings = buildUnnamed41();
  }
  buildCounterListServiceBindingsResponse--;
  return o;
}

void checkListServiceBindingsResponse(api.ListServiceBindingsResponse o) {
  buildCounterListServiceBindingsResponse++;
  if (buildCounterListServiceBindingsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.serviceBindings!);
  }
  buildCounterListServiceBindingsResponse--;
}

core.List<api.TcpRoute> buildUnnamed42() => [
      buildTcpRoute(),
      buildTcpRoute(),
    ];

void checkUnnamed42(core.List<api.TcpRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTcpRoute(o[0]);
  checkTcpRoute(o[1]);
}

core.int buildCounterListTcpRoutesResponse = 0;
api.ListTcpRoutesResponse buildListTcpRoutesResponse() {
  final o = api.ListTcpRoutesResponse();
  buildCounterListTcpRoutesResponse++;
  if (buildCounterListTcpRoutesResponse < 3) {
    o.nextPageToken = 'foo';
    o.tcpRoutes = buildUnnamed42();
  }
  buildCounterListTcpRoutesResponse--;
  return o;
}

void checkListTcpRoutesResponse(api.ListTcpRoutesResponse o) {
  buildCounterListTcpRoutesResponse++;
  if (buildCounterListTcpRoutesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.tcpRoutes!);
  }
  buildCounterListTcpRoutesResponse--;
}

core.List<api.TlsRoute> buildUnnamed43() => [
      buildTlsRoute(),
      buildTlsRoute(),
    ];

void checkUnnamed43(core.List<api.TlsRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTlsRoute(o[0]);
  checkTlsRoute(o[1]);
}

core.int buildCounterListTlsRoutesResponse = 0;
api.ListTlsRoutesResponse buildListTlsRoutesResponse() {
  final o = api.ListTlsRoutesResponse();
  buildCounterListTlsRoutesResponse++;
  if (buildCounterListTlsRoutesResponse < 3) {
    o.nextPageToken = 'foo';
    o.tlsRoutes = buildUnnamed43();
  }
  buildCounterListTlsRoutesResponse--;
  return o;
}

void checkListTlsRoutesResponse(api.ListTlsRoutesResponse o) {
  buildCounterListTlsRoutesResponse++;
  if (buildCounterListTlsRoutesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.tlsRoutes!);
  }
  buildCounterListTlsRoutesResponse--;
}

core.Map<core.String, core.String> buildUnnamed44() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed44(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed45() => {
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

void checkUnnamed45(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed44();
    o.locationId = 'foo';
    o.metadata = buildUnnamed45();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed45(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed46() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed46(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterMesh = 0;
api.Mesh buildMesh() {
  final o = api.Mesh();
  buildCounterMesh++;
  if (buildCounterMesh < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.interceptionPort = 42;
    o.labels = buildUnnamed46();
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.interceptionPort!,
      unittest.equals(42),
    );
    checkUnnamed46(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMesh--;
}

core.Map<core.String, core.Object?> buildUnnamed47() => {
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

void checkUnnamed47(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed48() => {
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

void checkUnnamed48(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed47();
    o.name = 'foo';
    o.response = buildUnnamed48();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed47(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed49() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed49(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed50() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed50(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed49();
    o.bindings = buildUnnamed50();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed49(o.auditConfigs!);
    checkUnnamed50(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.Map<core.String, core.String> buildUnnamed51() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed51(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterServiceBinding = 0;
api.ServiceBinding buildServiceBinding() {
  final o = api.ServiceBinding();
  buildCounterServiceBinding++;
  if (buildCounterServiceBinding < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed51();
    o.name = 'foo';
    o.service = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterServiceBinding--;
  return o;
}

void checkServiceBinding(api.ServiceBinding o) {
  buildCounterServiceBinding++;
  if (buildCounterServiceBinding < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed51(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceBinding--;
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
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetIamPolicyRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed52() => {
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

void checkUnnamed52(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed53() => [
      buildUnnamed52(),
      buildUnnamed52(),
    ];

void checkUnnamed53(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed52(o[0]);
  checkUnnamed52(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed53();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed53(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed54() => [
      'foo',
      'foo',
    ];

void checkUnnamed54(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed55() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed55(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed56() => [
      'foo',
      'foo',
    ];

void checkUnnamed56(core.List<core.String> o) {
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

core.List<api.TcpRouteRouteRule> buildUnnamed57() => [
      buildTcpRouteRouteRule(),
      buildTcpRouteRouteRule(),
    ];

void checkUnnamed57(core.List<api.TcpRouteRouteRule> o) {
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
    o.gateways = buildUnnamed54();
    o.labels = buildUnnamed55();
    o.meshes = buildUnnamed56();
    o.name = 'foo';
    o.rules = buildUnnamed57();
    o.selfLink = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterTcpRoute--;
  return o;
}

void checkTcpRoute(api.TcpRoute o) {
  buildCounterTcpRoute++;
  if (buildCounterTcpRoute < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.gateways!);
    checkUnnamed55(o.labels!);
    checkUnnamed56(o.meshes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed57(o.rules!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTcpRoute--;
}

core.List<api.TcpRouteRouteDestination> buildUnnamed58() => [
      buildTcpRouteRouteDestination(),
      buildTcpRouteRouteDestination(),
    ];

void checkUnnamed58(core.List<api.TcpRouteRouteDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTcpRouteRouteDestination(o[0]);
  checkTcpRouteRouteDestination(o[1]);
}

core.int buildCounterTcpRouteRouteAction = 0;
api.TcpRouteRouteAction buildTcpRouteRouteAction() {
  final o = api.TcpRouteRouteAction();
  buildCounterTcpRouteRouteAction++;
  if (buildCounterTcpRouteRouteAction < 3) {
    o.destinations = buildUnnamed58();
    o.originalDestination = true;
  }
  buildCounterTcpRouteRouteAction--;
  return o;
}

void checkTcpRouteRouteAction(api.TcpRouteRouteAction o) {
  buildCounterTcpRouteRouteAction++;
  if (buildCounterTcpRouteRouteAction < 3) {
    checkUnnamed58(o.destinations!);
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
    unittest.expect(
      o.serviceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.weight!,
      unittest.equals(42),
    );
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
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals('foo'),
    );
  }
  buildCounterTcpRouteRouteMatch--;
}

core.List<api.TcpRouteRouteMatch> buildUnnamed59() => [
      buildTcpRouteRouteMatch(),
      buildTcpRouteRouteMatch(),
    ];

void checkUnnamed59(core.List<api.TcpRouteRouteMatch> o) {
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
    o.matches = buildUnnamed59();
  }
  buildCounterTcpRouteRouteRule--;
  return o;
}

void checkTcpRouteRouteRule(api.TcpRouteRouteRule o) {
  buildCounterTcpRouteRouteRule++;
  if (buildCounterTcpRouteRouteRule < 3) {
    checkTcpRouteRouteAction(o.action!);
    checkUnnamed59(o.matches!);
  }
  buildCounterTcpRouteRouteRule--;
}

core.List<core.String> buildUnnamed60() => [
      'foo',
      'foo',
    ];

void checkUnnamed60(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed60();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed60(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed61() => [
      'foo',
      'foo',
    ];

void checkUnnamed61(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed61();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed61(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed62() => [
      'foo',
      'foo',
    ];

void checkUnnamed62(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed63() => [
      'foo',
      'foo',
    ];

void checkUnnamed63(core.List<core.String> o) {
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

core.List<api.TlsRouteRouteRule> buildUnnamed64() => [
      buildTlsRouteRouteRule(),
      buildTlsRouteRouteRule(),
    ];

void checkUnnamed64(core.List<api.TlsRouteRouteRule> o) {
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
    o.gateways = buildUnnamed62();
    o.meshes = buildUnnamed63();
    o.name = 'foo';
    o.rules = buildUnnamed64();
    o.selfLink = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterTlsRoute--;
  return o;
}

void checkTlsRoute(api.TlsRoute o) {
  buildCounterTlsRoute++;
  if (buildCounterTlsRoute < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed62(o.gateways!);
    checkUnnamed63(o.meshes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed64(o.rules!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTlsRoute--;
}

core.List<api.TlsRouteRouteDestination> buildUnnamed65() => [
      buildTlsRouteRouteDestination(),
      buildTlsRouteRouteDestination(),
    ];

void checkUnnamed65(core.List<api.TlsRouteRouteDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTlsRouteRouteDestination(o[0]);
  checkTlsRouteRouteDestination(o[1]);
}

core.int buildCounterTlsRouteRouteAction = 0;
api.TlsRouteRouteAction buildTlsRouteRouteAction() {
  final o = api.TlsRouteRouteAction();
  buildCounterTlsRouteRouteAction++;
  if (buildCounterTlsRouteRouteAction < 3) {
    o.destinations = buildUnnamed65();
  }
  buildCounterTlsRouteRouteAction--;
  return o;
}

void checkTlsRouteRouteAction(api.TlsRouteRouteAction o) {
  buildCounterTlsRouteRouteAction++;
  if (buildCounterTlsRouteRouteAction < 3) {
    checkUnnamed65(o.destinations!);
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
    unittest.expect(
      o.serviceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.weight!,
      unittest.equals(42),
    );
  }
  buildCounterTlsRouteRouteDestination--;
}

core.List<core.String> buildUnnamed66() => [
      'foo',
      'foo',
    ];

void checkUnnamed66(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed67() => [
      'foo',
      'foo',
    ];

void checkUnnamed67(core.List<core.String> o) {
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

core.int buildCounterTlsRouteRouteMatch = 0;
api.TlsRouteRouteMatch buildTlsRouteRouteMatch() {
  final o = api.TlsRouteRouteMatch();
  buildCounterTlsRouteRouteMatch++;
  if (buildCounterTlsRouteRouteMatch < 3) {
    o.alpn = buildUnnamed66();
    o.sniHost = buildUnnamed67();
  }
  buildCounterTlsRouteRouteMatch--;
  return o;
}

void checkTlsRouteRouteMatch(api.TlsRouteRouteMatch o) {
  buildCounterTlsRouteRouteMatch++;
  if (buildCounterTlsRouteRouteMatch < 3) {
    checkUnnamed66(o.alpn!);
    checkUnnamed67(o.sniHost!);
  }
  buildCounterTlsRouteRouteMatch--;
}

core.List<api.TlsRouteRouteMatch> buildUnnamed68() => [
      buildTlsRouteRouteMatch(),
      buildTlsRouteRouteMatch(),
    ];

void checkUnnamed68(core.List<api.TlsRouteRouteMatch> o) {
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
    o.matches = buildUnnamed68();
  }
  buildCounterTlsRouteRouteRule--;
  return o;
}

void checkTlsRouteRouteRule(api.TlsRouteRouteRule o) {
  buildCounterTlsRouteRouteRule++;
  if (buildCounterTlsRouteRouteRule < 3) {
    checkTlsRouteRouteAction(o.action!);
    checkUnnamed68(o.matches!);
  }
  buildCounterTlsRouteRouteRule--;
}

core.List<core.String> buildUnnamed69() => [
      'foo',
      'foo',
    ];

void checkUnnamed69(core.List<core.String> o) {
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

core.int buildCounterTrafficPortSelector = 0;
api.TrafficPortSelector buildTrafficPortSelector() {
  final o = api.TrafficPortSelector();
  buildCounterTrafficPortSelector++;
  if (buildCounterTrafficPortSelector < 3) {
    o.ports = buildUnnamed69();
  }
  buildCounterTrafficPortSelector--;
  return o;
}

void checkTrafficPortSelector(api.TrafficPortSelector o) {
  buildCounterTrafficPortSelector++;
  if (buildCounterTrafficPortSelector < 3) {
    checkUnnamed69(o.ports!);
  }
  buildCounterTrafficPortSelector--;
}

void main() {
  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-EndpointMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpointMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndpointMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEndpointMatcher(od);
    });
  });

  unittest.group('obj-schema-EndpointMatcherMetadataLabelMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpointMatcherMetadataLabelMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndpointMatcherMetadataLabelMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEndpointMatcherMetadataLabelMatcher(od);
    });
  });

  unittest.group('obj-schema-EndpointMatcherMetadataLabelMatcherMetadataLabels',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpointMatcherMetadataLabelMatcherMetadataLabels();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndpointMatcherMetadataLabelMatcherMetadataLabels.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEndpointMatcherMetadataLabelMatcherMetadataLabels(od);
    });
  });

  unittest.group('obj-schema-EndpointPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpointPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndpointPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEndpointPolicy(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-Gateway', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGateway();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Gateway.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGateway(od);
    });
  });

  unittest.group('obj-schema-GrpcRoute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRoute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GrpcRoute.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGrpcRoute(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrpcRouteDestination(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteFaultInjectionPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteFaultInjectionPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteFaultInjectionPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrpcRouteFaultInjectionPolicy(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteFaultInjectionPolicyAbort', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteFaultInjectionPolicyAbort();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteFaultInjectionPolicyAbort.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrpcRouteFaultInjectionPolicyAbort(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteFaultInjectionPolicyDelay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteFaultInjectionPolicyDelay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteFaultInjectionPolicyDelay.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrpcRouteFaultInjectionPolicyDelay(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteHeaderMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteHeaderMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteHeaderMatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrpcRouteHeaderMatch(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteMethodMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteMethodMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteMethodMatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrpcRouteMethodMatch(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteRetryPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteRetryPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteRetryPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrpcRouteRetryPolicy(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteRouteAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteRouteAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteRouteAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrpcRouteRouteAction(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteRouteMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteRouteMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteRouteMatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrpcRouteRouteMatch(od);
    });
  });

  unittest.group('obj-schema-GrpcRouteRouteRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrpcRouteRouteRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrpcRouteRouteRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrpcRouteRouteRule(od);
    });
  });

  unittest.group('obj-schema-HttpRoute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRoute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HttpRoute.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttpRoute(od);
    });
  });

  unittest.group('obj-schema-HttpRouteCorsPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteCorsPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteCorsPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteCorsPolicy(od);
    });
  });

  unittest.group('obj-schema-HttpRouteDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteDestination(od);
    });
  });

  unittest.group('obj-schema-HttpRouteFaultInjectionPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteFaultInjectionPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteFaultInjectionPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteFaultInjectionPolicy(od);
    });
  });

  unittest.group('obj-schema-HttpRouteFaultInjectionPolicyAbort', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteFaultInjectionPolicyAbort();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteFaultInjectionPolicyAbort.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteFaultInjectionPolicyAbort(od);
    });
  });

  unittest.group('obj-schema-HttpRouteFaultInjectionPolicyDelay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteFaultInjectionPolicyDelay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteFaultInjectionPolicyDelay.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteFaultInjectionPolicyDelay(od);
    });
  });

  unittest.group('obj-schema-HttpRouteHeaderMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteHeaderMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteHeaderMatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteHeaderMatch(od);
    });
  });

  unittest.group('obj-schema-HttpRouteHeaderMatchIntegerRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteHeaderMatchIntegerRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteHeaderMatchIntegerRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteHeaderMatchIntegerRange(od);
    });
  });

  unittest.group('obj-schema-HttpRouteHeaderModifier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteHeaderModifier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteHeaderModifier.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteHeaderModifier(od);
    });
  });

  unittest.group('obj-schema-HttpRouteQueryParameterMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteQueryParameterMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteQueryParameterMatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteQueryParameterMatch(od);
    });
  });

  unittest.group('obj-schema-HttpRouteRedirect', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteRedirect();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteRedirect.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteRedirect(od);
    });
  });

  unittest.group('obj-schema-HttpRouteRequestMirrorPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteRequestMirrorPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteRequestMirrorPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteRequestMirrorPolicy(od);
    });
  });

  unittest.group('obj-schema-HttpRouteRetryPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteRetryPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteRetryPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteRetryPolicy(od);
    });
  });

  unittest.group('obj-schema-HttpRouteRouteAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteRouteAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteRouteAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteRouteAction(od);
    });
  });

  unittest.group('obj-schema-HttpRouteRouteMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteRouteMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteRouteMatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteRouteMatch(od);
    });
  });

  unittest.group('obj-schema-HttpRouteRouteRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteRouteRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteRouteRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteRouteRule(od);
    });
  });

  unittest.group('obj-schema-HttpRouteURLRewrite', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRouteURLRewrite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRouteURLRewrite.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRouteURLRewrite(od);
    });
  });

  unittest.group('obj-schema-ListEndpointPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEndpointPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEndpointPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEndpointPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGatewaysResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGatewaysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGatewaysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGatewaysResponse(od);
    });
  });

  unittest.group('obj-schema-ListGrpcRoutesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGrpcRoutesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGrpcRoutesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGrpcRoutesResponse(od);
    });
  });

  unittest.group('obj-schema-ListHttpRoutesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListHttpRoutesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListHttpRoutesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListHttpRoutesResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMeshesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMeshesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMeshesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMeshesResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListServiceBindingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServiceBindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServiceBindingsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListServiceBindingsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTcpRoutesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTcpRoutesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTcpRoutesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTcpRoutesResponse(od);
    });
  });

  unittest.group('obj-schema-ListTlsRoutesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTlsRoutesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTlsRoutesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTlsRoutesResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-Mesh', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMesh();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Mesh.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMesh(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-ServiceBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceBinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceBinding(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TcpRoute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTcpRoute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TcpRoute.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTcpRoute(od);
    });
  });

  unittest.group('obj-schema-TcpRouteRouteAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTcpRouteRouteAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TcpRouteRouteAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTcpRouteRouteAction(od);
    });
  });

  unittest.group('obj-schema-TcpRouteRouteDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTcpRouteRouteDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TcpRouteRouteDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTcpRouteRouteDestination(od);
    });
  });

  unittest.group('obj-schema-TcpRouteRouteMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTcpRouteRouteMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TcpRouteRouteMatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTcpRouteRouteMatch(od);
    });
  });

  unittest.group('obj-schema-TcpRouteRouteRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTcpRouteRouteRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TcpRouteRouteRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTcpRouteRouteRule(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-TlsRoute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTlsRoute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TlsRoute.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTlsRoute(od);
    });
  });

  unittest.group('obj-schema-TlsRouteRouteAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTlsRouteRouteAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TlsRouteRouteAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTlsRouteRouteAction(od);
    });
  });

  unittest.group('obj-schema-TlsRouteRouteDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTlsRouteRouteDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TlsRouteRouteDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTlsRouteRouteDestination(od);
    });
  });

  unittest.group('obj-schema-TlsRouteRouteMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTlsRouteRouteMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TlsRouteRouteMatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTlsRouteRouteMatch(od);
    });
  });

  unittest.group('obj-schema-TlsRouteRouteRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTlsRouteRouteRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TlsRouteRouteRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTlsRouteRouteRule(od);
    });
  });

  unittest.group('obj-schema-TrafficPortSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrafficPortSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrafficPortSelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTrafficPortSelector(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
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
          unittest.equals('v1/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsEdgeCacheKeysetsResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.edgeCacheKeysets;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          unittest.equals('v1/'),
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.edgeCacheKeysets;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.edgeCacheKeysets;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsEdgeCacheOriginsResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.edgeCacheOrigins;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          unittest.equals('v1/'),
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.edgeCacheOrigins;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.edgeCacheOrigins;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsEdgeCacheServicesResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.edgeCacheServices;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          unittest.equals('v1/'),
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.edgeCacheServices;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.edgeCacheServices;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EndpointPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEndpointPolicy(obj);

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
          unittest.equals('v1/'),
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
          queryMap['endpointPolicyId']!.first,
          unittest.equals(arg_endpointPolicyId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          endpointPolicyId: arg_endpointPolicyId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.endpointPolicies;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.endpointPolicies;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildEndpointPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEndpointPolicy(response as api.EndpointPolicy);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.endpointPolicies;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          unittest.equals('v1/'),
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.endpointPolicies;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildListEndpointPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListEndpointPoliciesResponse(
          response as api.ListEndpointPoliciesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.endpointPolicies;
      final arg_request = buildEndpointPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EndpointPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEndpointPolicy(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.endpointPolicies;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.endpointPolicies;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Gateway.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGateway(obj);

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
          unittest.equals('v1/'),
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
          queryMap['gatewayId']!.first,
          unittest.equals(arg_gatewayId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          gatewayId: arg_gatewayId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.gateways;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.gateways;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildGateway());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGateway(response as api.Gateway);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.gateways;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          unittest.equals('v1/'),
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.gateways;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildListGatewaysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGatewaysResponse(response as api.ListGatewaysResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.gateways;
      final arg_request = buildGateway();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Gateway.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGateway(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.gateways;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.gateways;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GrpcRoute.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGrpcRoute(obj);

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
          unittest.equals('v1/'),
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
          queryMap['grpcRouteId']!.first,
          unittest.equals(arg_grpcRouteId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          grpcRouteId: arg_grpcRouteId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.grpcRoutes;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.grpcRoutes;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildGrpcRoute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGrpcRoute(response as api.GrpcRoute);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.grpcRoutes;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildListGrpcRoutesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGrpcRoutesResponse(response as api.ListGrpcRoutesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.grpcRoutes;
      final arg_request = buildGrpcRoute();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GrpcRoute.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGrpcRoute(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.HttpRoute.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHttpRoute(obj);

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
          unittest.equals('v1/'),
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
          queryMap['httpRouteId']!.first,
          unittest.equals(arg_httpRouteId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          httpRouteId: arg_httpRouteId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.httpRoutes;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.httpRoutes;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildHttpRoute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkHttpRoute(response as api.HttpRoute);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.httpRoutes;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildListHttpRoutesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListHttpRoutesResponse(response as api.ListHttpRoutesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.httpRoutes;
      final arg_request = buildHttpRoute();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.HttpRoute.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHttpRoute(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Mesh.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMesh(obj);

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
          unittest.equals('v1/'),
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
          queryMap['meshId']!.first,
          unittest.equals(arg_meshId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          meshId: arg_meshId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.meshes;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.meshes;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildMesh());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMesh(response as api.Mesh);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.meshes;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          unittest.equals('v1/'),
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.meshes;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildListMeshesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListMeshesResponse(response as api.ListMeshesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.meshes;
      final arg_request = buildMesh();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Mesh.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMesh(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.meshes;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.meshes;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.operations;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.operations;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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
          unittest.equals('v1/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ServiceBinding.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceBinding(obj);

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
          unittest.equals('v1/'),
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
          queryMap['serviceBindingId']!.first,
          unittest.equals(arg_serviceBindingId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          serviceBindingId: arg_serviceBindingId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceBindings;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceBindings;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildServiceBinding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkServiceBinding(response as api.ServiceBinding);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceBindings;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          unittest.equals('v1/'),
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceBindings;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildListServiceBindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListServiceBindingsResponse(
          response as api.ListServiceBindingsResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceBindings;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkServicesApi(mock).projects.locations.serviceBindings;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.TcpRoute.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTcpRoute(obj);

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
          unittest.equals('v1/'),
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
          queryMap['tcpRouteId']!.first,
          unittest.equals(arg_tcpRouteId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          tcpRouteId: arg_tcpRouteId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tcpRoutes;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tcpRoutes;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildTcpRoute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTcpRoute(response as api.TcpRoute);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tcpRoutes;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildListTcpRoutesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTcpRoutesResponse(response as api.ListTcpRoutesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tcpRoutes;
      final arg_request = buildTcpRoute();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.TcpRoute.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTcpRoute(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.TlsRoute.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTlsRoute(obj);

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
          unittest.equals('v1/'),
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
          queryMap['tlsRouteId']!.first,
          unittest.equals(arg_tlsRouteId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          tlsRouteId: arg_tlsRouteId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tlsRoutes;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tlsRoutes;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildTlsRoute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTlsRoute(response as api.TlsRoute);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tlsRoutes;
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildListTlsRoutesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTlsRoutesResponse(response as api.ListTlsRoutesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkServicesApi(mock).projects.locations.tlsRoutes;
      final arg_request = buildTlsRoute();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.TlsRoute.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTlsRoute(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
