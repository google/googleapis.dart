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

import 'package:googleapis/gkehub/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterApplianceCluster = 0;
api.ApplianceCluster buildApplianceCluster() {
  final o = api.ApplianceCluster();
  buildCounterApplianceCluster++;
  if (buildCounterApplianceCluster < 3) {
    o.resourceLink = 'foo';
  }
  buildCounterApplianceCluster--;
  return o;
}

void checkApplianceCluster(api.ApplianceCluster o) {
  buildCounterApplianceCluster++;
  if (buildCounterApplianceCluster < 3) {
    unittest.expect(o.resourceLink!, unittest.equals('foo'));
  }
  buildCounterApplianceCluster--;
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
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAuthority = 0;
api.Authority buildAuthority() {
  final o = api.Authority();
  buildCounterAuthority++;
  if (buildCounterAuthority < 3) {
    o.identityProvider = 'foo';
    o.issuer = 'foo';
    o.oidcJwks = 'foo';
    o.scopeTenancyIdentityProvider = 'foo';
    o.scopeTenancyWorkloadIdentityPool = 'foo';
    o.workloadIdentityPool = 'foo';
  }
  buildCounterAuthority--;
  return o;
}

void checkAuthority(api.Authority o) {
  buildCounterAuthority++;
  if (buildCounterAuthority < 3) {
    unittest.expect(o.identityProvider!, unittest.equals('foo'));
    unittest.expect(o.issuer!, unittest.equals('foo'));
    unittest.expect(o.oidcJwks!, unittest.equals('foo'));
    unittest.expect(o.scopeTenancyIdentityProvider!, unittest.equals('foo'));
    unittest.expect(
      o.scopeTenancyWorkloadIdentityPool!,
      unittest.equals('foo'),
    );
    unittest.expect(o.workloadIdentityPool!, unittest.equals('foo'));
  }
  buildCounterAuthority--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterConnectAgentResource = 0;
api.ConnectAgentResource buildConnectAgentResource() {
  final o = api.ConnectAgentResource();
  buildCounterConnectAgentResource++;
  if (buildCounterConnectAgentResource < 3) {
    o.manifest = 'foo';
    o.type = buildTypeMeta();
  }
  buildCounterConnectAgentResource--;
  return o;
}

void checkConnectAgentResource(api.ConnectAgentResource o) {
  buildCounterConnectAgentResource++;
  if (buildCounterConnectAgentResource < 3) {
    unittest.expect(o.manifest!, unittest.equals('foo'));
    checkTypeMeta(o.type!);
  }
  buildCounterConnectAgentResource--;
}

core.int buildCounterEdgeCluster = 0;
api.EdgeCluster buildEdgeCluster() {
  final o = api.EdgeCluster();
  buildCounterEdgeCluster++;
  if (buildCounterEdgeCluster < 3) {
    o.resourceLink = 'foo';
  }
  buildCounterEdgeCluster--;
  return o;
}

void checkEdgeCluster(api.EdgeCluster o) {
  buildCounterEdgeCluster++;
  if (buildCounterEdgeCluster < 3) {
    unittest.expect(o.resourceLink!, unittest.equals('foo'));
  }
  buildCounterEdgeCluster--;
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

core.List<api.ConnectAgentResource> buildUnnamed3() => [
  buildConnectAgentResource(),
  buildConnectAgentResource(),
];

void checkUnnamed3(core.List<api.ConnectAgentResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectAgentResource(o[0]);
  checkConnectAgentResource(o[1]);
}

core.int buildCounterGenerateConnectManifestResponse = 0;
api.GenerateConnectManifestResponse buildGenerateConnectManifestResponse() {
  final o = api.GenerateConnectManifestResponse();
  buildCounterGenerateConnectManifestResponse++;
  if (buildCounterGenerateConnectManifestResponse < 3) {
    o.manifest = buildUnnamed3();
  }
  buildCounterGenerateConnectManifestResponse--;
  return o;
}

void checkGenerateConnectManifestResponse(
  api.GenerateConnectManifestResponse o,
) {
  buildCounterGenerateConnectManifestResponse++;
  if (buildCounterGenerateConnectManifestResponse < 3) {
    checkUnnamed3(o.manifest!);
  }
  buildCounterGenerateConnectManifestResponse--;
}

core.int buildCounterGenerateExclusivityManifestResponse = 0;
api.GenerateExclusivityManifestResponse
buildGenerateExclusivityManifestResponse() {
  final o = api.GenerateExclusivityManifestResponse();
  buildCounterGenerateExclusivityManifestResponse++;
  if (buildCounterGenerateExclusivityManifestResponse < 3) {
    o.crManifest = 'foo';
    o.crdManifest = 'foo';
  }
  buildCounterGenerateExclusivityManifestResponse--;
  return o;
}

void checkGenerateExclusivityManifestResponse(
  api.GenerateExclusivityManifestResponse o,
) {
  buildCounterGenerateExclusivityManifestResponse++;
  if (buildCounterGenerateExclusivityManifestResponse < 3) {
    unittest.expect(o.crManifest!, unittest.equals('foo'));
    unittest.expect(o.crdManifest!, unittest.equals('foo'));
  }
  buildCounterGenerateExclusivityManifestResponse--;
}

core.int buildCounterGkeCluster = 0;
api.GkeCluster buildGkeCluster() {
  final o = api.GkeCluster();
  buildCounterGkeCluster++;
  if (buildCounterGkeCluster < 3) {
    o.clusterMissing = true;
    o.resourceLink = 'foo';
  }
  buildCounterGkeCluster--;
  return o;
}

void checkGkeCluster(api.GkeCluster o) {
  buildCounterGkeCluster++;
  if (buildCounterGkeCluster < 3) {
    unittest.expect(o.clusterMissing!, unittest.isTrue);
    unittest.expect(o.resourceLink!, unittest.equals('foo'));
  }
  buildCounterGkeCluster--;
}

core.Map<core.String, core.Object?> buildUnnamed4() => {
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

void checkUnnamed4(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed5() => [
  buildUnnamed4(),
  buildUnnamed4(),
];

void checkUnnamed5(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4(o[0]);
  checkUnnamed4(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed5(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterKubernetesMetadata = 0;
api.KubernetesMetadata buildKubernetesMetadata() {
  final o = api.KubernetesMetadata();
  buildCounterKubernetesMetadata++;
  if (buildCounterKubernetesMetadata < 3) {
    o.kubernetesApiServerVersion = 'foo';
    o.memoryMb = 42;
    o.nodeCount = 42;
    o.nodeProviderId = 'foo';
    o.updateTime = 'foo';
    o.vcpuCount = 42;
  }
  buildCounterKubernetesMetadata--;
  return o;
}

void checkKubernetesMetadata(api.KubernetesMetadata o) {
  buildCounterKubernetesMetadata++;
  if (buildCounterKubernetesMetadata < 3) {
    unittest.expect(o.kubernetesApiServerVersion!, unittest.equals('foo'));
    unittest.expect(o.memoryMb!, unittest.equals(42));
    unittest.expect(o.nodeCount!, unittest.equals(42));
    unittest.expect(o.nodeProviderId!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.vcpuCount!, unittest.equals(42));
  }
  buildCounterKubernetesMetadata--;
}

core.List<api.ResourceManifest> buildUnnamed6() => [
  buildResourceManifest(),
  buildResourceManifest(),
];

void checkUnnamed6(core.List<api.ResourceManifest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceManifest(o[0]);
  checkResourceManifest(o[1]);
}

core.List<api.ResourceManifest> buildUnnamed7() => [
  buildResourceManifest(),
  buildResourceManifest(),
];

void checkUnnamed7(core.List<api.ResourceManifest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceManifest(o[0]);
  checkResourceManifest(o[1]);
}

core.int buildCounterKubernetesResource = 0;
api.KubernetesResource buildKubernetesResource() {
  final o = api.KubernetesResource();
  buildCounterKubernetesResource++;
  if (buildCounterKubernetesResource < 3) {
    o.connectResources = buildUnnamed6();
    o.membershipCrManifest = 'foo';
    o.membershipResources = buildUnnamed7();
    o.resourceOptions = buildResourceOptions();
  }
  buildCounterKubernetesResource--;
  return o;
}

void checkKubernetesResource(api.KubernetesResource o) {
  buildCounterKubernetesResource++;
  if (buildCounterKubernetesResource < 3) {
    checkUnnamed6(o.connectResources!);
    unittest.expect(o.membershipCrManifest!, unittest.equals('foo'));
    checkUnnamed7(o.membershipResources!);
    checkResourceOptions(o.resourceOptions!);
  }
  buildCounterKubernetesResource--;
}

core.List<api.Location> buildUnnamed8() => [buildLocation(), buildLocation()];

void checkUnnamed8(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed8(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Membership> buildUnnamed9() => [
  buildMembership(),
  buildMembership(),
];

void checkUnnamed9(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0]);
  checkMembership(o[1]);
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListMembershipsResponse = 0;
api.ListMembershipsResponse buildListMembershipsResponse() {
  final o = api.ListMembershipsResponse();
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed9();
    o.unreachable = buildUnnamed10();
  }
  buildCounterListMembershipsResponse--;
  return o;
}

void checkListMembershipsResponse(api.ListMembershipsResponse o) {
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed9(o.resources!);
    checkUnnamed10(o.unreachable!);
  }
  buildCounterListMembershipsResponse--;
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
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed11(o.operations!);
  }
  buildCounterListOperationsResponse--;
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed12();
    o.locationId = 'foo';
    o.metadata = buildUnnamed13();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed12(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed13(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed14() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed14(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterMembership = 0;
api.Membership buildMembership() {
  final o = api.Membership();
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    o.authority = buildAuthority();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.description = 'foo';
    o.endpoint = buildMembershipEndpoint();
    o.externalId = 'foo';
    o.infrastructureType = 'foo';
    o.labels = buildUnnamed14();
    o.lastConnectionTime = 'foo';
    o.membershipType = 'foo';
    o.monitoringConfig = buildMonitoringConfig();
    o.name = 'foo';
    o.state = buildMembershipState();
    o.uniqueId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMembership--;
  return o;
}

void checkMembership(api.Membership o) {
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    checkAuthority(o.authority!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkMembershipEndpoint(o.endpoint!);
    unittest.expect(o.externalId!, unittest.equals('foo'));
    unittest.expect(o.infrastructureType!, unittest.equals('foo'));
    checkUnnamed14(o.labels!);
    unittest.expect(o.lastConnectionTime!, unittest.equals('foo'));
    unittest.expect(o.membershipType!, unittest.equals('foo'));
    checkMonitoringConfig(o.monitoringConfig!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkMembershipState(o.state!);
    unittest.expect(o.uniqueId!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterMembership--;
}

core.int buildCounterMembershipEndpoint = 0;
api.MembershipEndpoint buildMembershipEndpoint() {
  final o = api.MembershipEndpoint();
  buildCounterMembershipEndpoint++;
  if (buildCounterMembershipEndpoint < 3) {
    o.applianceCluster = buildApplianceCluster();
    o.edgeCluster = buildEdgeCluster();
    o.gkeCluster = buildGkeCluster();
    o.kubernetesMetadata = buildKubernetesMetadata();
    o.kubernetesResource = buildKubernetesResource();
    o.multiCloudCluster = buildMultiCloudCluster();
    o.onPremCluster = buildOnPremCluster();
  }
  buildCounterMembershipEndpoint--;
  return o;
}

void checkMembershipEndpoint(api.MembershipEndpoint o) {
  buildCounterMembershipEndpoint++;
  if (buildCounterMembershipEndpoint < 3) {
    checkApplianceCluster(o.applianceCluster!);
    checkEdgeCluster(o.edgeCluster!);
    checkGkeCluster(o.gkeCluster!);
    checkKubernetesMetadata(o.kubernetesMetadata!);
    checkKubernetesResource(o.kubernetesResource!);
    checkMultiCloudCluster(o.multiCloudCluster!);
    checkOnPremCluster(o.onPremCluster!);
  }
  buildCounterMembershipEndpoint--;
}

core.int buildCounterMembershipState = 0;
api.MembershipState buildMembershipState() {
  final o = api.MembershipState();
  buildCounterMembershipState++;
  if (buildCounterMembershipState < 3) {
    o.code = 'foo';
    o.description = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMembershipState--;
  return o;
}

void checkMembershipState(api.MembershipState o) {
  buildCounterMembershipState++;
  if (buildCounterMembershipState < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterMembershipState--;
}

core.int buildCounterMonitoringConfig = 0;
api.MonitoringConfig buildMonitoringConfig() {
  final o = api.MonitoringConfig();
  buildCounterMonitoringConfig++;
  if (buildCounterMonitoringConfig < 3) {
    o.cluster = 'foo';
    o.clusterHash = 'foo';
    o.kubernetesMetricsPrefix = 'foo';
    o.location = 'foo';
    o.projectId = 'foo';
  }
  buildCounterMonitoringConfig--;
  return o;
}

void checkMonitoringConfig(api.MonitoringConfig o) {
  buildCounterMonitoringConfig++;
  if (buildCounterMonitoringConfig < 3) {
    unittest.expect(o.cluster!, unittest.equals('foo'));
    unittest.expect(o.clusterHash!, unittest.equals('foo'));
    unittest.expect(o.kubernetesMetricsPrefix!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
  }
  buildCounterMonitoringConfig--;
}

core.int buildCounterMultiCloudCluster = 0;
api.MultiCloudCluster buildMultiCloudCluster() {
  final o = api.MultiCloudCluster();
  buildCounterMultiCloudCluster++;
  if (buildCounterMultiCloudCluster < 3) {
    o.clusterMissing = true;
    o.resourceLink = 'foo';
  }
  buildCounterMultiCloudCluster--;
  return o;
}

void checkMultiCloudCluster(api.MultiCloudCluster o) {
  buildCounterMultiCloudCluster++;
  if (buildCounterMultiCloudCluster < 3) {
    unittest.expect(o.clusterMissing!, unittest.isTrue);
    unittest.expect(o.resourceLink!, unittest.equals('foo'));
  }
  buildCounterMultiCloudCluster--;
}

core.int buildCounterOnPremCluster = 0;
api.OnPremCluster buildOnPremCluster() {
  final o = api.OnPremCluster();
  buildCounterOnPremCluster++;
  if (buildCounterOnPremCluster < 3) {
    o.adminCluster = true;
    o.clusterMissing = true;
    o.clusterType = 'foo';
    o.resourceLink = 'foo';
  }
  buildCounterOnPremCluster--;
  return o;
}

void checkOnPremCluster(api.OnPremCluster o) {
  buildCounterOnPremCluster++;
  if (buildCounterOnPremCluster < 3) {
    unittest.expect(o.adminCluster!, unittest.isTrue);
    unittest.expect(o.clusterMissing!, unittest.isTrue);
    unittest.expect(o.clusterType!, unittest.equals('foo'));
    unittest.expect(o.resourceLink!, unittest.equals('foo'));
  }
  buildCounterOnPremCluster--;
}

core.Map<core.String, core.Object?> buildUnnamed15() => {
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

void checkUnnamed15(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed15();
    o.name = 'foo';
    o.response = buildUnnamed16();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed15(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed16(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed17() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed17(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed18() => [buildBinding(), buildBinding()];

void checkUnnamed18(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed17();
    o.bindings = buildUnnamed18();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed17(o.auditConfigs!);
    checkUnnamed18(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterResourceManifest = 0;
api.ResourceManifest buildResourceManifest() {
  final o = api.ResourceManifest();
  buildCounterResourceManifest++;
  if (buildCounterResourceManifest < 3) {
    o.clusterScoped = true;
    o.manifest = 'foo';
  }
  buildCounterResourceManifest--;
  return o;
}

void checkResourceManifest(api.ResourceManifest o) {
  buildCounterResourceManifest++;
  if (buildCounterResourceManifest < 3) {
    unittest.expect(o.clusterScoped!, unittest.isTrue);
    unittest.expect(o.manifest!, unittest.equals('foo'));
  }
  buildCounterResourceManifest--;
}

core.int buildCounterResourceOptions = 0;
api.ResourceOptions buildResourceOptions() {
  final o = api.ResourceOptions();
  buildCounterResourceOptions++;
  if (buildCounterResourceOptions < 3) {
    o.connectVersion = 'foo';
    o.k8sVersion = 'foo';
    o.v1beta1Crd = true;
  }
  buildCounterResourceOptions--;
  return o;
}

void checkResourceOptions(api.ResourceOptions o) {
  buildCounterResourceOptions++;
  if (buildCounterResourceOptions < 3) {
    unittest.expect(o.connectVersion!, unittest.equals('foo'));
    unittest.expect(o.k8sVersion!, unittest.equals('foo'));
    unittest.expect(o.v1beta1Crd!, unittest.isTrue);
  }
  buildCounterResourceOptions--;
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

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed19();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed19(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed20();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed20(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTypeMeta = 0;
api.TypeMeta buildTypeMeta() {
  final o = api.TypeMeta();
  buildCounterTypeMeta++;
  if (buildCounterTypeMeta < 3) {
    o.apiVersion = 'foo';
    o.kind = 'foo';
  }
  buildCounterTypeMeta--;
  return o;
}

void checkTypeMeta(api.TypeMeta o) {
  buildCounterTypeMeta++;
  if (buildCounterTypeMeta < 3) {
    unittest.expect(o.apiVersion!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
  }
  buildCounterTypeMeta--;
}

core.int buildCounterValidateExclusivityResponse = 0;
api.ValidateExclusivityResponse buildValidateExclusivityResponse() {
  final o = api.ValidateExclusivityResponse();
  buildCounterValidateExclusivityResponse++;
  if (buildCounterValidateExclusivityResponse < 3) {
    o.status = buildGoogleRpcStatus();
  }
  buildCounterValidateExclusivityResponse--;
  return o;
}

void checkValidateExclusivityResponse(api.ValidateExclusivityResponse o) {
  buildCounterValidateExclusivityResponse++;
  if (buildCounterValidateExclusivityResponse < 3) {
    checkGoogleRpcStatus(o.status!);
  }
  buildCounterValidateExclusivityResponse--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-ApplianceCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplianceCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplianceCluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplianceCluster(od);
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

  unittest.group('obj-schema-Authority', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthority();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Authority.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthority(od);
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

  unittest.group('obj-schema-ConnectAgentResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectAgentResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectAgentResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnectAgentResource(od);
    });
  });

  unittest.group('obj-schema-EdgeCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEdgeCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EdgeCluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEdgeCluster(od);
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

  unittest.group('obj-schema-GenerateConnectManifestResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateConnectManifestResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateConnectManifestResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateConnectManifestResponse(od);
    });
  });

  unittest.group('obj-schema-GenerateExclusivityManifestResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateExclusivityManifestResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateExclusivityManifestResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateExclusivityManifestResponse(od);
    });
  });

  unittest.group('obj-schema-GkeCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGkeCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GkeCluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGkeCluster(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-KubernetesMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKubernetesMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KubernetesMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKubernetesMetadata(od);
    });
  });

  unittest.group('obj-schema-KubernetesResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKubernetesResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KubernetesResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKubernetesResource(od);
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

  unittest.group('obj-schema-ListMembershipsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMembershipsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMembershipsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMembershipsResponse(od);
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

  unittest.group('obj-schema-Membership', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Membership.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMembership(od);
    });
  });

  unittest.group('obj-schema-MembershipEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipEndpoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMembershipEndpoint(od);
    });
  });

  unittest.group('obj-schema-MembershipState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMembershipState(od);
    });
  });

  unittest.group('obj-schema-MonitoringConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoringConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoringConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMonitoringConfig(od);
    });
  });

  unittest.group('obj-schema-MultiCloudCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiCloudCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultiCloudCluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMultiCloudCluster(od);
    });
  });

  unittest.group('obj-schema-OnPremCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOnPremCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OnPremCluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOnPremCluster(od);
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

  unittest.group('obj-schema-ResourceManifest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceManifest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceManifest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceManifest(od);
    });
  });

  unittest.group('obj-schema-ResourceOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceOptions(od);
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

  unittest.group('obj-schema-TypeMeta', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTypeMeta();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TypeMeta.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTypeMeta(od);
    });
  });

  unittest.group('obj-schema-ValidateExclusivityResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateExclusivityResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateExclusivityResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValidateExclusivityResponse(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations;
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
      final res = api.GKEHubApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed21();
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

  unittest.group('resource-ProjectsLocationsMembershipsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships;
      final arg_request = buildMembership();
      final arg_parent = 'foo';
      final arg_membershipId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Membership.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMembership(obj);

          final path = req.url.path;
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
            queryMap['membershipId']!.first,
            unittest.equals(arg_membershipId),
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
        membershipId: arg_membershipId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships;
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

    unittest.test('method--generateConnectManifest', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships;
      final arg_name = 'foo';
      final arg_connectAgent_name = 'foo';
      final arg_connectAgent_namespace = 'foo';
      final arg_connectAgent_proxy = 'foo';
      final arg_imagePullSecretContent = 'foo';
      final arg_isUpgrade = true;
      final arg_registry = 'foo';
      final arg_version = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            queryMap['connectAgent.name']!.first,
            unittest.equals(arg_connectAgent_name),
          );
          unittest.expect(
            queryMap['connectAgent.namespace']!.first,
            unittest.equals(arg_connectAgent_namespace),
          );
          unittest.expect(
            queryMap['connectAgent.proxy']!.first,
            unittest.equals(arg_connectAgent_proxy),
          );
          unittest.expect(
            queryMap['imagePullSecretContent']!.first,
            unittest.equals(arg_imagePullSecretContent),
          );
          unittest.expect(
            queryMap['isUpgrade']!.first,
            unittest.equals('$arg_isUpgrade'),
          );
          unittest.expect(
            queryMap['registry']!.first,
            unittest.equals(arg_registry),
          );
          unittest.expect(
            queryMap['version']!.first,
            unittest.equals(arg_version),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGenerateConnectManifestResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateConnectManifest(
        arg_name,
        connectAgent_name: arg_connectAgent_name,
        connectAgent_namespace: arg_connectAgent_namespace,
        connectAgent_proxy: arg_connectAgent_proxy,
        imagePullSecretContent: arg_imagePullSecretContent,
        isUpgrade: arg_isUpgrade,
        registry: arg_registry,
        version: arg_version,
        $fields: arg_$fields,
      );
      checkGenerateConnectManifestResponse(
        response as api.GenerateConnectManifestResponse,
      );
    });

    unittest.test('method--generateExclusivityManifest', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships;
      final arg_name = 'foo';
      final arg_crManifest = 'foo';
      final arg_crdManifest = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            queryMap['crManifest']!.first,
            unittest.equals(arg_crManifest),
          );
          unittest.expect(
            queryMap['crdManifest']!.first,
            unittest.equals(arg_crdManifest),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGenerateExclusivityManifestResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateExclusivityManifest(
        arg_name,
        crManifest: arg_crManifest,
        crdManifest: arg_crdManifest,
        $fields: arg_$fields,
      );
      checkGenerateExclusivityManifestResponse(
        response as api.GenerateExclusivityManifestResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships;
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
          final resp = convert.json.encode(buildMembership());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMembership(response as api.Membership);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships;
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
      final res = api.GKEHubApi(mock).projects.locations.memberships;
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
          final resp = convert.json.encode(buildListMembershipsResponse());
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
      checkListMembershipsResponse(response as api.ListMembershipsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships;
      final arg_request = buildMembership();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Membership.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMembership(obj);

          final path = req.url.path;
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

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships;
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
      final res = api.GKEHubApi(mock).projects.locations.memberships;
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

    unittest.test('method--validateExclusivity', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships;
      final arg_parent = 'foo';
      final arg_crManifest = 'foo';
      final arg_intendedMembership = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            queryMap['crManifest']!.first,
            unittest.equals(arg_crManifest),
          );
          unittest.expect(
            queryMap['intendedMembership']!.first,
            unittest.equals(arg_intendedMembership),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildValidateExclusivityResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.validateExclusivity(
        arg_parent,
        crManifest: arg_crManifest,
        intendedMembership: arg_intendedMembership,
        $fields: arg_$fields,
      );
      checkValidateExclusivityResponse(
        response as api.ValidateExclusivityResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.operations;
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
      final res = api.GKEHubApi(mock).projects.locations.operations;
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
      final res = api.GKEHubApi(mock).projects.locations.operations;
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
      final res = api.GKEHubApi(mock).projects.locations.operations;
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
}
