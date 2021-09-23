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

import 'package:googleapis/networkmanagement/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAbortInfo = 0;
api.AbortInfo buildAbortInfo() {
  final o = api.AbortInfo();
  buildCounterAbortInfo++;
  if (buildCounterAbortInfo < 3) {
    o.cause = 'foo';
    o.resourceUri = 'foo';
  }
  buildCounterAbortInfo--;
  return o;
}

void checkAbortInfo(api.AbortInfo o) {
  buildCounterAbortInfo++;
  if (buildCounterAbortInfo < 3) {
    unittest.expect(
      o.cause!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAbortInfo--;
}

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

core.int buildCounterCloudSQLInstanceInfo = 0;
api.CloudSQLInstanceInfo buildCloudSQLInstanceInfo() {
  final o = api.CloudSQLInstanceInfo();
  buildCounterCloudSQLInstanceInfo++;
  if (buildCounterCloudSQLInstanceInfo < 3) {
    o.displayName = 'foo';
    o.externalIp = 'foo';
    o.internalIp = 'foo';
    o.networkUri = 'foo';
    o.region = 'foo';
    o.uri = 'foo';
  }
  buildCounterCloudSQLInstanceInfo--;
  return o;
}

void checkCloudSQLInstanceInfo(api.CloudSQLInstanceInfo o) {
  buildCounterCloudSQLInstanceInfo++;
  if (buildCounterCloudSQLInstanceInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudSQLInstanceInfo--;
}

core.Map<core.String, core.String> buildUnnamed3() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed3(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterConnectivityTest = 0;
api.ConnectivityTest buildConnectivityTest() {
  final o = api.ConnectivityTest();
  buildCounterConnectivityTest++;
  if (buildCounterConnectivityTest < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.destination = buildEndpoint();
    o.displayName = 'foo';
    o.labels = buildUnnamed3();
    o.name = 'foo';
    o.protocol = 'foo';
    o.reachabilityDetails = buildReachabilityDetails();
    o.relatedProjects = buildUnnamed4();
    o.source = buildEndpoint();
    o.updateTime = 'foo';
  }
  buildCounterConnectivityTest--;
  return o;
}

void checkConnectivityTest(api.ConnectivityTest o) {
  buildCounterConnectivityTest++;
  if (buildCounterConnectivityTest < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkEndpoint(o.destination!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
    checkReachabilityDetails(o.reachabilityDetails!);
    checkUnnamed4(o.relatedProjects!);
    checkEndpoint(o.source!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectivityTest--;
}

core.int buildCounterDeliverInfo = 0;
api.DeliverInfo buildDeliverInfo() {
  final o = api.DeliverInfo();
  buildCounterDeliverInfo++;
  if (buildCounterDeliverInfo < 3) {
    o.resourceUri = 'foo';
    o.target = 'foo';
  }
  buildCounterDeliverInfo--;
  return o;
}

void checkDeliverInfo(api.DeliverInfo o) {
  buildCounterDeliverInfo++;
  if (buildCounterDeliverInfo < 3) {
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeliverInfo--;
}

core.int buildCounterDropInfo = 0;
api.DropInfo buildDropInfo() {
  final o = api.DropInfo();
  buildCounterDropInfo++;
  if (buildCounterDropInfo < 3) {
    o.cause = 'foo';
    o.resourceUri = 'foo';
  }
  buildCounterDropInfo--;
  return o;
}

void checkDropInfo(api.DropInfo o) {
  buildCounterDropInfo++;
  if (buildCounterDropInfo < 3) {
    unittest.expect(
      o.cause!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterDropInfo--;
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

core.int buildCounterEndpoint = 0;
api.Endpoint buildEndpoint() {
  final o = api.Endpoint();
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    o.cloudSqlInstance = 'foo';
    o.gkeMasterCluster = 'foo';
    o.instance = 'foo';
    o.ipAddress = 'foo';
    o.network = 'foo';
    o.networkType = 'foo';
    o.port = 42;
    o.projectId = 'foo';
  }
  buildCounterEndpoint--;
  return o;
}

void checkEndpoint(api.Endpoint o) {
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    unittest.expect(
      o.cloudSqlInstance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gkeMasterCluster!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEndpoint--;
}

core.int buildCounterEndpointInfo = 0;
api.EndpointInfo buildEndpointInfo() {
  final o = api.EndpointInfo();
  buildCounterEndpointInfo++;
  if (buildCounterEndpointInfo < 3) {
    o.destinationIp = 'foo';
    o.destinationNetworkUri = 'foo';
    o.destinationPort = 42;
    o.protocol = 'foo';
    o.sourceIp = 'foo';
    o.sourceNetworkUri = 'foo';
    o.sourcePort = 42;
  }
  buildCounterEndpointInfo--;
  return o;
}

void checkEndpointInfo(api.EndpointInfo o) {
  buildCounterEndpointInfo++;
  if (buildCounterEndpointInfo < 3) {
    unittest.expect(
      o.destinationIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destinationNetworkUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destinationPort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceNetworkUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourcePort!,
      unittest.equals(42),
    );
  }
  buildCounterEndpointInfo--;
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

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterFirewallInfo = 0;
api.FirewallInfo buildFirewallInfo() {
  final o = api.FirewallInfo();
  buildCounterFirewallInfo++;
  if (buildCounterFirewallInfo < 3) {
    o.action = 'foo';
    o.direction = 'foo';
    o.displayName = 'foo';
    o.firewallRuleType = 'foo';
    o.networkUri = 'foo';
    o.policy = 'foo';
    o.priority = 42;
    o.targetServiceAccounts = buildUnnamed5();
    o.targetTags = buildUnnamed6();
    o.uri = 'foo';
  }
  buildCounterFirewallInfo--;
  return o;
}

void checkFirewallInfo(api.FirewallInfo o) {
  buildCounterFirewallInfo++;
  if (buildCounterFirewallInfo < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.direction!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firewallRuleType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.priority!,
      unittest.equals(42),
    );
    checkUnnamed5(o.targetServiceAccounts!);
    checkUnnamed6(o.targetTags!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterFirewallInfo--;
}

core.int buildCounterForwardInfo = 0;
api.ForwardInfo buildForwardInfo() {
  final o = api.ForwardInfo();
  buildCounterForwardInfo++;
  if (buildCounterForwardInfo < 3) {
    o.resourceUri = 'foo';
    o.target = 'foo';
  }
  buildCounterForwardInfo--;
  return o;
}

void checkForwardInfo(api.ForwardInfo o) {
  buildCounterForwardInfo++;
  if (buildCounterForwardInfo < 3) {
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
  }
  buildCounterForwardInfo--;
}

core.int buildCounterForwardingRuleInfo = 0;
api.ForwardingRuleInfo buildForwardingRuleInfo() {
  final o = api.ForwardingRuleInfo();
  buildCounterForwardingRuleInfo++;
  if (buildCounterForwardingRuleInfo < 3) {
    o.displayName = 'foo';
    o.matchedPortRange = 'foo';
    o.matchedProtocol = 'foo';
    o.networkUri = 'foo';
    o.target = 'foo';
    o.uri = 'foo';
    o.vip = 'foo';
  }
  buildCounterForwardingRuleInfo--;
  return o;
}

void checkForwardingRuleInfo(api.ForwardingRuleInfo o) {
  buildCounterForwardingRuleInfo++;
  if (buildCounterForwardingRuleInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.matchedPortRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.matchedProtocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vip!,
      unittest.equals('foo'),
    );
  }
  buildCounterForwardingRuleInfo--;
}

core.int buildCounterGKEMasterInfo = 0;
api.GKEMasterInfo buildGKEMasterInfo() {
  final o = api.GKEMasterInfo();
  buildCounterGKEMasterInfo++;
  if (buildCounterGKEMasterInfo < 3) {
    o.clusterNetworkUri = 'foo';
    o.clusterUri = 'foo';
    o.externalIp = 'foo';
    o.internalIp = 'foo';
  }
  buildCounterGKEMasterInfo--;
  return o;
}

void checkGKEMasterInfo(api.GKEMasterInfo o) {
  buildCounterGKEMasterInfo++;
  if (buildCounterGKEMasterInfo < 3) {
    unittest.expect(
      o.clusterNetworkUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterGKEMasterInfo--;
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

core.int buildCounterInstanceInfo = 0;
api.InstanceInfo buildInstanceInfo() {
  final o = api.InstanceInfo();
  buildCounterInstanceInfo++;
  if (buildCounterInstanceInfo < 3) {
    o.displayName = 'foo';
    o.externalIp = 'foo';
    o.interface = 'foo';
    o.internalIp = 'foo';
    o.networkTags = buildUnnamed7();
    o.networkUri = 'foo';
    o.serviceAccount = 'foo';
    o.uri = 'foo';
  }
  buildCounterInstanceInfo--;
  return o;
}

void checkInstanceInfo(api.InstanceInfo o) {
  buildCounterInstanceInfo++;
  if (buildCounterInstanceInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.interface!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalIp!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.networkTags!);
    unittest.expect(
      o.networkUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstanceInfo--;
}

core.List<api.ConnectivityTest> buildUnnamed8() => [
      buildConnectivityTest(),
      buildConnectivityTest(),
    ];

void checkUnnamed8(core.List<api.ConnectivityTest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectivityTest(o[0]);
  checkConnectivityTest(o[1]);
}

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.int buildCounterListConnectivityTestsResponse = 0;
api.ListConnectivityTestsResponse buildListConnectivityTestsResponse() {
  final o = api.ListConnectivityTestsResponse();
  buildCounterListConnectivityTestsResponse++;
  if (buildCounterListConnectivityTestsResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed8();
    o.unreachable = buildUnnamed9();
  }
  buildCounterListConnectivityTestsResponse--;
  return o;
}

void checkListConnectivityTestsResponse(api.ListConnectivityTestsResponse o) {
  buildCounterListConnectivityTestsResponse++;
  if (buildCounterListConnectivityTestsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.resources!);
    checkUnnamed9(o.unreachable!);
  }
  buildCounterListConnectivityTestsResponse--;
}

core.List<api.Location> buildUnnamed10() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed10(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed10(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed11() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed11(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed11();
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
    checkUnnamed11(o.operations!);
  }
  buildCounterListOperationsResponse--;
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

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.int buildCounterLoadBalancerBackend = 0;
api.LoadBalancerBackend buildLoadBalancerBackend() {
  final o = api.LoadBalancerBackend();
  buildCounterLoadBalancerBackend++;
  if (buildCounterLoadBalancerBackend < 3) {
    o.displayName = 'foo';
    o.healthCheckAllowingFirewallRules = buildUnnamed12();
    o.healthCheckBlockingFirewallRules = buildUnnamed13();
    o.healthCheckFirewallState = 'foo';
    o.uri = 'foo';
  }
  buildCounterLoadBalancerBackend--;
  return o;
}

void checkLoadBalancerBackend(api.LoadBalancerBackend o) {
  buildCounterLoadBalancerBackend++;
  if (buildCounterLoadBalancerBackend < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.healthCheckAllowingFirewallRules!);
    checkUnnamed13(o.healthCheckBlockingFirewallRules!);
    unittest.expect(
      o.healthCheckFirewallState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterLoadBalancerBackend--;
}

core.List<api.LoadBalancerBackend> buildUnnamed14() => [
      buildLoadBalancerBackend(),
      buildLoadBalancerBackend(),
    ];

void checkUnnamed14(core.List<api.LoadBalancerBackend> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoadBalancerBackend(o[0]);
  checkLoadBalancerBackend(o[1]);
}

core.int buildCounterLoadBalancerInfo = 0;
api.LoadBalancerInfo buildLoadBalancerInfo() {
  final o = api.LoadBalancerInfo();
  buildCounterLoadBalancerInfo++;
  if (buildCounterLoadBalancerInfo < 3) {
    o.backendType = 'foo';
    o.backendUri = 'foo';
    o.backends = buildUnnamed14();
    o.healthCheckUri = 'foo';
    o.loadBalancerType = 'foo';
  }
  buildCounterLoadBalancerInfo--;
  return o;
}

void checkLoadBalancerInfo(api.LoadBalancerInfo o) {
  buildCounterLoadBalancerInfo++;
  if (buildCounterLoadBalancerInfo < 3) {
    unittest.expect(
      o.backendType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.backendUri!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.backends!);
    unittest.expect(
      o.healthCheckUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.loadBalancerType!,
      unittest.equals('foo'),
    );
  }
  buildCounterLoadBalancerInfo--;
}

core.Map<core.String, core.String> buildUnnamed15() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed15(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed15();
    o.locationId = 'foo';
    o.metadata = buildUnnamed16();
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
    checkUnnamed15(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterNetworkInfo = 0;
api.NetworkInfo buildNetworkInfo() {
  final o = api.NetworkInfo();
  buildCounterNetworkInfo++;
  if (buildCounterNetworkInfo < 3) {
    o.displayName = 'foo';
    o.matchedIpRange = 'foo';
    o.uri = 'foo';
  }
  buildCounterNetworkInfo--;
  return o;
}

void checkNetworkInfo(api.NetworkInfo o) {
  buildCounterNetworkInfo++;
  if (buildCounterNetworkInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.matchedIpRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkInfo--;
}

core.Map<core.String, core.Object> buildUnnamed17() => {
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

void checkUnnamed17(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed18() => {
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

void checkUnnamed18(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed17();
    o.name = 'foo';
    o.response = buildUnnamed18();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed17(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationMetadata = 0;
api.OperationMetadata buildOperationMetadata() {
  final o = api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.apiVersion = 'foo';
    o.cancelRequested = true;
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.statusDetail = 'foo';
    o.target = 'foo';
    o.verb = 'foo';
  }
  buildCounterOperationMetadata--;
  return o;
}

void checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.cancelRequested!, unittest.isTrue);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusDetail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verb!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationMetadata--;
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

core.List<api.Binding> buildUnnamed20() => [
      buildBinding(),
      buildBinding(),
    ];

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

core.List<api.Trace> buildUnnamed21() => [
      buildTrace(),
      buildTrace(),
    ];

void checkUnnamed21(core.List<api.Trace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrace(o[0]);
  checkTrace(o[1]);
}

core.int buildCounterReachabilityDetails = 0;
api.ReachabilityDetails buildReachabilityDetails() {
  final o = api.ReachabilityDetails();
  buildCounterReachabilityDetails++;
  if (buildCounterReachabilityDetails < 3) {
    o.error = buildStatus();
    o.result = 'foo';
    o.traces = buildUnnamed21();
    o.verifyTime = 'foo';
  }
  buildCounterReachabilityDetails--;
  return o;
}

void checkReachabilityDetails(api.ReachabilityDetails o) {
  buildCounterReachabilityDetails++;
  if (buildCounterReachabilityDetails < 3) {
    checkStatus(o.error!);
    unittest.expect(
      o.result!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.traces!);
    unittest.expect(
      o.verifyTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterReachabilityDetails--;
}

core.int buildCounterRerunConnectivityTestRequest = 0;
api.RerunConnectivityTestRequest buildRerunConnectivityTestRequest() {
  final o = api.RerunConnectivityTestRequest();
  buildCounterRerunConnectivityTestRequest++;
  if (buildCounterRerunConnectivityTestRequest < 3) {}
  buildCounterRerunConnectivityTestRequest--;
  return o;
}

void checkRerunConnectivityTestRequest(api.RerunConnectivityTestRequest o) {
  buildCounterRerunConnectivityTestRequest++;
  if (buildCounterRerunConnectivityTestRequest < 3) {}
  buildCounterRerunConnectivityTestRequest--;
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

core.int buildCounterRouteInfo = 0;
api.RouteInfo buildRouteInfo() {
  final o = api.RouteInfo();
  buildCounterRouteInfo++;
  if (buildCounterRouteInfo < 3) {
    o.destIpRange = 'foo';
    o.displayName = 'foo';
    o.instanceTags = buildUnnamed22();
    o.networkUri = 'foo';
    o.nextHop = 'foo';
    o.nextHopType = 'foo';
    o.priority = 42;
    o.routeType = 'foo';
    o.uri = 'foo';
  }
  buildCounterRouteInfo--;
  return o;
}

void checkRouteInfo(api.RouteInfo o) {
  buildCounterRouteInfo++;
  if (buildCounterRouteInfo < 3) {
    unittest.expect(
      o.destIpRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.instanceTags!);
    unittest.expect(
      o.networkUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextHop!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextHopType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.priority!,
      unittest.equals(42),
    );
    unittest.expect(
      o.routeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterRouteInfo--;
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

core.Map<core.String, core.Object> buildUnnamed23() => {
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

void checkUnnamed23(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed24() => [
      buildUnnamed23(),
      buildUnnamed23(),
    ];

void checkUnnamed24(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed23(o[0]);
  checkUnnamed23(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed24();
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
    checkUnnamed24(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStep = 0;
api.Step buildStep() {
  final o = api.Step();
  buildCounterStep++;
  if (buildCounterStep < 3) {
    o.abort = buildAbortInfo();
    o.causesDrop = true;
    o.cloudSqlInstance = buildCloudSQLInstanceInfo();
    o.deliver = buildDeliverInfo();
    o.description = 'foo';
    o.drop = buildDropInfo();
    o.endpoint = buildEndpointInfo();
    o.firewall = buildFirewallInfo();
    o.forward = buildForwardInfo();
    o.forwardingRule = buildForwardingRuleInfo();
    o.gkeMaster = buildGKEMasterInfo();
    o.instance = buildInstanceInfo();
    o.loadBalancer = buildLoadBalancerInfo();
    o.network = buildNetworkInfo();
    o.projectId = 'foo';
    o.route = buildRouteInfo();
    o.state = 'foo';
    o.vpnGateway = buildVpnGatewayInfo();
    o.vpnTunnel = buildVpnTunnelInfo();
  }
  buildCounterStep--;
  return o;
}

void checkStep(api.Step o) {
  buildCounterStep++;
  if (buildCounterStep < 3) {
    checkAbortInfo(o.abort!);
    unittest.expect(o.causesDrop!, unittest.isTrue);
    checkCloudSQLInstanceInfo(o.cloudSqlInstance!);
    checkDeliverInfo(o.deliver!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkDropInfo(o.drop!);
    checkEndpointInfo(o.endpoint!);
    checkFirewallInfo(o.firewall!);
    checkForwardInfo(o.forward!);
    checkForwardingRuleInfo(o.forwardingRule!);
    checkGKEMasterInfo(o.gkeMaster!);
    checkInstanceInfo(o.instance!);
    checkLoadBalancerInfo(o.loadBalancer!);
    checkNetworkInfo(o.network!);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkRouteInfo(o.route!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkVpnGatewayInfo(o.vpnGateway!);
    checkVpnTunnelInfo(o.vpnTunnel!);
  }
  buildCounterStep--;
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

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed25();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed25(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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
    o.permissions = buildUnnamed26();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed26(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<api.Step> buildUnnamed27() => [
      buildStep(),
      buildStep(),
    ];

void checkUnnamed27(core.List<api.Step> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStep(o[0]);
  checkStep(o[1]);
}

core.int buildCounterTrace = 0;
api.Trace buildTrace() {
  final o = api.Trace();
  buildCounterTrace++;
  if (buildCounterTrace < 3) {
    o.endpointInfo = buildEndpointInfo();
    o.steps = buildUnnamed27();
  }
  buildCounterTrace--;
  return o;
}

void checkTrace(api.Trace o) {
  buildCounterTrace++;
  if (buildCounterTrace < 3) {
    checkEndpointInfo(o.endpointInfo!);
    checkUnnamed27(o.steps!);
  }
  buildCounterTrace--;
}

core.int buildCounterVpnGatewayInfo = 0;
api.VpnGatewayInfo buildVpnGatewayInfo() {
  final o = api.VpnGatewayInfo();
  buildCounterVpnGatewayInfo++;
  if (buildCounterVpnGatewayInfo < 3) {
    o.displayName = 'foo';
    o.ipAddress = 'foo';
    o.networkUri = 'foo';
    o.region = 'foo';
    o.uri = 'foo';
    o.vpnTunnelUri = 'foo';
  }
  buildCounterVpnGatewayInfo--;
  return o;
}

void checkVpnGatewayInfo(api.VpnGatewayInfo o) {
  buildCounterVpnGatewayInfo++;
  if (buildCounterVpnGatewayInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vpnTunnelUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterVpnGatewayInfo--;
}

core.int buildCounterVpnTunnelInfo = 0;
api.VpnTunnelInfo buildVpnTunnelInfo() {
  final o = api.VpnTunnelInfo();
  buildCounterVpnTunnelInfo++;
  if (buildCounterVpnTunnelInfo < 3) {
    o.displayName = 'foo';
    o.networkUri = 'foo';
    o.region = 'foo';
    o.remoteGateway = 'foo';
    o.remoteGatewayIp = 'foo';
    o.routingType = 'foo';
    o.sourceGateway = 'foo';
    o.sourceGatewayIp = 'foo';
    o.uri = 'foo';
  }
  buildCounterVpnTunnelInfo--;
  return o;
}

void checkVpnTunnelInfo(api.VpnTunnelInfo o) {
  buildCounterVpnTunnelInfo++;
  if (buildCounterVpnTunnelInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remoteGateway!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remoteGatewayIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.routingType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceGateway!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceGatewayIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterVpnTunnelInfo--;
}

void main() {
  unittest.group('obj-schema-AbortInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAbortInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AbortInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAbortInfo(od);
    });
  });

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

  unittest.group('obj-schema-CloudSQLInstanceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudSQLInstanceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudSQLInstanceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudSQLInstanceInfo(od);
    });
  });

  unittest.group('obj-schema-ConnectivityTest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectivityTest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectivityTest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectivityTest(od);
    });
  });

  unittest.group('obj-schema-DeliverInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeliverInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeliverInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeliverInfo(od);
    });
  });

  unittest.group('obj-schema-DropInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDropInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DropInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDropInfo(od);
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

  unittest.group('obj-schema-Endpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Endpoint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEndpoint(od);
    });
  });

  unittest.group('obj-schema-EndpointInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpointInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndpointInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEndpointInfo(od);
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

  unittest.group('obj-schema-FirewallInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFirewallInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FirewallInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFirewallInfo(od);
    });
  });

  unittest.group('obj-schema-ForwardInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildForwardInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ForwardInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkForwardInfo(od);
    });
  });

  unittest.group('obj-schema-ForwardingRuleInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildForwardingRuleInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ForwardingRuleInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkForwardingRuleInfo(od);
    });
  });

  unittest.group('obj-schema-GKEMasterInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGKEMasterInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GKEMasterInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGKEMasterInfo(od);
    });
  });

  unittest.group('obj-schema-InstanceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceInfo(od);
    });
  });

  unittest.group('obj-schema-ListConnectivityTestsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectivityTestsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectivityTestsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConnectivityTestsResponse(od);
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

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-LoadBalancerBackend', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoadBalancerBackend();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoadBalancerBackend.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoadBalancerBackend(od);
    });
  });

  unittest.group('obj-schema-LoadBalancerInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoadBalancerInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoadBalancerInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoadBalancerInfo(od);
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

  unittest.group('obj-schema-NetworkInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkInfo(od);
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

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationMetadata(od);
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

  unittest.group('obj-schema-ReachabilityDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReachabilityDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReachabilityDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReachabilityDetails(od);
    });
  });

  unittest.group('obj-schema-RerunConnectivityTestRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRerunConnectivityTestRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RerunConnectivityTestRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRerunConnectivityTestRequest(od);
    });
  });

  unittest.group('obj-schema-RouteInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRouteInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RouteInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRouteInfo(od);
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

  unittest.group('obj-schema-Step', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Step.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStep(od);
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

  unittest.group('obj-schema-Trace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Trace.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTrace(od);
    });
  });

  unittest.group('obj-schema-VpnGatewayInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVpnGatewayInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VpnGatewayInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVpnGatewayInfo(od);
    });
  });

  unittest.group('obj-schema-VpnTunnelInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVpnTunnelInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VpnTunnelInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVpnTunnelInfo(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkManagementApi(mock).projects.locations;
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
      final res = api.NetworkManagementApi(mock).projects.locations;
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

  unittest.group('resource-ProjectsLocationsGlobalConnectivityTestsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkManagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
      final arg_request = buildConnectivityTest();
      final arg_parent = 'foo';
      final arg_testId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConnectivityTest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnectivityTest(obj);

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
          queryMap['testId']!.first,
          unittest.equals(arg_testId),
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
          testId: arg_testId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkManagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
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
      final res = api.NetworkManagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
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
        final resp = convert.json.encode(buildConnectivityTest());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConnectivityTest(response as api.ConnectivityTest);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkManagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
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
      final res = api.NetworkManagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListConnectivityTestsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListConnectivityTestsResponse(
          response as api.ListConnectivityTestsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkManagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
      final arg_request = buildConnectivityTest();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConnectivityTest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnectivityTest(obj);

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

    unittest.test('method--rerun', () async {
      final mock = HttpServerMock();
      final res = api.NetworkManagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
      final arg_request = buildRerunConnectivityTestRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RerunConnectivityTestRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRerunConnectivityTestRequest(obj);

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
      final response =
          await res.rerun(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkManagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
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
      final res = api.NetworkManagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
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

  unittest.group('resource-ProjectsLocationsGlobalOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(mock).projects.locations.global.operations;
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
      final res =
          api.NetworkManagementApi(mock).projects.locations.global.operations;
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
      final res =
          api.NetworkManagementApi(mock).projects.locations.global.operations;
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
      final res =
          api.NetworkManagementApi(mock).projects.locations.global.operations;
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
}
