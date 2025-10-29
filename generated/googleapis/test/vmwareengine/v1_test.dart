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

import 'package:googleapis/vmwareengine/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAcceleratePrivateCloudDeletionRequest = 0;
api.AcceleratePrivateCloudDeletionRequest
buildAcceleratePrivateCloudDeletionRequest() {
  final o = api.AcceleratePrivateCloudDeletionRequest();
  buildCounterAcceleratePrivateCloudDeletionRequest++;
  if (buildCounterAcceleratePrivateCloudDeletionRequest < 3) {
    o.etag = 'foo';
    o.requestId = 'foo';
  }
  buildCounterAcceleratePrivateCloudDeletionRequest--;
  return o;
}

void checkAcceleratePrivateCloudDeletionRequest(
  api.AcceleratePrivateCloudDeletionRequest o,
) {
  buildCounterAcceleratePrivateCloudDeletionRequest++;
  if (buildCounterAcceleratePrivateCloudDeletionRequest < 3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterAcceleratePrivateCloudDeletionRequest--;
}

core.Map<core.String, core.String> buildUnnamed0() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed0(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAnnouncement = 0;
api.Announcement buildAnnouncement() {
  final o = api.Announcement();
  buildCounterAnnouncement++;
  if (buildCounterAnnouncement < 3) {
    o.activityType = 'foo';
    o.cluster = 'foo';
    o.code = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.metadata = buildUnnamed0();
    o.name = 'foo';
    o.privateCloud = 'foo';
    o.state = 'foo';
    o.targetResourceType = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAnnouncement--;
  return o;
}

void checkAnnouncement(api.Announcement o) {
  buildCounterAnnouncement++;
  if (buildCounterAnnouncement < 3) {
    unittest.expect(o.activityType!, unittest.equals('foo'));
    unittest.expect(o.cluster!, unittest.equals('foo'));
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed0(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.privateCloud!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.targetResourceType!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAnnouncement--;
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

core.int buildCounterAutoscalingPolicy = 0;
api.AutoscalingPolicy buildAutoscalingPolicy() {
  final o = api.AutoscalingPolicy();
  buildCounterAutoscalingPolicy++;
  if (buildCounterAutoscalingPolicy < 3) {
    o.consumedMemoryThresholds = buildThresholds();
    o.cpuThresholds = buildThresholds();
    o.grantedMemoryThresholds = buildThresholds();
    o.nodeTypeId = 'foo';
    o.scaleOutSize = 42;
    o.storageThresholds = buildThresholds();
  }
  buildCounterAutoscalingPolicy--;
  return o;
}

void checkAutoscalingPolicy(api.AutoscalingPolicy o) {
  buildCounterAutoscalingPolicy++;
  if (buildCounterAutoscalingPolicy < 3) {
    checkThresholds(o.consumedMemoryThresholds!);
    checkThresholds(o.cpuThresholds!);
    checkThresholds(o.grantedMemoryThresholds!);
    unittest.expect(o.nodeTypeId!, unittest.equals('foo'));
    unittest.expect(o.scaleOutSize!, unittest.equals(42));
    checkThresholds(o.storageThresholds!);
  }
  buildCounterAutoscalingPolicy--;
}

core.Map<core.String, api.AutoscalingPolicy> buildUnnamed3() => {
  'x': buildAutoscalingPolicy(),
  'y': buildAutoscalingPolicy(),
};

void checkUnnamed3(core.Map<core.String, api.AutoscalingPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscalingPolicy(o['x']!);
  checkAutoscalingPolicy(o['y']!);
}

core.int buildCounterAutoscalingSettings = 0;
api.AutoscalingSettings buildAutoscalingSettings() {
  final o = api.AutoscalingSettings();
  buildCounterAutoscalingSettings++;
  if (buildCounterAutoscalingSettings < 3) {
    o.autoscalingPolicies = buildUnnamed3();
    o.coolDownPeriod = 'foo';
    o.maxClusterNodeCount = 42;
    o.minClusterNodeCount = 42;
  }
  buildCounterAutoscalingSettings--;
  return o;
}

void checkAutoscalingSettings(api.AutoscalingSettings o) {
  buildCounterAutoscalingSettings++;
  if (buildCounterAutoscalingSettings < 3) {
    checkUnnamed3(o.autoscalingPolicies!);
    unittest.expect(o.coolDownPeriod!, unittest.equals('foo'));
    unittest.expect(o.maxClusterNodeCount!, unittest.equals(42));
    unittest.expect(o.minClusterNodeCount!, unittest.equals(42));
  }
  buildCounterAutoscalingSettings--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
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
    o.members = buildUnnamed4();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed4(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.List<api.DatastoreMountConfig> buildUnnamed5() => [
  buildDatastoreMountConfig(),
  buildDatastoreMountConfig(),
];

void checkUnnamed5(core.List<api.DatastoreMountConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatastoreMountConfig(o[0]);
  checkDatastoreMountConfig(o[1]);
}

core.Map<core.String, api.NodeTypeConfig> buildUnnamed6() => {
  'x': buildNodeTypeConfig(),
  'y': buildNodeTypeConfig(),
};

void checkUnnamed6(core.Map<core.String, api.NodeTypeConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeTypeConfig(o['x']!);
  checkNodeTypeConfig(o['y']!);
}

core.int buildCounterCluster = 0;
api.Cluster buildCluster() {
  final o = api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.autoscalingSettings = buildAutoscalingSettings();
    o.createTime = 'foo';
    o.datastoreMountConfig = buildUnnamed5();
    o.management = true;
    o.name = 'foo';
    o.nodeTypeConfigs = buildUnnamed6();
    o.state = 'foo';
    o.stretchedClusterConfig = buildStretchedClusterConfig();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCluster--;
  return o;
}

void checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    checkAutoscalingSettings(o.autoscalingSettings!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed5(o.datastoreMountConfig!);
    unittest.expect(o.management!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed6(o.nodeTypeConfigs!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkStretchedClusterConfig(o.stretchedClusterConfig!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterCluster--;
}

core.List<api.WeeklyTimeInterval> buildUnnamed7() => [
  buildWeeklyTimeInterval(),
  buildWeeklyTimeInterval(),
];

void checkUnnamed7(core.List<api.WeeklyTimeInterval> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWeeklyTimeInterval(o[0]);
  checkWeeklyTimeInterval(o[1]);
}

core.int buildCounterConstraints = 0;
api.Constraints buildConstraints() {
  final o = api.Constraints();
  buildCounterConstraints++;
  if (buildCounterConstraints < 3) {
    o.disallowedIntervals = buildUnnamed7();
    o.minHoursDay = 42;
    o.minHoursWeek = 42;
    o.rescheduleDateRange = buildInterval();
  }
  buildCounterConstraints--;
  return o;
}

void checkConstraints(api.Constraints o) {
  buildCounterConstraints++;
  if (buildCounterConstraints < 3) {
    checkUnnamed7(o.disallowedIntervals!);
    unittest.expect(o.minHoursDay!, unittest.equals(42));
    unittest.expect(o.minHoursWeek!, unittest.equals(42));
    checkInterval(o.rescheduleDateRange!);
  }
  buildCounterConstraints--;
}

core.int buildCounterCredentials = 0;
api.Credentials buildCredentials() {
  final o = api.Credentials();
  buildCounterCredentials++;
  if (buildCounterCredentials < 3) {
    o.password = 'foo';
    o.username = 'foo';
  }
  buildCounterCredentials--;
  return o;
}

void checkCredentials(api.Credentials o) {
  buildCounterCredentials++;
  if (buildCounterCredentials < 3) {
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterCredentials--;
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDatastore = 0;
api.Datastore buildDatastore() {
  final o = api.Datastore();
  buildCounterDatastore++;
  if (buildCounterDatastore < 3) {
    o.clusters = buildUnnamed8();
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.nfsDatastore = buildNfsDatastore();
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterDatastore--;
  return o;
}

void checkDatastore(api.Datastore o) {
  buildCounterDatastore++;
  if (buildCounterDatastore < 3) {
    checkUnnamed8(o.clusters!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkNfsDatastore(o.nfsDatastore!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterDatastore--;
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDatastoreMountConfig = 0;
api.DatastoreMountConfig buildDatastoreMountConfig() {
  final o = api.DatastoreMountConfig();
  buildCounterDatastoreMountConfig++;
  if (buildCounterDatastoreMountConfig < 3) {
    o.accessMode = 'foo';
    o.datastore = 'foo';
    o.datastoreNetwork = buildDatastoreNetwork();
    o.fileShare = 'foo';
    o.nfsVersion = 'foo';
    o.securityType = 'foo';
    o.servers = buildUnnamed9();
  }
  buildCounterDatastoreMountConfig--;
  return o;
}

void checkDatastoreMountConfig(api.DatastoreMountConfig o) {
  buildCounterDatastoreMountConfig++;
  if (buildCounterDatastoreMountConfig < 3) {
    unittest.expect(o.accessMode!, unittest.equals('foo'));
    unittest.expect(o.datastore!, unittest.equals('foo'));
    checkDatastoreNetwork(o.datastoreNetwork!);
    unittest.expect(o.fileShare!, unittest.equals('foo'));
    unittest.expect(o.nfsVersion!, unittest.equals('foo'));
    unittest.expect(o.securityType!, unittest.equals('foo'));
    checkUnnamed9(o.servers!);
  }
  buildCounterDatastoreMountConfig--;
}

core.int buildCounterDatastoreNetwork = 0;
api.DatastoreNetwork buildDatastoreNetwork() {
  final o = api.DatastoreNetwork();
  buildCounterDatastoreNetwork++;
  if (buildCounterDatastoreNetwork < 3) {
    o.connectionCount = 42;
    o.mtu = 42;
    o.networkPeering = 'foo';
    o.subnet = 'foo';
  }
  buildCounterDatastoreNetwork--;
  return o;
}

void checkDatastoreNetwork(api.DatastoreNetwork o) {
  buildCounterDatastoreNetwork++;
  if (buildCounterDatastoreNetwork < 3) {
    unittest.expect(o.connectionCount!, unittest.equals(42));
    unittest.expect(o.mtu!, unittest.equals(42));
    unittest.expect(o.networkPeering!, unittest.equals('foo'));
    unittest.expect(o.subnet!, unittest.equals('foo'));
  }
  buildCounterDatastoreNetwork--;
}

core.List<api.Principal> buildUnnamed10() => [
  buildPrincipal(),
  buildPrincipal(),
];

void checkUnnamed10(core.List<api.Principal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrincipal(o[0]);
  checkPrincipal(o[1]);
}

core.int buildCounterDnsBindPermission = 0;
api.DnsBindPermission buildDnsBindPermission() {
  final o = api.DnsBindPermission();
  buildCounterDnsBindPermission++;
  if (buildCounterDnsBindPermission < 3) {
    o.name = 'foo';
    o.principals = buildUnnamed10();
  }
  buildCounterDnsBindPermission--;
  return o;
}

void checkDnsBindPermission(api.DnsBindPermission o) {
  buildCounterDnsBindPermission++;
  if (buildCounterDnsBindPermission < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed10(o.principals!);
  }
  buildCounterDnsBindPermission--;
}

core.List<api.ForwardingRule> buildUnnamed11() => [
  buildForwardingRule(),
  buildForwardingRule(),
];

void checkUnnamed11(core.List<api.ForwardingRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkForwardingRule(o[0]);
  checkForwardingRule(o[1]);
}

core.int buildCounterDnsForwarding = 0;
api.DnsForwarding buildDnsForwarding() {
  final o = api.DnsForwarding();
  buildCounterDnsForwarding++;
  if (buildCounterDnsForwarding < 3) {
    o.createTime = 'foo';
    o.forwardingRules = buildUnnamed11();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterDnsForwarding--;
  return o;
}

void checkDnsForwarding(api.DnsForwarding o) {
  buildCounterDnsForwarding++;
  if (buildCounterDnsForwarding < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed11(o.forwardingRules!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterDnsForwarding--;
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

core.List<api.IpRange> buildUnnamed12() => [buildIpRange(), buildIpRange()];

void checkUnnamed12(core.List<api.IpRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIpRange(o[0]);
  checkIpRange(o[1]);
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.IpRange> buildUnnamed14() => [buildIpRange(), buildIpRange()];

void checkUnnamed14(core.List<api.IpRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIpRange(o[0]);
  checkIpRange(o[1]);
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExternalAccessRule = 0;
api.ExternalAccessRule buildExternalAccessRule() {
  final o = api.ExternalAccessRule();
  buildCounterExternalAccessRule++;
  if (buildCounterExternalAccessRule < 3) {
    o.action = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.destinationIpRanges = buildUnnamed12();
    o.destinationPorts = buildUnnamed13();
    o.ipProtocol = 'foo';
    o.name = 'foo';
    o.priority = 42;
    o.sourceIpRanges = buildUnnamed14();
    o.sourcePorts = buildUnnamed15();
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterExternalAccessRule--;
  return o;
}

void checkExternalAccessRule(api.ExternalAccessRule o) {
  buildCounterExternalAccessRule++;
  if (buildCounterExternalAccessRule < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed12(o.destinationIpRanges!);
    checkUnnamed13(o.destinationPorts!);
    unittest.expect(o.ipProtocol!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.priority!, unittest.equals(42));
    checkUnnamed14(o.sourceIpRanges!);
    checkUnnamed15(o.sourcePorts!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterExternalAccessRule--;
}

core.int buildCounterExternalAddress = 0;
api.ExternalAddress buildExternalAddress() {
  final o = api.ExternalAddress();
  buildCounterExternalAddress++;
  if (buildCounterExternalAddress < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.externalIp = 'foo';
    o.internalIp = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterExternalAddress--;
  return o;
}

void checkExternalAddress(api.ExternalAddress o) {
  buildCounterExternalAddress++;
  if (buildCounterExternalAddress < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.externalIp!, unittest.equals('foo'));
    unittest.expect(o.internalIp!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterExternalAddress--;
}

core.List<api.ExternalAddress> buildUnnamed16() => [
  buildExternalAddress(),
  buildExternalAddress(),
];

void checkUnnamed16(core.List<api.ExternalAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalAddress(o[0]);
  checkExternalAddress(o[1]);
}

core.int buildCounterFetchNetworkPolicyExternalAddressesResponse = 0;
api.FetchNetworkPolicyExternalAddressesResponse
buildFetchNetworkPolicyExternalAddressesResponse() {
  final o = api.FetchNetworkPolicyExternalAddressesResponse();
  buildCounterFetchNetworkPolicyExternalAddressesResponse++;
  if (buildCounterFetchNetworkPolicyExternalAddressesResponse < 3) {
    o.externalAddresses = buildUnnamed16();
    o.nextPageToken = 'foo';
  }
  buildCounterFetchNetworkPolicyExternalAddressesResponse--;
  return o;
}

void checkFetchNetworkPolicyExternalAddressesResponse(
  api.FetchNetworkPolicyExternalAddressesResponse o,
) {
  buildCounterFetchNetworkPolicyExternalAddressesResponse++;
  if (buildCounterFetchNetworkPolicyExternalAddressesResponse < 3) {
    checkUnnamed16(o.externalAddresses!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterFetchNetworkPolicyExternalAddressesResponse--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterForwardingRule = 0;
api.ForwardingRule buildForwardingRule() {
  final o = api.ForwardingRule();
  buildCounterForwardingRule++;
  if (buildCounterForwardingRule < 3) {
    o.domain = 'foo';
    o.nameServers = buildUnnamed17();
  }
  buildCounterForwardingRule--;
  return o;
}

void checkForwardingRule(api.ForwardingRule o) {
  buildCounterForwardingRule++;
  if (buildCounterForwardingRule < 3) {
    unittest.expect(o.domain!, unittest.equals('foo'));
    checkUnnamed17(o.nameServers!);
  }
  buildCounterForwardingRule--;
}

core.int buildCounterGoogleFileService = 0;
api.GoogleFileService buildGoogleFileService() {
  final o = api.GoogleFileService();
  buildCounterGoogleFileService++;
  if (buildCounterGoogleFileService < 3) {
    o.filestoreInstance = 'foo';
    o.netappVolume = 'foo';
  }
  buildCounterGoogleFileService--;
  return o;
}

void checkGoogleFileService(api.GoogleFileService o) {
  buildCounterGoogleFileService++;
  if (buildCounterGoogleFileService < 3) {
    unittest.expect(o.filestoreInstance!, unittest.equals('foo'));
    unittest.expect(o.netappVolume!, unittest.equals('foo'));
  }
  buildCounterGoogleFileService--;
}

core.int buildCounterGoogleVmwareFileService = 0;
api.GoogleVmwareFileService buildGoogleVmwareFileService() {
  final o = api.GoogleVmwareFileService();
  buildCounterGoogleVmwareFileService++;
  if (buildCounterGoogleVmwareFileService < 3) {}
  buildCounterGoogleVmwareFileService--;
  return o;
}

void checkGoogleVmwareFileService(api.GoogleVmwareFileService o) {
  buildCounterGoogleVmwareFileService++;
  if (buildCounterGoogleVmwareFileService < 3) {}
  buildCounterGoogleVmwareFileService--;
}

core.int buildCounterGrantDnsBindPermissionRequest = 0;
api.GrantDnsBindPermissionRequest buildGrantDnsBindPermissionRequest() {
  final o = api.GrantDnsBindPermissionRequest();
  buildCounterGrantDnsBindPermissionRequest++;
  if (buildCounterGrantDnsBindPermissionRequest < 3) {
    o.principal = buildPrincipal();
    o.requestId = 'foo';
  }
  buildCounterGrantDnsBindPermissionRequest--;
  return o;
}

void checkGrantDnsBindPermissionRequest(api.GrantDnsBindPermissionRequest o) {
  buildCounterGrantDnsBindPermissionRequest++;
  if (buildCounterGrantDnsBindPermissionRequest < 3) {
    checkPrincipal(o.principal!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterGrantDnsBindPermissionRequest--;
}

core.int buildCounterHcx = 0;
api.Hcx buildHcx() {
  final o = api.Hcx();
  buildCounterHcx++;
  if (buildCounterHcx < 3) {
    o.fqdn = 'foo';
    o.internalIp = 'foo';
    o.state = 'foo';
    o.version = 'foo';
  }
  buildCounterHcx--;
  return o;
}

void checkHcx(api.Hcx o) {
  buildCounterHcx++;
  if (buildCounterHcx < 3) {
    unittest.expect(o.fqdn!, unittest.equals('foo'));
    unittest.expect(o.internalIp!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterHcx--;
}

core.int buildCounterHcxActivationKey = 0;
api.HcxActivationKey buildHcxActivationKey() {
  final o = api.HcxActivationKey();
  buildCounterHcxActivationKey++;
  if (buildCounterHcxActivationKey < 3) {
    o.activationKey = 'foo';
    o.createTime = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.uid = 'foo';
  }
  buildCounterHcxActivationKey--;
  return o;
}

void checkHcxActivationKey(api.HcxActivationKey o) {
  buildCounterHcxActivationKey++;
  if (buildCounterHcxActivationKey < 3) {
    unittest.expect(o.activationKey!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
  }
  buildCounterHcxActivationKey--;
}

core.int buildCounterInterval = 0;
api.Interval buildInterval() {
  final o = api.Interval();
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterInterval--;
  return o;
}

void checkInterval(api.Interval o) {
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterInterval--;
}

core.int buildCounterIpRange = 0;
api.IpRange buildIpRange() {
  final o = api.IpRange();
  buildCounterIpRange++;
  if (buildCounterIpRange < 3) {
    o.externalAddress = 'foo';
    o.ipAddress = 'foo';
    o.ipAddressRange = 'foo';
  }
  buildCounterIpRange--;
  return o;
}

void checkIpRange(api.IpRange o) {
  buildCounterIpRange++;
  if (buildCounterIpRange < 3) {
    unittest.expect(o.externalAddress!, unittest.equals('foo'));
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.ipAddressRange!, unittest.equals('foo'));
  }
  buildCounterIpRange--;
}

core.List<api.Announcement> buildUnnamed18() => [
  buildAnnouncement(),
  buildAnnouncement(),
];

void checkUnnamed18(core.List<api.Announcement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnouncement(o[0]);
  checkAnnouncement(o[1]);
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAnnouncementsResponse = 0;
api.ListAnnouncementsResponse buildListAnnouncementsResponse() {
  final o = api.ListAnnouncementsResponse();
  buildCounterListAnnouncementsResponse++;
  if (buildCounterListAnnouncementsResponse < 3) {
    o.announcements = buildUnnamed18();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed19();
  }
  buildCounterListAnnouncementsResponse--;
  return o;
}

void checkListAnnouncementsResponse(api.ListAnnouncementsResponse o) {
  buildCounterListAnnouncementsResponse++;
  if (buildCounterListAnnouncementsResponse < 3) {
    checkUnnamed18(o.announcements!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed19(o.unreachable!);
  }
  buildCounterListAnnouncementsResponse--;
}

core.List<api.Cluster> buildUnnamed20() => [buildCluster(), buildCluster()];

void checkUnnamed20(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListClustersResponse = 0;
api.ListClustersResponse buildListClustersResponse() {
  final o = api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed20();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed21();
  }
  buildCounterListClustersResponse--;
  return o;
}

void checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed20(o.clusters!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed21(o.unreachable!);
  }
  buildCounterListClustersResponse--;
}

core.List<api.Datastore> buildUnnamed22() => [
  buildDatastore(),
  buildDatastore(),
];

void checkUnnamed22(core.List<api.Datastore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatastore(o[0]);
  checkDatastore(o[1]);
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListDatastoresResponse = 0;
api.ListDatastoresResponse buildListDatastoresResponse() {
  final o = api.ListDatastoresResponse();
  buildCounterListDatastoresResponse++;
  if (buildCounterListDatastoresResponse < 3) {
    o.datastores = buildUnnamed22();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed23();
  }
  buildCounterListDatastoresResponse--;
  return o;
}

void checkListDatastoresResponse(api.ListDatastoresResponse o) {
  buildCounterListDatastoresResponse++;
  if (buildCounterListDatastoresResponse < 3) {
    checkUnnamed22(o.datastores!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed23(o.unreachable!);
  }
  buildCounterListDatastoresResponse--;
}

core.List<api.ExternalAccessRule> buildUnnamed24() => [
  buildExternalAccessRule(),
  buildExternalAccessRule(),
];

void checkUnnamed24(core.List<api.ExternalAccessRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalAccessRule(o[0]);
  checkExternalAccessRule(o[1]);
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListExternalAccessRulesResponse = 0;
api.ListExternalAccessRulesResponse buildListExternalAccessRulesResponse() {
  final o = api.ListExternalAccessRulesResponse();
  buildCounterListExternalAccessRulesResponse++;
  if (buildCounterListExternalAccessRulesResponse < 3) {
    o.externalAccessRules = buildUnnamed24();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed25();
  }
  buildCounterListExternalAccessRulesResponse--;
  return o;
}

void checkListExternalAccessRulesResponse(
  api.ListExternalAccessRulesResponse o,
) {
  buildCounterListExternalAccessRulesResponse++;
  if (buildCounterListExternalAccessRulesResponse < 3) {
    checkUnnamed24(o.externalAccessRules!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed25(o.unreachable!);
  }
  buildCounterListExternalAccessRulesResponse--;
}

core.List<api.ExternalAddress> buildUnnamed26() => [
  buildExternalAddress(),
  buildExternalAddress(),
];

void checkUnnamed26(core.List<api.ExternalAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalAddress(o[0]);
  checkExternalAddress(o[1]);
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListExternalAddressesResponse = 0;
api.ListExternalAddressesResponse buildListExternalAddressesResponse() {
  final o = api.ListExternalAddressesResponse();
  buildCounterListExternalAddressesResponse++;
  if (buildCounterListExternalAddressesResponse < 3) {
    o.externalAddresses = buildUnnamed26();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed27();
  }
  buildCounterListExternalAddressesResponse--;
  return o;
}

void checkListExternalAddressesResponse(api.ListExternalAddressesResponse o) {
  buildCounterListExternalAddressesResponse++;
  if (buildCounterListExternalAddressesResponse < 3) {
    checkUnnamed26(o.externalAddresses!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed27(o.unreachable!);
  }
  buildCounterListExternalAddressesResponse--;
}

core.List<api.HcxActivationKey> buildUnnamed28() => [
  buildHcxActivationKey(),
  buildHcxActivationKey(),
];

void checkUnnamed28(core.List<api.HcxActivationKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHcxActivationKey(o[0]);
  checkHcxActivationKey(o[1]);
}

core.List<core.String> buildUnnamed29() => ['foo', 'foo'];

void checkUnnamed29(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListHcxActivationKeysResponse = 0;
api.ListHcxActivationKeysResponse buildListHcxActivationKeysResponse() {
  final o = api.ListHcxActivationKeysResponse();
  buildCounterListHcxActivationKeysResponse++;
  if (buildCounterListHcxActivationKeysResponse < 3) {
    o.hcxActivationKeys = buildUnnamed28();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed29();
  }
  buildCounterListHcxActivationKeysResponse--;
  return o;
}

void checkListHcxActivationKeysResponse(api.ListHcxActivationKeysResponse o) {
  buildCounterListHcxActivationKeysResponse++;
  if (buildCounterListHcxActivationKeysResponse < 3) {
    checkUnnamed28(o.hcxActivationKeys!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed29(o.unreachable!);
  }
  buildCounterListHcxActivationKeysResponse--;
}

core.List<api.Location> buildUnnamed30() => [buildLocation(), buildLocation()];

void checkUnnamed30(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed30();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed30(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.LoggingServer> buildUnnamed31() => [
  buildLoggingServer(),
  buildLoggingServer(),
];

void checkUnnamed31(core.List<api.LoggingServer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoggingServer(o[0]);
  checkLoggingServer(o[1]);
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListLoggingServersResponse = 0;
api.ListLoggingServersResponse buildListLoggingServersResponse() {
  final o = api.ListLoggingServersResponse();
  buildCounterListLoggingServersResponse++;
  if (buildCounterListLoggingServersResponse < 3) {
    o.loggingServers = buildUnnamed31();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed32();
  }
  buildCounterListLoggingServersResponse--;
  return o;
}

void checkListLoggingServersResponse(api.ListLoggingServersResponse o) {
  buildCounterListLoggingServersResponse++;
  if (buildCounterListLoggingServersResponse < 3) {
    checkUnnamed31(o.loggingServers!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed32(o.unreachable!);
  }
  buildCounterListLoggingServersResponse--;
}

core.List<api.ManagementDnsZoneBinding> buildUnnamed33() => [
  buildManagementDnsZoneBinding(),
  buildManagementDnsZoneBinding(),
];

void checkUnnamed33(core.List<api.ManagementDnsZoneBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagementDnsZoneBinding(o[0]);
  checkManagementDnsZoneBinding(o[1]);
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListManagementDnsZoneBindingsResponse = 0;
api.ListManagementDnsZoneBindingsResponse
buildListManagementDnsZoneBindingsResponse() {
  final o = api.ListManagementDnsZoneBindingsResponse();
  buildCounterListManagementDnsZoneBindingsResponse++;
  if (buildCounterListManagementDnsZoneBindingsResponse < 3) {
    o.managementDnsZoneBindings = buildUnnamed33();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed34();
  }
  buildCounterListManagementDnsZoneBindingsResponse--;
  return o;
}

void checkListManagementDnsZoneBindingsResponse(
  api.ListManagementDnsZoneBindingsResponse o,
) {
  buildCounterListManagementDnsZoneBindingsResponse++;
  if (buildCounterListManagementDnsZoneBindingsResponse < 3) {
    checkUnnamed33(o.managementDnsZoneBindings!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed34(o.unreachable!);
  }
  buildCounterListManagementDnsZoneBindingsResponse--;
}

core.List<api.NetworkPeering> buildUnnamed35() => [
  buildNetworkPeering(),
  buildNetworkPeering(),
];

void checkUnnamed35(core.List<api.NetworkPeering> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkPeering(o[0]);
  checkNetworkPeering(o[1]);
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListNetworkPeeringsResponse = 0;
api.ListNetworkPeeringsResponse buildListNetworkPeeringsResponse() {
  final o = api.ListNetworkPeeringsResponse();
  buildCounterListNetworkPeeringsResponse++;
  if (buildCounterListNetworkPeeringsResponse < 3) {
    o.networkPeerings = buildUnnamed35();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed36();
  }
  buildCounterListNetworkPeeringsResponse--;
  return o;
}

void checkListNetworkPeeringsResponse(api.ListNetworkPeeringsResponse o) {
  buildCounterListNetworkPeeringsResponse++;
  if (buildCounterListNetworkPeeringsResponse < 3) {
    checkUnnamed35(o.networkPeerings!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed36(o.unreachable!);
  }
  buildCounterListNetworkPeeringsResponse--;
}

core.List<api.NetworkPolicy> buildUnnamed37() => [
  buildNetworkPolicy(),
  buildNetworkPolicy(),
];

void checkUnnamed37(core.List<api.NetworkPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkPolicy(o[0]);
  checkNetworkPolicy(o[1]);
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListNetworkPoliciesResponse = 0;
api.ListNetworkPoliciesResponse buildListNetworkPoliciesResponse() {
  final o = api.ListNetworkPoliciesResponse();
  buildCounterListNetworkPoliciesResponse++;
  if (buildCounterListNetworkPoliciesResponse < 3) {
    o.networkPolicies = buildUnnamed37();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed38();
  }
  buildCounterListNetworkPoliciesResponse--;
  return o;
}

void checkListNetworkPoliciesResponse(api.ListNetworkPoliciesResponse o) {
  buildCounterListNetworkPoliciesResponse++;
  if (buildCounterListNetworkPoliciesResponse < 3) {
    checkUnnamed37(o.networkPolicies!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed38(o.unreachable!);
  }
  buildCounterListNetworkPoliciesResponse--;
}

core.List<api.NodeType> buildUnnamed39() => [buildNodeType(), buildNodeType()];

void checkUnnamed39(core.List<api.NodeType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeType(o[0]);
  checkNodeType(o[1]);
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListNodeTypesResponse = 0;
api.ListNodeTypesResponse buildListNodeTypesResponse() {
  final o = api.ListNodeTypesResponse();
  buildCounterListNodeTypesResponse++;
  if (buildCounterListNodeTypesResponse < 3) {
    o.nextPageToken = 'foo';
    o.nodeTypes = buildUnnamed39();
    o.unreachable = buildUnnamed40();
  }
  buildCounterListNodeTypesResponse--;
  return o;
}

void checkListNodeTypesResponse(api.ListNodeTypesResponse o) {
  buildCounterListNodeTypesResponse++;
  if (buildCounterListNodeTypesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed39(o.nodeTypes!);
    checkUnnamed40(o.unreachable!);
  }
  buildCounterListNodeTypesResponse--;
}

core.List<api.Node> buildUnnamed41() => [buildNode(), buildNode()];

void checkUnnamed41(core.List<api.Node> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNode(o[0]);
  checkNode(o[1]);
}

core.int buildCounterListNodesResponse = 0;
api.ListNodesResponse buildListNodesResponse() {
  final o = api.ListNodesResponse();
  buildCounterListNodesResponse++;
  if (buildCounterListNodesResponse < 3) {
    o.nextPageToken = 'foo';
    o.nodes = buildUnnamed41();
  }
  buildCounterListNodesResponse--;
  return o;
}

void checkListNodesResponse(api.ListNodesResponse o) {
  buildCounterListNodesResponse++;
  if (buildCounterListNodesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed41(o.nodes!);
  }
  buildCounterListNodesResponse--;
}

core.List<api.Operation> buildUnnamed42() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed42(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed43() => ['foo', 'foo'];

void checkUnnamed43(core.List<core.String> o) {
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
    o.operations = buildUnnamed42();
    o.unreachable = buildUnnamed43();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed42(o.operations!);
    checkUnnamed43(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.PeeringRoute> buildUnnamed44() => [
  buildPeeringRoute(),
  buildPeeringRoute(),
];

void checkUnnamed44(core.List<api.PeeringRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPeeringRoute(o[0]);
  checkPeeringRoute(o[1]);
}

core.int buildCounterListPeeringRoutesResponse = 0;
api.ListPeeringRoutesResponse buildListPeeringRoutesResponse() {
  final o = api.ListPeeringRoutesResponse();
  buildCounterListPeeringRoutesResponse++;
  if (buildCounterListPeeringRoutesResponse < 3) {
    o.nextPageToken = 'foo';
    o.peeringRoutes = buildUnnamed44();
  }
  buildCounterListPeeringRoutesResponse--;
  return o;
}

void checkListPeeringRoutesResponse(api.ListPeeringRoutesResponse o) {
  buildCounterListPeeringRoutesResponse++;
  if (buildCounterListPeeringRoutesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed44(o.peeringRoutes!);
  }
  buildCounterListPeeringRoutesResponse--;
}

core.List<api.PrivateCloud> buildUnnamed45() => [
  buildPrivateCloud(),
  buildPrivateCloud(),
];

void checkUnnamed45(core.List<api.PrivateCloud> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrivateCloud(o[0]);
  checkPrivateCloud(o[1]);
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListPrivateCloudsResponse = 0;
api.ListPrivateCloudsResponse buildListPrivateCloudsResponse() {
  final o = api.ListPrivateCloudsResponse();
  buildCounterListPrivateCloudsResponse++;
  if (buildCounterListPrivateCloudsResponse < 3) {
    o.nextPageToken = 'foo';
    o.privateClouds = buildUnnamed45();
    o.unreachable = buildUnnamed46();
  }
  buildCounterListPrivateCloudsResponse--;
  return o;
}

void checkListPrivateCloudsResponse(api.ListPrivateCloudsResponse o) {
  buildCounterListPrivateCloudsResponse++;
  if (buildCounterListPrivateCloudsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed45(o.privateClouds!);
    checkUnnamed46(o.unreachable!);
  }
  buildCounterListPrivateCloudsResponse--;
}

core.List<api.PeeringRoute> buildUnnamed47() => [
  buildPeeringRoute(),
  buildPeeringRoute(),
];

void checkUnnamed47(core.List<api.PeeringRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPeeringRoute(o[0]);
  checkPeeringRoute(o[1]);
}

core.int buildCounterListPrivateConnectionPeeringRoutesResponse = 0;
api.ListPrivateConnectionPeeringRoutesResponse
buildListPrivateConnectionPeeringRoutesResponse() {
  final o = api.ListPrivateConnectionPeeringRoutesResponse();
  buildCounterListPrivateConnectionPeeringRoutesResponse++;
  if (buildCounterListPrivateConnectionPeeringRoutesResponse < 3) {
    o.nextPageToken = 'foo';
    o.peeringRoutes = buildUnnamed47();
  }
  buildCounterListPrivateConnectionPeeringRoutesResponse--;
  return o;
}

void checkListPrivateConnectionPeeringRoutesResponse(
  api.ListPrivateConnectionPeeringRoutesResponse o,
) {
  buildCounterListPrivateConnectionPeeringRoutesResponse++;
  if (buildCounterListPrivateConnectionPeeringRoutesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed47(o.peeringRoutes!);
  }
  buildCounterListPrivateConnectionPeeringRoutesResponse--;
}

core.List<api.PrivateConnection> buildUnnamed48() => [
  buildPrivateConnection(),
  buildPrivateConnection(),
];

void checkUnnamed48(core.List<api.PrivateConnection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrivateConnection(o[0]);
  checkPrivateConnection(o[1]);
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListPrivateConnectionsResponse = 0;
api.ListPrivateConnectionsResponse buildListPrivateConnectionsResponse() {
  final o = api.ListPrivateConnectionsResponse();
  buildCounterListPrivateConnectionsResponse++;
  if (buildCounterListPrivateConnectionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.privateConnections = buildUnnamed48();
    o.unreachable = buildUnnamed49();
  }
  buildCounterListPrivateConnectionsResponse--;
  return o;
}

void checkListPrivateConnectionsResponse(api.ListPrivateConnectionsResponse o) {
  buildCounterListPrivateConnectionsResponse++;
  if (buildCounterListPrivateConnectionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed48(o.privateConnections!);
    checkUnnamed49(o.unreachable!);
  }
  buildCounterListPrivateConnectionsResponse--;
}

core.List<api.Subnet> buildUnnamed50() => [buildSubnet(), buildSubnet()];

void checkUnnamed50(core.List<api.Subnet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubnet(o[0]);
  checkSubnet(o[1]);
}

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListSubnetsResponse = 0;
api.ListSubnetsResponse buildListSubnetsResponse() {
  final o = api.ListSubnetsResponse();
  buildCounterListSubnetsResponse++;
  if (buildCounterListSubnetsResponse < 3) {
    o.nextPageToken = 'foo';
    o.subnets = buildUnnamed50();
    o.unreachable = buildUnnamed51();
  }
  buildCounterListSubnetsResponse--;
  return o;
}

void checkListSubnetsResponse(api.ListSubnetsResponse o) {
  buildCounterListSubnetsResponse++;
  if (buildCounterListSubnetsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed50(o.subnets!);
    checkUnnamed51(o.unreachable!);
  }
  buildCounterListSubnetsResponse--;
}

core.List<core.String> buildUnnamed52() => ['foo', 'foo'];

void checkUnnamed52(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Upgrade> buildUnnamed53() => [buildUpgrade(), buildUpgrade()];

void checkUnnamed53(core.List<api.Upgrade> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpgrade(o[0]);
  checkUpgrade(o[1]);
}

core.int buildCounterListUpgradesResponse = 0;
api.ListUpgradesResponse buildListUpgradesResponse() {
  final o = api.ListUpgradesResponse();
  buildCounterListUpgradesResponse++;
  if (buildCounterListUpgradesResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed52();
    o.upgrades = buildUnnamed53();
  }
  buildCounterListUpgradesResponse--;
  return o;
}

void checkListUpgradesResponse(api.ListUpgradesResponse o) {
  buildCounterListUpgradesResponse++;
  if (buildCounterListUpgradesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed52(o.unreachable!);
    checkUnnamed53(o.upgrades!);
  }
  buildCounterListUpgradesResponse--;
}

core.List<core.String> buildUnnamed54() => ['foo', 'foo'];

void checkUnnamed54(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.VmwareEngineNetwork> buildUnnamed55() => [
  buildVmwareEngineNetwork(),
  buildVmwareEngineNetwork(),
];

void checkUnnamed55(core.List<api.VmwareEngineNetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareEngineNetwork(o[0]);
  checkVmwareEngineNetwork(o[1]);
}

core.int buildCounterListVmwareEngineNetworksResponse = 0;
api.ListVmwareEngineNetworksResponse buildListVmwareEngineNetworksResponse() {
  final o = api.ListVmwareEngineNetworksResponse();
  buildCounterListVmwareEngineNetworksResponse++;
  if (buildCounterListVmwareEngineNetworksResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed54();
    o.vmwareEngineNetworks = buildUnnamed55();
  }
  buildCounterListVmwareEngineNetworksResponse--;
  return o;
}

void checkListVmwareEngineNetworksResponse(
  api.ListVmwareEngineNetworksResponse o,
) {
  buildCounterListVmwareEngineNetworksResponse++;
  if (buildCounterListVmwareEngineNetworksResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed54(o.unreachable!);
    checkUnnamed55(o.vmwareEngineNetworks!);
  }
  buildCounterListVmwareEngineNetworksResponse--;
}

core.Map<core.String, core.String> buildUnnamed56() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed56(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed57() => {
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

void checkUnnamed57(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed56();
    o.locationId = 'foo';
    o.metadata = buildUnnamed57();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed56(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed57(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterLoggingServer = 0;
api.LoggingServer buildLoggingServer() {
  final o = api.LoggingServer();
  buildCounterLoggingServer++;
  if (buildCounterLoggingServer < 3) {
    o.createTime = 'foo';
    o.hostname = 'foo';
    o.name = 'foo';
    o.port = 42;
    o.protocol = 'foo';
    o.sourceType = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterLoggingServer--;
  return o;
}

void checkLoggingServer(api.LoggingServer o) {
  buildCounterLoggingServer++;
  if (buildCounterLoggingServer < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.hostname!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
    unittest.expect(o.protocol!, unittest.equals('foo'));
    unittest.expect(o.sourceType!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterLoggingServer--;
}

core.Map<core.String, api.NodeTypeConfig> buildUnnamed58() => {
  'x': buildNodeTypeConfig(),
  'y': buildNodeTypeConfig(),
};

void checkUnnamed58(core.Map<core.String, api.NodeTypeConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeTypeConfig(o['x']!);
  checkNodeTypeConfig(o['y']!);
}

core.int buildCounterManagementCluster = 0;
api.ManagementCluster buildManagementCluster() {
  final o = api.ManagementCluster();
  buildCounterManagementCluster++;
  if (buildCounterManagementCluster < 3) {
    o.clusterId = 'foo';
    o.nodeTypeConfigs = buildUnnamed58();
    o.stretchedClusterConfig = buildStretchedClusterConfig();
  }
  buildCounterManagementCluster--;
  return o;
}

void checkManagementCluster(api.ManagementCluster o) {
  buildCounterManagementCluster++;
  if (buildCounterManagementCluster < 3) {
    unittest.expect(o.clusterId!, unittest.equals('foo'));
    checkUnnamed58(o.nodeTypeConfigs!);
    checkStretchedClusterConfig(o.stretchedClusterConfig!);
  }
  buildCounterManagementCluster--;
}

core.int buildCounterManagementDnsZoneBinding = 0;
api.ManagementDnsZoneBinding buildManagementDnsZoneBinding() {
  final o = api.ManagementDnsZoneBinding();
  buildCounterManagementDnsZoneBinding++;
  if (buildCounterManagementDnsZoneBinding < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.vmwareEngineNetwork = 'foo';
    o.vpcNetwork = 'foo';
  }
  buildCounterManagementDnsZoneBinding--;
  return o;
}

void checkManagementDnsZoneBinding(api.ManagementDnsZoneBinding o) {
  buildCounterManagementDnsZoneBinding++;
  if (buildCounterManagementDnsZoneBinding < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.vmwareEngineNetwork!, unittest.equals('foo'));
    unittest.expect(o.vpcNetwork!, unittest.equals('foo'));
  }
  buildCounterManagementDnsZoneBinding--;
}

core.int buildCounterMountDatastoreRequest = 0;
api.MountDatastoreRequest buildMountDatastoreRequest() {
  final o = api.MountDatastoreRequest();
  buildCounterMountDatastoreRequest++;
  if (buildCounterMountDatastoreRequest < 3) {
    o.datastoreMountConfig = buildDatastoreMountConfig();
    o.ignoreColocation = true;
    o.requestId = 'foo';
  }
  buildCounterMountDatastoreRequest--;
  return o;
}

void checkMountDatastoreRequest(api.MountDatastoreRequest o) {
  buildCounterMountDatastoreRequest++;
  if (buildCounterMountDatastoreRequest < 3) {
    checkDatastoreMountConfig(o.datastoreMountConfig!);
    unittest.expect(o.ignoreColocation!, unittest.isTrue);
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterMountDatastoreRequest--;
}

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  final o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.dnsServerIp = 'foo';
    o.managementCidr = 'foo';
    o.managementIpAddressLayoutVersion = 42;
    o.vmwareEngineNetwork = 'foo';
    o.vmwareEngineNetworkCanonical = 'foo';
  }
  buildCounterNetworkConfig--;
  return o;
}

void checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    unittest.expect(o.dnsServerIp!, unittest.equals('foo'));
    unittest.expect(o.managementCidr!, unittest.equals('foo'));
    unittest.expect(o.managementIpAddressLayoutVersion!, unittest.equals(42));
    unittest.expect(o.vmwareEngineNetwork!, unittest.equals('foo'));
    unittest.expect(o.vmwareEngineNetworkCanonical!, unittest.equals('foo'));
  }
  buildCounterNetworkConfig--;
}

core.int buildCounterNetworkPeering = 0;
api.NetworkPeering buildNetworkPeering() {
  final o = api.NetworkPeering();
  buildCounterNetworkPeering++;
  if (buildCounterNetworkPeering < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.exchangeSubnetRoutes = true;
    o.exportCustomRoutes = true;
    o.exportCustomRoutesWithPublicIp = true;
    o.importCustomRoutes = true;
    o.importCustomRoutesWithPublicIp = true;
    o.name = 'foo';
    o.peerMtu = 42;
    o.peerNetwork = 'foo';
    o.peerNetworkType = 'foo';
    o.state = 'foo';
    o.stateDetails = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.vmwareEngineNetwork = 'foo';
  }
  buildCounterNetworkPeering--;
  return o;
}

void checkNetworkPeering(api.NetworkPeering o) {
  buildCounterNetworkPeering++;
  if (buildCounterNetworkPeering < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.exchangeSubnetRoutes!, unittest.isTrue);
    unittest.expect(o.exportCustomRoutes!, unittest.isTrue);
    unittest.expect(o.exportCustomRoutesWithPublicIp!, unittest.isTrue);
    unittest.expect(o.importCustomRoutes!, unittest.isTrue);
    unittest.expect(o.importCustomRoutesWithPublicIp!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.peerMtu!, unittest.equals(42));
    unittest.expect(o.peerNetwork!, unittest.equals('foo'));
    unittest.expect(o.peerNetworkType!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateDetails!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.vmwareEngineNetwork!, unittest.equals('foo'));
  }
  buildCounterNetworkPeering--;
}

core.int buildCounterNetworkPolicy = 0;
api.NetworkPolicy buildNetworkPolicy() {
  final o = api.NetworkPolicy();
  buildCounterNetworkPolicy++;
  if (buildCounterNetworkPolicy < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.edgeServicesCidr = 'foo';
    o.externalIp = buildNetworkService();
    o.internetAccess = buildNetworkService();
    o.name = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.vmwareEngineNetwork = 'foo';
    o.vmwareEngineNetworkCanonical = 'foo';
  }
  buildCounterNetworkPolicy--;
  return o;
}

void checkNetworkPolicy(api.NetworkPolicy o) {
  buildCounterNetworkPolicy++;
  if (buildCounterNetworkPolicy < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.edgeServicesCidr!, unittest.equals('foo'));
    checkNetworkService(o.externalIp!);
    checkNetworkService(o.internetAccess!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.vmwareEngineNetwork!, unittest.equals('foo'));
    unittest.expect(o.vmwareEngineNetworkCanonical!, unittest.equals('foo'));
  }
  buildCounterNetworkPolicy--;
}

core.int buildCounterNetworkService = 0;
api.NetworkService buildNetworkService() {
  final o = api.NetworkService();
  buildCounterNetworkService++;
  if (buildCounterNetworkService < 3) {
    o.enabled = true;
    o.state = 'foo';
  }
  buildCounterNetworkService--;
  return o;
}

void checkNetworkService(api.NetworkService o) {
  buildCounterNetworkService++;
  if (buildCounterNetworkService < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterNetworkService--;
}

core.int buildCounterNfsDatastore = 0;
api.NfsDatastore buildNfsDatastore() {
  final o = api.NfsDatastore();
  buildCounterNfsDatastore++;
  if (buildCounterNfsDatastore < 3) {
    o.googleFileService = buildGoogleFileService();
    o.googleVmwareFileService = buildGoogleVmwareFileService();
    o.thirdPartyFileService = buildThirdPartyFileService();
  }
  buildCounterNfsDatastore--;
  return o;
}

void checkNfsDatastore(api.NfsDatastore o) {
  buildCounterNfsDatastore++;
  if (buildCounterNfsDatastore < 3) {
    checkGoogleFileService(o.googleFileService!);
    checkGoogleVmwareFileService(o.googleVmwareFileService!);
    checkThirdPartyFileService(o.thirdPartyFileService!);
  }
  buildCounterNfsDatastore--;
}

core.int buildCounterNode = 0;
api.Node buildNode() {
  final o = api.Node();
  buildCounterNode++;
  if (buildCounterNode < 3) {
    o.customCoreCount = 'foo';
    o.fqdn = 'foo';
    o.internalIp = 'foo';
    o.name = 'foo';
    o.nodeTypeId = 'foo';
    o.state = 'foo';
    o.version = 'foo';
  }
  buildCounterNode--;
  return o;
}

void checkNode(api.Node o) {
  buildCounterNode++;
  if (buildCounterNode < 3) {
    unittest.expect(o.customCoreCount!, unittest.equals('foo'));
    unittest.expect(o.fqdn!, unittest.equals('foo'));
    unittest.expect(o.internalIp!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nodeTypeId!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterNode--;
}

core.List<core.int> buildUnnamed59() => [42, 42];

void checkUnnamed59(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.List<core.String> buildUnnamed60() => ['foo', 'foo'];

void checkUnnamed60(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed61() => ['foo', 'foo'];

void checkUnnamed61(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNodeType = 0;
api.NodeType buildNodeType() {
  final o = api.NodeType();
  buildCounterNodeType++;
  if (buildCounterNodeType < 3) {
    o.availableCustomCoreCounts = buildUnnamed59();
    o.capabilities = buildUnnamed60();
    o.diskSizeGb = 42;
    o.displayName = 'foo';
    o.families = buildUnnamed61();
    o.kind = 'foo';
    o.memoryGb = 42;
    o.name = 'foo';
    o.nodeTypeId = 'foo';
    o.totalCoreCount = 42;
    o.virtualCpuCount = 42;
  }
  buildCounterNodeType--;
  return o;
}

void checkNodeType(api.NodeType o) {
  buildCounterNodeType++;
  if (buildCounterNodeType < 3) {
    checkUnnamed59(o.availableCustomCoreCounts!);
    checkUnnamed60(o.capabilities!);
    unittest.expect(o.diskSizeGb!, unittest.equals(42));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed61(o.families!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.memoryGb!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nodeTypeId!, unittest.equals('foo'));
    unittest.expect(o.totalCoreCount!, unittest.equals(42));
    unittest.expect(o.virtualCpuCount!, unittest.equals(42));
  }
  buildCounterNodeType--;
}

core.int buildCounterNodeTypeConfig = 0;
api.NodeTypeConfig buildNodeTypeConfig() {
  final o = api.NodeTypeConfig();
  buildCounterNodeTypeConfig++;
  if (buildCounterNodeTypeConfig < 3) {
    o.customCoreCount = 42;
    o.nodeCount = 42;
  }
  buildCounterNodeTypeConfig--;
  return o;
}

void checkNodeTypeConfig(api.NodeTypeConfig o) {
  buildCounterNodeTypeConfig++;
  if (buildCounterNodeTypeConfig < 3) {
    unittest.expect(o.customCoreCount!, unittest.equals(42));
    unittest.expect(o.nodeCount!, unittest.equals(42));
  }
  buildCounterNodeTypeConfig--;
}

core.int buildCounterNsx = 0;
api.Nsx buildNsx() {
  final o = api.Nsx();
  buildCounterNsx++;
  if (buildCounterNsx < 3) {
    o.fqdn = 'foo';
    o.internalIp = 'foo';
    o.state = 'foo';
    o.version = 'foo';
  }
  buildCounterNsx--;
  return o;
}

void checkNsx(api.Nsx o) {
  buildCounterNsx++;
  if (buildCounterNsx < 3) {
    unittest.expect(o.fqdn!, unittest.equals('foo'));
    unittest.expect(o.internalIp!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterNsx--;
}

core.Map<core.String, core.Object?> buildUnnamed62() => {
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

void checkUnnamed62(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed62();
    o.name = 'foo';
    o.response = buildUnnamed63();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed62(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed63(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPeeringRoute = 0;
api.PeeringRoute buildPeeringRoute() {
  final o = api.PeeringRoute();
  buildCounterPeeringRoute++;
  if (buildCounterPeeringRoute < 3) {
    o.destRange = 'foo';
    o.direction = 'foo';
    o.imported = true;
    o.nextHopRegion = 'foo';
    o.priority = 'foo';
    o.type = 'foo';
  }
  buildCounterPeeringRoute--;
  return o;
}

void checkPeeringRoute(api.PeeringRoute o) {
  buildCounterPeeringRoute++;
  if (buildCounterPeeringRoute < 3) {
    unittest.expect(o.destRange!, unittest.equals('foo'));
    unittest.expect(o.direction!, unittest.equals('foo'));
    unittest.expect(o.imported!, unittest.isTrue);
    unittest.expect(o.nextHopRegion!, unittest.equals('foo'));
    unittest.expect(o.priority!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterPeeringRoute--;
}

core.List<api.AuditConfig> buildUnnamed64() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed64(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed65() => [buildBinding(), buildBinding()];

void checkUnnamed65(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed64();
    o.bindings = buildUnnamed65();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed64(o.auditConfigs!);
    checkUnnamed65(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPrincipal = 0;
api.Principal buildPrincipal() {
  final o = api.Principal();
  buildCounterPrincipal++;
  if (buildCounterPrincipal < 3) {
    o.serviceAccount = 'foo';
    o.user = 'foo';
  }
  buildCounterPrincipal--;
  return o;
}

void checkPrincipal(api.Principal o) {
  buildCounterPrincipal++;
  if (buildCounterPrincipal < 3) {
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.user!, unittest.equals('foo'));
  }
  buildCounterPrincipal--;
}

core.int buildCounterPrivateCloud = 0;
api.PrivateCloud buildPrivateCloud() {
  final o = api.PrivateCloud();
  buildCounterPrivateCloud++;
  if (buildCounterPrivateCloud < 3) {
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.description = 'foo';
    o.expireTime = 'foo';
    o.hcx = buildHcx();
    o.managementCluster = buildManagementCluster();
    o.name = 'foo';
    o.networkConfig = buildNetworkConfig();
    o.nsx = buildNsx();
    o.state = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.vcenter = buildVcenter();
  }
  buildCounterPrivateCloud--;
  return o;
}

void checkPrivateCloud(api.PrivateCloud o) {
  buildCounterPrivateCloud++;
  if (buildCounterPrivateCloud < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    checkHcx(o.hcx!);
    checkManagementCluster(o.managementCluster!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkNetworkConfig(o.networkConfig!);
    checkNsx(o.nsx!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkVcenter(o.vcenter!);
  }
  buildCounterPrivateCloud--;
}

core.int buildCounterPrivateConnection = 0;
api.PrivateConnection buildPrivateConnection() {
  final o = api.PrivateConnection();
  buildCounterPrivateConnection++;
  if (buildCounterPrivateConnection < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.peeringId = 'foo';
    o.peeringState = 'foo';
    o.routingMode = 'foo';
    o.serviceNetwork = 'foo';
    o.state = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.vmwareEngineNetwork = 'foo';
    o.vmwareEngineNetworkCanonical = 'foo';
  }
  buildCounterPrivateConnection--;
  return o;
}

void checkPrivateConnection(api.PrivateConnection o) {
  buildCounterPrivateConnection++;
  if (buildCounterPrivateConnection < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.peeringId!, unittest.equals('foo'));
    unittest.expect(o.peeringState!, unittest.equals('foo'));
    unittest.expect(o.routingMode!, unittest.equals('foo'));
    unittest.expect(o.serviceNetwork!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.vmwareEngineNetwork!, unittest.equals('foo'));
    unittest.expect(o.vmwareEngineNetworkCanonical!, unittest.equals('foo'));
  }
  buildCounterPrivateConnection--;
}

core.int buildCounterRepairManagementDnsZoneBindingRequest = 0;
api.RepairManagementDnsZoneBindingRequest
buildRepairManagementDnsZoneBindingRequest() {
  final o = api.RepairManagementDnsZoneBindingRequest();
  buildCounterRepairManagementDnsZoneBindingRequest++;
  if (buildCounterRepairManagementDnsZoneBindingRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterRepairManagementDnsZoneBindingRequest--;
  return o;
}

void checkRepairManagementDnsZoneBindingRequest(
  api.RepairManagementDnsZoneBindingRequest o,
) {
  buildCounterRepairManagementDnsZoneBindingRequest++;
  if (buildCounterRepairManagementDnsZoneBindingRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterRepairManagementDnsZoneBindingRequest--;
}

core.int buildCounterResetNsxCredentialsRequest = 0;
api.ResetNsxCredentialsRequest buildResetNsxCredentialsRequest() {
  final o = api.ResetNsxCredentialsRequest();
  buildCounterResetNsxCredentialsRequest++;
  if (buildCounterResetNsxCredentialsRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterResetNsxCredentialsRequest--;
  return o;
}

void checkResetNsxCredentialsRequest(api.ResetNsxCredentialsRequest o) {
  buildCounterResetNsxCredentialsRequest++;
  if (buildCounterResetNsxCredentialsRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterResetNsxCredentialsRequest--;
}

core.int buildCounterResetVcenterCredentialsRequest = 0;
api.ResetVcenterCredentialsRequest buildResetVcenterCredentialsRequest() {
  final o = api.ResetVcenterCredentialsRequest();
  buildCounterResetVcenterCredentialsRequest++;
  if (buildCounterResetVcenterCredentialsRequest < 3) {
    o.requestId = 'foo';
    o.username = 'foo';
  }
  buildCounterResetVcenterCredentialsRequest--;
  return o;
}

void checkResetVcenterCredentialsRequest(api.ResetVcenterCredentialsRequest o) {
  buildCounterResetVcenterCredentialsRequest++;
  if (buildCounterResetVcenterCredentialsRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterResetVcenterCredentialsRequest--;
}

core.int buildCounterRevokeDnsBindPermissionRequest = 0;
api.RevokeDnsBindPermissionRequest buildRevokeDnsBindPermissionRequest() {
  final o = api.RevokeDnsBindPermissionRequest();
  buildCounterRevokeDnsBindPermissionRequest++;
  if (buildCounterRevokeDnsBindPermissionRequest < 3) {
    o.principal = buildPrincipal();
    o.requestId = 'foo';
  }
  buildCounterRevokeDnsBindPermissionRequest--;
  return o;
}

void checkRevokeDnsBindPermissionRequest(api.RevokeDnsBindPermissionRequest o) {
  buildCounterRevokeDnsBindPermissionRequest++;
  if (buildCounterRevokeDnsBindPermissionRequest < 3) {
    checkPrincipal(o.principal!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterRevokeDnsBindPermissionRequest--;
}

core.List<api.TimeWindow> buildUnnamed66() => [
  buildTimeWindow(),
  buildTimeWindow(),
];

void checkUnnamed66(core.List<api.TimeWindow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeWindow(o[0]);
  checkTimeWindow(o[1]);
}

core.int buildCounterSchedule = 0;
api.Schedule buildSchedule() {
  final o = api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    o.constraints = buildConstraints();
    o.editWindow = buildInterval();
    o.lastEditor = 'foo';
    o.startTime = 'foo';
    o.weeklyWindows = buildUnnamed66();
  }
  buildCounterSchedule--;
  return o;
}

void checkSchedule(api.Schedule o) {
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    checkConstraints(o.constraints!);
    checkInterval(o.editWindow!);
    unittest.expect(o.lastEditor!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    checkUnnamed66(o.weeklyWindows!);
  }
  buildCounterSchedule--;
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

core.Map<core.String, core.Object?> buildUnnamed67() => {
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

void checkUnnamed67(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed68() => [
  buildUnnamed67(),
  buildUnnamed67(),
];

void checkUnnamed68(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed67(o[0]);
  checkUnnamed67(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed68();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed68(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStretchedClusterConfig = 0;
api.StretchedClusterConfig buildStretchedClusterConfig() {
  final o = api.StretchedClusterConfig();
  buildCounterStretchedClusterConfig++;
  if (buildCounterStretchedClusterConfig < 3) {
    o.preferredLocation = 'foo';
    o.secondaryLocation = 'foo';
  }
  buildCounterStretchedClusterConfig--;
  return o;
}

void checkStretchedClusterConfig(api.StretchedClusterConfig o) {
  buildCounterStretchedClusterConfig++;
  if (buildCounterStretchedClusterConfig < 3) {
    unittest.expect(o.preferredLocation!, unittest.equals('foo'));
    unittest.expect(o.secondaryLocation!, unittest.equals('foo'));
  }
  buildCounterStretchedClusterConfig--;
}

core.int buildCounterSubnet = 0;
api.Subnet buildSubnet() {
  final o = api.Subnet();
  buildCounterSubnet++;
  if (buildCounterSubnet < 3) {
    o.gatewayIp = 'foo';
    o.ipCidrRange = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.type = 'foo';
    o.vlanId = 42;
  }
  buildCounterSubnet--;
  return o;
}

void checkSubnet(api.Subnet o) {
  buildCounterSubnet++;
  if (buildCounterSubnet < 3) {
    unittest.expect(o.gatewayIp!, unittest.equals('foo'));
    unittest.expect(o.ipCidrRange!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.vlanId!, unittest.equals(42));
  }
  buildCounterSubnet--;
}

core.List<core.String> buildUnnamed69() => ['foo', 'foo'];

void checkUnnamed69(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed69();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed69(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed70() => ['foo', 'foo'];

void checkUnnamed70(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed70();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed70(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed71() => ['foo', 'foo'];

void checkUnnamed71(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterThirdPartyFileService = 0;
api.ThirdPartyFileService buildThirdPartyFileService() {
  final o = api.ThirdPartyFileService();
  buildCounterThirdPartyFileService++;
  if (buildCounterThirdPartyFileService < 3) {
    o.fileShare = 'foo';
    o.network = 'foo';
    o.servers = buildUnnamed71();
  }
  buildCounterThirdPartyFileService--;
  return o;
}

void checkThirdPartyFileService(api.ThirdPartyFileService o) {
  buildCounterThirdPartyFileService++;
  if (buildCounterThirdPartyFileService < 3) {
    unittest.expect(o.fileShare!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    checkUnnamed71(o.servers!);
  }
  buildCounterThirdPartyFileService--;
}

core.int buildCounterThresholds = 0;
api.Thresholds buildThresholds() {
  final o = api.Thresholds();
  buildCounterThresholds++;
  if (buildCounterThresholds < 3) {
    o.scaleIn = 42;
    o.scaleOut = 42;
  }
  buildCounterThresholds--;
  return o;
}

void checkThresholds(api.Thresholds o) {
  buildCounterThresholds++;
  if (buildCounterThresholds < 3) {
    unittest.expect(o.scaleIn!, unittest.equals(42));
    unittest.expect(o.scaleOut!, unittest.equals(42));
  }
  buildCounterThresholds--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(o.hours!, unittest.equals(42));
    unittest.expect(o.minutes!, unittest.equals(42));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.seconds!, unittest.equals(42));
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterTimeWindow = 0;
api.TimeWindow buildTimeWindow() {
  final o = api.TimeWindow();
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    o.dayOfWeek = 'foo';
    o.duration = 'foo';
    o.startTime = buildTimeOfDay();
  }
  buildCounterTimeWindow--;
  return o;
}

void checkTimeWindow(api.TimeWindow o) {
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    unittest.expect(o.dayOfWeek!, unittest.equals('foo'));
    unittest.expect(o.duration!, unittest.equals('foo'));
    checkTimeOfDay(o.startTime!);
  }
  buildCounterTimeWindow--;
}

core.int buildCounterUndeletePrivateCloudRequest = 0;
api.UndeletePrivateCloudRequest buildUndeletePrivateCloudRequest() {
  final o = api.UndeletePrivateCloudRequest();
  buildCounterUndeletePrivateCloudRequest++;
  if (buildCounterUndeletePrivateCloudRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterUndeletePrivateCloudRequest--;
  return o;
}

void checkUndeletePrivateCloudRequest(api.UndeletePrivateCloudRequest o) {
  buildCounterUndeletePrivateCloudRequest++;
  if (buildCounterUndeletePrivateCloudRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterUndeletePrivateCloudRequest--;
}

core.int buildCounterUnmountDatastoreRequest = 0;
api.UnmountDatastoreRequest buildUnmountDatastoreRequest() {
  final o = api.UnmountDatastoreRequest();
  buildCounterUnmountDatastoreRequest++;
  if (buildCounterUnmountDatastoreRequest < 3) {
    o.datastore = 'foo';
    o.requestId = 'foo';
  }
  buildCounterUnmountDatastoreRequest--;
  return o;
}

void checkUnmountDatastoreRequest(api.UnmountDatastoreRequest o) {
  buildCounterUnmountDatastoreRequest++;
  if (buildCounterUnmountDatastoreRequest < 3) {
    unittest.expect(o.datastore!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterUnmountDatastoreRequest--;
}

core.List<api.VmwareUpgradeComponent> buildUnnamed72() => [
  buildVmwareUpgradeComponent(),
  buildVmwareUpgradeComponent(),
];

void checkUnnamed72(core.List<api.VmwareUpgradeComponent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVmwareUpgradeComponent(o[0]);
  checkVmwareUpgradeComponent(o[1]);
}

core.int buildCounterUpgrade = 0;
api.Upgrade buildUpgrade() {
  final o = api.Upgrade();
  buildCounterUpgrade++;
  if (buildCounterUpgrade < 3) {
    o.componentUpgrades = buildUnnamed72();
    o.createTime = 'foo';
    o.description = 'foo';
    o.endTime = 'foo';
    o.estimatedDuration = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.schedule = buildSchedule();
    o.startVersion = 'foo';
    o.state = 'foo';
    o.targetVersion = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.version = 'foo';
  }
  buildCounterUpgrade--;
  return o;
}

void checkUpgrade(api.Upgrade o) {
  buildCounterUpgrade++;
  if (buildCounterUpgrade < 3) {
    checkUnnamed72(o.componentUpgrades!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.estimatedDuration!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkSchedule(o.schedule!);
    unittest.expect(o.startVersion!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.targetVersion!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterUpgrade--;
}

core.int buildCounterVcenter = 0;
api.Vcenter buildVcenter() {
  final o = api.Vcenter();
  buildCounterVcenter++;
  if (buildCounterVcenter < 3) {
    o.fqdn = 'foo';
    o.internalIp = 'foo';
    o.state = 'foo';
    o.version = 'foo';
  }
  buildCounterVcenter--;
  return o;
}

void checkVcenter(api.Vcenter o) {
  buildCounterVcenter++;
  if (buildCounterVcenter < 3) {
    unittest.expect(o.fqdn!, unittest.equals('foo'));
    unittest.expect(o.internalIp!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterVcenter--;
}

core.List<api.VpcNetwork> buildUnnamed73() => [
  buildVpcNetwork(),
  buildVpcNetwork(),
];

void checkUnnamed73(core.List<api.VpcNetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVpcNetwork(o[0]);
  checkVpcNetwork(o[1]);
}

core.int buildCounterVmwareEngineNetwork = 0;
api.VmwareEngineNetwork buildVmwareEngineNetwork() {
  final o = api.VmwareEngineNetwork();
  buildCounterVmwareEngineNetwork++;
  if (buildCounterVmwareEngineNetwork < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.vpcNetworks = buildUnnamed73();
  }
  buildCounterVmwareEngineNetwork--;
  return o;
}

void checkVmwareEngineNetwork(api.VmwareEngineNetwork o) {
  buildCounterVmwareEngineNetwork++;
  if (buildCounterVmwareEngineNetwork < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUnnamed73(o.vpcNetworks!);
  }
  buildCounterVmwareEngineNetwork--;
}

core.int buildCounterVmwareUpgradeComponent = 0;
api.VmwareUpgradeComponent buildVmwareUpgradeComponent() {
  final o = api.VmwareUpgradeComponent();
  buildCounterVmwareUpgradeComponent++;
  if (buildCounterVmwareUpgradeComponent < 3) {
    o.componentType = 'foo';
    o.state = 'foo';
  }
  buildCounterVmwareUpgradeComponent--;
  return o;
}

void checkVmwareUpgradeComponent(api.VmwareUpgradeComponent o) {
  buildCounterVmwareUpgradeComponent++;
  if (buildCounterVmwareUpgradeComponent < 3) {
    unittest.expect(o.componentType!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterVmwareUpgradeComponent--;
}

core.int buildCounterVpcNetwork = 0;
api.VpcNetwork buildVpcNetwork() {
  final o = api.VpcNetwork();
  buildCounterVpcNetwork++;
  if (buildCounterVpcNetwork < 3) {
    o.network = 'foo';
    o.type = 'foo';
  }
  buildCounterVpcNetwork--;
  return o;
}

void checkVpcNetwork(api.VpcNetwork o) {
  buildCounterVpcNetwork++;
  if (buildCounterVpcNetwork < 3) {
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterVpcNetwork--;
}

core.int buildCounterWeeklyTimeInterval = 0;
api.WeeklyTimeInterval buildWeeklyTimeInterval() {
  final o = api.WeeklyTimeInterval();
  buildCounterWeeklyTimeInterval++;
  if (buildCounterWeeklyTimeInterval < 3) {
    o.endDay = 'foo';
    o.endTime = buildTimeOfDay();
    o.startDay = 'foo';
    o.startTime = buildTimeOfDay();
  }
  buildCounterWeeklyTimeInterval--;
  return o;
}

void checkWeeklyTimeInterval(api.WeeklyTimeInterval o) {
  buildCounterWeeklyTimeInterval++;
  if (buildCounterWeeklyTimeInterval < 3) {
    unittest.expect(o.endDay!, unittest.equals('foo'));
    checkTimeOfDay(o.endTime!);
    unittest.expect(o.startDay!, unittest.equals('foo'));
    checkTimeOfDay(o.startTime!);
  }
  buildCounterWeeklyTimeInterval--;
}

core.List<core.String> buildUnnamed74() => ['foo', 'foo'];

void checkUnnamed74(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AcceleratePrivateCloudDeletionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcceleratePrivateCloudDeletionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcceleratePrivateCloudDeletionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAcceleratePrivateCloudDeletionRequest(od);
    });
  });

  unittest.group('obj-schema-Announcement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnouncement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Announcement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnnouncement(od);
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

  unittest.group('obj-schema-AutoscalingPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoscalingPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoscalingPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutoscalingPolicy(od);
    });
  });

  unittest.group('obj-schema-AutoscalingSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoscalingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoscalingSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutoscalingSettings(od);
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

  unittest.group('obj-schema-Cluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Cluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCluster(od);
    });
  });

  unittest.group('obj-schema-Constraints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConstraints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Constraints.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConstraints(od);
    });
  });

  unittest.group('obj-schema-Credentials', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCredentials();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Credentials.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCredentials(od);
    });
  });

  unittest.group('obj-schema-Datastore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatastore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Datastore.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatastore(od);
    });
  });

  unittest.group('obj-schema-DatastoreMountConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatastoreMountConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatastoreMountConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatastoreMountConfig(od);
    });
  });

  unittest.group('obj-schema-DatastoreNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatastoreNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatastoreNetwork.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatastoreNetwork(od);
    });
  });

  unittest.group('obj-schema-DnsBindPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsBindPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DnsBindPermission.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDnsBindPermission(od);
    });
  });

  unittest.group('obj-schema-DnsForwarding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsForwarding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DnsForwarding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDnsForwarding(od);
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

  unittest.group('obj-schema-ExternalAccessRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalAccessRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalAccessRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExternalAccessRule(od);
    });
  });

  unittest.group('obj-schema-ExternalAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalAddress.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExternalAddress(od);
    });
  });

  unittest.group('obj-schema-FetchNetworkPolicyExternalAddressesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchNetworkPolicyExternalAddressesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchNetworkPolicyExternalAddressesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchNetworkPolicyExternalAddressesResponse(od);
    });
  });

  unittest.group('obj-schema-ForwardingRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildForwardingRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ForwardingRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkForwardingRule(od);
    });
  });

  unittest.group('obj-schema-GoogleFileService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFileService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFileService.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFileService(od);
    });
  });

  unittest.group('obj-schema-GoogleVmwareFileService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleVmwareFileService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleVmwareFileService.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleVmwareFileService(od);
    });
  });

  unittest.group('obj-schema-GrantDnsBindPermissionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrantDnsBindPermissionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrantDnsBindPermissionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGrantDnsBindPermissionRequest(od);
    });
  });

  unittest.group('obj-schema-Hcx', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHcx();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Hcx.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHcx(od);
    });
  });

  unittest.group('obj-schema-HcxActivationKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHcxActivationKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HcxActivationKey.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHcxActivationKey(od);
    });
  });

  unittest.group('obj-schema-Interval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Interval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterval(od);
    });
  });

  unittest.group('obj-schema-IpRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIpRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IpRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIpRange(od);
    });
  });

  unittest.group('obj-schema-ListAnnouncementsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAnnouncementsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAnnouncementsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAnnouncementsResponse(od);
    });
  });

  unittest.group('obj-schema-ListClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListClustersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListDatastoresResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDatastoresResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDatastoresResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDatastoresResponse(od);
    });
  });

  unittest.group('obj-schema-ListExternalAccessRulesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExternalAccessRulesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExternalAccessRulesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListExternalAccessRulesResponse(od);
    });
  });

  unittest.group('obj-schema-ListExternalAddressesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExternalAddressesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExternalAddressesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListExternalAddressesResponse(od);
    });
  });

  unittest.group('obj-schema-ListHcxActivationKeysResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListHcxActivationKeysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListHcxActivationKeysResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListHcxActivationKeysResponse(od);
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

  unittest.group('obj-schema-ListLoggingServersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLoggingServersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLoggingServersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLoggingServersResponse(od);
    });
  });

  unittest.group('obj-schema-ListManagementDnsZoneBindingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListManagementDnsZoneBindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListManagementDnsZoneBindingsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListManagementDnsZoneBindingsResponse(od);
    });
  });

  unittest.group('obj-schema-ListNetworkPeeringsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNetworkPeeringsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNetworkPeeringsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListNetworkPeeringsResponse(od);
    });
  });

  unittest.group('obj-schema-ListNetworkPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNetworkPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNetworkPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListNetworkPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListNodeTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNodeTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNodeTypesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListNodeTypesResponse(od);
    });
  });

  unittest.group('obj-schema-ListNodesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNodesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNodesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListNodesResponse(od);
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

  unittest.group('obj-schema-ListPeeringRoutesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPeeringRoutesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPeeringRoutesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPeeringRoutesResponse(od);
    });
  });

  unittest.group('obj-schema-ListPrivateCloudsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPrivateCloudsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPrivateCloudsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPrivateCloudsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPrivateConnectionPeeringRoutesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPrivateConnectionPeeringRoutesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPrivateConnectionPeeringRoutesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPrivateConnectionPeeringRoutesResponse(od);
    });
  });

  unittest.group('obj-schema-ListPrivateConnectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPrivateConnectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPrivateConnectionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPrivateConnectionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSubnetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSubnetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSubnetsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSubnetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUpgradesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUpgradesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUpgradesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUpgradesResponse(od);
    });
  });

  unittest.group('obj-schema-ListVmwareEngineNetworksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVmwareEngineNetworksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVmwareEngineNetworksResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListVmwareEngineNetworksResponse(od);
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

  unittest.group('obj-schema-LoggingServer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoggingServer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoggingServer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoggingServer(od);
    });
  });

  unittest.group('obj-schema-ManagementCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagementCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagementCluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManagementCluster(od);
    });
  });

  unittest.group('obj-schema-ManagementDnsZoneBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagementDnsZoneBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagementDnsZoneBinding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManagementDnsZoneBinding(od);
    });
  });

  unittest.group('obj-schema-MountDatastoreRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMountDatastoreRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MountDatastoreRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMountDatastoreRequest(od);
    });
  });

  unittest.group('obj-schema-NetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-NetworkPeering', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkPeering();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkPeering.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkPeering(od);
    });
  });

  unittest.group('obj-schema-NetworkPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkPolicy(od);
    });
  });

  unittest.group('obj-schema-NetworkService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkService.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkService(od);
    });
  });

  unittest.group('obj-schema-NfsDatastore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNfsDatastore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NfsDatastore.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNfsDatastore(od);
    });
  });

  unittest.group('obj-schema-Node', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Node.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNode(od);
    });
  });

  unittest.group('obj-schema-NodeType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNodeType(od);
    });
  });

  unittest.group('obj-schema-NodeTypeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeTypeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeTypeConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNodeTypeConfig(od);
    });
  });

  unittest.group('obj-schema-Nsx', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNsx();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Nsx.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNsx(od);
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

  unittest.group('obj-schema-PeeringRoute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPeeringRoute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PeeringRoute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPeeringRoute(od);
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

  unittest.group('obj-schema-Principal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrincipal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Principal.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrincipal(od);
    });
  });

  unittest.group('obj-schema-PrivateCloud', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateCloud();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateCloud.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrivateCloud(od);
    });
  });

  unittest.group('obj-schema-PrivateConnection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateConnection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrivateConnection(od);
    });
  });

  unittest.group('obj-schema-RepairManagementDnsZoneBindingRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepairManagementDnsZoneBindingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepairManagementDnsZoneBindingRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRepairManagementDnsZoneBindingRequest(od);
    });
  });

  unittest.group('obj-schema-ResetNsxCredentialsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetNsxCredentialsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetNsxCredentialsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResetNsxCredentialsRequest(od);
    });
  });

  unittest.group('obj-schema-ResetVcenterCredentialsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetVcenterCredentialsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetVcenterCredentialsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResetVcenterCredentialsRequest(od);
    });
  });

  unittest.group('obj-schema-RevokeDnsBindPermissionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevokeDnsBindPermissionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevokeDnsBindPermissionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRevokeDnsBindPermissionRequest(od);
    });
  });

  unittest.group('obj-schema-Schedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Schedule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchedule(od);
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

  unittest.group('obj-schema-StretchedClusterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStretchedClusterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StretchedClusterConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStretchedClusterConfig(od);
    });
  });

  unittest.group('obj-schema-Subnet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubnet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Subnet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubnet(od);
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

  unittest.group('obj-schema-ThirdPartyFileService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThirdPartyFileService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThirdPartyFileService.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkThirdPartyFileService(od);
    });
  });

  unittest.group('obj-schema-Thresholds', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThresholds();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Thresholds.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkThresholds(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeOfDay.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-TimeWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeWindow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeWindow(od);
    });
  });

  unittest.group('obj-schema-UndeletePrivateCloudRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeletePrivateCloudRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeletePrivateCloudRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUndeletePrivateCloudRequest(od);
    });
  });

  unittest.group('obj-schema-UnmountDatastoreRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnmountDatastoreRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnmountDatastoreRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnmountDatastoreRequest(od);
    });
  });

  unittest.group('obj-schema-Upgrade', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgrade();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Upgrade.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpgrade(od);
    });
  });

  unittest.group('obj-schema-Vcenter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVcenter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Vcenter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVcenter(od);
    });
  });

  unittest.group('obj-schema-VmwareEngineNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareEngineNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareEngineNetwork.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVmwareEngineNetwork(od);
    });
  });

  unittest.group('obj-schema-VmwareUpgradeComponent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareUpgradeComponent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareUpgradeComponent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVmwareUpgradeComponent(od);
    });
  });

  unittest.group('obj-schema-VpcNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVpcNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VpcNetwork.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVpcNetwork(od);
    });
  });

  unittest.group('obj-schema-WeeklyTimeInterval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeeklyTimeInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeeklyTimeInterval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWeeklyTimeInterval(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations;
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

    unittest.test('method--getDnsBindPermission', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations;
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
          final resp = convert.json.encode(buildDnsBindPermission());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getDnsBindPermission(
        arg_name,
        $fields: arg_$fields,
      );
      checkDnsBindPermission(response as api.DnsBindPermission);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed74();
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

  unittest.group('resource-ProjectsLocationsAnnouncementsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.announcements;
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
          final resp = convert.json.encode(buildAnnouncement());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAnnouncement(response as api.Announcement);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.announcements;
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
          final resp = convert.json.encode(buildListAnnouncementsResponse());
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
      checkListAnnouncementsResponse(response as api.ListAnnouncementsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDatastoresResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.datastores;
      final arg_request = buildDatastore();
      final arg_parent = 'foo';
      final arg_datastoreId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Datastore.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDatastore(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['datastoreId']!.first,
            unittest.equals(arg_datastoreId),
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
        datastoreId: arg_datastoreId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.datastores;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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
        etag: arg_etag,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.datastores;
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
          final resp = convert.json.encode(buildDatastore());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDatastore(response as api.Datastore);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.datastores;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListDatastoresResponse());
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
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkListDatastoresResponse(response as api.ListDatastoresResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.datastores;
      final arg_request = buildDatastore();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Datastore.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDatastore(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

  unittest.group('resource-ProjectsLocationsDnsBindPermissionResource', () {
    unittest.test('method--grant', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.dnsBindPermission;
      final arg_request = buildGrantDnsBindPermissionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GrantDnsBindPermissionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGrantDnsBindPermissionRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final response = await res.grant(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--revoke', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.dnsBindPermission;
      final arg_request = buildRevokeDnsBindPermissionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RevokeDnsBindPermissionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRevokeDnsBindPermissionRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final response = await res.revoke(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsNetworkPeeringsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.networkPeerings;
      final arg_request = buildNetworkPeering();
      final arg_parent = 'foo';
      final arg_networkPeeringId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.NetworkPeering.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNetworkPeering(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['networkPeeringId']!.first,
            unittest.equals(arg_networkPeeringId),
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
        networkPeeringId: arg_networkPeeringId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.networkPeerings;
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
      final res = api.VMwareEngineApi(mock).projects.locations.networkPeerings;
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
          final resp = convert.json.encode(buildNetworkPeering());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNetworkPeering(response as api.NetworkPeering);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.networkPeerings;
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
          final resp = convert.json.encode(buildListNetworkPeeringsResponse());
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
      checkListNetworkPeeringsResponse(
        response as api.ListNetworkPeeringsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.networkPeerings;
      final arg_request = buildNetworkPeering();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.NetworkPeering.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNetworkPeering(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
    'resource-ProjectsLocationsNetworkPeeringsPeeringRoutesResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.VMwareEngineApi(
              mock,
            ).projects.locations.networkPeerings.peeringRoutes;
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
            final resp = convert.json.encode(buildListPeeringRoutesResponse());
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
        checkListPeeringRoutesResponse(
          response as api.ListPeeringRoutesResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsNetworkPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.networkPolicies;
      final arg_request = buildNetworkPolicy();
      final arg_parent = 'foo';
      final arg_networkPolicyId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.NetworkPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNetworkPolicy(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['networkPolicyId']!.first,
            unittest.equals(arg_networkPolicyId),
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
        networkPolicyId: arg_networkPolicyId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.networkPolicies;
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

    unittest.test('method--fetchExternalAddresses', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.networkPolicies;
      final arg_networkPolicy = 'foo';
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
            buildFetchNetworkPolicyExternalAddressesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchExternalAddresses(
        arg_networkPolicy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkFetchNetworkPolicyExternalAddressesResponse(
        response as api.FetchNetworkPolicyExternalAddressesResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.networkPolicies;
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
          final resp = convert.json.encode(buildNetworkPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNetworkPolicy(response as api.NetworkPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.networkPolicies;
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
          final resp = convert.json.encode(buildListNetworkPoliciesResponse());
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
      checkListNetworkPoliciesResponse(
        response as api.ListNetworkPoliciesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.networkPolicies;
      final arg_request = buildNetworkPolicy();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.NetworkPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNetworkPolicy(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
    'resource-ProjectsLocationsNetworkPoliciesExternalAccessRulesResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.VMwareEngineApi(
              mock,
            ).projects.locations.networkPolicies.externalAccessRules;
        final arg_request = buildExternalAccessRule();
        final arg_parent = 'foo';
        final arg_externalAccessRuleId = 'foo';
        final arg_requestId = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.ExternalAccessRule.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkExternalAccessRule(obj);

            final path = req.url.path;
            var pathOffset = 0;
            core.int index;
            core.String subPart;
            unittest.expect(
              path.substring(pathOffset, pathOffset + 1),
              unittest.equals('/'),
            );
            pathOffset += 1;
            unittest.expect(
              path.substring(pathOffset, pathOffset + 3),
              unittest.equals('v1/'),
            );
            pathOffset += 3;
            // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

            final query = req.url.query;
            var queryOffset = 0;
            final queryMap = <core.String, core.List<core.String>>{};
            void addQueryParam(core.String n, core.String v) =>
                queryMap.putIfAbsent(n, () => []).add(v);

            if (query.isNotEmpty) {
              for (var part in query.split('&')) {
                final keyValue = part.split('=');
                addQueryParam(
                  core.Uri.decodeQueryComponent(keyValue[0]),
                  core.Uri.decodeQueryComponent(keyValue[1]),
                );
              }
            }
            unittest.expect(
              queryMap['externalAccessRuleId']!.first,
              unittest.equals(arg_externalAccessRuleId),
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
          externalAccessRuleId: arg_externalAccessRuleId,
          requestId: arg_requestId,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.VMwareEngineApi(
              mock,
            ).projects.locations.networkPolicies.externalAccessRules;
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
        final res =
            api.VMwareEngineApi(
              mock,
            ).projects.locations.networkPolicies.externalAccessRules;
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
            final resp = convert.json.encode(buildExternalAccessRule());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkExternalAccessRule(response as api.ExternalAccessRule);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.VMwareEngineApi(
              mock,
            ).projects.locations.networkPolicies.externalAccessRules;
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
              buildListExternalAccessRulesResponse(),
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
        checkListExternalAccessRulesResponse(
          response as api.ListExternalAccessRulesResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.VMwareEngineApi(
              mock,
            ).projects.locations.networkPolicies.externalAccessRules;
        final arg_request = buildExternalAccessRule();
        final arg_name = 'foo';
        final arg_requestId = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.ExternalAccessRule.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkExternalAccessRule(obj);

            final path = req.url.path;
            var pathOffset = 0;
            core.int index;
            core.String subPart;
            unittest.expect(
              path.substring(pathOffset, pathOffset + 1),
              unittest.equals('/'),
            );
            pathOffset += 1;
            unittest.expect(
              path.substring(pathOffset, pathOffset + 3),
              unittest.equals('v1/'),
            );
            pathOffset += 3;
            // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

            final query = req.url.query;
            var queryOffset = 0;
            final queryMap = <core.String, core.List<core.String>>{};
            void addQueryParam(core.String n, core.String v) =>
                queryMap.putIfAbsent(n, () => []).add(v);

            if (query.isNotEmpty) {
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

  unittest.group('resource-ProjectsLocationsNodeTypesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.nodeTypes;
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
          final resp = convert.json.encode(buildNodeType());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNodeType(response as api.NodeType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.nodeTypes;
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
          final resp = convert.json.encode(buildListNodeTypesResponse());
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
      checkListNodeTypesResponse(response as api.ListNodeTypesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.operations;
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
      final res = api.VMwareEngineApi(mock).projects.locations.operations;
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
      final res = api.VMwareEngineApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsPrivateCloudsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
      final arg_request = buildPrivateCloud();
      final arg_parent = 'foo';
      final arg_privateCloudId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PrivateCloud.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPrivateCloud(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['privateCloudId']!.first,
            unittest.equals(arg_privateCloudId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
        privateCloudId: arg_privateCloudId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
      final arg_name = 'foo';
      final arg_delayHours = 42;
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
            core.int.parse(queryMap['delayHours']!.first),
            unittest.equals(arg_delayHours),
          );
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
        delayHours: arg_delayHours,
        force: arg_force,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
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
          final resp = convert.json.encode(buildPrivateCloud());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPrivateCloud(response as api.PrivateCloud);
    });

    unittest.test('method--getDnsForwarding', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
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
          final resp = convert.json.encode(buildDnsForwarding());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getDnsForwarding(
        arg_name,
        $fields: arg_$fields,
      );
      checkDnsForwarding(response as api.DnsForwarding);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
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
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
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
          final resp = convert.json.encode(buildListPrivateCloudsResponse());
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
      checkListPrivateCloudsResponse(response as api.ListPrivateCloudsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
      final arg_request = buildPrivateCloud();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PrivateCloud.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPrivateCloud(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

    unittest.test('method--privateCloudDeletionNow', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
      final arg_request = buildAcceleratePrivateCloudDeletionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AcceleratePrivateCloudDeletionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAcceleratePrivateCloudDeletionRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final response = await res.privateCloudDeletionNow(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--resetNsxCredentials', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
      final arg_request = buildResetNsxCredentialsRequest();
      final arg_privateCloud = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ResetNsxCredentialsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkResetNsxCredentialsRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final response = await res.resetNsxCredentials(
        arg_request,
        arg_privateCloud,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--resetVcenterCredentials', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
      final arg_request = buildResetVcenterCredentialsRequest();
      final arg_privateCloud = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ResetVcenterCredentialsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkResetVcenterCredentialsRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final response = await res.resetVcenterCredentials(
        arg_request,
        arg_privateCloud,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
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

    unittest.test('method--showNsxCredentials', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
      final arg_privateCloud = 'foo';
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
          final resp = convert.json.encode(buildCredentials());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.showNsxCredentials(
        arg_privateCloud,
        $fields: arg_$fields,
      );
      checkCredentials(response as api.Credentials);
    });

    unittest.test('method--showVcenterCredentials', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
      final arg_privateCloud = 'foo';
      final arg_username = 'foo';
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
            queryMap['username']!.first,
            unittest.equals(arg_username),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCredentials());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.showVcenterCredentials(
        arg_privateCloud,
        username: arg_username,
        $fields: arg_$fields,
      );
      checkCredentials(response as api.Credentials);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
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
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
      final arg_request = buildUndeletePrivateCloudRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UndeletePrivateCloudRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUndeletePrivateCloudRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final response = await res.undelete(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--updateDnsForwarding', () async {
      final mock = HttpServerMock();
      final res = api.VMwareEngineApi(mock).projects.locations.privateClouds;
      final arg_request = buildDnsForwarding();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DnsForwarding.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDnsForwarding(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final response = await res.updateDnsForwarding(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsPrivateCloudsClustersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateClouds.clusters;
      final arg_request = buildCluster();
      final arg_parent = 'foo';
      final arg_clusterId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Cluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCluster(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['clusterId']!.first,
            unittest.equals(arg_clusterId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
        clusterId: arg_clusterId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateClouds.clusters;
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
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateClouds.clusters;
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
          final resp = convert.json.encode(buildCluster());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCluster(response as api.Cluster);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateClouds.clusters;
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
          api.VMwareEngineApi(mock).projects.locations.privateClouds.clusters;
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
          final resp = convert.json.encode(buildListClustersResponse());
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
      checkListClustersResponse(response as api.ListClustersResponse);
    });

    unittest.test('method--mountDatastore', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateClouds.clusters;
      final arg_request = buildMountDatastoreRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MountDatastoreRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMountDatastoreRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final response = await res.mountDatastore(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateClouds.clusters;
      final arg_request = buildCluster();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Cluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCluster(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateClouds.clusters;
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
          api.VMwareEngineApi(mock).projects.locations.privateClouds.clusters;
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

    unittest.test('method--unmountDatastore', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateClouds.clusters;
      final arg_request = buildUnmountDatastoreRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UnmountDatastoreRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUnmountDatastoreRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final response = await res.unmountDatastore(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsPrivateCloudsClustersNodesResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.VMwareEngineApi(
              mock,
            ).projects.locations.privateClouds.clusters.nodes;
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
            final resp = convert.json.encode(buildNode());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkNode(response as api.Node);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.VMwareEngineApi(
              mock,
            ).projects.locations.privateClouds.clusters.nodes;
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
            final resp = convert.json.encode(buildListNodesResponse());
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
        checkListNodesResponse(response as api.ListNodesResponse);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsPrivateCloudsExternalAddressesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.externalAddresses;
      final arg_request = buildExternalAddress();
      final arg_parent = 'foo';
      final arg_externalAddressId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExternalAddress.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExternalAddress(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['externalAddressId']!.first,
            unittest.equals(arg_externalAddressId),
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
        externalAddressId: arg_externalAddressId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.externalAddresses;
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
      final res =
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.externalAddresses;
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
          final resp = convert.json.encode(buildExternalAddress());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkExternalAddress(response as api.ExternalAddress);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.externalAddresses;
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
            buildListExternalAddressesResponse(),
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
      checkListExternalAddressesResponse(
        response as api.ListExternalAddressesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.externalAddresses;
      final arg_request = buildExternalAddress();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExternalAddress.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExternalAddress(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

  unittest.group('resource-ProjectsLocationsPrivateCloudsHcxActivationKeysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.hcxActivationKeys;
      final arg_request = buildHcxActivationKey();
      final arg_parent = 'foo';
      final arg_hcxActivationKeyId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.HcxActivationKey.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHcxActivationKey(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['hcxActivationKeyId']!.first,
            unittest.equals(arg_hcxActivationKeyId),
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
        hcxActivationKeyId: arg_hcxActivationKeyId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.hcxActivationKeys;
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
          final resp = convert.json.encode(buildHcxActivationKey());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkHcxActivationKey(response as api.HcxActivationKey);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.hcxActivationKeys;
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
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.hcxActivationKeys;
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
            buildListHcxActivationKeysResponse(),
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
      checkListHcxActivationKeysResponse(
        response as api.ListHcxActivationKeysResponse,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.hcxActivationKeys;
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
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.hcxActivationKeys;
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

  unittest.group('resource-ProjectsLocationsPrivateCloudsLoggingServersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.loggingServers;
      final arg_request = buildLoggingServer();
      final arg_parent = 'foo';
      final arg_loggingServerId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LoggingServer.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLoggingServer(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['loggingServerId']!.first,
            unittest.equals(arg_loggingServerId),
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
        loggingServerId: arg_loggingServerId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.loggingServers;
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
      final res =
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.loggingServers;
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
          final resp = convert.json.encode(buildLoggingServer());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLoggingServer(response as api.LoggingServer);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.loggingServers;
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
          final resp = convert.json.encode(buildListLoggingServersResponse());
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
      checkListLoggingServersResponse(
        response as api.ListLoggingServersResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(
            mock,
          ).projects.locations.privateClouds.loggingServers;
      final arg_request = buildLoggingServer();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LoggingServer.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLoggingServer(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
    'resource-ProjectsLocationsPrivateCloudsManagementDnsZoneBindingsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.VMwareEngineApi(
              mock,
            ).projects.locations.privateClouds.managementDnsZoneBindings;
        final arg_request = buildManagementDnsZoneBinding();
        final arg_parent = 'foo';
        final arg_managementDnsZoneBindingId = 'foo';
        final arg_requestId = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.ManagementDnsZoneBinding.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkManagementDnsZoneBinding(obj);

            final path = req.url.path;
            var pathOffset = 0;
            core.int index;
            core.String subPart;
            unittest.expect(
              path.substring(pathOffset, pathOffset + 1),
              unittest.equals('/'),
            );
            pathOffset += 1;
            unittest.expect(
              path.substring(pathOffset, pathOffset + 3),
              unittest.equals('v1/'),
            );
            pathOffset += 3;
            // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

            final query = req.url.query;
            var queryOffset = 0;
            final queryMap = <core.String, core.List<core.String>>{};
            void addQueryParam(core.String n, core.String v) =>
                queryMap.putIfAbsent(n, () => []).add(v);

            if (query.isNotEmpty) {
              for (var part in query.split('&')) {
                final keyValue = part.split('=');
                addQueryParam(
                  core.Uri.decodeQueryComponent(keyValue[0]),
                  core.Uri.decodeQueryComponent(keyValue[1]),
                );
              }
            }
            unittest.expect(
              queryMap['managementDnsZoneBindingId']!.first,
              unittest.equals(arg_managementDnsZoneBindingId),
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
          managementDnsZoneBindingId: arg_managementDnsZoneBindingId,
          requestId: arg_requestId,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.VMwareEngineApi(
              mock,
            ).projects.locations.privateClouds.managementDnsZoneBindings;
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
        final res =
            api.VMwareEngineApi(
              mock,
            ).projects.locations.privateClouds.managementDnsZoneBindings;
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
            final resp = convert.json.encode(buildManagementDnsZoneBinding());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkManagementDnsZoneBinding(response as api.ManagementDnsZoneBinding);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.VMwareEngineApi(
              mock,
            ).projects.locations.privateClouds.managementDnsZoneBindings;
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
              buildListManagementDnsZoneBindingsResponse(),
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
        checkListManagementDnsZoneBindingsResponse(
          response as api.ListManagementDnsZoneBindingsResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.VMwareEngineApi(
              mock,
            ).projects.locations.privateClouds.managementDnsZoneBindings;
        final arg_request = buildManagementDnsZoneBinding();
        final arg_name = 'foo';
        final arg_requestId = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.ManagementDnsZoneBinding.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkManagementDnsZoneBinding(obj);

            final path = req.url.path;
            var pathOffset = 0;
            core.int index;
            core.String subPart;
            unittest.expect(
              path.substring(pathOffset, pathOffset + 1),
              unittest.equals('/'),
            );
            pathOffset += 1;
            unittest.expect(
              path.substring(pathOffset, pathOffset + 3),
              unittest.equals('v1/'),
            );
            pathOffset += 3;
            // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

            final query = req.url.query;
            var queryOffset = 0;
            final queryMap = <core.String, core.List<core.String>>{};
            void addQueryParam(core.String n, core.String v) =>
                queryMap.putIfAbsent(n, () => []).add(v);

            if (query.isNotEmpty) {
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

      unittest.test('method--repair', () async {
        final mock = HttpServerMock();
        final res =
            api.VMwareEngineApi(
              mock,
            ).projects.locations.privateClouds.managementDnsZoneBindings;
        final arg_request = buildRepairManagementDnsZoneBindingRequest();
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.RepairManagementDnsZoneBindingRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkRepairManagementDnsZoneBindingRequest(obj);

            final path = req.url.path;
            var pathOffset = 0;
            core.int index;
            core.String subPart;
            unittest.expect(
              path.substring(pathOffset, pathOffset + 1),
              unittest.equals('/'),
            );
            pathOffset += 1;
            unittest.expect(
              path.substring(pathOffset, pathOffset + 3),
              unittest.equals('v1/'),
            );
            pathOffset += 3;
            // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

            final query = req.url.query;
            var queryOffset = 0;
            final queryMap = <core.String, core.List<core.String>>{};
            void addQueryParam(core.String n, core.String v) =>
                queryMap.putIfAbsent(n, () => []).add(v);

            if (query.isNotEmpty) {
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
        final response = await res.repair(
          arg_request,
          arg_name,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsPrivateCloudsSubnetsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateClouds.subnets;
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
          final resp = convert.json.encode(buildSubnet());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSubnet(response as api.Subnet);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateClouds.subnets;
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
          final resp = convert.json.encode(buildListSubnetsResponse());
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
      checkListSubnetsResponse(response as api.ListSubnetsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateClouds.subnets;
      final arg_request = buildSubnet();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Subnet.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSubnet(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

  unittest.group('resource-ProjectsLocationsPrivateCloudsUpgradesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateClouds.upgrades;
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
          final resp = convert.json.encode(buildUpgrade());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUpgrade(response as api.Upgrade);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateClouds.upgrades;
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
          final resp = convert.json.encode(buildListUpgradesResponse());
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
      checkListUpgradesResponse(response as api.ListUpgradesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateClouds.upgrades;
      final arg_request = buildUpgrade();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Upgrade.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUpgrade(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

  unittest.group('resource-ProjectsLocationsPrivateConnectionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateConnections;
      final arg_request = buildPrivateConnection();
      final arg_parent = 'foo';
      final arg_privateConnectionId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PrivateConnection.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPrivateConnection(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['privateConnectionId']!.first,
            unittest.equals(arg_privateConnectionId),
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
        privateConnectionId: arg_privateConnectionId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateConnections;
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
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateConnections;
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
          final resp = convert.json.encode(buildPrivateConnection());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPrivateConnection(response as api.PrivateConnection);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateConnections;
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
            buildListPrivateConnectionsResponse(),
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
      checkListPrivateConnectionsResponse(
        response as api.ListPrivateConnectionsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.privateConnections;
      final arg_request = buildPrivateConnection();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PrivateConnection.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPrivateConnection(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
    'resource-ProjectsLocationsPrivateConnectionsPeeringRoutesResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.VMwareEngineApi(
              mock,
            ).projects.locations.privateConnections.peeringRoutes;
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
              buildListPrivateConnectionPeeringRoutesResponse(),
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
        checkListPrivateConnectionPeeringRoutesResponse(
          response as api.ListPrivateConnectionPeeringRoutesResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsVmwareEngineNetworksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.vmwareEngineNetworks;
      final arg_request = buildVmwareEngineNetwork();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_vmwareEngineNetworkId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.VmwareEngineNetwork.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkVmwareEngineNetwork(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            queryMap['vmwareEngineNetworkId']!.first,
            unittest.equals(arg_vmwareEngineNetworkId),
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
        vmwareEngineNetworkId: arg_vmwareEngineNetworkId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.vmwareEngineNetworks;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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
        etag: arg_etag,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.vmwareEngineNetworks;
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
          final resp = convert.json.encode(buildVmwareEngineNetwork());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkVmwareEngineNetwork(response as api.VmwareEngineNetwork);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.vmwareEngineNetworks;
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
            buildListVmwareEngineNetworksResponse(),
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
      checkListVmwareEngineNetworksResponse(
        response as api.ListVmwareEngineNetworksResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.VMwareEngineApi(mock).projects.locations.vmwareEngineNetworks;
      final arg_request = buildVmwareEngineNetwork();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.VmwareEngineNetwork.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkVmwareEngineNetwork(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
}
