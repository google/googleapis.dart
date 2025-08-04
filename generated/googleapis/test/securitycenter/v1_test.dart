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

import 'package:googleapis/securitycenter/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.ServiceAccountDelegationInfo> buildUnnamed0() => [
  buildServiceAccountDelegationInfo(),
  buildServiceAccountDelegationInfo(),
];

void checkUnnamed0(core.List<api.ServiceAccountDelegationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccountDelegationInfo(o[0]);
  checkServiceAccountDelegationInfo(o[1]);
}

core.int buildCounterAccess = 0;
api.Access buildAccess() {
  final o = api.Access();
  buildCounterAccess++;
  if (buildCounterAccess < 3) {
    o.callerIp = 'foo';
    o.callerIpGeo = buildGeolocation();
    o.methodName = 'foo';
    o.principalEmail = 'foo';
    o.principalSubject = 'foo';
    o.serviceAccountDelegationInfo = buildUnnamed0();
    o.serviceAccountKeyName = 'foo';
    o.serviceName = 'foo';
    o.userAgent = 'foo';
    o.userAgentFamily = 'foo';
    o.userName = 'foo';
  }
  buildCounterAccess--;
  return o;
}

void checkAccess(api.Access o) {
  buildCounterAccess++;
  if (buildCounterAccess < 3) {
    unittest.expect(o.callerIp!, unittest.equals('foo'));
    checkGeolocation(o.callerIpGeo!);
    unittest.expect(o.methodName!, unittest.equals('foo'));
    unittest.expect(o.principalEmail!, unittest.equals('foo'));
    unittest.expect(o.principalSubject!, unittest.equals('foo'));
    checkUnnamed0(o.serviceAccountDelegationInfo!);
    unittest.expect(o.serviceAccountKeyName!, unittest.equals('foo'));
    unittest.expect(o.serviceName!, unittest.equals('foo'));
    unittest.expect(o.userAgent!, unittest.equals('foo'));
    unittest.expect(o.userAgentFamily!, unittest.equals('foo'));
    unittest.expect(o.userName!, unittest.equals('foo'));
  }
  buildCounterAccess--;
}

core.int buildCounterAccessReview = 0;
api.AccessReview buildAccessReview() {
  final o = api.AccessReview();
  buildCounterAccessReview++;
  if (buildCounterAccessReview < 3) {
    o.group = 'foo';
    o.name = 'foo';
    o.ns = 'foo';
    o.resource = 'foo';
    o.subresource = 'foo';
    o.verb = 'foo';
    o.version = 'foo';
  }
  buildCounterAccessReview--;
  return o;
}

void checkAccessReview(api.AccessReview o) {
  buildCounterAccessReview++;
  if (buildCounterAccessReview < 3) {
    unittest.expect(o.group!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ns!, unittest.equals('foo'));
    unittest.expect(o.resource!, unittest.equals('foo'));
    unittest.expect(o.subresource!, unittest.equals('foo'));
    unittest.expect(o.verb!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterAccessReview--;
}

core.int buildCounterAdaptiveProtection = 0;
api.AdaptiveProtection buildAdaptiveProtection() {
  final o = api.AdaptiveProtection();
  buildCounterAdaptiveProtection++;
  if (buildCounterAdaptiveProtection < 3) {
    o.confidence = 42.0;
  }
  buildCounterAdaptiveProtection--;
  return o;
}

void checkAdaptiveProtection(api.AdaptiveProtection o) {
  buildCounterAdaptiveProtection++;
  if (buildCounterAdaptiveProtection < 3) {
    unittest.expect(o.confidence!, unittest.equals(42.0));
  }
  buildCounterAdaptiveProtection--;
}

core.int buildCounterAffectedResources = 0;
api.AffectedResources buildAffectedResources() {
  final o = api.AffectedResources();
  buildCounterAffectedResources++;
  if (buildCounterAffectedResources < 3) {
    o.count = 'foo';
  }
  buildCounterAffectedResources--;
  return o;
}

void checkAffectedResources(api.AffectedResources o) {
  buildCounterAffectedResources++;
  if (buildCounterAffectedResources < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
  }
  buildCounterAffectedResources--;
}

core.int buildCounterAiModel = 0;
api.AiModel buildAiModel() {
  final o = api.AiModel();
  buildCounterAiModel++;
  if (buildCounterAiModel < 3) {
    o.deploymentPlatform = 'foo';
    o.displayName = 'foo';
    o.domain = 'foo';
    o.library = 'foo';
    o.location = 'foo';
    o.name = 'foo';
    o.publisher = 'foo';
  }
  buildCounterAiModel--;
  return o;
}

void checkAiModel(api.AiModel o) {
  buildCounterAiModel++;
  if (buildCounterAiModel < 3) {
    unittest.expect(o.deploymentPlatform!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.domain!, unittest.equals('foo'));
    unittest.expect(o.library!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.publisher!, unittest.equals('foo'));
  }
  buildCounterAiModel--;
}

core.List<api.IpRule> buildUnnamed1() => [buildIpRule(), buildIpRule()];

void checkUnnamed1(core.List<api.IpRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIpRule(o[0]);
  checkIpRule(o[1]);
}

core.int buildCounterAllowed = 0;
api.Allowed buildAllowed() {
  final o = api.Allowed();
  buildCounterAllowed++;
  if (buildCounterAllowed < 3) {
    o.ipRules = buildUnnamed1();
  }
  buildCounterAllowed--;
  return o;
}

void checkAllowed(api.Allowed o) {
  buildCounterAllowed++;
  if (buildCounterAllowed < 3) {
    checkUnnamed1(o.ipRules!);
  }
  buildCounterAllowed--;
}

core.int buildCounterApplication = 0;
api.Application buildApplication() {
  final o = api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.baseUri = 'foo';
    o.fullUri = 'foo';
  }
  buildCounterApplication--;
  return o;
}

void checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    unittest.expect(o.baseUri!, unittest.equals('foo'));
    unittest.expect(o.fullUri!, unittest.equals('foo'));
  }
  buildCounterApplication--;
}

