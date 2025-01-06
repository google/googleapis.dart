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

import 'package:googleapis/gkehub/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAppDevExperienceState = 0;
api.AppDevExperienceState buildAppDevExperienceState() {
  final o = api.AppDevExperienceState();
  buildCounterAppDevExperienceState++;
  if (buildCounterAppDevExperienceState < 3) {
    o.networkingInstallSucceeded = buildAppDevExperienceStatus();
  }
  buildCounterAppDevExperienceState--;
  return o;
}

void checkAppDevExperienceState(api.AppDevExperienceState o) {
  buildCounterAppDevExperienceState++;
  if (buildCounterAppDevExperienceState < 3) {
    checkAppDevExperienceStatus(o.networkingInstallSucceeded!);
  }
  buildCounterAppDevExperienceState--;
}

core.int buildCounterAppDevExperienceStatus = 0;
api.AppDevExperienceStatus buildAppDevExperienceStatus() {
  final o = api.AppDevExperienceStatus();
  buildCounterAppDevExperienceStatus++;
  if (buildCounterAppDevExperienceStatus < 3) {
    o.code = 'foo';
    o.description = 'foo';
  }
  buildCounterAppDevExperienceStatus--;
  return o;
}

void checkAppDevExperienceStatus(api.AppDevExperienceStatus o) {
  buildCounterAppDevExperienceStatus++;
  if (buildCounterAppDevExperienceStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppDevExperienceStatus--;
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

core.int buildCounterCloudBuildSpec = 0;
api.CloudBuildSpec buildCloudBuildSpec() {
  final o = api.CloudBuildSpec();
  buildCounterCloudBuildSpec++;
  if (buildCounterCloudBuildSpec < 3) {
    o.securityPolicy = 'foo';
    o.version = 'foo';
  }
  buildCounterCloudBuildSpec--;
  return o;
}

void checkCloudBuildSpec(api.CloudBuildSpec o) {
  buildCounterCloudBuildSpec++;
  if (buildCounterCloudBuildSpec < 3) {
    unittest.expect(
      o.securityPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudBuildSpec--;
}

core.int buildCounterClusterUpgradeGKEUpgrade = 0;
api.ClusterUpgradeGKEUpgrade buildClusterUpgradeGKEUpgrade() {
  final o = api.ClusterUpgradeGKEUpgrade();
  buildCounterClusterUpgradeGKEUpgrade++;
  if (buildCounterClusterUpgradeGKEUpgrade < 3) {
    o.name = 'foo';
    o.version = 'foo';
  }
  buildCounterClusterUpgradeGKEUpgrade--;
  return o;
}

void checkClusterUpgradeGKEUpgrade(api.ClusterUpgradeGKEUpgrade o) {
  buildCounterClusterUpgradeGKEUpgrade++;
  if (buildCounterClusterUpgradeGKEUpgrade < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterClusterUpgradeGKEUpgrade--;
}

core.int buildCounterClusterUpgradeIgnoredMembership = 0;
api.ClusterUpgradeIgnoredMembership buildClusterUpgradeIgnoredMembership() {
  final o = api.ClusterUpgradeIgnoredMembership();
  buildCounterClusterUpgradeIgnoredMembership++;
  if (buildCounterClusterUpgradeIgnoredMembership < 3) {
    o.ignoredTime = 'foo';
    o.reason = 'foo';
  }
  buildCounterClusterUpgradeIgnoredMembership--;
  return o;
}

void checkClusterUpgradeIgnoredMembership(
    api.ClusterUpgradeIgnoredMembership o) {
  buildCounterClusterUpgradeIgnoredMembership++;
  if (buildCounterClusterUpgradeIgnoredMembership < 3) {
    unittest.expect(
      o.ignoredTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterClusterUpgradeIgnoredMembership--;
}

core.int buildCounterClusterUpgradeMembershipGKEUpgradeState = 0;
api.ClusterUpgradeMembershipGKEUpgradeState
    buildClusterUpgradeMembershipGKEUpgradeState() {
  final o = api.ClusterUpgradeMembershipGKEUpgradeState();
  buildCounterClusterUpgradeMembershipGKEUpgradeState++;
  if (buildCounterClusterUpgradeMembershipGKEUpgradeState < 3) {
    o.status = buildClusterUpgradeUpgradeStatus();
    o.upgrade = buildClusterUpgradeGKEUpgrade();
  }
  buildCounterClusterUpgradeMembershipGKEUpgradeState--;
  return o;
}

void checkClusterUpgradeMembershipGKEUpgradeState(
    api.ClusterUpgradeMembershipGKEUpgradeState o) {
  buildCounterClusterUpgradeMembershipGKEUpgradeState++;
  if (buildCounterClusterUpgradeMembershipGKEUpgradeState < 3) {
    checkClusterUpgradeUpgradeStatus(o.status!);
    checkClusterUpgradeGKEUpgrade(o.upgrade!);
  }
  buildCounterClusterUpgradeMembershipGKEUpgradeState--;
}

core.List<api.ClusterUpgradeMembershipGKEUpgradeState> buildUnnamed0() => [
      buildClusterUpgradeMembershipGKEUpgradeState(),
      buildClusterUpgradeMembershipGKEUpgradeState(),
    ];

void checkUnnamed0(core.List<api.ClusterUpgradeMembershipGKEUpgradeState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterUpgradeMembershipGKEUpgradeState(o[0]);
  checkClusterUpgradeMembershipGKEUpgradeState(o[1]);
}

core.int buildCounterClusterUpgradeState = 0;
api.ClusterUpgradeState buildClusterUpgradeState() {
  final o = api.ClusterUpgradeState();
  buildCounterClusterUpgradeState++;
  if (buildCounterClusterUpgradeState < 3) {
    o.ignored = buildClusterUpgradeIgnoredMembership();
    o.upgrades = buildUnnamed0();
  }
  buildCounterClusterUpgradeState--;
  return o;
}

void checkClusterUpgradeState(api.ClusterUpgradeState o) {
  buildCounterClusterUpgradeState++;
  if (buildCounterClusterUpgradeState < 3) {
    checkClusterUpgradeIgnoredMembership(o.ignored!);
    checkUnnamed0(o.upgrades!);
  }
  buildCounterClusterUpgradeState--;
}

core.int buildCounterClusterUpgradeUpgradeStatus = 0;
api.ClusterUpgradeUpgradeStatus buildClusterUpgradeUpgradeStatus() {
  final o = api.ClusterUpgradeUpgradeStatus();
  buildCounterClusterUpgradeUpgradeStatus++;
  if (buildCounterClusterUpgradeUpgradeStatus < 3) {
    o.code = 'foo';
    o.reason = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterClusterUpgradeUpgradeStatus--;
  return o;
}

void checkClusterUpgradeUpgradeStatus(api.ClusterUpgradeUpgradeStatus o) {
  buildCounterClusterUpgradeUpgradeStatus++;
  if (buildCounterClusterUpgradeUpgradeStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterClusterUpgradeUpgradeStatus--;
}

core.int buildCounterConfigManagementBinauthzConfig = 0;
api.ConfigManagementBinauthzConfig buildConfigManagementBinauthzConfig() {
  final o = api.ConfigManagementBinauthzConfig();
  buildCounterConfigManagementBinauthzConfig++;
  if (buildCounterConfigManagementBinauthzConfig < 3) {
    o.enabled = true;
  }
  buildCounterConfigManagementBinauthzConfig--;
  return o;
}

void checkConfigManagementBinauthzConfig(api.ConfigManagementBinauthzConfig o) {
  buildCounterConfigManagementBinauthzConfig++;
  if (buildCounterConfigManagementBinauthzConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterConfigManagementBinauthzConfig--;
}

core.int buildCounterConfigManagementBinauthzState = 0;
api.ConfigManagementBinauthzState buildConfigManagementBinauthzState() {
  final o = api.ConfigManagementBinauthzState();
  buildCounterConfigManagementBinauthzState++;
  if (buildCounterConfigManagementBinauthzState < 3) {
    o.version = buildConfigManagementBinauthzVersion();
    o.webhook = 'foo';
  }
  buildCounterConfigManagementBinauthzState--;
  return o;
}

void checkConfigManagementBinauthzState(api.ConfigManagementBinauthzState o) {
  buildCounterConfigManagementBinauthzState++;
  if (buildCounterConfigManagementBinauthzState < 3) {
    checkConfigManagementBinauthzVersion(o.version!);
    unittest.expect(
      o.webhook!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementBinauthzState--;
}

core.int buildCounterConfigManagementBinauthzVersion = 0;
api.ConfigManagementBinauthzVersion buildConfigManagementBinauthzVersion() {
  final o = api.ConfigManagementBinauthzVersion();
  buildCounterConfigManagementBinauthzVersion++;
  if (buildCounterConfigManagementBinauthzVersion < 3) {
    o.webhookVersion = 'foo';
  }
  buildCounterConfigManagementBinauthzVersion--;
  return o;
}

void checkConfigManagementBinauthzVersion(
    api.ConfigManagementBinauthzVersion o) {
  buildCounterConfigManagementBinauthzVersion++;
  if (buildCounterConfigManagementBinauthzVersion < 3) {
    unittest.expect(
      o.webhookVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementBinauthzVersion--;
}

core.List<api.ConfigManagementDeploymentOverride> buildUnnamed1() => [
      buildConfigManagementDeploymentOverride(),
      buildConfigManagementDeploymentOverride(),
    ];

void checkUnnamed1(core.List<api.ConfigManagementDeploymentOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigManagementDeploymentOverride(o[0]);
  checkConfigManagementDeploymentOverride(o[1]);
}

core.int buildCounterConfigManagementConfigSync = 0;
api.ConfigManagementConfigSync buildConfigManagementConfigSync() {
  final o = api.ConfigManagementConfigSync();
  buildCounterConfigManagementConfigSync++;
  if (buildCounterConfigManagementConfigSync < 3) {
    o.deploymentOverrides = buildUnnamed1();
    o.enabled = true;
    o.git = buildConfigManagementGitConfig();
    o.metricsGcpServiceAccountEmail = 'foo';
    o.oci = buildConfigManagementOciConfig();
    o.preventDrift = true;
    o.sourceFormat = 'foo';
    o.stopSyncing = true;
  }
  buildCounterConfigManagementConfigSync--;
  return o;
}

void checkConfigManagementConfigSync(api.ConfigManagementConfigSync o) {
  buildCounterConfigManagementConfigSync++;
  if (buildCounterConfigManagementConfigSync < 3) {
    checkUnnamed1(o.deploymentOverrides!);
    unittest.expect(o.enabled!, unittest.isTrue);
    checkConfigManagementGitConfig(o.git!);
    unittest.expect(
      o.metricsGcpServiceAccountEmail!,
      unittest.equals('foo'),
    );
    checkConfigManagementOciConfig(o.oci!);
    unittest.expect(o.preventDrift!, unittest.isTrue);
    unittest.expect(
      o.sourceFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(o.stopSyncing!, unittest.isTrue);
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
    o.otelCollector = 'foo';
    o.reconcilerManager = 'foo';
    o.resourceGroupControllerManager = 'foo';
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
      o.otelCollector!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reconcilerManager!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceGroupControllerManager!,
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

core.int buildCounterConfigManagementConfigSyncError = 0;
api.ConfigManagementConfigSyncError buildConfigManagementConfigSyncError() {
  final o = api.ConfigManagementConfigSyncError();
  buildCounterConfigManagementConfigSyncError++;
  if (buildCounterConfigManagementConfigSyncError < 3) {
    o.errorMessage = 'foo';
  }
  buildCounterConfigManagementConfigSyncError--;
  return o;
}

void checkConfigManagementConfigSyncError(
    api.ConfigManagementConfigSyncError o) {
  buildCounterConfigManagementConfigSyncError++;
  if (buildCounterConfigManagementConfigSyncError < 3) {
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementConfigSyncError--;
}

core.List<api.ConfigManagementConfigSyncError> buildUnnamed2() => [
      buildConfigManagementConfigSyncError(),
      buildConfigManagementConfigSyncError(),
    ];

void checkUnnamed2(core.List<api.ConfigManagementConfigSyncError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigManagementConfigSyncError(o[0]);
  checkConfigManagementConfigSyncError(o[1]);
}

core.int buildCounterConfigManagementConfigSyncState = 0;
api.ConfigManagementConfigSyncState buildConfigManagementConfigSyncState() {
  final o = api.ConfigManagementConfigSyncState();
  buildCounterConfigManagementConfigSyncState++;
  if (buildCounterConfigManagementConfigSyncState < 3) {
    o.clusterLevelStopSyncingState = 'foo';
    o.crCount = 42;
    o.deploymentState = buildConfigManagementConfigSyncDeploymentState();
    o.errors = buildUnnamed2();
    o.reposyncCrd = 'foo';
    o.rootsyncCrd = 'foo';
    o.state = 'foo';
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
    unittest.expect(
      o.clusterLevelStopSyncingState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crCount!,
      unittest.equals(42),
    );
    checkConfigManagementConfigSyncDeploymentState(o.deploymentState!);
    checkUnnamed2(o.errors!);
    unittest.expect(
      o.reposyncCrd!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rootsyncCrd!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
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
    o.otelCollector = 'foo';
    o.reconcilerManager = 'foo';
    o.resourceGroupControllerManager = 'foo';
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
      o.otelCollector!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reconcilerManager!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceGroupControllerManager!,
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

core.int buildCounterConfigManagementContainerOverride = 0;
api.ConfigManagementContainerOverride buildConfigManagementContainerOverride() {
  final o = api.ConfigManagementContainerOverride();
  buildCounterConfigManagementContainerOverride++;
  if (buildCounterConfigManagementContainerOverride < 3) {
    o.containerName = 'foo';
    o.cpuLimit = 'foo';
    o.cpuRequest = 'foo';
    o.memoryLimit = 'foo';
    o.memoryRequest = 'foo';
  }
  buildCounterConfigManagementContainerOverride--;
  return o;
}

void checkConfigManagementContainerOverride(
    api.ConfigManagementContainerOverride o) {
  buildCounterConfigManagementContainerOverride++;
  if (buildCounterConfigManagementContainerOverride < 3) {
    unittest.expect(
      o.containerName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpuLimit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpuRequest!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memoryLimit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memoryRequest!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementContainerOverride--;
}

core.List<api.ConfigManagementContainerOverride> buildUnnamed3() => [
      buildConfigManagementContainerOverride(),
      buildConfigManagementContainerOverride(),
    ];

void checkUnnamed3(core.List<api.ConfigManagementContainerOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigManagementContainerOverride(o[0]);
  checkConfigManagementContainerOverride(o[1]);
}

core.int buildCounterConfigManagementDeploymentOverride = 0;
api.ConfigManagementDeploymentOverride
    buildConfigManagementDeploymentOverride() {
  final o = api.ConfigManagementDeploymentOverride();
  buildCounterConfigManagementDeploymentOverride++;
  if (buildCounterConfigManagementDeploymentOverride < 3) {
    o.containers = buildUnnamed3();
    o.deploymentName = 'foo';
    o.deploymentNamespace = 'foo';
  }
  buildCounterConfigManagementDeploymentOverride--;
  return o;
}

void checkConfigManagementDeploymentOverride(
    api.ConfigManagementDeploymentOverride o) {
  buildCounterConfigManagementDeploymentOverride++;
  if (buildCounterConfigManagementDeploymentOverride < 3) {
    checkUnnamed3(o.containers!);
    unittest.expect(
      o.deploymentName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deploymentNamespace!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementDeploymentOverride--;
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

core.List<api.ConfigManagementInstallError> buildUnnamed4() => [
      buildConfigManagementInstallError(),
      buildConfigManagementInstallError(),
    ];

void checkUnnamed4(core.List<api.ConfigManagementInstallError> o) {
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
    o.errors = buildUnnamed4();
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
    checkUnnamed4(o.errors!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementOperatorState--;
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

core.int buildCounterConfigManagementPolicyController = 0;
api.ConfigManagementPolicyController buildConfigManagementPolicyController() {
  final o = api.ConfigManagementPolicyController();
  buildCounterConfigManagementPolicyController++;
  if (buildCounterConfigManagementPolicyController < 3) {
    o.auditIntervalSeconds = 'foo';
    o.enabled = true;
    o.exemptableNamespaces = buildUnnamed5();
    o.logDeniesEnabled = true;
    o.monitoring = buildConfigManagementPolicyControllerMonitoring();
    o.mutationEnabled = true;
    o.referentialRulesEnabled = true;
    o.templateLibraryInstalled = true;
    o.updateTime = 'foo';
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
    checkUnnamed5(o.exemptableNamespaces!);
    unittest.expect(o.logDeniesEnabled!, unittest.isTrue);
    checkConfigManagementPolicyControllerMonitoring(o.monitoring!);
    unittest.expect(o.mutationEnabled!, unittest.isTrue);
    unittest.expect(o.referentialRulesEnabled!, unittest.isTrue);
    unittest.expect(o.templateLibraryInstalled!, unittest.isTrue);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementPolicyController--;
}

core.int buildCounterConfigManagementPolicyControllerMigration = 0;
api.ConfigManagementPolicyControllerMigration
    buildConfigManagementPolicyControllerMigration() {
  final o = api.ConfigManagementPolicyControllerMigration();
  buildCounterConfigManagementPolicyControllerMigration++;
  if (buildCounterConfigManagementPolicyControllerMigration < 3) {
    o.copyTime = 'foo';
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
      o.copyTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stage!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementPolicyControllerMigration--;
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

core.int buildCounterConfigManagementPolicyControllerMonitoring = 0;
api.ConfigManagementPolicyControllerMonitoring
    buildConfigManagementPolicyControllerMonitoring() {
  final o = api.ConfigManagementPolicyControllerMonitoring();
  buildCounterConfigManagementPolicyControllerMonitoring++;
  if (buildCounterConfigManagementPolicyControllerMonitoring < 3) {
    o.backends = buildUnnamed6();
  }
  buildCounterConfigManagementPolicyControllerMonitoring--;
  return o;
}

void checkConfigManagementPolicyControllerMonitoring(
    api.ConfigManagementPolicyControllerMonitoring o) {
  buildCounterConfigManagementPolicyControllerMonitoring++;
  if (buildCounterConfigManagementPolicyControllerMonitoring < 3) {
    checkUnnamed6(o.backends!);
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

core.int buildCounterConfigManagementSpec = 0;
api.ConfigManagementSpec buildConfigManagementSpec() {
  final o = api.ConfigManagementSpec();
  buildCounterConfigManagementSpec++;
  if (buildCounterConfigManagementSpec < 3) {
    o.binauthz = buildConfigManagementBinauthzConfig();
    o.cluster = 'foo';
    o.configSync = buildConfigManagementConfigSync();
    o.hierarchyController = buildConfigManagementHierarchyControllerConfig();
    o.management = 'foo';
    o.policyController = buildConfigManagementPolicyController();
    o.version = 'foo';
  }
  buildCounterConfigManagementSpec--;
  return o;
}

void checkConfigManagementSpec(api.ConfigManagementSpec o) {
  buildCounterConfigManagementSpec++;
  if (buildCounterConfigManagementSpec < 3) {
    checkConfigManagementBinauthzConfig(o.binauthz!);
    unittest.expect(
      o.cluster!,
      unittest.equals('foo'),
    );
    checkConfigManagementConfigSync(o.configSync!);
    checkConfigManagementHierarchyControllerConfig(o.hierarchyController!);
    unittest.expect(
      o.management!,
      unittest.equals('foo'),
    );
    checkConfigManagementPolicyController(o.policyController!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementSpec--;
}

core.int buildCounterConfigManagementState = 0;
api.ConfigManagementState buildConfigManagementState() {
  final o = api.ConfigManagementState();
  buildCounterConfigManagementState++;
  if (buildCounterConfigManagementState < 3) {
    o.binauthzState = buildConfigManagementBinauthzState();
    o.clusterName = 'foo';
    o.configSyncState = buildConfigManagementConfigSyncState();
    o.hierarchyControllerState =
        buildConfigManagementHierarchyControllerState();
    o.membershipSpec = buildConfigManagementSpec();
    o.operatorState = buildConfigManagementOperatorState();
    o.policyControllerState = buildConfigManagementPolicyControllerState();
  }
  buildCounterConfigManagementState--;
  return o;
}

void checkConfigManagementState(api.ConfigManagementState o) {
  buildCounterConfigManagementState++;
  if (buildCounterConfigManagementState < 3) {
    checkConfigManagementBinauthzState(o.binauthzState!);
    unittest.expect(
      o.clusterName!,
      unittest.equals('foo'),
    );
    checkConfigManagementConfigSyncState(o.configSyncState!);
    checkConfigManagementHierarchyControllerState(o.hierarchyControllerState!);
    checkConfigManagementSpec(o.membershipSpec!);
    checkConfigManagementOperatorState(o.operatorState!);
    checkConfigManagementPolicyControllerState(o.policyControllerState!);
  }
  buildCounterConfigManagementState--;
}

core.List<api.ConfigManagementErrorResource> buildUnnamed7() => [
      buildConfigManagementErrorResource(),
      buildConfigManagementErrorResource(),
    ];

void checkUnnamed7(core.List<api.ConfigManagementErrorResource> o) {
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
    o.errorResources = buildUnnamed7();
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
    checkUnnamed7(o.errorResources!);
  }
  buildCounterConfigManagementSyncError--;
}

core.List<api.ConfigManagementSyncError> buildUnnamed8() => [
      buildConfigManagementSyncError(),
      buildConfigManagementSyncError(),
    ];

void checkUnnamed8(core.List<api.ConfigManagementSyncError> o) {
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
    o.errors = buildUnnamed8();
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
    checkUnnamed8(o.errors!);
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

core.int buildCounterFeatureSpec = 0;
api.FeatureSpec buildFeatureSpec() {
  final o = api.FeatureSpec();
  buildCounterFeatureSpec++;
  if (buildCounterFeatureSpec < 3) {
    o.cloudbuild = buildCloudBuildSpec();
    o.configmanagement = buildConfigManagementSpec();
    o.identityservice = buildIdentityServiceSpec();
    o.origin = buildOrigin();
    o.policycontroller = buildPolicyControllerSpec();
    o.servicemesh = buildServiceMeshSpec();
    o.workloadcertificate = buildWorkloadCertificateSpec();
  }
  buildCounterFeatureSpec--;
  return o;
}

void checkFeatureSpec(api.FeatureSpec o) {
  buildCounterFeatureSpec++;
  if (buildCounterFeatureSpec < 3) {
    checkCloudBuildSpec(o.cloudbuild!);
    checkConfigManagementSpec(o.configmanagement!);
    checkIdentityServiceSpec(o.identityservice!);
    checkOrigin(o.origin!);
    checkPolicyControllerSpec(o.policycontroller!);
    checkServiceMeshSpec(o.servicemesh!);
    checkWorkloadCertificateSpec(o.workloadcertificate!);
  }
  buildCounterFeatureSpec--;
}

core.int buildCounterFeatureState = 0;
api.FeatureState buildFeatureState() {
  final o = api.FeatureState();
  buildCounterFeatureState++;
  if (buildCounterFeatureState < 3) {
    o.appdevexperience = buildAppDevExperienceState();
    o.clusterupgrade = buildClusterUpgradeState();
    o.configmanagement = buildConfigManagementState();
    o.identityservice = buildIdentityServiceState();
    o.metering = buildMeteringState();
    o.policycontroller = buildPolicyControllerState();
    o.servicemesh = buildServiceMeshState();
    o.state = buildState();
  }
  buildCounterFeatureState--;
  return o;
}

void checkFeatureState(api.FeatureState o) {
  buildCounterFeatureState++;
  if (buildCounterFeatureState < 3) {
    checkAppDevExperienceState(o.appdevexperience!);
    checkClusterUpgradeState(o.clusterupgrade!);
    checkConfigManagementState(o.configmanagement!);
    checkIdentityServiceState(o.identityservice!);
    checkMeteringState(o.metering!);
    checkPolicyControllerState(o.policycontroller!);
    checkServiceMeshState(o.servicemesh!);
    checkState(o.state!);
  }
  buildCounterFeatureState--;
}

core.Map<core.String, core.Object?> buildUnnamed9() => {
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

void checkUnnamed9(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed10() => [
      buildUnnamed9(),
      buildUnnamed9(),
    ];

void checkUnnamed10(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed9(o[0]);
  checkUnnamed9(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed10();
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
    checkUnnamed10(o.details!);
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
    o.ldapConfig = buildIdentityServiceLdapConfig();
    o.name = 'foo';
    o.oidcConfig = buildIdentityServiceOidcConfig();
    o.proxy = 'foo';
    o.samlConfig = buildIdentityServiceSamlConfig();
  }
  buildCounterIdentityServiceAuthMethod--;
  return o;
}

void checkIdentityServiceAuthMethod(api.IdentityServiceAuthMethod o) {
  buildCounterIdentityServiceAuthMethod++;
  if (buildCounterIdentityServiceAuthMethod < 3) {
    checkIdentityServiceAzureADConfig(o.azureadConfig!);
    checkIdentityServiceGoogleConfig(o.googleConfig!);
    checkIdentityServiceLdapConfig(o.ldapConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkIdentityServiceOidcConfig(o.oidcConfig!);
    unittest.expect(
      o.proxy!,
      unittest.equals('foo'),
    );
    checkIdentityServiceSamlConfig(o.samlConfig!);
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
    o.groupFormat = 'foo';
    o.kubectlRedirectUri = 'foo';
    o.tenant = 'foo';
    o.userClaim = 'foo';
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
      o.groupFormat!,
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
    unittest.expect(
      o.userClaim!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentityServiceAzureADConfig--;
}

core.int buildCounterIdentityServiceDiagnosticInterface = 0;
api.IdentityServiceDiagnosticInterface
    buildIdentityServiceDiagnosticInterface() {
  final o = api.IdentityServiceDiagnosticInterface();
  buildCounterIdentityServiceDiagnosticInterface++;
  if (buildCounterIdentityServiceDiagnosticInterface < 3) {
    o.enabled = true;
    o.expirationTime = 'foo';
  }
  buildCounterIdentityServiceDiagnosticInterface--;
  return o;
}

void checkIdentityServiceDiagnosticInterface(
    api.IdentityServiceDiagnosticInterface o) {
  buildCounterIdentityServiceDiagnosticInterface++;
  if (buildCounterIdentityServiceDiagnosticInterface < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.expirationTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentityServiceDiagnosticInterface--;
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

core.int buildCounterIdentityServiceGroupConfig = 0;
api.IdentityServiceGroupConfig buildIdentityServiceGroupConfig() {
  final o = api.IdentityServiceGroupConfig();
  buildCounterIdentityServiceGroupConfig++;
  if (buildCounterIdentityServiceGroupConfig < 3) {
    o.baseDn = 'foo';
    o.filter = 'foo';
    o.idAttribute = 'foo';
  }
  buildCounterIdentityServiceGroupConfig--;
  return o;
}

void checkIdentityServiceGroupConfig(api.IdentityServiceGroupConfig o) {
  buildCounterIdentityServiceGroupConfig++;
  if (buildCounterIdentityServiceGroupConfig < 3) {
    unittest.expect(
      o.baseDn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idAttribute!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentityServiceGroupConfig--;
}

core.int buildCounterIdentityServiceIdentityServiceOptions = 0;
api.IdentityServiceIdentityServiceOptions
    buildIdentityServiceIdentityServiceOptions() {
  final o = api.IdentityServiceIdentityServiceOptions();
  buildCounterIdentityServiceIdentityServiceOptions++;
  if (buildCounterIdentityServiceIdentityServiceOptions < 3) {
    o.diagnosticInterface = buildIdentityServiceDiagnosticInterface();
    o.sessionDuration = 'foo';
  }
  buildCounterIdentityServiceIdentityServiceOptions--;
  return o;
}

void checkIdentityServiceIdentityServiceOptions(
    api.IdentityServiceIdentityServiceOptions o) {
  buildCounterIdentityServiceIdentityServiceOptions++;
  if (buildCounterIdentityServiceIdentityServiceOptions < 3) {
    checkIdentityServiceDiagnosticInterface(o.diagnosticInterface!);
    unittest.expect(
      o.sessionDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentityServiceIdentityServiceOptions--;
}

core.int buildCounterIdentityServiceLdapConfig = 0;
api.IdentityServiceLdapConfig buildIdentityServiceLdapConfig() {
  final o = api.IdentityServiceLdapConfig();
  buildCounterIdentityServiceLdapConfig++;
  if (buildCounterIdentityServiceLdapConfig < 3) {
    o.group = buildIdentityServiceGroupConfig();
    o.server = buildIdentityServiceServerConfig();
    o.serviceAccount = buildIdentityServiceServiceAccountConfig();
    o.user = buildIdentityServiceUserConfig();
  }
  buildCounterIdentityServiceLdapConfig--;
  return o;
}

void checkIdentityServiceLdapConfig(api.IdentityServiceLdapConfig o) {
  buildCounterIdentityServiceLdapConfig++;
  if (buildCounterIdentityServiceLdapConfig < 3) {
    checkIdentityServiceGroupConfig(o.group!);
    checkIdentityServiceServerConfig(o.server!);
    checkIdentityServiceServiceAccountConfig(o.serviceAccount!);
    checkIdentityServiceUserConfig(o.user!);
  }
  buildCounterIdentityServiceLdapConfig--;
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

core.Map<core.String, core.String> buildUnnamed11() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed11(core.Map<core.String, core.String> o) {
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

core.int buildCounterIdentityServiceSamlConfig = 0;
api.IdentityServiceSamlConfig buildIdentityServiceSamlConfig() {
  final o = api.IdentityServiceSamlConfig();
  buildCounterIdentityServiceSamlConfig++;
  if (buildCounterIdentityServiceSamlConfig < 3) {
    o.attributeMapping = buildUnnamed11();
    o.groupPrefix = 'foo';
    o.groupsAttribute = 'foo';
    o.identityProviderCertificates = buildUnnamed12();
    o.identityProviderId = 'foo';
    o.identityProviderSsoUri = 'foo';
    o.userAttribute = 'foo';
    o.userPrefix = 'foo';
  }
  buildCounterIdentityServiceSamlConfig--;
  return o;
}

void checkIdentityServiceSamlConfig(api.IdentityServiceSamlConfig o) {
  buildCounterIdentityServiceSamlConfig++;
  if (buildCounterIdentityServiceSamlConfig < 3) {
    checkUnnamed11(o.attributeMapping!);
    unittest.expect(
      o.groupPrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.groupsAttribute!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.identityProviderCertificates!);
    unittest.expect(
      o.identityProviderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.identityProviderSsoUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userAttribute!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentityServiceSamlConfig--;
}

core.int buildCounterIdentityServiceServerConfig = 0;
api.IdentityServiceServerConfig buildIdentityServiceServerConfig() {
  final o = api.IdentityServiceServerConfig();
  buildCounterIdentityServiceServerConfig++;
  if (buildCounterIdentityServiceServerConfig < 3) {
    o.certificateAuthorityData = 'foo';
    o.connectionType = 'foo';
    o.host = 'foo';
  }
  buildCounterIdentityServiceServerConfig--;
  return o;
}

void checkIdentityServiceServerConfig(api.IdentityServiceServerConfig o) {
  buildCounterIdentityServiceServerConfig++;
  if (buildCounterIdentityServiceServerConfig < 3) {
    unittest.expect(
      o.certificateAuthorityData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentityServiceServerConfig--;
}

core.int buildCounterIdentityServiceServiceAccountConfig = 0;
api.IdentityServiceServiceAccountConfig
    buildIdentityServiceServiceAccountConfig() {
  final o = api.IdentityServiceServiceAccountConfig();
  buildCounterIdentityServiceServiceAccountConfig++;
  if (buildCounterIdentityServiceServiceAccountConfig < 3) {
    o.simpleBindCredentials = buildIdentityServiceSimpleBindCredentials();
  }
  buildCounterIdentityServiceServiceAccountConfig--;
  return o;
}

void checkIdentityServiceServiceAccountConfig(
    api.IdentityServiceServiceAccountConfig o) {
  buildCounterIdentityServiceServiceAccountConfig++;
  if (buildCounterIdentityServiceServiceAccountConfig < 3) {
    checkIdentityServiceSimpleBindCredentials(o.simpleBindCredentials!);
  }
  buildCounterIdentityServiceServiceAccountConfig--;
}

core.int buildCounterIdentityServiceSimpleBindCredentials = 0;
api.IdentityServiceSimpleBindCredentials
    buildIdentityServiceSimpleBindCredentials() {
  final o = api.IdentityServiceSimpleBindCredentials();
  buildCounterIdentityServiceSimpleBindCredentials++;
  if (buildCounterIdentityServiceSimpleBindCredentials < 3) {
    o.dn = 'foo';
    o.encryptedPassword = 'foo';
    o.password = 'foo';
  }
  buildCounterIdentityServiceSimpleBindCredentials--;
  return o;
}

void checkIdentityServiceSimpleBindCredentials(
    api.IdentityServiceSimpleBindCredentials o) {
  buildCounterIdentityServiceSimpleBindCredentials++;
  if (buildCounterIdentityServiceSimpleBindCredentials < 3) {
    unittest.expect(
      o.dn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.encryptedPassword!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentityServiceSimpleBindCredentials--;
}

core.List<api.IdentityServiceAuthMethod> buildUnnamed13() => [
      buildIdentityServiceAuthMethod(),
      buildIdentityServiceAuthMethod(),
    ];

void checkUnnamed13(core.List<api.IdentityServiceAuthMethod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIdentityServiceAuthMethod(o[0]);
  checkIdentityServiceAuthMethod(o[1]);
}

core.int buildCounterIdentityServiceSpec = 0;
api.IdentityServiceSpec buildIdentityServiceSpec() {
  final o = api.IdentityServiceSpec();
  buildCounterIdentityServiceSpec++;
  if (buildCounterIdentityServiceSpec < 3) {
    o.authMethods = buildUnnamed13();
    o.identityServiceOptions = buildIdentityServiceIdentityServiceOptions();
  }
  buildCounterIdentityServiceSpec--;
  return o;
}

void checkIdentityServiceSpec(api.IdentityServiceSpec o) {
  buildCounterIdentityServiceSpec++;
  if (buildCounterIdentityServiceSpec < 3) {
    checkUnnamed13(o.authMethods!);
    checkIdentityServiceIdentityServiceOptions(o.identityServiceOptions!);
  }
  buildCounterIdentityServiceSpec--;
}

core.int buildCounterIdentityServiceState = 0;
api.IdentityServiceState buildIdentityServiceState() {
  final o = api.IdentityServiceState();
  buildCounterIdentityServiceState++;
  if (buildCounterIdentityServiceState < 3) {
    o.failureReason = 'foo';
    o.installedVersion = 'foo';
    o.memberConfig = buildIdentityServiceSpec();
    o.state = 'foo';
  }
  buildCounterIdentityServiceState--;
  return o;
}

void checkIdentityServiceState(api.IdentityServiceState o) {
  buildCounterIdentityServiceState++;
  if (buildCounterIdentityServiceState < 3) {
    unittest.expect(
      o.failureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.installedVersion!,
      unittest.equals('foo'),
    );
    checkIdentityServiceSpec(o.memberConfig!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentityServiceState--;
}

core.int buildCounterIdentityServiceUserConfig = 0;
api.IdentityServiceUserConfig buildIdentityServiceUserConfig() {
  final o = api.IdentityServiceUserConfig();
  buildCounterIdentityServiceUserConfig++;
  if (buildCounterIdentityServiceUserConfig < 3) {
    o.baseDn = 'foo';
    o.filter = 'foo';
    o.idAttribute = 'foo';
    o.loginAttribute = 'foo';
  }
  buildCounterIdentityServiceUserConfig--;
  return o;
}

void checkIdentityServiceUserConfig(api.IdentityServiceUserConfig o) {
  buildCounterIdentityServiceUserConfig++;
  if (buildCounterIdentityServiceUserConfig < 3) {
    unittest.expect(
      o.baseDn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idAttribute!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.loginAttribute!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentityServiceUserConfig--;
}

core.int buildCounterLifecycleState = 0;
api.LifecycleState buildLifecycleState() {
  final o = api.LifecycleState();
  buildCounterLifecycleState++;
  if (buildCounterLifecycleState < 3) {
    o.state = 'foo';
  }
  buildCounterLifecycleState--;
  return o;
}

void checkLifecycleState(api.LifecycleState o) {
  buildCounterLifecycleState++;
  if (buildCounterLifecycleState < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterLifecycleState--;
}

core.List<api.Location> buildUnnamed14() => [
      buildLocation(),
      buildLocation(),
    ];

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
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.MembershipFeature> buildUnnamed15() => [
      buildMembershipFeature(),
      buildMembershipFeature(),
    ];

void checkUnnamed15(core.List<api.MembershipFeature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipFeature(o[0]);
  checkMembershipFeature(o[1]);
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

core.int buildCounterListMembershipFeaturesResponse = 0;
api.ListMembershipFeaturesResponse buildListMembershipFeaturesResponse() {
  final o = api.ListMembershipFeaturesResponse();
  buildCounterListMembershipFeaturesResponse++;
  if (buildCounterListMembershipFeaturesResponse < 3) {
    o.membershipFeatures = buildUnnamed15();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed16();
  }
  buildCounterListMembershipFeaturesResponse--;
  return o;
}

void checkListMembershipFeaturesResponse(api.ListMembershipFeaturesResponse o) {
  buildCounterListMembershipFeaturesResponse++;
  if (buildCounterListMembershipFeaturesResponse < 3) {
    checkUnnamed15(o.membershipFeatures!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.unreachable!);
  }
  buildCounterListMembershipFeaturesResponse--;
}

core.List<api.Operation> buildUnnamed17() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed17(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed17();
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
    checkUnnamed17(o.operations!);
  }
  buildCounterListOperationsResponse--;
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed18();
    o.locationId = 'foo';
    o.metadata = buildUnnamed19();
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
    checkUnnamed18(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed20() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed20(core.Map<core.String, core.String> o) {
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

core.int buildCounterMembershipFeature = 0;
api.MembershipFeature buildMembershipFeature() {
  final o = api.MembershipFeature();
  buildCounterMembershipFeature++;
  if (buildCounterMembershipFeature < 3) {
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.labels = buildUnnamed20();
    o.lifecycleState = buildLifecycleState();
    o.name = 'foo';
    o.spec = buildFeatureSpec();
    o.state = buildFeatureState();
    o.updateTime = 'foo';
  }
  buildCounterMembershipFeature--;
  return o;
}

void checkMembershipFeature(api.MembershipFeature o) {
  buildCounterMembershipFeature++;
  if (buildCounterMembershipFeature < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.labels!);
    checkLifecycleState(o.lifecycleState!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkFeatureSpec(o.spec!);
    checkFeatureState(o.state!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMembershipFeature--;
}

core.int buildCounterMeteringState = 0;
api.MeteringState buildMeteringState() {
  final o = api.MeteringState();
  buildCounterMeteringState++;
  if (buildCounterMeteringState < 3) {
    o.lastMeasurementTime = 'foo';
    o.preciseLastMeasuredClusterVcpuCapacity = 42.0;
  }
  buildCounterMeteringState--;
  return o;
}

void checkMeteringState(api.MeteringState o) {
  buildCounterMeteringState++;
  if (buildCounterMeteringState < 3) {
    unittest.expect(
      o.lastMeasurementTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.preciseLastMeasuredClusterVcpuCapacity!,
      unittest.equals(42.0),
    );
  }
  buildCounterMeteringState--;
}

core.Map<core.String, core.Object?> buildUnnamed21() => {
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

void checkUnnamed21(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed22() => {
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

void checkUnnamed22(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed21();
    o.name = 'foo';
    o.response = buildUnnamed22();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed21(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOrigin = 0;
api.Origin buildOrigin() {
  final o = api.Origin();
  buildCounterOrigin++;
  if (buildCounterOrigin < 3) {
    o.type = 'foo';
  }
  buildCounterOrigin--;
  return o;
}

void checkOrigin(api.Origin o) {
  buildCounterOrigin++;
  if (buildCounterOrigin < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrigin--;
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

core.int buildCounterPolicyControllerBundleInstallSpec = 0;
api.PolicyControllerBundleInstallSpec buildPolicyControllerBundleInstallSpec() {
  final o = api.PolicyControllerBundleInstallSpec();
  buildCounterPolicyControllerBundleInstallSpec++;
  if (buildCounterPolicyControllerBundleInstallSpec < 3) {
    o.exemptedNamespaces = buildUnnamed23();
  }
  buildCounterPolicyControllerBundleInstallSpec--;
  return o;
}

void checkPolicyControllerBundleInstallSpec(
    api.PolicyControllerBundleInstallSpec o) {
  buildCounterPolicyControllerBundleInstallSpec++;
  if (buildCounterPolicyControllerBundleInstallSpec < 3) {
    checkUnnamed23(o.exemptedNamespaces!);
  }
  buildCounterPolicyControllerBundleInstallSpec--;
}

core.Map<core.String, api.PolicyControllerPolicyControllerDeploymentConfig>
    buildUnnamed24() => {
          'x': buildPolicyControllerPolicyControllerDeploymentConfig(),
          'y': buildPolicyControllerPolicyControllerDeploymentConfig(),
        };

void checkUnnamed24(
    core.Map<core.String, api.PolicyControllerPolicyControllerDeploymentConfig>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyControllerPolicyControllerDeploymentConfig(o['x']!);
  checkPolicyControllerPolicyControllerDeploymentConfig(o['y']!);
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

core.int buildCounterPolicyControllerHubConfig = 0;
api.PolicyControllerHubConfig buildPolicyControllerHubConfig() {
  final o = api.PolicyControllerHubConfig();
  buildCounterPolicyControllerHubConfig++;
  if (buildCounterPolicyControllerHubConfig < 3) {
    o.auditIntervalSeconds = 'foo';
    o.constraintViolationLimit = 'foo';
    o.deploymentConfigs = buildUnnamed24();
    o.exemptableNamespaces = buildUnnamed25();
    o.installSpec = 'foo';
    o.logDeniesEnabled = true;
    o.monitoring = buildPolicyControllerMonitoringConfig();
    o.mutationEnabled = true;
    o.policyContent = buildPolicyControllerPolicyContentSpec();
    o.referentialRulesEnabled = true;
  }
  buildCounterPolicyControllerHubConfig--;
  return o;
}

void checkPolicyControllerHubConfig(api.PolicyControllerHubConfig o) {
  buildCounterPolicyControllerHubConfig++;
  if (buildCounterPolicyControllerHubConfig < 3) {
    unittest.expect(
      o.auditIntervalSeconds!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.constraintViolationLimit!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.deploymentConfigs!);
    checkUnnamed25(o.exemptableNamespaces!);
    unittest.expect(
      o.installSpec!,
      unittest.equals('foo'),
    );
    unittest.expect(o.logDeniesEnabled!, unittest.isTrue);
    checkPolicyControllerMonitoringConfig(o.monitoring!);
    unittest.expect(o.mutationEnabled!, unittest.isTrue);
    checkPolicyControllerPolicyContentSpec(o.policyContent!);
    unittest.expect(o.referentialRulesEnabled!, unittest.isTrue);
  }
  buildCounterPolicyControllerHubConfig--;
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

core.int buildCounterPolicyControllerMonitoringConfig = 0;
api.PolicyControllerMonitoringConfig buildPolicyControllerMonitoringConfig() {
  final o = api.PolicyControllerMonitoringConfig();
  buildCounterPolicyControllerMonitoringConfig++;
  if (buildCounterPolicyControllerMonitoringConfig < 3) {
    o.backends = buildUnnamed26();
  }
  buildCounterPolicyControllerMonitoringConfig--;
  return o;
}

void checkPolicyControllerMonitoringConfig(
    api.PolicyControllerMonitoringConfig o) {
  buildCounterPolicyControllerMonitoringConfig++;
  if (buildCounterPolicyControllerMonitoringConfig < 3) {
    checkUnnamed26(o.backends!);
  }
  buildCounterPolicyControllerMonitoringConfig--;
}

core.int buildCounterPolicyControllerOnClusterState = 0;
api.PolicyControllerOnClusterState buildPolicyControllerOnClusterState() {
  final o = api.PolicyControllerOnClusterState();
  buildCounterPolicyControllerOnClusterState++;
  if (buildCounterPolicyControllerOnClusterState < 3) {
    o.details = 'foo';
    o.state = 'foo';
  }
  buildCounterPolicyControllerOnClusterState--;
  return o;
}

void checkPolicyControllerOnClusterState(api.PolicyControllerOnClusterState o) {
  buildCounterPolicyControllerOnClusterState++;
  if (buildCounterPolicyControllerOnClusterState < 3) {
    unittest.expect(
      o.details!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyControllerOnClusterState--;
}

core.Map<core.String, api.PolicyControllerBundleInstallSpec> buildUnnamed27() =>
    {
      'x': buildPolicyControllerBundleInstallSpec(),
      'y': buildPolicyControllerBundleInstallSpec(),
    };

void checkUnnamed27(
    core.Map<core.String, api.PolicyControllerBundleInstallSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyControllerBundleInstallSpec(o['x']!);
  checkPolicyControllerBundleInstallSpec(o['y']!);
}

core.int buildCounterPolicyControllerPolicyContentSpec = 0;
api.PolicyControllerPolicyContentSpec buildPolicyControllerPolicyContentSpec() {
  final o = api.PolicyControllerPolicyContentSpec();
  buildCounterPolicyControllerPolicyContentSpec++;
  if (buildCounterPolicyControllerPolicyContentSpec < 3) {
    o.bundles = buildUnnamed27();
    o.templateLibrary = buildPolicyControllerTemplateLibraryConfig();
  }
  buildCounterPolicyControllerPolicyContentSpec--;
  return o;
}

void checkPolicyControllerPolicyContentSpec(
    api.PolicyControllerPolicyContentSpec o) {
  buildCounterPolicyControllerPolicyContentSpec++;
  if (buildCounterPolicyControllerPolicyContentSpec < 3) {
    checkUnnamed27(o.bundles!);
    checkPolicyControllerTemplateLibraryConfig(o.templateLibrary!);
  }
  buildCounterPolicyControllerPolicyContentSpec--;
}

core.Map<core.String, api.PolicyControllerOnClusterState> buildUnnamed28() => {
      'x': buildPolicyControllerOnClusterState(),
      'y': buildPolicyControllerOnClusterState(),
    };

void checkUnnamed28(
    core.Map<core.String, api.PolicyControllerOnClusterState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyControllerOnClusterState(o['x']!);
  checkPolicyControllerOnClusterState(o['y']!);
}

core.int buildCounterPolicyControllerPolicyContentState = 0;
api.PolicyControllerPolicyContentState
    buildPolicyControllerPolicyContentState() {
  final o = api.PolicyControllerPolicyContentState();
  buildCounterPolicyControllerPolicyContentState++;
  if (buildCounterPolicyControllerPolicyContentState < 3) {
    o.bundleStates = buildUnnamed28();
    o.referentialSyncConfigState = buildPolicyControllerOnClusterState();
    o.templateLibraryState = buildPolicyControllerOnClusterState();
  }
  buildCounterPolicyControllerPolicyContentState--;
  return o;
}

void checkPolicyControllerPolicyContentState(
    api.PolicyControllerPolicyContentState o) {
  buildCounterPolicyControllerPolicyContentState++;
  if (buildCounterPolicyControllerPolicyContentState < 3) {
    checkUnnamed28(o.bundleStates!);
    checkPolicyControllerOnClusterState(o.referentialSyncConfigState!);
    checkPolicyControllerOnClusterState(o.templateLibraryState!);
  }
  buildCounterPolicyControllerPolicyContentState--;
}

core.List<api.PolicyControllerToleration> buildUnnamed29() => [
      buildPolicyControllerToleration(),
      buildPolicyControllerToleration(),
    ];

void checkUnnamed29(core.List<api.PolicyControllerToleration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyControllerToleration(o[0]);
  checkPolicyControllerToleration(o[1]);
}

core.int buildCounterPolicyControllerPolicyControllerDeploymentConfig = 0;
api.PolicyControllerPolicyControllerDeploymentConfig
    buildPolicyControllerPolicyControllerDeploymentConfig() {
  final o = api.PolicyControllerPolicyControllerDeploymentConfig();
  buildCounterPolicyControllerPolicyControllerDeploymentConfig++;
  if (buildCounterPolicyControllerPolicyControllerDeploymentConfig < 3) {
    o.containerResources = buildPolicyControllerResourceRequirements();
    o.podAffinity = 'foo';
    o.podAntiAffinity = true;
    o.podTolerations = buildUnnamed29();
    o.replicaCount = 'foo';
  }
  buildCounterPolicyControllerPolicyControllerDeploymentConfig--;
  return o;
}

void checkPolicyControllerPolicyControllerDeploymentConfig(
    api.PolicyControllerPolicyControllerDeploymentConfig o) {
  buildCounterPolicyControllerPolicyControllerDeploymentConfig++;
  if (buildCounterPolicyControllerPolicyControllerDeploymentConfig < 3) {
    checkPolicyControllerResourceRequirements(o.containerResources!);
    unittest.expect(
      o.podAffinity!,
      unittest.equals('foo'),
    );
    unittest.expect(o.podAntiAffinity!, unittest.isTrue);
    checkUnnamed29(o.podTolerations!);
    unittest.expect(
      o.replicaCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyControllerPolicyControllerDeploymentConfig--;
}

core.int buildCounterPolicyControllerResourceList = 0;
api.PolicyControllerResourceList buildPolicyControllerResourceList() {
  final o = api.PolicyControllerResourceList();
  buildCounterPolicyControllerResourceList++;
  if (buildCounterPolicyControllerResourceList < 3) {
    o.cpu = 'foo';
    o.memory = 'foo';
  }
  buildCounterPolicyControllerResourceList--;
  return o;
}

void checkPolicyControllerResourceList(api.PolicyControllerResourceList o) {
  buildCounterPolicyControllerResourceList++;
  if (buildCounterPolicyControllerResourceList < 3) {
    unittest.expect(
      o.cpu!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memory!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyControllerResourceList--;
}

core.int buildCounterPolicyControllerResourceRequirements = 0;
api.PolicyControllerResourceRequirements
    buildPolicyControllerResourceRequirements() {
  final o = api.PolicyControllerResourceRequirements();
  buildCounterPolicyControllerResourceRequirements++;
  if (buildCounterPolicyControllerResourceRequirements < 3) {
    o.limits = buildPolicyControllerResourceList();
    o.requests = buildPolicyControllerResourceList();
  }
  buildCounterPolicyControllerResourceRequirements--;
  return o;
}

void checkPolicyControllerResourceRequirements(
    api.PolicyControllerResourceRequirements o) {
  buildCounterPolicyControllerResourceRequirements++;
  if (buildCounterPolicyControllerResourceRequirements < 3) {
    checkPolicyControllerResourceList(o.limits!);
    checkPolicyControllerResourceList(o.requests!);
  }
  buildCounterPolicyControllerResourceRequirements--;
}

core.int buildCounterPolicyControllerSpec = 0;
api.PolicyControllerSpec buildPolicyControllerSpec() {
  final o = api.PolicyControllerSpec();
  buildCounterPolicyControllerSpec++;
  if (buildCounterPolicyControllerSpec < 3) {
    o.policyControllerHubConfig = buildPolicyControllerHubConfig();
    o.version = 'foo';
  }
  buildCounterPolicyControllerSpec--;
  return o;
}

void checkPolicyControllerSpec(api.PolicyControllerSpec o) {
  buildCounterPolicyControllerSpec++;
  if (buildCounterPolicyControllerSpec < 3) {
    checkPolicyControllerHubConfig(o.policyControllerHubConfig!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyControllerSpec--;
}

core.Map<core.String, api.PolicyControllerOnClusterState> buildUnnamed30() => {
      'x': buildPolicyControllerOnClusterState(),
      'y': buildPolicyControllerOnClusterState(),
    };

void checkUnnamed30(
    core.Map<core.String, api.PolicyControllerOnClusterState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyControllerOnClusterState(o['x']!);
  checkPolicyControllerOnClusterState(o['y']!);
}

core.int buildCounterPolicyControllerState = 0;
api.PolicyControllerState buildPolicyControllerState() {
  final o = api.PolicyControllerState();
  buildCounterPolicyControllerState++;
  if (buildCounterPolicyControllerState < 3) {
    o.componentStates = buildUnnamed30();
    o.policyContentState = buildPolicyControllerPolicyContentState();
    o.state = 'foo';
  }
  buildCounterPolicyControllerState--;
  return o;
}

void checkPolicyControllerState(api.PolicyControllerState o) {
  buildCounterPolicyControllerState++;
  if (buildCounterPolicyControllerState < 3) {
    checkUnnamed30(o.componentStates!);
    checkPolicyControllerPolicyContentState(o.policyContentState!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyControllerState--;
}

core.int buildCounterPolicyControllerTemplateLibraryConfig = 0;
api.PolicyControllerTemplateLibraryConfig
    buildPolicyControllerTemplateLibraryConfig() {
  final o = api.PolicyControllerTemplateLibraryConfig();
  buildCounterPolicyControllerTemplateLibraryConfig++;
  if (buildCounterPolicyControllerTemplateLibraryConfig < 3) {
    o.installation = 'foo';
  }
  buildCounterPolicyControllerTemplateLibraryConfig--;
  return o;
}

void checkPolicyControllerTemplateLibraryConfig(
    api.PolicyControllerTemplateLibraryConfig o) {
  buildCounterPolicyControllerTemplateLibraryConfig++;
  if (buildCounterPolicyControllerTemplateLibraryConfig < 3) {
    unittest.expect(
      o.installation!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyControllerTemplateLibraryConfig--;
}

core.int buildCounterPolicyControllerToleration = 0;
api.PolicyControllerToleration buildPolicyControllerToleration() {
  final o = api.PolicyControllerToleration();
  buildCounterPolicyControllerToleration++;
  if (buildCounterPolicyControllerToleration < 3) {
    o.effect = 'foo';
    o.key = 'foo';
    o.operator = 'foo';
    o.value = 'foo';
  }
  buildCounterPolicyControllerToleration--;
  return o;
}

void checkPolicyControllerToleration(api.PolicyControllerToleration o) {
  buildCounterPolicyControllerToleration++;
  if (buildCounterPolicyControllerToleration < 3) {
    unittest.expect(
      o.effect!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyControllerToleration--;
}

core.Map<core.String, core.Object?> buildUnnamed31() => {
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

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed32() => [
      'foo',
      'foo',
    ];

void checkUnnamed32(core.List<core.String> o) {
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

core.int buildCounterServiceMeshAnalysisMessage = 0;
api.ServiceMeshAnalysisMessage buildServiceMeshAnalysisMessage() {
  final o = api.ServiceMeshAnalysisMessage();
  buildCounterServiceMeshAnalysisMessage++;
  if (buildCounterServiceMeshAnalysisMessage < 3) {
    o.args = buildUnnamed31();
    o.description = 'foo';
    o.messageBase = buildServiceMeshAnalysisMessageBase();
    o.resourcePaths = buildUnnamed32();
  }
  buildCounterServiceMeshAnalysisMessage--;
  return o;
}

void checkServiceMeshAnalysisMessage(api.ServiceMeshAnalysisMessage o) {
  buildCounterServiceMeshAnalysisMessage++;
  if (buildCounterServiceMeshAnalysisMessage < 3) {
    checkUnnamed31(o.args!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkServiceMeshAnalysisMessageBase(o.messageBase!);
    checkUnnamed32(o.resourcePaths!);
  }
  buildCounterServiceMeshAnalysisMessage--;
}

core.int buildCounterServiceMeshAnalysisMessageBase = 0;
api.ServiceMeshAnalysisMessageBase buildServiceMeshAnalysisMessageBase() {
  final o = api.ServiceMeshAnalysisMessageBase();
  buildCounterServiceMeshAnalysisMessageBase++;
  if (buildCounterServiceMeshAnalysisMessageBase < 3) {
    o.documentationUrl = 'foo';
    o.level = 'foo';
    o.type = buildServiceMeshType();
  }
  buildCounterServiceMeshAnalysisMessageBase--;
  return o;
}

void checkServiceMeshAnalysisMessageBase(api.ServiceMeshAnalysisMessageBase o) {
  buildCounterServiceMeshAnalysisMessageBase++;
  if (buildCounterServiceMeshAnalysisMessageBase < 3) {
    unittest.expect(
      o.documentationUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.level!,
      unittest.equals('foo'),
    );
    checkServiceMeshType(o.type!);
  }
  buildCounterServiceMeshAnalysisMessageBase--;
}

core.int buildCounterServiceMeshCondition = 0;
api.ServiceMeshCondition buildServiceMeshCondition() {
  final o = api.ServiceMeshCondition();
  buildCounterServiceMeshCondition++;
  if (buildCounterServiceMeshCondition < 3) {
    o.code = 'foo';
    o.details = 'foo';
    o.documentationLink = 'foo';
    o.severity = 'foo';
  }
  buildCounterServiceMeshCondition--;
  return o;
}

void checkServiceMeshCondition(api.ServiceMeshCondition o) {
  buildCounterServiceMeshCondition++;
  if (buildCounterServiceMeshCondition < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.details!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentationLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceMeshCondition--;
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
    o.implementation = 'foo';
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
      o.implementation!,
      unittest.equals('foo'),
    );
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

core.int buildCounterServiceMeshSpec = 0;
api.ServiceMeshSpec buildServiceMeshSpec() {
  final o = api.ServiceMeshSpec();
  buildCounterServiceMeshSpec++;
  if (buildCounterServiceMeshSpec < 3) {
    o.configApi = 'foo';
    o.controlPlane = 'foo';
    o.defaultChannel = 'foo';
    o.management = 'foo';
  }
  buildCounterServiceMeshSpec--;
  return o;
}

void checkServiceMeshSpec(api.ServiceMeshSpec o) {
  buildCounterServiceMeshSpec++;
  if (buildCounterServiceMeshSpec < 3) {
    unittest.expect(
      o.configApi!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.controlPlane!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultChannel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.management!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceMeshSpec--;
}

core.List<api.ServiceMeshAnalysisMessage> buildUnnamed35() => [
      buildServiceMeshAnalysisMessage(),
      buildServiceMeshAnalysisMessage(),
    ];

void checkUnnamed35(core.List<api.ServiceMeshAnalysisMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceMeshAnalysisMessage(o[0]);
  checkServiceMeshAnalysisMessage(o[1]);
}

core.List<api.ServiceMeshCondition> buildUnnamed36() => [
      buildServiceMeshCondition(),
      buildServiceMeshCondition(),
    ];

void checkUnnamed36(core.List<api.ServiceMeshCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceMeshCondition(o[0]);
  checkServiceMeshCondition(o[1]);
}

core.int buildCounterServiceMeshState = 0;
api.ServiceMeshState buildServiceMeshState() {
  final o = api.ServiceMeshState();
  buildCounterServiceMeshState++;
  if (buildCounterServiceMeshState < 3) {
    o.analysisMessages = buildUnnamed35();
    o.conditions = buildUnnamed36();
    o.configApiVersion = 'foo';
    o.controlPlaneManagement = buildServiceMeshControlPlaneManagement();
    o.dataPlaneManagement = buildServiceMeshDataPlaneManagement();
  }
  buildCounterServiceMeshState--;
  return o;
}

void checkServiceMeshState(api.ServiceMeshState o) {
  buildCounterServiceMeshState++;
  if (buildCounterServiceMeshState < 3) {
    checkUnnamed35(o.analysisMessages!);
    checkUnnamed36(o.conditions!);
    unittest.expect(
      o.configApiVersion!,
      unittest.equals('foo'),
    );
    checkServiceMeshControlPlaneManagement(o.controlPlaneManagement!);
    checkServiceMeshDataPlaneManagement(o.dataPlaneManagement!);
  }
  buildCounterServiceMeshState--;
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

core.int buildCounterServiceMeshType = 0;
api.ServiceMeshType buildServiceMeshType() {
  final o = api.ServiceMeshType();
  buildCounterServiceMeshType++;
  if (buildCounterServiceMeshType < 3) {
    o.code = 'foo';
    o.displayName = 'foo';
  }
  buildCounterServiceMeshType--;
  return o;
}

void checkServiceMeshType(api.ServiceMeshType o) {
  buildCounterServiceMeshType++;
  if (buildCounterServiceMeshType < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceMeshType--;
}

core.int buildCounterState = 0;
api.State buildState() {
  final o = api.State();
  buildCounterState++;
  if (buildCounterState < 3) {
    o.code = 'foo';
    o.description = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterState--;
  return o;
}

void checkState(api.State o) {
  buildCounterState++;
  if (buildCounterState < 3) {
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
  buildCounterState--;
}

core.int buildCounterWorkloadCertificateSpec = 0;
api.WorkloadCertificateSpec buildWorkloadCertificateSpec() {
  final o = api.WorkloadCertificateSpec();
  buildCounterWorkloadCertificateSpec++;
  if (buildCounterWorkloadCertificateSpec < 3) {
    o.certificateManagement = 'foo';
  }
  buildCounterWorkloadCertificateSpec--;
  return o;
}

void checkWorkloadCertificateSpec(api.WorkloadCertificateSpec o) {
  buildCounterWorkloadCertificateSpec++;
  if (buildCounterWorkloadCertificateSpec < 3) {
    unittest.expect(
      o.certificateManagement!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkloadCertificateSpec--;
}

void main() {
  unittest.group('obj-schema-AppDevExperienceState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppDevExperienceState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppDevExperienceState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppDevExperienceState(od);
    });
  });

  unittest.group('obj-schema-AppDevExperienceStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppDevExperienceStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppDevExperienceStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppDevExperienceStatus(od);
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

  unittest.group('obj-schema-CloudBuildSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudBuildSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudBuildSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudBuildSpec(od);
    });
  });

  unittest.group('obj-schema-ClusterUpgradeGKEUpgrade', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUpgradeGKEUpgrade();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUpgradeGKEUpgrade.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUpgradeGKEUpgrade(od);
    });
  });

  unittest.group('obj-schema-ClusterUpgradeIgnoredMembership', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUpgradeIgnoredMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUpgradeIgnoredMembership.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUpgradeIgnoredMembership(od);
    });
  });

  unittest.group('obj-schema-ClusterUpgradeMembershipGKEUpgradeState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUpgradeMembershipGKEUpgradeState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUpgradeMembershipGKEUpgradeState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUpgradeMembershipGKEUpgradeState(od);
    });
  });

  unittest.group('obj-schema-ClusterUpgradeState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUpgradeState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUpgradeState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUpgradeState(od);
    });
  });

  unittest.group('obj-schema-ClusterUpgradeUpgradeStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUpgradeUpgradeStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUpgradeUpgradeStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUpgradeUpgradeStatus(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementBinauthzConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementBinauthzConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementBinauthzConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementBinauthzConfig(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementBinauthzState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementBinauthzState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementBinauthzState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementBinauthzState(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementBinauthzVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementBinauthzVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementBinauthzVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementBinauthzVersion(od);
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

  unittest.group('obj-schema-ConfigManagementConfigSyncError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementConfigSyncError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementConfigSyncError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementConfigSyncError(od);
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

  unittest.group('obj-schema-ConfigManagementContainerOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementContainerOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementContainerOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementContainerOverride(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementDeploymentOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementDeploymentOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementDeploymentOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementDeploymentOverride(od);
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

  unittest.group('obj-schema-ConfigManagementSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementSpec(od);
    });
  });

  unittest.group('obj-schema-ConfigManagementState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigManagementState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigManagementState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigManagementState(od);
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

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-FeatureSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeatureSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FeatureSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFeatureSpec(od);
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

  unittest.group('obj-schema-IdentityServiceDiagnosticInterface', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceDiagnosticInterface();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceDiagnosticInterface.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceDiagnosticInterface(od);
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

  unittest.group('obj-schema-IdentityServiceGroupConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceGroupConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceGroupConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceGroupConfig(od);
    });
  });

  unittest.group('obj-schema-IdentityServiceIdentityServiceOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceIdentityServiceOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceIdentityServiceOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceIdentityServiceOptions(od);
    });
  });

  unittest.group('obj-schema-IdentityServiceLdapConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceLdapConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceLdapConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceLdapConfig(od);
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

  unittest.group('obj-schema-IdentityServiceSamlConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceSamlConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceSamlConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceSamlConfig(od);
    });
  });

  unittest.group('obj-schema-IdentityServiceServerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceServerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceServerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceServerConfig(od);
    });
  });

  unittest.group('obj-schema-IdentityServiceServiceAccountConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceServiceAccountConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceServiceAccountConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceServiceAccountConfig(od);
    });
  });

  unittest.group('obj-schema-IdentityServiceSimpleBindCredentials', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceSimpleBindCredentials();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceSimpleBindCredentials.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceSimpleBindCredentials(od);
    });
  });

  unittest.group('obj-schema-IdentityServiceSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceSpec(od);
    });
  });

  unittest.group('obj-schema-IdentityServiceState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceState(od);
    });
  });

  unittest.group('obj-schema-IdentityServiceUserConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceUserConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceUserConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceUserConfig(od);
    });
  });

  unittest.group('obj-schema-LifecycleState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLifecycleState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LifecycleState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLifecycleState(od);
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

  unittest.group('obj-schema-ListMembershipFeaturesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMembershipFeaturesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMembershipFeaturesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMembershipFeaturesResponse(od);
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

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-MembershipFeature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipFeature.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipFeature(od);
    });
  });

  unittest.group('obj-schema-MeteringState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMeteringState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MeteringState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMeteringState(od);
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

  unittest.group('obj-schema-Origin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrigin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Origin.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOrigin(od);
    });
  });

  unittest.group('obj-schema-PolicyControllerBundleInstallSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyControllerBundleInstallSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyControllerBundleInstallSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyControllerBundleInstallSpec(od);
    });
  });

  unittest.group('obj-schema-PolicyControllerHubConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyControllerHubConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyControllerHubConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyControllerHubConfig(od);
    });
  });

  unittest.group('obj-schema-PolicyControllerMonitoringConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyControllerMonitoringConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyControllerMonitoringConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyControllerMonitoringConfig(od);
    });
  });

  unittest.group('obj-schema-PolicyControllerOnClusterState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyControllerOnClusterState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyControllerOnClusterState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyControllerOnClusterState(od);
    });
  });

  unittest.group('obj-schema-PolicyControllerPolicyContentSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyControllerPolicyContentSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyControllerPolicyContentSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyControllerPolicyContentSpec(od);
    });
  });

  unittest.group('obj-schema-PolicyControllerPolicyContentState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyControllerPolicyContentState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyControllerPolicyContentState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyControllerPolicyContentState(od);
    });
  });

  unittest.group('obj-schema-PolicyControllerPolicyControllerDeploymentConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyControllerPolicyControllerDeploymentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyControllerPolicyControllerDeploymentConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyControllerPolicyControllerDeploymentConfig(od);
    });
  });

  unittest.group('obj-schema-PolicyControllerResourceList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyControllerResourceList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyControllerResourceList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyControllerResourceList(od);
    });
  });

  unittest.group('obj-schema-PolicyControllerResourceRequirements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyControllerResourceRequirements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyControllerResourceRequirements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyControllerResourceRequirements(od);
    });
  });

  unittest.group('obj-schema-PolicyControllerSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyControllerSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyControllerSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyControllerSpec(od);
    });
  });

  unittest.group('obj-schema-PolicyControllerState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyControllerState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyControllerState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyControllerState(od);
    });
  });

  unittest.group('obj-schema-PolicyControllerTemplateLibraryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyControllerTemplateLibraryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyControllerTemplateLibraryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyControllerTemplateLibraryConfig(od);
    });
  });

  unittest.group('obj-schema-PolicyControllerToleration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyControllerToleration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyControllerToleration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyControllerToleration(od);
    });
  });

  unittest.group('obj-schema-ServiceMeshAnalysisMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceMeshAnalysisMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceMeshAnalysisMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceMeshAnalysisMessage(od);
    });
  });

  unittest.group('obj-schema-ServiceMeshAnalysisMessageBase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceMeshAnalysisMessageBase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceMeshAnalysisMessageBase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceMeshAnalysisMessageBase(od);
    });
  });

  unittest.group('obj-schema-ServiceMeshCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceMeshCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceMeshCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceMeshCondition(od);
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

  unittest.group('obj-schema-ServiceMeshSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceMeshSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceMeshSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceMeshSpec(od);
    });
  });

  unittest.group('obj-schema-ServiceMeshState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceMeshState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceMeshState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceMeshState(od);
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

  unittest.group('obj-schema-ServiceMeshType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceMeshType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceMeshType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceMeshType(od);
    });
  });

  unittest.group('obj-schema-State', () {
    unittest.test('to-json--from-json', () async {
      final o = buildState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.State.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkState(od);
    });
  });

  unittest.group('obj-schema-WorkloadCertificateSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadCertificateSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadCertificateSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkloadCertificateSpec(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations;
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
          unittest.equals('v2/'),
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
      final res = api.GKEHubApi(mock).projects.locations;
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
          unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsLocationsMembershipsFeaturesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships.features;
      final arg_request = buildMembershipFeature();
      final arg_parent = 'foo';
      final arg_featureId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MembershipFeature.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMembershipFeature(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
      final res = api.GKEHubApi(mock).projects.locations.memberships.features;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships.features;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildMembershipFeature());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMembershipFeature(response as api.MembershipFeature);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships.features;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListMembershipFeaturesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListMembershipFeaturesResponse(
          response as api.ListMembershipFeaturesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.memberships.features;
      final arg_request = buildMembershipFeature();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MembershipFeature.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMembershipFeature(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
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
          allowMissing: arg_allowMissing,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
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

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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
      final res = api.GKEHubApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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
