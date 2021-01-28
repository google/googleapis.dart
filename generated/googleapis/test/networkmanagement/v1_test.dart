// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/networkmanagement/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAbortInfo = 0;
api.AbortInfo buildAbortInfo() {
  var o = api.AbortInfo();
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
    unittest.expect(o.cause, unittest.equals('foo'));
    unittest.expect(o.resourceUri, unittest.equals('foo'));
  }
  buildCounterAbortInfo--;
}

core.List<api.AuditLogConfig> buildUnnamed3597() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed3597(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0] as api.AuditLogConfig);
  checkAuditLogConfig(o[1] as api.AuditLogConfig);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed3597();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed3597(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed3598() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3598(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  var o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed3598();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed3598(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed3599() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3599(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed3599();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition as api.Expr);
    checkUnnamed3599(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  var o = api.CancelOperationRequest();
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

core.Map<core.String, core.String> buildUnnamed3600() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3600(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3601() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3601(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterConnectivityTest = 0;
api.ConnectivityTest buildConnectivityTest() {
  var o = api.ConnectivityTest();
  buildCounterConnectivityTest++;
  if (buildCounterConnectivityTest < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.destination = buildEndpoint();
    o.displayName = 'foo';
    o.labels = buildUnnamed3600();
    o.name = 'foo';
    o.protocol = 'foo';
    o.reachabilityDetails = buildReachabilityDetails();
    o.relatedProjects = buildUnnamed3601();
    o.source = buildEndpoint();
    o.updateTime = 'foo';
  }
  buildCounterConnectivityTest--;
  return o;
}

void checkConnectivityTest(api.ConnectivityTest o) {
  buildCounterConnectivityTest++;
  if (buildCounterConnectivityTest < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkEndpoint(o.destination as api.Endpoint);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3600(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.protocol, unittest.equals('foo'));
    checkReachabilityDetails(o.reachabilityDetails as api.ReachabilityDetails);
    checkUnnamed3601(o.relatedProjects);
    checkEndpoint(o.source as api.Endpoint);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterConnectivityTest--;
}

core.int buildCounterDeliverInfo = 0;
api.DeliverInfo buildDeliverInfo() {
  var o = api.DeliverInfo();
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
    unittest.expect(o.resourceUri, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterDeliverInfo--;
}

core.int buildCounterDropInfo = 0;
api.DropInfo buildDropInfo() {
  var o = api.DropInfo();
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
    unittest.expect(o.cause, unittest.equals('foo'));
    unittest.expect(o.resourceUri, unittest.equals('foo'));
  }
  buildCounterDropInfo--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
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
  var o = api.Endpoint();
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
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
    unittest.expect(o.instance, unittest.equals('foo'));
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.networkType, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterEndpoint--;
}

core.int buildCounterEndpointInfo = 0;
api.EndpointInfo buildEndpointInfo() {
  var o = api.EndpointInfo();
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
    unittest.expect(o.destinationIp, unittest.equals('foo'));
    unittest.expect(o.destinationNetworkUri, unittest.equals('foo'));
    unittest.expect(o.destinationPort, unittest.equals(42));
    unittest.expect(o.protocol, unittest.equals('foo'));
    unittest.expect(o.sourceIp, unittest.equals('foo'));
    unittest.expect(o.sourceNetworkUri, unittest.equals('foo'));
    unittest.expect(o.sourcePort, unittest.equals(42));
  }
  buildCounterEndpointInfo--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  var o = api.Expr();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.List<core.String> buildUnnamed3602() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3602(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3603() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3603(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFirewallInfo = 0;
api.FirewallInfo buildFirewallInfo() {
  var o = api.FirewallInfo();
  buildCounterFirewallInfo++;
  if (buildCounterFirewallInfo < 3) {
    o.action = 'foo';
    o.direction = 'foo';
    o.displayName = 'foo';
    o.networkUri = 'foo';
    o.priority = 42;
    o.targetServiceAccounts = buildUnnamed3602();
    o.targetTags = buildUnnamed3603();
    o.uri = 'foo';
  }
  buildCounterFirewallInfo--;
  return o;
}

void checkFirewallInfo(api.FirewallInfo o) {
  buildCounterFirewallInfo++;
  if (buildCounterFirewallInfo < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.direction, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.networkUri, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    checkUnnamed3602(o.targetServiceAccounts);
    checkUnnamed3603(o.targetTags);
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterFirewallInfo--;
}

core.int buildCounterForwardInfo = 0;
api.ForwardInfo buildForwardInfo() {
  var o = api.ForwardInfo();
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
    unittest.expect(o.resourceUri, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterForwardInfo--;
}

core.int buildCounterForwardingRuleInfo = 0;
api.ForwardingRuleInfo buildForwardingRuleInfo() {
  var o = api.ForwardingRuleInfo();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.matchedPortRange, unittest.equals('foo'));
    unittest.expect(o.matchedProtocol, unittest.equals('foo'));
    unittest.expect(o.networkUri, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
    unittest.expect(o.vip, unittest.equals('foo'));
  }
  buildCounterForwardingRuleInfo--;
}

core.List<core.String> buildUnnamed3604() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3604(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstanceInfo = 0;
api.InstanceInfo buildInstanceInfo() {
  var o = api.InstanceInfo();
  buildCounterInstanceInfo++;
  if (buildCounterInstanceInfo < 3) {
    o.displayName = 'foo';
    o.externalIp = 'foo';
    o.interface = 'foo';
    o.internalIp = 'foo';
    o.networkTags = buildUnnamed3604();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.externalIp, unittest.equals('foo'));
    unittest.expect(o.interface, unittest.equals('foo'));
    unittest.expect(o.internalIp, unittest.equals('foo'));
    checkUnnamed3604(o.networkTags);
    unittest.expect(o.networkUri, unittest.equals('foo'));
    unittest.expect(o.serviceAccount, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterInstanceInfo--;
}

core.List<api.ConnectivityTest> buildUnnamed3605() {
  var o = <api.ConnectivityTest>[];
  o.add(buildConnectivityTest());
  o.add(buildConnectivityTest());
  return o;
}

void checkUnnamed3605(core.List<api.ConnectivityTest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectivityTest(o[0] as api.ConnectivityTest);
  checkConnectivityTest(o[1] as api.ConnectivityTest);
}

core.List<core.String> buildUnnamed3606() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3606(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListConnectivityTestsResponse = 0;
api.ListConnectivityTestsResponse buildListConnectivityTestsResponse() {
  var o = api.ListConnectivityTestsResponse();
  buildCounterListConnectivityTestsResponse++;
  if (buildCounterListConnectivityTestsResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3605();
    o.unreachable = buildUnnamed3606();
  }
  buildCounterListConnectivityTestsResponse--;
  return o;
}

void checkListConnectivityTestsResponse(api.ListConnectivityTestsResponse o) {
  buildCounterListConnectivityTestsResponse++;
  if (buildCounterListConnectivityTestsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3605(o.resources);
    checkUnnamed3606(o.unreachable);
  }
  buildCounterListConnectivityTestsResponse--;
}

core.List<api.Location> buildUnnamed3607() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed3607(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed3607();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed3607(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed3608() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed3608(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed3608();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3608(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.List<core.String> buildUnnamed3609() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3609(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3610() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3610(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLoadBalancerBackend = 0;
api.LoadBalancerBackend buildLoadBalancerBackend() {
  var o = api.LoadBalancerBackend();
  buildCounterLoadBalancerBackend++;
  if (buildCounterLoadBalancerBackend < 3) {
    o.displayName = 'foo';
    o.healthCheckAllowingFirewallRules = buildUnnamed3609();
    o.healthCheckBlockingFirewallRules = buildUnnamed3610();
    o.healthCheckFirewallState = 'foo';
    o.uri = 'foo';
  }
  buildCounterLoadBalancerBackend--;
  return o;
}

void checkLoadBalancerBackend(api.LoadBalancerBackend o) {
  buildCounterLoadBalancerBackend++;
  if (buildCounterLoadBalancerBackend < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3609(o.healthCheckAllowingFirewallRules);
    checkUnnamed3610(o.healthCheckBlockingFirewallRules);
    unittest.expect(o.healthCheckFirewallState, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterLoadBalancerBackend--;
}

core.List<api.LoadBalancerBackend> buildUnnamed3611() {
  var o = <api.LoadBalancerBackend>[];
  o.add(buildLoadBalancerBackend());
  o.add(buildLoadBalancerBackend());
  return o;
}

void checkUnnamed3611(core.List<api.LoadBalancerBackend> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoadBalancerBackend(o[0] as api.LoadBalancerBackend);
  checkLoadBalancerBackend(o[1] as api.LoadBalancerBackend);
}

core.int buildCounterLoadBalancerInfo = 0;
api.LoadBalancerInfo buildLoadBalancerInfo() {
  var o = api.LoadBalancerInfo();
  buildCounterLoadBalancerInfo++;
  if (buildCounterLoadBalancerInfo < 3) {
    o.backendType = 'foo';
    o.backendUri = 'foo';
    o.backends = buildUnnamed3611();
    o.healthCheckUri = 'foo';
    o.loadBalancerType = 'foo';
  }
  buildCounterLoadBalancerInfo--;
  return o;
}

void checkLoadBalancerInfo(api.LoadBalancerInfo o) {
  buildCounterLoadBalancerInfo++;
  if (buildCounterLoadBalancerInfo < 3) {
    unittest.expect(o.backendType, unittest.equals('foo'));
    unittest.expect(o.backendUri, unittest.equals('foo'));
    checkUnnamed3611(o.backends);
    unittest.expect(o.healthCheckUri, unittest.equals('foo'));
    unittest.expect(o.loadBalancerType, unittest.equals('foo'));
  }
  buildCounterLoadBalancerInfo--;
}

core.Map<core.String, core.String> buildUnnamed3612() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3612(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed3613() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed3613(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed3612();
    o.locationId = 'foo';
    o.metadata = buildUnnamed3613();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3612(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed3613(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterNetworkInfo = 0;
api.NetworkInfo buildNetworkInfo() {
  var o = api.NetworkInfo();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.matchedIpRange, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterNetworkInfo--;
}

core.Map<core.String, core.Object> buildUnnamed3614() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed3614(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed3615() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed3615(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed3614();
    o.name = 'foo';
    o.response = buildUnnamed3615();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error as api.Status);
    checkUnnamed3614(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3615(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationMetadata = 0;
api.OperationMetadata buildOperationMetadata() {
  var o = api.OperationMetadata();
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
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.cancelRequested, unittest.isTrue);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.statusDetail, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterOperationMetadata--;
}

core.List<api.AuditConfig> buildUnnamed3616() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed3616(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0] as api.AuditConfig);
  checkAuditConfig(o[1] as api.AuditConfig);
}

core.List<api.Binding> buildUnnamed3617() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed3617(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed3616();
    o.bindings = buildUnnamed3617();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed3616(o.auditConfigs);
    checkUnnamed3617(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.List<api.Trace> buildUnnamed3618() {
  var o = <api.Trace>[];
  o.add(buildTrace());
  o.add(buildTrace());
  return o;
}

void checkUnnamed3618(core.List<api.Trace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrace(o[0] as api.Trace);
  checkTrace(o[1] as api.Trace);
}

core.int buildCounterReachabilityDetails = 0;
api.ReachabilityDetails buildReachabilityDetails() {
  var o = api.ReachabilityDetails();
  buildCounterReachabilityDetails++;
  if (buildCounterReachabilityDetails < 3) {
    o.error = buildStatus();
    o.result = 'foo';
    o.traces = buildUnnamed3618();
    o.verifyTime = 'foo';
  }
  buildCounterReachabilityDetails--;
  return o;
}

void checkReachabilityDetails(api.ReachabilityDetails o) {
  buildCounterReachabilityDetails++;
  if (buildCounterReachabilityDetails < 3) {
    checkStatus(o.error as api.Status);
    unittest.expect(o.result, unittest.equals('foo'));
    checkUnnamed3618(o.traces);
    unittest.expect(o.verifyTime, unittest.equals('foo'));
  }
  buildCounterReachabilityDetails--;
}

core.int buildCounterRerunConnectivityTestRequest = 0;
api.RerunConnectivityTestRequest buildRerunConnectivityTestRequest() {
  var o = api.RerunConnectivityTestRequest();
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

core.List<core.String> buildUnnamed3619() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3619(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRouteInfo = 0;
api.RouteInfo buildRouteInfo() {
  var o = api.RouteInfo();
  buildCounterRouteInfo++;
  if (buildCounterRouteInfo < 3) {
    o.destIpRange = 'foo';
    o.displayName = 'foo';
    o.instanceTags = buildUnnamed3619();
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
    unittest.expect(o.destIpRange, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3619(o.instanceTags);
    unittest.expect(o.networkUri, unittest.equals('foo'));
    unittest.expect(o.nextHop, unittest.equals('foo'));
    unittest.expect(o.nextHopType, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.routeType, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterRouteInfo--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  var o = api.SetIamPolicyRequest();
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
    checkPolicy(o.policy as api.Policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.Map<core.String, core.Object> buildUnnamed3620() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed3620(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed3621() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed3620());
  o.add(buildUnnamed3620());
  return o;
}

void checkUnnamed3621(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3620(o[0]);
  checkUnnamed3620(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3621();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3621(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStep = 0;
api.Step buildStep() {
  var o = api.Step();
  buildCounterStep++;
  if (buildCounterStep < 3) {
    o.abort = buildAbortInfo();
    o.causesDrop = true;
    o.deliver = buildDeliverInfo();
    o.description = 'foo';
    o.drop = buildDropInfo();
    o.endpoint = buildEndpointInfo();
    o.firewall = buildFirewallInfo();
    o.forward = buildForwardInfo();
    o.forwardingRule = buildForwardingRuleInfo();
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
    checkAbortInfo(o.abort as api.AbortInfo);
    unittest.expect(o.causesDrop, unittest.isTrue);
    checkDeliverInfo(o.deliver as api.DeliverInfo);
    unittest.expect(o.description, unittest.equals('foo'));
    checkDropInfo(o.drop as api.DropInfo);
    checkEndpointInfo(o.endpoint as api.EndpointInfo);
    checkFirewallInfo(o.firewall as api.FirewallInfo);
    checkForwardInfo(o.forward as api.ForwardInfo);
    checkForwardingRuleInfo(o.forwardingRule as api.ForwardingRuleInfo);
    checkInstanceInfo(o.instance as api.InstanceInfo);
    checkLoadBalancerInfo(o.loadBalancer as api.LoadBalancerInfo);
    checkNetworkInfo(o.network as api.NetworkInfo);
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkRouteInfo(o.route as api.RouteInfo);
    unittest.expect(o.state, unittest.equals('foo'));
    checkVpnGatewayInfo(o.vpnGateway as api.VpnGatewayInfo);
    checkVpnTunnelInfo(o.vpnTunnel as api.VpnTunnelInfo);
  }
  buildCounterStep--;
}

core.List<core.String> buildUnnamed3622() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3622(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed3622();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed3622(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed3623() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3623(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed3623();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed3623(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<api.Step> buildUnnamed3624() {
  var o = <api.Step>[];
  o.add(buildStep());
  o.add(buildStep());
  return o;
}

void checkUnnamed3624(core.List<api.Step> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStep(o[0] as api.Step);
  checkStep(o[1] as api.Step);
}

core.int buildCounterTrace = 0;
api.Trace buildTrace() {
  var o = api.Trace();
  buildCounterTrace++;
  if (buildCounterTrace < 3) {
    o.endpointInfo = buildEndpointInfo();
    o.steps = buildUnnamed3624();
  }
  buildCounterTrace--;
  return o;
}

void checkTrace(api.Trace o) {
  buildCounterTrace++;
  if (buildCounterTrace < 3) {
    checkEndpointInfo(o.endpointInfo as api.EndpointInfo);
    checkUnnamed3624(o.steps);
  }
  buildCounterTrace--;
}

core.int buildCounterVpnGatewayInfo = 0;
api.VpnGatewayInfo buildVpnGatewayInfo() {
  var o = api.VpnGatewayInfo();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    unittest.expect(o.networkUri, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
    unittest.expect(o.vpnTunnelUri, unittest.equals('foo'));
  }
  buildCounterVpnGatewayInfo--;
}

core.int buildCounterVpnTunnelInfo = 0;
api.VpnTunnelInfo buildVpnTunnelInfo() {
  var o = api.VpnTunnelInfo();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.networkUri, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.remoteGateway, unittest.equals('foo'));
    unittest.expect(o.remoteGatewayIp, unittest.equals('foo'));
    unittest.expect(o.routingType, unittest.equals('foo'));
    unittest.expect(o.sourceGateway, unittest.equals('foo'));
    unittest.expect(o.sourceGatewayIp, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterVpnTunnelInfo--;
}

void main() {
  unittest.group('obj-schema-AbortInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildAbortInfo();
      var od = api.AbortInfo.fromJson(o.toJson());
      checkAbortInfo(od as api.AbortInfo);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditConfig();
      var od = api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od as api.AuditConfig);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditLogConfig();
      var od = api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od as api.AuditLogConfig);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCancelOperationRequest();
      var od = api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-ConnectivityTest', () {
    unittest.test('to-json--from-json', () {
      var o = buildConnectivityTest();
      var od = api.ConnectivityTest.fromJson(o.toJson());
      checkConnectivityTest(od as api.ConnectivityTest);
    });
  });

  unittest.group('obj-schema-DeliverInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeliverInfo();
      var od = api.DeliverInfo.fromJson(o.toJson());
      checkDeliverInfo(od as api.DeliverInfo);
    });
  });

  unittest.group('obj-schema-DropInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildDropInfo();
      var od = api.DropInfo.fromJson(o.toJson());
      checkDropInfo(od as api.DropInfo);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Endpoint', () {
    unittest.test('to-json--from-json', () {
      var o = buildEndpoint();
      var od = api.Endpoint.fromJson(o.toJson());
      checkEndpoint(od as api.Endpoint);
    });
  });

  unittest.group('obj-schema-EndpointInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildEndpointInfo();
      var od = api.EndpointInfo.fromJson(o.toJson());
      checkEndpointInfo(od as api.EndpointInfo);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-FirewallInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildFirewallInfo();
      var od = api.FirewallInfo.fromJson(o.toJson());
      checkFirewallInfo(od as api.FirewallInfo);
    });
  });

  unittest.group('obj-schema-ForwardInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildForwardInfo();
      var od = api.ForwardInfo.fromJson(o.toJson());
      checkForwardInfo(od as api.ForwardInfo);
    });
  });

  unittest.group('obj-schema-ForwardingRuleInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildForwardingRuleInfo();
      var od = api.ForwardingRuleInfo.fromJson(o.toJson());
      checkForwardingRuleInfo(od as api.ForwardingRuleInfo);
    });
  });

  unittest.group('obj-schema-InstanceInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstanceInfo();
      var od = api.InstanceInfo.fromJson(o.toJson());
      checkInstanceInfo(od as api.InstanceInfo);
    });
  });

  unittest.group('obj-schema-ListConnectivityTestsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListConnectivityTestsResponse();
      var od = api.ListConnectivityTestsResponse.fromJson(o.toJson());
      checkListConnectivityTestsResponse(
          od as api.ListConnectivityTestsResponse);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLocationsResponse();
      var od = api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od as api.ListLocationsResponse);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOperationsResponse();
      var od = api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-LoadBalancerBackend', () {
    unittest.test('to-json--from-json', () {
      var o = buildLoadBalancerBackend();
      var od = api.LoadBalancerBackend.fromJson(o.toJson());
      checkLoadBalancerBackend(od as api.LoadBalancerBackend);
    });
  });

  unittest.group('obj-schema-LoadBalancerInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildLoadBalancerInfo();
      var od = api.LoadBalancerInfo.fromJson(o.toJson());
      checkLoadBalancerInfo(od as api.LoadBalancerInfo);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-NetworkInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildNetworkInfo();
      var od = api.NetworkInfo.fromJson(o.toJson());
      checkNetworkInfo(od as api.NetworkInfo);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationMetadata();
      var od = api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od as api.OperationMetadata);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-ReachabilityDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildReachabilityDetails();
      var od = api.ReachabilityDetails.fromJson(o.toJson());
      checkReachabilityDetails(od as api.ReachabilityDetails);
    });
  });

  unittest.group('obj-schema-RerunConnectivityTestRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRerunConnectivityTestRequest();
      var od = api.RerunConnectivityTestRequest.fromJson(o.toJson());
      checkRerunConnectivityTestRequest(od as api.RerunConnectivityTestRequest);
    });
  });

  unittest.group('obj-schema-RouteInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildRouteInfo();
      var od = api.RouteInfo.fromJson(o.toJson());
      checkRouteInfo(od as api.RouteInfo);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetIamPolicyRequest();
      var od = api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od as api.SetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-Step', () {
    unittest.test('to-json--from-json', () {
      var o = buildStep();
      var od = api.Step.fromJson(o.toJson());
      checkStep(od as api.Step);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsRequest();
      var od = api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od as api.TestIamPermissionsRequest);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsResponse();
      var od = api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('obj-schema-Trace', () {
    unittest.test('to-json--from-json', () {
      var o = buildTrace();
      var od = api.Trace.fromJson(o.toJson());
      checkTrace(od as api.Trace);
    });
  });

  unittest.group('obj-schema-VpnGatewayInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildVpnGatewayInfo();
      var od = api.VpnGatewayInfo.fromJson(o.toJson());
      checkVpnGatewayInfo(od as api.VpnGatewayInfo);
    });
  });

  unittest.group('obj-schema-VpnTunnelInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildVpnTunnelInfo();
      var od = api.VpnTunnelInfo.fromJson(o.toJson());
      checkVpnTunnelInfo(od as api.VpnTunnelInfo);
    });
  });

  unittest.group('resource-ProjectsLocationsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.NetworkmanagementApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response as api.Location);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.NetworkmanagementApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response as api.ListLocationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsGlobalConnectivityTestsResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.NetworkmanagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
      var arg_request = buildConnectivityTest();
      var arg_parent = 'foo';
      var arg_testId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ConnectivityTest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnectivityTest(obj as api.ConnectivityTest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["testId"].first, unittest.equals(arg_testId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              testId: arg_testId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.NetworkmanagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.NetworkmanagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildConnectivityTest());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkConnectivityTest(response as api.ConnectivityTest);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.NetworkmanagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.NetworkmanagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListConnectivityTestsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListConnectivityTestsResponse(
            response as api.ListConnectivityTestsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.NetworkmanagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
      var arg_request = buildConnectivityTest();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ConnectivityTest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnectivityTest(obj as api.ConnectivityTest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--rerun', () {
      var mock = HttpServerMock();
      var res = api.NetworkmanagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
      var arg_request = buildRerunConnectivityTestRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RerunConnectivityTestRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRerunConnectivityTestRequest(
            obj as api.RerunConnectivityTestRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rerun(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.NetworkmanagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.NetworkmanagementApi(mock)
          .projects
          .locations
          .global
          .connectivityTests;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(
            response as api.TestIamPermissionsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsGlobalOperationsResourceApi', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res =
          api.NetworkmanagementApi(mock).projects.locations.global.operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj as api.CancelOperationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res =
          api.NetworkmanagementApi(mock).projects.locations.global.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res =
          api.NetworkmanagementApi(mock).projects.locations.global.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.NetworkmanagementApi(mock).projects.locations.global.operations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response as api.ListOperationsResponse);
      })));
    });
  });
}