core.Map<core.String, core.Object?> buildUnnamed2() => {
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

void checkUnnamed2(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterAsset = 0;
api.Asset buildAsset() {
  final o = api.Asset();
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    o.canonicalName = 'foo';
    o.createTime = 'foo';
    o.iamPolicy = buildIamPolicy();
    o.name = 'foo';
    o.resourceProperties = buildUnnamed2();
    o.securityCenterProperties = buildSecurityCenterProperties();
    o.securityMarks = buildSecurityMarks();
    o.updateTime = 'foo';
  }
  buildCounterAsset--;
  return o;
}

void checkAsset(api.Asset o) {
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    unittest.expect(o.canonicalName!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkIamPolicy(o.iamPolicy!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed2(o.resourceProperties!);
    checkSecurityCenterProperties(o.securityCenterProperties!);
    checkSecurityMarks(o.securityMarks!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAsset--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAssetDiscoveryConfig = 0;
api.AssetDiscoveryConfig buildAssetDiscoveryConfig() {
  final o = api.AssetDiscoveryConfig();
  buildCounterAssetDiscoveryConfig++;
  if (buildCounterAssetDiscoveryConfig < 3) {
    o.folderIds = buildUnnamed3();
    o.inclusionMode = 'foo';
    o.projectIds = buildUnnamed4();
  }
  buildCounterAssetDiscoveryConfig--;
  return o;
}

void checkAssetDiscoveryConfig(api.AssetDiscoveryConfig o) {
  buildCounterAssetDiscoveryConfig++;
  if (buildCounterAssetDiscoveryConfig < 3) {
    checkUnnamed3(o.folderIds!);
    unittest.expect(o.inclusionMode!, unittest.equals('foo'));
    checkUnnamed4(o.projectIds!);
  }
  buildCounterAssetDiscoveryConfig--;
}

core.int buildCounterAttack = 0;
api.Attack buildAttack() {
  final o = api.Attack();
  buildCounterAttack++;
  if (buildCounterAttack < 3) {
    o.classification = 'foo';
    o.volumeBps = 42;
    o.volumeBpsLong = 'foo';
    o.volumePps = 42;
    o.volumePpsLong = 'foo';
  }
  buildCounterAttack--;
  return o;
}

void checkAttack(api.Attack o) {
  buildCounterAttack++;
  if (buildCounterAttack < 3) {
    unittest.expect(o.classification!, unittest.equals('foo'));
    unittest.expect(o.volumeBps!, unittest.equals(42));
    unittest.expect(o.volumeBpsLong!, unittest.equals('foo'));
    unittest.expect(o.volumePps!, unittest.equals(42));
    unittest.expect(o.volumePpsLong!, unittest.equals('foo'));
  }
  buildCounterAttack--;
}

core.int buildCounterAttackExposure = 0;
api.AttackExposure buildAttackExposure() {
  final o = api.AttackExposure();
  buildCounterAttackExposure++;
  if (buildCounterAttackExposure < 3) {
    o.attackExposureResult = 'foo';
    o.exposedHighValueResourcesCount = 42;
    o.exposedLowValueResourcesCount = 42;
    o.exposedMediumValueResourcesCount = 42;
    o.latestCalculationTime = 'foo';
    o.score = 42.0;
    o.state = 'foo';
  }
  buildCounterAttackExposure--;
  return o;
}

void checkAttackExposure(api.AttackExposure o) {
  buildCounterAttackExposure++;
  if (buildCounterAttackExposure < 3) {
    unittest.expect(o.attackExposureResult!, unittest.equals('foo'));
    unittest.expect(o.exposedHighValueResourcesCount!, unittest.equals(42));
    unittest.expect(o.exposedLowValueResourcesCount!, unittest.equals(42));
    unittest.expect(o.exposedMediumValueResourcesCount!, unittest.equals(42));
    unittest.expect(o.latestCalculationTime!, unittest.equals('foo'));
    unittest.expect(o.score!, unittest.equals(42.0));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterAttackExposure--;
}

core.List<api.AttackPathEdge> buildUnnamed5() => [
  buildAttackPathEdge(),
  buildAttackPathEdge(),
];

void checkUnnamed5(core.List<api.AttackPathEdge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttackPathEdge(o[0]);
  checkAttackPathEdge(o[1]);
}

core.List<api.AttackPathNode> buildUnnamed6() => [
  buildAttackPathNode(),
  buildAttackPathNode(),
];

void checkUnnamed6(core.List<api.AttackPathNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttackPathNode(o[0]);
  checkAttackPathNode(o[1]);
}

core.int buildCounterAttackPath = 0;
api.AttackPath buildAttackPath() {
  final o = api.AttackPath();
  buildCounterAttackPath++;
  if (buildCounterAttackPath < 3) {
    o.edges = buildUnnamed5();
    o.name = 'foo';
    o.pathNodes = buildUnnamed6();
  }
  buildCounterAttackPath--;
  return o;
}

void checkAttackPath(api.AttackPath o) {
  buildCounterAttackPath++;
  if (buildCounterAttackPath < 3) {
    checkUnnamed5(o.edges!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed6(o.pathNodes!);
  }
  buildCounterAttackPath--;
}

core.int buildCounterAttackPathEdge = 0;
api.AttackPathEdge buildAttackPathEdge() {
  final o = api.AttackPathEdge();
  buildCounterAttackPathEdge++;
  if (buildCounterAttackPathEdge < 3) {
    o.destination = 'foo';
    o.source = 'foo';
  }
  buildCounterAttackPathEdge--;
  return o;
}

void checkAttackPathEdge(api.AttackPathEdge o) {
  buildCounterAttackPathEdge++;
  if (buildCounterAttackPathEdge < 3) {
    unittest.expect(o.destination!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
  }
  buildCounterAttackPathEdge--;
}

core.List<api.PathNodeAssociatedFinding> buildUnnamed7() => [
  buildPathNodeAssociatedFinding(),
  buildPathNodeAssociatedFinding(),
];

void checkUnnamed7(core.List<api.PathNodeAssociatedFinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPathNodeAssociatedFinding(o[0]);
  checkPathNodeAssociatedFinding(o[1]);
}

core.List<api.AttackStepNode> buildUnnamed8() => [
  buildAttackStepNode(),
  buildAttackStepNode(),
];

void checkUnnamed8(core.List<api.AttackStepNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttackStepNode(o[0]);
  checkAttackStepNode(o[1]);
}

core.int buildCounterAttackPathNode = 0;
api.AttackPathNode buildAttackPathNode() {
  final o = api.AttackPathNode();
  buildCounterAttackPathNode++;
  if (buildCounterAttackPathNode < 3) {
    o.associatedFindings = buildUnnamed7();
    o.attackSteps = buildUnnamed8();
    o.displayName = 'foo';
    o.resource = 'foo';
    o.resourceType = 'foo';
    o.uuid = 'foo';
  }
  buildCounterAttackPathNode--;
  return o;
}

void checkAttackPathNode(api.AttackPathNode o) {
  buildCounterAttackPathNode++;
  if (buildCounterAttackPathNode < 3) {
    checkUnnamed7(o.associatedFindings!);
    checkUnnamed8(o.attackSteps!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.resource!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
    unittest.expect(o.uuid!, unittest.equals('foo'));
  }
  buildCounterAttackPathNode--;
}

core.Map<core.String, core.String> buildUnnamed9() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed9(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAttackStepNode = 0;
api.AttackStepNode buildAttackStepNode() {
  final o = api.AttackStepNode();
  buildCounterAttackStepNode++;
  if (buildCounterAttackStepNode < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed9();
    o.type = 'foo';
    o.uuid = 'foo';
  }
  buildCounterAttackStepNode--;
  return o;
}

void checkAttackStepNode(api.AttackStepNode o) {
  buildCounterAttackStepNode++;
  if (buildCounterAttackStepNode < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed9(o.labels!);
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uuid!, unittest.equals('foo'));
  }
  buildCounterAttackStepNode--;
}

core.List<api.AuditLogConfig> buildUnnamed10() => [
  buildAuditLogConfig(),
  buildAuditLogConfig(),
];

void checkUnnamed10(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed10();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed10(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed11();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed11(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAwsAccount = 0;
api.AwsAccount buildAwsAccount() {
  final o = api.AwsAccount();
  buildCounterAwsAccount++;
  if (buildCounterAwsAccount < 3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterAwsAccount--;
  return o;
}

void checkAwsAccount(api.AwsAccount o) {
  buildCounterAwsAccount++;
  if (buildCounterAwsAccount < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterAwsAccount--;
}

core.List<api.AwsOrganizationalUnit> buildUnnamed12() => [
  buildAwsOrganizationalUnit(),
  buildAwsOrganizationalUnit(),
];

void checkUnnamed12(core.List<api.AwsOrganizationalUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAwsOrganizationalUnit(o[0]);
  checkAwsOrganizationalUnit(o[1]);
}

core.int buildCounterAwsMetadata = 0;
api.AwsMetadata buildAwsMetadata() {
  final o = api.AwsMetadata();
  buildCounterAwsMetadata++;
  if (buildCounterAwsMetadata < 3) {
    o.account = buildAwsAccount();
    o.organization = buildAwsOrganization();
    o.organizationalUnits = buildUnnamed12();
  }
  buildCounterAwsMetadata--;
  return o;
}

void checkAwsMetadata(api.AwsMetadata o) {
  buildCounterAwsMetadata++;
  if (buildCounterAwsMetadata < 3) {
    checkAwsAccount(o.account!);
    checkAwsOrganization(o.organization!);
    checkUnnamed12(o.organizationalUnits!);
  }
  buildCounterAwsMetadata--;
}

core.int buildCounterAwsOrganization = 0;
api.AwsOrganization buildAwsOrganization() {
  final o = api.AwsOrganization();
  buildCounterAwsOrganization++;
  if (buildCounterAwsOrganization < 3) {
    o.id = 'foo';
  }
  buildCounterAwsOrganization--;
  return o;
}

void checkAwsOrganization(api.AwsOrganization o) {
  buildCounterAwsOrganization++;
  if (buildCounterAwsOrganization < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterAwsOrganization--;
}

core.int buildCounterAwsOrganizationalUnit = 0;
api.AwsOrganizationalUnit buildAwsOrganizationalUnit() {
  final o = api.AwsOrganizationalUnit();
  buildCounterAwsOrganizationalUnit++;
  if (buildCounterAwsOrganizationalUnit < 3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterAwsOrganizationalUnit--;
  return o;
}

void checkAwsOrganizationalUnit(api.AwsOrganizationalUnit o) {
  buildCounterAwsOrganizationalUnit++;
  if (buildCounterAwsOrganizationalUnit < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterAwsOrganizationalUnit--;
}

core.int buildCounterAzureManagementGroup = 0;
api.AzureManagementGroup buildAzureManagementGroup() {
  final o = api.AzureManagementGroup();
  buildCounterAzureManagementGroup++;
  if (buildCounterAzureManagementGroup < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
  }
  buildCounterAzureManagementGroup--;
  return o;
}

void checkAzureManagementGroup(api.AzureManagementGroup o) {
  buildCounterAzureManagementGroup++;
  if (buildCounterAzureManagementGroup < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterAzureManagementGroup--;
}

core.List<api.AzureManagementGroup> buildUnnamed13() => [
  buildAzureManagementGroup(),
  buildAzureManagementGroup(),
];

void checkUnnamed13(core.List<api.AzureManagementGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAzureManagementGroup(o[0]);
  checkAzureManagementGroup(o[1]);
}

core.int buildCounterAzureMetadata = 0;
api.AzureMetadata buildAzureMetadata() {
  final o = api.AzureMetadata();
  buildCounterAzureMetadata++;
  if (buildCounterAzureMetadata < 3) {
    o.managementGroups = buildUnnamed13();
    o.resourceGroup = buildAzureResourceGroup();
    o.subscription = buildAzureSubscription();
    o.tenant = buildAzureTenant();
  }
  buildCounterAzureMetadata--;
  return o;
}

void checkAzureMetadata(api.AzureMetadata o) {
  buildCounterAzureMetadata++;
  if (buildCounterAzureMetadata < 3) {
    checkUnnamed13(o.managementGroups!);
    checkAzureResourceGroup(o.resourceGroup!);
    checkAzureSubscription(o.subscription!);
    checkAzureTenant(o.tenant!);
  }
  buildCounterAzureMetadata--;
}

core.int buildCounterAzureResourceGroup = 0;
api.AzureResourceGroup buildAzureResourceGroup() {
  final o = api.AzureResourceGroup();
  buildCounterAzureResourceGroup++;
  if (buildCounterAzureResourceGroup < 3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterAzureResourceGroup--;
  return o;
}

void checkAzureResourceGroup(api.AzureResourceGroup o) {
  buildCounterAzureResourceGroup++;
  if (buildCounterAzureResourceGroup < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterAzureResourceGroup--;
}

core.int buildCounterAzureSubscription = 0;
api.AzureSubscription buildAzureSubscription() {
  final o = api.AzureSubscription();
  buildCounterAzureSubscription++;
  if (buildCounterAzureSubscription < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
  }
  buildCounterAzureSubscription--;
  return o;
}

void checkAzureSubscription(api.AzureSubscription o) {
  buildCounterAzureSubscription++;
  if (buildCounterAzureSubscription < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterAzureSubscription--;
}

core.int buildCounterAzureTenant = 0;
api.AzureTenant buildAzureTenant() {
  final o = api.AzureTenant();
  buildCounterAzureTenant++;
  if (buildCounterAzureTenant < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
  }
  buildCounterAzureTenant--;
  return o;
}

void checkAzureTenant(api.AzureTenant o) {
  buildCounterAzureTenant++;
  if (buildCounterAzureTenant < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterAzureTenant--;
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBackupDisasterRecovery = 0;
api.BackupDisasterRecovery buildBackupDisasterRecovery() {
  final o = api.BackupDisasterRecovery();
  buildCounterBackupDisasterRecovery++;
  if (buildCounterBackupDisasterRecovery < 3) {
    o.appliance = 'foo';
    o.applications = buildUnnamed14();
    o.backupCreateTime = 'foo';
    o.backupTemplate = 'foo';
    o.backupType = 'foo';
    o.host = 'foo';
    o.policies = buildUnnamed15();
    o.policyOptions = buildUnnamed16();
    o.profile = 'foo';
    o.storagePool = 'foo';
  }
  buildCounterBackupDisasterRecovery--;
  return o;
}

void checkBackupDisasterRecovery(api.BackupDisasterRecovery o) {
  buildCounterBackupDisasterRecovery++;
  if (buildCounterBackupDisasterRecovery < 3) {
    unittest.expect(o.appliance!, unittest.equals('foo'));
    checkUnnamed14(o.applications!);
    unittest.expect(o.backupCreateTime!, unittest.equals('foo'));
    unittest.expect(o.backupTemplate!, unittest.equals('foo'));
    unittest.expect(o.backupType!, unittest.equals('foo'));
    unittest.expect(o.host!, unittest.equals('foo'));
    checkUnnamed15(o.policies!);
    checkUnnamed16(o.policyOptions!);
    unittest.expect(o.profile!, unittest.equals('foo'));
    unittest.expect(o.storagePool!, unittest.equals('foo'));
  }
  buildCounterBackupDisasterRecovery--;
}

core.List<api.CreateResourceValueConfigRequest> buildUnnamed17() => [
  buildCreateResourceValueConfigRequest(),
  buildCreateResourceValueConfigRequest(),
];

void checkUnnamed17(core.List<api.CreateResourceValueConfigRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateResourceValueConfigRequest(o[0]);
  checkCreateResourceValueConfigRequest(o[1]);
}

core.int buildCounterBatchCreateResourceValueConfigsRequest = 0;
api.BatchCreateResourceValueConfigsRequest
buildBatchCreateResourceValueConfigsRequest() {
  final o = api.BatchCreateResourceValueConfigsRequest();
  buildCounterBatchCreateResourceValueConfigsRequest++;
  if (buildCounterBatchCreateResourceValueConfigsRequest < 3) {
    o.requests = buildUnnamed17();
  }
  buildCounterBatchCreateResourceValueConfigsRequest--;
  return o;
}

void checkBatchCreateResourceValueConfigsRequest(
  api.BatchCreateResourceValueConfigsRequest o,
) {
  buildCounterBatchCreateResourceValueConfigsRequest++;
  if (buildCounterBatchCreateResourceValueConfigsRequest < 3) {
    checkUnnamed17(o.requests!);
  }
  buildCounterBatchCreateResourceValueConfigsRequest--;
}

core.List<api.GoogleCloudSecuritycenterV1ResourceValueConfig>
buildUnnamed18() => [
  buildGoogleCloudSecuritycenterV1ResourceValueConfig(),
  buildGoogleCloudSecuritycenterV1ResourceValueConfig(),
];

void checkUnnamed18(
  core.List<api.GoogleCloudSecuritycenterV1ResourceValueConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSecuritycenterV1ResourceValueConfig(o[0]);
  checkGoogleCloudSecuritycenterV1ResourceValueConfig(o[1]);
}

core.int buildCounterBatchCreateResourceValueConfigsResponse = 0;
api.BatchCreateResourceValueConfigsResponse
buildBatchCreateResourceValueConfigsResponse() {
  final o = api.BatchCreateResourceValueConfigsResponse();
  buildCounterBatchCreateResourceValueConfigsResponse++;
  if (buildCounterBatchCreateResourceValueConfigsResponse < 3) {
    o.resourceValueConfigs = buildUnnamed18();
  }
  buildCounterBatchCreateResourceValueConfigsResponse--;
  return o;
}

void checkBatchCreateResourceValueConfigsResponse(
  api.BatchCreateResourceValueConfigsResponse o,
) {
  buildCounterBatchCreateResourceValueConfigsResponse++;
  if (buildCounterBatchCreateResourceValueConfigsResponse < 3) {
    checkUnnamed18(o.resourceValueConfigs!);
  }
  buildCounterBatchCreateResourceValueConfigsResponse--;
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
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
    o.members = buildUnnamed19();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed19(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterBulkMuteFindingsRequest = 0;
api.BulkMuteFindingsRequest buildBulkMuteFindingsRequest() {
  final o = api.BulkMuteFindingsRequest();
  buildCounterBulkMuteFindingsRequest++;
  if (buildCounterBulkMuteFindingsRequest < 3) {
    o.filter = 'foo';
    o.muteAnnotation = 'foo';
    o.muteState = 'foo';
  }
  buildCounterBulkMuteFindingsRequest--;
  return o;
}

void checkBulkMuteFindingsRequest(api.BulkMuteFindingsRequest o) {
  buildCounterBulkMuteFindingsRequest++;
  if (buildCounterBulkMuteFindingsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.muteAnnotation!, unittest.equals('foo'));
    unittest.expect(o.muteState!, unittest.equals('foo'));
  }
  buildCounterBulkMuteFindingsRequest--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChokepoint = 0;
api.Chokepoint buildChokepoint() {
  final o = api.Chokepoint();
  buildCounterChokepoint++;
  if (buildCounterChokepoint < 3) {
    o.relatedFindings = buildUnnamed20();
  }
  buildCounterChokepoint--;
  return o;
}

void checkChokepoint(api.Chokepoint o) {
  buildCounterChokepoint++;
  if (buildCounterChokepoint < 3) {
    checkUnnamed20(o.relatedFindings!);
  }
  buildCounterChokepoint--;
}

core.int buildCounterCloudArmor = 0;
api.CloudArmor buildCloudArmor() {
  final o = api.CloudArmor();
  buildCounterCloudArmor++;
  if (buildCounterCloudArmor < 3) {
    o.adaptiveProtection = buildAdaptiveProtection();
    o.attack = buildAttack();
    o.duration = 'foo';
    o.requests = buildRequests();
    o.securityPolicy = buildSecurityPolicy();
    o.threatVector = 'foo';
  }
  buildCounterCloudArmor--;
  return o;
}

void checkCloudArmor(api.CloudArmor o) {
  buildCounterCloudArmor++;
  if (buildCounterCloudArmor < 3) {
    checkAdaptiveProtection(o.adaptiveProtection!);
    checkAttack(o.attack!);
    unittest.expect(o.duration!, unittest.equals('foo'));
    checkRequests(o.requests!);
    checkSecurityPolicy(o.securityPolicy!);
    unittest.expect(o.threatVector!, unittest.equals('foo'));
  }
  buildCounterCloudArmor--;
}

core.int buildCounterCloudControl = 0;
api.CloudControl buildCloudControl() {
  final o = api.CloudControl();
  buildCounterCloudControl++;
  if (buildCounterCloudControl < 3) {
    o.cloudControlName = 'foo';
    o.policyType = 'foo';
    o.type = 'foo';
    o.version = 42;
  }
  buildCounterCloudControl--;
  return o;
}

void checkCloudControl(api.CloudControl o) {
  buildCounterCloudControl++;
  if (buildCounterCloudControl < 3) {
    unittest.expect(o.cloudControlName!, unittest.equals('foo'));
    unittest.expect(o.policyType!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterCloudControl--;
}

core.int buildCounterCloudDlpDataProfile = 0;
api.CloudDlpDataProfile buildCloudDlpDataProfile() {
  final o = api.CloudDlpDataProfile();
  buildCounterCloudDlpDataProfile++;
  if (buildCounterCloudDlpDataProfile < 3) {
    o.dataProfile = 'foo';
    o.parentType = 'foo';
  }
  buildCounterCloudDlpDataProfile--;
  return o;
}

void checkCloudDlpDataProfile(api.CloudDlpDataProfile o) {
  buildCounterCloudDlpDataProfile++;
  if (buildCounterCloudDlpDataProfile < 3) {
    unittest.expect(o.dataProfile!, unittest.equals('foo'));
    unittest.expect(o.parentType!, unittest.equals('foo'));
  }
  buildCounterCloudDlpDataProfile--;
}

core.int buildCounterCloudDlpInspection = 0;
api.CloudDlpInspection buildCloudDlpInspection() {
  final o = api.CloudDlpInspection();
  buildCounterCloudDlpInspection++;
  if (buildCounterCloudDlpInspection < 3) {
    o.fullScan = true;
    o.infoType = 'foo';
    o.infoTypeCount = 'foo';
    o.inspectJob = 'foo';
  }
  buildCounterCloudDlpInspection--;
  return o;
}

void checkCloudDlpInspection(api.CloudDlpInspection o) {
  buildCounterCloudDlpInspection++;
  if (buildCounterCloudDlpInspection < 3) {
    unittest.expect(o.fullScan!, unittest.isTrue);
    unittest.expect(o.infoType!, unittest.equals('foo'));
    unittest.expect(o.infoTypeCount!, unittest.equals('foo'));
    unittest.expect(o.inspectJob!, unittest.equals('foo'));
  }
  buildCounterCloudDlpInspection--;
}

core.int buildCounterCloudLoggingEntry = 0;
api.CloudLoggingEntry buildCloudLoggingEntry() {
  final o = api.CloudLoggingEntry();
  buildCounterCloudLoggingEntry++;
  if (buildCounterCloudLoggingEntry < 3) {
    o.insertId = 'foo';
    o.logId = 'foo';
    o.resourceContainer = 'foo';
    o.timestamp = 'foo';
  }
  buildCounterCloudLoggingEntry--;
  return o;
}

void checkCloudLoggingEntry(api.CloudLoggingEntry o) {
  buildCounterCloudLoggingEntry++;
  if (buildCounterCloudLoggingEntry < 3) {
    unittest.expect(o.insertId!, unittest.equals('foo'));
    unittest.expect(o.logId!, unittest.equals('foo'));
    unittest.expect(o.resourceContainer!, unittest.equals('foo'));
    unittest.expect(o.timestamp!, unittest.equals('foo'));
  }
  buildCounterCloudLoggingEntry--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCompliance = 0;
api.Compliance buildCompliance() {
  final o = api.Compliance();
  buildCounterCompliance++;
  if (buildCounterCompliance < 3) {
    o.ids = buildUnnamed21();
    o.standard = 'foo';
    o.version = 'foo';
  }
  buildCounterCompliance--;
  return o;
}

void checkCompliance(api.Compliance o) {
  buildCounterCompliance++;
  if (buildCounterCompliance < 3) {
    checkUnnamed21(o.ids!);
    unittest.expect(o.standard!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterCompliance--;
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Framework> buildUnnamed23() => [
  buildFramework(),
  buildFramework(),
];

void checkUnnamed23(core.List<api.Framework> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFramework(o[0]);
  checkFramework(o[1]);
}

core.int buildCounterComplianceDetails = 0;
api.ComplianceDetails buildComplianceDetails() {
  final o = api.ComplianceDetails();
  buildCounterComplianceDetails++;
  if (buildCounterComplianceDetails < 3) {
    o.cloudControl = buildCloudControl();
    o.cloudControlDeploymentNames = buildUnnamed22();
    o.frameworks = buildUnnamed23();
  }
  buildCounterComplianceDetails--;
  return o;
}

void checkComplianceDetails(api.ComplianceDetails o) {
  buildCounterComplianceDetails++;
  if (buildCounterComplianceDetails < 3) {
    checkCloudControl(o.cloudControl!);
    checkUnnamed22(o.cloudControlDeploymentNames!);
    checkUnnamed23(o.frameworks!);
  }
  buildCounterComplianceDetails--;
}

core.int buildCounterConnection = 0;
api.Connection buildConnection() {
  final o = api.Connection();
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    o.destinationIp = 'foo';
    o.destinationPort = 42;
    o.protocol = 'foo';
    o.sourceIp = 'foo';
    o.sourcePort = 42;
  }
  buildCounterConnection--;
  return o;
}

void checkConnection(api.Connection o) {
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    unittest.expect(o.destinationIp!, unittest.equals('foo'));
    unittest.expect(o.destinationPort!, unittest.equals(42));
    unittest.expect(o.protocol!, unittest.equals('foo'));
    unittest.expect(o.sourceIp!, unittest.equals('foo'));
    unittest.expect(o.sourcePort!, unittest.equals(42));
  }
  buildCounterConnection--;
}

core.int buildCounterContact = 0;
api.Contact buildContact() {
  final o = api.Contact();
  buildCounterContact++;
  if (buildCounterContact < 3) {
    o.email = 'foo';
  }
  buildCounterContact--;
  return o;
}

void checkContact(api.Contact o) {
  buildCounterContact++;
  if (buildCounterContact < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
  }
  buildCounterContact--;
}

core.List<api.Contact> buildUnnamed24() => [buildContact(), buildContact()];

void checkUnnamed24(core.List<api.Contact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContact(o[0]);
  checkContact(o[1]);
}

core.int buildCounterContactDetails = 0;
api.ContactDetails buildContactDetails() {
  final o = api.ContactDetails();
  buildCounterContactDetails++;
  if (buildCounterContactDetails < 3) {
    o.contacts = buildUnnamed24();
  }
  buildCounterContactDetails--;
  return o;
}

void checkContactDetails(api.ContactDetails o) {
  buildCounterContactDetails++;
  if (buildCounterContactDetails < 3) {
    checkUnnamed24(o.contacts!);
  }
  buildCounterContactDetails--;
}

core.List<api.Label> buildUnnamed25() => [buildLabel(), buildLabel()];

void checkUnnamed25(core.List<api.Label> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabel(o[0]);
  checkLabel(o[1]);
}

core.int buildCounterContainer = 0;
api.Container buildContainer() {
  final o = api.Container();
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    o.createTime = 'foo';
    o.imageId = 'foo';
    o.labels = buildUnnamed25();
    o.name = 'foo';
    o.uri = 'foo';
  }
  buildCounterContainer--;
  return o;
}

void checkContainer(api.Container o) {
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.imageId!, unittest.equals('foo'));
    checkUnnamed25(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterContainer--;
}

core.int buildCounterControl = 0;
api.Control buildControl() {
  final o = api.Control();
  buildCounterControl++;
  if (buildCounterControl < 3) {
    o.controlName = 'foo';
    o.displayName = 'foo';
  }
  buildCounterControl--;
  return o;
}

void checkControl(api.Control o) {
  buildCounterControl++;
  if (buildCounterControl < 3) {
    unittest.expect(o.controlName!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterControl--;
}

core.int buildCounterCreateResourceValueConfigRequest = 0;
api.CreateResourceValueConfigRequest buildCreateResourceValueConfigRequest() {
  final o = api.CreateResourceValueConfigRequest();
  buildCounterCreateResourceValueConfigRequest++;
  if (buildCounterCreateResourceValueConfigRequest < 3) {
    o.parent = 'foo';
    o.resourceValueConfig =
        buildGoogleCloudSecuritycenterV1ResourceValueConfig();
  }
  buildCounterCreateResourceValueConfigRequest--;
  return o;
}

void checkCreateResourceValueConfigRequest(
  api.CreateResourceValueConfigRequest o,
) {
  buildCounterCreateResourceValueConfigRequest++;
  if (buildCounterCreateResourceValueConfigRequest < 3) {
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkGoogleCloudSecuritycenterV1ResourceValueConfig(o.resourceValueConfig!);
  }
  buildCounterCreateResourceValueConfigRequest--;
}

core.int buildCounterCustomModuleValidationError = 0;
api.CustomModuleValidationError buildCustomModuleValidationError() {
  final o = api.CustomModuleValidationError();
  buildCounterCustomModuleValidationError++;
  if (buildCounterCustomModuleValidationError < 3) {
    o.description = 'foo';
    o.end = buildPosition();
    o.fieldPath = 'foo';
    o.start = buildPosition();
  }
  buildCounterCustomModuleValidationError--;
  return o;
}

void checkCustomModuleValidationError(api.CustomModuleValidationError o) {
  buildCounterCustomModuleValidationError++;
  if (buildCounterCustomModuleValidationError < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkPosition(o.end!);
    unittest.expect(o.fieldPath!, unittest.equals('foo'));
    checkPosition(o.start!);
  }
  buildCounterCustomModuleValidationError--;
}

core.List<api.CustomModuleValidationError> buildUnnamed26() => [
  buildCustomModuleValidationError(),
  buildCustomModuleValidationError(),
];

void checkUnnamed26(core.List<api.CustomModuleValidationError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomModuleValidationError(o[0]);
  checkCustomModuleValidationError(o[1]);
}

core.int buildCounterCustomModuleValidationErrors = 0;
api.CustomModuleValidationErrors buildCustomModuleValidationErrors() {
  final o = api.CustomModuleValidationErrors();
  buildCounterCustomModuleValidationErrors++;
  if (buildCounterCustomModuleValidationErrors < 3) {
    o.errors = buildUnnamed26();
  }
  buildCounterCustomModuleValidationErrors--;
  return o;
}

void checkCustomModuleValidationErrors(api.CustomModuleValidationErrors o) {
  buildCounterCustomModuleValidationErrors++;
  if (buildCounterCustomModuleValidationErrors < 3) {
    checkUnnamed26(o.errors!);
  }
  buildCounterCustomModuleValidationErrors--;
}

core.List<api.Reference> buildUnnamed27() => [
  buildReference(),
  buildReference(),
];

void checkUnnamed27(core.List<api.Reference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReference(o[0]);
  checkReference(o[1]);
}

core.int buildCounterCve = 0;
api.Cve buildCve() {
  final o = api.Cve();
  buildCounterCve++;
  if (buildCounterCve < 3) {
    o.cvssv3 = buildCvssv3();
    o.exploitReleaseDate = 'foo';
    o.exploitationActivity = 'foo';
    o.firstExploitationDate = 'foo';
    o.id = 'foo';
    o.impact = 'foo';
    o.observedInTheWild = true;
    o.references = buildUnnamed27();
    o.upstreamFixAvailable = true;
    o.zeroDay = true;
  }
  buildCounterCve--;
  return o;
}

void checkCve(api.Cve o) {
  buildCounterCve++;
  if (buildCounterCve < 3) {
    checkCvssv3(o.cvssv3!);
    unittest.expect(o.exploitReleaseDate!, unittest.equals('foo'));
    unittest.expect(o.exploitationActivity!, unittest.equals('foo'));
    unittest.expect(o.firstExploitationDate!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.impact!, unittest.equals('foo'));
    unittest.expect(o.observedInTheWild!, unittest.isTrue);
    checkUnnamed27(o.references!);
    unittest.expect(o.upstreamFixAvailable!, unittest.isTrue);
    unittest.expect(o.zeroDay!, unittest.isTrue);
  }
  buildCounterCve--;
}

core.int buildCounterCvssv3 = 0;
api.Cvssv3 buildCvssv3() {
  final o = api.Cvssv3();
  buildCounterCvssv3++;
  if (buildCounterCvssv3 < 3) {
    o.attackComplexity = 'foo';
    o.attackVector = 'foo';
    o.availabilityImpact = 'foo';
    o.baseScore = 42.0;
    o.confidentialityImpact = 'foo';
    o.integrityImpact = 'foo';
    o.privilegesRequired = 'foo';
    o.scope = 'foo';
    o.userInteraction = 'foo';
  }
  buildCounterCvssv3--;
  return o;
}

void checkCvssv3(api.Cvssv3 o) {
  buildCounterCvssv3++;
  if (buildCounterCvssv3 < 3) {
    unittest.expect(o.attackComplexity!, unittest.equals('foo'));
    unittest.expect(o.attackVector!, unittest.equals('foo'));
    unittest.expect(o.availabilityImpact!, unittest.equals('foo'));
    unittest.expect(o.baseScore!, unittest.equals(42.0));
    unittest.expect(o.confidentialityImpact!, unittest.equals('foo'));
    unittest.expect(o.integrityImpact!, unittest.equals('foo'));
    unittest.expect(o.privilegesRequired!, unittest.equals('foo'));
    unittest.expect(o.scope!, unittest.equals('foo'));
    unittest.expect(o.userInteraction!, unittest.equals('foo'));
  }
  buildCounterCvssv3--;
}

core.List<api.Reference> buildUnnamed28() => [
  buildReference(),
  buildReference(),
];

void checkUnnamed28(core.List<api.Reference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReference(o[0]);
  checkReference(o[1]);
}

core.int buildCounterCwe = 0;
api.Cwe buildCwe() {
  final o = api.Cwe();
  buildCounterCwe++;
  if (buildCounterCwe < 3) {
    o.id = 'foo';
    o.references = buildUnnamed28();
  }
  buildCounterCwe--;
  return o;
}

void checkCwe(api.Cwe o) {
  buildCounterCwe++;
  if (buildCounterCwe < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed28(o.references!);
  }
  buildCounterCwe--;
}

core.int buildCounterDataAccessEvent = 0;
api.DataAccessEvent buildDataAccessEvent() {
  final o = api.DataAccessEvent();
  buildCounterDataAccessEvent++;
  if (buildCounterDataAccessEvent < 3) {
    o.eventId = 'foo';
    o.eventTime = 'foo';
    o.operation = 'foo';
    o.principalEmail = 'foo';
  }
  buildCounterDataAccessEvent--;
  return o;
}

void checkDataAccessEvent(api.DataAccessEvent o) {
  buildCounterDataAccessEvent++;
  if (buildCounterDataAccessEvent < 3) {
    unittest.expect(o.eventId!, unittest.equals('foo'));
    unittest.expect(o.eventTime!, unittest.equals('foo'));
    unittest.expect(o.operation!, unittest.equals('foo'));
    unittest.expect(o.principalEmail!, unittest.equals('foo'));
  }
  buildCounterDataAccessEvent--;
}

core.int buildCounterDataFlowEvent = 0;
api.DataFlowEvent buildDataFlowEvent() {
  final o = api.DataFlowEvent();
  buildCounterDataFlowEvent++;
  if (buildCounterDataFlowEvent < 3) {
    o.eventId = 'foo';
    o.eventTime = 'foo';
    o.operation = 'foo';
    o.principalEmail = 'foo';
    o.violatedLocation = 'foo';
  }
  buildCounterDataFlowEvent--;
  return o;
}

void checkDataFlowEvent(api.DataFlowEvent o) {
  buildCounterDataFlowEvent++;
  if (buildCounterDataFlowEvent < 3) {
    unittest.expect(o.eventId!, unittest.equals('foo'));
    unittest.expect(o.eventTime!, unittest.equals('foo'));
    unittest.expect(o.operation!, unittest.equals('foo'));
    unittest.expect(o.principalEmail!, unittest.equals('foo'));
    unittest.expect(o.violatedLocation!, unittest.equals('foo'));
  }
  buildCounterDataFlowEvent--;
}

core.int buildCounterDataRetentionDeletionEvent = 0;
api.DataRetentionDeletionEvent buildDataRetentionDeletionEvent() {
  final o = api.DataRetentionDeletionEvent();
  buildCounterDataRetentionDeletionEvent++;
  if (buildCounterDataRetentionDeletionEvent < 3) {
    o.dataObjectCount = 'foo';
    o.eventDetectionTime = 'foo';
    o.eventType = 'foo';
    o.maxRetentionAllowed = 'foo';
  }
  buildCounterDataRetentionDeletionEvent--;
  return o;
}

void checkDataRetentionDeletionEvent(api.DataRetentionDeletionEvent o) {
  buildCounterDataRetentionDeletionEvent++;
  if (buildCounterDataRetentionDeletionEvent < 3) {
    unittest.expect(o.dataObjectCount!, unittest.equals('foo'));
    unittest.expect(o.eventDetectionTime!, unittest.equals('foo'));
    unittest.expect(o.eventType!, unittest.equals('foo'));
    unittest.expect(o.maxRetentionAllowed!, unittest.equals('foo'));
  }
  buildCounterDataRetentionDeletionEvent--;
}

core.List<core.String> buildUnnamed29() => ['foo', 'foo'];

void checkUnnamed29(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDatabase = 0;
api.Database buildDatabase() {
  final o = api.Database();
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    o.displayName = 'foo';
    o.grantees = buildUnnamed29();
    o.name = 'foo';
    o.query = 'foo';
    o.userName = 'foo';
    o.version = 'foo';
  }
  buildCounterDatabase--;
  return o;
}

void checkDatabase(api.Database o) {
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed29(o.grantees!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
    unittest.expect(o.userName!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterDatabase--;
}

core.int buildCounterDataset = 0;
api.Dataset buildDataset() {
  final o = api.Dataset();
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.source = 'foo';
  }
  buildCounterDataset--;
  return o;
}

void checkDataset(api.Dataset o) {
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
  }
  buildCounterDataset--;
}

core.List<api.IpRule> buildUnnamed30() => [buildIpRule(), buildIpRule()];

void checkUnnamed30(core.List<api.IpRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIpRule(o[0]);
  checkIpRule(o[1]);
}

core.int buildCounterDenied = 0;
api.Denied buildDenied() {
  final o = api.Denied();
  buildCounterDenied++;
  if (buildCounterDenied < 3) {
    o.ipRules = buildUnnamed30();
  }
  buildCounterDenied--;
  return o;
}

void checkDenied(api.Denied o) {
  buildCounterDenied++;
  if (buildCounterDenied < 3) {
    checkUnnamed30(o.ipRules!);
  }
  buildCounterDenied--;
}

core.int buildCounterDetection = 0;
api.Detection buildDetection() {
  final o = api.Detection();
  buildCounterDetection++;
  if (buildCounterDetection < 3) {
    o.binary = 'foo';
    o.percentPagesMatched = 42.0;
  }
  buildCounterDetection--;
  return o;
}

void checkDetection(api.Detection o) {
  buildCounterDetection++;
  if (buildCounterDetection < 3) {
    unittest.expect(o.binary!, unittest.equals('foo'));
    unittest.expect(o.percentPagesMatched!, unittest.equals(42.0));
  }
  buildCounterDetection--;
}

core.int buildCounterDisk = 0;
api.Disk buildDisk() {
  final o = api.Disk();
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    o.name = 'foo';
  }
  buildCounterDisk--;
  return o;
}

void checkDisk(api.Disk o) {
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterDisk--;
}

core.int buildCounterDiskPath = 0;
api.DiskPath buildDiskPath() {
  final o = api.DiskPath();
  buildCounterDiskPath++;
  if (buildCounterDiskPath < 3) {
    o.partitionUuid = 'foo';
    o.relativePath = 'foo';
  }
  buildCounterDiskPath--;
  return o;
}

void checkDiskPath(api.DiskPath o) {
  buildCounterDiskPath++;
  if (buildCounterDiskPath < 3) {
    unittest.expect(o.partitionUuid!, unittest.equals('foo'));
    unittest.expect(o.relativePath!, unittest.equals('foo'));
  }
  buildCounterDiskPath--;
}

core.int buildCounterDynamicMuteRecord = 0;
api.DynamicMuteRecord buildDynamicMuteRecord() {
  final o = api.DynamicMuteRecord();
  buildCounterDynamicMuteRecord++;
  if (buildCounterDynamicMuteRecord < 3) {
    o.matchTime = 'foo';
    o.muteConfig = 'foo';
  }
  buildCounterDynamicMuteRecord--;
  return o;
}

void checkDynamicMuteRecord(api.DynamicMuteRecord o) {
  buildCounterDynamicMuteRecord++;
  if (buildCounterDynamicMuteRecord < 3) {
    unittest.expect(o.matchTime!, unittest.equals('foo'));
    unittest.expect(o.muteConfig!, unittest.equals('foo'));
  }
  buildCounterDynamicMuteRecord--;
}

core.Map<core.String, core.Object?> buildUnnamed31() => {
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

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterEffectiveEventThreatDetectionCustomModule = 0;
api.EffectiveEventThreatDetectionCustomModule
buildEffectiveEventThreatDetectionCustomModule() {
  final o = api.EffectiveEventThreatDetectionCustomModule();
  buildCounterEffectiveEventThreatDetectionCustomModule++;
  if (buildCounterEffectiveEventThreatDetectionCustomModule < 3) {
    o.cloudProvider = 'foo';
    o.config = buildUnnamed31();
    o.description = 'foo';
    o.displayName = 'foo';
    o.enablementState = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterEffectiveEventThreatDetectionCustomModule--;
  return o;
}

void checkEffectiveEventThreatDetectionCustomModule(
  api.EffectiveEventThreatDetectionCustomModule o,
) {
  buildCounterEffectiveEventThreatDetectionCustomModule++;
  if (buildCounterEffectiveEventThreatDetectionCustomModule < 3) {
    unittest.expect(o.cloudProvider!, unittest.equals('foo'));
    checkUnnamed31(o.config!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.enablementState!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterEffectiveEventThreatDetectionCustomModule--;
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

core.int buildCounterEnvironmentVariable = 0;
api.EnvironmentVariable buildEnvironmentVariable() {
  final o = api.EnvironmentVariable();
  buildCounterEnvironmentVariable++;
  if (buildCounterEnvironmentVariable < 3) {
    o.name = 'foo';
    o.val = 'foo';
  }
  buildCounterEnvironmentVariable--;
  return o;
}

void checkEnvironmentVariable(api.EnvironmentVariable o) {
  buildCounterEnvironmentVariable++;
  if (buildCounterEnvironmentVariable < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.val!, unittest.equals('foo'));
  }
  buildCounterEnvironmentVariable--;
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

core.int buildCounterEventThreatDetectionCustomModule = 0;
api.EventThreatDetectionCustomModule buildEventThreatDetectionCustomModule() {
  final o = api.EventThreatDetectionCustomModule();
  buildCounterEventThreatDetectionCustomModule++;
  if (buildCounterEventThreatDetectionCustomModule < 3) {
    o.ancestorModule = 'foo';
    o.cloudProvider = 'foo';
    o.config = buildUnnamed32();
    o.description = 'foo';
    o.displayName = 'foo';
    o.enablementState = 'foo';
    o.lastEditor = 'foo';
    o.name = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterEventThreatDetectionCustomModule--;
  return o;
}

void checkEventThreatDetectionCustomModule(
  api.EventThreatDetectionCustomModule o,
) {
  buildCounterEventThreatDetectionCustomModule++;
  if (buildCounterEventThreatDetectionCustomModule < 3) {
    unittest.expect(o.ancestorModule!, unittest.equals('foo'));
    unittest.expect(o.cloudProvider!, unittest.equals('foo'));
    checkUnnamed32(o.config!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.enablementState!, unittest.equals('foo'));
    unittest.expect(o.lastEditor!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterEventThreatDetectionCustomModule--;
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExfilResource = 0;
api.ExfilResource buildExfilResource() {
  final o = api.ExfilResource();
  buildCounterExfilResource++;
  if (buildCounterExfilResource < 3) {
    o.components = buildUnnamed33();
    o.name = 'foo';
  }
  buildCounterExfilResource--;
  return o;
}

void checkExfilResource(api.ExfilResource o) {
  buildCounterExfilResource++;
  if (buildCounterExfilResource < 3) {
    checkUnnamed33(o.components!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterExfilResource--;
}

core.List<api.ExfilResource> buildUnnamed34() => [
  buildExfilResource(),
  buildExfilResource(),
];

void checkUnnamed34(core.List<api.ExfilResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExfilResource(o[0]);
  checkExfilResource(o[1]);
}

core.List<api.ExfilResource> buildUnnamed35() => [
  buildExfilResource(),
  buildExfilResource(),
];

void checkUnnamed35(core.List<api.ExfilResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExfilResource(o[0]);
  checkExfilResource(o[1]);
}

core.int buildCounterExfiltration = 0;
api.Exfiltration buildExfiltration() {
  final o = api.Exfiltration();
  buildCounterExfiltration++;
  if (buildCounterExfiltration < 3) {
    o.sources = buildUnnamed34();
    o.targets = buildUnnamed35();
    o.totalExfiltratedBytes = 'foo';
  }
  buildCounterExfiltration--;
  return o;
}

void checkExfiltration(api.Exfiltration o) {
  buildCounterExfiltration++;
  if (buildCounterExfiltration < 3) {
    checkUnnamed34(o.sources!);
    checkUnnamed35(o.targets!);
    unittest.expect(o.totalExfiltratedBytes!, unittest.equals('foo'));
  }
  buildCounterExfiltration--;
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

core.List<api.FileOperation> buildUnnamed36() => [
  buildFileOperation(),
  buildFileOperation(),
];

void checkUnnamed36(core.List<api.FileOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileOperation(o[0]);
  checkFileOperation(o[1]);
}

core.int buildCounterFile = 0;
api.File buildFile() {
  final o = api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.contents = 'foo';
    o.diskPath = buildDiskPath();
    o.hashedSize = 'foo';
    o.operations = buildUnnamed36();
    o.partiallyHashed = true;
    o.path = 'foo';
    o.sha256 = 'foo';
    o.size = 'foo';
  }
  buildCounterFile--;
  return o;
}

void checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    unittest.expect(o.contents!, unittest.equals('foo'));
    checkDiskPath(o.diskPath!);
    unittest.expect(o.hashedSize!, unittest.equals('foo'));
    checkUnnamed36(o.operations!);
    unittest.expect(o.partiallyHashed!, unittest.isTrue);
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.sha256!, unittest.equals('foo'));
    unittest.expect(o.size!, unittest.equals('foo'));
  }
  buildCounterFile--;
}

core.int buildCounterFileOperation = 0;
api.FileOperation buildFileOperation() {
  final o = api.FileOperation();
  buildCounterFileOperation++;
  if (buildCounterFileOperation < 3) {
    o.type = 'foo';
  }
  buildCounterFileOperation--;
  return o;
}

void checkFileOperation(api.FileOperation o) {
  buildCounterFileOperation++;
  if (buildCounterFileOperation < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterFileOperation--;
}

core.List<api.Compliance> buildUnnamed37() => [
  buildCompliance(),
  buildCompliance(),
];

void checkUnnamed37(core.List<api.Compliance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompliance(o[0]);
  checkCompliance(o[1]);
}

core.List<api.Connection> buildUnnamed38() => [
  buildConnection(),
  buildConnection(),
];

void checkUnnamed38(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0]);
  checkConnection(o[1]);
}

core.Map<core.String, api.ContactDetails> buildUnnamed39() => {
  'x': buildContactDetails(),
  'y': buildContactDetails(),
};

void checkUnnamed39(core.Map<core.String, api.ContactDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactDetails(o['x']!);
  checkContactDetails(o['y']!);
}

core.List<api.Container> buildUnnamed40() => [
  buildContainer(),
  buildContainer(),
];

void checkUnnamed40(core.List<api.Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainer(o[0]);
  checkContainer(o[1]);
}

core.List<api.DataAccessEvent> buildUnnamed41() => [
  buildDataAccessEvent(),
  buildDataAccessEvent(),
];

void checkUnnamed41(core.List<api.DataAccessEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataAccessEvent(o[0]);
  checkDataAccessEvent(o[1]);
}

core.List<api.DataFlowEvent> buildUnnamed42() => [
  buildDataFlowEvent(),
  buildDataFlowEvent(),
];

void checkUnnamed42(core.List<api.DataFlowEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataFlowEvent(o[0]);
  checkDataFlowEvent(o[1]);
}

core.List<api.DataRetentionDeletionEvent> buildUnnamed43() => [
  buildDataRetentionDeletionEvent(),
  buildDataRetentionDeletionEvent(),
];

void checkUnnamed43(core.List<api.DataRetentionDeletionEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataRetentionDeletionEvent(o[0]);
  checkDataRetentionDeletionEvent(o[1]);
}

core.Map<core.String, api.GoogleCloudSecuritycenterV1ExternalSystem>
buildUnnamed44() => {
  'x': buildGoogleCloudSecuritycenterV1ExternalSystem(),
  'y': buildGoogleCloudSecuritycenterV1ExternalSystem(),
};

void checkUnnamed44(
  core.Map<core.String, api.GoogleCloudSecuritycenterV1ExternalSystem> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSecuritycenterV1ExternalSystem(o['x']!);
  checkGoogleCloudSecuritycenterV1ExternalSystem(o['y']!);
}

core.List<api.File> buildUnnamed45() => [buildFile(), buildFile()];

void checkUnnamed45(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.List<api.GroupMembership> buildUnnamed46() => [
  buildGroupMembership(),
  buildGroupMembership(),
];

void checkUnnamed46(core.List<api.GroupMembership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupMembership(o[0]);
  checkGroupMembership(o[1]);
}

core.List<api.IamBinding> buildUnnamed47() => [
  buildIamBinding(),
  buildIamBinding(),
];

void checkUnnamed47(core.List<api.IamBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIamBinding(o[0]);
  checkIamBinding(o[1]);
}

core.List<api.LoadBalancer> buildUnnamed48() => [
  buildLoadBalancer(),
  buildLoadBalancer(),
];

void checkUnnamed48(core.List<api.LoadBalancer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoadBalancer(o[0]);
  checkLoadBalancer(o[1]);
}

core.List<api.LogEntry> buildUnnamed49() => [buildLogEntry(), buildLogEntry()];

void checkUnnamed49(core.List<api.LogEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogEntry(o[0]);
  checkLogEntry(o[1]);
}

core.List<api.Network> buildUnnamed50() => [buildNetwork(), buildNetwork()];

void checkUnnamed50(core.List<api.Network> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetwork(o[0]);
  checkNetwork(o[1]);
}

core.List<api.OrgPolicy> buildUnnamed51() => [
  buildOrgPolicy(),
  buildOrgPolicy(),
];

void checkUnnamed51(core.List<api.OrgPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrgPolicy(o[0]);
  checkOrgPolicy(o[1]);
}

core.List<api.Process> buildUnnamed52() => [buildProcess(), buildProcess()];

void checkUnnamed52(core.List<api.Process> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProcess(o[0]);
  checkProcess(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed53() => {
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

void checkUnnamed53(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterFinding = 0;
api.Finding buildFinding() {
  final o = api.Finding();
  buildCounterFinding++;
  if (buildCounterFinding < 3) {
    o.access = buildAccess();
    o.affectedResources = buildAffectedResources();
    o.aiModel = buildAiModel();
    o.application = buildApplication();
    o.attackExposure = buildAttackExposure();
    o.backupDisasterRecovery = buildBackupDisasterRecovery();
    o.canonicalName = 'foo';
    o.category = 'foo';
    o.chokepoint = buildChokepoint();
    o.cloudArmor = buildCloudArmor();
    o.cloudDlpDataProfile = buildCloudDlpDataProfile();
    o.cloudDlpInspection = buildCloudDlpInspection();
    o.complianceDetails = buildComplianceDetails();
    o.compliances = buildUnnamed37();
    o.connections = buildUnnamed38();
    o.contacts = buildUnnamed39();
    o.containers = buildUnnamed40();
    o.createTime = 'foo';
    o.dataAccessEvents = buildUnnamed41();
    o.dataFlowEvents = buildUnnamed42();
    o.dataRetentionDeletionEvents = buildUnnamed43();
    o.database = buildDatabase();
    o.description = 'foo';
    o.disk = buildDisk();
    o.eventTime = 'foo';
    o.exfiltration = buildExfiltration();
    o.externalSystems = buildUnnamed44();
    o.externalUri = 'foo';
    o.files = buildUnnamed45();
    o.findingClass = 'foo';
    o.groupMemberships = buildUnnamed46();
    o.iamBindings = buildUnnamed47();
    o.indicator = buildIndicator();
    o.ipRules = buildIpRules();
    o.job = buildJob();
    o.kernelRootkit = buildKernelRootkit();
    o.kubernetes = buildKubernetes();
    o.loadBalancers = buildUnnamed48();
    o.logEntries = buildUnnamed49();
    o.mitreAttack = buildMitreAttack();
    o.moduleName = 'foo';
    o.mute = 'foo';
    o.muteInfo = buildMuteInfo();
    o.muteInitiator = 'foo';
    o.muteUpdateTime = 'foo';
    o.name = 'foo';
    o.networks = buildUnnamed50();
    o.nextSteps = 'foo';
    o.notebook = buildNotebook();
    o.orgPolicies = buildUnnamed51();
    o.parent = 'foo';
    o.parentDisplayName = 'foo';
    o.processes = buildUnnamed52();
    o.resourceName = 'foo';
    o.securityMarks = buildSecurityMarks();
    o.securityPosture = buildSecurityPosture();
    o.severity = 'foo';
    o.sourceProperties = buildUnnamed53();
    o.state = 'foo';
    o.toxicCombination = buildToxicCombination();
    o.vertexAi = buildVertexAi();
    o.vulnerability = buildVulnerability();
  }
  buildCounterFinding--;
  return o;
}

void checkFinding(api.Finding o) {
  buildCounterFinding++;
  if (buildCounterFinding < 3) {
    checkAccess(o.access!);
    checkAffectedResources(o.affectedResources!);
    checkAiModel(o.aiModel!);
    checkApplication(o.application!);
    checkAttackExposure(o.attackExposure!);
    checkBackupDisasterRecovery(o.backupDisasterRecovery!);
    unittest.expect(o.canonicalName!, unittest.equals('foo'));
    unittest.expect(o.category!, unittest.equals('foo'));
    checkChokepoint(o.chokepoint!);
    checkCloudArmor(o.cloudArmor!);
    checkCloudDlpDataProfile(o.cloudDlpDataProfile!);
    checkCloudDlpInspection(o.cloudDlpInspection!);
    checkComplianceDetails(o.complianceDetails!);
    checkUnnamed37(o.compliances!);
    checkUnnamed38(o.connections!);
    checkUnnamed39(o.contacts!);
    checkUnnamed40(o.containers!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed41(o.dataAccessEvents!);
    checkUnnamed42(o.dataFlowEvents!);
    checkUnnamed43(o.dataRetentionDeletionEvents!);
    checkDatabase(o.database!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkDisk(o.disk!);
    unittest.expect(o.eventTime!, unittest.equals('foo'));
    checkExfiltration(o.exfiltration!);
    checkUnnamed44(o.externalSystems!);
    unittest.expect(o.externalUri!, unittest.equals('foo'));
    checkUnnamed45(o.files!);
    unittest.expect(o.findingClass!, unittest.equals('foo'));
    checkUnnamed46(o.groupMemberships!);
    checkUnnamed47(o.iamBindings!);
    checkIndicator(o.indicator!);
    checkIpRules(o.ipRules!);
    checkJob(o.job!);
    checkKernelRootkit(o.kernelRootkit!);
    checkKubernetes(o.kubernetes!);
    checkUnnamed48(o.loadBalancers!);
    checkUnnamed49(o.logEntries!);
    checkMitreAttack(o.mitreAttack!);
    unittest.expect(o.moduleName!, unittest.equals('foo'));
    unittest.expect(o.mute!, unittest.equals('foo'));
    checkMuteInfo(o.muteInfo!);
    unittest.expect(o.muteInitiator!, unittest.equals('foo'));
    unittest.expect(o.muteUpdateTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed50(o.networks!);
    unittest.expect(o.nextSteps!, unittest.equals('foo'));
    checkNotebook(o.notebook!);
    checkUnnamed51(o.orgPolicies!);
    unittest.expect(o.parent!, unittest.equals('foo'));
    unittest.expect(o.parentDisplayName!, unittest.equals('foo'));
    checkUnnamed52(o.processes!);
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    checkSecurityMarks(o.securityMarks!);
    checkSecurityPosture(o.securityPosture!);
    unittest.expect(o.severity!, unittest.equals('foo'));
    checkUnnamed53(o.sourceProperties!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkToxicCombination(o.toxicCombination!);
    checkVertexAi(o.vertexAi!);
    checkVulnerability(o.vulnerability!);
  }
  buildCounterFinding--;
}

core.int buildCounterFolder = 0;
api.Folder buildFolder() {
  final o = api.Folder();
  buildCounterFolder++;
  if (buildCounterFolder < 3) {
    o.resourceFolder = 'foo';
    o.resourceFolderDisplayName = 'foo';
  }
  buildCounterFolder--;
  return o;
}

void checkFolder(api.Folder o) {
  buildCounterFolder++;
  if (buildCounterFolder < 3) {
    unittest.expect(o.resourceFolder!, unittest.equals('foo'));
    unittest.expect(o.resourceFolderDisplayName!, unittest.equals('foo'));
  }
  buildCounterFolder--;
}

core.List<core.String> buildUnnamed54() => ['foo', 'foo'];

void checkUnnamed54(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Control> buildUnnamed55() => [buildControl(), buildControl()];

void checkUnnamed55(core.List<api.Control> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkControl(o[0]);
  checkControl(o[1]);
}

core.int buildCounterFramework = 0;
api.Framework buildFramework() {
  final o = api.Framework();
  buildCounterFramework++;
  if (buildCounterFramework < 3) {
    o.category = buildUnnamed54();
    o.controls = buildUnnamed55();
    o.displayName = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterFramework--;
  return o;
}

void checkFramework(api.Framework o) {
  buildCounterFramework++;
  if (buildCounterFramework < 3) {
    checkUnnamed54(o.category!);
    checkUnnamed55(o.controls!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterFramework--;
}

core.int buildCounterGeolocation = 0;
api.Geolocation buildGeolocation() {
  final o = api.Geolocation();
  buildCounterGeolocation++;
  if (buildCounterGeolocation < 3) {
    o.regionCode = 'foo';
  }
  buildCounterGeolocation--;
  return o;
}

void checkGeolocation(api.Geolocation o) {
  buildCounterGeolocation++;
  if (buildCounterGeolocation < 3) {
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterGeolocation--;
}

core.int buildCounterGetIamPolicyRequest = 0;
api.GetIamPolicyRequest buildGetIamPolicyRequest() {
  final o = api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

void checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options!);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
api.GetPolicyOptions buildGetPolicyOptions() {
  final o = api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

void checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(o.requestedPolicyVersion!, unittest.equals(42));
  }
  buildCounterGetPolicyOptions--;
}

core.int buildCounterGoogleCloudSecuritycenterV1BigQueryExport = 0;
api.GoogleCloudSecuritycenterV1BigQueryExport
buildGoogleCloudSecuritycenterV1BigQueryExport() {
  final o = api.GoogleCloudSecuritycenterV1BigQueryExport();
  buildCounterGoogleCloudSecuritycenterV1BigQueryExport++;
  if (buildCounterGoogleCloudSecuritycenterV1BigQueryExport < 3) {
    o.createTime = 'foo';
    o.dataset = 'foo';
    o.description = 'foo';
    o.filter = 'foo';
    o.mostRecentEditor = 'foo';
    o.name = 'foo';
    o.principal = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudSecuritycenterV1BigQueryExport--;
  return o;
}

void checkGoogleCloudSecuritycenterV1BigQueryExport(
  api.GoogleCloudSecuritycenterV1BigQueryExport o,
) {
  buildCounterGoogleCloudSecuritycenterV1BigQueryExport++;
  if (buildCounterGoogleCloudSecuritycenterV1BigQueryExport < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.dataset!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.mostRecentEditor!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.principal!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSecuritycenterV1BigQueryExport--;
}

core.List<api.Subject> buildUnnamed56() => [buildSubject(), buildSubject()];

void checkUnnamed56(core.List<api.Subject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubject(o[0]);
  checkSubject(o[1]);
}

core.int buildCounterGoogleCloudSecuritycenterV1Binding = 0;
api.GoogleCloudSecuritycenterV1Binding
buildGoogleCloudSecuritycenterV1Binding() {
  final o = api.GoogleCloudSecuritycenterV1Binding();
  buildCounterGoogleCloudSecuritycenterV1Binding++;
  if (buildCounterGoogleCloudSecuritycenterV1Binding < 3) {
    o.name = 'foo';
    o.ns = 'foo';
    o.role = buildRole();
    o.subjects = buildUnnamed56();
  }
  buildCounterGoogleCloudSecuritycenterV1Binding--;
  return o;
}

void checkGoogleCloudSecuritycenterV1Binding(
  api.GoogleCloudSecuritycenterV1Binding o,
) {
  buildCounterGoogleCloudSecuritycenterV1Binding++;
  if (buildCounterGoogleCloudSecuritycenterV1Binding < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ns!, unittest.equals('foo'));
    checkRole(o.role!);
    checkUnnamed56(o.subjects!);
  }
  buildCounterGoogleCloudSecuritycenterV1Binding--;
}

core.int buildCounterGoogleCloudSecuritycenterV1CustomConfig = 0;
api.GoogleCloudSecuritycenterV1CustomConfig
buildGoogleCloudSecuritycenterV1CustomConfig() {
  final o = api.GoogleCloudSecuritycenterV1CustomConfig();
  buildCounterGoogleCloudSecuritycenterV1CustomConfig++;
  if (buildCounterGoogleCloudSecuritycenterV1CustomConfig < 3) {
    o.customOutput = buildGoogleCloudSecuritycenterV1CustomOutputSpec();
    o.description = 'foo';
    o.predicate = buildExpr();
    o.recommendation = 'foo';
    o.resourceSelector = buildGoogleCloudSecuritycenterV1ResourceSelector();
    o.severity = 'foo';
  }
  buildCounterGoogleCloudSecuritycenterV1CustomConfig--;
  return o;
}

void checkGoogleCloudSecuritycenterV1CustomConfig(
  api.GoogleCloudSecuritycenterV1CustomConfig o,
) {
  buildCounterGoogleCloudSecuritycenterV1CustomConfig++;
  if (buildCounterGoogleCloudSecuritycenterV1CustomConfig < 3) {
    checkGoogleCloudSecuritycenterV1CustomOutputSpec(o.customOutput!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkExpr(o.predicate!);
    unittest.expect(o.recommendation!, unittest.equals('foo'));
    checkGoogleCloudSecuritycenterV1ResourceSelector(o.resourceSelector!);
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSecuritycenterV1CustomConfig--;
}

core.List<api.GoogleCloudSecuritycenterV1Property> buildUnnamed57() => [
  buildGoogleCloudSecuritycenterV1Property(),
  buildGoogleCloudSecuritycenterV1Property(),
];

void checkUnnamed57(core.List<api.GoogleCloudSecuritycenterV1Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSecuritycenterV1Property(o[0]);
  checkGoogleCloudSecuritycenterV1Property(o[1]);
}

core.int buildCounterGoogleCloudSecuritycenterV1CustomOutputSpec = 0;
api.GoogleCloudSecuritycenterV1CustomOutputSpec
buildGoogleCloudSecuritycenterV1CustomOutputSpec() {
  final o = api.GoogleCloudSecuritycenterV1CustomOutputSpec();
  buildCounterGoogleCloudSecuritycenterV1CustomOutputSpec++;
  if (buildCounterGoogleCloudSecuritycenterV1CustomOutputSpec < 3) {
    o.properties = buildUnnamed57();
  }
  buildCounterGoogleCloudSecuritycenterV1CustomOutputSpec--;
  return o;
}

void checkGoogleCloudSecuritycenterV1CustomOutputSpec(
  api.GoogleCloudSecuritycenterV1CustomOutputSpec o,
) {
  buildCounterGoogleCloudSecuritycenterV1CustomOutputSpec++;
  if (buildCounterGoogleCloudSecuritycenterV1CustomOutputSpec < 3) {
    checkUnnamed57(o.properties!);
  }
  buildCounterGoogleCloudSecuritycenterV1CustomOutputSpec--;
}

core.int
buildCounterGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule =
    0;
api.GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule
buildGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule() {
  final o =
      api.GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule();
  buildCounterGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule++;
  if (buildCounterGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule <
      3) {
    o.cloudProvider = 'foo';
    o.customConfig = buildGoogleCloudSecuritycenterV1CustomConfig();
    o.displayName = 'foo';
    o.enablementState = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule--;
  return o;
}

void
checkGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule(
  api.GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule o,
) {
  buildCounterGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule++;
  if (buildCounterGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule <
      3) {
    unittest.expect(o.cloudProvider!, unittest.equals('foo'));
    checkGoogleCloudSecuritycenterV1CustomConfig(o.customConfig!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.enablementState!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule--;
}

core.List<core.String> buildUnnamed58() => ['foo', 'foo'];

void checkUnnamed58(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudSecuritycenterV1ExternalSystem = 0;
api.GoogleCloudSecuritycenterV1ExternalSystem
buildGoogleCloudSecuritycenterV1ExternalSystem() {
  final o = api.GoogleCloudSecuritycenterV1ExternalSystem();
  buildCounterGoogleCloudSecuritycenterV1ExternalSystem++;
  if (buildCounterGoogleCloudSecuritycenterV1ExternalSystem < 3) {
    o.assignees = buildUnnamed58();
    o.caseCloseTime = 'foo';
    o.caseCreateTime = 'foo';
    o.casePriority = 'foo';
    o.caseSla = 'foo';
    o.caseUri = 'foo';
    o.externalSystemUpdateTime = 'foo';
    o.externalUid = 'foo';
    o.name = 'foo';
    o.status = 'foo';
    o.ticketInfo = buildTicketInfo();
  }
  buildCounterGoogleCloudSecuritycenterV1ExternalSystem--;
  return o;
}

void checkGoogleCloudSecuritycenterV1ExternalSystem(
  api.GoogleCloudSecuritycenterV1ExternalSystem o,
) {
  buildCounterGoogleCloudSecuritycenterV1ExternalSystem++;
  if (buildCounterGoogleCloudSecuritycenterV1ExternalSystem < 3) {
    checkUnnamed58(o.assignees!);
    unittest.expect(o.caseCloseTime!, unittest.equals('foo'));
    unittest.expect(o.caseCreateTime!, unittest.equals('foo'));
    unittest.expect(o.casePriority!, unittest.equals('foo'));
    unittest.expect(o.caseSla!, unittest.equals('foo'));
    unittest.expect(o.caseUri!, unittest.equals('foo'));
    unittest.expect(o.externalSystemUpdateTime!, unittest.equals('foo'));
    unittest.expect(o.externalUid!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    checkTicketInfo(o.ticketInfo!);
  }
  buildCounterGoogleCloudSecuritycenterV1ExternalSystem--;
}

core.int buildCounterGoogleCloudSecuritycenterV1MuteConfig = 0;
api.GoogleCloudSecuritycenterV1MuteConfig
buildGoogleCloudSecuritycenterV1MuteConfig() {
  final o = api.GoogleCloudSecuritycenterV1MuteConfig();
  buildCounterGoogleCloudSecuritycenterV1MuteConfig++;
  if (buildCounterGoogleCloudSecuritycenterV1MuteConfig < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.expiryTime = 'foo';
    o.filter = 'foo';
    o.mostRecentEditor = 'foo';
    o.name = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudSecuritycenterV1MuteConfig--;
  return o;
}

void checkGoogleCloudSecuritycenterV1MuteConfig(
  api.GoogleCloudSecuritycenterV1MuteConfig o,
) {
  buildCounterGoogleCloudSecuritycenterV1MuteConfig++;
  if (buildCounterGoogleCloudSecuritycenterV1MuteConfig < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.expiryTime!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.mostRecentEditor!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSecuritycenterV1MuteConfig--;
}

core.int buildCounterGoogleCloudSecuritycenterV1Property = 0;
api.GoogleCloudSecuritycenterV1Property
buildGoogleCloudSecuritycenterV1Property() {
  final o = api.GoogleCloudSecuritycenterV1Property();
  buildCounterGoogleCloudSecuritycenterV1Property++;
  if (buildCounterGoogleCloudSecuritycenterV1Property < 3) {
    o.name = 'foo';
    o.valueExpression = buildExpr();
  }
  buildCounterGoogleCloudSecuritycenterV1Property--;
  return o;
}

void checkGoogleCloudSecuritycenterV1Property(
  api.GoogleCloudSecuritycenterV1Property o,
) {
  buildCounterGoogleCloudSecuritycenterV1Property++;
  if (buildCounterGoogleCloudSecuritycenterV1Property < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkExpr(o.valueExpression!);
  }
  buildCounterGoogleCloudSecuritycenterV1Property--;
}

core.List<core.String> buildUnnamed59() => ['foo', 'foo'];

void checkUnnamed59(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudSecuritycenterV1ResourceSelector = 0;
api.GoogleCloudSecuritycenterV1ResourceSelector
buildGoogleCloudSecuritycenterV1ResourceSelector() {
  final o = api.GoogleCloudSecuritycenterV1ResourceSelector();
  buildCounterGoogleCloudSecuritycenterV1ResourceSelector++;
  if (buildCounterGoogleCloudSecuritycenterV1ResourceSelector < 3) {
    o.resourceTypes = buildUnnamed59();
  }
  buildCounterGoogleCloudSecuritycenterV1ResourceSelector--;
  return o;
}

void checkGoogleCloudSecuritycenterV1ResourceSelector(
  api.GoogleCloudSecuritycenterV1ResourceSelector o,
) {
  buildCounterGoogleCloudSecuritycenterV1ResourceSelector++;
  if (buildCounterGoogleCloudSecuritycenterV1ResourceSelector < 3) {
    checkUnnamed59(o.resourceTypes!);
  }
  buildCounterGoogleCloudSecuritycenterV1ResourceSelector--;
}

core.Map<core.String, core.String> buildUnnamed60() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed60(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed61() => ['foo', 'foo'];

void checkUnnamed61(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudSecuritycenterV1ResourceValueConfig = 0;
api.GoogleCloudSecuritycenterV1ResourceValueConfig
buildGoogleCloudSecuritycenterV1ResourceValueConfig() {
  final o = api.GoogleCloudSecuritycenterV1ResourceValueConfig();
  buildCounterGoogleCloudSecuritycenterV1ResourceValueConfig++;
  if (buildCounterGoogleCloudSecuritycenterV1ResourceValueConfig < 3) {
    o.cloudProvider = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.resourceLabelsSelector = buildUnnamed60();
    o.resourceType = 'foo';
    o.resourceValue = 'foo';
    o.scope = 'foo';
    o.sensitiveDataProtectionMapping =
        buildGoogleCloudSecuritycenterV1SensitiveDataProtectionMapping();
    o.tagValues = buildUnnamed61();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudSecuritycenterV1ResourceValueConfig--;
  return o;
}

void checkGoogleCloudSecuritycenterV1ResourceValueConfig(
  api.GoogleCloudSecuritycenterV1ResourceValueConfig o,
) {
  buildCounterGoogleCloudSecuritycenterV1ResourceValueConfig++;
  if (buildCounterGoogleCloudSecuritycenterV1ResourceValueConfig < 3) {
    unittest.expect(o.cloudProvider!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed60(o.resourceLabelsSelector!);
    unittest.expect(o.resourceType!, unittest.equals('foo'));
    unittest.expect(o.resourceValue!, unittest.equals('foo'));
    unittest.expect(o.scope!, unittest.equals('foo'));
    checkGoogleCloudSecuritycenterV1SensitiveDataProtectionMapping(
      o.sensitiveDataProtectionMapping!,
    );
    checkUnnamed61(o.tagValues!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSecuritycenterV1ResourceValueConfig--;
}

core.int
buildCounterGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule = 0;
api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule() {
  final o =
      api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule();
  buildCounterGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule++;
  if (buildCounterGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule <
      3) {
    o.ancestorModule = 'foo';
    o.cloudProvider = 'foo';
    o.customConfig = buildGoogleCloudSecuritycenterV1CustomConfig();
    o.displayName = 'foo';
    o.enablementState = 'foo';
    o.lastEditor = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule--;
  return o;
}

void checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
  api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule o,
) {
  buildCounterGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule++;
  if (buildCounterGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule <
      3) {
    unittest.expect(o.ancestorModule!, unittest.equals('foo'));
    unittest.expect(o.cloudProvider!, unittest.equals('foo'));
    checkGoogleCloudSecuritycenterV1CustomConfig(o.customConfig!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.enablementState!, unittest.equals('foo'));
    unittest.expect(o.lastEditor!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule--;
}

core.int buildCounterGoogleCloudSecuritycenterV1SensitiveDataProtectionMapping =
    0;
api.GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping
buildGoogleCloudSecuritycenterV1SensitiveDataProtectionMapping() {
  final o = api.GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping();
  buildCounterGoogleCloudSecuritycenterV1SensitiveDataProtectionMapping++;
  if (buildCounterGoogleCloudSecuritycenterV1SensitiveDataProtectionMapping <
      3) {
    o.highSensitivityMapping = 'foo';
    o.mediumSensitivityMapping = 'foo';
  }
  buildCounterGoogleCloudSecuritycenterV1SensitiveDataProtectionMapping--;
  return o;
}

void checkGoogleCloudSecuritycenterV1SensitiveDataProtectionMapping(
  api.GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping o,
) {
  buildCounterGoogleCloudSecuritycenterV1SensitiveDataProtectionMapping++;
  if (buildCounterGoogleCloudSecuritycenterV1SensitiveDataProtectionMapping <
      3) {
    unittest.expect(o.highSensitivityMapping!, unittest.equals('foo'));
    unittest.expect(o.mediumSensitivityMapping!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSecuritycenterV1SensitiveDataProtectionMapping--;
}

core.int buildCounterGroupAssetsRequest = 0;
api.GroupAssetsRequest buildGroupAssetsRequest() {
  final o = api.GroupAssetsRequest();
  buildCounterGroupAssetsRequest++;
  if (buildCounterGroupAssetsRequest < 3) {
    o.compareDuration = 'foo';
    o.filter = 'foo';
    o.groupBy = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.readTime = 'foo';
  }
  buildCounterGroupAssetsRequest--;
  return o;
}

void checkGroupAssetsRequest(api.GroupAssetsRequest o) {
  buildCounterGroupAssetsRequest++;
  if (buildCounterGroupAssetsRequest < 3) {
    unittest.expect(o.compareDuration!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.groupBy!, unittest.equals('foo'));
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    unittest.expect(o.readTime!, unittest.equals('foo'));
  }
  buildCounterGroupAssetsRequest--;
}

core.List<api.GroupResult> buildUnnamed62() => [
  buildGroupResult(),
  buildGroupResult(),
];

void checkUnnamed62(core.List<api.GroupResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupResult(o[0]);
  checkGroupResult(o[1]);
}

core.int buildCounterGroupAssetsResponse = 0;
api.GroupAssetsResponse buildGroupAssetsResponse() {
  final o = api.GroupAssetsResponse();
  buildCounterGroupAssetsResponse++;
  if (buildCounterGroupAssetsResponse < 3) {
    o.groupByResults = buildUnnamed62();
    o.nextPageToken = 'foo';
    o.readTime = 'foo';
    o.totalSize = 42;
  }
  buildCounterGroupAssetsResponse--;
  return o;
}

void checkGroupAssetsResponse(api.GroupAssetsResponse o) {
  buildCounterGroupAssetsResponse++;
  if (buildCounterGroupAssetsResponse < 3) {
    checkUnnamed62(o.groupByResults!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.readTime!, unittest.equals('foo'));
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterGroupAssetsResponse--;
}

core.int buildCounterGroupFindingsRequest = 0;
api.GroupFindingsRequest buildGroupFindingsRequest() {
  final o = api.GroupFindingsRequest();
  buildCounterGroupFindingsRequest++;
  if (buildCounterGroupFindingsRequest < 3) {
    o.compareDuration = 'foo';
    o.filter = 'foo';
    o.groupBy = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.readTime = 'foo';
  }
  buildCounterGroupFindingsRequest--;
  return o;
}

void checkGroupFindingsRequest(api.GroupFindingsRequest o) {
  buildCounterGroupFindingsRequest++;
  if (buildCounterGroupFindingsRequest < 3) {
    unittest.expect(o.compareDuration!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.groupBy!, unittest.equals('foo'));
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    unittest.expect(o.readTime!, unittest.equals('foo'));
  }
  buildCounterGroupFindingsRequest--;
}

core.List<api.GroupResult> buildUnnamed63() => [
  buildGroupResult(),
  buildGroupResult(),
];

void checkUnnamed63(core.List<api.GroupResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupResult(o[0]);
  checkGroupResult(o[1]);
}

core.int buildCounterGroupFindingsResponse = 0;
api.GroupFindingsResponse buildGroupFindingsResponse() {
  final o = api.GroupFindingsResponse();
  buildCounterGroupFindingsResponse++;
  if (buildCounterGroupFindingsResponse < 3) {
    o.groupByResults = buildUnnamed63();
    o.nextPageToken = 'foo';
    o.readTime = 'foo';
    o.totalSize = 42;
  }
  buildCounterGroupFindingsResponse--;
  return o;
}

void checkGroupFindingsResponse(api.GroupFindingsResponse o) {
  buildCounterGroupFindingsResponse++;
  if (buildCounterGroupFindingsResponse < 3) {
    checkUnnamed63(o.groupByResults!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.readTime!, unittest.equals('foo'));
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterGroupFindingsResponse--;
}

core.int buildCounterGroupMembership = 0;
api.GroupMembership buildGroupMembership() {
  final o = api.GroupMembership();
  buildCounterGroupMembership++;
  if (buildCounterGroupMembership < 3) {
    o.groupId = 'foo';
    o.groupType = 'foo';
  }
  buildCounterGroupMembership--;
  return o;
}

void checkGroupMembership(api.GroupMembership o) {
  buildCounterGroupMembership++;
  if (buildCounterGroupMembership < 3) {
    unittest.expect(o.groupId!, unittest.equals('foo'));
    unittest.expect(o.groupType!, unittest.equals('foo'));
  }
  buildCounterGroupMembership--;
}

core.Map<core.String, core.Object?> buildUnnamed64() => {
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

void checkUnnamed64(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.int buildCounterGroupResult = 0;
api.GroupResult buildGroupResult() {
  final o = api.GroupResult();
  buildCounterGroupResult++;
  if (buildCounterGroupResult < 3) {
    o.count = 'foo';
    o.properties = buildUnnamed64();
  }
  buildCounterGroupResult--;
  return o;
}

void checkGroupResult(api.GroupResult o) {
  buildCounterGroupResult++;
  if (buildCounterGroupResult < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    checkUnnamed64(o.properties!);
  }
  buildCounterGroupResult--;
}

core.int buildCounterIamBinding = 0;
api.IamBinding buildIamBinding() {
  final o = api.IamBinding();
  buildCounterIamBinding++;
  if (buildCounterIamBinding < 3) {
    o.action = 'foo';
    o.member = 'foo';
    o.role = 'foo';
  }
  buildCounterIamBinding--;
  return o;
}

void checkIamBinding(api.IamBinding o) {
  buildCounterIamBinding++;
  if (buildCounterIamBinding < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.member!, unittest.equals('foo'));
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterIamBinding--;
}

core.int buildCounterIamPolicy = 0;
api.IamPolicy buildIamPolicy() {
  final o = api.IamPolicy();
  buildCounterIamPolicy++;
  if (buildCounterIamPolicy < 3) {
    o.policyBlob = 'foo';
  }
  buildCounterIamPolicy--;
  return o;
}

void checkIamPolicy(api.IamPolicy o) {
  buildCounterIamPolicy++;
  if (buildCounterIamPolicy < 3) {
    unittest.expect(o.policyBlob!, unittest.equals('foo'));
  }
  buildCounterIamPolicy--;
}

core.List<core.String> buildUnnamed65() => ['foo', 'foo'];

void checkUnnamed65(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed66() => ['foo', 'foo'];

void checkUnnamed66(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ProcessSignature> buildUnnamed67() => [
  buildProcessSignature(),
  buildProcessSignature(),
];

void checkUnnamed67(core.List<api.ProcessSignature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProcessSignature(o[0]);
  checkProcessSignature(o[1]);
}

core.List<core.String> buildUnnamed68() => ['foo', 'foo'];

void checkUnnamed68(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIndicator = 0;
api.Indicator buildIndicator() {
  final o = api.Indicator();
  buildCounterIndicator++;
  if (buildCounterIndicator < 3) {
    o.domains = buildUnnamed65();
    o.ipAddresses = buildUnnamed66();
    o.signatures = buildUnnamed67();
    o.uris = buildUnnamed68();
  }
  buildCounterIndicator--;
  return o;
}

void checkIndicator(api.Indicator o) {
  buildCounterIndicator++;
  if (buildCounterIndicator < 3) {
    checkUnnamed65(o.domains!);
    checkUnnamed66(o.ipAddresses!);
    checkUnnamed67(o.signatures!);
    checkUnnamed68(o.uris!);
  }
  buildCounterIndicator--;
}

core.List<api.PortRange> buildUnnamed69() => [
  buildPortRange(),
  buildPortRange(),
];

void checkUnnamed69(core.List<api.PortRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPortRange(o[0]);
  checkPortRange(o[1]);
}

core.int buildCounterIpRule = 0;
api.IpRule buildIpRule() {
  final o = api.IpRule();
  buildCounterIpRule++;
  if (buildCounterIpRule < 3) {
    o.portRanges = buildUnnamed69();
    o.protocol = 'foo';
  }
  buildCounterIpRule--;
  return o;
}

void checkIpRule(api.IpRule o) {
  buildCounterIpRule++;
  if (buildCounterIpRule < 3) {
    checkUnnamed69(o.portRanges!);
    unittest.expect(o.protocol!, unittest.equals('foo'));
  }
  buildCounterIpRule--;
}

core.List<core.String> buildUnnamed70() => ['foo', 'foo'];

void checkUnnamed70(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed71() => ['foo', 'foo'];

void checkUnnamed71(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed72() => ['foo', 'foo'];

void checkUnnamed72(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIpRules = 0;
api.IpRules buildIpRules() {
  final o = api.IpRules();
  buildCounterIpRules++;
  if (buildCounterIpRules < 3) {
    o.allowed = buildAllowed();
    o.denied = buildDenied();
    o.destinationIpRanges = buildUnnamed70();
    o.direction = 'foo';
    o.exposedServices = buildUnnamed71();
    o.sourceIpRanges = buildUnnamed72();
  }
  buildCounterIpRules--;
  return o;
}

void checkIpRules(api.IpRules o) {
  buildCounterIpRules++;
  if (buildCounterIpRules < 3) {
    checkAllowed(o.allowed!);
    checkDenied(o.denied!);
    checkUnnamed70(o.destinationIpRanges!);
    unittest.expect(o.direction!, unittest.equals('foo'));
    checkUnnamed71(o.exposedServices!);
    checkUnnamed72(o.sourceIpRanges!);
  }
  buildCounterIpRules--;
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  final o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.errorCode = 42;
    o.location = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(o.errorCode!, unittest.equals(42));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterJob--;
}

core.int buildCounterKernelRootkit = 0;
api.KernelRootkit buildKernelRootkit() {
  final o = api.KernelRootkit();
  buildCounterKernelRootkit++;
  if (buildCounterKernelRootkit < 3) {
    o.name = 'foo';
    o.unexpectedCodeModification = true;
    o.unexpectedFtraceHandler = true;
    o.unexpectedInterruptHandler = true;
    o.unexpectedKernelCodePages = true;
    o.unexpectedKprobeHandler = true;
    o.unexpectedProcessesInRunqueue = true;
    o.unexpectedReadOnlyDataModification = true;
    o.unexpectedSystemCallHandler = true;
  }
  buildCounterKernelRootkit--;
  return o;
}

void checkKernelRootkit(api.KernelRootkit o) {
  buildCounterKernelRootkit++;
  if (buildCounterKernelRootkit < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.unexpectedCodeModification!, unittest.isTrue);
    unittest.expect(o.unexpectedFtraceHandler!, unittest.isTrue);
    unittest.expect(o.unexpectedInterruptHandler!, unittest.isTrue);
    unittest.expect(o.unexpectedKernelCodePages!, unittest.isTrue);
    unittest.expect(o.unexpectedKprobeHandler!, unittest.isTrue);
    unittest.expect(o.unexpectedProcessesInRunqueue!, unittest.isTrue);
    unittest.expect(o.unexpectedReadOnlyDataModification!, unittest.isTrue);
    unittest.expect(o.unexpectedSystemCallHandler!, unittest.isTrue);
  }
  buildCounterKernelRootkit--;
}

core.List<api.AccessReview> buildUnnamed73() => [
  buildAccessReview(),
  buildAccessReview(),
];

void checkUnnamed73(core.List<api.AccessReview> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessReview(o[0]);
  checkAccessReview(o[1]);
}

core.List<api.GoogleCloudSecuritycenterV1Binding> buildUnnamed74() => [
  buildGoogleCloudSecuritycenterV1Binding(),
  buildGoogleCloudSecuritycenterV1Binding(),
];

void checkUnnamed74(core.List<api.GoogleCloudSecuritycenterV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSecuritycenterV1Binding(o[0]);
  checkGoogleCloudSecuritycenterV1Binding(o[1]);
}

core.List<api.NodePool> buildUnnamed75() => [buildNodePool(), buildNodePool()];

void checkUnnamed75(core.List<api.NodePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodePool(o[0]);
  checkNodePool(o[1]);
}

core.List<api.Node> buildUnnamed76() => [buildNode(), buildNode()];

void checkUnnamed76(core.List<api.Node> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNode(o[0]);
  checkNode(o[1]);
}

core.List<api.Object> buildUnnamed77() => [buildObject(), buildObject()];

void checkUnnamed77(core.List<api.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObject(o[0]);
  checkObject(o[1]);
}

core.List<api.Pod> buildUnnamed78() => [buildPod(), buildPod()];

void checkUnnamed78(core.List<api.Pod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPod(o[0]);
  checkPod(o[1]);
}

core.List<api.Role> buildUnnamed79() => [buildRole(), buildRole()];

void checkUnnamed79(core.List<api.Role> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRole(o[0]);
  checkRole(o[1]);
}

core.int buildCounterKubernetes = 0;
api.Kubernetes buildKubernetes() {
  final o = api.Kubernetes();
  buildCounterKubernetes++;
  if (buildCounterKubernetes < 3) {
    o.accessReviews = buildUnnamed73();
    o.bindings = buildUnnamed74();
    o.nodePools = buildUnnamed75();
    o.nodes = buildUnnamed76();
    o.objects = buildUnnamed77();
    o.pods = buildUnnamed78();
    o.roles = buildUnnamed79();
  }
  buildCounterKubernetes--;
  return o;
}

void checkKubernetes(api.Kubernetes o) {
  buildCounterKubernetes++;
  if (buildCounterKubernetes < 3) {
    checkUnnamed73(o.accessReviews!);
    checkUnnamed74(o.bindings!);
    checkUnnamed75(o.nodePools!);
    checkUnnamed76(o.nodes!);
    checkUnnamed77(o.objects!);
    checkUnnamed78(o.pods!);
    checkUnnamed79(o.roles!);
  }
  buildCounterKubernetes--;
}

core.int buildCounterLabel = 0;
api.Label buildLabel() {
  final o = api.Label();
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterLabel--;
  return o;
}

void checkLabel(api.Label o) {
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterLabel--;
}

core.List<api.ListAssetsResult> buildUnnamed80() => [
  buildListAssetsResult(),
  buildListAssetsResult(),
];

void checkUnnamed80(core.List<api.ListAssetsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListAssetsResult(o[0]);
  checkListAssetsResult(o[1]);
}

core.int buildCounterListAssetsResponse = 0;
api.ListAssetsResponse buildListAssetsResponse() {
  final o = api.ListAssetsResponse();
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    o.listAssetsResults = buildUnnamed80();
    o.nextPageToken = 'foo';
    o.readTime = 'foo';
    o.totalSize = 42;
  }
  buildCounterListAssetsResponse--;
  return o;
}

void checkListAssetsResponse(api.ListAssetsResponse o) {
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    checkUnnamed80(o.listAssetsResults!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.readTime!, unittest.equals('foo'));
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterListAssetsResponse--;
}

core.int buildCounterListAssetsResult = 0;
api.ListAssetsResult buildListAssetsResult() {
  final o = api.ListAssetsResult();
  buildCounterListAssetsResult++;
  if (buildCounterListAssetsResult < 3) {
    o.asset = buildAsset();
    o.stateChange = 'foo';
  }
  buildCounterListAssetsResult--;
  return o;
}

void checkListAssetsResult(api.ListAssetsResult o) {
  buildCounterListAssetsResult++;
  if (buildCounterListAssetsResult < 3) {
    checkAsset(o.asset!);
    unittest.expect(o.stateChange!, unittest.equals('foo'));
  }
  buildCounterListAssetsResult--;
}

core.List<api.AttackPath> buildUnnamed81() => [
  buildAttackPath(),
  buildAttackPath(),
];

void checkUnnamed81(core.List<api.AttackPath> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttackPath(o[0]);
  checkAttackPath(o[1]);
}

core.int buildCounterListAttackPathsResponse = 0;
api.ListAttackPathsResponse buildListAttackPathsResponse() {
  final o = api.ListAttackPathsResponse();
  buildCounterListAttackPathsResponse++;
  if (buildCounterListAttackPathsResponse < 3) {
    o.attackPaths = buildUnnamed81();
    o.nextPageToken = 'foo';
  }
  buildCounterListAttackPathsResponse--;
  return o;
}

void checkListAttackPathsResponse(api.ListAttackPathsResponse o) {
  buildCounterListAttackPathsResponse++;
  if (buildCounterListAttackPathsResponse < 3) {
    checkUnnamed81(o.attackPaths!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAttackPathsResponse--;
}

core.List<api.GoogleCloudSecuritycenterV1BigQueryExport> buildUnnamed82() => [
  buildGoogleCloudSecuritycenterV1BigQueryExport(),
  buildGoogleCloudSecuritycenterV1BigQueryExport(),
];

void checkUnnamed82(
  core.List<api.GoogleCloudSecuritycenterV1BigQueryExport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSecuritycenterV1BigQueryExport(o[0]);
  checkGoogleCloudSecuritycenterV1BigQueryExport(o[1]);
}

core.int buildCounterListBigQueryExportsResponse = 0;
api.ListBigQueryExportsResponse buildListBigQueryExportsResponse() {
  final o = api.ListBigQueryExportsResponse();
  buildCounterListBigQueryExportsResponse++;
  if (buildCounterListBigQueryExportsResponse < 3) {
    o.bigQueryExports = buildUnnamed82();
    o.nextPageToken = 'foo';
  }
  buildCounterListBigQueryExportsResponse--;
  return o;
}

void checkListBigQueryExportsResponse(api.ListBigQueryExportsResponse o) {
  buildCounterListBigQueryExportsResponse++;
  if (buildCounterListBigQueryExportsResponse < 3) {
    checkUnnamed82(o.bigQueryExports!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListBigQueryExportsResponse--;
}

core.List<api.EventThreatDetectionCustomModule> buildUnnamed83() => [
  buildEventThreatDetectionCustomModule(),
  buildEventThreatDetectionCustomModule(),
];

void checkUnnamed83(core.List<api.EventThreatDetectionCustomModule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventThreatDetectionCustomModule(o[0]);
  checkEventThreatDetectionCustomModule(o[1]);
}

core.int buildCounterListDescendantEventThreatDetectionCustomModulesResponse =
    0;
api.ListDescendantEventThreatDetectionCustomModulesResponse
buildListDescendantEventThreatDetectionCustomModulesResponse() {
  final o = api.ListDescendantEventThreatDetectionCustomModulesResponse();
  buildCounterListDescendantEventThreatDetectionCustomModulesResponse++;
  if (buildCounterListDescendantEventThreatDetectionCustomModulesResponse < 3) {
    o.eventThreatDetectionCustomModules = buildUnnamed83();
    o.nextPageToken = 'foo';
  }
  buildCounterListDescendantEventThreatDetectionCustomModulesResponse--;
  return o;
}

void checkListDescendantEventThreatDetectionCustomModulesResponse(
  api.ListDescendantEventThreatDetectionCustomModulesResponse o,
) {
  buildCounterListDescendantEventThreatDetectionCustomModulesResponse++;
  if (buildCounterListDescendantEventThreatDetectionCustomModulesResponse < 3) {
    checkUnnamed83(o.eventThreatDetectionCustomModules!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDescendantEventThreatDetectionCustomModulesResponse--;
}

core.List<api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>
buildUnnamed84() => [
  buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(),
  buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(),
];

void checkUnnamed84(
  core.List<api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(o[0]);
  checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(o[1]);
}

core.int
buildCounterListDescendantSecurityHealthAnalyticsCustomModulesResponse = 0;
api.ListDescendantSecurityHealthAnalyticsCustomModulesResponse
buildListDescendantSecurityHealthAnalyticsCustomModulesResponse() {
  final o = api.ListDescendantSecurityHealthAnalyticsCustomModulesResponse();
  buildCounterListDescendantSecurityHealthAnalyticsCustomModulesResponse++;
  if (buildCounterListDescendantSecurityHealthAnalyticsCustomModulesResponse <
      3) {
    o.nextPageToken = 'foo';
    o.securityHealthAnalyticsCustomModules = buildUnnamed84();
  }
  buildCounterListDescendantSecurityHealthAnalyticsCustomModulesResponse--;
  return o;
}

void checkListDescendantSecurityHealthAnalyticsCustomModulesResponse(
  api.ListDescendantSecurityHealthAnalyticsCustomModulesResponse o,
) {
  buildCounterListDescendantSecurityHealthAnalyticsCustomModulesResponse++;
  if (buildCounterListDescendantSecurityHealthAnalyticsCustomModulesResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed84(o.securityHealthAnalyticsCustomModules!);
  }
  buildCounterListDescendantSecurityHealthAnalyticsCustomModulesResponse--;
}

core.List<api.EffectiveEventThreatDetectionCustomModule> buildUnnamed85() => [
  buildEffectiveEventThreatDetectionCustomModule(),
  buildEffectiveEventThreatDetectionCustomModule(),
];

void checkUnnamed85(
  core.List<api.EffectiveEventThreatDetectionCustomModule> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkEffectiveEventThreatDetectionCustomModule(o[0]);
  checkEffectiveEventThreatDetectionCustomModule(o[1]);
}

core.int buildCounterListEffectiveEventThreatDetectionCustomModulesResponse = 0;
api.ListEffectiveEventThreatDetectionCustomModulesResponse
buildListEffectiveEventThreatDetectionCustomModulesResponse() {
  final o = api.ListEffectiveEventThreatDetectionCustomModulesResponse();
  buildCounterListEffectiveEventThreatDetectionCustomModulesResponse++;
  if (buildCounterListEffectiveEventThreatDetectionCustomModulesResponse < 3) {
    o.effectiveEventThreatDetectionCustomModules = buildUnnamed85();
    o.nextPageToken = 'foo';
  }
  buildCounterListEffectiveEventThreatDetectionCustomModulesResponse--;
  return o;
}

void checkListEffectiveEventThreatDetectionCustomModulesResponse(
  api.ListEffectiveEventThreatDetectionCustomModulesResponse o,
) {
  buildCounterListEffectiveEventThreatDetectionCustomModulesResponse++;
  if (buildCounterListEffectiveEventThreatDetectionCustomModulesResponse < 3) {
    checkUnnamed85(o.effectiveEventThreatDetectionCustomModules!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListEffectiveEventThreatDetectionCustomModulesResponse--;
}

core.List<
  api.GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule
>
buildUnnamed86() => [
  buildGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule(),
  buildGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule(),
];

void checkUnnamed86(
  core.List<
    api.GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule(
    o[0],
  );
  checkGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule(
    o[1],
  );
}

core.int buildCounterListEffectiveSecurityHealthAnalyticsCustomModulesResponse =
    0;
api.ListEffectiveSecurityHealthAnalyticsCustomModulesResponse
buildListEffectiveSecurityHealthAnalyticsCustomModulesResponse() {
  final o = api.ListEffectiveSecurityHealthAnalyticsCustomModulesResponse();
  buildCounterListEffectiveSecurityHealthAnalyticsCustomModulesResponse++;
  if (buildCounterListEffectiveSecurityHealthAnalyticsCustomModulesResponse <
      3) {
    o.effectiveSecurityHealthAnalyticsCustomModules = buildUnnamed86();
    o.nextPageToken = 'foo';
  }
  buildCounterListEffectiveSecurityHealthAnalyticsCustomModulesResponse--;
  return o;
}

void checkListEffectiveSecurityHealthAnalyticsCustomModulesResponse(
  api.ListEffectiveSecurityHealthAnalyticsCustomModulesResponse o,
) {
  buildCounterListEffectiveSecurityHealthAnalyticsCustomModulesResponse++;
  if (buildCounterListEffectiveSecurityHealthAnalyticsCustomModulesResponse <
      3) {
    checkUnnamed86(o.effectiveSecurityHealthAnalyticsCustomModules!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListEffectiveSecurityHealthAnalyticsCustomModulesResponse--;
}

core.List<api.EventThreatDetectionCustomModule> buildUnnamed87() => [
  buildEventThreatDetectionCustomModule(),
  buildEventThreatDetectionCustomModule(),
];

void checkUnnamed87(core.List<api.EventThreatDetectionCustomModule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventThreatDetectionCustomModule(o[0]);
  checkEventThreatDetectionCustomModule(o[1]);
}

core.int buildCounterListEventThreatDetectionCustomModulesResponse = 0;
api.ListEventThreatDetectionCustomModulesResponse
buildListEventThreatDetectionCustomModulesResponse() {
  final o = api.ListEventThreatDetectionCustomModulesResponse();
  buildCounterListEventThreatDetectionCustomModulesResponse++;
  if (buildCounterListEventThreatDetectionCustomModulesResponse < 3) {
    o.eventThreatDetectionCustomModules = buildUnnamed87();
    o.nextPageToken = 'foo';
  }
  buildCounterListEventThreatDetectionCustomModulesResponse--;
  return o;
}

void checkListEventThreatDetectionCustomModulesResponse(
  api.ListEventThreatDetectionCustomModulesResponse o,
) {
  buildCounterListEventThreatDetectionCustomModulesResponse++;
  if (buildCounterListEventThreatDetectionCustomModulesResponse < 3) {
    checkUnnamed87(o.eventThreatDetectionCustomModules!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListEventThreatDetectionCustomModulesResponse--;
}

core.List<api.ListFindingsResult> buildUnnamed88() => [
  buildListFindingsResult(),
  buildListFindingsResult(),
];

void checkUnnamed88(core.List<api.ListFindingsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListFindingsResult(o[0]);
  checkListFindingsResult(o[1]);
}

core.int buildCounterListFindingsResponse = 0;
api.ListFindingsResponse buildListFindingsResponse() {
  final o = api.ListFindingsResponse();
  buildCounterListFindingsResponse++;
  if (buildCounterListFindingsResponse < 3) {
    o.listFindingsResults = buildUnnamed88();
    o.nextPageToken = 'foo';
    o.readTime = 'foo';
    o.totalSize = 42;
  }
  buildCounterListFindingsResponse--;
  return o;
}

void checkListFindingsResponse(api.ListFindingsResponse o) {
  buildCounterListFindingsResponse++;
  if (buildCounterListFindingsResponse < 3) {
    checkUnnamed88(o.listFindingsResults!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.readTime!, unittest.equals('foo'));
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterListFindingsResponse--;
}

core.int buildCounterListFindingsResult = 0;
api.ListFindingsResult buildListFindingsResult() {
  final o = api.ListFindingsResult();
  buildCounterListFindingsResult++;
  if (buildCounterListFindingsResult < 3) {
    o.finding = buildFinding();
    o.resource = buildResource();
    o.stateChange = 'foo';
  }
  buildCounterListFindingsResult--;
  return o;
}

void checkListFindingsResult(api.ListFindingsResult o) {
  buildCounterListFindingsResult++;
  if (buildCounterListFindingsResult < 3) {
    checkFinding(o.finding!);
    checkResource(o.resource!);
    unittest.expect(o.stateChange!, unittest.equals('foo'));
  }
  buildCounterListFindingsResult--;
}

core.List<api.GoogleCloudSecuritycenterV1MuteConfig> buildUnnamed89() => [
  buildGoogleCloudSecuritycenterV1MuteConfig(),
  buildGoogleCloudSecuritycenterV1MuteConfig(),
];

void checkUnnamed89(core.List<api.GoogleCloudSecuritycenterV1MuteConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSecuritycenterV1MuteConfig(o[0]);
  checkGoogleCloudSecuritycenterV1MuteConfig(o[1]);
}

core.int buildCounterListMuteConfigsResponse = 0;
api.ListMuteConfigsResponse buildListMuteConfigsResponse() {
  final o = api.ListMuteConfigsResponse();
  buildCounterListMuteConfigsResponse++;
  if (buildCounterListMuteConfigsResponse < 3) {
    o.muteConfigs = buildUnnamed89();
    o.nextPageToken = 'foo';
  }
  buildCounterListMuteConfigsResponse--;
  return o;
}

void checkListMuteConfigsResponse(api.ListMuteConfigsResponse o) {
  buildCounterListMuteConfigsResponse++;
  if (buildCounterListMuteConfigsResponse < 3) {
    checkUnnamed89(o.muteConfigs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListMuteConfigsResponse--;
}

core.List<api.NotificationConfig> buildUnnamed90() => [
  buildNotificationConfig(),
  buildNotificationConfig(),
];

void checkUnnamed90(core.List<api.NotificationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotificationConfig(o[0]);
  checkNotificationConfig(o[1]);
}

core.int buildCounterListNotificationConfigsResponse = 0;
api.ListNotificationConfigsResponse buildListNotificationConfigsResponse() {
  final o = api.ListNotificationConfigsResponse();
  buildCounterListNotificationConfigsResponse++;
  if (buildCounterListNotificationConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.notificationConfigs = buildUnnamed90();
  }
  buildCounterListNotificationConfigsResponse--;
  return o;
}

void checkListNotificationConfigsResponse(
  api.ListNotificationConfigsResponse o,
) {
  buildCounterListNotificationConfigsResponse++;
  if (buildCounterListNotificationConfigsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed90(o.notificationConfigs!);
  }
  buildCounterListNotificationConfigsResponse--;
}

core.List<api.Operation> buildUnnamed91() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed91(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed91();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed91(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.GoogleCloudSecuritycenterV1ResourceValueConfig>
buildUnnamed92() => [
  buildGoogleCloudSecuritycenterV1ResourceValueConfig(),
  buildGoogleCloudSecuritycenterV1ResourceValueConfig(),
];

void checkUnnamed92(
  core.List<api.GoogleCloudSecuritycenterV1ResourceValueConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSecuritycenterV1ResourceValueConfig(o[0]);
  checkGoogleCloudSecuritycenterV1ResourceValueConfig(o[1]);
}

core.int buildCounterListResourceValueConfigsResponse = 0;
api.ListResourceValueConfigsResponse buildListResourceValueConfigsResponse() {
  final o = api.ListResourceValueConfigsResponse();
  buildCounterListResourceValueConfigsResponse++;
  if (buildCounterListResourceValueConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.resourceValueConfigs = buildUnnamed92();
  }
  buildCounterListResourceValueConfigsResponse--;
  return o;
}

void checkListResourceValueConfigsResponse(
  api.ListResourceValueConfigsResponse o,
) {
  buildCounterListResourceValueConfigsResponse++;
  if (buildCounterListResourceValueConfigsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed92(o.resourceValueConfigs!);
  }
  buildCounterListResourceValueConfigsResponse--;
}

core.List<api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>
buildUnnamed93() => [
  buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(),
  buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(),
];

void checkUnnamed93(
  core.List<api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(o[0]);
  checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(o[1]);
}

core.int buildCounterListSecurityHealthAnalyticsCustomModulesResponse = 0;
api.ListSecurityHealthAnalyticsCustomModulesResponse
buildListSecurityHealthAnalyticsCustomModulesResponse() {
  final o = api.ListSecurityHealthAnalyticsCustomModulesResponse();
  buildCounterListSecurityHealthAnalyticsCustomModulesResponse++;
  if (buildCounterListSecurityHealthAnalyticsCustomModulesResponse < 3) {
    o.nextPageToken = 'foo';
    o.securityHealthAnalyticsCustomModules = buildUnnamed93();
  }
  buildCounterListSecurityHealthAnalyticsCustomModulesResponse--;
  return o;
}

void checkListSecurityHealthAnalyticsCustomModulesResponse(
  api.ListSecurityHealthAnalyticsCustomModulesResponse o,
) {
  buildCounterListSecurityHealthAnalyticsCustomModulesResponse++;
  if (buildCounterListSecurityHealthAnalyticsCustomModulesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed93(o.securityHealthAnalyticsCustomModules!);
  }
  buildCounterListSecurityHealthAnalyticsCustomModulesResponse--;
}

core.List<api.Source> buildUnnamed94() => [buildSource(), buildSource()];

void checkUnnamed94(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterListSourcesResponse = 0;
api.ListSourcesResponse buildListSourcesResponse() {
  final o = api.ListSourcesResponse();
  buildCounterListSourcesResponse++;
  if (buildCounterListSourcesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sources = buildUnnamed94();
  }
  buildCounterListSourcesResponse--;
  return o;
}

void checkListSourcesResponse(api.ListSourcesResponse o) {
  buildCounterListSourcesResponse++;
  if (buildCounterListSourcesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed94(o.sources!);
  }
  buildCounterListSourcesResponse--;
}

core.List<api.ValuedResource> buildUnnamed95() => [
  buildValuedResource(),
  buildValuedResource(),
];

void checkUnnamed95(core.List<api.ValuedResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValuedResource(o[0]);
  checkValuedResource(o[1]);
}

core.int buildCounterListValuedResourcesResponse = 0;
api.ListValuedResourcesResponse buildListValuedResourcesResponse() {
  final o = api.ListValuedResourcesResponse();
  buildCounterListValuedResourcesResponse++;
  if (buildCounterListValuedResourcesResponse < 3) {
    o.nextPageToken = 'foo';
    o.totalSize = 42;
    o.valuedResources = buildUnnamed95();
  }
  buildCounterListValuedResourcesResponse--;
  return o;
}

void checkListValuedResourcesResponse(api.ListValuedResourcesResponse o) {
  buildCounterListValuedResourcesResponse++;
  if (buildCounterListValuedResourcesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.totalSize!, unittest.equals(42));
    checkUnnamed95(o.valuedResources!);
  }
  buildCounterListValuedResourcesResponse--;
}

core.int buildCounterLoadBalancer = 0;
api.LoadBalancer buildLoadBalancer() {
  final o = api.LoadBalancer();
  buildCounterLoadBalancer++;
  if (buildCounterLoadBalancer < 3) {
    o.name = 'foo';
  }
  buildCounterLoadBalancer--;
  return o;
}

void checkLoadBalancer(api.LoadBalancer o) {
  buildCounterLoadBalancer++;
  if (buildCounterLoadBalancer < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLoadBalancer--;
}

core.int buildCounterLogEntry = 0;
api.LogEntry buildLogEntry() {
  final o = api.LogEntry();
  buildCounterLogEntry++;
  if (buildCounterLogEntry < 3) {
    o.cloudLoggingEntry = buildCloudLoggingEntry();
  }
  buildCounterLogEntry--;
  return o;
}

void checkLogEntry(api.LogEntry o) {
  buildCounterLogEntry++;
  if (buildCounterLogEntry < 3) {
    checkCloudLoggingEntry(o.cloudLoggingEntry!);
  }
  buildCounterLogEntry--;
}

core.List<api.Detection> buildUnnamed96() => [
  buildDetection(),
  buildDetection(),
];

void checkUnnamed96(core.List<api.Detection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetection(o[0]);
  checkDetection(o[1]);
}

core.int buildCounterMemoryHashSignature = 0;
api.MemoryHashSignature buildMemoryHashSignature() {
  final o = api.MemoryHashSignature();
  buildCounterMemoryHashSignature++;
  if (buildCounterMemoryHashSignature < 3) {
    o.binaryFamily = 'foo';
    o.detections = buildUnnamed96();
  }
  buildCounterMemoryHashSignature--;
  return o;
}

void checkMemoryHashSignature(api.MemoryHashSignature o) {
  buildCounterMemoryHashSignature++;
  if (buildCounterMemoryHashSignature < 3) {
    unittest.expect(o.binaryFamily!, unittest.equals('foo'));
    checkUnnamed96(o.detections!);
  }
  buildCounterMemoryHashSignature--;
}

core.List<core.String> buildUnnamed97() => ['foo', 'foo'];

void checkUnnamed97(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed98() => ['foo', 'foo'];

void checkUnnamed98(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed99() => ['foo', 'foo'];

void checkUnnamed99(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMitreAttack = 0;
api.MitreAttack buildMitreAttack() {
  final o = api.MitreAttack();
  buildCounterMitreAttack++;
  if (buildCounterMitreAttack < 3) {
    o.additionalTactics = buildUnnamed97();
    o.additionalTechniques = buildUnnamed98();
    o.primaryTactic = 'foo';
    o.primaryTechniques = buildUnnamed99();
    o.version = 'foo';
  }
  buildCounterMitreAttack--;
  return o;
}

void checkMitreAttack(api.MitreAttack o) {
  buildCounterMitreAttack++;
  if (buildCounterMitreAttack < 3) {
    checkUnnamed97(o.additionalTactics!);
    checkUnnamed98(o.additionalTechniques!);
    unittest.expect(o.primaryTactic!, unittest.equals('foo'));
    checkUnnamed99(o.primaryTechniques!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterMitreAttack--;
}

core.List<api.DynamicMuteRecord> buildUnnamed100() => [
  buildDynamicMuteRecord(),
  buildDynamicMuteRecord(),
];

void checkUnnamed100(core.List<api.DynamicMuteRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDynamicMuteRecord(o[0]);
  checkDynamicMuteRecord(o[1]);
}

core.int buildCounterMuteInfo = 0;
api.MuteInfo buildMuteInfo() {
  final o = api.MuteInfo();
  buildCounterMuteInfo++;
  if (buildCounterMuteInfo < 3) {
    o.dynamicMuteRecords = buildUnnamed100();
    o.staticMute = buildStaticMute();
  }
  buildCounterMuteInfo--;
  return o;
}

void checkMuteInfo(api.MuteInfo o) {
  buildCounterMuteInfo++;
  if (buildCounterMuteInfo < 3) {
    checkUnnamed100(o.dynamicMuteRecords!);
    checkStaticMute(o.staticMute!);
  }
  buildCounterMuteInfo--;
}

core.int buildCounterNetwork = 0;
api.Network buildNetwork() {
  final o = api.Network();
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    o.name = 'foo';
  }
  buildCounterNetwork--;
  return o;
}

void checkNetwork(api.Network o) {
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterNetwork--;
}

core.int buildCounterNode = 0;
api.Node buildNode() {
  final o = api.Node();
  buildCounterNode++;
  if (buildCounterNode < 3) {
    o.name = 'foo';
  }
  buildCounterNode--;
  return o;
}

void checkNode(api.Node o) {
  buildCounterNode++;
  if (buildCounterNode < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterNode--;
}

core.List<api.Node> buildUnnamed101() => [buildNode(), buildNode()];

void checkUnnamed101(core.List<api.Node> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNode(o[0]);
  checkNode(o[1]);
}

core.int buildCounterNodePool = 0;
api.NodePool buildNodePool() {
  final o = api.NodePool();
  buildCounterNodePool++;
  if (buildCounterNodePool < 3) {
    o.name = 'foo';
    o.nodes = buildUnnamed101();
  }
  buildCounterNodePool--;
  return o;
}

void checkNodePool(api.NodePool o) {
  buildCounterNodePool++;
  if (buildCounterNodePool < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed101(o.nodes!);
  }
  buildCounterNodePool--;
}

core.int buildCounterNotebook = 0;
api.Notebook buildNotebook() {
  final o = api.Notebook();
  buildCounterNotebook++;
  if (buildCounterNotebook < 3) {
    o.lastAuthor = 'foo';
    o.name = 'foo';
    o.notebookUpdateTime = 'foo';
    o.service = 'foo';
  }
  buildCounterNotebook--;
  return o;
}

void checkNotebook(api.Notebook o) {
  buildCounterNotebook++;
  if (buildCounterNotebook < 3) {
    unittest.expect(o.lastAuthor!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.notebookUpdateTime!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterNotebook--;
}

core.int buildCounterNotificationConfig = 0;
api.NotificationConfig buildNotificationConfig() {
  final o = api.NotificationConfig();
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.pubsubTopic = 'foo';
    o.serviceAccount = 'foo';
    o.streamingConfig = buildStreamingConfig();
  }
  buildCounterNotificationConfig--;
  return o;
}

void checkNotificationConfig(api.NotificationConfig o) {
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.pubsubTopic!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    checkStreamingConfig(o.streamingConfig!);
  }
  buildCounterNotificationConfig--;
}

core.List<api.Container> buildUnnamed102() => [
  buildContainer(),
  buildContainer(),
];

void checkUnnamed102(core.List<api.Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainer(o[0]);
  checkContainer(o[1]);
}

core.int buildCounterObject = 0;
api.Object buildObject() {
  final o = api.Object();
  buildCounterObject++;
  if (buildCounterObject < 3) {
    o.containers = buildUnnamed102();
    o.group = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.ns = 'foo';
  }
  buildCounterObject--;
  return o;
}

void checkObject(api.Object o) {
  buildCounterObject++;
  if (buildCounterObject < 3) {
    checkUnnamed102(o.containers!);
    unittest.expect(o.group!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ns!, unittest.equals('foo'));
  }
  buildCounterObject--;
}

core.Map<core.String, core.Object?> buildUnnamed103() => {
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

void checkUnnamed103(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted11['bool'], unittest.equals(true));
  unittest.expect(casted11['string'], unittest.equals('foo'));
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted12['bool'], unittest.equals(true));
  unittest.expect(casted12['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed104() => {
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

void checkUnnamed104(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted13['bool'], unittest.equals(true));
  unittest.expect(casted13['string'], unittest.equals('foo'));
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted14['bool'], unittest.equals(true));
  unittest.expect(casted14['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed103();
    o.name = 'foo';
    o.response = buildUnnamed104();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed103(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed104(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOrgPolicy = 0;
api.OrgPolicy buildOrgPolicy() {
  final o = api.OrgPolicy();
  buildCounterOrgPolicy++;
  if (buildCounterOrgPolicy < 3) {
    o.name = 'foo';
  }
  buildCounterOrgPolicy--;
  return o;
}

void checkOrgPolicy(api.OrgPolicy o) {
  buildCounterOrgPolicy++;
  if (buildCounterOrgPolicy < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterOrgPolicy--;
}

core.int buildCounterOrganizationSettings = 0;
api.OrganizationSettings buildOrganizationSettings() {
  final o = api.OrganizationSettings();
  buildCounterOrganizationSettings++;
  if (buildCounterOrganizationSettings < 3) {
    o.assetDiscoveryConfig = buildAssetDiscoveryConfig();
    o.enableAssetDiscovery = true;
    o.name = 'foo';
  }
  buildCounterOrganizationSettings--;
  return o;
}

void checkOrganizationSettings(api.OrganizationSettings o) {
  buildCounterOrganizationSettings++;
  if (buildCounterOrganizationSettings < 3) {
    checkAssetDiscoveryConfig(o.assetDiscoveryConfig!);
    unittest.expect(o.enableAssetDiscovery!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterOrganizationSettings--;
}

core.int buildCounterPackage = 0;
api.Package buildPackage() {
  final o = api.Package();
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    o.cpeUri = 'foo';
    o.packageName = 'foo';
    o.packageType = 'foo';
    o.packageVersion = 'foo';
  }
  buildCounterPackage--;
  return o;
}

void checkPackage(api.Package o) {
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    unittest.expect(o.cpeUri!, unittest.equals('foo'));
    unittest.expect(o.packageName!, unittest.equals('foo'));
    unittest.expect(o.packageType!, unittest.equals('foo'));
    unittest.expect(o.packageVersion!, unittest.equals('foo'));
  }
  buildCounterPackage--;
}

core.int buildCounterPathNodeAssociatedFinding = 0;
api.PathNodeAssociatedFinding buildPathNodeAssociatedFinding() {
  final o = api.PathNodeAssociatedFinding();
  buildCounterPathNodeAssociatedFinding++;
  if (buildCounterPathNodeAssociatedFinding < 3) {
    o.canonicalFinding = 'foo';
    o.findingCategory = 'foo';
    o.name = 'foo';
  }
  buildCounterPathNodeAssociatedFinding--;
  return o;
}

void checkPathNodeAssociatedFinding(api.PathNodeAssociatedFinding o) {
  buildCounterPathNodeAssociatedFinding++;
  if (buildCounterPathNodeAssociatedFinding < 3) {
    unittest.expect(o.canonicalFinding!, unittest.equals('foo'));
    unittest.expect(o.findingCategory!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterPathNodeAssociatedFinding--;
}

core.int buildCounterPipeline = 0;
api.Pipeline buildPipeline() {
  final o = api.Pipeline();
  buildCounterPipeline++;
  if (buildCounterPipeline < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterPipeline--;
  return o;
}

void checkPipeline(api.Pipeline o) {
  buildCounterPipeline++;
  if (buildCounterPipeline < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterPipeline--;
}

core.List<api.Container> buildUnnamed105() => [
  buildContainer(),
  buildContainer(),
];

void checkUnnamed105(core.List<api.Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainer(o[0]);
  checkContainer(o[1]);
}

core.List<api.Label> buildUnnamed106() => [buildLabel(), buildLabel()];

void checkUnnamed106(core.List<api.Label> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabel(o[0]);
  checkLabel(o[1]);
}

core.int buildCounterPod = 0;
api.Pod buildPod() {
  final o = api.Pod();
  buildCounterPod++;
  if (buildCounterPod < 3) {
    o.containers = buildUnnamed105();
    o.labels = buildUnnamed106();
    o.name = 'foo';
    o.ns = 'foo';
  }
  buildCounterPod--;
  return o;
}

void checkPod(api.Pod o) {
  buildCounterPod++;
  if (buildCounterPod < 3) {
    checkUnnamed105(o.containers!);
    checkUnnamed106(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ns!, unittest.equals('foo'));
  }
  buildCounterPod--;
}

core.List<api.AuditConfig> buildUnnamed107() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed107(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed108() => [buildBinding(), buildBinding()];

void checkUnnamed108(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed107();
    o.bindings = buildUnnamed108();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed107(o.auditConfigs!);
    checkUnnamed108(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPolicyDriftDetails = 0;
api.PolicyDriftDetails buildPolicyDriftDetails() {
  final o = api.PolicyDriftDetails();
  buildCounterPolicyDriftDetails++;
  if (buildCounterPolicyDriftDetails < 3) {
    o.detectedValue = 'foo';
    o.expectedValue = 'foo';
    o.field = 'foo';
  }
  buildCounterPolicyDriftDetails--;
  return o;
}

void checkPolicyDriftDetails(api.PolicyDriftDetails o) {
  buildCounterPolicyDriftDetails++;
  if (buildCounterPolicyDriftDetails < 3) {
    unittest.expect(o.detectedValue!, unittest.equals('foo'));
    unittest.expect(o.expectedValue!, unittest.equals('foo'));
    unittest.expect(o.field!, unittest.equals('foo'));
  }
  buildCounterPolicyDriftDetails--;
}

core.int buildCounterPortRange = 0;
api.PortRange buildPortRange() {
  final o = api.PortRange();
  buildCounterPortRange++;
  if (buildCounterPortRange < 3) {
    o.max = 'foo';
    o.min = 'foo';
  }
  buildCounterPortRange--;
  return o;
}

void checkPortRange(api.PortRange o) {
  buildCounterPortRange++;
  if (buildCounterPortRange < 3) {
    unittest.expect(o.max!, unittest.equals('foo'));
    unittest.expect(o.min!, unittest.equals('foo'));
  }
  buildCounterPortRange--;
}

core.int buildCounterPosition = 0;
api.Position buildPosition() {
  final o = api.Position();
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    o.columnNumber = 42;
    o.lineNumber = 42;
  }
  buildCounterPosition--;
  return o;
}

void checkPosition(api.Position o) {
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    unittest.expect(o.columnNumber!, unittest.equals(42));
    unittest.expect(o.lineNumber!, unittest.equals(42));
  }
  buildCounterPosition--;
}

core.List<core.String> buildUnnamed109() => ['foo', 'foo'];

void checkUnnamed109(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.EnvironmentVariable> buildUnnamed110() => [
  buildEnvironmentVariable(),
  buildEnvironmentVariable(),
];

void checkUnnamed110(core.List<api.EnvironmentVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironmentVariable(o[0]);
  checkEnvironmentVariable(o[1]);
}

core.List<api.File> buildUnnamed111() => [buildFile(), buildFile()];

void checkUnnamed111(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterProcess = 0;
api.Process buildProcess() {
  final o = api.Process();
  buildCounterProcess++;
  if (buildCounterProcess < 3) {
    o.args = buildUnnamed109();
    o.argumentsTruncated = true;
    o.binary = buildFile();
    o.envVariables = buildUnnamed110();
    o.envVariablesTruncated = true;
    o.libraries = buildUnnamed111();
    o.name = 'foo';
    o.parentPid = 'foo';
    o.pid = 'foo';
    o.script = buildFile();
    o.userId = 'foo';
  }
  buildCounterProcess--;
  return o;
}

void checkProcess(api.Process o) {
  buildCounterProcess++;
  if (buildCounterProcess < 3) {
    checkUnnamed109(o.args!);
    unittest.expect(o.argumentsTruncated!, unittest.isTrue);
    checkFile(o.binary!);
    checkUnnamed110(o.envVariables!);
    unittest.expect(o.envVariablesTruncated!, unittest.isTrue);
    checkUnnamed111(o.libraries!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.parentPid!, unittest.equals('foo'));
    unittest.expect(o.pid!, unittest.equals('foo'));
    checkFile(o.script!);
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterProcess--;
}

core.int buildCounterProcessSignature = 0;
api.ProcessSignature buildProcessSignature() {
  final o = api.ProcessSignature();
  buildCounterProcessSignature++;
  if (buildCounterProcessSignature < 3) {
    o.memoryHashSignature = buildMemoryHashSignature();
    o.signatureType = 'foo';
    o.yaraRuleSignature = buildYaraRuleSignature();
  }
  buildCounterProcessSignature--;
  return o;
}

void checkProcessSignature(api.ProcessSignature o) {
  buildCounterProcessSignature++;
  if (buildCounterProcessSignature < 3) {
    checkMemoryHashSignature(o.memoryHashSignature!);
    unittest.expect(o.signatureType!, unittest.equals('foo'));
    checkYaraRuleSignature(o.yaraRuleSignature!);
  }
  buildCounterProcessSignature--;
}

core.int buildCounterReference = 0;
api.Reference buildReference() {
  final o = api.Reference();
  buildCounterReference++;
  if (buildCounterReference < 3) {
    o.source = 'foo';
    o.uri = 'foo';
  }
  buildCounterReference--;
  return o;
}

void checkReference(api.Reference o) {
  buildCounterReference++;
  if (buildCounterReference < 3) {
    unittest.expect(o.source!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterReference--;
}

core.int buildCounterRequests = 0;
api.Requests buildRequests() {
  final o = api.Requests();
  buildCounterRequests++;
  if (buildCounterRequests < 3) {
    o.longTermAllowed = 42;
    o.longTermDenied = 42;
    o.ratio = 42.0;
    o.shortTermAllowed = 42;
  }
  buildCounterRequests--;
  return o;
}

void checkRequests(api.Requests o) {
  buildCounterRequests++;
  if (buildCounterRequests < 3) {
    unittest.expect(o.longTermAllowed!, unittest.equals(42));
    unittest.expect(o.longTermDenied!, unittest.equals(42));
    unittest.expect(o.ratio!, unittest.equals(42.0));
    unittest.expect(o.shortTermAllowed!, unittest.equals(42));
  }
  buildCounterRequests--;
}

core.List<api.Folder> buildUnnamed112() => [buildFolder(), buildFolder()];

void checkUnnamed112(core.List<api.Folder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFolder(o[0]);
  checkFolder(o[1]);
}

core.int buildCounterResource = 0;
api.Resource buildResource() {
  final o = api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.awsMetadata = buildAwsMetadata();
    o.azureMetadata = buildAzureMetadata();
    o.cloudProvider = 'foo';
    o.displayName = 'foo';
    o.folders = buildUnnamed112();
    o.location = 'foo';
    o.name = 'foo';
    o.organization = 'foo';
    o.parentDisplayName = 'foo';
    o.parentName = 'foo';
    o.projectDisplayName = 'foo';
    o.projectName = 'foo';
    o.resourcePath = buildResourcePath();
    o.resourcePathString = 'foo';
    o.service = 'foo';
    o.type = 'foo';
  }
  buildCounterResource--;
  return o;
}

void checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkAwsMetadata(o.awsMetadata!);
    checkAzureMetadata(o.azureMetadata!);
    unittest.expect(o.cloudProvider!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed112(o.folders!);
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.organization!, unittest.equals('foo'));
    unittest.expect(o.parentDisplayName!, unittest.equals('foo'));
    unittest.expect(o.parentName!, unittest.equals('foo'));
    unittest.expect(o.projectDisplayName!, unittest.equals('foo'));
    unittest.expect(o.projectName!, unittest.equals('foo'));
    checkResourcePath(o.resourcePath!);
    unittest.expect(o.resourcePathString!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterResource--;
}

core.List<api.ResourcePathNode> buildUnnamed113() => [
  buildResourcePathNode(),
  buildResourcePathNode(),
];

void checkUnnamed113(core.List<api.ResourcePathNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourcePathNode(o[0]);
  checkResourcePathNode(o[1]);
}

core.int buildCounterResourcePath = 0;
api.ResourcePath buildResourcePath() {
  final o = api.ResourcePath();
  buildCounterResourcePath++;
  if (buildCounterResourcePath < 3) {
    o.nodes = buildUnnamed113();
  }
  buildCounterResourcePath--;
  return o;
}

void checkResourcePath(api.ResourcePath o) {
  buildCounterResourcePath++;
  if (buildCounterResourcePath < 3) {
    checkUnnamed113(o.nodes!);
  }
  buildCounterResourcePath--;
}

core.int buildCounterResourcePathNode = 0;
api.ResourcePathNode buildResourcePathNode() {
  final o = api.ResourcePathNode();
  buildCounterResourcePathNode++;
  if (buildCounterResourcePathNode < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
    o.nodeType = 'foo';
  }
  buildCounterResourcePathNode--;
  return o;
}

void checkResourcePathNode(api.ResourcePathNode o) {
  buildCounterResourcePathNode++;
  if (buildCounterResourcePathNode < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.nodeType!, unittest.equals('foo'));
  }
  buildCounterResourcePathNode--;
}

core.int buildCounterResourceValueConfigMetadata = 0;
api.ResourceValueConfigMetadata buildResourceValueConfigMetadata() {
  final o = api.ResourceValueConfigMetadata();
  buildCounterResourceValueConfigMetadata++;
  if (buildCounterResourceValueConfigMetadata < 3) {
    o.name = 'foo';
  }
  buildCounterResourceValueConfigMetadata--;
  return o;
}

void checkResourceValueConfigMetadata(api.ResourceValueConfigMetadata o) {
  buildCounterResourceValueConfigMetadata++;
  if (buildCounterResourceValueConfigMetadata < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterResourceValueConfigMetadata--;
}

core.int buildCounterRole = 0;
api.Role buildRole() {
  final o = api.Role();
  buildCounterRole++;
  if (buildCounterRole < 3) {
    o.kind = 'foo';
    o.name = 'foo';
    o.ns = 'foo';
  }
  buildCounterRole--;
  return o;
}

void checkRole(api.Role o) {
  buildCounterRole++;
  if (buildCounterRole < 3) {
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ns!, unittest.equals('foo'));
  }
  buildCounterRole--;
}

core.int buildCounterRunAssetDiscoveryRequest = 0;
api.RunAssetDiscoveryRequest buildRunAssetDiscoveryRequest() {
  final o = api.RunAssetDiscoveryRequest();
  buildCounterRunAssetDiscoveryRequest++;
  if (buildCounterRunAssetDiscoveryRequest < 3) {}
  buildCounterRunAssetDiscoveryRequest--;
  return o;
}

void checkRunAssetDiscoveryRequest(api.RunAssetDiscoveryRequest o) {
  buildCounterRunAssetDiscoveryRequest++;
  if (buildCounterRunAssetDiscoveryRequest < 3) {}
  buildCounterRunAssetDiscoveryRequest--;
}

core.int buildCounterSecurityBulletin = 0;
api.SecurityBulletin buildSecurityBulletin() {
  final o = api.SecurityBulletin();
  buildCounterSecurityBulletin++;
  if (buildCounterSecurityBulletin < 3) {
    o.bulletinId = 'foo';
    o.submissionTime = 'foo';
    o.suggestedUpgradeVersion = 'foo';
  }
  buildCounterSecurityBulletin--;
  return o;
}

void checkSecurityBulletin(api.SecurityBulletin o) {
  buildCounterSecurityBulletin++;
  if (buildCounterSecurityBulletin < 3) {
    unittest.expect(o.bulletinId!, unittest.equals('foo'));
    unittest.expect(o.submissionTime!, unittest.equals('foo'));
    unittest.expect(o.suggestedUpgradeVersion!, unittest.equals('foo'));
  }
  buildCounterSecurityBulletin--;
}

core.List<api.Folder> buildUnnamed114() => [buildFolder(), buildFolder()];

void checkUnnamed114(core.List<api.Folder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFolder(o[0]);
  checkFolder(o[1]);
}

core.List<core.String> buildUnnamed115() => ['foo', 'foo'];

void checkUnnamed115(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSecurityCenterProperties = 0;
api.SecurityCenterProperties buildSecurityCenterProperties() {
  final o = api.SecurityCenterProperties();
  buildCounterSecurityCenterProperties++;
  if (buildCounterSecurityCenterProperties < 3) {
    o.folders = buildUnnamed114();
    o.resourceDisplayName = 'foo';
    o.resourceName = 'foo';
    o.resourceOwners = buildUnnamed115();
    o.resourceParent = 'foo';
    o.resourceParentDisplayName = 'foo';
    o.resourceProject = 'foo';
    o.resourceProjectDisplayName = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterSecurityCenterProperties--;
  return o;
}

void checkSecurityCenterProperties(api.SecurityCenterProperties o) {
  buildCounterSecurityCenterProperties++;
  if (buildCounterSecurityCenterProperties < 3) {
    checkUnnamed114(o.folders!);
    unittest.expect(o.resourceDisplayName!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    checkUnnamed115(o.resourceOwners!);
    unittest.expect(o.resourceParent!, unittest.equals('foo'));
    unittest.expect(o.resourceParentDisplayName!, unittest.equals('foo'));
    unittest.expect(o.resourceProject!, unittest.equals('foo'));
    unittest.expect(o.resourceProjectDisplayName!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
  }
  buildCounterSecurityCenterProperties--;
}

core.Map<core.String, core.String> buildUnnamed116() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed116(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSecurityMarks = 0;
api.SecurityMarks buildSecurityMarks() {
  final o = api.SecurityMarks();
  buildCounterSecurityMarks++;
  if (buildCounterSecurityMarks < 3) {
    o.canonicalName = 'foo';
    o.marks = buildUnnamed116();
    o.name = 'foo';
  }
  buildCounterSecurityMarks--;
  return o;
}

void checkSecurityMarks(api.SecurityMarks o) {
  buildCounterSecurityMarks++;
  if (buildCounterSecurityMarks < 3) {
    unittest.expect(o.canonicalName!, unittest.equals('foo'));
    checkUnnamed116(o.marks!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterSecurityMarks--;
}

core.int buildCounterSecurityPolicy = 0;
api.SecurityPolicy buildSecurityPolicy() {
  final o = api.SecurityPolicy();
  buildCounterSecurityPolicy++;
  if (buildCounterSecurityPolicy < 3) {
    o.name = 'foo';
    o.preview = true;
    o.type = 'foo';
  }
  buildCounterSecurityPolicy--;
  return o;
}

void checkSecurityPolicy(api.SecurityPolicy o) {
  buildCounterSecurityPolicy++;
  if (buildCounterSecurityPolicy < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.preview!, unittest.isTrue);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterSecurityPolicy--;
}

core.List<api.PolicyDriftDetails> buildUnnamed117() => [
  buildPolicyDriftDetails(),
  buildPolicyDriftDetails(),
];

void checkUnnamed117(core.List<api.PolicyDriftDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyDriftDetails(o[0]);
  checkPolicyDriftDetails(o[1]);
}

core.int buildCounterSecurityPosture = 0;
api.SecurityPosture buildSecurityPosture() {
  final o = api.SecurityPosture();
  buildCounterSecurityPosture++;
  if (buildCounterSecurityPosture < 3) {
    o.changedPolicy = 'foo';
    o.name = 'foo';
    o.policy = 'foo';
    o.policyDriftDetails = buildUnnamed117();
    o.policySet = 'foo';
    o.postureDeployment = 'foo';
    o.postureDeploymentResource = 'foo';
    o.revisionId = 'foo';
  }
  buildCounterSecurityPosture--;
  return o;
}

void checkSecurityPosture(api.SecurityPosture o) {
  buildCounterSecurityPosture++;
  if (buildCounterSecurityPosture < 3) {
    unittest.expect(o.changedPolicy!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.policy!, unittest.equals('foo'));
    checkUnnamed117(o.policyDriftDetails!);
    unittest.expect(o.policySet!, unittest.equals('foo'));
    unittest.expect(o.postureDeployment!, unittest.equals('foo'));
    unittest.expect(o.postureDeploymentResource!, unittest.equals('foo'));
    unittest.expect(o.revisionId!, unittest.equals('foo'));
  }
  buildCounterSecurityPosture--;
}

core.int buildCounterServiceAccountDelegationInfo = 0;
api.ServiceAccountDelegationInfo buildServiceAccountDelegationInfo() {
  final o = api.ServiceAccountDelegationInfo();
  buildCounterServiceAccountDelegationInfo++;
  if (buildCounterServiceAccountDelegationInfo < 3) {
    o.principalEmail = 'foo';
    o.principalSubject = 'foo';
  }
  buildCounterServiceAccountDelegationInfo--;
  return o;
}

void checkServiceAccountDelegationInfo(api.ServiceAccountDelegationInfo o) {
  buildCounterServiceAccountDelegationInfo++;
  if (buildCounterServiceAccountDelegationInfo < 3) {
    unittest.expect(o.principalEmail!, unittest.equals('foo'));
    unittest.expect(o.principalSubject!, unittest.equals('foo'));
  }
  buildCounterServiceAccountDelegationInfo--;
}

core.int buildCounterSetFindingStateRequest = 0;
api.SetFindingStateRequest buildSetFindingStateRequest() {
  final o = api.SetFindingStateRequest();
  buildCounterSetFindingStateRequest++;
  if (buildCounterSetFindingStateRequest < 3) {
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterSetFindingStateRequest--;
  return o;
}

void checkSetFindingStateRequest(api.SetFindingStateRequest o) {
  buildCounterSetFindingStateRequest++;
  if (buildCounterSetFindingStateRequest < 3) {
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterSetFindingStateRequest--;
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

core.int buildCounterSetMuteRequest = 0;
api.SetMuteRequest buildSetMuteRequest() {
  final o = api.SetMuteRequest();
  buildCounterSetMuteRequest++;
  if (buildCounterSetMuteRequest < 3) {
    o.mute = 'foo';
  }
  buildCounterSetMuteRequest--;
  return o;
}

void checkSetMuteRequest(api.SetMuteRequest o) {
  buildCounterSetMuteRequest++;
  if (buildCounterSetMuteRequest < 3) {
    unittest.expect(o.mute!, unittest.equals('foo'));
  }
  buildCounterSetMuteRequest--;
}

core.int buildCounterSimulateSecurityHealthAnalyticsCustomModuleRequest = 0;
api.SimulateSecurityHealthAnalyticsCustomModuleRequest
buildSimulateSecurityHealthAnalyticsCustomModuleRequest() {
  final o = api.SimulateSecurityHealthAnalyticsCustomModuleRequest();
  buildCounterSimulateSecurityHealthAnalyticsCustomModuleRequest++;
  if (buildCounterSimulateSecurityHealthAnalyticsCustomModuleRequest < 3) {
    o.customConfig = buildGoogleCloudSecuritycenterV1CustomConfig();
    o.resource = buildSimulatedResource();
  }
  buildCounterSimulateSecurityHealthAnalyticsCustomModuleRequest--;
  return o;
}

void checkSimulateSecurityHealthAnalyticsCustomModuleRequest(
  api.SimulateSecurityHealthAnalyticsCustomModuleRequest o,
) {
  buildCounterSimulateSecurityHealthAnalyticsCustomModuleRequest++;
  if (buildCounterSimulateSecurityHealthAnalyticsCustomModuleRequest < 3) {
    checkGoogleCloudSecuritycenterV1CustomConfig(o.customConfig!);
    checkSimulatedResource(o.resource!);
  }
  buildCounterSimulateSecurityHealthAnalyticsCustomModuleRequest--;
}

core.int buildCounterSimulateSecurityHealthAnalyticsCustomModuleResponse = 0;
api.SimulateSecurityHealthAnalyticsCustomModuleResponse
buildSimulateSecurityHealthAnalyticsCustomModuleResponse() {
  final o = api.SimulateSecurityHealthAnalyticsCustomModuleResponse();
  buildCounterSimulateSecurityHealthAnalyticsCustomModuleResponse++;
  if (buildCounterSimulateSecurityHealthAnalyticsCustomModuleResponse < 3) {
    o.result = buildSimulatedResult();
  }
  buildCounterSimulateSecurityHealthAnalyticsCustomModuleResponse--;
  return o;
}

void checkSimulateSecurityHealthAnalyticsCustomModuleResponse(
  api.SimulateSecurityHealthAnalyticsCustomModuleResponse o,
) {
  buildCounterSimulateSecurityHealthAnalyticsCustomModuleResponse++;
  if (buildCounterSimulateSecurityHealthAnalyticsCustomModuleResponse < 3) {
    checkSimulatedResult(o.result!);
  }
  buildCounterSimulateSecurityHealthAnalyticsCustomModuleResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed118() => {
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

void checkUnnamed118(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o['x']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted15['bool'], unittest.equals(true));
  unittest.expect(casted15['string'], unittest.equals('foo'));
  var casted16 = (o['y']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted16['bool'], unittest.equals(true));
  unittest.expect(casted16['string'], unittest.equals('foo'));
}

core.int buildCounterSimulatedResource = 0;
api.SimulatedResource buildSimulatedResource() {
  final o = api.SimulatedResource();
  buildCounterSimulatedResource++;
  if (buildCounterSimulatedResource < 3) {
    o.iamPolicyData = buildPolicy();
    o.resourceData = buildUnnamed118();
    o.resourceType = 'foo';
  }
  buildCounterSimulatedResource--;
  return o;
}

void checkSimulatedResource(api.SimulatedResource o) {
  buildCounterSimulatedResource++;
  if (buildCounterSimulatedResource < 3) {
    checkPolicy(o.iamPolicyData!);
    checkUnnamed118(o.resourceData!);
    unittest.expect(o.resourceType!, unittest.equals('foo'));
  }
  buildCounterSimulatedResource--;
}

core.int buildCounterSimulatedResult = 0;
api.SimulatedResult buildSimulatedResult() {
  final o = api.SimulatedResult();
  buildCounterSimulatedResult++;
  if (buildCounterSimulatedResult < 3) {
    o.error = buildStatus();
    o.finding = buildFinding();
    o.noViolation = buildEmpty();
  }
  buildCounterSimulatedResult--;
  return o;
}

void checkSimulatedResult(api.SimulatedResult o) {
  buildCounterSimulatedResult++;
  if (buildCounterSimulatedResult < 3) {
    checkStatus(o.error!);
    checkFinding(o.finding!);
    checkEmpty(o.noViolation!);
  }
  buildCounterSimulatedResult--;
}

core.List<api.ResourceValueConfigMetadata> buildUnnamed119() => [
  buildResourceValueConfigMetadata(),
  buildResourceValueConfigMetadata(),
];

void checkUnnamed119(core.List<api.ResourceValueConfigMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceValueConfigMetadata(o[0]);
  checkResourceValueConfigMetadata(o[1]);
}

core.int buildCounterSimulation = 0;
api.Simulation buildSimulation() {
  final o = api.Simulation();
  buildCounterSimulation++;
  if (buildCounterSimulation < 3) {
    o.cloudProvider = 'foo';
    o.createTime = 'foo';
    o.name = 'foo';
    o.resourceValueConfigsMetadata = buildUnnamed119();
  }
  buildCounterSimulation--;
  return o;
}

void checkSimulation(api.Simulation o) {
  buildCounterSimulation++;
  if (buildCounterSimulation < 3) {
    unittest.expect(o.cloudProvider!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed119(o.resourceValueConfigsMetadata!);
  }
  buildCounterSimulation--;
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.canonicalName = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    unittest.expect(o.canonicalName!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterSource--;
}

core.int buildCounterStaticMute = 0;
api.StaticMute buildStaticMute() {
  final o = api.StaticMute();
  buildCounterStaticMute++;
  if (buildCounterStaticMute < 3) {
    o.applyTime = 'foo';
    o.state = 'foo';
  }
  buildCounterStaticMute--;
  return o;
}

void checkStaticMute(api.StaticMute o) {
  buildCounterStaticMute++;
  if (buildCounterStaticMute < 3) {
    unittest.expect(o.applyTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterStaticMute--;
}

core.Map<core.String, core.Object?> buildUnnamed120() => {
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

void checkUnnamed120(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o['x']!) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(casted17['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted17['bool'], unittest.equals(true));
  unittest.expect(casted17['string'], unittest.equals('foo'));
  var casted18 = (o['y']!) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(casted18['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted18['bool'], unittest.equals(true));
  unittest.expect(casted18['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed121() => [
  buildUnnamed120(),
  buildUnnamed120(),
];

void checkUnnamed121(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed120(o[0]);
  checkUnnamed120(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed121();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed121(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStreamingConfig = 0;
api.StreamingConfig buildStreamingConfig() {
  final o = api.StreamingConfig();
  buildCounterStreamingConfig++;
  if (buildCounterStreamingConfig < 3) {
    o.filter = 'foo';
  }
  buildCounterStreamingConfig--;
  return o;
}

void checkStreamingConfig(api.StreamingConfig o) {
  buildCounterStreamingConfig++;
  if (buildCounterStreamingConfig < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
  }
  buildCounterStreamingConfig--;
}

core.int buildCounterSubject = 0;
api.Subject buildSubject() {
  final o = api.Subject();
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    o.kind = 'foo';
    o.name = 'foo';
    o.ns = 'foo';
  }
  buildCounterSubject--;
  return o;
}

void checkSubject(api.Subject o) {
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ns!, unittest.equals('foo'));
  }
  buildCounterSubject--;
}

core.List<core.String> buildUnnamed122() => ['foo', 'foo'];

void checkUnnamed122(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed122();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed122(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed123() => ['foo', 'foo'];

void checkUnnamed123(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed123();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed123(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTicketInfo = 0;
api.TicketInfo buildTicketInfo() {
  final o = api.TicketInfo();
  buildCounterTicketInfo++;
  if (buildCounterTicketInfo < 3) {
    o.assignee = 'foo';
    o.description = 'foo';
    o.id = 'foo';
    o.status = 'foo';
    o.updateTime = 'foo';
    o.uri = 'foo';
  }
  buildCounterTicketInfo--;
  return o;
}

void checkTicketInfo(api.TicketInfo o) {
  buildCounterTicketInfo++;
  if (buildCounterTicketInfo < 3) {
    unittest.expect(o.assignee!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterTicketInfo--;
}

core.List<core.String> buildUnnamed124() => ['foo', 'foo'];

void checkUnnamed124(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterToxicCombination = 0;
api.ToxicCombination buildToxicCombination() {
  final o = api.ToxicCombination();
  buildCounterToxicCombination++;
  if (buildCounterToxicCombination < 3) {
    o.attackExposureScore = 42.0;
    o.relatedFindings = buildUnnamed124();
  }
  buildCounterToxicCombination--;
  return o;
}

void checkToxicCombination(api.ToxicCombination o) {
  buildCounterToxicCombination++;
  if (buildCounterToxicCombination < 3) {
    unittest.expect(o.attackExposureScore!, unittest.equals(42.0));
    checkUnnamed124(o.relatedFindings!);
  }
  buildCounterToxicCombination--;
}

core.int buildCounterValidateEventThreatDetectionCustomModuleRequest = 0;
api.ValidateEventThreatDetectionCustomModuleRequest
buildValidateEventThreatDetectionCustomModuleRequest() {
  final o = api.ValidateEventThreatDetectionCustomModuleRequest();
  buildCounterValidateEventThreatDetectionCustomModuleRequest++;
  if (buildCounterValidateEventThreatDetectionCustomModuleRequest < 3) {
    o.rawText = 'foo';
    o.type = 'foo';
  }
  buildCounterValidateEventThreatDetectionCustomModuleRequest--;
  return o;
}

void checkValidateEventThreatDetectionCustomModuleRequest(
  api.ValidateEventThreatDetectionCustomModuleRequest o,
) {
  buildCounterValidateEventThreatDetectionCustomModuleRequest++;
  if (buildCounterValidateEventThreatDetectionCustomModuleRequest < 3) {
    unittest.expect(o.rawText!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterValidateEventThreatDetectionCustomModuleRequest--;
}

core.int buildCounterValidateEventThreatDetectionCustomModuleResponse = 0;
api.ValidateEventThreatDetectionCustomModuleResponse
buildValidateEventThreatDetectionCustomModuleResponse() {
  final o = api.ValidateEventThreatDetectionCustomModuleResponse();
  buildCounterValidateEventThreatDetectionCustomModuleResponse++;
  if (buildCounterValidateEventThreatDetectionCustomModuleResponse < 3) {
    o.errors = buildCustomModuleValidationErrors();
  }
  buildCounterValidateEventThreatDetectionCustomModuleResponse--;
  return o;
}

void checkValidateEventThreatDetectionCustomModuleResponse(
  api.ValidateEventThreatDetectionCustomModuleResponse o,
) {
  buildCounterValidateEventThreatDetectionCustomModuleResponse++;
  if (buildCounterValidateEventThreatDetectionCustomModuleResponse < 3) {
    checkCustomModuleValidationErrors(o.errors!);
  }
  buildCounterValidateEventThreatDetectionCustomModuleResponse--;
}

core.List<api.ResourceValueConfigMetadata> buildUnnamed125() => [
  buildResourceValueConfigMetadata(),
  buildResourceValueConfigMetadata(),
];

void checkUnnamed125(core.List<api.ResourceValueConfigMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceValueConfigMetadata(o[0]);
  checkResourceValueConfigMetadata(o[1]);
}

core.int buildCounterValuedResource = 0;
api.ValuedResource buildValuedResource() {
  final o = api.ValuedResource();
  buildCounterValuedResource++;
  if (buildCounterValuedResource < 3) {
    o.displayName = 'foo';
    o.exposedScore = 42.0;
    o.name = 'foo';
    o.resource = 'foo';
    o.resourceType = 'foo';
    o.resourceValue = 'foo';
    o.resourceValueConfigsUsed = buildUnnamed125();
  }
  buildCounterValuedResource--;
  return o;
}

void checkValuedResource(api.ValuedResource o) {
  buildCounterValuedResource++;
  if (buildCounterValuedResource < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.exposedScore!, unittest.equals(42.0));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.resource!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
    unittest.expect(o.resourceValue!, unittest.equals('foo'));
    checkUnnamed125(o.resourceValueConfigsUsed!);
  }
  buildCounterValuedResource--;
}

core.List<api.Dataset> buildUnnamed126() => [buildDataset(), buildDataset()];

void checkUnnamed126(core.List<api.Dataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataset(o[0]);
  checkDataset(o[1]);
}

core.List<api.Pipeline> buildUnnamed127() => [buildPipeline(), buildPipeline()];

void checkUnnamed127(core.List<api.Pipeline> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPipeline(o[0]);
  checkPipeline(o[1]);
}

core.int buildCounterVertexAi = 0;
api.VertexAi buildVertexAi() {
  final o = api.VertexAi();
  buildCounterVertexAi++;
  if (buildCounterVertexAi < 3) {
    o.datasets = buildUnnamed126();
    o.pipelines = buildUnnamed127();
  }
  buildCounterVertexAi--;
  return o;
}

void checkVertexAi(api.VertexAi o) {
  buildCounterVertexAi++;
  if (buildCounterVertexAi < 3) {
    checkUnnamed126(o.datasets!);
    checkUnnamed127(o.pipelines!);
  }
  buildCounterVertexAi--;
}

core.List<api.Cwe> buildUnnamed128() => [buildCwe(), buildCwe()];

void checkUnnamed128(core.List<api.Cwe> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCwe(o[0]);
  checkCwe(o[1]);
}

core.int buildCounterVulnerability = 0;
api.Vulnerability buildVulnerability() {
  final o = api.Vulnerability();
  buildCounterVulnerability++;
  if (buildCounterVulnerability < 3) {
    o.cve = buildCve();
    o.cwes = buildUnnamed128();
    o.fixedPackage = buildPackage();
    o.offendingPackage = buildPackage();
    o.providerRiskScore = 'foo';
    o.reachable = true;
    o.securityBulletin = buildSecurityBulletin();
  }
  buildCounterVulnerability--;
  return o;
}

void checkVulnerability(api.Vulnerability o) {
  buildCounterVulnerability++;
  if (buildCounterVulnerability < 3) {
    checkCve(o.cve!);
    checkUnnamed128(o.cwes!);
    checkPackage(o.fixedPackage!);
    checkPackage(o.offendingPackage!);
    unittest.expect(o.providerRiskScore!, unittest.equals('foo'));
    unittest.expect(o.reachable!, unittest.isTrue);
    checkSecurityBulletin(o.securityBulletin!);
  }
  buildCounterVulnerability--;
}

core.int buildCounterYaraRuleSignature = 0;
api.YaraRuleSignature buildYaraRuleSignature() {
  final o = api.YaraRuleSignature();
  buildCounterYaraRuleSignature++;
  if (buildCounterYaraRuleSignature < 3) {
    o.yaraRule = 'foo';
  }
  buildCounterYaraRuleSignature--;
  return o;
}

void checkYaraRuleSignature(api.YaraRuleSignature o) {
  buildCounterYaraRuleSignature++;
  if (buildCounterYaraRuleSignature < 3) {
    unittest.expect(o.yaraRule!, unittest.equals('foo'));
  }
  buildCounterYaraRuleSignature--;
}

void main() {
  unittest.group('obj-schema-Access', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Access.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccess(od);
    });
  });

  unittest.group('obj-schema-AccessReview', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessReview.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessReview(od);
    });
  });

  unittest.group('obj-schema-AdaptiveProtection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdaptiveProtection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdaptiveProtection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdaptiveProtection(od);
    });
  });

  unittest.group('obj-schema-AffectedResources', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAffectedResources();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AffectedResources.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAffectedResources(od);
    });
  });

  unittest.group('obj-schema-AiModel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAiModel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AiModel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAiModel(od);
    });
  });

  unittest.group('obj-schema-Allowed', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAllowed();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Allowed.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAllowed(od);
    });
  });

  unittest.group('obj-schema-Application', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Application.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplication(od);
    });
  });

  unittest.group('obj-schema-Asset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Asset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAsset(od);
    });
  });

  unittest.group('obj-schema-AssetDiscoveryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetDiscoveryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetDiscoveryConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssetDiscoveryConfig(od);
    });
  });

  unittest.group('obj-schema-Attack', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttack();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Attack.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttack(od);
    });
  });

  unittest.group('obj-schema-AttackExposure', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttackExposure();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttackExposure.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttackExposure(od);
    });
  });

  unittest.group('obj-schema-AttackPath', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttackPath();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttackPath.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttackPath(od);
    });
  });

  unittest.group('obj-schema-AttackPathEdge', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttackPathEdge();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttackPathEdge.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttackPathEdge(od);
    });
  });

  unittest.group('obj-schema-AttackPathNode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttackPathNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttackPathNode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttackPathNode(od);
    });
  });

  unittest.group('obj-schema-AttackStepNode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttackStepNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttackStepNode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttackStepNode(od);
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

  unittest.group('obj-schema-AwsAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsAccount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAwsAccount(od);
    });
  });

  unittest.group('obj-schema-AwsMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAwsMetadata(od);
    });
  });

  unittest.group('obj-schema-AwsOrganization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsOrganization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsOrganization.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAwsOrganization(od);
    });
  });

  unittest.group('obj-schema-AwsOrganizationalUnit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsOrganizationalUnit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsOrganizationalUnit.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAwsOrganizationalUnit(od);
    });
  });

  unittest.group('obj-schema-AzureManagementGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureManagementGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureManagementGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAzureManagementGroup(od);
    });
  });

  unittest.group('obj-schema-AzureMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAzureMetadata(od);
    });
  });

  unittest.group('obj-schema-AzureResourceGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureResourceGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureResourceGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAzureResourceGroup(od);
    });
  });

  unittest.group('obj-schema-AzureSubscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureSubscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureSubscription.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAzureSubscription(od);
    });
  });

  unittest.group('obj-schema-AzureTenant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureTenant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureTenant.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAzureTenant(od);
    });
  });

  unittest.group('obj-schema-BackupDisasterRecovery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupDisasterRecovery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupDisasterRecovery.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackupDisasterRecovery(od);
    });
  });

  unittest.group('obj-schema-BatchCreateResourceValueConfigsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateResourceValueConfigsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateResourceValueConfigsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchCreateResourceValueConfigsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreateResourceValueConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateResourceValueConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateResourceValueConfigsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchCreateResourceValueConfigsResponse(od);
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

  unittest.group('obj-schema-BulkMuteFindingsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkMuteFindingsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkMuteFindingsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkMuteFindingsRequest(od);
    });
  });

  unittest.group('obj-schema-Chokepoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChokepoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Chokepoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChokepoint(od);
    });
  });

  unittest.group('obj-schema-CloudArmor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudArmor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudArmor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudArmor(od);
    });
  });

  unittest.group('obj-schema-CloudControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudControl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudControl(od);
    });
  });

  unittest.group('obj-schema-CloudDlpDataProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudDlpDataProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudDlpDataProfile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudDlpDataProfile(od);
    });
  });

  unittest.group('obj-schema-CloudDlpInspection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudDlpInspection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudDlpInspection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudDlpInspection(od);
    });
  });

  unittest.group('obj-schema-CloudLoggingEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudLoggingEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudLoggingEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudLoggingEntry(od);
    });
  });

  unittest.group('obj-schema-Compliance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompliance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Compliance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCompliance(od);
    });
  });

  unittest.group('obj-schema-ComplianceDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComplianceDetails(od);
    });
  });

  unittest.group('obj-schema-Connection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Connection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnection(od);
    });
  });

  unittest.group('obj-schema-Contact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Contact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContact(od);
    });
  });

  unittest.group('obj-schema-ContactDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContactDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContactDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContactDetails(od);
    });
  });

  unittest.group('obj-schema-Container', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Container.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContainer(od);
    });
  });

  unittest.group('obj-schema-Control', () {
    unittest.test('to-json--from-json', () async {
      final o = buildControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Control.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkControl(od);
    });
  });

  unittest.group('obj-schema-CreateResourceValueConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateResourceValueConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateResourceValueConfigRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateResourceValueConfigRequest(od);
    });
  });

  unittest.group('obj-schema-CustomModuleValidationError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomModuleValidationError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomModuleValidationError.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomModuleValidationError(od);
    });
  });

  unittest.group('obj-schema-CustomModuleValidationErrors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomModuleValidationErrors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomModuleValidationErrors.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomModuleValidationErrors(od);
    });
  });

  unittest.group('obj-schema-Cve', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCve();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Cve.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCve(od);
    });
  });

  unittest.group('obj-schema-Cvssv3', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCvssv3();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Cvssv3.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCvssv3(od);
    });
  });

  unittest.group('obj-schema-Cwe', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCwe();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Cwe.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCwe(od);
    });
  });

  unittest.group('obj-schema-DataAccessEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataAccessEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataAccessEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataAccessEvent(od);
    });
  });

  unittest.group('obj-schema-DataFlowEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataFlowEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataFlowEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataFlowEvent(od);
    });
  });

  unittest.group('obj-schema-DataRetentionDeletionEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataRetentionDeletionEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataRetentionDeletionEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataRetentionDeletionEvent(od);
    });
  });

  unittest.group('obj-schema-Database', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Database.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabase(od);
    });
  });

  unittest.group('obj-schema-Dataset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Dataset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataset(od);
    });
  });

  unittest.group('obj-schema-Denied', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDenied();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Denied.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDenied(od);
    });
  });

  unittest.group('obj-schema-Detection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Detection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDetection(od);
    });
  });

  unittest.group('obj-schema-Disk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Disk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDisk(od);
    });
  });

  unittest.group('obj-schema-DiskPath', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskPath();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskPath.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiskPath(od);
    });
  });

  unittest.group('obj-schema-DynamicMuteRecord', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicMuteRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicMuteRecord.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDynamicMuteRecord(od);
    });
  });

  unittest.group('obj-schema-EffectiveEventThreatDetectionCustomModule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEffectiveEventThreatDetectionCustomModule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EffectiveEventThreatDetectionCustomModule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEffectiveEventThreatDetectionCustomModule(od);
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

  unittest.group('obj-schema-EnvironmentVariable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironmentVariable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnvironmentVariable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnvironmentVariable(od);
    });
  });

  unittest.group('obj-schema-EventThreatDetectionCustomModule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventThreatDetectionCustomModule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventThreatDetectionCustomModule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventThreatDetectionCustomModule(od);
    });
  });

  unittest.group('obj-schema-ExfilResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExfilResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExfilResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExfilResource(od);
    });
  });

  unittest.group('obj-schema-Exfiltration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExfiltration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Exfiltration.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExfiltration(od);
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

  unittest.group('obj-schema-File', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.File.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFile(od);
    });
  });

  unittest.group('obj-schema-FileOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFileOperation(od);
    });
  });

  unittest.group('obj-schema-Finding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Finding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFinding(od);
    });
  });

  unittest.group('obj-schema-Folder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFolder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Folder.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFolder(od);
    });
  });

  unittest.group('obj-schema-Framework', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFramework();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Framework.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFramework(od);
    });
  });

  unittest.group('obj-schema-Geolocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeolocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Geolocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGeolocation(od);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPolicyOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetPolicyOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudSecuritycenterV1BigQueryExport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudSecuritycenterV1BigQueryExport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudSecuritycenterV1BigQueryExport(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudSecuritycenterV1Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudSecuritycenterV1Binding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudSecuritycenterV1Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudSecuritycenterV1Binding(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudSecuritycenterV1CustomConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudSecuritycenterV1CustomConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudSecuritycenterV1CustomConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudSecuritycenterV1CustomConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudSecuritycenterV1CustomOutputSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudSecuritycenterV1CustomOutputSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudSecuritycenterV1CustomOutputSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudSecuritycenterV1CustomOutputSpec(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudSecuritycenterV1ExternalSystem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudSecuritycenterV1ExternalSystem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudSecuritycenterV1ExternalSystem.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudSecuritycenterV1ExternalSystem(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudSecuritycenterV1MuteConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudSecuritycenterV1MuteConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudSecuritycenterV1MuteConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudSecuritycenterV1Property', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudSecuritycenterV1Property();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudSecuritycenterV1Property.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudSecuritycenterV1Property(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudSecuritycenterV1ResourceSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudSecuritycenterV1ResourceSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudSecuritycenterV1ResourceSelector.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudSecuritycenterV1ResourceSelector(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudSecuritycenterV1ResourceValueConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudSecuritycenterV1ResourceValueConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudSecuritycenterV1ResourceValueConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudSecuritycenterV1ResourceValueConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudSecuritycenterV1SensitiveDataProtectionMapping();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudSecuritycenterV1SensitiveDataProtectionMapping(od);
      });
    },
  );

  unittest.group('obj-schema-GroupAssetsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupAssetsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupAssetsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGroupAssetsRequest(od);
    });
  });

  unittest.group('obj-schema-GroupAssetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupAssetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupAssetsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGroupAssetsResponse(od);
    });
  });

  unittest.group('obj-schema-GroupFindingsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupFindingsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupFindingsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGroupFindingsRequest(od);
    });
  });

  unittest.group('obj-schema-GroupFindingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupFindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupFindingsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGroupFindingsResponse(od);
    });
  });

  unittest.group('obj-schema-GroupMembership', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupMembership.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGroupMembership(od);
    });
  });

  unittest.group('obj-schema-GroupResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGroupResult(od);
    });
  });

  unittest.group('obj-schema-IamBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIamBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IamBinding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIamBinding(od);
    });
  });

  unittest.group('obj-schema-IamPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIamPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IamPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIamPolicy(od);
    });
  });

  unittest.group('obj-schema-Indicator', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIndicator();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Indicator.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIndicator(od);
    });
  });

  unittest.group('obj-schema-IpRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIpRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IpRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIpRule(od);
    });
  });

  unittest.group('obj-schema-IpRules', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIpRules();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IpRules.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIpRules(od);
    });
  });

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Job.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJob(od);
    });
  });

  unittest.group('obj-schema-KernelRootkit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKernelRootkit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KernelRootkit.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKernelRootkit(od);
    });
  });

  unittest.group('obj-schema-Kubernetes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKubernetes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Kubernetes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKubernetes(od);
    });
  });

  unittest.group('obj-schema-Label', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Label.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLabel(od);
    });
  });

  unittest.group('obj-schema-ListAssetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAssetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAssetsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAssetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAssetsResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAssetsResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAssetsResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAssetsResult(od);
    });
  });

  unittest.group('obj-schema-ListAttackPathsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAttackPathsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAttackPathsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAttackPathsResponse(od);
    });
  });

  unittest.group('obj-schema-ListBigQueryExportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBigQueryExportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBigQueryExportsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListBigQueryExportsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-ListDescendantEventThreatDetectionCustomModulesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildListDescendantEventThreatDetectionCustomModulesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .ListDescendantEventThreatDetectionCustomModulesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkListDescendantEventThreatDetectionCustomModulesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-ListDescendantSecurityHealthAnalyticsCustomModulesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildListDescendantSecurityHealthAnalyticsCustomModulesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .ListDescendantSecurityHealthAnalyticsCustomModulesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkListDescendantSecurityHealthAnalyticsCustomModulesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-ListEffectiveEventThreatDetectionCustomModulesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildListEffectiveEventThreatDetectionCustomModulesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .ListEffectiveEventThreatDetectionCustomModulesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkListEffectiveEventThreatDetectionCustomModulesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-ListEffectiveSecurityHealthAnalyticsCustomModulesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildListEffectiveSecurityHealthAnalyticsCustomModulesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .ListEffectiveSecurityHealthAnalyticsCustomModulesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkListEffectiveSecurityHealthAnalyticsCustomModulesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-ListEventThreatDetectionCustomModulesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildListEventThreatDetectionCustomModulesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.ListEventThreatDetectionCustomModulesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkListEventThreatDetectionCustomModulesResponse(od);
      });
    },
  );

  unittest.group('obj-schema-ListFindingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFindingsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListFindingsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFindingsResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFindingsResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFindingsResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListFindingsResult(od);
    });
  });

  unittest.group('obj-schema-ListMuteConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMuteConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMuteConfigsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMuteConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListNotificationConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNotificationConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNotificationConfigsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListNotificationConfigsResponse(od);
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

  unittest.group('obj-schema-ListResourceValueConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListResourceValueConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListResourceValueConfigsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListResourceValueConfigsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-ListSecurityHealthAnalyticsCustomModulesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildListSecurityHealthAnalyticsCustomModulesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .ListSecurityHealthAnalyticsCustomModulesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkListSecurityHealthAnalyticsCustomModulesResponse(od);
      });
    },
  );

  unittest.group('obj-schema-ListSourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSourcesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSourcesResponse(od);
    });
  });

  unittest.group('obj-schema-ListValuedResourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListValuedResourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListValuedResourcesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListValuedResourcesResponse(od);
    });
  });

  unittest.group('obj-schema-LoadBalancer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoadBalancer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoadBalancer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoadBalancer(od);
    });
  });

  unittest.group('obj-schema-LogEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LogEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLogEntry(od);
    });
  });

  unittest.group('obj-schema-MemoryHashSignature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemoryHashSignature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MemoryHashSignature.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMemoryHashSignature(od);
    });
  });

  unittest.group('obj-schema-MitreAttack', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMitreAttack();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MitreAttack.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMitreAttack(od);
    });
  });

  unittest.group('obj-schema-MuteInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMuteInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MuteInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMuteInfo(od);
    });
  });

  unittest.group('obj-schema-Network', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Network.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetwork(od);
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

  unittest.group('obj-schema-NodePool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodePool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodePool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNodePool(od);
    });
  });

  unittest.group('obj-schema-Notebook', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotebook();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Notebook.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNotebook(od);
    });
  });

  unittest.group('obj-schema-NotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotificationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNotificationConfig(od);
    });
  });

  unittest.group('obj-schema-Object', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Object.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkObject(od);
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

  unittest.group('obj-schema-OrgPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrgPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrgPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOrgPolicy(od);
    });
  });

  unittest.group('obj-schema-OrganizationSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrganizationSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrganizationSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOrganizationSettings(od);
    });
  });

  unittest.group('obj-schema-Package', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Package.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackage(od);
    });
  });

  unittest.group('obj-schema-PathNodeAssociatedFinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPathNodeAssociatedFinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PathNodeAssociatedFinding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPathNodeAssociatedFinding(od);
    });
  });

  unittest.group('obj-schema-Pipeline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPipeline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Pipeline.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPipeline(od);
    });
  });

  unittest.group('obj-schema-Pod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Pod.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPod(od);
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

  unittest.group('obj-schema-PolicyDriftDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyDriftDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyDriftDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicyDriftDetails(od);
    });
  });

  unittest.group('obj-schema-PortRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPortRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PortRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPortRange(od);
    });
  });

  unittest.group('obj-schema-Position', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Position.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPosition(od);
    });
  });

  unittest.group('obj-schema-Process', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Process.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProcess(od);
    });
  });

  unittest.group('obj-schema-ProcessSignature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcessSignature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProcessSignature.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProcessSignature(od);
    });
  });

  unittest.group('obj-schema-Reference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Reference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReference(od);
    });
  });

  unittest.group('obj-schema-Requests', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequests();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Requests.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRequests(od);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Resource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResource(od);
    });
  });

  unittest.group('obj-schema-ResourcePath', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourcePath();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourcePath.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourcePath(od);
    });
  });

  unittest.group('obj-schema-ResourcePathNode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourcePathNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourcePathNode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourcePathNode(od);
    });
  });

  unittest.group('obj-schema-ResourceValueConfigMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceValueConfigMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceValueConfigMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceValueConfigMetadata(od);
    });
  });

  unittest.group('obj-schema-Role', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Role.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRole(od);
    });
  });

  unittest.group('obj-schema-RunAssetDiscoveryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunAssetDiscoveryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunAssetDiscoveryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunAssetDiscoveryRequest(od);
    });
  });

  unittest.group('obj-schema-SecurityBulletin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityBulletin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityBulletin.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityBulletin(od);
    });
  });

  unittest.group('obj-schema-SecurityCenterProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityCenterProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityCenterProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityCenterProperties(od);
    });
  });

  unittest.group('obj-schema-SecurityMarks', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityMarks();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityMarks.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityMarks(od);
    });
  });

  unittest.group('obj-schema-SecurityPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityPolicy(od);
    });
  });

  unittest.group('obj-schema-SecurityPosture', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityPosture();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityPosture.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityPosture(od);
    });
  });

  unittest.group('obj-schema-ServiceAccountDelegationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceAccountDelegationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceAccountDelegationInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceAccountDelegationInfo(od);
    });
  });

  unittest.group('obj-schema-SetFindingStateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetFindingStateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetFindingStateRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetFindingStateRequest(od);
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

  unittest.group('obj-schema-SetMuteRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetMuteRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetMuteRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetMuteRequest(od);
    });
  });

  unittest.group(
    'obj-schema-SimulateSecurityHealthAnalyticsCustomModuleRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSimulateSecurityHealthAnalyticsCustomModuleRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .SimulateSecurityHealthAnalyticsCustomModuleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSimulateSecurityHealthAnalyticsCustomModuleRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-SimulateSecurityHealthAnalyticsCustomModuleResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSimulateSecurityHealthAnalyticsCustomModuleResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .SimulateSecurityHealthAnalyticsCustomModuleResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSimulateSecurityHealthAnalyticsCustomModuleResponse(od);
      });
    },
  );

  unittest.group('obj-schema-SimulatedResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSimulatedResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SimulatedResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSimulatedResource(od);
    });
  });

  unittest.group('obj-schema-SimulatedResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSimulatedResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SimulatedResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSimulatedResult(od);
    });
  });

  unittest.group('obj-schema-Simulation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSimulation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Simulation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSimulation(od);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Source.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSource(od);
    });
  });

  unittest.group('obj-schema-StaticMute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStaticMute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StaticMute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStaticMute(od);
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

  unittest.group('obj-schema-StreamingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStreamingConfig(od);
    });
  });

  unittest.group('obj-schema-Subject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Subject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubject(od);
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

  unittest.group('obj-schema-TicketInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTicketInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TicketInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTicketInfo(od);
    });
  });

  unittest.group('obj-schema-ToxicCombination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToxicCombination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToxicCombination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToxicCombination(od);
    });
  });

  unittest.group(
    'obj-schema-ValidateEventThreatDetectionCustomModuleRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildValidateEventThreatDetectionCustomModuleRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.ValidateEventThreatDetectionCustomModuleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkValidateEventThreatDetectionCustomModuleRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-ValidateEventThreatDetectionCustomModuleResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildValidateEventThreatDetectionCustomModuleResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .ValidateEventThreatDetectionCustomModuleResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkValidateEventThreatDetectionCustomModuleResponse(od);
      });
    },
  );

  unittest.group('obj-schema-ValuedResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValuedResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValuedResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValuedResource(od);
    });
  });

  unittest.group('obj-schema-VertexAi', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVertexAi();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VertexAi.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVertexAi(od);
    });
  });

  unittest.group('obj-schema-Vulnerability', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerability();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Vulnerability.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVulnerability(od);
    });
  });

  unittest.group('obj-schema-YaraRuleSignature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYaraRuleSignature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YaraRuleSignature.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkYaraRuleSignature(od);
    });
  });

  unittest.group('resource-FoldersAssetsResource', () {
    unittest.test('method--group', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.assets;
      final arg_request = buildGroupAssetsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GroupAssetsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGroupAssetsRequest(obj);

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
          final resp = convert.json.encode(buildGroupAssetsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.group(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGroupAssetsResponse(response as api.GroupAssetsResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.assets;
      final arg_parent = 'foo';
      final arg_compareDuration = 'foo';
      final arg_fieldMask = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readTime = 'foo';
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
            queryMap['compareDuration']!.first,
            unittest.equals(arg_compareDuration),
          );
          unittest.expect(
            queryMap['fieldMask']!.first,
            unittest.equals(arg_fieldMask),
          );
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
            queryMap['readTime']!.first,
            unittest.equals(arg_readTime),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAssetsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        compareDuration: arg_compareDuration,
        fieldMask: arg_fieldMask,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        readTime: arg_readTime,
        $fields: arg_$fields,
      );
      checkListAssetsResponse(response as api.ListAssetsResponse);
    });

    unittest.test('method--updateSecurityMarks', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.assets;
      final arg_request = buildSecurityMarks();
      final arg_name = 'foo';
      final arg_startTime = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SecurityMarks.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSecurityMarks(obj);

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
            queryMap['startTime']!.first,
            unittest.equals(arg_startTime),
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
          final resp = convert.json.encode(buildSecurityMarks());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateSecurityMarks(
        arg_request,
        arg_name,
        startTime: arg_startTime,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkSecurityMarks(response as api.SecurityMarks);
    });
  });

  unittest.group('resource-FoldersBigQueryExportsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.bigQueryExports;
      final arg_request = buildGoogleCloudSecuritycenterV1BigQueryExport();
      final arg_parent = 'foo';
      final arg_bigQueryExportId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1BigQueryExport(obj);

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
            queryMap['bigQueryExportId']!.first,
            unittest.equals(arg_bigQueryExportId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1BigQueryExport(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        bigQueryExportId: arg_bigQueryExportId,
        $fields: arg_$fields,
      );
      checkGoogleCloudSecuritycenterV1BigQueryExport(
        response as api.GoogleCloudSecuritycenterV1BigQueryExport,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.bigQueryExports;
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
      final res = api.SecurityCommandCenterApi(mock).folders.bigQueryExports;
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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1BigQueryExport(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudSecuritycenterV1BigQueryExport(
        response as api.GoogleCloudSecuritycenterV1BigQueryExport,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.bigQueryExports;
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
          final resp = convert.json.encode(buildListBigQueryExportsResponse());
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
      checkListBigQueryExportsResponse(
        response as api.ListBigQueryExportsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.bigQueryExports;
      final arg_request = buildGoogleCloudSecuritycenterV1BigQueryExport();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1BigQueryExport(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1BigQueryExport(),
          );
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
      checkGoogleCloudSecuritycenterV1BigQueryExport(
        response as api.GoogleCloudSecuritycenterV1BigQueryExport,
      );
    });
  });

  unittest.group('resource-FoldersEventThreatDetectionSettingsResource', () {
    unittest.test('method--validateCustomModule', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.eventThreatDetectionSettings;
      final arg_request =
          buildValidateEventThreatDetectionCustomModuleRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .ValidateEventThreatDetectionCustomModuleRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkValidateEventThreatDetectionCustomModuleRequest(obj);

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
          final resp = convert.json.encode(
            buildValidateEventThreatDetectionCustomModuleResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.validateCustomModule(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkValidateEventThreatDetectionCustomModuleResponse(
        response as api.ValidateEventThreatDetectionCustomModuleResponse,
      );
    });
  });

  unittest.group('resource-FoldersEventThreatDetectionSettingsCustomModulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.eventThreatDetectionSettings.customModules;
      final arg_request = buildEventThreatDetectionCustomModule();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EventThreatDetectionCustomModule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEventThreatDetectionCustomModule(obj);

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
          final resp = convert.json.encode(
            buildEventThreatDetectionCustomModule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkEventThreatDetectionCustomModule(
        response as api.EventThreatDetectionCustomModule,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.eventThreatDetectionSettings.customModules;
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
          api.SecurityCommandCenterApi(
            mock,
          ).folders.eventThreatDetectionSettings.customModules;
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
          final resp = convert.json.encode(
            buildEventThreatDetectionCustomModule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEventThreatDetectionCustomModule(
        response as api.EventThreatDetectionCustomModule,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.eventThreatDetectionSettings.customModules;
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
            buildListEventThreatDetectionCustomModulesResponse(),
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
      checkListEventThreatDetectionCustomModulesResponse(
        response as api.ListEventThreatDetectionCustomModulesResponse,
      );
    });

    unittest.test('method--listDescendant', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.eventThreatDetectionSettings.customModules;
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
            buildListDescendantEventThreatDetectionCustomModulesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listDescendant(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDescendantEventThreatDetectionCustomModulesResponse(
        response as api.ListDescendantEventThreatDetectionCustomModulesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.eventThreatDetectionSettings.customModules;
      final arg_request = buildEventThreatDetectionCustomModule();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EventThreatDetectionCustomModule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEventThreatDetectionCustomModule(obj);

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
          final resp = convert.json.encode(
            buildEventThreatDetectionCustomModule(),
          );
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
      checkEventThreatDetectionCustomModule(
        response as api.EventThreatDetectionCustomModule,
      );
    });
  });

  unittest.group(
    'resource-FoldersEventThreatDetectionSettingsEffectiveCustomModulesResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).folders.eventThreatDetectionSettings.effectiveCustomModules;
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
            final resp = convert.json.encode(
              buildEffectiveEventThreatDetectionCustomModule(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkEffectiveEventThreatDetectionCustomModule(
          response as api.EffectiveEventThreatDetectionCustomModule,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).folders.eventThreatDetectionSettings.effectiveCustomModules;
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
              buildListEffectiveEventThreatDetectionCustomModulesResponse(),
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
        checkListEffectiveEventThreatDetectionCustomModulesResponse(
          response
              as api.ListEffectiveEventThreatDetectionCustomModulesResponse,
        );
      });
    },
  );

  unittest.group('resource-FoldersFindingsResource', () {
    unittest.test('method--bulkMute', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.findings;
      final arg_request = buildBulkMuteFindingsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BulkMuteFindingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBulkMuteFindingsRequest(obj);

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
      final response = await res.bulkMute(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-FoldersLocationsMuteConfigsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).folders.locations.muteConfigs;
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
          api.SecurityCommandCenterApi(mock).folders.locations.muteConfigs;
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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1MuteConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudSecuritycenterV1MuteConfig(
        response as api.GoogleCloudSecuritycenterV1MuteConfig,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).folders.locations.muteConfigs;
      final arg_request = buildGoogleCloudSecuritycenterV1MuteConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1MuteConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1MuteConfig(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1MuteConfig(),
          );
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
      checkGoogleCloudSecuritycenterV1MuteConfig(
        response as api.GoogleCloudSecuritycenterV1MuteConfig,
      );
    });
  });

  unittest.group('resource-FoldersMuteConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.muteConfigs;
      final arg_request = buildGoogleCloudSecuritycenterV1MuteConfig();
      final arg_parent = 'foo';
      final arg_muteConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1MuteConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1MuteConfig(obj);

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
            queryMap['muteConfigId']!.first,
            unittest.equals(arg_muteConfigId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1MuteConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        muteConfigId: arg_muteConfigId,
        $fields: arg_$fields,
      );
      checkGoogleCloudSecuritycenterV1MuteConfig(
        response as api.GoogleCloudSecuritycenterV1MuteConfig,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.muteConfigs;
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
      final res = api.SecurityCommandCenterApi(mock).folders.muteConfigs;
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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1MuteConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudSecuritycenterV1MuteConfig(
        response as api.GoogleCloudSecuritycenterV1MuteConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.muteConfigs;
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
          final resp = convert.json.encode(buildListMuteConfigsResponse());
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
      checkListMuteConfigsResponse(response as api.ListMuteConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.muteConfigs;
      final arg_request = buildGoogleCloudSecuritycenterV1MuteConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1MuteConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1MuteConfig(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1MuteConfig(),
          );
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
      checkGoogleCloudSecuritycenterV1MuteConfig(
        response as api.GoogleCloudSecuritycenterV1MuteConfig,
      );
    });
  });

  unittest.group('resource-FoldersNotificationConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).folders.notificationConfigs;
      final arg_request = buildNotificationConfig();
      final arg_parent = 'foo';
      final arg_configId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.NotificationConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNotificationConfig(obj);

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
            queryMap['configId']!.first,
            unittest.equals(arg_configId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildNotificationConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        configId: arg_configId,
        $fields: arg_$fields,
      );
      checkNotificationConfig(response as api.NotificationConfig);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).folders.notificationConfigs;
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
          api.SecurityCommandCenterApi(mock).folders.notificationConfigs;
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
          final resp = convert.json.encode(buildNotificationConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNotificationConfig(response as api.NotificationConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).folders.notificationConfigs;
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
            buildListNotificationConfigsResponse(),
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
      checkListNotificationConfigsResponse(
        response as api.ListNotificationConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).folders.notificationConfigs;
      final arg_request = buildNotificationConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.NotificationConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNotificationConfig(obj);

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
          final resp = convert.json.encode(buildNotificationConfig());
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
      checkNotificationConfig(response as api.NotificationConfig);
    });
  });

  unittest.group('resource-FoldersSecurityHealthAnalyticsSettingsCustomModulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.securityHealthAnalyticsSettings.customModules;
      final arg_request =
          buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
            obj,
          );

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
        response
            as api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.securityHealthAnalyticsSettings.customModules;
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
          api.SecurityCommandCenterApi(
            mock,
          ).folders.securityHealthAnalyticsSettings.customModules;
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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
        response
            as api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.securityHealthAnalyticsSettings.customModules;
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
            buildListSecurityHealthAnalyticsCustomModulesResponse(),
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
      checkListSecurityHealthAnalyticsCustomModulesResponse(
        response as api.ListSecurityHealthAnalyticsCustomModulesResponse,
      );
    });

    unittest.test('method--listDescendant', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.securityHealthAnalyticsSettings.customModules;
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
            buildListDescendantSecurityHealthAnalyticsCustomModulesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listDescendant(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDescendantSecurityHealthAnalyticsCustomModulesResponse(
        response
            as api.ListDescendantSecurityHealthAnalyticsCustomModulesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.securityHealthAnalyticsSettings.customModules;
      final arg_request =
          buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
            obj,
          );

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(),
          );
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
      checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
        response
            as api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule,
      );
    });

    unittest.test('method--simulate', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.securityHealthAnalyticsSettings.customModules;
      final arg_request =
          buildSimulateSecurityHealthAnalyticsCustomModuleRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .SimulateSecurityHealthAnalyticsCustomModuleRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSimulateSecurityHealthAnalyticsCustomModuleRequest(obj);

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
          final resp = convert.json.encode(
            buildSimulateSecurityHealthAnalyticsCustomModuleResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.simulate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkSimulateSecurityHealthAnalyticsCustomModuleResponse(
        response as api.SimulateSecurityHealthAnalyticsCustomModuleResponse,
      );
    });
  });

  unittest.group(
    'resource-FoldersSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).folders.securityHealthAnalyticsSettings.effectiveCustomModules;
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
            final resp = convert.json.encode(
              buildGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule(
          response
              as api.GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).folders.securityHealthAnalyticsSettings.effectiveCustomModules;
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
              buildListEffectiveSecurityHealthAnalyticsCustomModulesResponse(),
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
        checkListEffectiveSecurityHealthAnalyticsCustomModulesResponse(
          response
              as api.ListEffectiveSecurityHealthAnalyticsCustomModulesResponse,
        );
      });
    },
  );

  unittest.group('resource-FoldersSourcesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.sources;
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
          final resp = convert.json.encode(buildListSourcesResponse());
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
      checkListSourcesResponse(response as api.ListSourcesResponse);
    });
  });

  unittest.group('resource-FoldersSourcesFindingsResource', () {
    unittest.test('method--group', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.sources.findings;
      final arg_request = buildGroupFindingsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GroupFindingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGroupFindingsRequest(obj);

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
          final resp = convert.json.encode(buildGroupFindingsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.group(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGroupFindingsResponse(response as api.GroupFindingsResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.sources.findings;
      final arg_parent = 'foo';
      final arg_compareDuration = 'foo';
      final arg_fieldMask = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readTime = 'foo';
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
            queryMap['compareDuration']!.first,
            unittest.equals(arg_compareDuration),
          );
          unittest.expect(
            queryMap['fieldMask']!.first,
            unittest.equals(arg_fieldMask),
          );
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
            queryMap['readTime']!.first,
            unittest.equals(arg_readTime),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListFindingsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        compareDuration: arg_compareDuration,
        fieldMask: arg_fieldMask,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        readTime: arg_readTime,
        $fields: arg_$fields,
      );
      checkListFindingsResponse(response as api.ListFindingsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.sources.findings;
      final arg_request = buildFinding();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Finding.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFinding(obj);

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
          final resp = convert.json.encode(buildFinding());
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
      checkFinding(response as api.Finding);
    });

    unittest.test('method--setMute', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.sources.findings;
      final arg_request = buildSetMuteRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetMuteRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetMuteRequest(obj);

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
          final resp = convert.json.encode(buildFinding());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setMute(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkFinding(response as api.Finding);
    });

    unittest.test('method--setState', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.sources.findings;
      final arg_request = buildSetFindingStateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetFindingStateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetFindingStateRequest(obj);

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
          final resp = convert.json.encode(buildFinding());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setState(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkFinding(response as api.Finding);
    });

    unittest.test('method--updateSecurityMarks', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders.sources.findings;
      final arg_request = buildSecurityMarks();
      final arg_name = 'foo';
      final arg_startTime = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SecurityMarks.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSecurityMarks(obj);

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
            queryMap['startTime']!.first,
            unittest.equals(arg_startTime),
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
          final resp = convert.json.encode(buildSecurityMarks());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateSecurityMarks(
        arg_request,
        arg_name,
        startTime: arg_startTime,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkSecurityMarks(response as api.SecurityMarks);
    });
  });

  unittest.group('resource-FoldersSourcesFindingsExternalSystemsResource', () {
    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.sources.findings.externalSystems;
      final arg_request = buildGoogleCloudSecuritycenterV1ExternalSystem();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1ExternalSystem.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1ExternalSystem(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1ExternalSystem(),
          );
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
      checkGoogleCloudSecuritycenterV1ExternalSystem(
        response as api.GoogleCloudSecuritycenterV1ExternalSystem,
      );
    });
  });

  unittest.group('resource-OrganizationsResource', () {
    unittest.test('method--getOrganizationSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations;
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
          final resp = convert.json.encode(buildOrganizationSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getOrganizationSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkOrganizationSettings(response as api.OrganizationSettings);
    });

    unittest.test('method--updateOrganizationSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations;
      final arg_request = buildOrganizationSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.OrganizationSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOrganizationSettings(obj);

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
          final resp = convert.json.encode(buildOrganizationSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateOrganizationSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOrganizationSettings(response as api.OrganizationSettings);
    });
  });

  unittest.group('resource-OrganizationsAssetsResource', () {
    unittest.test('method--group', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.assets;
      final arg_request = buildGroupAssetsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GroupAssetsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGroupAssetsRequest(obj);

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
          final resp = convert.json.encode(buildGroupAssetsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.group(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGroupAssetsResponse(response as api.GroupAssetsResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.assets;
      final arg_parent = 'foo';
      final arg_compareDuration = 'foo';
      final arg_fieldMask = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readTime = 'foo';
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
            queryMap['compareDuration']!.first,
            unittest.equals(arg_compareDuration),
          );
          unittest.expect(
            queryMap['fieldMask']!.first,
            unittest.equals(arg_fieldMask),
          );
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
            queryMap['readTime']!.first,
            unittest.equals(arg_readTime),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAssetsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        compareDuration: arg_compareDuration,
        fieldMask: arg_fieldMask,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        readTime: arg_readTime,
        $fields: arg_$fields,
      );
      checkListAssetsResponse(response as api.ListAssetsResponse);
    });

    unittest.test('method--runDiscovery', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.assets;
      final arg_request = buildRunAssetDiscoveryRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RunAssetDiscoveryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRunAssetDiscoveryRequest(obj);

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
      final response = await res.runDiscovery(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--updateSecurityMarks', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.assets;
      final arg_request = buildSecurityMarks();
      final arg_name = 'foo';
      final arg_startTime = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SecurityMarks.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSecurityMarks(obj);

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
            queryMap['startTime']!.first,
            unittest.equals(arg_startTime),
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
          final resp = convert.json.encode(buildSecurityMarks());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateSecurityMarks(
        arg_request,
        arg_name,
        startTime: arg_startTime,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkSecurityMarks(response as api.SecurityMarks);
    });
  });

  unittest.group('resource-OrganizationsAttackPathsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.attackPaths;
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
          final resp = convert.json.encode(buildListAttackPathsResponse());
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
      checkListAttackPathsResponse(response as api.ListAttackPathsResponse);
    });
  });

  unittest.group('resource-OrganizationsBigQueryExportsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.bigQueryExports;
      final arg_request = buildGoogleCloudSecuritycenterV1BigQueryExport();
      final arg_parent = 'foo';
      final arg_bigQueryExportId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1BigQueryExport(obj);

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
            queryMap['bigQueryExportId']!.first,
            unittest.equals(arg_bigQueryExportId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1BigQueryExport(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        bigQueryExportId: arg_bigQueryExportId,
        $fields: arg_$fields,
      );
      checkGoogleCloudSecuritycenterV1BigQueryExport(
        response as api.GoogleCloudSecuritycenterV1BigQueryExport,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.bigQueryExports;
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
          api.SecurityCommandCenterApi(mock).organizations.bigQueryExports;
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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1BigQueryExport(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudSecuritycenterV1BigQueryExport(
        response as api.GoogleCloudSecuritycenterV1BigQueryExport,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.bigQueryExports;
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
          final resp = convert.json.encode(buildListBigQueryExportsResponse());
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
      checkListBigQueryExportsResponse(
        response as api.ListBigQueryExportsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.bigQueryExports;
      final arg_request = buildGoogleCloudSecuritycenterV1BigQueryExport();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1BigQueryExport(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1BigQueryExport(),
          );
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
      checkGoogleCloudSecuritycenterV1BigQueryExport(
        response as api.GoogleCloudSecuritycenterV1BigQueryExport,
      );
    });
  });

  unittest.group(
    'resource-OrganizationsEventThreatDetectionSettingsResource',
    () {
      unittest.test('method--validateCustomModule', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.eventThreatDetectionSettings;
        final arg_request =
            buildValidateEventThreatDetectionCustomModuleRequest();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api
                .ValidateEventThreatDetectionCustomModuleRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkValidateEventThreatDetectionCustomModuleRequest(obj);

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
            final resp = convert.json.encode(
              buildValidateEventThreatDetectionCustomModuleResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.validateCustomModule(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkValidateEventThreatDetectionCustomModuleResponse(
          response as api.ValidateEventThreatDetectionCustomModuleResponse,
        );
      });
    },
  );

  unittest.group(
    'resource-OrganizationsEventThreatDetectionSettingsCustomModulesResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.eventThreatDetectionSettings.customModules;
        final arg_request = buildEventThreatDetectionCustomModule();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.EventThreatDetectionCustomModule.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkEventThreatDetectionCustomModule(obj);

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
            final resp = convert.json.encode(
              buildEventThreatDetectionCustomModule(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkEventThreatDetectionCustomModule(
          response as api.EventThreatDetectionCustomModule,
        );
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.eventThreatDetectionSettings.customModules;
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
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.eventThreatDetectionSettings.customModules;
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
            final resp = convert.json.encode(
              buildEventThreatDetectionCustomModule(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkEventThreatDetectionCustomModule(
          response as api.EventThreatDetectionCustomModule,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.eventThreatDetectionSettings.customModules;
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
              buildListEventThreatDetectionCustomModulesResponse(),
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
        checkListEventThreatDetectionCustomModulesResponse(
          response as api.ListEventThreatDetectionCustomModulesResponse,
        );
      });

      unittest.test('method--listDescendant', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.eventThreatDetectionSettings.customModules;
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
              buildListDescendantEventThreatDetectionCustomModulesResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.listDescendant(
          arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListDescendantEventThreatDetectionCustomModulesResponse(
          response
              as api.ListDescendantEventThreatDetectionCustomModulesResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.eventThreatDetectionSettings.customModules;
        final arg_request = buildEventThreatDetectionCustomModule();
        final arg_name = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.EventThreatDetectionCustomModule.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkEventThreatDetectionCustomModule(obj);

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
            final resp = convert.json.encode(
              buildEventThreatDetectionCustomModule(),
            );
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
        checkEventThreatDetectionCustomModule(
          response as api.EventThreatDetectionCustomModule,
        );
      });
    },
  );

  unittest.group(
    'resource-OrganizationsEventThreatDetectionSettingsEffectiveCustomModulesResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.eventThreatDetectionSettings.effectiveCustomModules;
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
            final resp = convert.json.encode(
              buildEffectiveEventThreatDetectionCustomModule(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkEffectiveEventThreatDetectionCustomModule(
          response as api.EffectiveEventThreatDetectionCustomModule,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.eventThreatDetectionSettings.effectiveCustomModules;
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
              buildListEffectiveEventThreatDetectionCustomModulesResponse(),
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
        checkListEffectiveEventThreatDetectionCustomModulesResponse(
          response
              as api.ListEffectiveEventThreatDetectionCustomModulesResponse,
        );
      });
    },
  );

  unittest.group('resource-OrganizationsFindingsResource', () {
    unittest.test('method--bulkMute', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.findings;
      final arg_request = buildBulkMuteFindingsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BulkMuteFindingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBulkMuteFindingsRequest(obj);

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
      final response = await res.bulkMute(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OrganizationsLocationsMuteConfigsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).organizations.locations.muteConfigs;
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
          api.SecurityCommandCenterApi(
            mock,
          ).organizations.locations.muteConfigs;
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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1MuteConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudSecuritycenterV1MuteConfig(
        response as api.GoogleCloudSecuritycenterV1MuteConfig,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).organizations.locations.muteConfigs;
      final arg_request = buildGoogleCloudSecuritycenterV1MuteConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1MuteConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1MuteConfig(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1MuteConfig(),
          );
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
      checkGoogleCloudSecuritycenterV1MuteConfig(
        response as api.GoogleCloudSecuritycenterV1MuteConfig,
      );
    });
  });

  unittest.group('resource-OrganizationsMuteConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.muteConfigs;
      final arg_request = buildGoogleCloudSecuritycenterV1MuteConfig();
      final arg_parent = 'foo';
      final arg_muteConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1MuteConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1MuteConfig(obj);

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
            queryMap['muteConfigId']!.first,
            unittest.equals(arg_muteConfigId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1MuteConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        muteConfigId: arg_muteConfigId,
        $fields: arg_$fields,
      );
      checkGoogleCloudSecuritycenterV1MuteConfig(
        response as api.GoogleCloudSecuritycenterV1MuteConfig,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.muteConfigs;
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
      final res = api.SecurityCommandCenterApi(mock).organizations.muteConfigs;
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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1MuteConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudSecuritycenterV1MuteConfig(
        response as api.GoogleCloudSecuritycenterV1MuteConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.muteConfigs;
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
          final resp = convert.json.encode(buildListMuteConfigsResponse());
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
      checkListMuteConfigsResponse(response as api.ListMuteConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.muteConfigs;
      final arg_request = buildGoogleCloudSecuritycenterV1MuteConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1MuteConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1MuteConfig(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1MuteConfig(),
          );
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
      checkGoogleCloudSecuritycenterV1MuteConfig(
        response as api.GoogleCloudSecuritycenterV1MuteConfig,
      );
    });
  });

  unittest.group('resource-OrganizationsNotificationConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.notificationConfigs;
      final arg_request = buildNotificationConfig();
      final arg_parent = 'foo';
      final arg_configId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.NotificationConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNotificationConfig(obj);

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
            queryMap['configId']!.first,
            unittest.equals(arg_configId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildNotificationConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        configId: arg_configId,
        $fields: arg_$fields,
      );
      checkNotificationConfig(response as api.NotificationConfig);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.notificationConfigs;
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
          api.SecurityCommandCenterApi(mock).organizations.notificationConfigs;
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
          final resp = convert.json.encode(buildNotificationConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNotificationConfig(response as api.NotificationConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.notificationConfigs;
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
            buildListNotificationConfigsResponse(),
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
      checkListNotificationConfigsResponse(
        response as api.ListNotificationConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.notificationConfigs;
      final arg_request = buildNotificationConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.NotificationConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNotificationConfig(obj);

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
          final resp = convert.json.encode(buildNotificationConfig());
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
      checkNotificationConfig(response as api.NotificationConfig);
    });
  });

  unittest.group('resource-OrganizationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.operations;
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
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.operations;
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
      final res = api.SecurityCommandCenterApi(mock).organizations.operations;
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
      final res = api.SecurityCommandCenterApi(mock).organizations.operations;
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

  unittest.group('resource-OrganizationsResourceValueConfigsResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.resourceValueConfigs;
      final arg_request = buildBatchCreateResourceValueConfigsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchCreateResourceValueConfigsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchCreateResourceValueConfigsRequest(obj);

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
          final resp = convert.json.encode(
            buildBatchCreateResourceValueConfigsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchCreate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkBatchCreateResourceValueConfigsResponse(
        response as api.BatchCreateResourceValueConfigsResponse,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.resourceValueConfigs;
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
          api.SecurityCommandCenterApi(mock).organizations.resourceValueConfigs;
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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1ResourceValueConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudSecuritycenterV1ResourceValueConfig(
        response as api.GoogleCloudSecuritycenterV1ResourceValueConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.resourceValueConfigs;
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
            buildListResourceValueConfigsResponse(),
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
      checkListResourceValueConfigsResponse(
        response as api.ListResourceValueConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.resourceValueConfigs;
      final arg_request = buildGoogleCloudSecuritycenterV1ResourceValueConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudSecuritycenterV1ResourceValueConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1ResourceValueConfig(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1ResourceValueConfig(),
          );
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
      checkGoogleCloudSecuritycenterV1ResourceValueConfig(
        response as api.GoogleCloudSecuritycenterV1ResourceValueConfig,
      );
    });
  });

  unittest.group(
    'resource-OrganizationsSecurityHealthAnalyticsSettingsCustomModulesResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.securityHealthAnalyticsSettings.customModules;
        final arg_request =
            buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api
                .GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
              obj,
            );

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
            final resp = convert.json.encode(
              buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
          response
              as api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule,
        );
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.securityHealthAnalyticsSettings.customModules;
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
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.securityHealthAnalyticsSettings.customModules;
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
            final resp = convert.json.encode(
              buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
          response
              as api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.securityHealthAnalyticsSettings.customModules;
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
              buildListSecurityHealthAnalyticsCustomModulesResponse(),
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
        checkListSecurityHealthAnalyticsCustomModulesResponse(
          response as api.ListSecurityHealthAnalyticsCustomModulesResponse,
        );
      });

      unittest.test('method--listDescendant', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.securityHealthAnalyticsSettings.customModules;
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
              buildListDescendantSecurityHealthAnalyticsCustomModulesResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.listDescendant(
          arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListDescendantSecurityHealthAnalyticsCustomModulesResponse(
          response
              as api.ListDescendantSecurityHealthAnalyticsCustomModulesResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.securityHealthAnalyticsSettings.customModules;
        final arg_request =
            buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule();
        final arg_name = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api
                .GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
              obj,
            );

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
            final resp = convert.json.encode(
              buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(),
            );
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
        checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
          response
              as api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule,
        );
      });

      unittest.test('method--simulate', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.securityHealthAnalyticsSettings.customModules;
        final arg_request =
            buildSimulateSecurityHealthAnalyticsCustomModuleRequest();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api
                .SimulateSecurityHealthAnalyticsCustomModuleRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkSimulateSecurityHealthAnalyticsCustomModuleRequest(obj);

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
            final resp = convert.json.encode(
              buildSimulateSecurityHealthAnalyticsCustomModuleResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.simulate(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkSimulateSecurityHealthAnalyticsCustomModuleResponse(
          response as api.SimulateSecurityHealthAnalyticsCustomModuleResponse,
        );
      });
    },
  );

  unittest.group(
    'resource-OrganizationsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(mock)
                .organizations
                .securityHealthAnalyticsSettings
                .effectiveCustomModules;
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
            final resp = convert.json.encode(
              buildGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule(
          response
              as api.GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(mock)
                .organizations
                .securityHealthAnalyticsSettings
                .effectiveCustomModules;
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
              buildListEffectiveSecurityHealthAnalyticsCustomModulesResponse(),
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
        checkListEffectiveSecurityHealthAnalyticsCustomModulesResponse(
          response
              as api.ListEffectiveSecurityHealthAnalyticsCustomModulesResponse,
        );
      });
    },
  );

  unittest.group('resource-OrganizationsSimulationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.simulations;
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
          final resp = convert.json.encode(buildSimulation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSimulation(response as api.Simulation);
    });
  });

  unittest.group(
    'resource-OrganizationsSimulationsAttackExposureResultsAttackPathsResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.simulations.attackExposureResults.attackPaths;
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
            final resp = convert.json.encode(buildListAttackPathsResponse());
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
        checkListAttackPathsResponse(response as api.ListAttackPathsResponse);
      });
    },
  );

  unittest.group(
    'resource-OrganizationsSimulationsAttackExposureResultsValuedResourcesResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.simulations.attackExposureResults.valuedResources;
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
              buildListValuedResourcesResponse(),
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
        checkListValuedResourcesResponse(
          response as api.ListValuedResourcesResponse,
        );
      });
    },
  );

  unittest.group('resource-OrganizationsSimulationsAttackPathsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).organizations.simulations.attackPaths;
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
          final resp = convert.json.encode(buildListAttackPathsResponse());
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
      checkListAttackPathsResponse(response as api.ListAttackPathsResponse);
    });
  });

  unittest.group('resource-OrganizationsSimulationsValuedResourcesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).organizations.simulations.valuedResources;
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
          final resp = convert.json.encode(buildValuedResource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkValuedResource(response as api.ValuedResource);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).organizations.simulations.valuedResources;
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
          final resp = convert.json.encode(buildListValuedResourcesResponse());
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
      checkListValuedResourcesResponse(
        response as api.ListValuedResourcesResponse,
      );
    });
  });

  unittest.group(
    'resource-OrganizationsSimulationsValuedResourcesAttackPathsResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.simulations.valuedResources.attackPaths;
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
            final resp = convert.json.encode(buildListAttackPathsResponse());
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
        checkListAttackPathsResponse(response as api.ListAttackPathsResponse);
      });
    },
  );

  unittest.group('resource-OrganizationsSourcesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.sources;
      final arg_request = buildSource();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Source.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSource(obj);

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
          final resp = convert.json.encode(buildSource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkSource(response as api.Source);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.sources;
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
          final resp = convert.json.encode(buildSource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSource(response as api.Source);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.sources;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.sources;
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
          final resp = convert.json.encode(buildListSourcesResponse());
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
      checkListSourcesResponse(response as api.ListSourcesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.sources;
      final arg_request = buildSource();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Source.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSource(obj);

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
          final resp = convert.json.encode(buildSource());
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
      checkSource(response as api.Source);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations.sources;
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
      final res = api.SecurityCommandCenterApi(mock).organizations.sources;
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

  unittest.group('resource-OrganizationsSourcesFindingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.sources.findings;
      final arg_request = buildFinding();
      final arg_parent = 'foo';
      final arg_findingId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Finding.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFinding(obj);

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
            queryMap['findingId']!.first,
            unittest.equals(arg_findingId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFinding());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        findingId: arg_findingId,
        $fields: arg_$fields,
      );
      checkFinding(response as api.Finding);
    });

    unittest.test('method--group', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.sources.findings;
      final arg_request = buildGroupFindingsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GroupFindingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGroupFindingsRequest(obj);

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
          final resp = convert.json.encode(buildGroupFindingsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.group(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGroupFindingsResponse(response as api.GroupFindingsResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.sources.findings;
      final arg_parent = 'foo';
      final arg_compareDuration = 'foo';
      final arg_fieldMask = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readTime = 'foo';
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
            queryMap['compareDuration']!.first,
            unittest.equals(arg_compareDuration),
          );
          unittest.expect(
            queryMap['fieldMask']!.first,
            unittest.equals(arg_fieldMask),
          );
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
            queryMap['readTime']!.first,
            unittest.equals(arg_readTime),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListFindingsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        compareDuration: arg_compareDuration,
        fieldMask: arg_fieldMask,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        readTime: arg_readTime,
        $fields: arg_$fields,
      );
      checkListFindingsResponse(response as api.ListFindingsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.sources.findings;
      final arg_request = buildFinding();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Finding.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFinding(obj);

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
          final resp = convert.json.encode(buildFinding());
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
      checkFinding(response as api.Finding);
    });

    unittest.test('method--setMute', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.sources.findings;
      final arg_request = buildSetMuteRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetMuteRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetMuteRequest(obj);

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
          final resp = convert.json.encode(buildFinding());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setMute(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkFinding(response as api.Finding);
    });

    unittest.test('method--setState', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.sources.findings;
      final arg_request = buildSetFindingStateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetFindingStateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetFindingStateRequest(obj);

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
          final resp = convert.json.encode(buildFinding());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setState(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkFinding(response as api.Finding);
    });

    unittest.test('method--updateSecurityMarks', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.sources.findings;
      final arg_request = buildSecurityMarks();
      final arg_name = 'foo';
      final arg_startTime = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SecurityMarks.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSecurityMarks(obj);

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
            queryMap['startTime']!.first,
            unittest.equals(arg_startTime),
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
          final resp = convert.json.encode(buildSecurityMarks());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateSecurityMarks(
        arg_request,
        arg_name,
        startTime: arg_startTime,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkSecurityMarks(response as api.SecurityMarks);
    });
  });

  unittest.group(
    'resource-OrganizationsSourcesFindingsExternalSystemsResource',
    () {
      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.sources.findings.externalSystems;
        final arg_request = buildGoogleCloudSecuritycenterV1ExternalSystem();
        final arg_name = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.GoogleCloudSecuritycenterV1ExternalSystem.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkGoogleCloudSecuritycenterV1ExternalSystem(obj);

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
            final resp = convert.json.encode(
              buildGoogleCloudSecuritycenterV1ExternalSystem(),
            );
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
        checkGoogleCloudSecuritycenterV1ExternalSystem(
          response as api.GoogleCloudSecuritycenterV1ExternalSystem,
        );
      });
    },
  );

  unittest.group('resource-OrganizationsValuedResourcesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).organizations.valuedResources;
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
          final resp = convert.json.encode(buildListValuedResourcesResponse());
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
      checkListValuedResourcesResponse(
        response as api.ListValuedResourcesResponse,
      );
    });
  });

  unittest.group('resource-ProjectsAssetsResource', () {
    unittest.test('method--group', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.assets;
      final arg_request = buildGroupAssetsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GroupAssetsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGroupAssetsRequest(obj);

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
          final resp = convert.json.encode(buildGroupAssetsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.group(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGroupAssetsResponse(response as api.GroupAssetsResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.assets;
      final arg_parent = 'foo';
      final arg_compareDuration = 'foo';
      final arg_fieldMask = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readTime = 'foo';
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
            queryMap['compareDuration']!.first,
            unittest.equals(arg_compareDuration),
          );
          unittest.expect(
            queryMap['fieldMask']!.first,
            unittest.equals(arg_fieldMask),
          );
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
            queryMap['readTime']!.first,
            unittest.equals(arg_readTime),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAssetsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        compareDuration: arg_compareDuration,
        fieldMask: arg_fieldMask,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        readTime: arg_readTime,
        $fields: arg_$fields,
      );
      checkListAssetsResponse(response as api.ListAssetsResponse);
    });

    unittest.test('method--updateSecurityMarks', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.assets;
      final arg_request = buildSecurityMarks();
      final arg_name = 'foo';
      final arg_startTime = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SecurityMarks.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSecurityMarks(obj);

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
            queryMap['startTime']!.first,
            unittest.equals(arg_startTime),
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
          final resp = convert.json.encode(buildSecurityMarks());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateSecurityMarks(
        arg_request,
        arg_name,
        startTime: arg_startTime,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkSecurityMarks(response as api.SecurityMarks);
    });
  });

  unittest.group('resource-ProjectsBigQueryExportsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.bigQueryExports;
      final arg_request = buildGoogleCloudSecuritycenterV1BigQueryExport();
      final arg_parent = 'foo';
      final arg_bigQueryExportId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1BigQueryExport(obj);

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
            queryMap['bigQueryExportId']!.first,
            unittest.equals(arg_bigQueryExportId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1BigQueryExport(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        bigQueryExportId: arg_bigQueryExportId,
        $fields: arg_$fields,
      );
      checkGoogleCloudSecuritycenterV1BigQueryExport(
        response as api.GoogleCloudSecuritycenterV1BigQueryExport,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.bigQueryExports;
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
      final res = api.SecurityCommandCenterApi(mock).projects.bigQueryExports;
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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1BigQueryExport(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudSecuritycenterV1BigQueryExport(
        response as api.GoogleCloudSecuritycenterV1BigQueryExport,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.bigQueryExports;
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
          final resp = convert.json.encode(buildListBigQueryExportsResponse());
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
      checkListBigQueryExportsResponse(
        response as api.ListBigQueryExportsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.bigQueryExports;
      final arg_request = buildGoogleCloudSecuritycenterV1BigQueryExport();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1BigQueryExport(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1BigQueryExport(),
          );
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
      checkGoogleCloudSecuritycenterV1BigQueryExport(
        response as api.GoogleCloudSecuritycenterV1BigQueryExport,
      );
    });
  });

  unittest.group('resource-ProjectsEventThreatDetectionSettingsResource', () {
    unittest.test('method--validateCustomModule', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.eventThreatDetectionSettings;
      final arg_request =
          buildValidateEventThreatDetectionCustomModuleRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .ValidateEventThreatDetectionCustomModuleRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkValidateEventThreatDetectionCustomModuleRequest(obj);

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
          final resp = convert.json.encode(
            buildValidateEventThreatDetectionCustomModuleResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.validateCustomModule(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkValidateEventThreatDetectionCustomModuleResponse(
        response as api.ValidateEventThreatDetectionCustomModuleResponse,
      );
    });
  });

  unittest.group('resource-ProjectsEventThreatDetectionSettingsCustomModulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.eventThreatDetectionSettings.customModules;
      final arg_request = buildEventThreatDetectionCustomModule();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EventThreatDetectionCustomModule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEventThreatDetectionCustomModule(obj);

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
          final resp = convert.json.encode(
            buildEventThreatDetectionCustomModule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkEventThreatDetectionCustomModule(
        response as api.EventThreatDetectionCustomModule,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.eventThreatDetectionSettings.customModules;
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
          api.SecurityCommandCenterApi(
            mock,
          ).projects.eventThreatDetectionSettings.customModules;
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
          final resp = convert.json.encode(
            buildEventThreatDetectionCustomModule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEventThreatDetectionCustomModule(
        response as api.EventThreatDetectionCustomModule,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.eventThreatDetectionSettings.customModules;
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
            buildListEventThreatDetectionCustomModulesResponse(),
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
      checkListEventThreatDetectionCustomModulesResponse(
        response as api.ListEventThreatDetectionCustomModulesResponse,
      );
    });

    unittest.test('method--listDescendant', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.eventThreatDetectionSettings.customModules;
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
            buildListDescendantEventThreatDetectionCustomModulesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listDescendant(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDescendantEventThreatDetectionCustomModulesResponse(
        response as api.ListDescendantEventThreatDetectionCustomModulesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.eventThreatDetectionSettings.customModules;
      final arg_request = buildEventThreatDetectionCustomModule();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EventThreatDetectionCustomModule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEventThreatDetectionCustomModule(obj);

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
          final resp = convert.json.encode(
            buildEventThreatDetectionCustomModule(),
          );
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
      checkEventThreatDetectionCustomModule(
        response as api.EventThreatDetectionCustomModule,
      );
    });
  });

  unittest.group(
    'resource-ProjectsEventThreatDetectionSettingsEffectiveCustomModulesResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).projects.eventThreatDetectionSettings.effectiveCustomModules;
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
            final resp = convert.json.encode(
              buildEffectiveEventThreatDetectionCustomModule(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkEffectiveEventThreatDetectionCustomModule(
          response as api.EffectiveEventThreatDetectionCustomModule,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).projects.eventThreatDetectionSettings.effectiveCustomModules;
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
              buildListEffectiveEventThreatDetectionCustomModulesResponse(),
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
        checkListEffectiveEventThreatDetectionCustomModulesResponse(
          response
              as api.ListEffectiveEventThreatDetectionCustomModulesResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsFindingsResource', () {
    unittest.test('method--bulkMute', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.findings;
      final arg_request = buildBulkMuteFindingsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BulkMuteFindingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBulkMuteFindingsRequest(obj);

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
      final response = await res.bulkMute(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsMuteConfigsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).projects.locations.muteConfigs;
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
          api.SecurityCommandCenterApi(mock).projects.locations.muteConfigs;
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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1MuteConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudSecuritycenterV1MuteConfig(
        response as api.GoogleCloudSecuritycenterV1MuteConfig,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).projects.locations.muteConfigs;
      final arg_request = buildGoogleCloudSecuritycenterV1MuteConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1MuteConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1MuteConfig(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1MuteConfig(),
          );
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
      checkGoogleCloudSecuritycenterV1MuteConfig(
        response as api.GoogleCloudSecuritycenterV1MuteConfig,
      );
    });
  });

  unittest.group('resource-ProjectsMuteConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.muteConfigs;
      final arg_request = buildGoogleCloudSecuritycenterV1MuteConfig();
      final arg_parent = 'foo';
      final arg_muteConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1MuteConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1MuteConfig(obj);

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
            queryMap['muteConfigId']!.first,
            unittest.equals(arg_muteConfigId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1MuteConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        muteConfigId: arg_muteConfigId,
        $fields: arg_$fields,
      );
      checkGoogleCloudSecuritycenterV1MuteConfig(
        response as api.GoogleCloudSecuritycenterV1MuteConfig,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.muteConfigs;
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
      final res = api.SecurityCommandCenterApi(mock).projects.muteConfigs;
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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1MuteConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudSecuritycenterV1MuteConfig(
        response as api.GoogleCloudSecuritycenterV1MuteConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.muteConfigs;
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
          final resp = convert.json.encode(buildListMuteConfigsResponse());
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
      checkListMuteConfigsResponse(response as api.ListMuteConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.muteConfigs;
      final arg_request = buildGoogleCloudSecuritycenterV1MuteConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1MuteConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1MuteConfig(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1MuteConfig(),
          );
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
      checkGoogleCloudSecuritycenterV1MuteConfig(
        response as api.GoogleCloudSecuritycenterV1MuteConfig,
      );
    });
  });

  unittest.group('resource-ProjectsNotificationConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).projects.notificationConfigs;
      final arg_request = buildNotificationConfig();
      final arg_parent = 'foo';
      final arg_configId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.NotificationConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNotificationConfig(obj);

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
            queryMap['configId']!.first,
            unittest.equals(arg_configId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildNotificationConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        configId: arg_configId,
        $fields: arg_$fields,
      );
      checkNotificationConfig(response as api.NotificationConfig);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).projects.notificationConfigs;
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
          api.SecurityCommandCenterApi(mock).projects.notificationConfigs;
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
          final resp = convert.json.encode(buildNotificationConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNotificationConfig(response as api.NotificationConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).projects.notificationConfigs;
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
            buildListNotificationConfigsResponse(),
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
      checkListNotificationConfigsResponse(
        response as api.ListNotificationConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).projects.notificationConfigs;
      final arg_request = buildNotificationConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.NotificationConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNotificationConfig(obj);

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
          final resp = convert.json.encode(buildNotificationConfig());
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
      checkNotificationConfig(response as api.NotificationConfig);
    });
  });

  unittest.group('resource-ProjectsSecurityHealthAnalyticsSettingsCustomModulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.securityHealthAnalyticsSettings.customModules;
      final arg_request =
          buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
            obj,
          );

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
        response
            as api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.securityHealthAnalyticsSettings.customModules;
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
          api.SecurityCommandCenterApi(
            mock,
          ).projects.securityHealthAnalyticsSettings.customModules;
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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
        response
            as api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.securityHealthAnalyticsSettings.customModules;
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
            buildListSecurityHealthAnalyticsCustomModulesResponse(),
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
      checkListSecurityHealthAnalyticsCustomModulesResponse(
        response as api.ListSecurityHealthAnalyticsCustomModulesResponse,
      );
    });

    unittest.test('method--listDescendant', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.securityHealthAnalyticsSettings.customModules;
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
            buildListDescendantSecurityHealthAnalyticsCustomModulesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listDescendant(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDescendantSecurityHealthAnalyticsCustomModulesResponse(
        response
            as api.ListDescendantSecurityHealthAnalyticsCustomModulesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.securityHealthAnalyticsSettings.customModules;
      final arg_request =
          buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
            obj,
          );

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(),
          );
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
      checkGoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule(
        response
            as api.GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule,
      );
    });

    unittest.test('method--simulate', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.securityHealthAnalyticsSettings.customModules;
      final arg_request =
          buildSimulateSecurityHealthAnalyticsCustomModuleRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .SimulateSecurityHealthAnalyticsCustomModuleRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSimulateSecurityHealthAnalyticsCustomModuleRequest(obj);

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
          final resp = convert.json.encode(
            buildSimulateSecurityHealthAnalyticsCustomModuleResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.simulate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkSimulateSecurityHealthAnalyticsCustomModuleResponse(
        response as api.SimulateSecurityHealthAnalyticsCustomModuleResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).projects.securityHealthAnalyticsSettings.effectiveCustomModules;
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
            final resp = convert.json.encode(
              buildGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule(
          response
              as api.GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).projects.securityHealthAnalyticsSettings.effectiveCustomModules;
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
              buildListEffectiveSecurityHealthAnalyticsCustomModulesResponse(),
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
        checkListEffectiveSecurityHealthAnalyticsCustomModulesResponse(
          response
              as api.ListEffectiveSecurityHealthAnalyticsCustomModulesResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsSourcesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.sources;
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
          final resp = convert.json.encode(buildListSourcesResponse());
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
      checkListSourcesResponse(response as api.ListSourcesResponse);
    });
  });

  unittest.group('resource-ProjectsSourcesFindingsResource', () {
    unittest.test('method--group', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.sources.findings;
      final arg_request = buildGroupFindingsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GroupFindingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGroupFindingsRequest(obj);

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
          final resp = convert.json.encode(buildGroupFindingsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.group(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGroupFindingsResponse(response as api.GroupFindingsResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.sources.findings;
      final arg_parent = 'foo';
      final arg_compareDuration = 'foo';
      final arg_fieldMask = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readTime = 'foo';
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
            queryMap['compareDuration']!.first,
            unittest.equals(arg_compareDuration),
          );
          unittest.expect(
            queryMap['fieldMask']!.first,
            unittest.equals(arg_fieldMask),
          );
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
            queryMap['readTime']!.first,
            unittest.equals(arg_readTime),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListFindingsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        compareDuration: arg_compareDuration,
        fieldMask: arg_fieldMask,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        readTime: arg_readTime,
        $fields: arg_$fields,
      );
      checkListFindingsResponse(response as api.ListFindingsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.sources.findings;
      final arg_request = buildFinding();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Finding.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFinding(obj);

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
          final resp = convert.json.encode(buildFinding());
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
      checkFinding(response as api.Finding);
    });

    unittest.test('method--setMute', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.sources.findings;
      final arg_request = buildSetMuteRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetMuteRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetMuteRequest(obj);

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
          final resp = convert.json.encode(buildFinding());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setMute(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkFinding(response as api.Finding);
    });

    unittest.test('method--setState', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.sources.findings;
      final arg_request = buildSetFindingStateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetFindingStateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetFindingStateRequest(obj);

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
          final resp = convert.json.encode(buildFinding());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setState(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkFinding(response as api.Finding);
    });

    unittest.test('method--updateSecurityMarks', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects.sources.findings;
      final arg_request = buildSecurityMarks();
      final arg_name = 'foo';
      final arg_startTime = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SecurityMarks.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSecurityMarks(obj);

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
            queryMap['startTime']!.first,
            unittest.equals(arg_startTime),
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
          final resp = convert.json.encode(buildSecurityMarks());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateSecurityMarks(
        arg_request,
        arg_name,
        startTime: arg_startTime,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkSecurityMarks(response as api.SecurityMarks);
    });
  });

  unittest.group('resource-ProjectsSourcesFindingsExternalSystemsResource', () {
    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.sources.findings.externalSystems;
      final arg_request = buildGoogleCloudSecuritycenterV1ExternalSystem();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudSecuritycenterV1ExternalSystem.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudSecuritycenterV1ExternalSystem(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudSecuritycenterV1ExternalSystem(),
          );
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
      checkGoogleCloudSecuritycenterV1ExternalSystem(
        response as api.GoogleCloudSecuritycenterV1ExternalSystem,
      );
    });
  });
}
