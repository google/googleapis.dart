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

import 'package:googleapis/networkmanagement/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    unittest.expect(o.cause!, unittest.equals('foo'));
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    checkUnnamed0(o.projectsMissingPermission!);
    unittest.expect(o.resourceUri!, unittest.equals('foo'));
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
    unittest.expect(o.uri!, unittest.equals('foo'));
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
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.environment!, unittest.equals('foo'));
    unittest.expect(o.runtime!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
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
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
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
    unittest.expect(o.uri!, unittest.equals('foo'));
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
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
    unittest.expect(o.versionId!, unittest.equals('foo'));
  }
  buildCounterCloudFunctionInfo--;
}

core.int buildCounterCloudRunRevisionEndpoint = 0;
api.CloudRunRevisionEndpoint buildCloudRunRevisionEndpoint() {
  final o = api.CloudRunRevisionEndpoint();
  buildCounterCloudRunRevisionEndpoint++;
  if (buildCounterCloudRunRevisionEndpoint < 3) {
    o.serviceUri = 'foo';
    o.uri = 'foo';
  }
  buildCounterCloudRunRevisionEndpoint--;
  return o;
}

void checkCloudRunRevisionEndpoint(api.CloudRunRevisionEndpoint o) {
  buildCounterCloudRunRevisionEndpoint++;
  if (buildCounterCloudRunRevisionEndpoint < 3) {
    unittest.expect(o.serviceUri!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
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
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.serviceUri!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
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
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.externalIp!, unittest.equals('foo'));
    unittest.expect(o.internalIp!, unittest.equals('foo'));
    unittest.expect(o.networkUri!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterCloudSQLInstanceInfo--;
}

core.Map<core.String, core.String> buildUnnamed4() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    o.returnReachabilityDetails = buildReachabilityDetails();
    o.roundTrip = true;
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
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkEndpoint(o.destination!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed4(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkProbingDetails(o.probingDetails!);
    unittest.expect(o.protocol!, unittest.equals('foo'));
    checkReachabilityDetails(o.reachabilityDetails!);
    checkUnnamed5(o.relatedProjects!);
    checkReachabilityDetails(o.returnReachabilityDetails!);
    unittest.expect(o.roundTrip!, unittest.isTrue);
    checkEndpoint(o.source!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterConnectivityTest--;
}

core.int buildCounterDeliverInfo = 0;
api.DeliverInfo buildDeliverInfo() {
  final o = api.DeliverInfo();
  buildCounterDeliverInfo++;
  if (buildCounterDeliverInfo < 3) {
    o.googleServiceType = 'foo';
    o.ipAddress = 'foo';
    o.pscGoogleApiTarget = 'foo';
    o.resourceUri = 'foo';
    o.storageBucket = 'foo';
    o.target = 'foo';
  }
  buildCounterDeliverInfo--;
  return o;
}

void checkDeliverInfo(api.DeliverInfo o) {
  buildCounterDeliverInfo++;
  if (buildCounterDeliverInfo < 3) {
    unittest.expect(o.googleServiceType!, unittest.equals('foo'));
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.pscGoogleApiTarget!, unittest.equals('foo'));
    unittest.expect(o.resourceUri!, unittest.equals('foo'));
    unittest.expect(o.storageBucket!, unittest.equals('foo'));
    unittest.expect(o.target!, unittest.equals('foo'));
  }
  buildCounterDeliverInfo--;
}

core.int buildCounterDirectVpcEgressConnectionInfo = 0;
api.DirectVpcEgressConnectionInfo buildDirectVpcEgressConnectionInfo() {
  final o = api.DirectVpcEgressConnectionInfo();
  buildCounterDirectVpcEgressConnectionInfo++;
  if (buildCounterDirectVpcEgressConnectionInfo < 3) {
    o.networkUri = 'foo';
    o.region = 'foo';
    o.selectedIpAddress = 'foo';
    o.selectedIpRange = 'foo';
    o.subnetworkUri = 'foo';
  }
  buildCounterDirectVpcEgressConnectionInfo--;
  return o;
}

void checkDirectVpcEgressConnectionInfo(api.DirectVpcEgressConnectionInfo o) {
  buildCounterDirectVpcEgressConnectionInfo++;
  if (buildCounterDirectVpcEgressConnectionInfo < 3) {
    unittest.expect(o.networkUri!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.selectedIpAddress!, unittest.equals('foo'));
    unittest.expect(o.selectedIpRange!, unittest.equals('foo'));
    unittest.expect(o.subnetworkUri!, unittest.equals('foo'));
  }
  buildCounterDirectVpcEgressConnectionInfo--;
}

core.int buildCounterDropInfo = 0;
api.DropInfo buildDropInfo() {
  final o = api.DropInfo();
  buildCounterDropInfo++;
  if (buildCounterDropInfo < 3) {
    o.cause = 'foo';
    o.destinationGeolocationCode = 'foo';
    o.destinationIp = 'foo';
    o.region = 'foo';
    o.resourceUri = 'foo';
    o.sourceGeolocationCode = 'foo';
    o.sourceIp = 'foo';
  }
  buildCounterDropInfo--;
  return o;
}

void checkDropInfo(api.DropInfo o) {
  buildCounterDropInfo++;
  if (buildCounterDropInfo < 3) {
    unittest.expect(o.cause!, unittest.equals('foo'));
    unittest.expect(o.destinationGeolocationCode!, unittest.equals('foo'));
    unittest.expect(o.destinationIp!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.resourceUri!, unittest.equals('foo'));
    unittest.expect(o.sourceGeolocationCode!, unittest.equals('foo'));
    unittest.expect(o.sourceIp!, unittest.equals('foo'));
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
    unittest.expect(o.metropolitanArea!, unittest.equals('foo'));
  }
  buildCounterEdgeLocation--;
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEffectiveVpcFlowLogsConfig = 0;
api.EffectiveVpcFlowLogsConfig buildEffectiveVpcFlowLogsConfig() {
  final o = api.EffectiveVpcFlowLogsConfig();
  buildCounterEffectiveVpcFlowLogsConfig++;
  if (buildCounterEffectiveVpcFlowLogsConfig < 3) {
    o.aggregationInterval = 'foo';
    o.crossProjectMetadata = 'foo';
    o.filterExpr = 'foo';
    o.flowSampling = 42.0;
    o.interconnectAttachment = 'foo';
    o.metadata = 'foo';
    o.metadataFields = buildUnnamed6();
    o.name = 'foo';
    o.network = 'foo';
    o.scope = 'foo';
    o.state = 'foo';
    o.subnet = 'foo';
    o.vpnTunnel = 'foo';
  }
  buildCounterEffectiveVpcFlowLogsConfig--;
  return o;
}

void checkEffectiveVpcFlowLogsConfig(api.EffectiveVpcFlowLogsConfig o) {
  buildCounterEffectiveVpcFlowLogsConfig++;
  if (buildCounterEffectiveVpcFlowLogsConfig < 3) {
    unittest.expect(o.aggregationInterval!, unittest.equals('foo'));
    unittest.expect(o.crossProjectMetadata!, unittest.equals('foo'));
    unittest.expect(o.filterExpr!, unittest.equals('foo'));
    unittest.expect(o.flowSampling!, unittest.equals(42.0));
    unittest.expect(o.interconnectAttachment!, unittest.equals('foo'));
    unittest.expect(o.metadata!, unittest.equals('foo'));
    checkUnnamed6(o.metadataFields!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.scope!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.subnet!, unittest.equals('foo'));
    unittest.expect(o.vpnTunnel!, unittest.equals('foo'));
  }
  buildCounterEffectiveVpcFlowLogsConfig--;
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
    o.fqdn = 'foo';
    o.gkeMasterCluster = 'foo';
    o.instance = 'foo';
    o.ipAddress = 'foo';
    o.loadBalancerId = 'foo';
    o.loadBalancerType = 'foo';
    o.network = 'foo';
    o.networkType = 'foo';
    o.port = 42;
    o.projectId = 'foo';
    o.redisCluster = 'foo';
    o.redisInstance = 'foo';
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
    unittest.expect(o.cloudSqlInstance!, unittest.equals('foo'));
    unittest.expect(o.forwardingRule!, unittest.equals('foo'));
    unittest.expect(o.forwardingRuleTarget!, unittest.equals('foo'));
    unittest.expect(o.fqdn!, unittest.equals('foo'));
    unittest.expect(o.gkeMasterCluster!, unittest.equals('foo'));
    unittest.expect(o.instance!, unittest.equals('foo'));
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.loadBalancerId!, unittest.equals('foo'));
    unittest.expect(o.loadBalancerType!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.networkType!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
    unittest.expect(o.projectId!, unittest.equals('foo'));
    unittest.expect(o.redisCluster!, unittest.equals('foo'));
    unittest.expect(o.redisInstance!, unittest.equals('foo'));
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
    unittest.expect(o.destinationIp!, unittest.equals('foo'));
    unittest.expect(o.destinationNetworkUri!, unittest.equals('foo'));
    unittest.expect(o.destinationPort!, unittest.equals(42));
    unittest.expect(o.protocol!, unittest.equals('foo'));
    unittest.expect(o.sourceAgentUri!, unittest.equals('foo'));
    unittest.expect(o.sourceIp!, unittest.equals('foo'));
    unittest.expect(o.sourceNetworkUri!, unittest.equals('foo'));
    unittest.expect(o.sourcePort!, unittest.equals(42));
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
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    o.policyPriority = 42;
    o.policyUri = 'foo';
    o.priority = 42;
    o.targetServiceAccounts = buildUnnamed7();
    o.targetTags = buildUnnamed8();
    o.targetType = 'foo';
    o.uri = 'foo';
  }
  buildCounterFirewallInfo--;
  return o;
}

void checkFirewallInfo(api.FirewallInfo o) {
  buildCounterFirewallInfo++;
  if (buildCounterFirewallInfo < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.direction!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.firewallRuleType!, unittest.equals('foo'));
    unittest.expect(o.networkUri!, unittest.equals('foo'));
    unittest.expect(o.policy!, unittest.equals('foo'));
    unittest.expect(o.policyPriority!, unittest.equals(42));
    unittest.expect(o.policyUri!, unittest.equals('foo'));
    unittest.expect(o.priority!, unittest.equals(42));
    checkUnnamed7(o.targetServiceAccounts!);
    checkUnnamed8(o.targetTags!);
    unittest.expect(o.targetType!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
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
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.resourceUri!, unittest.equals('foo'));
    unittest.expect(o.target!, unittest.equals('foo'));
  }
  buildCounterForwardInfo--;
}

core.int buildCounterForwardingRuleInfo = 0;
api.ForwardingRuleInfo buildForwardingRuleInfo() {
  final o = api.ForwardingRuleInfo();
  buildCounterForwardingRuleInfo++;
  if (buildCounterForwardingRuleInfo < 3) {
    o.displayName = 'foo';
    o.loadBalancerName = 'foo';
    o.matchedPortRange = 'foo';
    o.matchedProtocol = 'foo';
    o.networkUri = 'foo';
    o.pscGoogleApiTarget = 'foo';
    o.pscServiceAttachmentUri = 'foo';
    o.region = 'foo';
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
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.loadBalancerName!, unittest.equals('foo'));
    unittest.expect(o.matchedPortRange!, unittest.equals('foo'));
    unittest.expect(o.matchedProtocol!, unittest.equals('foo'));
    unittest.expect(o.networkUri!, unittest.equals('foo'));
    unittest.expect(o.pscGoogleApiTarget!, unittest.equals('foo'));
    unittest.expect(o.pscServiceAttachmentUri!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.target!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
    unittest.expect(o.vip!, unittest.equals('foo'));
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
    o.dnsEndpoint = 'foo';
    o.externalIp = 'foo';
    o.internalIp = 'foo';
  }
  buildCounterGKEMasterInfo--;
  return o;
}

void checkGKEMasterInfo(api.GKEMasterInfo o) {
  buildCounterGKEMasterInfo++;
  if (buildCounterGKEMasterInfo < 3) {
    unittest.expect(o.clusterNetworkUri!, unittest.equals('foo'));
    unittest.expect(o.clusterUri!, unittest.equals('foo'));
    unittest.expect(o.dnsEndpoint!, unittest.equals('foo'));
    unittest.expect(o.externalIp!, unittest.equals('foo'));
    unittest.expect(o.internalIp!, unittest.equals('foo'));
  }
  buildCounterGKEMasterInfo--;
}

core.int buildCounterGeoLocation = 0;
api.GeoLocation buildGeoLocation() {
  final o = api.GeoLocation();
  buildCounterGeoLocation++;
  if (buildCounterGeoLocation < 3) {
    o.country = 'foo';
    o.formattedAddress = 'foo';
  }
  buildCounterGeoLocation--;
  return o;
}

void checkGeoLocation(api.GeoLocation o) {
  buildCounterGeoLocation++;
  if (buildCounterGeoLocation < 3) {
    unittest.expect(o.country!, unittest.equals('foo'));
    unittest.expect(o.formattedAddress!, unittest.equals('foo'));
  }
  buildCounterGeoLocation--;
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
    unittest.expect(o.googleServiceType!, unittest.equals('foo'));
    unittest.expect(o.sourceIp!, unittest.equals('foo'));
  }
  buildCounterGoogleServiceInfo--;
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHost = 0;
api.Host buildHost() {
  final o = api.Host();
  buildCounterHost++;
  if (buildCounterHost < 3) {
    o.cloudInstanceId = 'foo';
    o.cloudProjectId = 'foo';
    o.cloudProvider = 'foo';
    o.cloudRegion = 'foo';
    o.cloudVirtualNetworkIds = buildUnnamed9();
    o.cloudVpcId = 'foo';
    o.cloudZone = 'foo';
    o.os = 'foo';
  }
  buildCounterHost--;
  return o;
}

void checkHost(api.Host o) {
  buildCounterHost++;
  if (buildCounterHost < 3) {
    unittest.expect(o.cloudInstanceId!, unittest.equals('foo'));
    unittest.expect(o.cloudProjectId!, unittest.equals('foo'));
    unittest.expect(o.cloudProvider!, unittest.equals('foo'));
    unittest.expect(o.cloudRegion!, unittest.equals('foo'));
    checkUnnamed9(o.cloudVirtualNetworkIds!);
    unittest.expect(o.cloudVpcId!, unittest.equals('foo'));
    unittest.expect(o.cloudZone!, unittest.equals('foo'));
    unittest.expect(o.os!, unittest.equals('foo'));
  }
  buildCounterHost--;
}

core.int buildCounterHybridSubnetInfo = 0;
api.HybridSubnetInfo buildHybridSubnetInfo() {
  final o = api.HybridSubnetInfo();
  buildCounterHybridSubnetInfo++;
  if (buildCounterHybridSubnetInfo < 3) {
    o.displayName = 'foo';
    o.region = 'foo';
    o.uri = 'foo';
  }
  buildCounterHybridSubnetInfo--;
  return o;
}

void checkHybridSubnetInfo(api.HybridSubnetInfo o) {
  buildCounterHybridSubnetInfo++;
  if (buildCounterHybridSubnetInfo < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterHybridSubnetInfo--;
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    o.networkTags = buildUnnamed10();
    o.networkUri = 'foo';
    o.pscNetworkAttachmentUri = 'foo';
    o.running = true;
    o.serviceAccount = 'foo';
    o.status = 'foo';
    o.uri = 'foo';
  }
  buildCounterInstanceInfo--;
  return o;
}

void checkInstanceInfo(api.InstanceInfo o) {
  buildCounterInstanceInfo++;
  if (buildCounterInstanceInfo < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.externalIp!, unittest.equals('foo'));
    unittest.expect(o.interface!, unittest.equals('foo'));
    unittest.expect(o.internalIp!, unittest.equals('foo'));
    checkUnnamed10(o.networkTags!);
    unittest.expect(o.networkUri!, unittest.equals('foo'));
    unittest.expect(o.pscNetworkAttachmentUri!, unittest.equals('foo'));
    unittest.expect(o.running!, unittest.isTrue);
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterInstanceInfo--;
}

core.int buildCounterInterconnectAttachmentInfo = 0;
api.InterconnectAttachmentInfo buildInterconnectAttachmentInfo() {
  final o = api.InterconnectAttachmentInfo();
  buildCounterInterconnectAttachmentInfo++;
  if (buildCounterInterconnectAttachmentInfo < 3) {
    o.cloudRouterUri = 'foo';
    o.displayName = 'foo';
    o.interconnectUri = 'foo';
    o.l2AttachmentMatchedIpAddress = 'foo';
    o.region = 'foo';
    o.type = 'foo';
    o.uri = 'foo';
  }
  buildCounterInterconnectAttachmentInfo--;
  return o;
}

void checkInterconnectAttachmentInfo(api.InterconnectAttachmentInfo o) {
  buildCounterInterconnectAttachmentInfo++;
  if (buildCounterInterconnectAttachmentInfo < 3) {
    unittest.expect(o.cloudRouterUri!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.interconnectUri!, unittest.equals('foo'));
    unittest.expect(o.l2AttachmentMatchedIpAddress!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterInterconnectAttachmentInfo--;
}

core.List<api.LatencyPercentile> buildUnnamed11() => [
  buildLatencyPercentile(),
  buildLatencyPercentile(),
];

void checkUnnamed11(core.List<api.LatencyPercentile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatencyPercentile(o[0]);
  checkLatencyPercentile(o[1]);
}

core.int buildCounterLatencyDistribution = 0;
api.LatencyDistribution buildLatencyDistribution() {
  final o = api.LatencyDistribution();
  buildCounterLatencyDistribution++;
  if (buildCounterLatencyDistribution < 3) {
    o.latencyPercentiles = buildUnnamed11();
  }
  buildCounterLatencyDistribution--;
  return o;
}

void checkLatencyDistribution(api.LatencyDistribution o) {
  buildCounterLatencyDistribution++;
  if (buildCounterLatencyDistribution < 3) {
    checkUnnamed11(o.latencyPercentiles!);
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
    unittest.expect(o.latencyMicros!, unittest.equals('foo'));
    unittest.expect(o.percent!, unittest.equals(42));
  }
  buildCounterLatencyPercentile--;
}

core.List<api.ConnectivityTest> buildUnnamed12() => [
  buildConnectivityTest(),
  buildConnectivityTest(),
];

void checkUnnamed12(core.List<api.ConnectivityTest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectivityTest(o[0]);
  checkConnectivityTest(o[1]);
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListConnectivityTestsResponse = 0;
api.ListConnectivityTestsResponse buildListConnectivityTestsResponse() {
  final o = api.ListConnectivityTestsResponse();
  buildCounterListConnectivityTestsResponse++;
  if (buildCounterListConnectivityTestsResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed12();
    o.unreachable = buildUnnamed13();
  }
  buildCounterListConnectivityTestsResponse--;
  return o;
}

void checkListConnectivityTestsResponse(api.ListConnectivityTestsResponse o) {
  buildCounterListConnectivityTestsResponse++;
  if (buildCounterListConnectivityTestsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed12(o.resources!);
    checkUnnamed13(o.unreachable!);
  }
  buildCounterListConnectivityTestsResponse--;
}

core.List<api.Location> buildUnnamed14() => [buildLocation(), buildLocation()];

void checkUnnamed14(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed14();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed14(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.MonitoringPoint> buildUnnamed15() => [
  buildMonitoringPoint(),
  buildMonitoringPoint(),
];

void checkUnnamed15(core.List<api.MonitoringPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringPoint(o[0]);
  checkMonitoringPoint(o[1]);
}

core.int buildCounterListMonitoringPointsResponse = 0;
api.ListMonitoringPointsResponse buildListMonitoringPointsResponse() {
  final o = api.ListMonitoringPointsResponse();
  buildCounterListMonitoringPointsResponse++;
  if (buildCounterListMonitoringPointsResponse < 3) {
    o.monitoringPoints = buildUnnamed15();
    o.nextPageToken = 'foo';
  }
  buildCounterListMonitoringPointsResponse--;
  return o;
}

void checkListMonitoringPointsResponse(api.ListMonitoringPointsResponse o) {
  buildCounterListMonitoringPointsResponse++;
  if (buildCounterListMonitoringPointsResponse < 3) {
    checkUnnamed15(o.monitoringPoints!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListMonitoringPointsResponse--;
}

core.List<api.NetworkMonitoringProvider> buildUnnamed16() => [
  buildNetworkMonitoringProvider(),
  buildNetworkMonitoringProvider(),
];

void checkUnnamed16(core.List<api.NetworkMonitoringProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkMonitoringProvider(o[0]);
  checkNetworkMonitoringProvider(o[1]);
}

core.int buildCounterListNetworkMonitoringProvidersResponse = 0;
api.ListNetworkMonitoringProvidersResponse
buildListNetworkMonitoringProvidersResponse() {
  final o = api.ListNetworkMonitoringProvidersResponse();
  buildCounterListNetworkMonitoringProvidersResponse++;
  if (buildCounterListNetworkMonitoringProvidersResponse < 3) {
    o.networkMonitoringProviders = buildUnnamed16();
    o.nextPageToken = 'foo';
  }
  buildCounterListNetworkMonitoringProvidersResponse--;
  return o;
}

void checkListNetworkMonitoringProvidersResponse(
  api.ListNetworkMonitoringProvidersResponse o,
) {
  buildCounterListNetworkMonitoringProvidersResponse++;
  if (buildCounterListNetworkMonitoringProvidersResponse < 3) {
    checkUnnamed16(o.networkMonitoringProviders!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListNetworkMonitoringProvidersResponse--;
}

core.List<api.NetworkPath> buildUnnamed17() => [
  buildNetworkPath(),
  buildNetworkPath(),
];

void checkUnnamed17(core.List<api.NetworkPath> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkPath(o[0]);
  checkNetworkPath(o[1]);
}

core.int buildCounterListNetworkPathsResponse = 0;
api.ListNetworkPathsResponse buildListNetworkPathsResponse() {
  final o = api.ListNetworkPathsResponse();
  buildCounterListNetworkPathsResponse++;
  if (buildCounterListNetworkPathsResponse < 3) {
    o.networkPaths = buildUnnamed17();
    o.nextPageToken = 'foo';
  }
  buildCounterListNetworkPathsResponse--;
  return o;
}

void checkListNetworkPathsResponse(api.ListNetworkPathsResponse o) {
  buildCounterListNetworkPathsResponse++;
  if (buildCounterListNetworkPathsResponse < 3) {
    checkUnnamed17(o.networkPaths!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListNetworkPathsResponse--;
}

core.List<api.Operation> buildUnnamed18() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed18(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed18();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed18(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.VpcFlowLogsConfig> buildUnnamed20() => [
  buildVpcFlowLogsConfig(),
  buildVpcFlowLogsConfig(),
];

void checkUnnamed20(core.List<api.VpcFlowLogsConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVpcFlowLogsConfig(o[0]);
  checkVpcFlowLogsConfig(o[1]);
}

core.int buildCounterListVpcFlowLogsConfigsResponse = 0;
api.ListVpcFlowLogsConfigsResponse buildListVpcFlowLogsConfigsResponse() {
  final o = api.ListVpcFlowLogsConfigsResponse();
  buildCounterListVpcFlowLogsConfigsResponse++;
  if (buildCounterListVpcFlowLogsConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed19();
    o.vpcFlowLogsConfigs = buildUnnamed20();
  }
  buildCounterListVpcFlowLogsConfigsResponse--;
  return o;
}

void checkListVpcFlowLogsConfigsResponse(api.ListVpcFlowLogsConfigsResponse o) {
  buildCounterListVpcFlowLogsConfigsResponse++;
  if (buildCounterListVpcFlowLogsConfigsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed19(o.unreachable!);
    checkUnnamed20(o.vpcFlowLogsConfigs!);
  }
  buildCounterListVpcFlowLogsConfigsResponse--;
}

core.List<api.WebPath> buildUnnamed21() => [buildWebPath(), buildWebPath()];

void checkUnnamed21(core.List<api.WebPath> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebPath(o[0]);
  checkWebPath(o[1]);
}

core.int buildCounterListWebPathsResponse = 0;
api.ListWebPathsResponse buildListWebPathsResponse() {
  final o = api.ListWebPathsResponse();
  buildCounterListWebPathsResponse++;
  if (buildCounterListWebPathsResponse < 3) {
    o.nextPageToken = 'foo';
    o.webPaths = buildUnnamed21();
  }
  buildCounterListWebPathsResponse--;
  return o;
}

void checkListWebPathsResponse(api.ListWebPathsResponse o) {
  buildCounterListWebPathsResponse++;
  if (buildCounterListWebPathsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed21(o.webPaths!);
  }
  buildCounterListWebPathsResponse--;
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLoadBalancerBackend = 0;
api.LoadBalancerBackend buildLoadBalancerBackend() {
  final o = api.LoadBalancerBackend();
  buildCounterLoadBalancerBackend++;
  if (buildCounterLoadBalancerBackend < 3) {
    o.displayName = 'foo';
    o.healthCheckAllowingFirewallRules = buildUnnamed22();
    o.healthCheckBlockingFirewallRules = buildUnnamed23();
    o.healthCheckFirewallState = 'foo';
    o.uri = 'foo';
  }
  buildCounterLoadBalancerBackend--;
  return o;
}

void checkLoadBalancerBackend(api.LoadBalancerBackend o) {
  buildCounterLoadBalancerBackend++;
  if (buildCounterLoadBalancerBackend < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed22(o.healthCheckAllowingFirewallRules!);
    checkUnnamed23(o.healthCheckBlockingFirewallRules!);
    unittest.expect(o.healthCheckFirewallState!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
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
    unittest.expect(o.backendBucketUri!, unittest.equals('foo'));
    unittest.expect(o.backendServiceUri!, unittest.equals('foo'));
    unittest.expect(o.healthCheckFirewallsConfigState!, unittest.equals('foo'));
    unittest.expect(o.healthCheckUri!, unittest.equals('foo'));
    unittest.expect(o.instanceGroupUri!, unittest.equals('foo'));
    unittest.expect(o.instanceUri!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.networkEndpointGroupUri!, unittest.equals('foo'));
    unittest.expect(o.pscGoogleApiTarget!, unittest.equals('foo'));
    unittest.expect(o.pscServiceAttachmentUri!, unittest.equals('foo'));
  }
  buildCounterLoadBalancerBackendInfo--;
}

core.List<api.LoadBalancerBackend> buildUnnamed24() => [
  buildLoadBalancerBackend(),
  buildLoadBalancerBackend(),
];

void checkUnnamed24(core.List<api.LoadBalancerBackend> o) {
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
    o.backends = buildUnnamed24();
    o.healthCheckUri = 'foo';
    o.loadBalancerType = 'foo';
  }
  buildCounterLoadBalancerInfo--;
  return o;
}

void checkLoadBalancerInfo(api.LoadBalancerInfo o) {
  buildCounterLoadBalancerInfo++;
  if (buildCounterLoadBalancerInfo < 3) {
    unittest.expect(o.backendType!, unittest.equals('foo'));
    unittest.expect(o.backendUri!, unittest.equals('foo'));
    checkUnnamed24(o.backends!);
    unittest.expect(o.healthCheckUri!, unittest.equals('foo'));
    unittest.expect(o.loadBalancerType!, unittest.equals('foo'));
  }
  buildCounterLoadBalancerInfo--;
}

core.Map<core.String, core.String> buildUnnamed25() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed25(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed26() => {
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

void checkUnnamed26(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed25();
    o.locationId = 'foo';
    o.metadata = buildUnnamed26();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed25(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed26(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.NetworkInterface> buildUnnamed28() => [
  buildNetworkInterface(),
  buildNetworkInterface(),
];

void checkUnnamed28(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
}

core.List<api.ProviderTag> buildUnnamed29() => [
  buildProviderTag(),
  buildProviderTag(),
];

void checkUnnamed29(core.List<api.ProviderTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProviderTag(o[0]);
  checkProviderTag(o[1]);
}

core.int buildCounterMonitoringPoint = 0;
api.MonitoringPoint buildMonitoringPoint() {
  final o = api.MonitoringPoint();
  buildCounterMonitoringPoint++;
  if (buildCounterMonitoringPoint < 3) {
    o.autoGeoLocationEnabled = true;
    o.connectionStatus = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.errors = buildUnnamed27();
    o.geoLocation = buildGeoLocation();
    o.host = buildHost();
    o.hostname = 'foo';
    o.name = 'foo';
    o.networkInterfaces = buildUnnamed28();
    o.originatingIp = 'foo';
    o.providerTags = buildUnnamed29();
    o.type = 'foo';
    o.updateTime = 'foo';
    o.upgradeAvailable = true;
    o.upgradeType = 'foo';
    o.version = 'foo';
  }
  buildCounterMonitoringPoint--;
  return o;
}

void checkMonitoringPoint(api.MonitoringPoint o) {
  buildCounterMonitoringPoint++;
  if (buildCounterMonitoringPoint < 3) {
    unittest.expect(o.autoGeoLocationEnabled!, unittest.isTrue);
    unittest.expect(o.connectionStatus!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed27(o.errors!);
    checkGeoLocation(o.geoLocation!);
    checkHost(o.host!);
    unittest.expect(o.hostname!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed28(o.networkInterfaces!);
    unittest.expect(o.originatingIp!, unittest.equals('foo'));
    checkUnnamed29(o.providerTags!);
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.upgradeAvailable!, unittest.isTrue);
    unittest.expect(o.upgradeType!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterMonitoringPoint--;
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
    unittest.expect(o.natGatewayName!, unittest.equals('foo'));
    unittest.expect(o.networkUri!, unittest.equals('foo'));
    unittest.expect(o.newDestinationIp!, unittest.equals('foo'));
    unittest.expect(o.newDestinationPort!, unittest.equals(42));
    unittest.expect(o.newSourceIp!, unittest.equals('foo'));
    unittest.expect(o.newSourcePort!, unittest.equals(42));
    unittest.expect(o.oldDestinationIp!, unittest.equals('foo'));
    unittest.expect(o.oldDestinationPort!, unittest.equals(42));
    unittest.expect(o.oldSourceIp!, unittest.equals('foo'));
    unittest.expect(o.oldSourcePort!, unittest.equals(42));
    unittest.expect(o.protocol!, unittest.equals('foo'));
    unittest.expect(o.routerUri!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
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
    o.matchedSubnetUri = 'foo';
    o.region = 'foo';
    o.uri = 'foo';
  }
  buildCounterNetworkInfo--;
  return o;
}

void checkNetworkInfo(api.NetworkInfo o) {
  buildCounterNetworkInfo++;
  if (buildCounterNetworkInfo < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.matchedIpRange!, unittest.equals('foo'));
    unittest.expect(o.matchedSubnetUri!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterNetworkInfo--;
}

core.int buildCounterNetworkInterface = 0;
api.NetworkInterface buildNetworkInterface() {
  final o = api.NetworkInterface();
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    o.adapterDescription = 'foo';
    o.cidr = 'foo';
    o.interfaceName = 'foo';
    o.ipAddress = 'foo';
    o.macAddress = 'foo';
    o.speed = 'foo';
    o.vlanId = 'foo';
  }
  buildCounterNetworkInterface--;
  return o;
}

void checkNetworkInterface(api.NetworkInterface o) {
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    unittest.expect(o.adapterDescription!, unittest.equals('foo'));
    unittest.expect(o.cidr!, unittest.equals('foo'));
    unittest.expect(o.interfaceName!, unittest.equals('foo'));
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.macAddress!, unittest.equals('foo'));
    unittest.expect(o.speed!, unittest.equals('foo'));
    unittest.expect(o.vlanId!, unittest.equals('foo'));
  }
  buildCounterNetworkInterface--;
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNetworkMonitoringProvider = 0;
api.NetworkMonitoringProvider buildNetworkMonitoringProvider() {
  final o = api.NetworkMonitoringProvider();
  buildCounterNetworkMonitoringProvider++;
  if (buildCounterNetworkMonitoringProvider < 3) {
    o.createTime = 'foo';
    o.errors = buildUnnamed30();
    o.name = 'foo';
    o.providerType = 'foo';
    o.providerUri = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterNetworkMonitoringProvider--;
  return o;
}

void checkNetworkMonitoringProvider(api.NetworkMonitoringProvider o) {
  buildCounterNetworkMonitoringProvider++;
  if (buildCounterNetworkMonitoringProvider < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed30(o.errors!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.providerType!, unittest.equals('foo'));
    unittest.expect(o.providerUri!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterNetworkMonitoringProvider--;
}

core.List<api.ProviderTag> buildUnnamed31() => [
  buildProviderTag(),
  buildProviderTag(),
];

void checkUnnamed31(core.List<api.ProviderTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProviderTag(o[0]);
  checkProviderTag(o[1]);
}

core.int buildCounterNetworkPath = 0;
api.NetworkPath buildNetworkPath() {
  final o = api.NetworkPath();
  buildCounterNetworkPath++;
  if (buildCounterNetworkPath < 3) {
    o.createTime = 'foo';
    o.destination = 'foo';
    o.destinationGeoLocation = buildGeoLocation();
    o.displayName = 'foo';
    o.dualEnded = true;
    o.monitoringEnabled = true;
    o.monitoringPolicyDisplayName = 'foo';
    o.monitoringPolicyId = 'foo';
    o.monitoringStatus = 'foo';
    o.name = 'foo';
    o.networkProtocol = 'foo';
    o.providerTags = buildUnnamed31();
    o.providerUiUri = 'foo';
    o.sourceMonitoringPointId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterNetworkPath--;
  return o;
}

void checkNetworkPath(api.NetworkPath o) {
  buildCounterNetworkPath++;
  if (buildCounterNetworkPath < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.destination!, unittest.equals('foo'));
    checkGeoLocation(o.destinationGeoLocation!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.dualEnded!, unittest.isTrue);
    unittest.expect(o.monitoringEnabled!, unittest.isTrue);
    unittest.expect(o.monitoringPolicyDisplayName!, unittest.equals('foo'));
    unittest.expect(o.monitoringPolicyId!, unittest.equals('foo'));
    unittest.expect(o.monitoringStatus!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.networkProtocol!, unittest.equals('foo'));
    checkUnnamed31(o.providerTags!);
    unittest.expect(o.providerUiUri!, unittest.equals('foo'));
    unittest.expect(o.sourceMonitoringPointId!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterNetworkPath--;
}

core.Map<core.String, core.Object?> buildUnnamed32() => {
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

void checkUnnamed32(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed33() => {
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

void checkUnnamed33(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed32();
    o.name = 'foo';
    o.response = buildUnnamed33();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed32(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed33(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed34() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed34(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed35() => [buildBinding(), buildBinding()];

void checkUnnamed35(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed34();
    o.bindings = buildUnnamed35();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed34(o.auditConfigs!);
    checkUnnamed35(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.List<api.SingleEdgeResponse> buildUnnamed36() => [
  buildSingleEdgeResponse(),
  buildSingleEdgeResponse(),
];

void checkUnnamed36(core.List<api.SingleEdgeResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSingleEdgeResponse(o[0]);
  checkSingleEdgeResponse(o[1]);
}

core.int buildCounterProbingDetails = 0;
api.ProbingDetails buildProbingDetails() {
  final o = api.ProbingDetails();
  buildCounterProbingDetails++;
  if (buildCounterProbingDetails < 3) {
    o.abortCause = 'foo';
    o.destinationEgressLocation = buildEdgeLocation();
    o.edgeResponses = buildUnnamed36();
    o.endpointInfo = buildEndpointInfo();
    o.error = buildStatus();
    o.probedAllDevices = true;
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
    unittest.expect(o.abortCause!, unittest.equals('foo'));
    checkEdgeLocation(o.destinationEgressLocation!);
    checkUnnamed36(o.edgeResponses!);
    checkEndpointInfo(o.endpointInfo!);
    checkStatus(o.error!);
    unittest.expect(o.probedAllDevices!, unittest.isTrue);
    checkLatencyDistribution(o.probingLatency!);
    unittest.expect(o.result!, unittest.equals('foo'));
    unittest.expect(o.sentProbeCount!, unittest.equals(42));
    unittest.expect(o.successfulProbeCount!, unittest.equals(42));
    unittest.expect(o.verifyTime!, unittest.equals('foo'));
  }
  buildCounterProbingDetails--;
}

core.int buildCounterProviderTag = 0;
api.ProviderTag buildProviderTag() {
  final o = api.ProviderTag();
  buildCounterProviderTag++;
  if (buildCounterProviderTag < 3) {
    o.category = 'foo';
    o.resourceType = 'foo';
    o.value = 'foo';
  }
  buildCounterProviderTag--;
  return o;
}

void checkProviderTag(api.ProviderTag o) {
  buildCounterProviderTag++;
  if (buildCounterProviderTag < 3) {
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterProviderTag--;
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
    unittest.expect(o.networkUri!, unittest.equals('foo'));
    unittest.expect(o.newDestinationIp!, unittest.equals('foo'));
    unittest.expect(o.newDestinationPort!, unittest.equals(42));
    unittest.expect(o.newSourceIp!, unittest.equals('foo'));
    unittest.expect(o.newSourcePort!, unittest.equals(42));
    unittest.expect(o.oldDestinationIp!, unittest.equals('foo'));
    unittest.expect(o.oldDestinationPort!, unittest.equals(42));
    unittest.expect(o.oldSourceIp!, unittest.equals('foo'));
    unittest.expect(o.oldSourcePort!, unittest.equals(42));
    unittest.expect(o.protocol!, unittest.equals('foo'));
    unittest.expect(o.subnetUri!, unittest.equals('foo'));
  }
  buildCounterProxyConnectionInfo--;
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.VpcFlowLogsConfig> buildUnnamed38() => [
  buildVpcFlowLogsConfig(),
  buildVpcFlowLogsConfig(),
];

void checkUnnamed38(core.List<api.VpcFlowLogsConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVpcFlowLogsConfig(o[0]);
  checkVpcFlowLogsConfig(o[1]);
}

core.int buildCounterQueryOrgVpcFlowLogsConfigsResponse = 0;
api.QueryOrgVpcFlowLogsConfigsResponse
buildQueryOrgVpcFlowLogsConfigsResponse() {
  final o = api.QueryOrgVpcFlowLogsConfigsResponse();
  buildCounterQueryOrgVpcFlowLogsConfigsResponse++;
  if (buildCounterQueryOrgVpcFlowLogsConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed37();
    o.vpcFlowLogsConfigs = buildUnnamed38();
  }
  buildCounterQueryOrgVpcFlowLogsConfigsResponse--;
  return o;
}

void checkQueryOrgVpcFlowLogsConfigsResponse(
  api.QueryOrgVpcFlowLogsConfigsResponse o,
) {
  buildCounterQueryOrgVpcFlowLogsConfigsResponse++;
  if (buildCounterQueryOrgVpcFlowLogsConfigsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed37(o.unreachable!);
    checkUnnamed38(o.vpcFlowLogsConfigs!);
  }
  buildCounterQueryOrgVpcFlowLogsConfigsResponse--;
}

core.List<api.Trace> buildUnnamed39() => [buildTrace(), buildTrace()];

void checkUnnamed39(core.List<api.Trace> o) {
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
    o.traces = buildUnnamed39();
    o.verifyTime = 'foo';
  }
  buildCounterReachabilityDetails--;
  return o;
}

void checkReachabilityDetails(api.ReachabilityDetails o) {
  buildCounterReachabilityDetails++;
  if (buildCounterReachabilityDetails < 3) {
    checkStatus(o.error!);
    unittest.expect(o.result!, unittest.equals('foo'));
    checkUnnamed39(o.traces!);
    unittest.expect(o.verifyTime!, unittest.equals('foo'));
  }
  buildCounterReachabilityDetails--;
}

core.int buildCounterRedisClusterInfo = 0;
api.RedisClusterInfo buildRedisClusterInfo() {
  final o = api.RedisClusterInfo();
  buildCounterRedisClusterInfo++;
  if (buildCounterRedisClusterInfo < 3) {
    o.discoveryEndpointIpAddress = 'foo';
    o.displayName = 'foo';
    o.location = 'foo';
    o.networkUri = 'foo';
    o.secondaryEndpointIpAddress = 'foo';
    o.uri = 'foo';
  }
  buildCounterRedisClusterInfo--;
  return o;
}

void checkRedisClusterInfo(api.RedisClusterInfo o) {
  buildCounterRedisClusterInfo++;
  if (buildCounterRedisClusterInfo < 3) {
    unittest.expect(o.discoveryEndpointIpAddress!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.networkUri!, unittest.equals('foo'));
    unittest.expect(o.secondaryEndpointIpAddress!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterRedisClusterInfo--;
}

core.int buildCounterRedisInstanceInfo = 0;
api.RedisInstanceInfo buildRedisInstanceInfo() {
  final o = api.RedisInstanceInfo();
  buildCounterRedisInstanceInfo++;
  if (buildCounterRedisInstanceInfo < 3) {
    o.displayName = 'foo';
    o.networkUri = 'foo';
    o.primaryEndpointIp = 'foo';
    o.readEndpointIp = 'foo';
    o.region = 'foo';
    o.uri = 'foo';
  }
  buildCounterRedisInstanceInfo--;
  return o;
}

void checkRedisInstanceInfo(api.RedisInstanceInfo o) {
  buildCounterRedisInstanceInfo++;
  if (buildCounterRedisInstanceInfo < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.networkUri!, unittest.equals('foo'));
    unittest.expect(o.primaryEndpointIp!, unittest.equals('foo'));
    unittest.expect(o.readEndpointIp!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterRedisInstanceInfo--;
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

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed42() => ['foo', 'foo'];

void checkUnnamed42(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed43() => ['foo', 'foo'];

void checkUnnamed43(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRouteInfo = 0;
api.RouteInfo buildRouteInfo() {
  final o = api.RouteInfo();
  buildCounterRouteInfo++;
  if (buildCounterRouteInfo < 3) {
    o.advertisedRouteNextHopUri = 'foo';
    o.advertisedRouteSourceRouterUri = 'foo';
    o.destIpRange = 'foo';
    o.destPortRanges = buildUnnamed40();
    o.displayName = 'foo';
    o.instanceTags = buildUnnamed41();
    o.nccHubRouteUri = 'foo';
    o.nccHubUri = 'foo';
    o.nccSpokeUri = 'foo';
    o.networkUri = 'foo';
    o.nextHop = 'foo';
    o.nextHopNetworkUri = 'foo';
    o.nextHopType = 'foo';
    o.nextHopUri = 'foo';
    o.originatingRouteDisplayName = 'foo';
    o.originatingRouteUri = 'foo';
    o.priority = 42;
    o.protocols = buildUnnamed42();
    o.region = 'foo';
    o.routeScope = 'foo';
    o.routeType = 'foo';
    o.srcIpRange = 'foo';
    o.srcPortRanges = buildUnnamed43();
    o.uri = 'foo';
  }
  buildCounterRouteInfo--;
  return o;
}

void checkRouteInfo(api.RouteInfo o) {
  buildCounterRouteInfo++;
  if (buildCounterRouteInfo < 3) {
    unittest.expect(o.advertisedRouteNextHopUri!, unittest.equals('foo'));
    unittest.expect(o.advertisedRouteSourceRouterUri!, unittest.equals('foo'));
    unittest.expect(o.destIpRange!, unittest.equals('foo'));
    checkUnnamed40(o.destPortRanges!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed41(o.instanceTags!);
    unittest.expect(o.nccHubRouteUri!, unittest.equals('foo'));
    unittest.expect(o.nccHubUri!, unittest.equals('foo'));
    unittest.expect(o.nccSpokeUri!, unittest.equals('foo'));
    unittest.expect(o.networkUri!, unittest.equals('foo'));
    unittest.expect(o.nextHop!, unittest.equals('foo'));
    unittest.expect(o.nextHopNetworkUri!, unittest.equals('foo'));
    unittest.expect(o.nextHopType!, unittest.equals('foo'));
    unittest.expect(o.nextHopUri!, unittest.equals('foo'));
    unittest.expect(o.originatingRouteDisplayName!, unittest.equals('foo'));
    unittest.expect(o.originatingRouteUri!, unittest.equals('foo'));
    unittest.expect(o.priority!, unittest.equals(42));
    checkUnnamed42(o.protocols!);
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.routeScope!, unittest.equals('foo'));
    unittest.expect(o.routeType!, unittest.equals('foo'));
    unittest.expect(o.srcIpRange!, unittest.equals('foo'));
    checkUnnamed43(o.srcPortRanges!);
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterRouteInfo--;
}

core.int buildCounterServerlessExternalConnectionInfo = 0;
api.ServerlessExternalConnectionInfo buildServerlessExternalConnectionInfo() {
  final o = api.ServerlessExternalConnectionInfo();
  buildCounterServerlessExternalConnectionInfo++;
  if (buildCounterServerlessExternalConnectionInfo < 3) {
    o.selectedIpAddress = 'foo';
  }
  buildCounterServerlessExternalConnectionInfo--;
  return o;
}

void checkServerlessExternalConnectionInfo(
  api.ServerlessExternalConnectionInfo o,
) {
  buildCounterServerlessExternalConnectionInfo++;
  if (buildCounterServerlessExternalConnectionInfo < 3) {
    unittest.expect(o.selectedIpAddress!, unittest.equals('foo'));
  }
  buildCounterServerlessExternalConnectionInfo--;
}

core.int buildCounterServerlessNegInfo = 0;
api.ServerlessNegInfo buildServerlessNegInfo() {
  final o = api.ServerlessNegInfo();
  buildCounterServerlessNegInfo++;
  if (buildCounterServerlessNegInfo < 3) {
    o.negUri = 'foo';
  }
  buildCounterServerlessNegInfo--;
  return o;
}

void checkServerlessNegInfo(api.ServerlessNegInfo o) {
  buildCounterServerlessNegInfo++;
  if (buildCounterServerlessNegInfo < 3) {
    unittest.expect(o.negUri!, unittest.equals('foo'));
  }
  buildCounterServerlessNegInfo--;
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

core.List<api.EffectiveVpcFlowLogsConfig> buildUnnamed44() => [
  buildEffectiveVpcFlowLogsConfig(),
  buildEffectiveVpcFlowLogsConfig(),
];

void checkUnnamed44(core.List<api.EffectiveVpcFlowLogsConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEffectiveVpcFlowLogsConfig(o[0]);
  checkEffectiveVpcFlowLogsConfig(o[1]);
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterShowEffectiveFlowLogsConfigsResponse = 0;
api.ShowEffectiveFlowLogsConfigsResponse
buildShowEffectiveFlowLogsConfigsResponse() {
  final o = api.ShowEffectiveFlowLogsConfigsResponse();
  buildCounterShowEffectiveFlowLogsConfigsResponse++;
  if (buildCounterShowEffectiveFlowLogsConfigsResponse < 3) {
    o.effectiveFlowLogsConfigs = buildUnnamed44();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed45();
  }
  buildCounterShowEffectiveFlowLogsConfigsResponse--;
  return o;
}

void checkShowEffectiveFlowLogsConfigsResponse(
  api.ShowEffectiveFlowLogsConfigsResponse o,
) {
  buildCounterShowEffectiveFlowLogsConfigsResponse++;
  if (buildCounterShowEffectiveFlowLogsConfigsResponse < 3) {
    checkUnnamed44(o.effectiveFlowLogsConfigs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed45(o.unreachable!);
  }
  buildCounterShowEffectiveFlowLogsConfigsResponse--;
}

core.int buildCounterSingleEdgeResponse = 0;
api.SingleEdgeResponse buildSingleEdgeResponse() {
  final o = api.SingleEdgeResponse();
  buildCounterSingleEdgeResponse++;
  if (buildCounterSingleEdgeResponse < 3) {
    o.destinationEgressLocation = buildEdgeLocation();
    o.destinationRouter = 'foo';
    o.probingLatency = buildLatencyDistribution();
    o.result = 'foo';
    o.sentProbeCount = 42;
    o.successfulProbeCount = 42;
  }
  buildCounterSingleEdgeResponse--;
  return o;
}

void checkSingleEdgeResponse(api.SingleEdgeResponse o) {
  buildCounterSingleEdgeResponse++;
  if (buildCounterSingleEdgeResponse < 3) {
    checkEdgeLocation(o.destinationEgressLocation!);
    unittest.expect(o.destinationRouter!, unittest.equals('foo'));
    checkLatencyDistribution(o.probingLatency!);
    unittest.expect(o.result!, unittest.equals('foo'));
    unittest.expect(o.sentProbeCount!, unittest.equals(42));
    unittest.expect(o.successfulProbeCount!, unittest.equals(42));
  }
  buildCounterSingleEdgeResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed46() => {
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

void checkUnnamed46(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed47() => [
  buildUnnamed46(),
  buildUnnamed46(),
];

void checkUnnamed47(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed46(o[0]);
  checkUnnamed46(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed47();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed47(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
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
    o.directVpcEgressConnection = buildDirectVpcEgressConnectionInfo();
    o.drop = buildDropInfo();
    o.endpoint = buildEndpointInfo();
    o.firewall = buildFirewallInfo();
    o.forward = buildForwardInfo();
    o.forwardingRule = buildForwardingRuleInfo();
    o.gkeMaster = buildGKEMasterInfo();
    o.googleService = buildGoogleServiceInfo();
    o.hybridSubnet = buildHybridSubnetInfo();
    o.instance = buildInstanceInfo();
    o.interconnectAttachment = buildInterconnectAttachmentInfo();
    o.loadBalancer = buildLoadBalancerInfo();
    o.loadBalancerBackendInfo = buildLoadBalancerBackendInfo();
    o.nat = buildNatInfo();
    o.network = buildNetworkInfo();
    o.projectId = 'foo';
    o.proxyConnection = buildProxyConnectionInfo();
    o.redisCluster = buildRedisClusterInfo();
    o.redisInstance = buildRedisInstanceInfo();
    o.route = buildRouteInfo();
    o.serverlessExternalConnection = buildServerlessExternalConnectionInfo();
    o.serverlessNeg = buildServerlessNegInfo();
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
    unittest.expect(o.description!, unittest.equals('foo'));
    checkDirectVpcEgressConnectionInfo(o.directVpcEgressConnection!);
    checkDropInfo(o.drop!);
    checkEndpointInfo(o.endpoint!);
    checkFirewallInfo(o.firewall!);
    checkForwardInfo(o.forward!);
    checkForwardingRuleInfo(o.forwardingRule!);
    checkGKEMasterInfo(o.gkeMaster!);
    checkGoogleServiceInfo(o.googleService!);
    checkHybridSubnetInfo(o.hybridSubnet!);
    checkInstanceInfo(o.instance!);
    checkInterconnectAttachmentInfo(o.interconnectAttachment!);
    checkLoadBalancerInfo(o.loadBalancer!);
    checkLoadBalancerBackendInfo(o.loadBalancerBackendInfo!);
    checkNatInfo(o.nat!);
    checkNetworkInfo(o.network!);
    unittest.expect(o.projectId!, unittest.equals('foo'));
    checkProxyConnectionInfo(o.proxyConnection!);
    checkRedisClusterInfo(o.redisCluster!);
    checkRedisInstanceInfo(o.redisInstance!);
    checkRouteInfo(o.route!);
    checkServerlessExternalConnectionInfo(o.serverlessExternalConnection!);
    checkServerlessNegInfo(o.serverlessNeg!);
    unittest.expect(o.state!, unittest.equals('foo'));
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
    unittest.expect(o.bucket!, unittest.equals('foo'));
  }
  buildCounterStorageBucketInfo--;
}

core.List<core.String> buildUnnamed48() => ['foo', 'foo'];

void checkUnnamed48(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed48();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed48(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed49();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed49(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<api.Step> buildUnnamed50() => [buildStep(), buildStep()];

void checkUnnamed50(core.List<api.Step> o) {
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
    o.steps = buildUnnamed50();
  }
  buildCounterTrace--;
  return o;
}

void checkTrace(api.Trace o) {
  buildCounterTrace++;
  if (buildCounterTrace < 3) {
    checkEndpointInfo(o.endpointInfo!);
    unittest.expect(o.forwardTraceId!, unittest.equals(42));
    checkUnnamed50(o.steps!);
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
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterVpcConnectorInfo--;
}

core.Map<core.String, core.String> buildUnnamed51() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed51(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed52() => ['foo', 'foo'];

void checkUnnamed52(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVpcFlowLogsConfig = 0;
api.VpcFlowLogsConfig buildVpcFlowLogsConfig() {
  final o = api.VpcFlowLogsConfig();
  buildCounterVpcFlowLogsConfig++;
  if (buildCounterVpcFlowLogsConfig < 3) {
    o.aggregationInterval = 'foo';
    o.createTime = 'foo';
    o.crossProjectMetadata = 'foo';
    o.description = 'foo';
    o.filterExpr = 'foo';
    o.flowSampling = 42.0;
    o.interconnectAttachment = 'foo';
    o.labels = buildUnnamed51();
    o.metadata = 'foo';
    o.metadataFields = buildUnnamed52();
    o.name = 'foo';
    o.network = 'foo';
    o.state = 'foo';
    o.subnet = 'foo';
    o.targetResourceState = 'foo';
    o.updateTime = 'foo';
    o.vpnTunnel = 'foo';
  }
  buildCounterVpcFlowLogsConfig--;
  return o;
}

void checkVpcFlowLogsConfig(api.VpcFlowLogsConfig o) {
  buildCounterVpcFlowLogsConfig++;
  if (buildCounterVpcFlowLogsConfig < 3) {
    unittest.expect(o.aggregationInterval!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.crossProjectMetadata!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.filterExpr!, unittest.equals('foo'));
    unittest.expect(o.flowSampling!, unittest.equals(42.0));
    unittest.expect(o.interconnectAttachment!, unittest.equals('foo'));
    checkUnnamed51(o.labels!);
    unittest.expect(o.metadata!, unittest.equals('foo'));
    checkUnnamed52(o.metadataFields!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.subnet!, unittest.equals('foo'));
    unittest.expect(o.targetResourceState!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.vpnTunnel!, unittest.equals('foo'));
  }
  buildCounterVpcFlowLogsConfig--;
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
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.networkUri!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
    unittest.expect(o.vpnTunnelUri!, unittest.equals('foo'));
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
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.networkUri!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.remoteGateway!, unittest.equals('foo'));
    unittest.expect(o.remoteGatewayIp!, unittest.equals('foo'));
    unittest.expect(o.routingType!, unittest.equals('foo'));
    unittest.expect(o.sourceGateway!, unittest.equals('foo'));
    unittest.expect(o.sourceGatewayIp!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterVpnTunnelInfo--;
}

core.List<api.ProviderTag> buildUnnamed53() => [
  buildProviderTag(),
  buildProviderTag(),
];

void checkUnnamed53(core.List<api.ProviderTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProviderTag(o[0]);
  checkProviderTag(o[1]);
}

core.int buildCounterWebPath = 0;
api.WebPath buildWebPath() {
  final o = api.WebPath();
  buildCounterWebPath++;
  if (buildCounterWebPath < 3) {
    o.createTime = 'foo';
    o.destination = 'foo';
    o.displayName = 'foo';
    o.interval = 'foo';
    o.monitoringEnabled = true;
    o.monitoringPolicyDisplayName = 'foo';
    o.monitoringPolicyId = 'foo';
    o.monitoringStatus = 'foo';
    o.name = 'foo';
    o.providerTags = buildUnnamed53();
    o.providerUiUri = 'foo';
    o.relatedNetworkPathId = 'foo';
    o.sourceMonitoringPointId = 'foo';
    o.updateTime = 'foo';
    o.workflowType = 'foo';
  }
  buildCounterWebPath--;
  return o;
}

void checkWebPath(api.WebPath o) {
  buildCounterWebPath++;
  if (buildCounterWebPath < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.destination!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.interval!, unittest.equals('foo'));
    unittest.expect(o.monitoringEnabled!, unittest.isTrue);
    unittest.expect(o.monitoringPolicyDisplayName!, unittest.equals('foo'));
    unittest.expect(o.monitoringPolicyId!, unittest.equals('foo'));
    unittest.expect(o.monitoringStatus!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed53(o.providerTags!);
    unittest.expect(o.providerUiUri!, unittest.equals('foo'));
    unittest.expect(o.relatedNetworkPathId!, unittest.equals('foo'));
    unittest.expect(o.sourceMonitoringPointId!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.workflowType!, unittest.equals('foo'));
  }
  buildCounterWebPath--;
}

core.List<core.String> buildUnnamed54() => ['foo', 'foo'];

void checkUnnamed54(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AbortInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAbortInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AbortInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAbortInfo(od);
    });
  });

  unittest.group('obj-schema-AppEngineVersionEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppEngineVersionEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppEngineVersionEndpoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppEngineVersionEndpoint(od);
    });
  });

  unittest.group('obj-schema-AppEngineVersionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppEngineVersionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppEngineVersionInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppEngineVersionInfo(od);
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

  unittest.group('obj-schema-CloudFunctionEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudFunctionEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudFunctionEndpoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudFunctionEndpoint(od);
    });
  });

  unittest.group('obj-schema-CloudFunctionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudFunctionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudFunctionInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudFunctionInfo(od);
    });
  });

  unittest.group('obj-schema-CloudRunRevisionEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRunRevisionEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRunRevisionEndpoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudRunRevisionEndpoint(od);
    });
  });

  unittest.group('obj-schema-CloudRunRevisionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRunRevisionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRunRevisionInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudRunRevisionInfo(od);
    });
  });

  unittest.group('obj-schema-CloudSQLInstanceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudSQLInstanceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudSQLInstanceInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudSQLInstanceInfo(od);
    });
  });

  unittest.group('obj-schema-ConnectivityTest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectivityTest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectivityTest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnectivityTest(od);
    });
  });

  unittest.group('obj-schema-DeliverInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeliverInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeliverInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeliverInfo(od);
    });
  });

  unittest.group('obj-schema-DirectVpcEgressConnectionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDirectVpcEgressConnectionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DirectVpcEgressConnectionInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDirectVpcEgressConnectionInfo(od);
    });
  });

  unittest.group('obj-schema-DropInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDropInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DropInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDropInfo(od);
    });
  });

  unittest.group('obj-schema-EdgeLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEdgeLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EdgeLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEdgeLocation(od);
    });
  });

  unittest.group('obj-schema-EffectiveVpcFlowLogsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEffectiveVpcFlowLogsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EffectiveVpcFlowLogsConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEffectiveVpcFlowLogsConfig(od);
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

  unittest.group('obj-schema-EndpointInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpointInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndpointInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEndpointInfo(od);
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

  unittest.group('obj-schema-FirewallInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFirewallInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FirewallInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFirewallInfo(od);
    });
  });

  unittest.group('obj-schema-ForwardInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildForwardInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ForwardInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkForwardInfo(od);
    });
  });

  unittest.group('obj-schema-ForwardingRuleInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildForwardingRuleInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ForwardingRuleInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkForwardingRuleInfo(od);
    });
  });

  unittest.group('obj-schema-GKEMasterInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGKEMasterInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GKEMasterInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGKEMasterInfo(od);
    });
  });

  unittest.group('obj-schema-GeoLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeoLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeoLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGeoLocation(od);
    });
  });

  unittest.group('obj-schema-GoogleServiceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleServiceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleServiceInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleServiceInfo(od);
    });
  });

  unittest.group('obj-schema-Host', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHost();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Host.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHost(od);
    });
  });

  unittest.group('obj-schema-HybridSubnetInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHybridSubnetInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HybridSubnetInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHybridSubnetInfo(od);
    });
  });

  unittest.group('obj-schema-InstanceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstanceInfo(od);
    });
  });

  unittest.group('obj-schema-InterconnectAttachmentInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterconnectAttachmentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InterconnectAttachmentInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterconnectAttachmentInfo(od);
    });
  });

  unittest.group('obj-schema-LatencyDistribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatencyDistribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LatencyDistribution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLatencyDistribution(od);
    });
  });

  unittest.group('obj-schema-LatencyPercentile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatencyPercentile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LatencyPercentile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLatencyPercentile(od);
    });
  });

  unittest.group('obj-schema-ListConnectivityTestsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectivityTestsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectivityTestsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConnectivityTestsResponse(od);
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

  unittest.group('obj-schema-ListMonitoringPointsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMonitoringPointsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMonitoringPointsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMonitoringPointsResponse(od);
    });
  });

  unittest.group('obj-schema-ListNetworkMonitoringProvidersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNetworkMonitoringProvidersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNetworkMonitoringProvidersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListNetworkMonitoringProvidersResponse(od);
    });
  });

  unittest.group('obj-schema-ListNetworkPathsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNetworkPathsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNetworkPathsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListNetworkPathsResponse(od);
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

  unittest.group('obj-schema-ListVpcFlowLogsConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVpcFlowLogsConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVpcFlowLogsConfigsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListVpcFlowLogsConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListWebPathsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWebPathsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWebPathsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListWebPathsResponse(od);
    });
  });

  unittest.group('obj-schema-LoadBalancerBackend', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoadBalancerBackend();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoadBalancerBackend.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoadBalancerBackend(od);
    });
  });

  unittest.group('obj-schema-LoadBalancerBackendInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoadBalancerBackendInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoadBalancerBackendInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoadBalancerBackendInfo(od);
    });
  });

  unittest.group('obj-schema-LoadBalancerInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoadBalancerInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoadBalancerInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoadBalancerInfo(od);
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

  unittest.group('obj-schema-MonitoringPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoringPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoringPoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMonitoringPoint(od);
    });
  });

  unittest.group('obj-schema-NatInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNatInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NatInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNatInfo(od);
    });
  });

  unittest.group('obj-schema-NetworkInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkInfo(od);
    });
  });

  unittest.group('obj-schema-NetworkInterface', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkInterface();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkInterface.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkInterface(od);
    });
  });

  unittest.group('obj-schema-NetworkMonitoringProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkMonitoringProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkMonitoringProvider.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkMonitoringProvider(od);
    });
  });

  unittest.group('obj-schema-NetworkPath', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkPath();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkPath.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkPath(od);
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

  unittest.group('obj-schema-ProbingDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProbingDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProbingDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProbingDetails(od);
    });
  });

  unittest.group('obj-schema-ProviderTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProviderTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProviderTag.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProviderTag(od);
    });
  });

  unittest.group('obj-schema-ProxyConnectionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProxyConnectionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProxyConnectionInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProxyConnectionInfo(od);
    });
  });

  unittest.group('obj-schema-QueryOrgVpcFlowLogsConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryOrgVpcFlowLogsConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryOrgVpcFlowLogsConfigsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryOrgVpcFlowLogsConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ReachabilityDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReachabilityDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReachabilityDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReachabilityDetails(od);
    });
  });

  unittest.group('obj-schema-RedisClusterInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRedisClusterInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RedisClusterInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRedisClusterInfo(od);
    });
  });

  unittest.group('obj-schema-RedisInstanceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRedisInstanceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RedisInstanceInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRedisInstanceInfo(od);
    });
  });

  unittest.group('obj-schema-RerunConnectivityTestRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRerunConnectivityTestRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RerunConnectivityTestRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRerunConnectivityTestRequest(od);
    });
  });

  unittest.group('obj-schema-RouteInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRouteInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RouteInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRouteInfo(od);
    });
  });

  unittest.group('obj-schema-ServerlessExternalConnectionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServerlessExternalConnectionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServerlessExternalConnectionInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServerlessExternalConnectionInfo(od);
    });
  });

  unittest.group('obj-schema-ServerlessNegInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServerlessNegInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServerlessNegInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServerlessNegInfo(od);
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

  unittest.group('obj-schema-ShowEffectiveFlowLogsConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShowEffectiveFlowLogsConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShowEffectiveFlowLogsConfigsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShowEffectiveFlowLogsConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-SingleEdgeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSingleEdgeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SingleEdgeResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSingleEdgeResponse(od);
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

  unittest.group('obj-schema-Step', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Step.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStep(od);
    });
  });

  unittest.group('obj-schema-StorageBucketInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStorageBucketInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StorageBucketInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStorageBucketInfo(od);
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

  unittest.group('obj-schema-Trace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Trace.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTrace(od);
    });
  });

  unittest.group('obj-schema-VpcConnectorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVpcConnectorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VpcConnectorInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVpcConnectorInfo(od);
    });
  });

  unittest.group('obj-schema-VpcFlowLogsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVpcFlowLogsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VpcFlowLogsConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVpcFlowLogsConfig(od);
    });
  });

  unittest.group('obj-schema-VpnGatewayInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVpnGatewayInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VpnGatewayInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVpnGatewayInfo(od);
    });
  });

  unittest.group('obj-schema-VpnTunnelInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVpnTunnelInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VpnTunnelInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVpnTunnelInfo(od);
    });
  });

  unittest.group('obj-schema-WebPath', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebPath();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebPath.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWebPath(od);
    });
  });

  unittest.group('resource-OrganizationsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkManagementApi(mock).organizations.locations;
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
      final res = api.NetworkManagementApi(mock).organizations.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed54();
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

  unittest.group('resource-OrganizationsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(mock).organizations.locations.operations;
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
      final res =
          api.NetworkManagementApi(mock).organizations.locations.operations;
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
      final res =
          api.NetworkManagementApi(mock).organizations.locations.operations;
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
      final res =
          api.NetworkManagementApi(mock).organizations.locations.operations;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

  unittest.group('resource-OrganizationsLocationsVpcFlowLogsConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(
            mock,
          ).organizations.locations.vpcFlowLogsConfigs;
      final arg_request = buildVpcFlowLogsConfig();
      final arg_parent = 'foo';
      final arg_vpcFlowLogsConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.VpcFlowLogsConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkVpcFlowLogsConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['vpcFlowLogsConfigId']!.first,
            unittest.equals(arg_vpcFlowLogsConfigId),
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
        vpcFlowLogsConfigId: arg_vpcFlowLogsConfigId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(
            mock,
          ).organizations.locations.vpcFlowLogsConfigs;
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
      final res =
          api.NetworkManagementApi(
            mock,
          ).organizations.locations.vpcFlowLogsConfigs;
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
          final resp = convert.json.encode(buildVpcFlowLogsConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkVpcFlowLogsConfig(response as api.VpcFlowLogsConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(
            mock,
          ).organizations.locations.vpcFlowLogsConfigs;
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
            buildListVpcFlowLogsConfigsResponse(),
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
      checkListVpcFlowLogsConfigsResponse(
        response as api.ListVpcFlowLogsConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(
            mock,
          ).organizations.locations.vpcFlowLogsConfigs;
      final arg_request = buildVpcFlowLogsConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.VpcFlowLogsConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkVpcFlowLogsConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkManagementApi(mock).projects.locations;
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
      final res = api.NetworkManagementApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed55();
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

  unittest.group('resource-ProjectsLocationsGlobalConnectivityTestsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(
            mock,
          ).projects.locations.global.connectivityTests;
      final arg_request = buildConnectivityTest();
      final arg_parent = 'foo';
      final arg_testId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ConnectivityTest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        testId: arg_testId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(
            mock,
          ).projects.locations.global.connectivityTests;
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
      final res =
          api.NetworkManagementApi(
            mock,
          ).projects.locations.global.connectivityTests;
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
          final resp = convert.json.encode(buildConnectivityTest());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConnectivityTest(response as api.ConnectivityTest);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(
            mock,
          ).projects.locations.global.connectivityTests;
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
      final res =
          api.NetworkManagementApi(
            mock,
          ).projects.locations.global.connectivityTests;
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
            buildListConnectivityTestsResponse(),
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
      checkListConnectivityTestsResponse(
        response as api.ListConnectivityTestsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(
            mock,
          ).projects.locations.global.connectivityTests;
      final arg_request = buildConnectivityTest();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ConnectivityTest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

    unittest.test('method--rerun', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(
            mock,
          ).projects.locations.global.connectivityTests;
      final arg_request = buildRerunConnectivityTestRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RerunConnectivityTestRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.rerun(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(
            mock,
          ).projects.locations.global.connectivityTests;
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
      final res =
          api.NetworkManagementApi(
            mock,
          ).projects.locations.global.connectivityTests;
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

  unittest.group('resource-ProjectsLocationsGlobalOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(mock).projects.locations.global.operations;
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
      final res =
          api.NetworkManagementApi(mock).projects.locations.global.operations;
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
      final res =
          api.NetworkManagementApi(mock).projects.locations.global.operations;
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
      final res =
          api.NetworkManagementApi(mock).projects.locations.global.operations;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

  unittest.group('resource-ProjectsLocationsNetworkMonitoringProvidersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(
            mock,
          ).projects.locations.networkMonitoringProviders;
      final arg_request = buildNetworkMonitoringProvider();
      final arg_parent = 'foo';
      final arg_networkMonitoringProviderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.NetworkMonitoringProvider.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNetworkMonitoringProvider(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['networkMonitoringProviderId']!.first,
            unittest.equals(arg_networkMonitoringProviderId),
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
        networkMonitoringProviderId: arg_networkMonitoringProviderId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(
            mock,
          ).projects.locations.networkMonitoringProviders;
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
      final res =
          api.NetworkManagementApi(
            mock,
          ).projects.locations.networkMonitoringProviders;
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
          final resp = convert.json.encode(buildNetworkMonitoringProvider());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNetworkMonitoringProvider(response as api.NetworkMonitoringProvider);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(
            mock,
          ).projects.locations.networkMonitoringProviders;
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
            buildListNetworkMonitoringProvidersResponse(),
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
      checkListNetworkMonitoringProvidersResponse(
        response as api.ListNetworkMonitoringProvidersResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsNetworkMonitoringProvidersMonitoringPointsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkManagementApi(
              mock,
            ).projects.locations.networkMonitoringProviders.monitoringPoints;
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
            final resp = convert.json.encode(buildMonitoringPoint());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkMonitoringPoint(response as api.MonitoringPoint);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkManagementApi(
              mock,
            ).projects.locations.networkMonitoringProviders.monitoringPoints;
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
              buildListMonitoringPointsResponse(),
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
        checkListMonitoringPointsResponse(
          response as api.ListMonitoringPointsResponse,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsNetworkMonitoringProvidersNetworkPathsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkManagementApi(
              mock,
            ).projects.locations.networkMonitoringProviders.networkPaths;
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
            final resp = convert.json.encode(buildNetworkPath());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkNetworkPath(response as api.NetworkPath);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkManagementApi(
              mock,
            ).projects.locations.networkMonitoringProviders.networkPaths;
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
            final resp = convert.json.encode(buildListNetworkPathsResponse());
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
        checkListNetworkPathsResponse(response as api.ListNetworkPathsResponse);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsNetworkMonitoringProvidersWebPathsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkManagementApi(
              mock,
            ).projects.locations.networkMonitoringProviders.webPaths;
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
            final resp = convert.json.encode(buildWebPath());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkWebPath(response as api.WebPath);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkManagementApi(
              mock,
            ).projects.locations.networkMonitoringProviders.webPaths;
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
            final resp = convert.json.encode(buildListWebPathsResponse());
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
        checkListWebPathsResponse(response as api.ListWebPathsResponse);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsVpcFlowLogsConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(mock).projects.locations.vpcFlowLogsConfigs;
      final arg_request = buildVpcFlowLogsConfig();
      final arg_parent = 'foo';
      final arg_vpcFlowLogsConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.VpcFlowLogsConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkVpcFlowLogsConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['vpcFlowLogsConfigId']!.first,
            unittest.equals(arg_vpcFlowLogsConfigId),
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
        vpcFlowLogsConfigId: arg_vpcFlowLogsConfigId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(mock).projects.locations.vpcFlowLogsConfigs;
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
      final res =
          api.NetworkManagementApi(mock).projects.locations.vpcFlowLogsConfigs;
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
          final resp = convert.json.encode(buildVpcFlowLogsConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkVpcFlowLogsConfig(response as api.VpcFlowLogsConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(mock).projects.locations.vpcFlowLogsConfigs;
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
            buildListVpcFlowLogsConfigsResponse(),
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
      checkListVpcFlowLogsConfigsResponse(
        response as api.ListVpcFlowLogsConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(mock).projects.locations.vpcFlowLogsConfigs;
      final arg_request = buildVpcFlowLogsConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.VpcFlowLogsConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkVpcFlowLogsConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

    unittest.test('method--queryOrgVpcFlowLogsConfigs', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(mock).projects.locations.vpcFlowLogsConfigs;
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
          final resp = convert.json.encode(
            buildQueryOrgVpcFlowLogsConfigsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.queryOrgVpcFlowLogsConfigs(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkQueryOrgVpcFlowLogsConfigsResponse(
        response as api.QueryOrgVpcFlowLogsConfigsResponse,
      );
    });

    unittest.test('method--showEffectiveFlowLogsConfigs', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkManagementApi(mock).projects.locations.vpcFlowLogsConfigs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_resource = 'foo';
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
            queryMap['resource']!.first,
            unittest.equals(arg_resource),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildShowEffectiveFlowLogsConfigsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.showEffectiveFlowLogsConfigs(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        resource: arg_resource,
        $fields: arg_$fields,
      );
      checkShowEffectiveFlowLogsConfigsResponse(
        response as api.ShowEffectiveFlowLogsConfigsResponse,
      );
    });
  });
}
