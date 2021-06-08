// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/gkehub/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AuditLogConfig> buildUnnamed1599() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed1599(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0] as api.AuditLogConfig);
  checkAuditLogConfig(o[1] as api.AuditLogConfig);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed1599();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed1599(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1600() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1600(core.List<core.String> o) {
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
  var o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1600();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1600(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAuthority = 0;
api.Authority buildAuthority() {
  var o = api.Authority();
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

core.List<core.String> buildUnnamed1601() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1601(core.List<core.String> o) {
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
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed1601();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition! as api.Expr);
    checkUnnamed1601(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
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

core.int buildCounterCommonFeatureSpec = 0;
api.CommonFeatureSpec buildCommonFeatureSpec() {
  var o = api.CommonFeatureSpec();
  buildCounterCommonFeatureSpec++;
  if (buildCounterCommonFeatureSpec < 3) {
    o.multiclusteringress = buildMultiClusterIngressFeatureSpec();
  }
  buildCounterCommonFeatureSpec--;
  return o;
}

void checkCommonFeatureSpec(api.CommonFeatureSpec o) {
  buildCounterCommonFeatureSpec++;
  if (buildCounterCommonFeatureSpec < 3) {
    checkMultiClusterIngressFeatureSpec(
        o.multiclusteringress! as api.MultiClusterIngressFeatureSpec);
  }
  buildCounterCommonFeatureSpec--;
}

core.int buildCounterCommonFeatureState = 0;
api.CommonFeatureState buildCommonFeatureState() {
  var o = api.CommonFeatureState();
  buildCounterCommonFeatureState++;
  if (buildCounterCommonFeatureState < 3) {
    o.state = buildFeatureState();
  }
  buildCounterCommonFeatureState--;
  return o;
}

void checkCommonFeatureState(api.CommonFeatureState o) {
  buildCounterCommonFeatureState++;
  if (buildCounterCommonFeatureState < 3) {
    checkFeatureState(o.state! as api.FeatureState);
  }
  buildCounterCommonFeatureState--;
}

core.int buildCounterConfigManagementConfigSync = 0;
api.ConfigManagementConfigSync buildConfigManagementConfigSync() {
  var o = api.ConfigManagementConfigSync();
  buildCounterConfigManagementConfigSync++;
  if (buildCounterConfigManagementConfigSync < 3) {
    o.git = buildConfigManagementGitConfig();
    o.sourceFormat = 'foo';
  }
  buildCounterConfigManagementConfigSync--;
  return o;
}

void checkConfigManagementConfigSync(api.ConfigManagementConfigSync o) {
  buildCounterConfigManagementConfigSync++;
  if (buildCounterConfigManagementConfigSync < 3) {
    checkConfigManagementGitConfig(o.git! as api.ConfigManagementGitConfig);
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
  var o = api.ConfigManagementConfigSyncDeploymentState();
  buildCounterConfigManagementConfigSyncDeploymentState++;
  if (buildCounterConfigManagementConfigSyncDeploymentState < 3) {
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
  var o = api.ConfigManagementConfigSyncState();
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
    checkConfigManagementConfigSyncDeploymentState(
        o.deploymentState! as api.ConfigManagementConfigSyncDeploymentState);
    checkConfigManagementSyncState(
        o.syncState! as api.ConfigManagementSyncState);
    checkConfigManagementConfigSyncVersion(
        o.version! as api.ConfigManagementConfigSyncVersion);
  }
  buildCounterConfigManagementConfigSyncState--;
}

core.int buildCounterConfigManagementConfigSyncVersion = 0;
api.ConfigManagementConfigSyncVersion buildConfigManagementConfigSyncVersion() {
  var o = api.ConfigManagementConfigSyncVersion();
  buildCounterConfigManagementConfigSyncVersion++;
  if (buildCounterConfigManagementConfigSyncVersion < 3) {
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
  var o = api.ConfigManagementErrorResource();
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
    checkConfigManagementGroupVersionKind(
        o.resourceGvk! as api.ConfigManagementGroupVersionKind);
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
  var o = api.ConfigManagementGatekeeperDeploymentState();
  buildCounterConfigManagementGatekeeperDeploymentState++;
  if (buildCounterConfigManagementGatekeeperDeploymentState < 3) {
    o.gatekeeperAudit = 'foo';
    o.gatekeeperControllerManagerState = 'foo';
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
  }
  buildCounterConfigManagementGatekeeperDeploymentState--;
}

core.int buildCounterConfigManagementGitConfig = 0;
api.ConfigManagementGitConfig buildConfigManagementGitConfig() {
  var o = api.ConfigManagementGitConfig();
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
  var o = api.ConfigManagementGroupVersionKind();
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
  var o = api.ConfigManagementHierarchyControllerConfig();
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
  var o = api.ConfigManagementHierarchyControllerDeploymentState();
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
  var o = api.ConfigManagementHierarchyControllerState();
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
    checkConfigManagementHierarchyControllerDeploymentState(
        o.state! as api.ConfigManagementHierarchyControllerDeploymentState);
    checkConfigManagementHierarchyControllerVersion(
        o.version! as api.ConfigManagementHierarchyControllerVersion);
  }
  buildCounterConfigManagementHierarchyControllerState--;
}

core.int buildCounterConfigManagementHierarchyControllerVersion = 0;
api.ConfigManagementHierarchyControllerVersion
    buildConfigManagementHierarchyControllerVersion() {
  var o = api.ConfigManagementHierarchyControllerVersion();
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
  var o = api.ConfigManagementInstallError();
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

core.int buildCounterConfigManagementMembershipSpec = 0;
api.ConfigManagementMembershipSpec buildConfigManagementMembershipSpec() {
  var o = api.ConfigManagementMembershipSpec();
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
    checkConfigManagementConfigSync(
        o.configSync! as api.ConfigManagementConfigSync);
    checkConfigManagementHierarchyControllerConfig(o.hierarchyController!
        as api.ConfigManagementHierarchyControllerConfig);
    checkConfigManagementPolicyController(
        o.policyController! as api.ConfigManagementPolicyController);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementMembershipSpec--;
}

core.int buildCounterConfigManagementMembershipState = 0;
api.ConfigManagementMembershipState buildConfigManagementMembershipState() {
  var o = api.ConfigManagementMembershipState();
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
    checkConfigManagementConfigSyncState(
        o.configSyncState! as api.ConfigManagementConfigSyncState);
    checkConfigManagementHierarchyControllerState(o.hierarchyControllerState!
        as api.ConfigManagementHierarchyControllerState);
    checkConfigManagementMembershipSpec(
        o.membershipSpec! as api.ConfigManagementMembershipSpec);
    checkConfigManagementOperatorState(
        o.operatorState! as api.ConfigManagementOperatorState);
    checkConfigManagementPolicyControllerState(
        o.policyControllerState! as api.ConfigManagementPolicyControllerState);
  }
  buildCounterConfigManagementMembershipState--;
}

core.List<api.ConfigManagementInstallError> buildUnnamed1602() {
  var o = <api.ConfigManagementInstallError>[];
  o.add(buildConfigManagementInstallError());
  o.add(buildConfigManagementInstallError());
  return o;
}

void checkUnnamed1602(core.List<api.ConfigManagementInstallError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigManagementInstallError(o[0] as api.ConfigManagementInstallError);
  checkConfigManagementInstallError(o[1] as api.ConfigManagementInstallError);
}

core.int buildCounterConfigManagementOperatorState = 0;
api.ConfigManagementOperatorState buildConfigManagementOperatorState() {
  var o = api.ConfigManagementOperatorState();
  buildCounterConfigManagementOperatorState++;
  if (buildCounterConfigManagementOperatorState < 3) {
    o.deploymentState = 'foo';
    o.errors = buildUnnamed1602();
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
    checkUnnamed1602(o.errors!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementOperatorState--;
}

core.List<core.String> buildUnnamed1603() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1603(core.List<core.String> o) {
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
  var o = api.ConfigManagementPolicyController();
  buildCounterConfigManagementPolicyController++;
  if (buildCounterConfigManagementPolicyController < 3) {
    o.auditIntervalSeconds = 'foo';
    o.enabled = true;
    o.exemptableNamespaces = buildUnnamed1603();
    o.logDeniesEnabled = true;
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
    checkUnnamed1603(o.exemptableNamespaces!);
    unittest.expect(o.logDeniesEnabled!, unittest.isTrue);
    unittest.expect(o.referentialRulesEnabled!, unittest.isTrue);
    unittest.expect(o.templateLibraryInstalled!, unittest.isTrue);
  }
  buildCounterConfigManagementPolicyController--;
}

core.int buildCounterConfigManagementPolicyControllerState = 0;
api.ConfigManagementPolicyControllerState
    buildConfigManagementPolicyControllerState() {
  var o = api.ConfigManagementPolicyControllerState();
  buildCounterConfigManagementPolicyControllerState++;
  if (buildCounterConfigManagementPolicyControllerState < 3) {
    o.deploymentState = buildConfigManagementGatekeeperDeploymentState();
    o.version = buildConfigManagementPolicyControllerVersion();
  }
  buildCounterConfigManagementPolicyControllerState--;
  return o;
}

void checkConfigManagementPolicyControllerState(
    api.ConfigManagementPolicyControllerState o) {
  buildCounterConfigManagementPolicyControllerState++;
  if (buildCounterConfigManagementPolicyControllerState < 3) {
    checkConfigManagementGatekeeperDeploymentState(
        o.deploymentState! as api.ConfigManagementGatekeeperDeploymentState);
    checkConfigManagementPolicyControllerVersion(
        o.version! as api.ConfigManagementPolicyControllerVersion);
  }
  buildCounterConfigManagementPolicyControllerState--;
}

core.int buildCounterConfigManagementPolicyControllerVersion = 0;
api.ConfigManagementPolicyControllerVersion
    buildConfigManagementPolicyControllerVersion() {
  var o = api.ConfigManagementPolicyControllerVersion();
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

core.List<api.ConfigManagementErrorResource> buildUnnamed1604() {
  var o = <api.ConfigManagementErrorResource>[];
  o.add(buildConfigManagementErrorResource());
  o.add(buildConfigManagementErrorResource());
  return o;
}

void checkUnnamed1604(core.List<api.ConfigManagementErrorResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigManagementErrorResource(o[0] as api.ConfigManagementErrorResource);
  checkConfigManagementErrorResource(o[1] as api.ConfigManagementErrorResource);
}

core.int buildCounterConfigManagementSyncError = 0;
api.ConfigManagementSyncError buildConfigManagementSyncError() {
  var o = api.ConfigManagementSyncError();
  buildCounterConfigManagementSyncError++;
  if (buildCounterConfigManagementSyncError < 3) {
    o.code = 'foo';
    o.errorMessage = 'foo';
    o.errorResources = buildUnnamed1604();
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
    checkUnnamed1604(o.errorResources!);
  }
  buildCounterConfigManagementSyncError--;
}

core.List<api.ConfigManagementSyncError> buildUnnamed1605() {
  var o = <api.ConfigManagementSyncError>[];
  o.add(buildConfigManagementSyncError());
  o.add(buildConfigManagementSyncError());
  return o;
}

void checkUnnamed1605(core.List<api.ConfigManagementSyncError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigManagementSyncError(o[0] as api.ConfigManagementSyncError);
  checkConfigManagementSyncError(o[1] as api.ConfigManagementSyncError);
}

core.int buildCounterConfigManagementSyncState = 0;
api.ConfigManagementSyncState buildConfigManagementSyncState() {
  var o = api.ConfigManagementSyncState();
  buildCounterConfigManagementSyncState++;
  if (buildCounterConfigManagementSyncState < 3) {
    o.code = 'foo';
    o.errors = buildUnnamed1605();
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
    checkUnnamed1605(o.errors!);
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
  var o = api.ConnectAgentResource();
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
    checkTypeMeta(o.type! as api.TypeMeta);
  }
  buildCounterConnectAgentResource--;
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

core.Map<core.String, core.String> buildUnnamed1606() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1606(core.Map<core.String, core.String> o) {
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

core.Map<core.String, api.MembershipFeatureSpec> buildUnnamed1607() {
  var o = <core.String, api.MembershipFeatureSpec>{};
  o['x'] = buildMembershipFeatureSpec();
  o['y'] = buildMembershipFeatureSpec();
  return o;
}

void checkUnnamed1607(core.Map<core.String, api.MembershipFeatureSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipFeatureSpec(o['x']! as api.MembershipFeatureSpec);
  checkMembershipFeatureSpec(o['y']! as api.MembershipFeatureSpec);
}

core.Map<core.String, api.MembershipFeatureState> buildUnnamed1608() {
  var o = <core.String, api.MembershipFeatureState>{};
  o['x'] = buildMembershipFeatureState();
  o['y'] = buildMembershipFeatureState();
  return o;
}

void checkUnnamed1608(core.Map<core.String, api.MembershipFeatureState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipFeatureState(o['x']! as api.MembershipFeatureState);
  checkMembershipFeatureState(o['y']! as api.MembershipFeatureState);
}

core.int buildCounterFeature = 0;
api.Feature buildFeature() {
  var o = api.Feature();
  buildCounterFeature++;
  if (buildCounterFeature < 3) {
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.labels = buildUnnamed1606();
    o.membershipSpecs = buildUnnamed1607();
    o.membershipStates = buildUnnamed1608();
    o.name = 'foo';
    o.resourceState = buildFeatureResourceState();
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
    checkUnnamed1606(o.labels!);
    checkUnnamed1607(o.membershipSpecs!);
    checkUnnamed1608(o.membershipStates!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkFeatureResourceState(o.resourceState! as api.FeatureResourceState);
    checkCommonFeatureSpec(o.spec! as api.CommonFeatureSpec);
    checkCommonFeatureState(o.state! as api.CommonFeatureState);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterFeature--;
}

core.int buildCounterFeatureResourceState = 0;
api.FeatureResourceState buildFeatureResourceState() {
  var o = api.FeatureResourceState();
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
  var o = api.FeatureState();
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

core.List<api.ConnectAgentResource> buildUnnamed1609() {
  var o = <api.ConnectAgentResource>[];
  o.add(buildConnectAgentResource());
  o.add(buildConnectAgentResource());
  return o;
}

void checkUnnamed1609(core.List<api.ConnectAgentResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectAgentResource(o[0] as api.ConnectAgentResource);
  checkConnectAgentResource(o[1] as api.ConnectAgentResource);
}

core.int buildCounterGenerateConnectManifestResponse = 0;
api.GenerateConnectManifestResponse buildGenerateConnectManifestResponse() {
  var o = api.GenerateConnectManifestResponse();
  buildCounterGenerateConnectManifestResponse++;
  if (buildCounterGenerateConnectManifestResponse < 3) {
    o.manifest = buildUnnamed1609();
  }
  buildCounterGenerateConnectManifestResponse--;
  return o;
}

void checkGenerateConnectManifestResponse(
    api.GenerateConnectManifestResponse o) {
  buildCounterGenerateConnectManifestResponse++;
  if (buildCounterGenerateConnectManifestResponse < 3) {
    checkUnnamed1609(o.manifest!);
  }
  buildCounterGenerateConnectManifestResponse--;
}

core.int buildCounterGkeCluster = 0;
api.GkeCluster buildGkeCluster() {
  var o = api.GkeCluster();
  buildCounterGkeCluster++;
  if (buildCounterGkeCluster < 3) {
    o.resourceLink = 'foo';
  }
  buildCounterGkeCluster--;
  return o;
}

void checkGkeCluster(api.GkeCluster o) {
  buildCounterGkeCluster++;
  if (buildCounterGkeCluster < 3) {
    unittest.expect(
      o.resourceLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterGkeCluster--;
}

core.Map<core.String, core.Object> buildUnnamed1610() {
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

void checkUnnamed1610(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed1611() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed1610());
  o.add(buildUnnamed1610());
  return o;
}

void checkUnnamed1611(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1610(o[0]);
  checkUnnamed1610(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1611();
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
    checkUnnamed1611(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterKubernetesMetadata = 0;
api.KubernetesMetadata buildKubernetesMetadata() {
  var o = api.KubernetesMetadata();
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

core.List<api.Feature> buildUnnamed1612() {
  var o = <api.Feature>[];
  o.add(buildFeature());
  o.add(buildFeature());
  return o;
}

void checkUnnamed1612(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0] as api.Feature);
  checkFeature(o[1] as api.Feature);
}

core.int buildCounterListFeaturesResponse = 0;
api.ListFeaturesResponse buildListFeaturesResponse() {
  var o = api.ListFeaturesResponse();
  buildCounterListFeaturesResponse++;
  if (buildCounterListFeaturesResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed1612();
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
    checkUnnamed1612(o.resources!);
  }
  buildCounterListFeaturesResponse--;
}

core.List<api.Location> buildUnnamed1613() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed1613(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed1613();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed1613(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Membership> buildUnnamed1614() {
  var o = <api.Membership>[];
  o.add(buildMembership());
  o.add(buildMembership());
  return o;
}

void checkUnnamed1614(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0] as api.Membership);
  checkMembership(o[1] as api.Membership);
}

core.List<core.String> buildUnnamed1615() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1615(core.List<core.String> o) {
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
  var o = api.ListMembershipsResponse();
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed1614();
    o.unreachable = buildUnnamed1615();
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
    checkUnnamed1614(o.resources!);
    checkUnnamed1615(o.unreachable!);
  }
  buildCounterListMembershipsResponse--;
}

core.List<api.Operation> buildUnnamed1616() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed1616(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed1616();
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
    checkUnnamed1616(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed1617() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1617(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed1618() {
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

void checkUnnamed1618(core.Map<core.String, core.Object> o) {
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
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed1617();
    o.locationId = 'foo';
    o.metadata = buildUnnamed1618();
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
    checkUnnamed1617(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed1618(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed1619() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1619(core.Map<core.String, core.String> o) {
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
  var o = api.Membership();
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    o.authority = buildAuthority();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.description = 'foo';
    o.endpoint = buildMembershipEndpoint();
    o.externalId = 'foo';
    o.labels = buildUnnamed1619();
    o.lastConnectionTime = 'foo';
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
    checkAuthority(o.authority! as api.Authority);
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
    checkMembershipEndpoint(o.endpoint! as api.MembershipEndpoint);
    unittest.expect(
      o.externalId!,
      unittest.equals('foo'),
    );
    checkUnnamed1619(o.labels!);
    unittest.expect(
      o.lastConnectionTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkMembershipState(o.state! as api.MembershipState);
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

core.int buildCounterMembershipEndpoint = 0;
api.MembershipEndpoint buildMembershipEndpoint() {
  var o = api.MembershipEndpoint();
  buildCounterMembershipEndpoint++;
  if (buildCounterMembershipEndpoint < 3) {
    o.gkeCluster = buildGkeCluster();
    o.kubernetesMetadata = buildKubernetesMetadata();
  }
  buildCounterMembershipEndpoint--;
  return o;
}

void checkMembershipEndpoint(api.MembershipEndpoint o) {
  buildCounterMembershipEndpoint++;
  if (buildCounterMembershipEndpoint < 3) {
    checkGkeCluster(o.gkeCluster! as api.GkeCluster);
    checkKubernetesMetadata(o.kubernetesMetadata! as api.KubernetesMetadata);
  }
  buildCounterMembershipEndpoint--;
}

core.int buildCounterMembershipFeatureSpec = 0;
api.MembershipFeatureSpec buildMembershipFeatureSpec() {
  var o = api.MembershipFeatureSpec();
  buildCounterMembershipFeatureSpec++;
  if (buildCounterMembershipFeatureSpec < 3) {
    o.configmanagement = buildConfigManagementMembershipSpec();
  }
  buildCounterMembershipFeatureSpec--;
  return o;
}

void checkMembershipFeatureSpec(api.MembershipFeatureSpec o) {
  buildCounterMembershipFeatureSpec++;
  if (buildCounterMembershipFeatureSpec < 3) {
    checkConfigManagementMembershipSpec(
        o.configmanagement! as api.ConfigManagementMembershipSpec);
  }
  buildCounterMembershipFeatureSpec--;
}

core.int buildCounterMembershipFeatureState = 0;
api.MembershipFeatureState buildMembershipFeatureState() {
  var o = api.MembershipFeatureState();
  buildCounterMembershipFeatureState++;
  if (buildCounterMembershipFeatureState < 3) {
    o.configmanagement = buildConfigManagementMembershipState();
    o.state = buildFeatureState();
  }
  buildCounterMembershipFeatureState--;
  return o;
}

void checkMembershipFeatureState(api.MembershipFeatureState o) {
  buildCounterMembershipFeatureState++;
  if (buildCounterMembershipFeatureState < 3) {
    checkConfigManagementMembershipState(
        o.configmanagement! as api.ConfigManagementMembershipState);
    checkFeatureState(o.state! as api.FeatureState);
  }
  buildCounterMembershipFeatureState--;
}

core.int buildCounterMembershipState = 0;
api.MembershipState buildMembershipState() {
  var o = api.MembershipState();
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

core.int buildCounterMultiClusterIngressFeatureSpec = 0;
api.MultiClusterIngressFeatureSpec buildMultiClusterIngressFeatureSpec() {
  var o = api.MultiClusterIngressFeatureSpec();
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

core.Map<core.String, core.Object> buildUnnamed1620() {
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

void checkUnnamed1620(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed1621() {
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

void checkUnnamed1621(core.Map<core.String, core.Object> o) {
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
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed1620();
    o.name = 'foo';
    o.response = buildUnnamed1621();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error! as api.GoogleRpcStatus);
    checkUnnamed1620(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1621(o.response!);
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

core.List<api.AuditConfig> buildUnnamed1622() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed1622(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0] as api.AuditConfig);
  checkAuditConfig(o[1] as api.AuditConfig);
}

core.List<api.Binding> buildUnnamed1623() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed1623(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed1622();
    o.bindings = buildUnnamed1623();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed1622(o.auditConfigs!);
    checkUnnamed1623(o.bindings!);
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
    checkPolicy(o.policy! as api.Policy);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed1624() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1624(core.List<core.String> o) {
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
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed1624();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed1624(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed1625() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1625(core.List<core.String> o) {
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
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed1625();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed1625(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTypeMeta = 0;
api.TypeMeta buildTypeMeta() {
  var o = api.TypeMeta();
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
  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAuditConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditConfig(od as api.AuditConfig);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAuditLogConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLogConfig(od as api.AuditLogConfig);
    });
  });

  unittest.group('obj-schema-Authority', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAuthority();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Authority.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAuthority(od as api.Authority);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBinding();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCancelOperationRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-CommonFeatureSpec', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCommonFeatureSpec();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CommonFeatureSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommonFeatureSpec(od as api.CommonFeatureSpec);
    });
  });

  unittest.group('obj-schema-CommonFeatureState', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCommonFeatureState();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CommonFeatureState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommonFeatureState(od as api.CommonFeatureState);
    });
  });

  unittest.group('obj-schema-ConfigManagementConfigSync', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementConfigSync();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementConfigSync.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementConfigSync(od as api.ConfigManagementConfigSync);
    });
  });

  unittest.group('obj-schema-ConfigManagementConfigSyncDeploymentState', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementConfigSyncDeploymentState();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementConfigSyncDeploymentState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementConfigSyncDeploymentState(
          od as api.ConfigManagementConfigSyncDeploymentState);
    });
  });

  unittest.group('obj-schema-ConfigManagementConfigSyncState', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementConfigSyncState();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementConfigSyncState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementConfigSyncState(
          od as api.ConfigManagementConfigSyncState);
    });
  });

  unittest.group('obj-schema-ConfigManagementConfigSyncVersion', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementConfigSyncVersion();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementConfigSyncVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementConfigSyncVersion(
          od as api.ConfigManagementConfigSyncVersion);
    });
  });

  unittest.group('obj-schema-ConfigManagementErrorResource', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementErrorResource();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementErrorResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementErrorResource(
          od as api.ConfigManagementErrorResource);
    });
  });

  unittest.group('obj-schema-ConfigManagementGatekeeperDeploymentState', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementGatekeeperDeploymentState();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementGatekeeperDeploymentState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementGatekeeperDeploymentState(
          od as api.ConfigManagementGatekeeperDeploymentState);
    });
  });

  unittest.group('obj-schema-ConfigManagementGitConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementGitConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementGitConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementGitConfig(od as api.ConfigManagementGitConfig);
    });
  });

  unittest.group('obj-schema-ConfigManagementGroupVersionKind', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementGroupVersionKind();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementGroupVersionKind.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementGroupVersionKind(
          od as api.ConfigManagementGroupVersionKind);
    });
  });

  unittest.group('obj-schema-ConfigManagementHierarchyControllerConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementHierarchyControllerConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementHierarchyControllerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementHierarchyControllerConfig(
          od as api.ConfigManagementHierarchyControllerConfig);
    });
  });

  unittest.group(
      'obj-schema-ConfigManagementHierarchyControllerDeploymentState', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementHierarchyControllerDeploymentState();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementHierarchyControllerDeploymentState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementHierarchyControllerDeploymentState(
          od as api.ConfigManagementHierarchyControllerDeploymentState);
    });
  });

  unittest.group('obj-schema-ConfigManagementHierarchyControllerState', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementHierarchyControllerState();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementHierarchyControllerState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementHierarchyControllerState(
          od as api.ConfigManagementHierarchyControllerState);
    });
  });

  unittest.group('obj-schema-ConfigManagementHierarchyControllerVersion', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementHierarchyControllerVersion();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementHierarchyControllerVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementHierarchyControllerVersion(
          od as api.ConfigManagementHierarchyControllerVersion);
    });
  });

  unittest.group('obj-schema-ConfigManagementInstallError', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementInstallError();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementInstallError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementInstallError(od as api.ConfigManagementInstallError);
    });
  });

  unittest.group('obj-schema-ConfigManagementMembershipSpec', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementMembershipSpec();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementMembershipSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementMembershipSpec(
          od as api.ConfigManagementMembershipSpec);
    });
  });

  unittest.group('obj-schema-ConfigManagementMembershipState', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementMembershipState();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementMembershipState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementMembershipState(
          od as api.ConfigManagementMembershipState);
    });
  });

  unittest.group('obj-schema-ConfigManagementOperatorState', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementOperatorState();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementOperatorState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementOperatorState(
          od as api.ConfigManagementOperatorState);
    });
  });

  unittest.group('obj-schema-ConfigManagementPolicyController', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementPolicyController();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementPolicyController.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementPolicyController(
          od as api.ConfigManagementPolicyController);
    });
  });

  unittest.group('obj-schema-ConfigManagementPolicyControllerState', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementPolicyControllerState();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementPolicyControllerState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementPolicyControllerState(
          od as api.ConfigManagementPolicyControllerState);
    });
  });

  unittest.group('obj-schema-ConfigManagementPolicyControllerVersion', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementPolicyControllerVersion();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementPolicyControllerVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementPolicyControllerVersion(
          od as api.ConfigManagementPolicyControllerVersion);
    });
  });

  unittest.group('obj-schema-ConfigManagementSyncError', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementSyncError();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementSyncError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementSyncError(od as api.ConfigManagementSyncError);
    });
  });

  unittest.group('obj-schema-ConfigManagementSyncState', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigManagementSyncState();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigManagementSyncState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementSyncState(od as api.ConfigManagementSyncState);
    });
  });

  unittest.group('obj-schema-ConnectAgentResource', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConnectAgentResource();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConnectAgentResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectAgentResource(od as api.ConnectAgentResource);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      var o = buildExpr();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-Feature', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFeature();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Feature.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFeature(od as api.Feature);
    });
  });

  unittest.group('obj-schema-FeatureResourceState', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFeatureResourceState();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FeatureResourceState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFeatureResourceState(od as api.FeatureResourceState);
    });
  });

  unittest.group('obj-schema-FeatureState', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFeatureState();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FeatureState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFeatureState(od as api.FeatureState);
    });
  });

  unittest.group('obj-schema-GenerateConnectManifestResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGenerateConnectManifestResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GenerateConnectManifestResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateConnectManifestResponse(
          od as api.GenerateConnectManifestResponse);
    });
  });

  unittest.group('obj-schema-GkeCluster', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGkeCluster();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GkeCluster.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGkeCluster(od as api.GkeCluster);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleRpcStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od as api.GoogleRpcStatus);
    });
  });

  unittest.group('obj-schema-KubernetesMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildKubernetesMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.KubernetesMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKubernetesMetadata(od as api.KubernetesMetadata);
    });
  });

  unittest.group('obj-schema-ListFeaturesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListFeaturesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListFeaturesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFeaturesResponse(od as api.ListFeaturesResponse);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListLocationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od as api.ListLocationsResponse);
    });
  });

  unittest.group('obj-schema-ListMembershipsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListMembershipsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListMembershipsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMembershipsResponse(od as api.ListMembershipsResponse);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListOperationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLocation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-Membership', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMembership();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Membership.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMembership(od as api.Membership);
    });
  });

  unittest.group('obj-schema-MembershipEndpoint', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMembershipEndpoint();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MembershipEndpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipEndpoint(od as api.MembershipEndpoint);
    });
  });

  unittest.group('obj-schema-MembershipFeatureSpec', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMembershipFeatureSpec();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MembershipFeatureSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipFeatureSpec(od as api.MembershipFeatureSpec);
    });
  });

  unittest.group('obj-schema-MembershipFeatureState', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMembershipFeatureState();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MembershipFeatureState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipFeatureState(od as api.MembershipFeatureState);
    });
  });

  unittest.group('obj-schema-MembershipState', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMembershipState();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MembershipState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipState(od as api.MembershipState);
    });
  });

  unittest.group('obj-schema-MultiClusterIngressFeatureSpec', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMultiClusterIngressFeatureSpec();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MultiClusterIngressFeatureSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMultiClusterIngressFeatureSpec(
          od as api.MultiClusterIngressFeatureSpec);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationMetadata(od as api.OperationMetadata);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSetIamPolicyRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od as api.SetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestIamPermissionsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od as api.TestIamPermissionsRequest);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestIamPermissionsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('obj-schema-TypeMeta', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTypeMeta();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.TypeMeta.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTypeMeta(od as api.TypeMeta);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListLocationsResponse());
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
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.features;
      var arg_request = buildFeature();
      var arg_parent = 'foo';
      var arg_featureId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Feature.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFeature(obj as api.Feature);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["featureId"]!.first,
          unittest.equals(arg_featureId),
        );
        unittest.expect(
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          featureId: arg_featureId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.features;
      var arg_name = 'foo';
      var arg_force = true;
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["force"]!.first,
          unittest.equals("$arg_force"),
        );
        unittest.expect(
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          force: arg_force, requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.features;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFeature());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFeature(response as api.Feature);
    });

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.features;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          core.int.parse(queryMap["options.requestedPolicyVersion"]!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.features;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap["orderBy"]!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListFeaturesResponse());
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
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.features;
      var arg_request = buildFeature();
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Feature.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFeature(obj as api.Feature);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.features;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.features;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
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
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.memberships;
      var arg_request = buildMembership();
      var arg_parent = 'foo';
      var arg_membershipId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Membership.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMembership(obj as api.Membership);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["membershipId"]!.first,
          unittest.equals(arg_membershipId),
        );
        unittest.expect(
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          membershipId: arg_membershipId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.memberships;
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--generateConnectManifest', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.memberships;
      var arg_name = 'foo';
      var arg_imagePullSecretContent = 'foo';
      var arg_isUpgrade = true;
      var arg_namespace = 'foo';
      var arg_proxy = 'foo';
      var arg_registry = 'foo';
      var arg_version = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["imagePullSecretContent"]!.first,
          unittest.equals(arg_imagePullSecretContent),
        );
        unittest.expect(
          queryMap["isUpgrade"]!.first,
          unittest.equals("$arg_isUpgrade"),
        );
        unittest.expect(
          queryMap["namespace"]!.first,
          unittest.equals(arg_namespace),
        );
        unittest.expect(
          queryMap["proxy"]!.first,
          unittest.equals(arg_proxy),
        );
        unittest.expect(
          queryMap["registry"]!.first,
          unittest.equals(arg_registry),
        );
        unittest.expect(
          queryMap["version"]!.first,
          unittest.equals(arg_version),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGenerateConnectManifestResponse());
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
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.memberships;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMembership());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMembership(response as api.Membership);
    });

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.memberships;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          core.int.parse(queryMap["options.requestedPolicyVersion"]!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.memberships;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap["orderBy"]!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListMembershipsResponse());
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
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.memberships;
      var arg_request = buildMembership();
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Membership.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMembership(obj as api.Membership);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.memberships;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.memberships;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
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
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.GKEHubApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
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
