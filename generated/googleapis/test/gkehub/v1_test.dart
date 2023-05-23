// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/gkehub/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAppDevExperienceFeatureSpec = 0;
api.AppDevExperienceFeatureSpec buildAppDevExperienceFeatureSpec() {
  final o = api.AppDevExperienceFeatureSpec();
  buildCounterAppDevExperienceFeatureSpec++;
  if (buildCounterAppDevExperienceFeatureSpec < 3) {}
  buildCounterAppDevExperienceFeatureSpec--;
  return o;
}

void checkAppDevExperienceFeatureSpec(api.AppDevExperienceFeatureSpec o) {
  buildCounterAppDevExperienceFeatureSpec++;
  if (buildCounterAppDevExperienceFeatureSpec < 3) {}
  buildCounterAppDevExperienceFeatureSpec--;
}

core.int buildCounterAppDevExperienceFeatureState = 0;
api.AppDevExperienceFeatureState buildAppDevExperienceFeatureState() {
  final o = api.AppDevExperienceFeatureState();
  buildCounterAppDevExperienceFeatureState++;
  if (buildCounterAppDevExperienceFeatureState < 3) {
    o.networkingInstallSucceeded = buildStatus();
  }
  buildCounterAppDevExperienceFeatureState--;
  return o;
}

void checkAppDevExperienceFeatureState(api.AppDevExperienceFeatureState o) {
  buildCounterAppDevExperienceFeatureState++;
  if (buildCounterAppDevExperienceFeatureState < 3) {
    checkStatus(o.networkingInstallSucceeded!);
  }
  buildCounterAppDevExperienceFeatureState--;
}

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
    unittest.expect(
      o.resourceLink!,
      unittest.equals('foo'),
    );
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

core.int buildCounterAuthority = 0;
api.Authority buildAuthority() {
  final o = api.Authority();
  buildCounterAuthority++;
  if (buildCounterAuthority < 3) {
    o.identityProvider = 'foo';
    o.issuer = 'foo';
    o.oidcJwks = 'foo';
    o.workloadIdentityPool = 'foo';
  }
  buildCounterAuthority--;
  return o;
}

