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

core.List<api.PolicyBinding> buildUnnamed2() => [
      buildPolicyBinding(),
      buildPolicyBinding(),
    ];

void checkUnnamed2(core.List<api.PolicyBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyBinding(o[0]);
  checkPolicyBinding(o[1]);
}

core.int buildCounterBinaryAuthorizationConfig = 0;
api.BinaryAuthorizationConfig buildBinaryAuthorizationConfig() {
  final o = api.BinaryAuthorizationConfig();
  buildCounterBinaryAuthorizationConfig++;
  if (buildCounterBinaryAuthorizationConfig < 3) {
    o.evaluationMode = 'foo';
    o.policyBindings = buildUnnamed2();
  }
  buildCounterBinaryAuthorizationConfig--;
  return o;
}

void checkBinaryAuthorizationConfig(api.BinaryAuthorizationConfig o) {
  buildCounterBinaryAuthorizationConfig++;
  if (buildCounterBinaryAuthorizationConfig < 3) {
    unittest.expect(
      o.evaluationMode!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.policyBindings!);
  }
  buildCounterBinaryAuthorizationConfig--;
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

core.List<api.ClusterUpgradeGKEUpgradeOverride> buildUnnamed4() => [
      buildClusterUpgradeGKEUpgradeOverride(),
      buildClusterUpgradeGKEUpgradeOverride(),
    ];

void checkUnnamed4(core.List<api.ClusterUpgradeGKEUpgradeOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterUpgradeGKEUpgradeOverride(o[0]);
  checkClusterUpgradeGKEUpgradeOverride(o[1]);
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

core.int buildCounterClusterUpgradeFleetSpec = 0;
api.ClusterUpgradeFleetSpec buildClusterUpgradeFleetSpec() {
  final o = api.ClusterUpgradeFleetSpec();
  buildCounterClusterUpgradeFleetSpec++;
  if (buildCounterClusterUpgradeFleetSpec < 3) {
    o.gkeUpgradeOverrides = buildUnnamed4();
    o.postConditions = buildClusterUpgradePostConditions();
    o.upstreamFleets = buildUnnamed5();
  }
  buildCounterClusterUpgradeFleetSpec--;
  return o;
}

void checkClusterUpgradeFleetSpec(api.ClusterUpgradeFleetSpec o) {
  buildCounterClusterUpgradeFleetSpec++;
  if (buildCounterClusterUpgradeFleetSpec < 3) {
    checkUnnamed4(o.gkeUpgradeOverrides!);
    checkClusterUpgradePostConditions(o.postConditions!);
    checkUnnamed5(o.upstreamFleets!);
  }
  buildCounterClusterUpgradeFleetSpec--;
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

core.Map<core.String, api.ClusterUpgradeIgnoredMembership> buildUnnamed7() => {
      'x': buildClusterUpgradeIgnoredMembership(),
      'y': buildClusterUpgradeIgnoredMembership(),
    };

void checkUnnamed7(
    core.Map<core.String, api.ClusterUpgradeIgnoredMembership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterUpgradeIgnoredMembership(o['x']!);
  checkClusterUpgradeIgnoredMembership(o['y']!);
}

core.int buildCounterClusterUpgradeFleetState = 0;
api.ClusterUpgradeFleetState buildClusterUpgradeFleetState() {
  final o = api.ClusterUpgradeFleetState();
  buildCounterClusterUpgradeFleetState++;
  if (buildCounterClusterUpgradeFleetState < 3) {
    o.downstreamFleets = buildUnnamed6();
    o.gkeState = buildClusterUpgradeGKEUpgradeFeatureState();
    o.ignored = buildUnnamed7();
  }
  buildCounterClusterUpgradeFleetState--;
  return o;
}

void checkClusterUpgradeFleetState(api.ClusterUpgradeFleetState o) {
  buildCounterClusterUpgradeFleetState++;
  if (buildCounterClusterUpgradeFleetState < 3) {
    checkUnnamed6(o.downstreamFleets!);
    checkClusterUpgradeGKEUpgradeFeatureState(o.gkeState!);
    checkUnnamed7(o.ignored!);
  }
  buildCounterClusterUpgradeFleetState--;
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

core.int buildCounterClusterUpgradeGKEUpgradeFeatureCondition = 0;
api.ClusterUpgradeGKEUpgradeFeatureCondition
    buildClusterUpgradeGKEUpgradeFeatureCondition() {
  final o = api.ClusterUpgradeGKEUpgradeFeatureCondition();
  buildCounterClusterUpgradeGKEUpgradeFeatureCondition++;
  if (buildCounterClusterUpgradeGKEUpgradeFeatureCondition < 3) {
    o.reason = 'foo';
    o.status = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterClusterUpgradeGKEUpgradeFeatureCondition--;
  return o;
}

void checkClusterUpgradeGKEUpgradeFeatureCondition(
    api.ClusterUpgradeGKEUpgradeFeatureCondition o) {
  buildCounterClusterUpgradeGKEUpgradeFeatureCondition++;
  if (buildCounterClusterUpgradeGKEUpgradeFeatureCondition < 3) {
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
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
  buildCounterClusterUpgradeGKEUpgradeFeatureCondition--;
}

core.List<api.ClusterUpgradeGKEUpgradeFeatureCondition> buildUnnamed8() => [
      buildClusterUpgradeGKEUpgradeFeatureCondition(),
      buildClusterUpgradeGKEUpgradeFeatureCondition(),
    ];

void checkUnnamed8(core.List<api.ClusterUpgradeGKEUpgradeFeatureCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterUpgradeGKEUpgradeFeatureCondition(o[0]);
  checkClusterUpgradeGKEUpgradeFeatureCondition(o[1]);
}

core.List<api.ClusterUpgradeGKEUpgradeState> buildUnnamed9() => [
      buildClusterUpgradeGKEUpgradeState(),
      buildClusterUpgradeGKEUpgradeState(),
    ];

void checkUnnamed9(core.List<api.ClusterUpgradeGKEUpgradeState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterUpgradeGKEUpgradeState(o[0]);
  checkClusterUpgradeGKEUpgradeState(o[1]);
}

core.int buildCounterClusterUpgradeGKEUpgradeFeatureState = 0;
api.ClusterUpgradeGKEUpgradeFeatureState
    buildClusterUpgradeGKEUpgradeFeatureState() {
  final o = api.ClusterUpgradeGKEUpgradeFeatureState();
  buildCounterClusterUpgradeGKEUpgradeFeatureState++;
  if (buildCounterClusterUpgradeGKEUpgradeFeatureState < 3) {
    o.conditions = buildUnnamed8();
    o.upgradeState = buildUnnamed9();
  }
  buildCounterClusterUpgradeGKEUpgradeFeatureState--;
  return o;
}

void checkClusterUpgradeGKEUpgradeFeatureState(
    api.ClusterUpgradeGKEUpgradeFeatureState o) {
  buildCounterClusterUpgradeGKEUpgradeFeatureState++;
  if (buildCounterClusterUpgradeGKEUpgradeFeatureState < 3) {
    checkUnnamed8(o.conditions!);
    checkUnnamed9(o.upgradeState!);
  }
  buildCounterClusterUpgradeGKEUpgradeFeatureState--;
}

core.int buildCounterClusterUpgradeGKEUpgradeOverride = 0;
api.ClusterUpgradeGKEUpgradeOverride buildClusterUpgradeGKEUpgradeOverride() {
  final o = api.ClusterUpgradeGKEUpgradeOverride();
  buildCounterClusterUpgradeGKEUpgradeOverride++;
  if (buildCounterClusterUpgradeGKEUpgradeOverride < 3) {
    o.postConditions = buildClusterUpgradePostConditions();
    o.upgrade = buildClusterUpgradeGKEUpgrade();
  }
  buildCounterClusterUpgradeGKEUpgradeOverride--;
  return o;
}

void checkClusterUpgradeGKEUpgradeOverride(
    api.ClusterUpgradeGKEUpgradeOverride o) {
  buildCounterClusterUpgradeGKEUpgradeOverride++;
  if (buildCounterClusterUpgradeGKEUpgradeOverride < 3) {
    checkClusterUpgradePostConditions(o.postConditions!);
    checkClusterUpgradeGKEUpgrade(o.upgrade!);
  }
  buildCounterClusterUpgradeGKEUpgradeOverride--;
}

core.Map<core.String, core.String> buildUnnamed10() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed10(core.Map<core.String, core.String> o) {
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

core.int buildCounterClusterUpgradeGKEUpgradeState = 0;
api.ClusterUpgradeGKEUpgradeState buildClusterUpgradeGKEUpgradeState() {
  final o = api.ClusterUpgradeGKEUpgradeState();
  buildCounterClusterUpgradeGKEUpgradeState++;
  if (buildCounterClusterUpgradeGKEUpgradeState < 3) {
    o.stats = buildUnnamed10();
    o.status = buildClusterUpgradeUpgradeStatus();
    o.upgrade = buildClusterUpgradeGKEUpgrade();
  }
  buildCounterClusterUpgradeGKEUpgradeState--;
  return o;
}

void checkClusterUpgradeGKEUpgradeState(api.ClusterUpgradeGKEUpgradeState o) {
  buildCounterClusterUpgradeGKEUpgradeState++;
  if (buildCounterClusterUpgradeGKEUpgradeState < 3) {
    checkUnnamed10(o.stats!);
    checkClusterUpgradeUpgradeStatus(o.status!);
    checkClusterUpgradeGKEUpgrade(o.upgrade!);
  }
  buildCounterClusterUpgradeGKEUpgradeState--;
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

core.List<api.ClusterUpgradeMembershipGKEUpgradeState> buildUnnamed11() => [
      buildClusterUpgradeMembershipGKEUpgradeState(),
      buildClusterUpgradeMembershipGKEUpgradeState(),
    ];

void checkUnnamed11(core.List<api.ClusterUpgradeMembershipGKEUpgradeState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterUpgradeMembershipGKEUpgradeState(o[0]);
  checkClusterUpgradeMembershipGKEUpgradeState(o[1]);
}

core.int buildCounterClusterUpgradeMembershipState = 0;
api.ClusterUpgradeMembershipState buildClusterUpgradeMembershipState() {
  final o = api.ClusterUpgradeMembershipState();
  buildCounterClusterUpgradeMembershipState++;
  if (buildCounterClusterUpgradeMembershipState < 3) {
    o.ignored = buildClusterUpgradeIgnoredMembership();
    o.upgrades = buildUnnamed11();
  }
  buildCounterClusterUpgradeMembershipState--;
  return o;
}

void checkClusterUpgradeMembershipState(api.ClusterUpgradeMembershipState o) {
  buildCounterClusterUpgradeMembershipState++;
  if (buildCounterClusterUpgradeMembershipState < 3) {
    checkClusterUpgradeIgnoredMembership(o.ignored!);
    checkUnnamed11(o.upgrades!);
  }
  buildCounterClusterUpgradeMembershipState--;
}

core.int buildCounterClusterUpgradePostConditions = 0;
api.ClusterUpgradePostConditions buildClusterUpgradePostConditions() {
  final o = api.ClusterUpgradePostConditions();
  buildCounterClusterUpgradePostConditions++;
  if (buildCounterClusterUpgradePostConditions < 3) {
    o.soaking = 'foo';
  }
  buildCounterClusterUpgradePostConditions--;
  return o;
}

void checkClusterUpgradePostConditions(api.ClusterUpgradePostConditions o) {
  buildCounterClusterUpgradePostConditions++;
  if (buildCounterClusterUpgradePostConditions < 3) {
    unittest.expect(
      o.soaking!,
      unittest.equals('foo'),
    );
  }
  buildCounterClusterUpgradePostConditions--;
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

core.int buildCounterCommonFeatureSpec = 0;
api.CommonFeatureSpec buildCommonFeatureSpec() {
  final o = api.CommonFeatureSpec();
  buildCounterCommonFeatureSpec++;
  if (buildCounterCommonFeatureSpec < 3) {
    o.appdevexperience = buildAppDevExperienceFeatureSpec();
    o.clusterupgrade = buildClusterUpgradeFleetSpec();
    o.dataplanev2 = buildDataplaneV2FeatureSpec();
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
    checkClusterUpgradeFleetSpec(o.clusterupgrade!);
    checkDataplaneV2FeatureSpec(o.dataplanev2!);
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
    o.clusterupgrade = buildClusterUpgradeFleetState();
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
    checkClusterUpgradeFleetState(o.clusterupgrade!);
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
  if (buildCounterCommonFleetDefaultMemberConfigSpec < 3) {
    o.configmanagement = buildConfigManagementMembershipSpec();
    o.identityservice = buildIdentityServiceMembershipSpec();
    o.mesh = buildServiceMeshMembershipSpec();
    o.policycontroller = buildPolicyControllerMembershipSpec();
  }
  buildCounterCommonFleetDefaultMemberConfigSpec--;
  return o;
}

void checkCommonFleetDefaultMemberConfigSpec(
    api.CommonFleetDefaultMemberConfigSpec o) {
  buildCounterCommonFleetDefaultMemberConfigSpec++;
  if (buildCounterCommonFleetDefaultMemberConfigSpec < 3) {
    checkConfigManagementMembershipSpec(o.configmanagement!);
    checkIdentityServiceMembershipSpec(o.identityservice!);
    checkServiceMeshMembershipSpec(o.mesh!);
    checkPolicyControllerMembershipSpec(o.policycontroller!);
  }
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
    o.metricsGcpServiceAccountEmail = 'foo';
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

core.List<api.ConfigManagementConfigSyncError> buildUnnamed12() => [
      buildConfigManagementConfigSyncError(),
      buildConfigManagementConfigSyncError(),
    ];

void checkUnnamed12(core.List<api.ConfigManagementConfigSyncError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigManagementConfigSyncError(o[0]);
  checkConfigManagementConfigSyncError(o[1]);
}

core.int buildCounterConfigManagementConfigSyncState = 0;
api.ConfigManagementConfigSyncState buildConfigManagementConfigSyncState() {
  final o = api.ConfigManagementConfigSyncState();
  buildCounterConfigManagementConfigSyncState++;
  if (buildCounterConfigManagementConfigSyncState < 3) {
    o.deploymentState = buildConfigManagementConfigSyncDeploymentState();
    o.errors = buildUnnamed12();
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
    checkConfigManagementConfigSyncDeploymentState(o.deploymentState!);
    checkUnnamed12(o.errors!);
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

core.int buildCounterConfigManagementMembershipSpec = 0;
api.ConfigManagementMembershipSpec buildConfigManagementMembershipSpec() {
  final o = api.ConfigManagementMembershipSpec();
  buildCounterConfigManagementMembershipSpec++;
  if (buildCounterConfigManagementMembershipSpec < 3) {
    o.cluster = 'foo';
    o.configSync = buildConfigManagementConfigSync();
    o.hierarchyController = buildConfigManagementHierarchyControllerConfig();
    o.management = 'foo';
    o.policyController = buildConfigManagementPolicyController();
    o.version = 'foo';
  }
  buildCounterConfigManagementMembershipSpec--;
  return o;
}

void checkConfigManagementMembershipSpec(api.ConfigManagementMembershipSpec o) {
  buildCounterConfigManagementMembershipSpec++;
  if (buildCounterConfigManagementMembershipSpec < 3) {
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

core.List<api.ConfigManagementInstallError> buildUnnamed13() => [
      buildConfigManagementInstallError(),
      buildConfigManagementInstallError(),
    ];

void checkUnnamed13(core.List<api.ConfigManagementInstallError> o) {
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
    o.errors = buildUnnamed13();
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
    checkUnnamed13(o.errors!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigManagementOperatorState--;
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

core.int buildCounterConfigManagementPolicyController = 0;
api.ConfigManagementPolicyController buildConfigManagementPolicyController() {
  final o = api.ConfigManagementPolicyController();
  buildCounterConfigManagementPolicyController++;
  if (buildCounterConfigManagementPolicyController < 3) {
    o.auditIntervalSeconds = 'foo';
    o.enabled = true;
    o.exemptableNamespaces = buildUnnamed14();
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
    checkUnnamed14(o.exemptableNamespaces!);
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

core.int buildCounterConfigManagementPolicyControllerMonitoring = 0;
api.ConfigManagementPolicyControllerMonitoring
    buildConfigManagementPolicyControllerMonitoring() {
  final o = api.ConfigManagementPolicyControllerMonitoring();
  buildCounterConfigManagementPolicyControllerMonitoring++;
  if (buildCounterConfigManagementPolicyControllerMonitoring < 3) {
    o.backends = buildUnnamed15();
  }
  buildCounterConfigManagementPolicyControllerMonitoring--;
  return o;
}

void checkConfigManagementPolicyControllerMonitoring(
    api.ConfigManagementPolicyControllerMonitoring o) {
  buildCounterConfigManagementPolicyControllerMonitoring++;
  if (buildCounterConfigManagementPolicyControllerMonitoring < 3) {
    checkUnnamed15(o.backends!);
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

core.List<api.ConfigManagementErrorResource> buildUnnamed16() => [
      buildConfigManagementErrorResource(),
      buildConfigManagementErrorResource(),
    ];

void checkUnnamed16(core.List<api.ConfigManagementErrorResource> o) {
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
    o.errorResources = buildUnnamed16();
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
    checkUnnamed16(o.errorResources!);
  }
  buildCounterConfigManagementSyncError--;
}

core.List<api.ConfigManagementSyncError> buildUnnamed17() => [
      buildConfigManagementSyncError(),
      buildConfigManagementSyncError(),
    ];

void checkUnnamed17(core.List<api.ConfigManagementSyncError> o) {
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
    o.errors = buildUnnamed17();
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
    checkUnnamed17(o.errors!);
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

core.int buildCounterDataplaneV2FeatureSpec = 0;
api.DataplaneV2FeatureSpec buildDataplaneV2FeatureSpec() {
  final o = api.DataplaneV2FeatureSpec();
  buildCounterDataplaneV2FeatureSpec++;
  if (buildCounterDataplaneV2FeatureSpec < 3) {
    o.enableEncryption = true;
  }
  buildCounterDataplaneV2FeatureSpec--;
  return o;
}

void checkDataplaneV2FeatureSpec(api.DataplaneV2FeatureSpec o) {
  buildCounterDataplaneV2FeatureSpec++;
  if (buildCounterDataplaneV2FeatureSpec < 3) {
    unittest.expect(o.enableEncryption!, unittest.isTrue);
  }
  buildCounterDataplaneV2FeatureSpec--;
}

core.int buildCounterDefaultClusterConfig = 0;
api.DefaultClusterConfig buildDefaultClusterConfig() {
  final o = api.DefaultClusterConfig();
  buildCounterDefaultClusterConfig++;
  if (buildCounterDefaultClusterConfig < 3) {
    o.binaryAuthorizationConfig = buildBinaryAuthorizationConfig();
    o.securityPostureConfig = buildSecurityPostureConfig();
  }
  buildCounterDefaultClusterConfig--;
  return o;
}

void checkDefaultClusterConfig(api.DefaultClusterConfig o) {
  buildCounterDefaultClusterConfig++;
  if (buildCounterDefaultClusterConfig < 3) {
    checkBinaryAuthorizationConfig(o.binaryAuthorizationConfig!);
    checkSecurityPostureConfig(o.securityPostureConfig!);
  }
  buildCounterDefaultClusterConfig--;
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

core.Map<core.String, api.MembershipFeatureSpec> buildUnnamed19() => {
      'x': buildMembershipFeatureSpec(),
      'y': buildMembershipFeatureSpec(),
    };

void checkUnnamed19(core.Map<core.String, api.MembershipFeatureSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipFeatureSpec(o['x']!);
  checkMembershipFeatureSpec(o['y']!);
}

core.Map<core.String, api.MembershipFeatureState> buildUnnamed20() => {
      'x': buildMembershipFeatureState(),
      'y': buildMembershipFeatureState(),
    };

void checkUnnamed20(core.Map<core.String, api.MembershipFeatureState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipFeatureState(o['x']!);
  checkMembershipFeatureState(o['y']!);
}

core.Map<core.String, api.ScopeFeatureSpec> buildUnnamed21() => {
      'x': buildScopeFeatureSpec(),
      'y': buildScopeFeatureSpec(),
    };

void checkUnnamed21(core.Map<core.String, api.ScopeFeatureSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScopeFeatureSpec(o['x']!);
  checkScopeFeatureSpec(o['y']!);
}

core.Map<core.String, api.ScopeFeatureState> buildUnnamed22() => {
      'x': buildScopeFeatureState(),
      'y': buildScopeFeatureState(),
    };

void checkUnnamed22(core.Map<core.String, api.ScopeFeatureState> o) {
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
    o.labels = buildUnnamed18();
    o.membershipSpecs = buildUnnamed19();
    o.membershipStates = buildUnnamed20();
    o.name = 'foo';
    o.resourceState = buildFeatureResourceState();
    o.scopeSpecs = buildUnnamed21();
    o.scopeStates = buildUnnamed22();
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
    checkUnnamed18(o.labels!);
    checkUnnamed19(o.membershipSpecs!);
    checkUnnamed20(o.membershipStates!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkFeatureResourceState(o.resourceState!);
    checkUnnamed21(o.scopeSpecs!);
    checkUnnamed22(o.scopeStates!);
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

core.Map<core.String, core.String> buildUnnamed23() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed23(core.Map<core.String, core.String> o) {
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

core.int buildCounterFleet = 0;
api.Fleet buildFleet() {
  final o = api.Fleet();
  buildCounterFleet++;
  if (buildCounterFleet < 3) {
    o.createTime = 'foo';
    o.defaultClusterConfig = buildDefaultClusterConfig();
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed23();
    o.name = 'foo';
    o.state = buildFleetLifecycleState();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterFleet--;
  return o;
}

void checkFleet(api.Fleet o) {
  buildCounterFleet++;
  if (buildCounterFleet < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkDefaultClusterConfig(o.defaultClusterConfig!);
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkFleetLifecycleState(o.state!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterFleet--;
}

core.int buildCounterFleetLifecycleState = 0;
api.FleetLifecycleState buildFleetLifecycleState() {
  final o = api.FleetLifecycleState();
  buildCounterFleetLifecycleState++;
  if (buildCounterFleetLifecycleState < 3) {
    o.code = 'foo';
  }
  buildCounterFleetLifecycleState--;
  return o;
}

void checkFleetLifecycleState(api.FleetLifecycleState o) {
  buildCounterFleetLifecycleState++;
  if (buildCounterFleetLifecycleState < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
  }
  buildCounterFleetLifecycleState--;
}

core.int buildCounterFleetObservabilityFeatureError = 0;
api.FleetObservabilityFeatureError buildFleetObservabilityFeatureError() {
  final o = api.FleetObservabilityFeatureError();
  buildCounterFleetObservabilityFeatureError++;
  if (buildCounterFleetObservabilityFeatureError < 3) {
    o.code = 'foo';
    o.description = 'foo';
  }
  buildCounterFleetObservabilityFeatureError--;
  return o;
}

void checkFleetObservabilityFeatureError(api.FleetObservabilityFeatureError o) {
  buildCounterFleetObservabilityFeatureError++;
  if (buildCounterFleetObservabilityFeatureError < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
  }
  buildCounterFleetObservabilityFeatureError--;
}

core.int buildCounterFleetObservabilityFeatureSpec = 0;
api.FleetObservabilityFeatureSpec buildFleetObservabilityFeatureSpec() {
  final o = api.FleetObservabilityFeatureSpec();
  buildCounterFleetObservabilityFeatureSpec++;
  if (buildCounterFleetObservabilityFeatureSpec < 3) {
    o.loggingConfig = buildFleetObservabilityLoggingConfig();
  }
  buildCounterFleetObservabilityFeatureSpec--;
  return o;
}

void checkFleetObservabilityFeatureSpec(api.FleetObservabilityFeatureSpec o) {
  buildCounterFleetObservabilityFeatureSpec++;
  if (buildCounterFleetObservabilityFeatureSpec < 3) {
    checkFleetObservabilityLoggingConfig(o.loggingConfig!);
  }
  buildCounterFleetObservabilityFeatureSpec--;
}

core.int buildCounterFleetObservabilityFeatureState = 0;
api.FleetObservabilityFeatureState buildFleetObservabilityFeatureState() {
  final o = api.FleetObservabilityFeatureState();
  buildCounterFleetObservabilityFeatureState++;
  if (buildCounterFleetObservabilityFeatureState < 3) {
    o.logging = buildFleetObservabilityFleetObservabilityLoggingState();
    o.monitoring = buildFleetObservabilityFleetObservabilityMonitoringState();
  }
  buildCounterFleetObservabilityFeatureState--;
  return o;
}

void checkFleetObservabilityFeatureState(api.FleetObservabilityFeatureState o) {
  buildCounterFleetObservabilityFeatureState++;
  if (buildCounterFleetObservabilityFeatureState < 3) {
    checkFleetObservabilityFleetObservabilityLoggingState(o.logging!);
    checkFleetObservabilityFleetObservabilityMonitoringState(o.monitoring!);
  }
  buildCounterFleetObservabilityFeatureState--;
}

core.List<api.FleetObservabilityFeatureError> buildUnnamed24() => [
      buildFleetObservabilityFeatureError(),
      buildFleetObservabilityFeatureError(),
    ];

void checkUnnamed24(core.List<api.FleetObservabilityFeatureError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFleetObservabilityFeatureError(o[0]);
  checkFleetObservabilityFeatureError(o[1]);
}

core.int buildCounterFleetObservabilityFleetObservabilityBaseFeatureState = 0;
api.FleetObservabilityFleetObservabilityBaseFeatureState
    buildFleetObservabilityFleetObservabilityBaseFeatureState() {
  final o = api.FleetObservabilityFleetObservabilityBaseFeatureState();
  buildCounterFleetObservabilityFleetObservabilityBaseFeatureState++;
  if (buildCounterFleetObservabilityFleetObservabilityBaseFeatureState < 3) {
    o.code = 'foo';
    o.errors = buildUnnamed24();
  }
  buildCounterFleetObservabilityFleetObservabilityBaseFeatureState--;
  return o;
}

void checkFleetObservabilityFleetObservabilityBaseFeatureState(
    api.FleetObservabilityFleetObservabilityBaseFeatureState o) {
  buildCounterFleetObservabilityFleetObservabilityBaseFeatureState++;
  if (buildCounterFleetObservabilityFleetObservabilityBaseFeatureState < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.errors!);
  }
  buildCounterFleetObservabilityFleetObservabilityBaseFeatureState--;
}

core.int buildCounterFleetObservabilityFleetObservabilityLoggingState = 0;
api.FleetObservabilityFleetObservabilityLoggingState
    buildFleetObservabilityFleetObservabilityLoggingState() {
  final o = api.FleetObservabilityFleetObservabilityLoggingState();
  buildCounterFleetObservabilityFleetObservabilityLoggingState++;
  if (buildCounterFleetObservabilityFleetObservabilityLoggingState < 3) {
    o.defaultLog = buildFleetObservabilityFleetObservabilityBaseFeatureState();
    o.scopeLog = buildFleetObservabilityFleetObservabilityBaseFeatureState();
  }
  buildCounterFleetObservabilityFleetObservabilityLoggingState--;
  return o;
}

void checkFleetObservabilityFleetObservabilityLoggingState(
    api.FleetObservabilityFleetObservabilityLoggingState o) {
  buildCounterFleetObservabilityFleetObservabilityLoggingState++;
  if (buildCounterFleetObservabilityFleetObservabilityLoggingState < 3) {
    checkFleetObservabilityFleetObservabilityBaseFeatureState(o.defaultLog!);
    checkFleetObservabilityFleetObservabilityBaseFeatureState(o.scopeLog!);
  }
  buildCounterFleetObservabilityFleetObservabilityLoggingState--;
}

core.int buildCounterFleetObservabilityFleetObservabilityMonitoringState = 0;
api.FleetObservabilityFleetObservabilityMonitoringState
    buildFleetObservabilityFleetObservabilityMonitoringState() {
  final o = api.FleetObservabilityFleetObservabilityMonitoringState();
  buildCounterFleetObservabilityFleetObservabilityMonitoringState++;
  if (buildCounterFleetObservabilityFleetObservabilityMonitoringState < 3) {
    o.state = buildFleetObservabilityFleetObservabilityBaseFeatureState();
  }
  buildCounterFleetObservabilityFleetObservabilityMonitoringState--;
  return o;
}

void checkFleetObservabilityFleetObservabilityMonitoringState(
    api.FleetObservabilityFleetObservabilityMonitoringState o) {
  buildCounterFleetObservabilityFleetObservabilityMonitoringState++;
  if (buildCounterFleetObservabilityFleetObservabilityMonitoringState < 3) {
    checkFleetObservabilityFleetObservabilityBaseFeatureState(o.state!);
  }
  buildCounterFleetObservabilityFleetObservabilityMonitoringState--;
}

core.int buildCounterFleetObservabilityLoggingConfig = 0;
api.FleetObservabilityLoggingConfig buildFleetObservabilityLoggingConfig() {
  final o = api.FleetObservabilityLoggingConfig();
  buildCounterFleetObservabilityLoggingConfig++;
  if (buildCounterFleetObservabilityLoggingConfig < 3) {
    o.defaultConfig = buildFleetObservabilityRoutingConfig();
    o.fleetScopeLogsConfig = buildFleetObservabilityRoutingConfig();
  }
  buildCounterFleetObservabilityLoggingConfig--;
  return o;
}

void checkFleetObservabilityLoggingConfig(
    api.FleetObservabilityLoggingConfig o) {
  buildCounterFleetObservabilityLoggingConfig++;
  if (buildCounterFleetObservabilityLoggingConfig < 3) {
    checkFleetObservabilityRoutingConfig(o.defaultConfig!);
    checkFleetObservabilityRoutingConfig(o.fleetScopeLogsConfig!);
  }
  buildCounterFleetObservabilityLoggingConfig--;
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

core.int buildCounterFleetObservabilityRoutingConfig = 0;
api.FleetObservabilityRoutingConfig buildFleetObservabilityRoutingConfig() {
  final o = api.FleetObservabilityRoutingConfig();
  buildCounterFleetObservabilityRoutingConfig++;
  if (buildCounterFleetObservabilityRoutingConfig < 3) {
    o.mode = 'foo';
  }
  buildCounterFleetObservabilityRoutingConfig--;
  return o;
}

void checkFleetObservabilityRoutingConfig(
    api.FleetObservabilityRoutingConfig o) {
  buildCounterFleetObservabilityRoutingConfig++;
  if (buildCounterFleetObservabilityRoutingConfig < 3) {
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
  }
  buildCounterFleetObservabilityRoutingConfig--;
}

core.List<api.ConnectAgentResource> buildUnnamed25() => [
      buildConnectAgentResource(),
      buildConnectAgentResource(),
    ];

void checkUnnamed25(core.List<api.ConnectAgentResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectAgentResource(o[0]);
  checkConnectAgentResource(o[1]);
}

core.int buildCounterGenerateConnectManifestResponse = 0;
api.GenerateConnectManifestResponse buildGenerateConnectManifestResponse() {
  final o = api.GenerateConnectManifestResponse();
  buildCounterGenerateConnectManifestResponse++;
  if (buildCounterGenerateConnectManifestResponse < 3) {
    o.manifest = buildUnnamed25();
  }
  buildCounterGenerateConnectManifestResponse--;
  return o;
}

void checkGenerateConnectManifestResponse(
    api.GenerateConnectManifestResponse o) {
  buildCounterGenerateConnectManifestResponse++;
  if (buildCounterGenerateConnectManifestResponse < 3) {
    checkUnnamed25(o.manifest!);
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

core.Map<core.String, core.Object?> buildUnnamed26() => {
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

void checkUnnamed26(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed27() => [
      buildUnnamed26(),
      buildUnnamed26(),
    ];

void checkUnnamed27(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed26(o[0]);
  checkUnnamed26(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed27();
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
    checkUnnamed27(o.details!);
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

core.List<api.IdentityServiceAuthMethod> buildUnnamed28() => [
      buildIdentityServiceAuthMethod(),
      buildIdentityServiceAuthMethod(),
    ];

void checkUnnamed28(core.List<api.IdentityServiceAuthMethod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIdentityServiceAuthMethod(o[0]);
  checkIdentityServiceAuthMethod(o[1]);
}

core.int buildCounterIdentityServiceMembershipSpec = 0;
api.IdentityServiceMembershipSpec buildIdentityServiceMembershipSpec() {
  final o = api.IdentityServiceMembershipSpec();
  buildCounterIdentityServiceMembershipSpec++;
  if (buildCounterIdentityServiceMembershipSpec < 3) {
    o.authMethods = buildUnnamed28();
  }
  buildCounterIdentityServiceMembershipSpec--;
  return o;
}

void checkIdentityServiceMembershipSpec(api.IdentityServiceMembershipSpec o) {
  buildCounterIdentityServiceMembershipSpec++;
  if (buildCounterIdentityServiceMembershipSpec < 3) {
    checkUnnamed28(o.authMethods!);
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

core.Map<core.String, core.String> buildUnnamed29() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed29(core.Map<core.String, core.String> o) {
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

core.int buildCounterIdentityServiceSamlConfig = 0;
api.IdentityServiceSamlConfig buildIdentityServiceSamlConfig() {
  final o = api.IdentityServiceSamlConfig();
  buildCounterIdentityServiceSamlConfig++;
  if (buildCounterIdentityServiceSamlConfig < 3) {
    o.attributeMapping = buildUnnamed29();
    o.groupPrefix = 'foo';
    o.groupsAttribute = 'foo';
    o.identityProviderCertificates = buildUnnamed30();
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
    checkUnnamed29(o.attributeMapping!);
    unittest.expect(
      o.groupPrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.groupsAttribute!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.identityProviderCertificates!);
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

core.List<api.ResourceManifest> buildUnnamed31() => [
      buildResourceManifest(),
      buildResourceManifest(),
    ];

void checkUnnamed31(core.List<api.ResourceManifest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceManifest(o[0]);
  checkResourceManifest(o[1]);
}

core.List<api.ResourceManifest> buildUnnamed32() => [
      buildResourceManifest(),
      buildResourceManifest(),
    ];

void checkUnnamed32(core.List<api.ResourceManifest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceManifest(o[0]);
  checkResourceManifest(o[1]);
}

core.int buildCounterKubernetesResource = 0;
api.KubernetesResource buildKubernetesResource() {
  final o = api.KubernetesResource();
  buildCounterKubernetesResource++;
  if (buildCounterKubernetesResource < 3) {
    o.connectResources = buildUnnamed31();
    o.membershipCrManifest = 'foo';
    o.membershipResources = buildUnnamed32();
    o.resourceOptions = buildResourceOptions();
  }
  buildCounterKubernetesResource--;
  return o;
}

void checkKubernetesResource(api.KubernetesResource o) {
  buildCounterKubernetesResource++;
  if (buildCounterKubernetesResource < 3) {
    checkUnnamed31(o.connectResources!);
    unittest.expect(
      o.membershipCrManifest!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.membershipResources!);
    checkResourceOptions(o.resourceOptions!);
  }
  buildCounterKubernetesResource--;
}

core.List<api.Membership> buildUnnamed33() => [
      buildMembership(),
      buildMembership(),
    ];

void checkUnnamed33(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0]);
  checkMembership(o[1]);
}

core.List<core.String> buildUnnamed34() => [
      'foo',
      'foo',
    ];

void checkUnnamed34(core.List<core.String> o) {
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

core.int buildCounterListBoundMembershipsResponse = 0;
api.ListBoundMembershipsResponse buildListBoundMembershipsResponse() {
  final o = api.ListBoundMembershipsResponse();
  buildCounterListBoundMembershipsResponse++;
  if (buildCounterListBoundMembershipsResponse < 3) {
    o.memberships = buildUnnamed33();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed34();
  }
  buildCounterListBoundMembershipsResponse--;
  return o;
}

void checkListBoundMembershipsResponse(api.ListBoundMembershipsResponse o) {
  buildCounterListBoundMembershipsResponse++;
  if (buildCounterListBoundMembershipsResponse < 3) {
    checkUnnamed33(o.memberships!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.unreachable!);
  }
  buildCounterListBoundMembershipsResponse--;
}

core.List<api.Feature> buildUnnamed35() => [
      buildFeature(),
      buildFeature(),
    ];

void checkUnnamed35(core.List<api.Feature> o) {
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
    o.resources = buildUnnamed35();
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
    checkUnnamed35(o.resources!);
  }
  buildCounterListFeaturesResponse--;
}

core.List<api.Fleet> buildUnnamed36() => [
      buildFleet(),
      buildFleet(),
    ];

void checkUnnamed36(core.List<api.Fleet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFleet(o[0]);
  checkFleet(o[1]);
}

core.int buildCounterListFleetsResponse = 0;
api.ListFleetsResponse buildListFleetsResponse() {
  final o = api.ListFleetsResponse();
  buildCounterListFleetsResponse++;
  if (buildCounterListFleetsResponse < 3) {
    o.fleets = buildUnnamed36();
    o.nextPageToken = 'foo';
  }
  buildCounterListFleetsResponse--;
  return o;
}

void checkListFleetsResponse(api.ListFleetsResponse o) {
  buildCounterListFleetsResponse++;
  if (buildCounterListFleetsResponse < 3) {
    checkUnnamed36(o.fleets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListFleetsResponse--;
}

core.List<api.Location> buildUnnamed37() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed37(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed37();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed37(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.MembershipBinding> buildUnnamed38() => [
      buildMembershipBinding(),
      buildMembershipBinding(),
    ];

void checkUnnamed38(core.List<api.MembershipBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipBinding(o[0]);
  checkMembershipBinding(o[1]);
}

core.int buildCounterListMembershipBindingsResponse = 0;
api.ListMembershipBindingsResponse buildListMembershipBindingsResponse() {
  final o = api.ListMembershipBindingsResponse();
  buildCounterListMembershipBindingsResponse++;
  if (buildCounterListMembershipBindingsResponse < 3) {
    o.membershipBindings = buildUnnamed38();
    o.nextPageToken = 'foo';
  }
  buildCounterListMembershipBindingsResponse--;
  return o;
}

void checkListMembershipBindingsResponse(api.ListMembershipBindingsResponse o) {
  buildCounterListMembershipBindingsResponse++;
  if (buildCounterListMembershipBindingsResponse < 3) {
    checkUnnamed38(o.membershipBindings!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListMembershipBindingsResponse--;
}

core.List<api.Membership> buildUnnamed39() => [
      buildMembership(),
      buildMembership(),
    ];

void checkUnnamed39(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0]);
  checkMembership(o[1]);
}

core.List<core.String> buildUnnamed40() => [
      'foo',
      'foo',
    ];

void checkUnnamed40(core.List<core.String> o) {
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
    o.resources = buildUnnamed39();
    o.unreachable = buildUnnamed40();
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
    checkUnnamed39(o.resources!);
    checkUnnamed40(o.unreachable!);
  }
  buildCounterListMembershipsResponse--;
}

core.List<api.Operation> buildUnnamed41() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed41(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed41();
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
    checkUnnamed41(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Scope> buildUnnamed42() => [
      buildScope(),
      buildScope(),
    ];

void checkUnnamed42(core.List<api.Scope> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScope(o[0]);
  checkScope(o[1]);
}

core.int buildCounterListPermittedScopesResponse = 0;
api.ListPermittedScopesResponse buildListPermittedScopesResponse() {
  final o = api.ListPermittedScopesResponse();
  buildCounterListPermittedScopesResponse++;
  if (buildCounterListPermittedScopesResponse < 3) {
    o.nextPageToken = 'foo';
    o.scopes = buildUnnamed42();
  }
  buildCounterListPermittedScopesResponse--;
  return o;
}

void checkListPermittedScopesResponse(api.ListPermittedScopesResponse o) {
  buildCounterListPermittedScopesResponse++;
  if (buildCounterListPermittedScopesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.scopes!);
  }
  buildCounterListPermittedScopesResponse--;
}

core.List<api.Namespace> buildUnnamed43() => [
      buildNamespace(),
      buildNamespace(),
    ];

void checkUnnamed43(core.List<api.Namespace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamespace(o[0]);
  checkNamespace(o[1]);
}

core.int buildCounterListScopeNamespacesResponse = 0;
api.ListScopeNamespacesResponse buildListScopeNamespacesResponse() {
  final o = api.ListScopeNamespacesResponse();
  buildCounterListScopeNamespacesResponse++;
  if (buildCounterListScopeNamespacesResponse < 3) {
    o.nextPageToken = 'foo';
    o.scopeNamespaces = buildUnnamed43();
  }
  buildCounterListScopeNamespacesResponse--;
  return o;
}

void checkListScopeNamespacesResponse(api.ListScopeNamespacesResponse o) {
  buildCounterListScopeNamespacesResponse++;
  if (buildCounterListScopeNamespacesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.scopeNamespaces!);
  }
  buildCounterListScopeNamespacesResponse--;
}

core.List<api.RBACRoleBinding> buildUnnamed44() => [
      buildRBACRoleBinding(),
      buildRBACRoleBinding(),
    ];

void checkUnnamed44(core.List<api.RBACRoleBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRBACRoleBinding(o[0]);
  checkRBACRoleBinding(o[1]);
}

core.int buildCounterListScopeRBACRoleBindingsResponse = 0;
api.ListScopeRBACRoleBindingsResponse buildListScopeRBACRoleBindingsResponse() {
  final o = api.ListScopeRBACRoleBindingsResponse();
  buildCounterListScopeRBACRoleBindingsResponse++;
  if (buildCounterListScopeRBACRoleBindingsResponse < 3) {
    o.nextPageToken = 'foo';
    o.rbacrolebindings = buildUnnamed44();
  }
  buildCounterListScopeRBACRoleBindingsResponse--;
  return o;
}

void checkListScopeRBACRoleBindingsResponse(
    api.ListScopeRBACRoleBindingsResponse o) {
  buildCounterListScopeRBACRoleBindingsResponse++;
  if (buildCounterListScopeRBACRoleBindingsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.rbacrolebindings!);
  }
  buildCounterListScopeRBACRoleBindingsResponse--;
}

core.List<api.Scope> buildUnnamed45() => [
      buildScope(),
      buildScope(),
    ];

void checkUnnamed45(core.List<api.Scope> o) {
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
    o.scopes = buildUnnamed45();
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
    checkUnnamed45(o.scopes!);
  }
  buildCounterListScopesResponse--;
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed46();
    o.locationId = 'foo';
    o.metadata = buildUnnamed47();
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
    checkUnnamed46(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed47(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed48() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed48(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed48();
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
    checkUnnamed48(o.labels!);
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

core.Map<core.String, core.String> buildUnnamed49() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed49(core.Map<core.String, core.String> o) {
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

core.int buildCounterMembershipBinding = 0;
api.MembershipBinding buildMembershipBinding() {
  final o = api.MembershipBinding();
  buildCounterMembershipBinding++;
  if (buildCounterMembershipBinding < 3) {
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.labels = buildUnnamed49();
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
    checkUnnamed49(o.labels!);
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
    o.fleetobservability = buildFleetObservabilityMembershipSpec();
    o.identityservice = buildIdentityServiceMembershipSpec();
    o.mesh = buildServiceMeshMembershipSpec();
    o.origin = buildOrigin();
    o.policycontroller = buildPolicyControllerMembershipSpec();
  }
  buildCounterMembershipFeatureSpec--;
  return o;
}

void checkMembershipFeatureSpec(api.MembershipFeatureSpec o) {
  buildCounterMembershipFeatureSpec++;
  if (buildCounterMembershipFeatureSpec < 3) {
    checkConfigManagementMembershipSpec(o.configmanagement!);
    checkFleetObservabilityMembershipSpec(o.fleetobservability!);
    checkIdentityServiceMembershipSpec(o.identityservice!);
    checkServiceMeshMembershipSpec(o.mesh!);
    checkOrigin(o.origin!);
    checkPolicyControllerMembershipSpec(o.policycontroller!);
  }
  buildCounterMembershipFeatureSpec--;
}

core.int buildCounterMembershipFeatureState = 0;
api.MembershipFeatureState buildMembershipFeatureState() {
  final o = api.MembershipFeatureState();
  buildCounterMembershipFeatureState++;
  if (buildCounterMembershipFeatureState < 3) {
    o.appdevexperience = buildAppDevExperienceFeatureState();
    o.clusterupgrade = buildClusterUpgradeMembershipState();
    o.configmanagement = buildConfigManagementMembershipState();
    o.fleetobservability = buildFleetObservabilityMembershipState();
    o.identityservice = buildIdentityServiceMembershipState();
    o.policycontroller = buildPolicyControllerMembershipState();
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
    checkClusterUpgradeMembershipState(o.clusterupgrade!);
    checkConfigManagementMembershipState(o.configmanagement!);
    checkFleetObservabilityMembershipState(o.fleetobservability!);
    checkIdentityServiceMembershipState(o.identityservice!);
    checkPolicyControllerMembershipState(o.policycontroller!);
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

core.Map<core.String, core.String> buildUnnamed50() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed50(core.Map<core.String, core.String> o) {
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

core.int buildCounterNamespace = 0;
api.Namespace buildNamespace() {
  final o = api.Namespace();
  buildCounterNamespace++;
  if (buildCounterNamespace < 3) {
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.labels = buildUnnamed50();
    o.name = 'foo';
    o.namespaceLabels = buildUnnamed51();
    o.scope = 'foo';
    o.state = buildNamespaceLifecycleState();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterNamespace--;
  return o;
}

void checkNamespace(api.Namespace o) {
  buildCounterNamespace++;
  if (buildCounterNamespace < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    checkUnnamed50(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed51(o.namespaceLabels!);
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    checkNamespaceLifecycleState(o.state!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterNamespace--;
}

core.int buildCounterNamespaceLifecycleState = 0;
api.NamespaceLifecycleState buildNamespaceLifecycleState() {
  final o = api.NamespaceLifecycleState();
  buildCounterNamespaceLifecycleState++;
  if (buildCounterNamespaceLifecycleState < 3) {
    o.code = 'foo';
  }
  buildCounterNamespaceLifecycleState--;
  return o;
}

void checkNamespaceLifecycleState(api.NamespaceLifecycleState o) {
  buildCounterNamespaceLifecycleState++;
  if (buildCounterNamespaceLifecycleState < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
  }
  buildCounterNamespaceLifecycleState--;
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

core.Map<core.String, core.Object?> buildUnnamed53() => {
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

void checkUnnamed53(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed52();
    o.name = 'foo';
    o.response = buildUnnamed53();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed52(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed53(o.response!);
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

core.List<api.AuditConfig> buildUnnamed54() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed54(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed55() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed55(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed54();
    o.bindings = buildUnnamed55();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed54(o.auditConfigs!);
    checkUnnamed55(o.bindings!);
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

core.int buildCounterPolicyBinding = 0;
api.PolicyBinding buildPolicyBinding() {
  final o = api.PolicyBinding();
  buildCounterPolicyBinding++;
  if (buildCounterPolicyBinding < 3) {
    o.name = 'foo';
  }
  buildCounterPolicyBinding--;
  return o;
}

void checkPolicyBinding(api.PolicyBinding o) {
  buildCounterPolicyBinding++;
  if (buildCounterPolicyBinding < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyBinding--;
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

core.int buildCounterPolicyControllerBundleInstallSpec = 0;
api.PolicyControllerBundleInstallSpec buildPolicyControllerBundleInstallSpec() {
  final o = api.PolicyControllerBundleInstallSpec();
  buildCounterPolicyControllerBundleInstallSpec++;
  if (buildCounterPolicyControllerBundleInstallSpec < 3) {
    o.exemptedNamespaces = buildUnnamed56();
  }
  buildCounterPolicyControllerBundleInstallSpec--;
  return o;
}

void checkPolicyControllerBundleInstallSpec(
    api.PolicyControllerBundleInstallSpec o) {
  buildCounterPolicyControllerBundleInstallSpec++;
  if (buildCounterPolicyControllerBundleInstallSpec < 3) {
    checkUnnamed56(o.exemptedNamespaces!);
  }
  buildCounterPolicyControllerBundleInstallSpec--;
}

core.Map<core.String, api.PolicyControllerPolicyControllerDeploymentConfig>
    buildUnnamed57() => {
          'x': buildPolicyControllerPolicyControllerDeploymentConfig(),
          'y': buildPolicyControllerPolicyControllerDeploymentConfig(),
        };

void checkUnnamed57(
    core.Map<core.String, api.PolicyControllerPolicyControllerDeploymentConfig>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyControllerPolicyControllerDeploymentConfig(o['x']!);
  checkPolicyControllerPolicyControllerDeploymentConfig(o['y']!);
}

core.List<core.String> buildUnnamed58() => [
      'foo',
      'foo',
    ];

void checkUnnamed58(core.List<core.String> o) {
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
    o.deploymentConfigs = buildUnnamed57();
    o.exemptableNamespaces = buildUnnamed58();
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
    checkUnnamed57(o.deploymentConfigs!);
    checkUnnamed58(o.exemptableNamespaces!);
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

core.int buildCounterPolicyControllerMembershipSpec = 0;
api.PolicyControllerMembershipSpec buildPolicyControllerMembershipSpec() {
  final o = api.PolicyControllerMembershipSpec();
  buildCounterPolicyControllerMembershipSpec++;
  if (buildCounterPolicyControllerMembershipSpec < 3) {
    o.policyControllerHubConfig = buildPolicyControllerHubConfig();
    o.version = 'foo';
  }
  buildCounterPolicyControllerMembershipSpec--;
  return o;
}

void checkPolicyControllerMembershipSpec(api.PolicyControllerMembershipSpec o) {
  buildCounterPolicyControllerMembershipSpec++;
  if (buildCounterPolicyControllerMembershipSpec < 3) {
    checkPolicyControllerHubConfig(o.policyControllerHubConfig!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyControllerMembershipSpec--;
}

core.Map<core.String, api.PolicyControllerOnClusterState> buildUnnamed59() => {
      'x': buildPolicyControllerOnClusterState(),
      'y': buildPolicyControllerOnClusterState(),
    };

void checkUnnamed59(
    core.Map<core.String, api.PolicyControllerOnClusterState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyControllerOnClusterState(o['x']!);
  checkPolicyControllerOnClusterState(o['y']!);
}

core.int buildCounterPolicyControllerMembershipState = 0;
api.PolicyControllerMembershipState buildPolicyControllerMembershipState() {
  final o = api.PolicyControllerMembershipState();
  buildCounterPolicyControllerMembershipState++;
  if (buildCounterPolicyControllerMembershipState < 3) {
    o.componentStates = buildUnnamed59();
    o.policyContentState = buildPolicyControllerPolicyContentState();
    o.state = 'foo';
  }
  buildCounterPolicyControllerMembershipState--;
  return o;
}

void checkPolicyControllerMembershipState(
    api.PolicyControllerMembershipState o) {
  buildCounterPolicyControllerMembershipState++;
  if (buildCounterPolicyControllerMembershipState < 3) {
    checkUnnamed59(o.componentStates!);
    checkPolicyControllerPolicyContentState(o.policyContentState!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyControllerMembershipState--;
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

core.int buildCounterPolicyControllerMonitoringConfig = 0;
api.PolicyControllerMonitoringConfig buildPolicyControllerMonitoringConfig() {
  final o = api.PolicyControllerMonitoringConfig();
  buildCounterPolicyControllerMonitoringConfig++;
  if (buildCounterPolicyControllerMonitoringConfig < 3) {
    o.backends = buildUnnamed60();
  }
  buildCounterPolicyControllerMonitoringConfig--;
  return o;
}

void checkPolicyControllerMonitoringConfig(
    api.PolicyControllerMonitoringConfig o) {
  buildCounterPolicyControllerMonitoringConfig++;
  if (buildCounterPolicyControllerMonitoringConfig < 3) {
    checkUnnamed60(o.backends!);
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

core.Map<core.String, api.PolicyControllerBundleInstallSpec> buildUnnamed61() =>
    {
      'x': buildPolicyControllerBundleInstallSpec(),
      'y': buildPolicyControllerBundleInstallSpec(),
    };

void checkUnnamed61(
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
    o.bundles = buildUnnamed61();
    o.templateLibrary = buildPolicyControllerTemplateLibraryConfig();
  }
  buildCounterPolicyControllerPolicyContentSpec--;
  return o;
}

void checkPolicyControllerPolicyContentSpec(
    api.PolicyControllerPolicyContentSpec o) {
  buildCounterPolicyControllerPolicyContentSpec++;
  if (buildCounterPolicyControllerPolicyContentSpec < 3) {
    checkUnnamed61(o.bundles!);
    checkPolicyControllerTemplateLibraryConfig(o.templateLibrary!);
  }
  buildCounterPolicyControllerPolicyContentSpec--;
}

core.Map<core.String, api.PolicyControllerOnClusterState> buildUnnamed62() => {
      'x': buildPolicyControllerOnClusterState(),
      'y': buildPolicyControllerOnClusterState(),
    };

void checkUnnamed62(
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
    o.bundleStates = buildUnnamed62();
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
    checkUnnamed62(o.bundleStates!);
    checkPolicyControllerOnClusterState(o.referentialSyncConfigState!);
    checkPolicyControllerOnClusterState(o.templateLibraryState!);
  }
  buildCounterPolicyControllerPolicyContentState--;
}

core.List<api.PolicyControllerToleration> buildUnnamed63() => [
      buildPolicyControllerToleration(),
      buildPolicyControllerToleration(),
    ];

void checkUnnamed63(core.List<api.PolicyControllerToleration> o) {
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
    o.podTolerations = buildUnnamed63();
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
    checkUnnamed63(o.podTolerations!);
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

core.Map<core.String, core.String> buildUnnamed64() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed64(core.Map<core.String, core.String> o) {
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

core.int buildCounterRBACRoleBinding = 0;
api.RBACRoleBinding buildRBACRoleBinding() {
  final o = api.RBACRoleBinding();
  buildCounterRBACRoleBinding++;
  if (buildCounterRBACRoleBinding < 3) {
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.group = 'foo';
    o.labels = buildUnnamed64();
    o.name = 'foo';
    o.role = buildRole();
    o.state = buildRBACRoleBindingLifecycleState();
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.user = 'foo';
  }
  buildCounterRBACRoleBinding--;
  return o;
}

void checkRBACRoleBinding(api.RBACRoleBinding o) {
  buildCounterRBACRoleBinding++;
  if (buildCounterRBACRoleBinding < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.group!,
      unittest.equals('foo'),
    );
    checkUnnamed64(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkRole(o.role!);
    checkRBACRoleBindingLifecycleState(o.state!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.user!,
      unittest.equals('foo'),
    );
  }
  buildCounterRBACRoleBinding--;
}

core.int buildCounterRBACRoleBindingLifecycleState = 0;
api.RBACRoleBindingLifecycleState buildRBACRoleBindingLifecycleState() {
  final o = api.RBACRoleBindingLifecycleState();
  buildCounterRBACRoleBindingLifecycleState++;
  if (buildCounterRBACRoleBindingLifecycleState < 3) {
    o.code = 'foo';
  }
  buildCounterRBACRoleBindingLifecycleState--;
  return o;
}

void checkRBACRoleBindingLifecycleState(api.RBACRoleBindingLifecycleState o) {
  buildCounterRBACRoleBindingLifecycleState++;
  if (buildCounterRBACRoleBindingLifecycleState < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
  }
  buildCounterRBACRoleBindingLifecycleState--;
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

core.int buildCounterRole = 0;
api.Role buildRole() {
  final o = api.Role();
  buildCounterRole++;
  if (buildCounterRole < 3) {
    o.predefinedRole = 'foo';
  }
  buildCounterRole--;
  return o;
}

void checkRole(api.Role o) {
  buildCounterRole++;
  if (buildCounterRole < 3) {
    unittest.expect(
      o.predefinedRole!,
      unittest.equals('foo'),
    );
  }
  buildCounterRole--;
}

core.Map<core.String, core.String> buildUnnamed65() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed65(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed66() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed66(core.Map<core.String, core.String> o) {
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

core.int buildCounterScope = 0;
api.Scope buildScope() {
  final o = api.Scope();
  buildCounterScope++;
  if (buildCounterScope < 3) {
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.labels = buildUnnamed65();
    o.name = 'foo';
    o.namespaceLabels = buildUnnamed66();
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    checkUnnamed65(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed66(o.namespaceLabels!);
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

core.int buildCounterSecurityPostureConfig = 0;
api.SecurityPostureConfig buildSecurityPostureConfig() {
  final o = api.SecurityPostureConfig();
  buildCounterSecurityPostureConfig++;
  if (buildCounterSecurityPostureConfig < 3) {
    o.mode = 'foo';
    o.vulnerabilityMode = 'foo';
  }
  buildCounterSecurityPostureConfig--;
  return o;
}

void checkSecurityPostureConfig(api.SecurityPostureConfig o) {
  buildCounterSecurityPostureConfig++;
  if (buildCounterSecurityPostureConfig < 3) {
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vulnerabilityMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecurityPostureConfig--;
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

core.List<api.ServiceMeshStatusDetails> buildUnnamed67() => [
      buildServiceMeshStatusDetails(),
      buildServiceMeshStatusDetails(),
    ];

void checkUnnamed67(core.List<api.ServiceMeshStatusDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceMeshStatusDetails(o[0]);
  checkServiceMeshStatusDetails(o[1]);
}

core.int buildCounterServiceMeshControlPlaneManagement = 0;
api.ServiceMeshControlPlaneManagement buildServiceMeshControlPlaneManagement() {
  final o = api.ServiceMeshControlPlaneManagement();
  buildCounterServiceMeshControlPlaneManagement++;
  if (buildCounterServiceMeshControlPlaneManagement < 3) {
    o.details = buildUnnamed67();
    o.state = 'foo';
  }
  buildCounterServiceMeshControlPlaneManagement--;
  return o;
}

void checkServiceMeshControlPlaneManagement(
    api.ServiceMeshControlPlaneManagement o) {
  buildCounterServiceMeshControlPlaneManagement++;
  if (buildCounterServiceMeshControlPlaneManagement < 3) {
    checkUnnamed67(o.details!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceMeshControlPlaneManagement--;
}

core.List<api.ServiceMeshStatusDetails> buildUnnamed68() => [
      buildServiceMeshStatusDetails(),
      buildServiceMeshStatusDetails(),
    ];

void checkUnnamed68(core.List<api.ServiceMeshStatusDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceMeshStatusDetails(o[0]);
  checkServiceMeshStatusDetails(o[1]);
}

core.int buildCounterServiceMeshDataPlaneManagement = 0;
api.ServiceMeshDataPlaneManagement buildServiceMeshDataPlaneManagement() {
  final o = api.ServiceMeshDataPlaneManagement();
  buildCounterServiceMeshDataPlaneManagement++;
  if (buildCounterServiceMeshDataPlaneManagement < 3) {
    o.details = buildUnnamed68();
    o.state = 'foo';
  }
  buildCounterServiceMeshDataPlaneManagement--;
  return o;
}

void checkServiceMeshDataPlaneManagement(api.ServiceMeshDataPlaneManagement o) {
  buildCounterServiceMeshDataPlaneManagement++;
  if (buildCounterServiceMeshDataPlaneManagement < 3) {
    checkUnnamed68(o.details!);
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

core.List<api.ServiceMeshCondition> buildUnnamed69() => [
      buildServiceMeshCondition(),
      buildServiceMeshCondition(),
    ];

void checkUnnamed69(core.List<api.ServiceMeshCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceMeshCondition(o[0]);
  checkServiceMeshCondition(o[1]);
}

core.int buildCounterServiceMeshMembershipState = 0;
api.ServiceMeshMembershipState buildServiceMeshMembershipState() {
  final o = api.ServiceMeshMembershipState();
  buildCounterServiceMeshMembershipState++;
  if (buildCounterServiceMeshMembershipState < 3) {
    o.conditions = buildUnnamed69();
    o.controlPlaneManagement = buildServiceMeshControlPlaneManagement();
    o.dataPlaneManagement = buildServiceMeshDataPlaneManagement();
  }
  buildCounterServiceMeshMembershipState--;
  return o;
}

void checkServiceMeshMembershipState(api.ServiceMeshMembershipState o) {
  buildCounterServiceMeshMembershipState++;
  if (buildCounterServiceMeshMembershipState < 3) {
    checkUnnamed69(o.conditions!);
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

core.List<core.String> buildUnnamed70() => [
      'foo',
      'foo',
    ];

void checkUnnamed70(core.List<core.String> o) {
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
    o.permissions = buildUnnamed70();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed70(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed71() => [
      'foo',
      'foo',
    ];

void checkUnnamed71(core.List<core.String> o) {
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
    o.permissions = buildUnnamed71();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed71(o.permissions!);
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

  unittest.group('obj-schema-BinaryAuthorizationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinaryAuthorizationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BinaryAuthorizationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBinaryAuthorizationConfig(od);
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

  unittest.group('obj-schema-ClusterUpgradeFleetSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUpgradeFleetSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUpgradeFleetSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUpgradeFleetSpec(od);
    });
  });

  unittest.group('obj-schema-ClusterUpgradeFleetState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUpgradeFleetState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUpgradeFleetState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUpgradeFleetState(od);
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

  unittest.group('obj-schema-ClusterUpgradeGKEUpgradeFeatureCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUpgradeGKEUpgradeFeatureCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUpgradeGKEUpgradeFeatureCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUpgradeGKEUpgradeFeatureCondition(od);
    });
  });

  unittest.group('obj-schema-ClusterUpgradeGKEUpgradeFeatureState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUpgradeGKEUpgradeFeatureState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUpgradeGKEUpgradeFeatureState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUpgradeGKEUpgradeFeatureState(od);
    });
  });

  unittest.group('obj-schema-ClusterUpgradeGKEUpgradeOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUpgradeGKEUpgradeOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUpgradeGKEUpgradeOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUpgradeGKEUpgradeOverride(od);
    });
  });

  unittest.group('obj-schema-ClusterUpgradeGKEUpgradeState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUpgradeGKEUpgradeState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUpgradeGKEUpgradeState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUpgradeGKEUpgradeState(od);
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

  unittest.group('obj-schema-ClusterUpgradeMembershipState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUpgradeMembershipState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUpgradeMembershipState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUpgradeMembershipState(od);
    });
  });

  unittest.group('obj-schema-ClusterUpgradePostConditions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUpgradePostConditions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUpgradePostConditions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUpgradePostConditions(od);
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

  unittest.group('obj-schema-DataplaneV2FeatureSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataplaneV2FeatureSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataplaneV2FeatureSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataplaneV2FeatureSpec(od);
    });
  });

  unittest.group('obj-schema-DefaultClusterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefaultClusterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefaultClusterConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDefaultClusterConfig(od);
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

  unittest.group('obj-schema-Fleet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFleet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Fleet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFleet(od);
    });
  });

  unittest.group('obj-schema-FleetLifecycleState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFleetLifecycleState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FleetLifecycleState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFleetLifecycleState(od);
    });
  });

  unittest.group('obj-schema-FleetObservabilityFeatureError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFleetObservabilityFeatureError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FleetObservabilityFeatureError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFleetObservabilityFeatureError(od);
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

  unittest.group(
      'obj-schema-FleetObservabilityFleetObservabilityBaseFeatureState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFleetObservabilityFleetObservabilityBaseFeatureState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FleetObservabilityFleetObservabilityBaseFeatureState.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkFleetObservabilityFleetObservabilityBaseFeatureState(od);
    });
  });

  unittest.group('obj-schema-FleetObservabilityFleetObservabilityLoggingState',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildFleetObservabilityFleetObservabilityLoggingState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FleetObservabilityFleetObservabilityLoggingState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFleetObservabilityFleetObservabilityLoggingState(od);
    });
  });

  unittest.group(
      'obj-schema-FleetObservabilityFleetObservabilityMonitoringState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFleetObservabilityFleetObservabilityMonitoringState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FleetObservabilityFleetObservabilityMonitoringState.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkFleetObservabilityFleetObservabilityMonitoringState(od);
    });
  });

  unittest.group('obj-schema-FleetObservabilityLoggingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFleetObservabilityLoggingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FleetObservabilityLoggingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFleetObservabilityLoggingConfig(od);
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

  unittest.group('obj-schema-FleetObservabilityRoutingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFleetObservabilityRoutingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FleetObservabilityRoutingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFleetObservabilityRoutingConfig(od);
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

  unittest.group('obj-schema-IdentityServiceGroupConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceGroupConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceGroupConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceGroupConfig(od);
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

  unittest.group('obj-schema-IdentityServiceUserConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceUserConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceUserConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceUserConfig(od);
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

  unittest.group('obj-schema-ListBoundMembershipsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBoundMembershipsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBoundMembershipsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBoundMembershipsResponse(od);
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

  unittest.group('obj-schema-ListFleetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFleetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFleetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFleetsResponse(od);
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

  unittest.group('obj-schema-ListPermittedScopesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPermittedScopesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPermittedScopesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPermittedScopesResponse(od);
    });
  });

  unittest.group('obj-schema-ListScopeNamespacesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListScopeNamespacesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListScopeNamespacesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListScopeNamespacesResponse(od);
    });
  });

  unittest.group('obj-schema-ListScopeRBACRoleBindingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListScopeRBACRoleBindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListScopeRBACRoleBindingsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListScopeRBACRoleBindingsResponse(od);
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

  unittest.group('obj-schema-Namespace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamespace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Namespace.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNamespace(od);
    });
  });

  unittest.group('obj-schema-NamespaceLifecycleState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamespaceLifecycleState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NamespaceLifecycleState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNamespaceLifecycleState(od);
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

  unittest.group('obj-schema-Origin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrigin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Origin.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOrigin(od);
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

  unittest.group('obj-schema-PolicyBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyBinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyBinding(od);
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

  unittest.group('obj-schema-PolicyControllerMembershipSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyControllerMembershipSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyControllerMembershipSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyControllerMembershipSpec(od);
    });
  });

  unittest.group('obj-schema-PolicyControllerMembershipState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyControllerMembershipState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyControllerMembershipState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyControllerMembershipState(od);
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

  unittest.group('obj-schema-RBACRoleBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRBACRoleBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RBACRoleBinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRBACRoleBinding(od);
    });
  });

  unittest.group('obj-schema-RBACRoleBindingLifecycleState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRBACRoleBindingLifecycleState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RBACRoleBindingLifecycleState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRBACRoleBindingLifecycleState(od);
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

  unittest.group('obj-schema-Role', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Role.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRole(od);
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

  unittest.group('obj-schema-SecurityPostureConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityPostureConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityPostureConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecurityPostureConfig(od);
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

  unittest.group('resource-OrganizationsLocationsFleetsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).organizations.locations.fleets;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListFleetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFleetsResponse(response as api.ListFleetsResponse);
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
      final res = api.GKEHubApi(mock).projects.locations.features;
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
      final res = api.GKEHubApi(mock).projects.locations.features;
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

  unittest.group('resource-ProjectsLocationsFleetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.fleets;
      final arg_request = buildFleet();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Fleet.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFleet(obj);

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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.fleets;
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
      final res = api.GKEHubApi(mock).projects.locations.fleets;
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
        final resp = convert.json.encode(buildFleet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFleet(response as api.Fleet);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.fleets;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListFleetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFleetsResponse(response as api.ListFleetsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.fleets;
      final arg_request = buildFleet();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Fleet.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFleet(obj);

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
      final res = api.GKEHubApi(mock).projects.locations.memberships;
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
      final res = api.GKEHubApi(mock).projects.locations.memberships;
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
      final res = api.GKEHubApi(mock).projects.locations.memberships.bindings;
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
        final resp = convert.json.encode(buildListMembershipBindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
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
      final res = api.GKEHubApi(mock).projects.locations.scopes;
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
        final resp = convert.json.encode(buildScope());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkScope(response as api.Scope);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.scopes;
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
      final res = api.GKEHubApi(mock).projects.locations.scopes;
      final arg_parent = 'foo';
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

    unittest.test('method--listMemberships', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.scopes;
      final arg_scopeName = 'foo';
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
        final resp = convert.json.encode(buildListBoundMembershipsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listMemberships(arg_scopeName,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBoundMembershipsResponse(
          response as api.ListBoundMembershipsResponse);
    });

    unittest.test('method--listPermitted', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.scopes;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListPermittedScopesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listPermitted(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPermittedScopesResponse(
          response as api.ListPermittedScopesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.scopes;
      final arg_request = buildScope();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Scope.fromJson(json as core.Map<core.String, core.dynamic>);
        checkScope(obj);

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

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.scopes;
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
      final res = api.GKEHubApi(mock).projects.locations.scopes;
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

  unittest.group('resource-ProjectsLocationsScopesNamespacesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.scopes.namespaces;
      final arg_request = buildNamespace();
      final arg_parent = 'foo';
      final arg_scopeNamespaceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Namespace.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNamespace(obj);

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
          queryMap['scopeNamespaceId']!.first,
          unittest.equals(arg_scopeNamespaceId),
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
          scopeNamespaceId: arg_scopeNamespaceId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.scopes.namespaces;
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
      final res = api.GKEHubApi(mock).projects.locations.scopes.namespaces;
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
        final resp = convert.json.encode(buildNamespace());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNamespace(response as api.Namespace);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.scopes.namespaces;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListScopeNamespacesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListScopeNamespacesResponse(
          response as api.ListScopeNamespacesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GKEHubApi(mock).projects.locations.scopes.namespaces;
      final arg_request = buildNamespace();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Namespace.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNamespace(obj);

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
  });

  unittest.group('resource-ProjectsLocationsScopesRbacrolebindingsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.GKEHubApi(mock).projects.locations.scopes.rbacrolebindings;
      final arg_request = buildRBACRoleBinding();
      final arg_parent = 'foo';
      final arg_rbacrolebindingId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RBACRoleBinding.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRBACRoleBinding(obj);

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
          queryMap['rbacrolebindingId']!.first,
          unittest.equals(arg_rbacrolebindingId),
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
          rbacrolebindingId: arg_rbacrolebindingId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.GKEHubApi(mock).projects.locations.scopes.rbacrolebindings;
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
      final res =
          api.GKEHubApi(mock).projects.locations.scopes.rbacrolebindings;
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
        final resp = convert.json.encode(buildRBACRoleBinding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRBACRoleBinding(response as api.RBACRoleBinding);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.GKEHubApi(mock).projects.locations.scopes.rbacrolebindings;
      final arg_parent = 'foo';
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
        final resp =
            convert.json.encode(buildListScopeRBACRoleBindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListScopeRBACRoleBindingsResponse(
          response as api.ListScopeRBACRoleBindingsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.GKEHubApi(mock).projects.locations.scopes.rbacrolebindings;
      final arg_request = buildRBACRoleBinding();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RBACRoleBinding.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRBACRoleBinding(obj);

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
  });
}
