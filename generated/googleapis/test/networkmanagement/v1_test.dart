// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/networkmanagement/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterAbortInfo = 0;
api.AbortInfo buildAbortInfo() {
  final o = api.AbortInfo();
  buildCounterAbortInfo++;
  if (buildCounterAbortInfo < 3) {
    o.cause = 'foo';
    o.ipAddress = 'foo';
    o.projectsMissingPermission = buildUnnamed0();
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
      o.ipAddress!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.projectsMissingPermission!);
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAbortInfo--;
}

core.int buildCounterAppEngineVersionEndpoint = 0;
api.AppEngineVersionEndpoint buildAppEngineVersionEndpoint() {
  final o = api.AppEngineVersionEndpoint();
  buildCounterAppEngineVersionEndpoint++;
  if (buildCounterAppEngineVersionEndpoint < 3) {
    o.uri = 'foo';
  }
  buildCounterAppEngineVersionEndpoint--;
  return o;
}

void checkAppEngineVersionEndpoint(api.AppEngineVersionEndpoint o) {
  buildCounterAppEngineVersionEndpoint++;
  if (buildCounterAppEngineVersionEndpoint < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppEngineVersionEndpoint--;
}

core.int buildCounterAppEngineVersionInfo = 0;
api.AppEngineVersionInfo buildAppEngineVersionInfo() {
  final o = api.AppEngineVersionInfo();
  buildCounterAppEngineVersionInfo++;
  if (buildCounterAppEngineVersionInfo < 3) {
    o.displayName = 'foo';
    o.environment = 'foo';
    o.runtime = 'foo';
    o.uri = 'foo';
  }
  buildCounterAppEngineVersionInfo--;
  return o;
}

void checkAppEngineVersionInfo(api.AppEngineVersionInfo o) {
  buildCounterAppEngineVersionInfo++;
  if (buildCounterAppEngineVersionInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.environment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.runtime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppEngineVersionInfo--;
}

core.List<api.AuditLogConfig> buildUnnamed1() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed1(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed1();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed1(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
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

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed2();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed2(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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
    o.members = buildUnnamed3();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed3(o.members!);
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

core.int buildCounterCloudFunctionEndpoint = 0;
api.CloudFunctionEndpoint buildCloudFunctionEndpoint() {
  final o = api.CloudFunctionEndpoint();
  buildCounterCloudFunctionEndpoint++;
  if (buildCounterCloudFunctionEndpoint < 3) {
    o.uri = 'foo';
  }
  buildCounterCloudFunctionEndpoint--;
  return o;
}

void checkCloudFunctionEndpoint(api.CloudFunctionEndpoint o) {
  buildCounterCloudFunctionEndpoint++;
  if (buildCounterCloudFunctionEndpoint < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudFunctionEndpoint--;
}

core.int buildCounterCloudFunctionInfo = 0;
api.CloudFunctionInfo buildCloudFunctionInfo() {
  final o = api.CloudFunctionInfo();
  buildCounterCloudFunctionInfo++;
  if (buildCounterCloudFunctionInfo < 3) {
    o.displayName = 'foo';
    o.location = 'foo';
    o.uri = 'foo';
    o.versionId = 'foo';
  }
  buildCounterCloudFunctionInfo--;
  return o;
}

void checkCloudFunctionInfo(api.CloudFunctionInfo o) {
  buildCounterCloudFunctionInfo++;
  if (buildCounterCloudFunctionInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudFunctionInfo--;
}

core.int buildCounterCloudRunRevisionEndpoint = 0;
api.CloudRunRevisionEndpoint buildCloudRunRevisionEndpoint() {
  final o = api.CloudRunRevisionEndpoint();
  buildCounterCloudRunRevisionEndpoint++;
  if (buildCounterCloudRunRevisionEndpoint < 3) {
    o.uri = 'foo';
  }
  buildCounterCloudRunRevisionEndpoint--;
  return o;
}

void checkCloudRunRevisionEndpoint(api.CloudRunRevisionEndpoint o) {
  buildCounterCloudRunRevisionEndpoint++;
  if (buildCounterCloudRunRevisionEndpoint < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudRunRevisionEndpoint--;
}

core.int buildCounterCloudRunRevisionInfo = 0;
api.CloudRunRevisionInfo buildCloudRunRevisionInfo() {
  final o = api.CloudRunRevisionInfo();
  buildCounterCloudRunRevisionInfo++;
  if (buildCounterCloudRunRevisionInfo < 3) {
    o.displayName = 'foo';
    o.location = 'foo';
    o.serviceUri = 'foo';
    o.uri = 'foo';
  }
  buildCounterCloudRunRevisionInfo--;
  return o;
}

void checkCloudRunRevisionInfo(api.CloudRunRevisionInfo o) {
  buildCounterCloudRunRevisionInfo++;
  if (buildCounterCloudRunRevisionInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudRunRevisionInfo--;
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

core.int buildCounterConnectivityTest = 0;
api.ConnectivityTest buildConnectivityTest() {
  final o = api.ConnectivityTest();
  buildCounterConnectivityTest++;
  if (buildCounterConnectivityTest < 3) {
    o.bypassFirewallChecks = true;
    o.createTime = 'foo';
    o.description = 'foo';
    o.destination = buildEndpoint();
    o.displayName = 'foo';
    o.labels = buildUnnamed4();
    o.name = 'foo';
    o.probingDetails = buildProbingDetails();
    o.protocol = 'foo';
    o.reachabilityDetails = buildReachabilityDetails();
    o.relatedProjects = buildUnnamed5();
    o.source = buildEndpoint();
    o.updateTime = 'foo';
  }
  buildCounterConnectivityTest--;
  return o;
}

void checkConnectivityTest(api.ConnectivityTest o) {
  buildCounterConnectivityTest++;
  if (buildCounterConnectivityTest < 3) {
    unittest.expect(o.bypassFirewallChecks!, unittest.isTrue);
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
    checkUnnamed4(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkProbingDetails(o.probingDetails!);
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
    checkReachabilityDetails(o.reachabilityDetails!);
    checkUnnamed5(o.relatedProjects!);
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
    o.ipAddress = 'foo';
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
      o.ipAddress!,
      unittest.equals('foo'),
    );
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
    o.destinationIp = 'foo';
    o.region = 'foo';
    o.resourceUri = 'foo';
    o.sourceIp = 'foo';
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
      o.destinationIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterDropInfo--;
}

core.int buildCounterEdgeLocation = 0;
api.EdgeLocation buildEdgeLocation() {
  final o = api.EdgeLocation();
  buildCounterEdgeLocation++;
  if (buildCounterEdgeLocation < 3) {
    o.metropolitanArea = 'foo';
  }
  buildCounterEdgeLocation--;
  return o;
}

void checkEdgeLocation(api.EdgeLocation o) {
  buildCounterEdgeLocation++;
  if (buildCounterEdgeLocation < 3) {
    unittest.expect(
      o.metropolitanArea!,
      unittest.equals('foo'),
    );
  }
  buildCounterEdgeLocation--;
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
    o.appEngineVersion = buildAppEngineVersionEndpoint();
    o.cloudFunction = buildCloudFunctionEndpoint();
    o.cloudRunRevision = buildCloudRunRevisionEndpoint();
    o.cloudSqlInstance = 'foo';
    o.forwardingRule = 'foo';
    o.forwardingRuleTarget = 'foo';
    o.gkeMasterCluster = 'foo';
    o.instance = 'foo';
    o.ipAddress = 'foo';
    o.loadBalancerId = 'foo';
    o.loadBalancerType = 'foo';
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
    checkAppEngineVersionEndpoint(o.appEngineVersion!);
    checkCloudFunctionEndpoint(o.cloudFunction!);
    checkCloudRunRevisionEndpoint(o.cloudRunRevision!);
    unittest.expect(
      o.cloudSqlInstance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.forwardingRule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.forwardingRuleTarget!,
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
      o.loadBalancerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.loadBalancerType!,
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
    o.sourceAgentUri = 'foo';
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
      o.sourceAgentUri!,
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
    o.targetServiceAccounts = buildUnnamed6();
    o.targetTags = buildUnnamed7();
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
    checkUnnamed6(o.targetServiceAccounts!);
    checkUnnamed7(o.targetTags!);
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
    o.ipAddress = 'foo';
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
      o.ipAddress!,
      unittest.equals('foo'),
    );
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

core.int buildCounterGoogleServiceInfo = 0;
api.GoogleServiceInfo buildGoogleServiceInfo() {
  final o = api.GoogleServiceInfo();
  buildCounterGoogleServiceInfo++;
  if (buildCounterGoogleServiceInfo < 3) {
    o.googleServiceType = 'foo';
    o.sourceIp = 'foo';
  }
  buildCounterGoogleServiceInfo--;
  return o;
}

void checkGoogleServiceInfo(api.GoogleServiceInfo o) {
  buildCounterGoogleServiceInfo++;
  if (buildCounterGoogleServiceInfo < 3) {
    unittest.expect(
      o.googleServiceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleServiceInfo--;
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

core.int buildCounterInstanceInfo = 0;
api.InstanceInfo buildInstanceInfo() {
  final o = api.InstanceInfo();
  buildCounterInstanceInfo++;
  if (buildCounterInstanceInfo < 3) {
    o.displayName = 'foo';
    o.externalIp = 'foo';
    o.interface = 'foo';
    o.internalIp = 'foo';
    o.networkTags = buildUnnamed8();
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
    checkUnnamed8(o.networkTags!);
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

core.List<api.LatencyPercentile> buildUnnamed9() => [
      buildLatencyPercentile(),
      buildLatencyPercentile(),
    ];

void checkUnnamed9(core.List<api.LatencyPercentile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatencyPercentile(o[0]);
  checkLatencyPercentile(o[1]);
}

core.int buildCounterLatencyDistribution = 0;
api.LatencyDistribution buildLatencyDistribution() {
  final o = api.LatencyDistribution();
  buildCounterLatencyDistribution++;
  if (buildCounterLatencyDistribution < 3) {
    o.latencyPercentiles = buildUnnamed9();
  }
  buildCounterLatencyDistribution--;
  return o;
}

void checkLatencyDistribution(api.LatencyDistribution o) {
  buildCounterLatencyDistribution++;
  if (buildCounterLatencyDistribution < 3) {
    checkUnnamed9(o.latencyPercentiles!);
  }
  buildCounterLatencyDistribution--;
}

core.int buildCounterLatencyPercentile = 0;
api.LatencyPercentile buildLatencyPercentile() {
  final o = api.LatencyPercentile();
  buildCounterLatencyPercentile++;
  if (buildCounterLatencyPercentile < 3) {
    o.latencyMicros = 'foo';
    o.percent = 42;
  }
  buildCounterLatencyPercentile--;
  return o;
}

void checkLatencyPercentile(api.LatencyPercentile o) {
  buildCounterLatencyPercentile++;
  if (buildCounterLatencyPercentile < 3) {
    unittest.expect(
      o.latencyMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.percent!,
      unittest.equals(42),
    );
  }
  buildCounterLatencyPercentile--;
}

core.List<api.ConnectivityTest> buildUnnamed10() => [
      buildConnectivityTest(),
      buildConnectivityTest(),
    ];

void checkUnnamed10(core.List<api.ConnectivityTest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectivityTest(o[0]);
  checkConnectivityTest(o[1]);
}

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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
    o.resources = buildUnnamed10();
    o.unreachable = buildUnnamed11();
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
    checkUnnamed10(o.resources!);
    checkUnnamed11(o.unreachable!);
  }
  buildCounterListConnectivityTestsResponse--;
}

core.List<api.Location> buildUnnamed12() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed12(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed12(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed13() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed13(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed13();
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
    checkUnnamed13(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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
    o.healthCheckAllowingFirewallRules = buildUnnamed14();
    o.healthCheckBlockingFirewallRules = buildUnnamed15();
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
    checkUnnamed14(o.healthCheckAllowingFirewallRules!);
    checkUnnamed15(o.healthCheckBlockingFirewallRules!);
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

core.int buildCounterLoadBalancerBackendInfo = 0;
api.LoadBalancerBackendInfo buildLoadBalancerBackendInfo() {
  final o = api.LoadBalancerBackendInfo();
  buildCounterLoadBalancerBackendInfo++;
  if (buildCounterLoadBalancerBackendInfo < 3) {
    o.backendBucketUri = 'foo';
    o.backendServiceUri = 'foo';
    o.healthCheckFirewallsConfigState = 'foo';
    o.healthCheckUri = 'foo';
    o.instanceGroupUri = 'foo';
    o.instanceUri = 'foo';
    o.name = 'foo';
    o.networkEndpointGroupUri = 'foo';
    o.pscGoogleApiTarget = 'foo';
    o.pscServiceAttachmentUri = 'foo';
  }
  buildCounterLoadBalancerBackendInfo--;
  return o;
}

void checkLoadBalancerBackendInfo(api.LoadBalancerBackendInfo o) {
  buildCounterLoadBalancerBackendInfo++;
  if (buildCounterLoadBalancerBackendInfo < 3) {
    unittest.expect(
      o.backendBucketUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.backendServiceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.healthCheckFirewallsConfigState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.healthCheckUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceGroupUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkEndpointGroupUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pscGoogleApiTarget!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pscServiceAttachmentUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterLoadBalancerBackendInfo--;
}

core.List<api.LoadBalancerBackend> buildUnnamed16() => [
      buildLoadBalancerBackend(),
      buildLoadBalancerBackend(),
    ];

void checkUnnamed16(core.List<api.LoadBalancerBackend> o) {
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
    o.backends = buildUnnamed16();
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
    checkUnnamed16(o.backends!);
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

core.Map<core.String, core.String> buildUnnamed17() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed17(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed18() => {
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

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
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
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterNatInfo = 0;
api.NatInfo buildNatInfo() {
  final o = api.NatInfo();
  buildCounterNatInfo++;
  if (buildCounterNatInfo < 3) {
    o.natGatewayName = 'foo';
    o.networkUri = 'foo';
    o.newDestinationIp = 'foo';
    o.newDestinationPort = 42;
    o.newSourceIp = 'foo';
    o.newSourcePort = 42;
    o.oldDestinationIp = 'foo';
    o.oldDestinationPort = 42;
    o.oldSourceIp = 'foo';
    o.oldSourcePort = 42;
    o.protocol = 'foo';
    o.routerUri = 'foo';
    o.type = 'foo';
  }
  buildCounterNatInfo--;
  return o;
}

void checkNatInfo(api.NatInfo o) {
  buildCounterNatInfo++;
  if (buildCounterNatInfo < 3) {
    unittest.expect(
      o.natGatewayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newDestinationIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newDestinationPort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.newSourceIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newSourcePort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.oldDestinationIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oldDestinationPort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.oldSourceIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oldSourcePort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.routerUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterNatInfo--;
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

core.Map<core.String, core.Object?> buildUnnamed19() => {
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

void checkUnnamed19(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed20() => {
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

void checkUnnamed20(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed19();
    o.name = 'foo';
    o.response = buildUnnamed20();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed19(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed21() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed21(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed22() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed22(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed21();
    o.bindings = buildUnnamed22();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed21(o.auditConfigs!);
    checkUnnamed22(o.bindings!);
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

core.int buildCounterProbingDetails = 0;
api.ProbingDetails buildProbingDetails() {
  final o = api.ProbingDetails();
  buildCounterProbingDetails++;
  if (buildCounterProbingDetails < 3) {
    o.abortCause = 'foo';
    o.destinationEgressLocation = buildEdgeLocation();
    o.endpointInfo = buildEndpointInfo();
    o.error = buildStatus();
    o.probingLatency = buildLatencyDistribution();
    o.result = 'foo';
    o.sentProbeCount = 42;
    o.successfulProbeCount = 42;
    o.verifyTime = 'foo';
  }
  buildCounterProbingDetails--;
  return o;
}

void checkProbingDetails(api.ProbingDetails o) {
  buildCounterProbingDetails++;
  if (buildCounterProbingDetails < 3) {
    unittest.expect(
      o.abortCause!,
      unittest.equals('foo'),
    );
    checkEdgeLocation(o.destinationEgressLocation!);
    checkEndpointInfo(o.endpointInfo!);
    checkStatus(o.error!);
    checkLatencyDistribution(o.probingLatency!);
    unittest.expect(
      o.result!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sentProbeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.successfulProbeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.verifyTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterProbingDetails--;
}

core.int buildCounterProxyConnectionInfo = 0;
api.ProxyConnectionInfo buildProxyConnectionInfo() {
  final o = api.ProxyConnectionInfo();
  buildCounterProxyConnectionInfo++;
  if (buildCounterProxyConnectionInfo < 3) {
    o.networkUri = 'foo';
    o.newDestinationIp = 'foo';
    o.newDestinationPort = 42;
    o.newSourceIp = 'foo';
    o.newSourcePort = 42;
    o.oldDestinationIp = 'foo';
    o.oldDestinationPort = 42;
    o.oldSourceIp = 'foo';
    o.oldSourcePort = 42;
    o.protocol = 'foo';
    o.subnetUri = 'foo';
  }
  buildCounterProxyConnectionInfo--;
  return o;
}

void checkProxyConnectionInfo(api.ProxyConnectionInfo o) {
  buildCounterProxyConnectionInfo++;
  if (buildCounterProxyConnectionInfo < 3) {
    unittest.expect(
      o.networkUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newDestinationIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newDestinationPort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.newSourceIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newSourcePort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.oldDestinationIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oldDestinationPort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.oldSourceIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oldSourcePort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterProxyConnectionInfo--;
}

core.List<api.Trace> buildUnnamed23() => [
      buildTrace(),
      buildTrace(),
    ];

void checkUnnamed23(core.List<api.Trace> o) {
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
    o.traces = buildUnnamed23();
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
    checkUnnamed23(o.traces!);
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

core.int buildCounterRouteInfo = 0;
api.RouteInfo buildRouteInfo() {
  final o = api.RouteInfo();
  buildCounterRouteInfo++;
  if (buildCounterRouteInfo < 3) {
    o.destIpRange = 'foo';
    o.destPortRanges = buildUnnamed24();
    o.displayName = 'foo';
    o.instanceTags = buildUnnamed25();
    o.nccHubUri = 'foo';
    o.nccSpokeUri = 'foo';
    o.networkUri = 'foo';
    o.nextHop = 'foo';
    o.nextHopType = 'foo';
    o.priority = 42;
    o.protocols = buildUnnamed26();
    o.routeScope = 'foo';
    o.routeType = 'foo';
    o.srcIpRange = 'foo';
    o.srcPortRanges = buildUnnamed27();
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
    checkUnnamed24(o.destPortRanges!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.instanceTags!);
    unittest.expect(
      o.nccHubUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nccSpokeUri!,
      unittest.equals('foo'),
    );
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
    checkUnnamed26(o.protocols!);
    unittest.expect(
      o.routeScope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.routeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.srcIpRange!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.srcPortRanges!);
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

core.Map<core.String, core.Object?> buildUnnamed28() => {
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

void checkUnnamed28(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed29() => [
      buildUnnamed28(),
      buildUnnamed28(),
    ];

void checkUnnamed29(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed28(o[0]);
  checkUnnamed28(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed29();
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
    checkUnnamed29(o.details!);
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
    o.appEngineVersion = buildAppEngineVersionInfo();
    o.causesDrop = true;
    o.cloudFunction = buildCloudFunctionInfo();
    o.cloudRunRevision = buildCloudRunRevisionInfo();
    o.cloudSqlInstance = buildCloudSQLInstanceInfo();
    o.deliver = buildDeliverInfo();
    o.description = 'foo';
    o.drop = buildDropInfo();
    o.endpoint = buildEndpointInfo();
    o.firewall = buildFirewallInfo();
    o.forward = buildForwardInfo();
    o.forwardingRule = buildForwardingRuleInfo();
    o.gkeMaster = buildGKEMasterInfo();
    o.googleService = buildGoogleServiceInfo();
    o.instance = buildInstanceInfo();
    o.loadBalancer = buildLoadBalancerInfo();
    o.loadBalancerBackendInfo = buildLoadBalancerBackendInfo();
    o.nat = buildNatInfo();
    o.network = buildNetworkInfo();
    o.projectId = 'foo';
    o.proxyConnection = buildProxyConnectionInfo();
    o.route = buildRouteInfo();
    o.state = 'foo';
    o.storageBucket = buildStorageBucketInfo();
    o.vpcConnector = buildVpcConnectorInfo();
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
    checkAppEngineVersionInfo(o.appEngineVersion!);
    unittest.expect(o.causesDrop!, unittest.isTrue);
    checkCloudFunctionInfo(o.cloudFunction!);
    checkCloudRunRevisionInfo(o.cloudRunRevision!);
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
    checkGoogleServiceInfo(o.googleService!);
    checkInstanceInfo(o.instance!);
    checkLoadBalancerInfo(o.loadBalancer!);
    checkLoadBalancerBackendInfo(o.loadBalancerBackendInfo!);
    checkNatInfo(o.nat!);
    checkNetworkInfo(o.network!);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkProxyConnectionInfo(o.proxyConnection!);
    checkRouteInfo(o.route!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkStorageBucketInfo(o.storageBucket!);
    checkVpcConnectorInfo(o.vpcConnector!);
    checkVpnGatewayInfo(o.vpnGateway!);
    checkVpnTunnelInfo(o.vpnTunnel!);
  }
  buildCounterStep--;
}

core.int buildCounterStorageBucketInfo = 0;
api.StorageBucketInfo buildStorageBucketInfo() {
  final o = api.StorageBucketInfo();
  buildCounterStorageBucketInfo++;
  if (buildCounterStorageBucketInfo < 3) {
    o.bucket = 'foo';
  }
  buildCounterStorageBucketInfo--;
  return o;
}

void checkStorageBucketInfo(api.StorageBucketInfo o) {
  buildCounterStorageBucketInfo++;
  if (buildCounterStorageBucketInfo < 3) {
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
  }
  buildCounterStorageBucketInfo--;
}

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
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
    o.permissions = buildUnnamed30();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed30(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed31() => [
      'foo',
      'foo',
    ];

void checkUnnamed31(core.List<core.String> o) {
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
    o.permissions = buildUnnamed31();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed31(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<api.Step> buildUnnamed32() => [
      buildStep(),
      buildStep(),
    ];

void checkUnnamed32(core.List<api.Step> o) {
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
    o.forwardTraceId = 42;
    o.steps = buildUnnamed32();
  }
  buildCounterTrace--;
  return o;
}

void checkTrace(api.Trace o) {
  buildCounterTrace++;
  if (buildCounterTrace < 3) {
    checkEndpointInfo(o.endpointInfo!);
    unittest.expect(
      o.forwardTraceId!,
      unittest.equals(42),
    );
    checkUnnamed32(o.steps!);
  }
  buildCounterTrace--;
}

core.int buildCounterVpcConnectorInfo = 0;
api.VpcConnectorInfo buildVpcConnectorInfo() {
  final o = api.VpcConnectorInfo();
  buildCounterVpcConnectorInfo++;
  if (buildCounterVpcConnectorInfo < 3) {
    o.displayName = 'foo';
    o.location = 'foo';
    o.uri = 'foo';
  }
  buildCounterVpcConnectorInfo--;
  return o;
}

void checkVpcConnectorInfo(api.VpcConnectorInfo o) {
  buildCounterVpcConnectorInfo++;
  if (buildCounterVpcConnectorInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterVpcConnectorInfo--;
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

  unittest.group('obj-schema-AppEngineVersionEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppEngineVersionEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppEngineVersionEndpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppEngineVersionEndpoint(od);
    });
  });

  unittest.group('obj-schema-AppEngineVersionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppEngineVersionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppEngineVersionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppEngineVersionInfo(od);
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

  unittest.group('obj-schema-CloudFunctionEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudFunctionEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudFunctionEndpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudFunctionEndpoint(od);
    });
  });

  unittest.group('obj-schema-CloudFunctionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudFunctionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudFunctionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudFunctionInfo(od);
    });
  });

  unittest.group('obj-schema-CloudRunRevisionEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRunRevisionEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRunRevisionEndpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudRunRevisionEndpoint(od);
    });
  });

  unittest.group('obj-schema-CloudRunRevisionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRunRevisionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRunRevisionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudRunRevisionInfo(od);
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

  unittest.group('obj-schema-EdgeLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEdgeLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EdgeLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEdgeLocation(od);
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

  unittest.group('obj-schema-GoogleServiceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleServiceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleServiceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleServiceInfo(od);
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

  unittest.group('obj-schema-LatencyDistribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatencyDistribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LatencyDistribution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLatencyDistribution(od);
    });
  });

  unittest.group('obj-schema-LatencyPercentile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatencyPercentile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LatencyPercentile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLatencyPercentile(od);
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

  unittest.group('obj-schema-LoadBalancerBackendInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoadBalancerBackendInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoadBalancerBackendInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoadBalancerBackendInfo(od);
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

  unittest.group('obj-schema-NatInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNatInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NatInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNatInfo(od);
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

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-ProbingDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProbingDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProbingDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProbingDetails(od);
    });
  });

  unittest.group('obj-schema-ProxyConnectionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProxyConnectionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProxyConnectionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProxyConnectionInfo(od);
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

  unittest.group('obj-schema-StorageBucketInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStorageBucketInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StorageBucketInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStorageBucketInfo(od);
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

  unittest.group('obj-schema-VpcConnectorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVpcConnectorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VpcConnectorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVpcConnectorInfo(od);
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
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
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
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
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

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
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
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
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
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
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
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
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
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
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

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
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

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
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

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
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

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
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

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
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
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
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
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
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
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
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