void checkAuthority(api.Authority o) {
  buildCounterAuthority++;
  if (buildCounterAuthority < 3) {
    unittest.expect(
      o.identityProvider!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.issuer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oidcJwks!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workloadIdentityPool!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthority--;
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

core.int buildCounterCommonFeatureSpec = 0;
api.CommonFeatureSpec buildCommonFeatureSpec() {
  final o = api.CommonFeatureSpec();
  buildCounterCommonFeatureSpec++;
  if (buildCounterCommonFeatureSpec < 3) {
    o.appdevexperience = buildAppDevExperienceFeatureSpec();
    o.fleetobservability = buildFleetObservabilityFeatureSpec();
    o.multiclusteringress = buildMultiClusterIngressFeatureSpec();
  }
  buildCounterCommonFeatureSpec--;
  return o;
}

void checkCommonFeatureSpec(api.CommonFeatureSpec o) {
  buildCounterCommonFeatureSpec++;
  if (buildCounterCommonFeatureSpec < 3) {
    checkAppDevExperienceFeatureSpec(o.appdevexperience!);
    checkFleetObservabilityFeatureSpec(o.fleetobservability!);
    checkMultiClusterIngressFeatureSpec(o.multiclusteringress!);
  }
  buildCounterCommonFeatureSpec--;
}

core.int buildCounterCommonFeatureState = 0;
api.CommonFeatureState buildCommonFeatureState() {
  final o = api.CommonFeatureState();
  buildCounterCommonFeatureState++;
  if (buildCounterCommonFeatureState < 3) {
    o.appdevexperience = buildAppDevExperienceFeatureState();
    o.fleetobservability = buildFleetObservabilityFeatureState();
    o.state = buildFeatureState();
  }
  buildCounterCommonFeatureState--;
  return o;
}

void checkCommonFeatureState(api.CommonFeatureState o) {
  buildCounterCommonFeatureState++;
  if (buildCounterCommonFeatureState < 3) {
    checkAppDevExperienceFeatureState(o.appdevexperience!);
    checkFleetObservabilityFeatureState(o.fleetobservability!);
    checkFeatureState(o.state!);
  }
  buildCounterCommonFeatureState--;
}

core.int buildCounterCommonFleetDefaultMemberConfigSpec = 0;
api.CommonFleetDefaultMemberConfigSpec
    buildCommonFleetDefaultMemberConfigSpec() {
  final o = api.CommonFleetDefaultMemberConfigSpec();
  buildCounterCommonFleetDefaultMemberConfigSpec++;
  if (buildCounterCommonFleetDefaultMemberConfigSpec < 3) {}
  buildCounterCommonFleetDefaultMemberConfigSpec--;
  return o;
}

void checkCommonFleetDefaultMemberConfigSpec(
    api.CommonFleetDefaultMemberConfigSpec o) {
  buildCounterCommonFleetDefaultMemberConfigSpec++;
  if (buildCounterCommonFleetDefaultMemberConfigSpec < 3) {}
  buildCounterCommonFleetDefaultMemberConfigSpec--;
}

core.int buildCounterConfigManagementConfigSync = 0;
api.ConfigManagementConfigSync buildConfigManagementConfigSync() {
  final o = api.ConfigManagementConfigSync();
  buildCounterConfigManagementConfigSync++;
  if (buildCounterConfigManagementConfigSync < 3) {
    o.allowVerticalScale = true;
    o.enabled = true;
    o.git = buildConfigManagementGitConfig();
    o.managed = buildConfigManagementManaged();
    o.oci = buildConfigManagementOciConfig();
    o.preventDrift = true;
    o.sourceFormat = 'foo';
  }
  buildCounterConfigManagementConfigSync--;
  return o;
}

void checkConfigManagementConfigSync(api.ConfigManagementConfigSync o) {
  buildCounterConfigManagementConfigSync++;
  if (buildCounterConfigManagementConfigSync < 3) {
    unittest.expect(o.allowVerticalScale!, unittest.isTrue);
    unittest.expect(o.enabled!, unittest.isTrue);
    checkConfigManagementGitConfig(o.git!);
    checkConfigManagementManaged(o.managed!);
    checkConfigManagementOciConfig(o.oci!);
    unittest.expect(o.preventDrift!, unittest.isTrue);
    unittest.expect(
      o.sourceFormat!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementConfigSync--;
}

core.int buildCounterConfigManagementConfigSyncDeploymentState = 0;
api.ConfigManagementConfigSyncDeploymentState
    buildConfigManagementConfigSyncDeploymentState() {
  final o = api.ConfigManagementConfigSyncDeploymentState();
  buildCounterConfigManagementConfigSyncDeploymentState++;
  if (buildCounterConfigManagementConfigSyncDeploymentState < 3) {
    o.admissionWebhook = 'foo';
    o.gitSync = 'foo';
    o.importer = 'foo';
    o.monitor = 'foo';
    o.reconcilerManager = 'foo';
    o.rootReconciler = 'foo';
    o.syncer = 'foo';
  }
  buildCounterConfigManagementConfigSyncDeploymentState--;
  return o;
}

void checkConfigManagementConfigSyncDeploymentState(
    api.ConfigManagementConfigSyncDeploymentState o) {
  buildCounterConfigManagementConfigSyncDeploymentState++;
  if (buildCounterConfigManagementConfigSyncDeploymentState < 3) {
    unittest.expect(
      o.admissionWebhook!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gitSync!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.importer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.monitor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reconcilerManager!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rootReconciler!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syncer!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementConfigSyncDeploymentState--;
}

core.int buildCounterConfigManagementConfigSyncState = 0;
api.ConfigManagementConfigSyncState buildConfigManagementConfigSyncState() {
  final o = api.ConfigManagementConfigSyncState();
  buildCounterConfigManagementConfigSyncState++;
  if (buildCounterConfigManagementConfigSyncState < 3) {
    o.deploymentState = buildConfigManagementConfigSyncDeploymentState();
    o.syncState = buildConfigManagementSyncState();
    o.version = buildConfigManagementConfigSyncVersion();
  }
  buildCounterConfigManagementConfigSyncState--;
  return o;
}

void checkConfigManagementConfigSyncState(
    api.ConfigManagementConfigSyncState o) {
  buildCounterConfigManagementConfigSyncState++;
  if (buildCounterConfigManagementConfigSyncState < 3) {
    checkConfigManagementConfigSyncDeploymentState(o.deploymentState!);
    checkConfigManagementSyncState(o.syncState!);
    checkConfigManagementConfigSyncVersion(o.version!);
  }
  buildCounterConfigManagementConfigSyncState--;
}

core.int buildCounterConfigManagementConfigSyncVersion = 0;
api.ConfigManagementConfigSyncVersion buildConfigManagementConfigSyncVersion() {
  final o = api.ConfigManagementConfigSyncVersion();
  buildCounterConfigManagementConfigSyncVersion++;
  if (buildCounterConfigManagementConfigSyncVersion < 3) {
    o.admissionWebhook = 'foo';
    o.gitSync = 'foo';
    o.importer = 'foo';
    o.monitor = 'foo';
    o.reconcilerManager = 'foo';
    o.rootReconciler = 'foo';
    o.syncer = 'foo';
  }
  buildCounterConfigManagementConfigSyncVersion--;
  return o;
}

void checkConfigManagementConfigSyncVersion(
    api.ConfigManagementConfigSyncVersion o) {
  buildCounterConfigManagementConfigSyncVersion++;
  if (buildCounterConfigManagementConfigSyncVersion < 3) {
    unittest.expect(
      o.admissionWebhook!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gitSync!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.importer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.monitor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reconcilerManager!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rootReconciler!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syncer!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementConfigSyncVersion--;
}

core.int buildCounterConfigManagementErrorResource = 0;
api.ConfigManagementErrorResource buildConfigManagementErrorResource() {
  final o = api.ConfigManagementErrorResource();
  buildCounterConfigManagementErrorResource++;
  if (buildCounterConfigManagementErrorResource < 3) {
    o.resourceGvk = buildConfigManagementGroupVersionKind();
    o.resourceName = 'foo';
    o.resourceNamespace = 'foo';
    o.sourcePath = 'foo';
  }
  buildCounterConfigManagementErrorResource--;
  return o;
}

void checkConfigManagementErrorResource(api.ConfigManagementErrorResource o) {
  buildCounterConfigManagementErrorResource++;
  if (buildCounterConfigManagementErrorResource < 3) {
    checkConfigManagementGroupVersionKind(o.resourceGvk!);
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceNamespace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourcePath!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementErrorResource--;
}

core.int buildCounterConfigManagementGatekeeperDeploymentState = 0;
api.ConfigManagementGatekeeperDeploymentState
    buildConfigManagementGatekeeperDeploymentState() {
  final o = api.ConfigManagementGatekeeperDeploymentState();
  buildCounterConfigManagementGatekeeperDeploymentState++;
  if (buildCounterConfigManagementGatekeeperDeploymentState < 3) {
    o.gatekeeperAudit = 'foo';
    o.gatekeeperControllerManagerState = 'foo';
    o.gatekeeperMutation = 'foo';
  }
  buildCounterConfigManagementGatekeeperDeploymentState--;
  return o;
}

void checkConfigManagementGatekeeperDeploymentState(
    api.ConfigManagementGatekeeperDeploymentState o) {
  buildCounterConfigManagementGatekeeperDeploymentState++;
  if (buildCounterConfigManagementGatekeeperDeploymentState < 3) {
    unittest.expect(
      o.gatekeeperAudit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gatekeeperControllerManagerState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gatekeeperMutation!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementGatekeeperDeploymentState--;
}

core.int buildCounterConfigManagementGitConfig = 0;
api.ConfigManagementGitConfig buildConfigManagementGitConfig() {
  final o = api.ConfigManagementGitConfig();
  buildCounterConfigManagementGitConfig++;
  if (buildCounterConfigManagementGitConfig < 3) {
    o.gcpServiceAccountEmail = 'foo';
    o.httpsProxy = 'foo';
    o.policyDir = 'foo';
    o.secretType = 'foo';
    o.syncBranch = 'foo';
    o.syncRepo = 'foo';
    o.syncRev = 'foo';
    o.syncWaitSecs = 'foo';
  }
  buildCounterConfigManagementGitConfig--;
  return o;
}

void checkConfigManagementGitConfig(api.ConfigManagementGitConfig o) {
  buildCounterConfigManagementGitConfig++;
  if (buildCounterConfigManagementGitConfig < 3) {
    unittest.expect(
      o.gcpServiceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.httpsProxy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policyDir!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secretType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syncBranch!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syncRepo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syncRev!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syncWaitSecs!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementGitConfig--;
}

core.int buildCounterConfigManagementGroupVersionKind = 0;
api.ConfigManagementGroupVersionKind buildConfigManagementGroupVersionKind() {
  final o = api.ConfigManagementGroupVersionKind();
  buildCounterConfigManagementGroupVersionKind++;
  if (buildCounterConfigManagementGroupVersionKind < 3) {
    o.group = 'foo';
    o.kind = 'foo';
    o.version = 'foo';
  }
  buildCounterConfigManagementGroupVersionKind--;
  return o;
}

void checkConfigManagementGroupVersionKind(
    api.ConfigManagementGroupVersionKind o) {
  buildCounterConfigManagementGroupVersionKind++;
  if (buildCounterConfigManagementGroupVersionKind < 3) {
    unittest.expect(
      o.group!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementGroupVersionKind--;
}

core.int buildCounterConfigManagementHierarchyControllerConfig = 0;
api.ConfigManagementHierarchyControllerConfig
    buildConfigManagementHierarchyControllerConfig() {
  final o = api.ConfigManagementHierarchyControllerConfig();
  buildCounterConfigManagementHierarchyControllerConfig++;
  if (buildCounterConfigManagementHierarchyControllerConfig < 3) {
    o.enableHierarchicalResourceQuota = true;
    o.enablePodTreeLabels = true;
    o.enabled = true;
  }
  buildCounterConfigManagementHierarchyControllerConfig--;
  return o;
}

void checkConfigManagementHierarchyControllerConfig(
    api.ConfigManagementHierarchyControllerConfig o) {
  buildCounterConfigManagementHierarchyControllerConfig++;
  if (buildCounterConfigManagementHierarchyControllerConfig < 3) {
    unittest.expect(o.enableHierarchicalResourceQuota!, unittest.isTrue);
    unittest.expect(o.enablePodTreeLabels!, unittest.isTrue);
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterConfigManagementHierarchyControllerConfig--;
}

core.int buildCounterConfigManagementHierarchyControllerDeploymentState = 0;
api.ConfigManagementHierarchyControllerDeploymentState
    buildConfigManagementHierarchyControllerDeploymentState() {
  final o = api.ConfigManagementHierarchyControllerDeploymentState();
  buildCounterConfigManagementHierarchyControllerDeploymentState++;
  if (buildCounterConfigManagementHierarchyControllerDeploymentState < 3) {
    o.extension = 'foo';
    o.hnc = 'foo';
  }
  buildCounterConfigManagementHierarchyControllerDeploymentState--;
  return o;
}

void checkConfigManagementHierarchyControllerDeploymentState(
    api.ConfigManagementHierarchyControllerDeploymentState o) {
  buildCounterConfigManagementHierarchyControllerDeploymentState++;
  if (buildCounterConfigManagementHierarchyControllerDeploymentState < 3) {
    unittest.expect(
      o.extension!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hnc!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementHierarchyControllerDeploymentState--;
}

core.int buildCounterConfigManagementHierarchyControllerState = 0;
api.ConfigManagementHierarchyControllerState
    buildConfigManagementHierarchyControllerState() {
  final o = api.ConfigManagementHierarchyControllerState();
  buildCounterConfigManagementHierarchyControllerState++;
  if (buildCounterConfigManagementHierarchyControllerState < 3) {
    o.state = buildConfigManagementHierarchyControllerDeploymentState();
    o.version = buildConfigManagementHierarchyControllerVersion();
  }
  buildCounterConfigManagementHierarchyControllerState--;
  return o;
}

void checkConfigManagementHierarchyControllerState(
    api.ConfigManagementHierarchyControllerState o) {
  buildCounterConfigManagementHierarchyControllerState++;
  if (buildCounterConfigManagementHierarchyControllerState < 3) {
    checkConfigManagementHierarchyControllerDeploymentState(o.state!);
    checkConfigManagementHierarchyControllerVersion(o.version!);
  }
  buildCounterConfigManagementHierarchyControllerState--;
}

core.int buildCounterConfigManagementHierarchyControllerVersion = 0;
api.ConfigManagementHierarchyControllerVersion
    buildConfigManagementHierarchyControllerVersion() {
  final o = api.ConfigManagementHierarchyControllerVersion();
  buildCounterConfigManagementHierarchyControllerVersion++;
  if (buildCounterConfigManagementHierarchyControllerVersion < 3) {
    o.extension = 'foo';
    o.hnc = 'foo';
  }
  buildCounterConfigManagementHierarchyControllerVersion--;
  return o;
}

void checkConfigManagementHierarchyControllerVersion(
    api.ConfigManagementHierarchyControllerVersion o) {
  buildCounterConfigManagementHierarchyControllerVersion++;
  if (buildCounterConfigManagementHierarchyControllerVersion < 3) {
    unittest.expect(
      o.extension!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hnc!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementHierarchyControllerVersion--;
}

core.int buildCounterConfigManagementInstallError = 0;
api.ConfigManagementInstallError buildConfigManagementInstallError() {
  final o = api.ConfigManagementInstallError();
  buildCounterConfigManagementInstallError++;
  if (buildCounterConfigManagementInstallError < 3) {
    o.errorMessage = 'foo';
  }
  buildCounterConfigManagementInstallError--;
  return o;
}

void checkConfigManagementInstallError(api.ConfigManagementInstallError o) {
  buildCounterConfigManagementInstallError++;
  if (buildCounterConfigManagementInstallError < 3) {
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementInstallError--;
}

core.int buildCounterConfigManagementManaged = 0;
api.ConfigManagementManaged buildConfigManagementManaged() {
  final o = api.ConfigManagementManaged();
  buildCounterConfigManagementManaged++;
  if (buildCounterConfigManagementManaged < 3) {
    o.enabled = true;
  }
  buildCounterConfigManagementManaged--;
  return o;
}

void checkConfigManagementManaged(api.ConfigManagementManaged o) {
  buildCounterConfigManagementManaged++;
  if (buildCounterConfigManagementManaged < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterConfigManagementManaged--;
}

core.int buildCounterConfigManagementMembershipSpec = 0;
api.ConfigManagementMembershipSpec buildConfigManagementMembershipSpec() {
  final o = api.ConfigManagementMembershipSpec();
  buildCounterConfigManagementMembershipSpec++;
  if (buildCounterConfigManagementMembershipSpec < 3) {
    o.configSync = buildConfigManagementConfigSync();
    o.hierarchyController = buildConfigManagementHierarchyControllerConfig();
    o.policyController = buildConfigManagementPolicyController();
    o.version = 'foo';
  }
  buildCounterConfigManagementMembershipSpec--;
  return o;
}

void checkConfigManagementMembershipSpec(api.ConfigManagementMembershipSpec o) {
  buildCounterConfigManagementMembershipSpec++;
  if (buildCounterConfigManagementMembershipSpec < 3) {
    checkConfigManagementConfigSync(o.configSync!);
    checkConfigManagementHierarchyControllerConfig(o.hierarchyController!);
    checkConfigManagementPolicyController(o.policyController!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementMembershipSpec--;
}

core.int buildCounterConfigManagementMembershipState = 0;
api.ConfigManagementMembershipState buildConfigManagementMembershipState() {
  final o = api.ConfigManagementMembershipState();
  buildCounterConfigManagementMembershipState++;
  if (buildCounterConfigManagementMembershipState < 3) {
    o.clusterName = 'foo';
    o.configSyncState = buildConfigManagementConfigSyncState();
    o.hierarchyControllerState =
        buildConfigManagementHierarchyControllerState();
    o.membershipSpec = buildConfigManagementMembershipSpec();
    o.operatorState = buildConfigManagementOperatorState();
    o.policyControllerState = buildConfigManagementPolicyControllerState();
  }
  buildCounterConfigManagementMembershipState--;
  return o;
}

void checkConfigManagementMembershipState(
    api.ConfigManagementMembershipState o) {
  buildCounterConfigManagementMembershipState++;
  if (buildCounterConfigManagementMembershipState < 3) {
    unittest.expect(
      o.clusterName!,
      unittest.equals('foo'),
    );
    checkConfigManagementConfigSyncState(o.configSyncState!);
    checkConfigManagementHierarchyControllerState(o.hierarchyControllerState!);
    checkConfigManagementMembershipSpec(o.membershipSpec!);
    checkConfigManagementOperatorState(o.operatorState!);
    checkConfigManagementPolicyControllerState(o.policyControllerState!);
  }
  buildCounterConfigManagementMembershipState--;
}

core.int buildCounterConfigManagementOciConfig = 0;
api.ConfigManagementOciConfig buildConfigManagementOciConfig() {
  final o = api.ConfigManagementOciConfig();
  buildCounterConfigManagementOciConfig++;
  if (buildCounterConfigManagementOciConfig < 3) {
    o.gcpServiceAccountEmail = 'foo';
    o.policyDir = 'foo';
    o.secretType = 'foo';
    o.syncRepo = 'foo';
    o.syncWaitSecs = 'foo';
  }
  buildCounterConfigManagementOciConfig--;
  return o;
}

void checkConfigManagementOciConfig(api.ConfigManagementOciConfig o) {
  buildCounterConfigManagementOciConfig++;
  if (buildCounterConfigManagementOciConfig < 3) {
    unittest.expect(
      o.gcpServiceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policyDir!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secretType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syncRepo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syncWaitSecs!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementOciConfig--;
}

core.List<api.ConfigManagementInstallError> buildUnnamed3() => [
      buildConfigManagementInstallError(),
      buildConfigManagementInstallError(),
    ];

void checkUnnamed3(core.List<api.ConfigManagementInstallError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigManagementInstallError(o[0]);
  checkConfigManagementInstallError(o[1]);
}

core.int buildCounterConfigManagementOperatorState = 0;
api.ConfigManagementOperatorState buildConfigManagementOperatorState() {
  final o = api.ConfigManagementOperatorState();
  buildCounterConfigManagementOperatorState++;
  if (buildCounterConfigManagementOperatorState < 3) {
    o.deploymentState = 'foo';
    o.errors = buildUnnamed3();
    o.version = 'foo';
  }
  buildCounterConfigManagementOperatorState--;
  return o;
}

void checkConfigManagementOperatorState(api.ConfigManagementOperatorState o) {
  buildCounterConfigManagementOperatorState++;
  if (buildCounterConfigManagementOperatorState < 3) {
    unittest.expect(
      o.deploymentState!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.errors!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementOperatorState--;
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

core.int buildCounterConfigManagementPolicyController = 0;
api.ConfigManagementPolicyController buildConfigManagementPolicyController() {
  final o = api.ConfigManagementPolicyController();
  buildCounterConfigManagementPolicyController++;
  if (buildCounterConfigManagementPolicyController < 3) {
    o.auditIntervalSeconds = 'foo';
    o.enabled = true;
    o.exemptableNamespaces = buildUnnamed4();
    o.logDeniesEnabled = true;
    o.monitoring = buildConfigManagementPolicyControllerMonitoring();
    o.mutationEnabled = true;
    o.referentialRulesEnabled = true;
    o.templateLibraryInstalled = true;
  }
  buildCounterConfigManagementPolicyController--;
  return o;
}

void checkConfigManagementPolicyController(
    api.ConfigManagementPolicyController o) {
  buildCounterConfigManagementPolicyController++;
  if (buildCounterConfigManagementPolicyController < 3) {
    unittest.expect(
      o.auditIntervalSeconds!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enabled!, unittest.isTrue);
    checkUnnamed4(o.exemptableNamespaces!);
    unittest.expect(o.logDeniesEnabled!, unittest.isTrue);
    checkConfigManagementPolicyControllerMonitoring(o.monitoring!);
    unittest.expect(o.mutationEnabled!, unittest.isTrue);
    unittest.expect(o.referentialRulesEnabled!, unittest.isTrue);
    unittest.expect(o.templateLibraryInstalled!, unittest.isTrue);
  }
  buildCounterConfigManagementPolicyController--;
}

core.int buildCounterConfigManagementPolicyControllerMigration = 0;
api.ConfigManagementPolicyControllerMigration
    buildConfigManagementPolicyControllerMigration() {
  final o = api.ConfigManagementPolicyControllerMigration();
  buildCounterConfigManagementPolicyControllerMigration++;
  if (buildCounterConfigManagementPolicyControllerMigration < 3) {
    o.stage = 'foo';
  }
  buildCounterConfigManagementPolicyControllerMigration--;
  return o;
}

void checkConfigManagementPolicyControllerMigration(
    api.ConfigManagementPolicyControllerMigration o) {
  buildCounterConfigManagementPolicyControllerMigration++;
  if (buildCounterConfigManagementPolicyControllerMigration < 3) {
    unittest.expect(
      o.stage!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementPolicyControllerMigration--;
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

core.int buildCounterConfigManagementPolicyControllerMonitoring = 0;
api.ConfigManagementPolicyControllerMonitoring
    buildConfigManagementPolicyControllerMonitoring() {
  final o = api.ConfigManagementPolicyControllerMonitoring();
  buildCounterConfigManagementPolicyControllerMonitoring++;
  if (buildCounterConfigManagementPolicyControllerMonitoring < 3) {
    o.backends = buildUnnamed5();
  }
  buildCounterConfigManagementPolicyControllerMonitoring--;
  return o;
}

void checkConfigManagementPolicyControllerMonitoring(
    api.ConfigManagementPolicyControllerMonitoring o) {
  buildCounterConfigManagementPolicyControllerMonitoring++;
  if (buildCounterConfigManagementPolicyControllerMonitoring < 3) {
    checkUnnamed5(o.backends!);
  }
  buildCounterConfigManagementPolicyControllerMonitoring--;
}

core.int buildCounterConfigManagementPolicyControllerState = 0;
api.ConfigManagementPolicyControllerState
    buildConfigManagementPolicyControllerState() {
  final o = api.ConfigManagementPolicyControllerState();
  buildCounterConfigManagementPolicyControllerState++;
  if (buildCounterConfigManagementPolicyControllerState < 3) {
    o.deploymentState = buildConfigManagementGatekeeperDeploymentState();
    o.migration = buildConfigManagementPolicyControllerMigration();
    o.version = buildConfigManagementPolicyControllerVersion();
  }
  buildCounterConfigManagementPolicyControllerState--;
  return o;
}

void checkConfigManagementPolicyControllerState(
    api.ConfigManagementPolicyControllerState o) {
  buildCounterConfigManagementPolicyControllerState++;
  if (buildCounterConfigManagementPolicyControllerState < 3) {
    checkConfigManagementGatekeeperDeploymentState(o.deploymentState!);
    checkConfigManagementPolicyControllerMigration(o.migration!);
    checkConfigManagementPolicyControllerVersion(o.version!);
  }
  buildCounterConfigManagementPolicyControllerState--;
}

core.int buildCounterConfigManagementPolicyControllerVersion = 0;
api.ConfigManagementPolicyControllerVersion
    buildConfigManagementPolicyControllerVersion() {
  final o = api.ConfigManagementPolicyControllerVersion();
  buildCounterConfigManagementPolicyControllerVersion++;
  if (buildCounterConfigManagementPolicyControllerVersion < 3) {
    o.version = 'foo';
  }
  buildCounterConfigManagementPolicyControllerVersion--;
  return o;
}

void checkConfigManagementPolicyControllerVersion(
    api.ConfigManagementPolicyControllerVersion o) {
  buildCounterConfigManagementPolicyControllerVersion++;
  if (buildCounterConfigManagementPolicyControllerVersion < 3) {
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementPolicyControllerVersion--;
}

core.List<api.ConfigManagementErrorResource> buildUnnamed6() => [
      buildConfigManagementErrorResource(),
      buildConfigManagementErrorResource(),
    ];

void checkUnnamed6(core.List<api.ConfigManagementErrorResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigManagementErrorResource(o[0]);
  checkConfigManagementErrorResource(o[1]);
}

core.int buildCounterConfigManagementSyncError = 0;
api.ConfigManagementSyncError buildConfigManagementSyncError() {
  final o = api.ConfigManagementSyncError();
  buildCounterConfigManagementSyncError++;
  if (buildCounterConfigManagementSyncError < 3) {
    o.code = 'foo';
    o.errorMessage = 'foo';
    o.errorResources = buildUnnamed6();
  }
  buildCounterConfigManagementSyncError--;
  return o;
}

void checkConfigManagementSyncError(api.ConfigManagementSyncError o) {
  buildCounterConfigManagementSyncError++;
  if (buildCounterConfigManagementSyncError < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.errorResources!);
  }
  buildCounterConfigManagementSyncError--;
}

core.List<api.ConfigManagementSyncError> buildUnnamed7() => [
      buildConfigManagementSyncError(),
      buildConfigManagementSyncError(),
    ];

void checkUnnamed7(core.List<api.ConfigManagementSyncError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigManagementSyncError(o[0]);
  checkConfigManagementSyncError(o[1]);
}

core.int buildCounterConfigManagementSyncState = 0;
api.ConfigManagementSyncState buildConfigManagementSyncState() {
  final o = api.ConfigManagementSyncState();
  buildCounterConfigManagementSyncState++;
  if (buildCounterConfigManagementSyncState < 3) {
    o.code = 'foo';
    o.errors = buildUnnamed7();
    o.importToken = 'foo';
    o.lastSync = 'foo';
    o.lastSyncTime = 'foo';
    o.sourceToken = 'foo';
    o.syncToken = 'foo';
  }
  buildCounterConfigManagementSyncState--;
  return o;
}

void checkConfigManagementSyncState(api.ConfigManagementSyncState o) {
  buildCounterConfigManagementSyncState++;
  if (buildCounterConfigManagementSyncState < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.errors!);
    unittest.expect(
      o.importToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastSync!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastSyncTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syncToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementSyncState--;
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
    unittest.expect(
      o.manifest!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.resourceLink!,
      unittest.equals('foo'),
    );
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

core.Map<core.String, core.String> buildUnnamed8() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8(core.Map<core.String, core.String> o) {
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

core.Map<core.String, api.MembershipFeatureSpec> buildUnnamed9() => {
      'x': buildMembershipFeatureSpec(),
      'y': buildMembershipFeatureSpec(),
    };

void checkUnnamed9(core.Map<core.String, api.MembershipFeatureSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipFeatureSpec(o['x']!);
  checkMembershipFeatureSpec(o['y']!);
}

core.Map<core.String, api.MembershipFeatureState> buildUnnamed10() => {
      'x': buildMembershipFeatureState(),
      'y': buildMembershipFeatureState(),
    };

void checkUnnamed10(core.Map<core.String, api.MembershipFeatureState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipFeatureState(o['x']!);
  checkMembershipFeatureState(o['y']!);
}

core.Map<core.String, api.ScopeFeatureSpec> buildUnnamed11() => {
      'x': buildScopeFeatureSpec(),
      'y': buildScopeFeatureSpec(),
    };

void checkUnnamed11(core.Map<core.String, api.ScopeFeatureSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScopeFeatureSpec(o['x']!);
  checkScopeFeatureSpec(o['y']!);
}

core.Map<core.String, api.ScopeFeatureState> buildUnnamed12() => {
      'x': buildScopeFeatureState(),
      'y': buildScopeFeatureState(),
    };

void checkUnnamed12(core.Map<core.String, api.ScopeFeatureState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScopeFeatureState(o['x']!);
  checkScopeFeatureState(o['y']!);
}

core.int buildCounterFeature = 0;
api.Feature buildFeature() {
  final o = api.Feature();
  buildCounterFeature++;
  if (buildCounterFeature < 3) {
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.fleetDefaultMemberConfig = buildCommonFleetDefaultMemberConfigSpec();
    o.labels = buildUnnamed8();
    o.membershipSpecs = buildUnnamed9();
    o.membershipStates = buildUnnamed10();
    o.name = 'foo';
    o.resourceState = buildFeatureResourceState();
    o.scopeSpecs = buildUnnamed11();
    o.scopeStates = buildUnnamed12();
    o.spec = buildCommonFeatureSpec();
    o.state = buildCommonFeatureState();
    o.updateTime = 'foo';
  }
  buildCounterFeature--;
  return o;
}

void checkFeature(api.Feature o) {
  buildCounterFeature++;
  if (buildCounterFeature < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    checkCommonFleetDefaultMemberConfigSpec(o.fleetDefaultMemberConfig!);
    checkUnnamed8(o.labels!);
    checkUnnamed9(o.membershipSpecs!);
    checkUnnamed10(o.membershipStates!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkFeatureResourceState(o.resourceState!);
    checkUnnamed11(o.scopeSpecs!);
    checkUnnamed12(o.scopeStates!);
    checkCommonFeatureSpec(o.spec!);
    checkCommonFeatureState(o.state!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterFeature--;
}

core.int buildCounterFeatureResourceState = 0;
api.FeatureResourceState buildFeatureResourceState() {
  final o = api.FeatureResourceState();
  buildCounterFeatureResourceState++;
  if (buildCounterFeatureResourceState < 3) {
    o.state = 'foo';
  }
  buildCounterFeatureResourceState--;
  return o;
}

void checkFeatureResourceState(api.FeatureResourceState o) {
  buildCounterFeatureResourceState++;
  if (buildCounterFeatureResourceState < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterFeatureResourceState--;
}

core.int buildCounterFeatureState = 0;
api.FeatureState buildFeatureState() {
  final o = api.FeatureState();
  buildCounterFeatureState++;
  if (buildCounterFeatureState < 3) {
    o.code = 'foo';
    o.description = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterFeatureState--;
  return o;
}

void checkFeatureState(api.FeatureState o) {
  buildCounterFeatureState++;
  if (buildCounterFeatureState < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterFeatureState--;
}

core.int buildCounterFleetObservabilityFeatureSpec = 0;
api.FleetObservabilityFeatureSpec buildFleetObservabilityFeatureSpec() {
  final o = api.FleetObservabilityFeatureSpec();
  buildCounterFleetObservabilityFeatureSpec++;
  if (buildCounterFleetObservabilityFeatureSpec < 3) {}
  buildCounterFleetObservabilityFeatureSpec--;
  return o;
}

void checkFleetObservabilityFeatureSpec(api.FleetObservabilityFeatureSpec o) {
  buildCounterFleetObservabilityFeatureSpec++;
  if (buildCounterFleetObservabilityFeatureSpec < 3) {}
  buildCounterFleetObservabilityFeatureSpec--;
}

core.int buildCounterFleetObservabilityFeatureState = 0;
api.FleetObservabilityFeatureState buildFleetObservabilityFeatureState() {
  final o = api.FleetObservabilityFeatureState();
  buildCounterFleetObservabilityFeatureState++;
  if (buildCounterFleetObservabilityFeatureState < 3) {}
  buildCounterFleetObservabilityFeatureState--;
  return o;
}

void checkFleetObservabilityFeatureState(api.FleetObservabilityFeatureState o) {
  buildCounterFleetObservabilityFeatureState++;
  if (buildCounterFleetObservabilityFeatureState < 3) {}
  buildCounterFleetObservabilityFeatureState--;
}

core.int buildCounterFleetObservabilityMembershipSpec = 0;
api.FleetObservabilityMembershipSpec buildFleetObservabilityMembershipSpec() {
  final o = api.FleetObservabilityMembershipSpec();
  buildCounterFleetObservabilityMembershipSpec++;
  if (buildCounterFleetObservabilityMembershipSpec < 3) {}
  buildCounterFleetObservabilityMembershipSpec--;
  return o;
}

void checkFleetObservabilityMembershipSpec(
    api.FleetObservabilityMembershipSpec o) {
  buildCounterFleetObservabilityMembershipSpec++;
  if (buildCounterFleetObservabilityMembershipSpec < 3) {}
  buildCounterFleetObservabilityMembershipSpec--;
}

core.int buildCounterFleetObservabilityMembershipState = 0;
api.FleetObservabilityMembershipState buildFleetObservabilityMembershipState() {
  final o = api.FleetObservabilityMembershipState();
  buildCounterFleetObservabilityMembershipState++;
  if (buildCounterFleetObservabilityMembershipState < 3) {}
  buildCounterFleetObservabilityMembershipState--;
  return o;
}

void checkFleetObservabilityMembershipState(
    api.FleetObservabilityMembershipState o) {
  buildCounterFleetObservabilityMembershipState++;
  if (buildCounterFleetObservabilityMembershipState < 3) {}
  buildCounterFleetObservabilityMembershipState--;
}

core.List<api.ConnectAgentResource> buildUnnamed13() => [
      buildConnectAgentResource(),
      buildConnectAgentResource(),
    ];

void checkUnnamed13(core.List<api.ConnectAgentResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectAgentResource(o[0]);
  checkConnectAgentResource(o[1]);
}

core.int buildCounterGenerateConnectManifestResponse = 0;
api.GenerateConnectManifestResponse buildGenerateConnectManifestResponse() {
  final o = api.GenerateConnectManifestResponse();
  buildCounterGenerateConnectManifestResponse++;
  if (buildCounterGenerateConnectManifestResponse < 3) {
    o.manifest = buildUnnamed13();
  }
  buildCounterGenerateConnectManifestResponse--;
  return o;
}

void checkGenerateConnectManifestResponse(
    api.GenerateConnectManifestResponse o) {
  buildCounterGenerateConnectManifestResponse++;
  if (buildCounterGenerateConnectManifestResponse < 3) {
    checkUnnamed13(o.manifest!);
  }
  buildCounterGenerateConnectManifestResponse--;
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
    unittest.expect(
      o.resourceLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterGkeCluster--;
}

core.Map<core.String, core.Object?> buildUnnamed14() => {
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

void checkUnnamed14(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed15() => [
      buildUnnamed14(),
      buildUnnamed14(),
    ];

void checkUnnamed15(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed14(o[0]);
  checkUnnamed14(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed15();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed15(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterIdentityServiceAuthMethod = 0;
api.IdentityServiceAuthMethod buildIdentityServiceAuthMethod() {
  final o = api.IdentityServiceAuthMethod();
  buildCounterIdentityServiceAuthMethod++;
  if (buildCounterIdentityServiceAuthMethod < 3) {
    o.azureadConfig = buildIdentityServiceAzureADConfig();
    o.googleConfig = buildIdentityServiceGoogleConfig();
    o.name = 'foo';
    o.oidcConfig = buildIdentityServiceOidcConfig();
    o.proxy = 'foo';
  }
  buildCounterIdentityServiceAuthMethod--;
  return o;
}

void checkIdentityServiceAuthMethod(api.IdentityServiceAuthMethod o) {
  buildCounterIdentityServiceAuthMethod++;
  if (buildCounterIdentityServiceAuthMethod < 3) {
    checkIdentityServiceAzureADConfig(o.azureadConfig!);
    checkIdentityServiceGoogleConfig(o.googleConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkIdentityServiceOidcConfig(o.oidcConfig!);
    unittest.expect(
      o.proxy!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentityServiceAuthMethod--;
}

core.int buildCounterIdentityServiceAzureADConfig = 0;
api.IdentityServiceAzureADConfig buildIdentityServiceAzureADConfig() {
  final o = api.IdentityServiceAzureADConfig();
  buildCounterIdentityServiceAzureADConfig++;
  if (buildCounterIdentityServiceAzureADConfig < 3) {
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.encryptedClientSecret = 'foo';
    o.kubectlRedirectUri = 'foo';
    o.tenant = 'foo';
  }
  buildCounterIdentityServiceAzureADConfig--;
  return o;
}

void checkIdentityServiceAzureADConfig(api.IdentityServiceAzureADConfig o) {
  buildCounterIdentityServiceAzureADConfig++;
  if (buildCounterIdentityServiceAzureADConfig < 3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientSecret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.encryptedClientSecret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kubectlRedirectUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tenant!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentityServiceAzureADConfig--;
}

core.int buildCounterIdentityServiceGoogleConfig = 0;
api.IdentityServiceGoogleConfig buildIdentityServiceGoogleConfig() {
  final o = api.IdentityServiceGoogleConfig();
  buildCounterIdentityServiceGoogleConfig++;
  if (buildCounterIdentityServiceGoogleConfig < 3) {
    o.disable = true;
  }
  buildCounterIdentityServiceGoogleConfig--;
  return o;
}

void checkIdentityServiceGoogleConfig(api.IdentityServiceGoogleConfig o) {
  buildCounterIdentityServiceGoogleConfig++;
  if (buildCounterIdentityServiceGoogleConfig < 3) {
    unittest.expect(o.disable!, unittest.isTrue);
  }
  buildCounterIdentityServiceGoogleConfig--;
}

core.List<api.IdentityServiceAuthMethod> buildUnnamed16() => [
      buildIdentityServiceAuthMethod(),
      buildIdentityServiceAuthMethod(),
    ];

void checkUnnamed16(core.List<api.IdentityServiceAuthMethod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIdentityServiceAuthMethod(o[0]);
  checkIdentityServiceAuthMethod(o[1]);
}

core.int buildCounterIdentityServiceMembershipSpec = 0;
api.IdentityServiceMembershipSpec buildIdentityServiceMembershipSpec() {
  final o = api.IdentityServiceMembershipSpec();
  buildCounterIdentityServiceMembershipSpec++;
  if (buildCounterIdentityServiceMembershipSpec < 3) {
    o.authMethods = buildUnnamed16();
  }
  buildCounterIdentityServiceMembershipSpec--;
  return o;
}

void checkIdentityServiceMembershipSpec(api.IdentityServiceMembershipSpec o) {
  buildCounterIdentityServiceMembershipSpec++;
  if (buildCounterIdentityServiceMembershipSpec < 3) {
    checkUnnamed16(o.authMethods!);
  }
  buildCounterIdentityServiceMembershipSpec--;
}

core.int buildCounterIdentityServiceMembershipState = 0;
api.IdentityServiceMembershipState buildIdentityServiceMembershipState() {
  final o = api.IdentityServiceMembershipState();
  buildCounterIdentityServiceMembershipState++;
  if (buildCounterIdentityServiceMembershipState < 3) {
    o.failureReason = 'foo';
    o.installedVersion = 'foo';
    o.memberConfig = buildIdentityServiceMembershipSpec();
    o.state = 'foo';
  }
  buildCounterIdentityServiceMembershipState--;
  return o;
}

void checkIdentityServiceMembershipState(api.IdentityServiceMembershipState o) {
  buildCounterIdentityServiceMembershipState++;
  if (buildCounterIdentityServiceMembershipState < 3) {
    unittest.expect(
      o.failureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.installedVersion!,
      unittest.equals('foo'),
    );
    checkIdentityServiceMembershipSpec(o.memberConfig!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentityServiceMembershipState--;
}

core.int buildCounterIdentityServiceOidcConfig = 0;
api.IdentityServiceOidcConfig buildIdentityServiceOidcConfig() {
  final o = api.IdentityServiceOidcConfig();
  buildCounterIdentityServiceOidcConfig++;
  if (buildCounterIdentityServiceOidcConfig < 3) {
    o.certificateAuthorityData = 'foo';
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.deployCloudConsoleProxy = true;
    o.enableAccessToken = true;
    o.encryptedClientSecret = 'foo';
    o.extraParams = 'foo';
    o.groupPrefix = 'foo';
    o.groupsClaim = 'foo';
    o.issuerUri = 'foo';
    o.kubectlRedirectUri = 'foo';
    o.scopes = 'foo';
    o.userClaim = 'foo';
    o.userPrefix = 'foo';
  }
  buildCounterIdentityServiceOidcConfig--;
  return o;
}

void checkIdentityServiceOidcConfig(api.IdentityServiceOidcConfig o) {
  buildCounterIdentityServiceOidcConfig++;
  if (buildCounterIdentityServiceOidcConfig < 3) {
    unittest.expect(
      o.certificateAuthorityData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientSecret!,
      unittest.equals('foo'),
    );
    unittest.expect(o.deployCloudConsoleProxy!, unittest.isTrue);
    unittest.expect(o.enableAccessToken!, unittest.isTrue);
    unittest.expect(
      o.encryptedClientSecret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.extraParams!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.groupPrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.groupsClaim!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.issuerUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kubectlRedirectUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scopes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userClaim!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentityServiceOidcConfig--;
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
    unittest.expect(
      o.kubernetesApiServerVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memoryMb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nodeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nodeProviderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vcpuCount!,
      unittest.equals(42),
    );
  }
  buildCounterKubernetesMetadata--;
}

core.List<api.ResourceManifest> buildUnnamed17() => [
      buildResourceManifest(),
      buildResourceManifest(),
    ];

void checkUnnamed17(core.List<api.ResourceManifest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceManifest(o[0]);
  checkResourceManifest(o[1]);
}

core.List<api.ResourceManifest> buildUnnamed18() => [
      buildResourceManifest(),
      buildResourceManifest(),
    ];

void checkUnnamed18(core.List<api.ResourceManifest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceManifest(o[0]);
  checkResourceManifest(o[1]);
}

core.int buildCounterKubernetesResource = 0;
api.KubernetesResource buildKubernetesResource() {
  final o = api.KubernetesResource();
  buildCounterKubernetesResource++;
  if (buildCounterKubernetesResource < 3) {
    o.connectResources = buildUnnamed17();
    o.membershipCrManifest = 'foo';
    o.membershipResources = buildUnnamed18();
    o.resourceOptions = buildResourceOptions();
  }
  buildCounterKubernetesResource--;
  return o;
}

void checkKubernetesResource(api.KubernetesResource o) {
  buildCounterKubernetesResource++;
  if (buildCounterKubernetesResource < 3) {
    checkUnnamed17(o.connectResources!);
    unittest.expect(
      o.membershipCrManifest!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.membershipResources!);
    checkResourceOptions(o.resourceOptions!);
  }
  buildCounterKubernetesResource--;
}

core.List<api.Feature> buildUnnamed19() => [
      buildFeature(),
      buildFeature(),
    ];

void checkUnnamed19(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0]);
  checkFeature(o[1]);
}

core.int buildCounterListFeaturesResponse = 0;
api.ListFeaturesResponse buildListFeaturesResponse() {
  final o = api.ListFeaturesResponse();
  buildCounterListFeaturesResponse++;
  if (buildCounterListFeaturesResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed19();
  }
  buildCounterListFeaturesResponse--;
  return o;
}

void checkListFeaturesResponse(api.ListFeaturesResponse o) {
  buildCounterListFeaturesResponse++;
  if (buildCounterListFeaturesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.resources!);
  }
  buildCounterListFeaturesResponse--;
}

core.List<api.Location> buildUnnamed20() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed20(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed20();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed20(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.MembershipBinding> buildUnnamed21() => [
      buildMembershipBinding(),
      buildMembershipBinding(),
    ];

void checkUnnamed21(core.List<api.MembershipBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipBinding(o[0]);
  checkMembershipBinding(o[1]);
}

core.int buildCounterListMembershipBindingsResponse = 0;
api.ListMembershipBindingsResponse buildListMembershipBindingsResponse() {
  final o = api.ListMembershipBindingsResponse();
  buildCounterListMembershipBindingsResponse++;
  if (buildCounterListMembershipBindingsResponse < 3) {
    o.membershipBindings = buildUnnamed21();
    o.nextPageToken = 'foo';
  }
  buildCounterListMembershipBindingsResponse--;
  return o;
}

void checkListMembershipBindingsResponse(api.ListMembershipBindingsResponse o) {
  buildCounterListMembershipBindingsResponse++;
  if (buildCounterListMembershipBindingsResponse < 3) {
    checkUnnamed21(o.membershipBindings!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListMembershipBindingsResponse--;
}

core.List<api.Membership> buildUnnamed22() => [
      buildMembership(),
      buildMembership(),
    ];

void checkUnnamed22(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0]);
  checkMembership(o[1]);
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

core.int buildCounterListMembershipsResponse = 0;
api.ListMembershipsResponse buildListMembershipsResponse() {
  final o = api.ListMembershipsResponse();
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed22();
    o.unreachable = buildUnnamed23();
  }
  buildCounterListMembershipsResponse--;
  return o;
}

void checkListMembershipsResponse(api.ListMembershipsResponse o) {
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.resources!);
    checkUnnamed23(o.unreachable!);
  }
  buildCounterListMembershipsResponse--;
}

core.List<api.Operation> buildUnnamed24() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed24(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed24();
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
    checkUnnamed24(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Scope> buildUnnamed25() => [
      buildScope(),
      buildScope(),
    ];

void checkUnnamed25(core.List<api.Scope> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScope(o[0]);
  checkScope(o[1]);
}

core.int buildCounterListScopesResponse = 0;
api.ListScopesResponse buildListScopesResponse() {
  final o = api.ListScopesResponse();
  buildCounterListScopesResponse++;
  if (buildCounterListScopesResponse < 3) {
    o.nextPageToken = 'foo';
    o.scopes = buildUnnamed25();
  }
  buildCounterListScopesResponse--;
  return o;
}

void checkListScopesResponse(api.ListScopesResponse o) {
  buildCounterListScopesResponse++;
  if (buildCounterListScopesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.scopes!);
  }
  buildCounterListScopesResponse--;
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

core.Map<core.String, core.Object?> buildUnnamed27() => {
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

void checkUnnamed27(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed26();
    o.locationId = 'foo';
    o.metadata = buildUnnamed27();
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
    checkUnnamed26(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
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
    o.labels = buildUnnamed28();
    o.lastConnectionTime = 'foo';
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkMembershipEndpoint(o.endpoint!);
    unittest.expect(
      o.externalId!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.labels!);
    unittest.expect(
      o.lastConnectionTime!,
      unittest.equals('foo'),
    );
    checkMonitoringConfig(o.monitoringConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkMembershipState(o.state!);
    unittest.expect(
      o.uniqueId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMembership--;
}

core.int buildCounterMembershipBinding = 0;
api.MembershipBinding buildMembershipBinding() {
  final o = api.MembershipBinding();
  buildCounterMembershipBinding++;
  if (buildCounterMembershipBinding < 3) {
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.fleet = true;
    o.name = 'foo';
    o.scope = 'foo';
    o.state = buildMembershipBindingLifecycleState();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMembershipBinding--;
  return o;
}

void checkMembershipBinding(api.MembershipBinding o) {
  buildCounterMembershipBinding++;
  if (buildCounterMembershipBinding < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.fleet!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    checkMembershipBindingLifecycleState(o.state!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMembershipBinding--;
}

core.int buildCounterMembershipBindingLifecycleState = 0;
api.MembershipBindingLifecycleState buildMembershipBindingLifecycleState() {
  final o = api.MembershipBindingLifecycleState();
  buildCounterMembershipBindingLifecycleState++;
  if (buildCounterMembershipBindingLifecycleState < 3) {
    o.code = 'foo';
  }
  buildCounterMembershipBindingLifecycleState--;
  return o;
}

void checkMembershipBindingLifecycleState(
    api.MembershipBindingLifecycleState o) {
  buildCounterMembershipBindingLifecycleState++;
  if (buildCounterMembershipBindingLifecycleState < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
  }
  buildCounterMembershipBindingLifecycleState--;
}

core.int buildCounterMembershipEndpoint = 0;
api.MembershipEndpoint buildMembershipEndpoint() {
  final o = api.MembershipEndpoint();
  buildCounterMembershipEndpoint++;
  if (buildCounterMembershipEndpoint < 3) {
    o.applianceCluster = buildApplianceCluster();
    o.edgeCluster = buildEdgeCluster();
    o.gkeCluster = buildGkeCluster();
    o.googleManaged = true;
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
    unittest.expect(o.googleManaged!, unittest.isTrue);
    checkKubernetesMetadata(o.kubernetesMetadata!);
    checkKubernetesResource(o.kubernetesResource!);
    checkMultiCloudCluster(o.multiCloudCluster!);
    checkOnPremCluster(o.onPremCluster!);
  }
  buildCounterMembershipEndpoint--;
}

core.int buildCounterMembershipFeatureSpec = 0;
api.MembershipFeatureSpec buildMembershipFeatureSpec() {
  final o = api.MembershipFeatureSpec();
  buildCounterMembershipFeatureSpec++;
  if (buildCounterMembershipFeatureSpec < 3) {
    o.configmanagement = buildConfigManagementMembershipSpec();
    o.fleetInherited = true;
    o.fleetobservability = buildFleetObservabilityMembershipSpec();
    o.identityservice = buildIdentityServiceMembershipSpec();
    o.mesh = buildServiceMeshMembershipSpec();
  }
  buildCounterMembershipFeatureSpec--;
  return o;
}

void checkMembershipFeatureSpec(api.MembershipFeatureSpec o) {
  buildCounterMembershipFeatureSpec++;
  if (buildCounterMembershipFeatureSpec < 3) {
    checkConfigManagementMembershipSpec(o.configmanagement!);
    unittest.expect(o.fleetInherited!, unittest.isTrue);
    checkFleetObservabilityMembershipSpec(o.fleetobservability!);
    checkIdentityServiceMembershipSpec(o.identityservice!);
    checkServiceMeshMembershipSpec(o.mesh!);
  }
  buildCounterMembershipFeatureSpec--;
}

core.int buildCounterMembershipFeatureState = 0;
api.MembershipFeatureState buildMembershipFeatureState() {
  final o = api.MembershipFeatureState();
  buildCounterMembershipFeatureState++;
  if (buildCounterMembershipFeatureState < 3) {
    o.appdevexperience = buildAppDevExperienceFeatureState();
    o.configmanagement = buildConfigManagementMembershipState();
    o.fleetobservability = buildFleetObservabilityMembershipState();
    o.identityservice = buildIdentityServiceMembershipState();
    o.servicemesh = buildServiceMeshMembershipState();
    o.state = buildFeatureState();
  }
  buildCounterMembershipFeatureState--;
  return o;
}

void checkMembershipFeatureState(api.MembershipFeatureState o) {
  buildCounterMembershipFeatureState++;
  if (buildCounterMembershipFeatureState < 3) {
    checkAppDevExperienceFeatureState(o.appdevexperience!);
    checkConfigManagementMembershipState(o.configmanagement!);
    checkFleetObservabilityMembershipState(o.fleetobservability!);
    checkIdentityServiceMembershipState(o.identityservice!);
    checkServiceMeshMembershipState(o.servicemesh!);
    checkFeatureState(o.state!);
  }
  buildCounterMembershipFeatureState--;
}

core.int buildCounterMembershipState = 0;
api.MembershipState buildMembershipState() {
  final o = api.MembershipState();
  buildCounterMembershipState++;
  if (buildCounterMembershipState < 3) {
    o.code = 'foo';
  }
  buildCounterMembershipState--;
  return o;
}

void checkMembershipState(api.MembershipState o) {
  buildCounterMembershipState++;
  if (buildCounterMembershipState < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.cluster!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterHash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kubernetesMetricsPrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.resourceLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterMultiCloudCluster--;
}

core.int buildCounterMultiClusterIngressFeatureSpec = 0;
api.MultiClusterIngressFeatureSpec buildMultiClusterIngressFeatureSpec() {
  final o = api.MultiClusterIngressFeatureSpec();
  buildCounterMultiClusterIngressFeatureSpec++;
  if (buildCounterMultiClusterIngressFeatureSpec < 3) {
    o.configMembership = 'foo';
  }
  buildCounterMultiClusterIngressFeatureSpec--;
  return o;
}

void checkMultiClusterIngressFeatureSpec(api.MultiClusterIngressFeatureSpec o) {
  buildCounterMultiClusterIngressFeatureSpec++;
  if (buildCounterMultiClusterIngressFeatureSpec < 3) {
    unittest.expect(
      o.configMembership!,
      unittest.equals('foo'),
    );
  }
  buildCounterMultiClusterIngressFeatureSpec--;
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
    unittest.expect(
      o.clusterType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterOnPremCluster--;
}

core.Map<core.String, core.Object?> buildUnnamed29() => {
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

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed30() => {
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

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed29();
    o.name = 'foo';
    o.response = buildUnnamed30();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed29(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed31() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed31(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed32() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed32(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed31();
    o.bindings = buildUnnamed32();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed31(o.auditConfigs!);
    checkUnnamed32(o.bindings!);
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
    unittest.expect(
      o.manifest!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.connectVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.k8sVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.v1beta1Crd!, unittest.isTrue);
  }
  buildCounterResourceOptions--;
}

core.int buildCounterScope = 0;
api.Scope buildScope() {
  final o = api.Scope();
  buildCounterScope++;
  if (buildCounterScope < 3) {
    o.allMemberships = true;
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.name = 'foo';
    o.state = buildScopeLifecycleState();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterScope--;
  return o;
}

void checkScope(api.Scope o) {
  buildCounterScope++;
  if (buildCounterScope < 3) {
    unittest.expect(o.allMemberships!, unittest.isTrue);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkScopeLifecycleState(o.state!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterScope--;
}

core.int buildCounterScopeFeatureSpec = 0;
api.ScopeFeatureSpec buildScopeFeatureSpec() {
  final o = api.ScopeFeatureSpec();
  buildCounterScopeFeatureSpec++;
  if (buildCounterScopeFeatureSpec < 3) {}
  buildCounterScopeFeatureSpec--;
  return o;
}

void checkScopeFeatureSpec(api.ScopeFeatureSpec o) {
  buildCounterScopeFeatureSpec++;
  if (buildCounterScopeFeatureSpec < 3) {}
  buildCounterScopeFeatureSpec--;
}

core.int buildCounterScopeFeatureState = 0;
api.ScopeFeatureState buildScopeFeatureState() {
  final o = api.ScopeFeatureState();
  buildCounterScopeFeatureState++;
  if (buildCounterScopeFeatureState < 3) {
    o.state = buildFeatureState();
  }
  buildCounterScopeFeatureState--;
  return o;
}

void checkScopeFeatureState(api.ScopeFeatureState o) {
  buildCounterScopeFeatureState++;
  if (buildCounterScopeFeatureState < 3) {
    checkFeatureState(o.state!);
  }
  buildCounterScopeFeatureState--;
}

core.int buildCounterScopeLifecycleState = 0;
api.ScopeLifecycleState buildScopeLifecycleState() {
  final o = api.ScopeLifecycleState();
  buildCounterScopeLifecycleState++;
  if (buildCounterScopeLifecycleState < 3) {
    o.code = 'foo';
  }
  buildCounterScopeLifecycleState--;
  return o;
}

void checkScopeLifecycleState(api.ScopeLifecycleState o) {
  buildCounterScopeLifecycleState++;
  if (buildCounterScopeLifecycleState < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
  }
  buildCounterScopeLifecycleState--;
}

core.List<api.ServiceMeshStatusDetails> buildUnnamed33() => [
      buildServiceMeshStatusDetails(),
      buildServiceMeshStatusDetails(),
    ];

void checkUnnamed33(core.List<api.ServiceMeshStatusDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceMeshStatusDetails(o[0]);
  checkServiceMeshStatusDetails(o[1]);
}

core.int buildCounterServiceMeshControlPlaneManagement = 0;
api.ServiceMeshControlPlaneManagement buildServiceMeshControlPlaneManagement() {
  final o = api.ServiceMeshControlPlaneManagement();
  buildCounterServiceMeshControlPlaneManagement++;
  if (buildCounterServiceMeshControlPlaneManagement < 3) {
    o.details = buildUnnamed33();
    o.state = 'foo';
  }
  buildCounterServiceMeshControlPlaneManagement--;
  return o;
}

void checkServiceMeshControlPlaneManagement(
    api.ServiceMeshControlPlaneManagement o) {
  buildCounterServiceMeshControlPlaneManagement++;
  if (buildCounterServiceMeshControlPlaneManagement < 3) {
    checkUnnamed33(o.details!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceMeshControlPlaneManagement--;
}

core.List<api.ServiceMeshStatusDetails> buildUnnamed34() => [
      buildServiceMeshStatusDetails(),
      buildServiceMeshStatusDetails(),
    ];

void checkUnnamed34(core.List<api.ServiceMeshStatusDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceMeshStatusDetails(o[0]);
  checkServiceMeshStatusDetails(o[1]);
}

core.int buildCounterServiceMeshDataPlaneManagement = 0;
api.ServiceMeshDataPlaneManagement buildServiceMeshDataPlaneManagement() {
  final o = api.ServiceMeshDataPlaneManagement();
  buildCounterServiceMeshDataPlaneManagement++;
  if (buildCounterServiceMeshDataPlaneManagement < 3) {
    o.details = buildUnnamed34();
    o.state = 'foo';
  }
  buildCounterServiceMeshDataPlaneManagement--;
  return o;
}

void checkServiceMeshDataPlaneManagement(api.ServiceMeshDataPlaneManagement o) {
  buildCounterServiceMeshDataPlaneManagement++;
  if (buildCounterServiceMeshDataPlaneManagement < 3) {
    checkUnnamed34(o.details!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceMeshDataPlaneManagement--;
}

core.int buildCounterServiceMeshMembershipSpec = 0;
api.ServiceMeshMembershipSpec buildServiceMeshMembershipSpec() {
  final o = api.ServiceMeshMembershipSpec();
  buildCounterServiceMeshMembershipSpec++;
  if (buildCounterServiceMeshMembershipSpec < 3) {
    o.controlPlane = 'foo';
    o.management = 'foo';
  }
  buildCounterServiceMeshMembershipSpec--;
  return o;
}

void checkServiceMeshMembershipSpec(api.ServiceMeshMembershipSpec o) {
  buildCounterServiceMeshMembershipSpec++;
  if (buildCounterServiceMeshMembershipSpec < 3) {
    unittest.expect(
      o.controlPlane!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.management!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceMeshMembershipSpec--;
}

core.int buildCounterServiceMeshMembershipState = 0;
api.ServiceMeshMembershipState buildServiceMeshMembershipState() {
  final o = api.ServiceMeshMembershipState();
  buildCounterServiceMeshMembershipState++;
  if (buildCounterServiceMeshMembershipState < 3) {
    o.controlPlaneManagement = buildServiceMeshControlPlaneManagement();
    o.dataPlaneManagement = buildServiceMeshDataPlaneManagement();
  }
  buildCounterServiceMeshMembershipState--;
  return o;
}

void checkServiceMeshMembershipState(api.ServiceMeshMembershipState o) {
  buildCounterServiceMeshMembershipState++;
  if (buildCounterServiceMeshMembershipState < 3) {
    checkServiceMeshControlPlaneManagement(o.controlPlaneManagement!);
    checkServiceMeshDataPlaneManagement(o.dataPlaneManagement!);
  }
  buildCounterServiceMeshMembershipState--;
}

core.int buildCounterServiceMeshStatusDetails = 0;
api.ServiceMeshStatusDetails buildServiceMeshStatusDetails() {
  final o = api.ServiceMeshStatusDetails();
  buildCounterServiceMeshStatusDetails++;
  if (buildCounterServiceMeshStatusDetails < 3) {
    o.code = 'foo';
    o.details = 'foo';
  }
  buildCounterServiceMeshStatusDetails--;
  return o;
}

void checkServiceMeshStatusDetails(api.ServiceMeshStatusDetails o) {
  buildCounterServiceMeshStatusDetails++;
  if (buildCounterServiceMeshStatusDetails < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.details!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceMeshStatusDetails--;
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

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 'foo';
    o.description = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed35() => [
      'foo',
      'foo',
    ];

void checkUnnamed35(core.List<core.String> o) {
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
    o.permissions = buildUnnamed35();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed35(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed36() => [
      'foo',
      'foo',
    ];

void checkUnnamed36(core.List<core.String> o) {
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
    o.permissions = buildUnnamed36();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed36(o.permissions!);
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
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterTypeMeta--;
}

void main() {
  unittest.group('obj-schema-AppDevExperienceFeatureSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppDevExperienceFeatureSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppDevExperienceFeatureSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppDevExperienceFeatureSpec(od);
    });
  });

  unittest.group('obj-schema-AppDevExperienceFeatureState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppDevExperienceFeatureState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppDevExperienceFeatureState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppDevExperienceFeatureState(od);
    });
  });

  unittest.group('obj-schema-ApplianceCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplianceCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplianceCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplianceCluster(od);
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

  unittest.group('obj-schema-Authority', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthority();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Authority.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAuthority(od);
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

  unittest.group('obj-schema-CommonFeatureSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommonFeatureSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommonFeatureSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommonFeatureSpec(od);
    });
  });

  unittest.group('obj-schema-CommonFeatureState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommonFeatureState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommonFeatureState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommonFeatureState(od);
    });
  });

  unittest.group('obj-schema-CommonFleetDefaultMemberConfigSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommonFleetDefaultMemberConfigSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommonFleetDefaultMemberConfigSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommonFleetDefaultMemberConfigSpec(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementConfigSync', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementConfigSync();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementConfigSync.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementConfigSync(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementConfigSyncDeploymentState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementConfigSyncDeploymentState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementConfigSyncDeploymentState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementConfigSyncDeploymentState(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementConfigSyncState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementConfigSyncState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementConfigSyncState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementConfigSyncState(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementConfigSyncVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementConfigSyncVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementConfigSyncVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementConfigSyncVersion(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementErrorResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementErrorResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementErrorResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementErrorResource(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementGatekeeperDeploymentState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementGatekeeperDeploymentState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementGatekeeperDeploymentState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementGatekeeperDeploymentState(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementGitConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementGitConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementGitConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementGitConfig(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementGroupVersionKind', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementGroupVersionKind();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementGroupVersionKind.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementGroupVersionKind(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementHierarchyControllerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementHierarchyControllerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementHierarchyControllerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementHierarchyControllerConfig(od);
    });
  });

  unittest.group(
      'obj-schema-ConfigManagementHierarchyControllerDeploymentState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementHierarchyControllerDeploymentState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ConfigManagementHierarchyControllerDeploymentState.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementHierarchyControllerDeploymentState(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementHierarchyControllerState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementHierarchyControllerState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementHierarchyControllerState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementHierarchyControllerState(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementHierarchyControllerVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementHierarchyControllerVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementHierarchyControllerVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementHierarchyControllerVersion(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementInstallError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementInstallError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementInstallError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementInstallError(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementManaged', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementManaged();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementManaged.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementManaged(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementMembershipSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementMembershipSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementMembershipSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementMembershipSpec(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementMembershipState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementMembershipState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementMembershipState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementMembershipState(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementOciConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementOciConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementOciConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementOciConfig(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementOperatorState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementOperatorState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementOperatorState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementOperatorState(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementPolicyController', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementPolicyController();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementPolicyController.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementPolicyController(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementPolicyControllerMigration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementPolicyControllerMigration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementPolicyControllerMigration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementPolicyControllerMigration(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementPolicyControllerMonitoring', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementPolicyControllerMonitoring();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementPolicyControllerMonitoring.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementPolicyControllerMonitoring(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementPolicyControllerState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementPolicyControllerState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementPolicyControllerState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementPolicyControllerState(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementPolicyControllerVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementPolicyControllerVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementPolicyControllerVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementPolicyControllerVersion(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementSyncError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementSyncError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementSyncError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementSyncError(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementSyncState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementSyncState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementSyncState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementSyncState(od);
    });
  });

  unittest.group('obj-schema-ConnectAgentResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectAgentResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectAgentResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectAgentResource(od);
    });
  });

  unittest.group('obj-schema-EdgeCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEdgeCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EdgeCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEdgeCluster(od);
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

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-Feature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Feature.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFeature(od);
    });
  });

  unittest.group('obj-schema-FeatureResourceState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeatureResourceState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FeatureResourceState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFeatureResourceState(od);
    });
  });

  unittest.group('obj-schema-FeatureState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeatureState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FeatureState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFeatureState(od);
    });
  });

  unittest.group('obj-schema-FleetObservabilityFeatureSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFleetObservabilityFeatureSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FleetObservabilityFeatureSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFleetObservabilityFeatureSpec(od);
    });
  });

  unittest.group('obj-schema-FleetObservabilityFeatureState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFleetObservabilityFeatureState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FleetObservabilityFeatureState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFleetObservabilityFeatureState(od);
    });
  });

  unittest.group('obj-schema-FleetObservabilityMembershipSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFleetObservabilityMembershipSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FleetObservabilityMembershipSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFleetObservabilityMembershipSpec(od);
    });
  });

  unittest.group('obj-schema-FleetObservabilityMembershipState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFleetObservabilityMembershipState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FleetObservabilityMembershipState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFleetObservabilityMembershipState(od);
    });
  });

  unittest.group('obj-schema-GenerateConnectManifestResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateConnectManifestResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateConnectManifestResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateConnectManifestResponse(od);
    });
  });

  unittest.group('obj-schema-GkeCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGkeCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GkeCluster.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGkeCluster(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-IdentityServiceAuthMethod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceAuthMethod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceAuthMethod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceAuthMethod(od);
    });
  });

  unittest.group('obj-schema-IdentityServiceAzureADConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceAzureADConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceAzureADConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceAzureADConfig(od);
    });
  });

  unittest.group('obj-schema-IdentityServiceGoogleConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceGoogleConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceGoogleConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceGoogleConfig(od);
    });
  });

  unittest.group('obj-schema-IdentityServiceMembershipSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceMembershipSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceMembershipSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceMembershipSpec(od);
    });
  });

  unittest.group('obj-schema-IdentityServiceMembershipState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceMembershipState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceMembershipState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceMembershipState(od);
    });
  });

  unittest.group('obj-schema-IdentityServiceOidcConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceOidcConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceOidcConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceOidcConfig(od);
    });
  });

  unittest.group('obj-schema-KubernetesMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKubernetesMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KubernetesMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKubernetesMetadata(od);
    });
  });

  unittest.group('obj-schema-KubernetesResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKubernetesResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KubernetesResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKubernetesResource(od);
    });
  });

  unittest.group('obj-schema-ListFeaturesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFeaturesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFeaturesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFeaturesResponse(od);
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

  unittest.group('obj-schema-ListMembershipBindingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMembershipBindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMembershipBindingsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMembershipBindingsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMembershipsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMembershipsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMembershipsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMembershipsResponse(od);
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

  unittest.group('obj-schema-ListScopesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListScopesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListScopesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListScopesResponse(od);
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

  unittest.group('obj-schema-Membership', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Membership.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMembership(od);
    });
  });

  unittest.group('obj-schema-MembershipBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipBinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipBinding(od);
    });
  });

  unittest.group('obj-schema-MembershipBindingLifecycleState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipBindingLifecycleState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipBindingLifecycleState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipBindingLifecycleState(od);
    });
  });

  unittest.group('obj-schema-MembershipEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipEndpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipEndpoint(od);
    });
  });

  unittest.group('obj-schema-MembershipFeatureSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipFeatureSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipFeatureSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipFeatureSpec(od);
    });
  });

  unittest.group('obj-schema-MembershipFeatureState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipFeatureState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipFeatureState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipFeatureState(od);
    });
  });

  unittest.group('obj-schema-MembershipState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipState(od);
    });
  });

  unittest.group('obj-schema-MonitoringConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoringConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoringConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonitoringConfig(od);
    });
  });

  unittest.group('obj-schema-MultiCloudCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiCloudCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultiCloudCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMultiCloudCluster(od);
    });
  });

  unittest.group('obj-schema-MultiClusterIngressFeatureSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiClusterIngressFeatureSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultiClusterIngressFeatureSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMultiClusterIngressFeatureSpec(od);
    });
  });

  unittest.group('obj-schema-OnPremCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOnPremCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OnPremCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOnPremCluster(od);
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

  unittest.group('obj-schema-ResourceManifest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceManifest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceManifest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceManifest(od);
    });
  });

  unittest.group('obj-schema-ResourceOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceOptions(od);
    });
  });

  unittest.group('obj-schema-Scope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Scope.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkScope(od);
    });
  });

  unittest.group('obj-schema-ScopeFeatureSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScopeFeatureSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScopeFeatureSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScopeFeatureSpec(od);
    });
  });

  unittest.group('obj-schema-ScopeFeatureState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScopeFeatureState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScopeFeatureState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScopeFeatureState(od);
    });
  });

  unittest.group('obj-schema-ScopeLifecycleState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScopeLifecycleState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScopeLifecycleState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScopeLifecycleState(od);
    });
  });

  unittest.group('obj-schema-ServiceMeshControlPlaneManagement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceMeshControlPlaneManagement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceMeshControlPlaneManagement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceMeshControlPlaneManagement(od);
    });
  });

  unittest.group('obj-schema-ServiceMeshDataPlaneManagement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceMeshDataPlaneManagement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceMeshDataPlaneManagement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceMeshDataPlaneManagement(od);
    });
  });

  unittest.group('obj-schema-ServiceMeshMembershipSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceMeshMembershipSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceMeshMembershipSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceMeshMembershipSpec(od);
    });
  });

  unittest.group('obj-schema-ServiceMeshMembershipState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceMeshMembershipState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceMeshMembershipState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceMeshMembershipState(od);
    });
  });

  unittest.group('obj-schema-ServiceMeshStatusDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceMeshStatusDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceMeshStatusDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceMeshStatusDetails(od);
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

  unittest.group('obj-schema-TypeMeta', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTypeMeta();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TypeMeta.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTypeMeta(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations;
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
      final res = api.GKEHubApi(mock).projects.locations;
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

  unittest.group('resource-ProjectsLocationsFeaturesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.features;
      final arg_request = buildFeature();
      final arg_parent = 'foo';
      final arg_featureId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Feature.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFeature(obj);

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
          queryMap['featureId']!.first,
          unittest.equals(arg_featureId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
          featureId: arg_featureId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.features;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          force: arg_force, requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.features;
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
        final resp = convert.json.encode(buildFeature());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFeature(response as api.Feature);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.features;
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
      final res = api.GKEHubApi(mock).projects.locations.features;
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
        final resp = convert.json.encode(buildListFeaturesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFeaturesResponse(response as api.ListFeaturesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.features;
      final arg_request = buildFeature();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Feature.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFeature(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.features;
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
      final res = api.GKEHubApi(mock).projects.locations.features;
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

  unittest.group('resource-ProjectsLocationsMembershipsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships;
      final arg_request = buildMembership();
      final arg_parent = 'foo';
      final arg_membershipId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Membership.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMembership(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          membershipId: arg_membershipId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          force: arg_force, requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--generateConnectManifest', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships;
      final arg_name = 'foo';
      final arg_imagePullSecretContent = 'foo';
      final arg_isUpgrade = true;
      final arg_namespace = 'foo';
      final arg_proxy = 'foo';
      final arg_registry = 'foo';
      final arg_version = 'foo';
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
          queryMap['imagePullSecretContent']!.first,
          unittest.equals(arg_imagePullSecretContent),
        );
        unittest.expect(
          queryMap['isUpgrade']!.first,
          unittest.equals('$arg_isUpgrade'),
        );
        unittest.expect(
          queryMap['namespace']!.first,
          unittest.equals(arg_namespace),
        );
        unittest.expect(
          queryMap['proxy']!.first,
          unittest.equals(arg_proxy),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGenerateConnectManifestResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateConnectManifest(arg_name,
          imagePullSecretContent: arg_imagePullSecretContent,
          isUpgrade: arg_isUpgrade,
          namespace: arg_namespace,
          proxy: arg_proxy,
          registry: arg_registry,
          version: arg_version,
          $fields: arg_$fields);
      checkGenerateConnectManifestResponse(
          response as api.GenerateConnectManifestResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships;
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
        final resp = convert.json.encode(buildMembership());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMembership(response as api.Membership);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships;
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
      final res = api.GKEHubApi(mock).projects.locations.memberships;
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
        final resp = convert.json.encode(buildListMembershipsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Membership.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMembership(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships;
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
      final res = api.GKEHubApi(mock).projects.locations.memberships;
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

  unittest.group('resource-ProjectsLocationsMembershipsBindingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships.bindings;
      final arg_request = buildMembershipBinding();
      final arg_parent = 'foo';
      final arg_membershipBindingId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MembershipBinding.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMembershipBinding(obj);

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
          queryMap['membershipBindingId']!.first,
          unittest.equals(arg_membershipBindingId),
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
          membershipBindingId: arg_membershipBindingId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships.bindings;
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
      final res = api.GKEHubApi(mock).projects.locations.memberships.bindings;
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
        final resp = convert.json.encode(buildMembershipBinding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMembershipBinding(response as api.MembershipBinding);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships.bindings;
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
        final resp = convert.json.encode(buildListMembershipBindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListMembershipBindingsResponse(
          response as api.ListMembershipBindingsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships.bindings;
      final arg_request = buildMembershipBinding();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MembershipBinding.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMembershipBinding(obj);

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

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.operations;
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
      final res = api.GKEHubApi(mock).projects.locations.operations;
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
      final res = api.GKEHubApi(mock).projects.locations.operations;
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
      final res = api.GKEHubApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsScopesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.scopes;
      final arg_request = buildScope();
      final arg_parent = 'foo';
      final arg_scopeId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Scope.fromJson(json as core.Map<core.String, core.dynamic>);
        checkScope(obj);

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
          queryMap['scopeId']!.first,
          unittest.equals(arg_scopeId),
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
          scopeId: arg_scopeId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.scopes;
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
      final res = api.GKEHubApi(mock).projects.locations.scopes;
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
        final resp = convert.json.encode(buildScope());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkScope(response as api.Scope);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.scopes;
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
        final resp = convert.json.encode(buildListScopesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListScopesResponse(response as api.ListScopesResponse);
    });
  });
}
