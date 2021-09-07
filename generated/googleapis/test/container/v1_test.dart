// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/container/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAcceleratorConfig = 0;
api.AcceleratorConfig buildAcceleratorConfig() {
  final o = api.AcceleratorConfig();
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    o.acceleratorCount = 'foo';
    o.acceleratorType = 'foo';
    o.gpuPartitionSize = 'foo';
  }
  buildCounterAcceleratorConfig--;
  return o;
}

void checkAcceleratorConfig(api.AcceleratorConfig o) {
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    unittest.expect(
      o.acceleratorCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.acceleratorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gpuPartitionSize!,
      unittest.equals('foo'),
    );
  }
  buildCounterAcceleratorConfig--;
}

core.int buildCounterAddonsConfig = 0;
api.AddonsConfig buildAddonsConfig() {
  final o = api.AddonsConfig();
  buildCounterAddonsConfig++;
  if (buildCounterAddonsConfig < 3) {
    o.cloudRunConfig = buildCloudRunConfig();
    o.configConnectorConfig = buildConfigConnectorConfig();
    o.dnsCacheConfig = buildDnsCacheConfig();
    o.gcePersistentDiskCsiDriverConfig =
        buildGcePersistentDiskCsiDriverConfig();
    o.gcpFilestoreCsiDriverConfig = buildGcpFilestoreCsiDriverConfig();
    o.horizontalPodAutoscaling = buildHorizontalPodAutoscaling();
    o.httpLoadBalancing = buildHttpLoadBalancing();
    o.kubernetesDashboard = buildKubernetesDashboard();
    o.networkPolicyConfig = buildNetworkPolicyConfig();
  }
  buildCounterAddonsConfig--;
  return o;
}

void checkAddonsConfig(api.AddonsConfig o) {
  buildCounterAddonsConfig++;
  if (buildCounterAddonsConfig < 3) {
    checkCloudRunConfig(o.cloudRunConfig!);
    checkConfigConnectorConfig(o.configConnectorConfig!);
    checkDnsCacheConfig(o.dnsCacheConfig!);
    checkGcePersistentDiskCsiDriverConfig(o.gcePersistentDiskCsiDriverConfig!);
    checkGcpFilestoreCsiDriverConfig(o.gcpFilestoreCsiDriverConfig!);
    checkHorizontalPodAutoscaling(o.horizontalPodAutoscaling!);
    checkHttpLoadBalancing(o.httpLoadBalancing!);
    checkKubernetesDashboard(o.kubernetesDashboard!);
    checkNetworkPolicyConfig(o.networkPolicyConfig!);
  }
  buildCounterAddonsConfig--;
}

core.int buildCounterAuthenticatorGroupsConfig = 0;
api.AuthenticatorGroupsConfig buildAuthenticatorGroupsConfig() {
  final o = api.AuthenticatorGroupsConfig();
  buildCounterAuthenticatorGroupsConfig++;
  if (buildCounterAuthenticatorGroupsConfig < 3) {
    o.enabled = true;
    o.securityGroup = 'foo';
  }
  buildCounterAuthenticatorGroupsConfig--;
  return o;
}

void checkAuthenticatorGroupsConfig(api.AuthenticatorGroupsConfig o) {
  buildCounterAuthenticatorGroupsConfig++;
  if (buildCounterAuthenticatorGroupsConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.securityGroup!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthenticatorGroupsConfig--;
}

core.int buildCounterAutoUpgradeOptions = 0;
api.AutoUpgradeOptions buildAutoUpgradeOptions() {
  final o = api.AutoUpgradeOptions();
  buildCounterAutoUpgradeOptions++;
  if (buildCounterAutoUpgradeOptions < 3) {
    o.autoUpgradeStartTime = 'foo';
    o.description = 'foo';
  }
  buildCounterAutoUpgradeOptions--;
  return o;
}

void checkAutoUpgradeOptions(api.AutoUpgradeOptions o) {
  buildCounterAutoUpgradeOptions++;
  if (buildCounterAutoUpgradeOptions < 3) {
    unittest.expect(
      o.autoUpgradeStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
  }
  buildCounterAutoUpgradeOptions--;
}

core.int buildCounterAutopilot = 0;
api.Autopilot buildAutopilot() {
  final o = api.Autopilot();
  buildCounterAutopilot++;
  if (buildCounterAutopilot < 3) {
    o.enabled = true;
  }
  buildCounterAutopilot--;
  return o;
}

void checkAutopilot(api.Autopilot o) {
  buildCounterAutopilot++;
  if (buildCounterAutopilot < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterAutopilot--;
}

core.List<core.String> buildUnnamed2189() => [
      'foo',
      'foo',
    ];

void checkUnnamed2189(core.List<core.String> o) {
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

core.int buildCounterAutoprovisioningNodePoolDefaults = 0;
api.AutoprovisioningNodePoolDefaults buildAutoprovisioningNodePoolDefaults() {
  final o = api.AutoprovisioningNodePoolDefaults();
  buildCounterAutoprovisioningNodePoolDefaults++;
  if (buildCounterAutoprovisioningNodePoolDefaults < 3) {
    o.bootDiskKmsKey = 'foo';
    o.diskSizeGb = 42;
    o.diskType = 'foo';
    o.imageType = 'foo';
    o.management = buildNodeManagement();
    o.minCpuPlatform = 'foo';
    o.oauthScopes = buildUnnamed2189();
    o.serviceAccount = 'foo';
    o.shieldedInstanceConfig = buildShieldedInstanceConfig();
    o.upgradeSettings = buildUpgradeSettings();
  }
  buildCounterAutoprovisioningNodePoolDefaults--;
  return o;
}

void checkAutoprovisioningNodePoolDefaults(
    api.AutoprovisioningNodePoolDefaults o) {
  buildCounterAutoprovisioningNodePoolDefaults++;
  if (buildCounterAutoprovisioningNodePoolDefaults < 3) {
    unittest.expect(
      o.bootDiskKmsKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.diskType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageType!,
      unittest.equals('foo'),
    );
    checkNodeManagement(o.management!);
    unittest.expect(
      o.minCpuPlatform!,
      unittest.equals('foo'),
    );
    checkUnnamed2189(o.oauthScopes!);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    checkShieldedInstanceConfig(o.shieldedInstanceConfig!);
    checkUpgradeSettings(o.upgradeSettings!);
  }
  buildCounterAutoprovisioningNodePoolDefaults--;
}

core.int buildCounterBigQueryDestination = 0;
api.BigQueryDestination buildBigQueryDestination() {
  final o = api.BigQueryDestination();
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    o.datasetId = 'foo';
  }
  buildCounterBigQueryDestination--;
  return o;
}

void checkBigQueryDestination(api.BigQueryDestination o) {
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    unittest.expect(
      o.datasetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBigQueryDestination--;
}

core.int buildCounterBinaryAuthorization = 0;
api.BinaryAuthorization buildBinaryAuthorization() {
  final o = api.BinaryAuthorization();
  buildCounterBinaryAuthorization++;
  if (buildCounterBinaryAuthorization < 3) {
    o.enabled = true;
  }
  buildCounterBinaryAuthorization--;
  return o;
}

void checkBinaryAuthorization(api.BinaryAuthorization o) {
  buildCounterBinaryAuthorization++;
  if (buildCounterBinaryAuthorization < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterBinaryAuthorization--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {
    o.name = 'foo';
    o.operationId = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterCancelOperationRequest--;
}

core.int buildCounterCidrBlock = 0;
api.CidrBlock buildCidrBlock() {
  final o = api.CidrBlock();
  buildCounterCidrBlock++;
  if (buildCounterCidrBlock < 3) {
    o.cidrBlock = 'foo';
    o.displayName = 'foo';
  }
  buildCounterCidrBlock--;
  return o;
}

void checkCidrBlock(api.CidrBlock o) {
  buildCounterCidrBlock++;
  if (buildCounterCidrBlock < 3) {
    unittest.expect(
      o.cidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterCidrBlock--;
}

core.int buildCounterClientCertificateConfig = 0;
api.ClientCertificateConfig buildClientCertificateConfig() {
  final o = api.ClientCertificateConfig();
  buildCounterClientCertificateConfig++;
  if (buildCounterClientCertificateConfig < 3) {
    o.issueClientCertificate = true;
  }
  buildCounterClientCertificateConfig--;
  return o;
}

void checkClientCertificateConfig(api.ClientCertificateConfig o) {
  buildCounterClientCertificateConfig++;
  if (buildCounterClientCertificateConfig < 3) {
    unittest.expect(o.issueClientCertificate!, unittest.isTrue);
  }
  buildCounterClientCertificateConfig--;
}

core.int buildCounterCloudRunConfig = 0;
api.CloudRunConfig buildCloudRunConfig() {
  final o = api.CloudRunConfig();
  buildCounterCloudRunConfig++;
  if (buildCounterCloudRunConfig < 3) {
    o.disabled = true;
    o.loadBalancerType = 'foo';
  }
  buildCounterCloudRunConfig--;
  return o;
}

void checkCloudRunConfig(api.CloudRunConfig o) {
  buildCounterCloudRunConfig++;
  if (buildCounterCloudRunConfig < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.loadBalancerType!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudRunConfig--;
}

core.List<api.StatusCondition> buildUnnamed2190() => [
      buildStatusCondition(),
      buildStatusCondition(),
    ];

void checkUnnamed2190(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
}

core.List<core.String> buildUnnamed2191() => [
      'foo',
      'foo',
    ];

void checkUnnamed2191(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2192() => [
      'foo',
      'foo',
    ];

void checkUnnamed2192(core.List<core.String> o) {
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

core.List<api.NodePool> buildUnnamed2193() => [
      buildNodePool(),
      buildNodePool(),
    ];

void checkUnnamed2193(core.List<api.NodePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodePool(o[0]);
  checkNodePool(o[1]);
}

core.Map<core.String, core.String> buildUnnamed2194() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2194(core.Map<core.String, core.String> o) {
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

core.int buildCounterCluster = 0;
api.Cluster buildCluster() {
  final o = api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.addonsConfig = buildAddonsConfig();
    o.authenticatorGroupsConfig = buildAuthenticatorGroupsConfig();
    o.autopilot = buildAutopilot();
    o.autoscaling = buildClusterAutoscaling();
    o.binaryAuthorization = buildBinaryAuthorization();
    o.clusterIpv4Cidr = 'foo';
    o.conditions = buildUnnamed2190();
    o.confidentialNodes = buildConfidentialNodes();
    o.createTime = 'foo';
    o.currentMasterVersion = 'foo';
    o.currentNodeCount = 42;
    o.currentNodeVersion = 'foo';
    o.databaseEncryption = buildDatabaseEncryption();
    o.defaultMaxPodsConstraint = buildMaxPodsConstraint();
    o.description = 'foo';
    o.enableKubernetesAlpha = true;
    o.enableTpu = true;
    o.endpoint = 'foo';
    o.expireTime = 'foo';
    o.id = 'foo';
    o.initialClusterVersion = 'foo';
    o.initialNodeCount = 42;
    o.instanceGroupUrls = buildUnnamed2191();
    o.ipAllocationPolicy = buildIPAllocationPolicy();
    o.labelFingerprint = 'foo';
    o.legacyAbac = buildLegacyAbac();
    o.location = 'foo';
    o.locations = buildUnnamed2192();
    o.loggingConfig = buildLoggingConfig();
    o.loggingService = 'foo';
    o.maintenancePolicy = buildMaintenancePolicy();
    o.masterAuth = buildMasterAuth();
    o.masterAuthorizedNetworksConfig = buildMasterAuthorizedNetworksConfig();
    o.monitoringConfig = buildMonitoringConfig();
    o.monitoringService = 'foo';
    o.name = 'foo';
    o.network = 'foo';
    o.networkConfig = buildNetworkConfig();
    o.networkPolicy = buildNetworkPolicy();
    o.nodeConfig = buildNodeConfig();
    o.nodeIpv4CidrSize = 42;
    o.nodePools = buildUnnamed2193();
    o.notificationConfig = buildNotificationConfig();
    o.privateClusterConfig = buildPrivateClusterConfig();
    o.releaseChannel = buildReleaseChannel();
    o.resourceLabels = buildUnnamed2194();
    o.resourceUsageExportConfig = buildResourceUsageExportConfig();
    o.selfLink = 'foo';
    o.servicesIpv4Cidr = 'foo';
    o.shieldedNodes = buildShieldedNodes();
    o.status = 'foo';
    o.statusMessage = 'foo';
    o.subnetwork = 'foo';
    o.tpuIpv4CidrBlock = 'foo';
    o.verticalPodAutoscaling = buildVerticalPodAutoscaling();
    o.workloadIdentityConfig = buildWorkloadIdentityConfig();
    o.zone = 'foo';
  }
  buildCounterCluster--;
  return o;
}

void checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    checkAddonsConfig(o.addonsConfig!);
    checkAuthenticatorGroupsConfig(o.authenticatorGroupsConfig!);
    checkAutopilot(o.autopilot!);
    checkClusterAutoscaling(o.autoscaling!);
    checkBinaryAuthorization(o.binaryAuthorization!);
    unittest.expect(
      o.clusterIpv4Cidr!,
      unittest.equals('foo'),
    );
    checkUnnamed2190(o.conditions!);
    checkConfidentialNodes(o.confidentialNodes!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentMasterVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentNodeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.currentNodeVersion!,
      unittest.equals('foo'),
    );
    checkDatabaseEncryption(o.databaseEncryption!);
    checkMaxPodsConstraint(o.defaultMaxPodsConstraint!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableKubernetesAlpha!, unittest.isTrue);
    unittest.expect(o.enableTpu!, unittest.isTrue);
    unittest.expect(
      o.endpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.initialClusterVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.initialNodeCount!,
      unittest.equals(42),
    );
    checkUnnamed2191(o.instanceGroupUrls!);
    checkIPAllocationPolicy(o.ipAllocationPolicy!);
    unittest.expect(
      o.labelFingerprint!,
      unittest.equals('foo'),
    );
    checkLegacyAbac(o.legacyAbac!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    checkUnnamed2192(o.locations!);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(
      o.loggingService!,
      unittest.equals('foo'),
    );
    checkMaintenancePolicy(o.maintenancePolicy!);
    checkMasterAuth(o.masterAuth!);
    checkMasterAuthorizedNetworksConfig(o.masterAuthorizedNetworksConfig!);
    checkMonitoringConfig(o.monitoringConfig!);
    unittest.expect(
      o.monitoringService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    checkNetworkConfig(o.networkConfig!);
    checkNetworkPolicy(o.networkPolicy!);
    checkNodeConfig(o.nodeConfig!);
    unittest.expect(
      o.nodeIpv4CidrSize!,
      unittest.equals(42),
    );
    checkUnnamed2193(o.nodePools!);
    checkNotificationConfig(o.notificationConfig!);
    checkPrivateClusterConfig(o.privateClusterConfig!);
    checkReleaseChannel(o.releaseChannel!);
    checkUnnamed2194(o.resourceLabels!);
    checkResourceUsageExportConfig(o.resourceUsageExportConfig!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.servicesIpv4Cidr!,
      unittest.equals('foo'),
    );
    checkShieldedNodes(o.shieldedNodes!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tpuIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    checkVerticalPodAutoscaling(o.verticalPodAutoscaling!);
    checkWorkloadIdentityConfig(o.workloadIdentityConfig!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterCluster--;
}

core.List<core.String> buildUnnamed2195() => [
      'foo',
      'foo',
    ];

void checkUnnamed2195(core.List<core.String> o) {
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

core.List<api.ResourceLimit> buildUnnamed2196() => [
      buildResourceLimit(),
      buildResourceLimit(),
    ];

void checkUnnamed2196(core.List<api.ResourceLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceLimit(o[0]);
  checkResourceLimit(o[1]);
}

core.int buildCounterClusterAutoscaling = 0;
api.ClusterAutoscaling buildClusterAutoscaling() {
  final o = api.ClusterAutoscaling();
  buildCounterClusterAutoscaling++;
  if (buildCounterClusterAutoscaling < 3) {
    o.autoprovisioningLocations = buildUnnamed2195();
    o.autoprovisioningNodePoolDefaults =
        buildAutoprovisioningNodePoolDefaults();
    o.autoscalingProfile = 'foo';
    o.enableNodeAutoprovisioning = true;
    o.resourceLimits = buildUnnamed2196();
  }
  buildCounterClusterAutoscaling--;
  return o;
}

void checkClusterAutoscaling(api.ClusterAutoscaling o) {
  buildCounterClusterAutoscaling++;
  if (buildCounterClusterAutoscaling < 3) {
    checkUnnamed2195(o.autoprovisioningLocations!);
    checkAutoprovisioningNodePoolDefaults(o.autoprovisioningNodePoolDefaults!);
    unittest.expect(
      o.autoscalingProfile!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableNodeAutoprovisioning!, unittest.isTrue);
    checkUnnamed2196(o.resourceLimits!);
  }
  buildCounterClusterAutoscaling--;
}

core.List<core.String> buildUnnamed2197() => [
      'foo',
      'foo',
    ];

void checkUnnamed2197(core.List<core.String> o) {
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

core.int buildCounterClusterUpdate = 0;
api.ClusterUpdate buildClusterUpdate() {
  final o = api.ClusterUpdate();
  buildCounterClusterUpdate++;
  if (buildCounterClusterUpdate < 3) {
    o.desiredAddonsConfig = buildAddonsConfig();
    o.desiredAuthenticatorGroupsConfig = buildAuthenticatorGroupsConfig();
    o.desiredAutopilot = buildAutopilot();
    o.desiredBinaryAuthorization = buildBinaryAuthorization();
    o.desiredClusterAutoscaling = buildClusterAutoscaling();
    o.desiredDatabaseEncryption = buildDatabaseEncryption();
    o.desiredDatapathProvider = 'foo';
    o.desiredDefaultSnatStatus = buildDefaultSnatStatus();
    o.desiredImageType = 'foo';
    o.desiredIntraNodeVisibilityConfig = buildIntraNodeVisibilityConfig();
    o.desiredL4ilbSubsettingConfig = buildILBSubsettingConfig();
    o.desiredLocations = buildUnnamed2197();
    o.desiredLoggingConfig = buildLoggingConfig();
    o.desiredLoggingService = 'foo';
    o.desiredMasterAuthorizedNetworksConfig =
        buildMasterAuthorizedNetworksConfig();
    o.desiredMasterVersion = 'foo';
    o.desiredMonitoringConfig = buildMonitoringConfig();
    o.desiredMonitoringService = 'foo';
    o.desiredNodePoolAutoscaling = buildNodePoolAutoscaling();
    o.desiredNodePoolId = 'foo';
    o.desiredNodeVersion = 'foo';
    o.desiredNotificationConfig = buildNotificationConfig();
    o.desiredPrivateClusterConfig = buildPrivateClusterConfig();
    o.desiredPrivateIpv6GoogleAccess = 'foo';
    o.desiredReleaseChannel = buildReleaseChannel();
    o.desiredResourceUsageExportConfig = buildResourceUsageExportConfig();
    o.desiredShieldedNodes = buildShieldedNodes();
    o.desiredVerticalPodAutoscaling = buildVerticalPodAutoscaling();
    o.desiredWorkloadIdentityConfig = buildWorkloadIdentityConfig();
  }
  buildCounterClusterUpdate--;
  return o;
}

void checkClusterUpdate(api.ClusterUpdate o) {
  buildCounterClusterUpdate++;
  if (buildCounterClusterUpdate < 3) {
    checkAddonsConfig(o.desiredAddonsConfig!);
    checkAuthenticatorGroupsConfig(o.desiredAuthenticatorGroupsConfig!);
    checkAutopilot(o.desiredAutopilot!);
    checkBinaryAuthorization(o.desiredBinaryAuthorization!);
    checkClusterAutoscaling(o.desiredClusterAutoscaling!);
    checkDatabaseEncryption(o.desiredDatabaseEncryption!);
    unittest.expect(
      o.desiredDatapathProvider!,
      unittest.equals('foo'),
    );
    checkDefaultSnatStatus(o.desiredDefaultSnatStatus!);
    unittest.expect(
      o.desiredImageType!,
      unittest.equals('foo'),
    );
    checkIntraNodeVisibilityConfig(o.desiredIntraNodeVisibilityConfig!);
    checkILBSubsettingConfig(o.desiredL4ilbSubsettingConfig!);
    checkUnnamed2197(o.desiredLocations!);
    checkLoggingConfig(o.desiredLoggingConfig!);
    unittest.expect(
      o.desiredLoggingService!,
      unittest.equals('foo'),
    );
    checkMasterAuthorizedNetworksConfig(
        o.desiredMasterAuthorizedNetworksConfig!);
    unittest.expect(
      o.desiredMasterVersion!,
      unittest.equals('foo'),
    );
    checkMonitoringConfig(o.desiredMonitoringConfig!);
    unittest.expect(
      o.desiredMonitoringService!,
      unittest.equals('foo'),
    );
    checkNodePoolAutoscaling(o.desiredNodePoolAutoscaling!);
    unittest.expect(
      o.desiredNodePoolId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.desiredNodeVersion!,
      unittest.equals('foo'),
    );
    checkNotificationConfig(o.desiredNotificationConfig!);
    checkPrivateClusterConfig(o.desiredPrivateClusterConfig!);
    unittest.expect(
      o.desiredPrivateIpv6GoogleAccess!,
      unittest.equals('foo'),
    );
    checkReleaseChannel(o.desiredReleaseChannel!);
    checkResourceUsageExportConfig(o.desiredResourceUsageExportConfig!);
    checkShieldedNodes(o.desiredShieldedNodes!);
    checkVerticalPodAutoscaling(o.desiredVerticalPodAutoscaling!);
    checkWorkloadIdentityConfig(o.desiredWorkloadIdentityConfig!);
  }
  buildCounterClusterUpdate--;
}

core.int buildCounterCompleteIPRotationRequest = 0;
api.CompleteIPRotationRequest buildCompleteIPRotationRequest() {
  final o = api.CompleteIPRotationRequest();
  buildCounterCompleteIPRotationRequest++;
  if (buildCounterCompleteIPRotationRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterCompleteIPRotationRequest--;
  return o;
}

void checkCompleteIPRotationRequest(api.CompleteIPRotationRequest o) {
  buildCounterCompleteIPRotationRequest++;
  if (buildCounterCompleteIPRotationRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterCompleteIPRotationRequest--;
}

core.int buildCounterConfidentialNodes = 0;
api.ConfidentialNodes buildConfidentialNodes() {
  final o = api.ConfidentialNodes();
  buildCounterConfidentialNodes++;
  if (buildCounterConfidentialNodes < 3) {
    o.enabled = true;
  }
  buildCounterConfidentialNodes--;
  return o;
}

void checkConfidentialNodes(api.ConfidentialNodes o) {
  buildCounterConfidentialNodes++;
  if (buildCounterConfidentialNodes < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterConfidentialNodes--;
}

core.int buildCounterConfigConnectorConfig = 0;
api.ConfigConnectorConfig buildConfigConnectorConfig() {
  final o = api.ConfigConnectorConfig();
  buildCounterConfigConnectorConfig++;
  if (buildCounterConfigConnectorConfig < 3) {
    o.enabled = true;
  }
  buildCounterConfigConnectorConfig--;
  return o;
}

void checkConfigConnectorConfig(api.ConfigConnectorConfig o) {
  buildCounterConfigConnectorConfig++;
  if (buildCounterConfigConnectorConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterConfigConnectorConfig--;
}

core.int buildCounterConsumptionMeteringConfig = 0;
api.ConsumptionMeteringConfig buildConsumptionMeteringConfig() {
  final o = api.ConsumptionMeteringConfig();
  buildCounterConsumptionMeteringConfig++;
  if (buildCounterConsumptionMeteringConfig < 3) {
    o.enabled = true;
  }
  buildCounterConsumptionMeteringConfig--;
  return o;
}

void checkConsumptionMeteringConfig(api.ConsumptionMeteringConfig o) {
  buildCounterConsumptionMeteringConfig++;
  if (buildCounterConsumptionMeteringConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterConsumptionMeteringConfig--;
}

core.int buildCounterCreateClusterRequest = 0;
api.CreateClusterRequest buildCreateClusterRequest() {
  final o = api.CreateClusterRequest();
  buildCounterCreateClusterRequest++;
  if (buildCounterCreateClusterRequest < 3) {
    o.cluster = buildCluster();
    o.parent = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterCreateClusterRequest--;
  return o;
}

void checkCreateClusterRequest(api.CreateClusterRequest o) {
  buildCounterCreateClusterRequest++;
  if (buildCounterCreateClusterRequest < 3) {
    checkCluster(o.cluster!);
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateClusterRequest--;
}

core.int buildCounterCreateNodePoolRequest = 0;
api.CreateNodePoolRequest buildCreateNodePoolRequest() {
  final o = api.CreateNodePoolRequest();
  buildCounterCreateNodePoolRequest++;
  if (buildCounterCreateNodePoolRequest < 3) {
    o.clusterId = 'foo';
    o.nodePool = buildNodePool();
    o.parent = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterCreateNodePoolRequest--;
  return o;
}

void checkCreateNodePoolRequest(api.CreateNodePoolRequest o) {
  buildCounterCreateNodePoolRequest++;
  if (buildCounterCreateNodePoolRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    checkNodePool(o.nodePool!);
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateNodePoolRequest--;
}

core.int buildCounterDailyMaintenanceWindow = 0;
api.DailyMaintenanceWindow buildDailyMaintenanceWindow() {
  final o = api.DailyMaintenanceWindow();
  buildCounterDailyMaintenanceWindow++;
  if (buildCounterDailyMaintenanceWindow < 3) {
    o.duration = 'foo';
    o.startTime = 'foo';
  }
  buildCounterDailyMaintenanceWindow--;
  return o;
}

void checkDailyMaintenanceWindow(api.DailyMaintenanceWindow o) {
  buildCounterDailyMaintenanceWindow++;
  if (buildCounterDailyMaintenanceWindow < 3) {
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterDailyMaintenanceWindow--;
}

core.int buildCounterDatabaseEncryption = 0;
api.DatabaseEncryption buildDatabaseEncryption() {
  final o = api.DatabaseEncryption();
  buildCounterDatabaseEncryption++;
  if (buildCounterDatabaseEncryption < 3) {
    o.keyName = 'foo';
    o.state = 'foo';
  }
  buildCounterDatabaseEncryption--;
  return o;
}

void checkDatabaseEncryption(api.DatabaseEncryption o) {
  buildCounterDatabaseEncryption++;
  if (buildCounterDatabaseEncryption < 3) {
    unittest.expect(
      o.keyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabaseEncryption--;
}

core.int buildCounterDefaultSnatStatus = 0;
api.DefaultSnatStatus buildDefaultSnatStatus() {
  final o = api.DefaultSnatStatus();
  buildCounterDefaultSnatStatus++;
  if (buildCounterDefaultSnatStatus < 3) {
    o.disabled = true;
  }
  buildCounterDefaultSnatStatus--;
  return o;
}

void checkDefaultSnatStatus(api.DefaultSnatStatus o) {
  buildCounterDefaultSnatStatus++;
  if (buildCounterDefaultSnatStatus < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
  }
  buildCounterDefaultSnatStatus--;
}

core.int buildCounterDnsCacheConfig = 0;
api.DnsCacheConfig buildDnsCacheConfig() {
  final o = api.DnsCacheConfig();
  buildCounterDnsCacheConfig++;
  if (buildCounterDnsCacheConfig < 3) {
    o.enabled = true;
  }
  buildCounterDnsCacheConfig--;
  return o;
}

void checkDnsCacheConfig(api.DnsCacheConfig o) {
  buildCounterDnsCacheConfig++;
  if (buildCounterDnsCacheConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterDnsCacheConfig--;
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

core.int buildCounterGcePersistentDiskCsiDriverConfig = 0;
api.GcePersistentDiskCsiDriverConfig buildGcePersistentDiskCsiDriverConfig() {
  final o = api.GcePersistentDiskCsiDriverConfig();
  buildCounterGcePersistentDiskCsiDriverConfig++;
  if (buildCounterGcePersistentDiskCsiDriverConfig < 3) {
    o.enabled = true;
  }
  buildCounterGcePersistentDiskCsiDriverConfig--;
  return o;
}

void checkGcePersistentDiskCsiDriverConfig(
    api.GcePersistentDiskCsiDriverConfig o) {
  buildCounterGcePersistentDiskCsiDriverConfig++;
  if (buildCounterGcePersistentDiskCsiDriverConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterGcePersistentDiskCsiDriverConfig--;
}

core.int buildCounterGcpFilestoreCsiDriverConfig = 0;
api.GcpFilestoreCsiDriverConfig buildGcpFilestoreCsiDriverConfig() {
  final o = api.GcpFilestoreCsiDriverConfig();
  buildCounterGcpFilestoreCsiDriverConfig++;
  if (buildCounterGcpFilestoreCsiDriverConfig < 3) {
    o.enabled = true;
  }
  buildCounterGcpFilestoreCsiDriverConfig--;
  return o;
}

void checkGcpFilestoreCsiDriverConfig(api.GcpFilestoreCsiDriverConfig o) {
  buildCounterGcpFilestoreCsiDriverConfig++;
  if (buildCounterGcpFilestoreCsiDriverConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterGcpFilestoreCsiDriverConfig--;
}

core.List<api.Jwk> buildUnnamed2198() => [
      buildJwk(),
      buildJwk(),
    ];

void checkUnnamed2198(core.List<api.Jwk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJwk(o[0]);
  checkJwk(o[1]);
}

core.int buildCounterGetJSONWebKeysResponse = 0;
api.GetJSONWebKeysResponse buildGetJSONWebKeysResponse() {
  final o = api.GetJSONWebKeysResponse();
  buildCounterGetJSONWebKeysResponse++;
  if (buildCounterGetJSONWebKeysResponse < 3) {
    o.cacheHeader = buildHttpCacheControlResponseHeader();
    o.keys = buildUnnamed2198();
  }
  buildCounterGetJSONWebKeysResponse--;
  return o;
}

void checkGetJSONWebKeysResponse(api.GetJSONWebKeysResponse o) {
  buildCounterGetJSONWebKeysResponse++;
  if (buildCounterGetJSONWebKeysResponse < 3) {
    checkHttpCacheControlResponseHeader(o.cacheHeader!);
    checkUnnamed2198(o.keys!);
  }
  buildCounterGetJSONWebKeysResponse--;
}

core.List<core.String> buildUnnamed2199() => [
      'foo',
      'foo',
    ];

void checkUnnamed2199(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2200() => [
      'foo',
      'foo',
    ];

void checkUnnamed2200(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2201() => [
      'foo',
      'foo',
    ];

void checkUnnamed2201(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2202() => [
      'foo',
      'foo',
    ];

void checkUnnamed2202(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2203() => [
      'foo',
      'foo',
    ];

void checkUnnamed2203(core.List<core.String> o) {
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

core.int buildCounterGetOpenIDConfigResponse = 0;
api.GetOpenIDConfigResponse buildGetOpenIDConfigResponse() {
  final o = api.GetOpenIDConfigResponse();
  buildCounterGetOpenIDConfigResponse++;
  if (buildCounterGetOpenIDConfigResponse < 3) {
    o.cacheHeader = buildHttpCacheControlResponseHeader();
    o.claimsSupported = buildUnnamed2199();
    o.grantTypes = buildUnnamed2200();
    o.idTokenSigningAlgValuesSupported = buildUnnamed2201();
    o.issuer = 'foo';
    o.jwksUri = 'foo';
    o.responseTypesSupported = buildUnnamed2202();
    o.subjectTypesSupported = buildUnnamed2203();
  }
  buildCounterGetOpenIDConfigResponse--;
  return o;
}

void checkGetOpenIDConfigResponse(api.GetOpenIDConfigResponse o) {
  buildCounterGetOpenIDConfigResponse++;
  if (buildCounterGetOpenIDConfigResponse < 3) {
    checkHttpCacheControlResponseHeader(o.cacheHeader!);
    checkUnnamed2199(o.claimsSupported!);
    checkUnnamed2200(o.grantTypes!);
    checkUnnamed2201(o.idTokenSigningAlgValuesSupported!);
    unittest.expect(
      o.issuer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jwksUri!,
      unittest.equals('foo'),
    );
    checkUnnamed2202(o.responseTypesSupported!);
    checkUnnamed2203(o.subjectTypesSupported!);
  }
  buildCounterGetOpenIDConfigResponse--;
}

core.int buildCounterHorizontalPodAutoscaling = 0;
api.HorizontalPodAutoscaling buildHorizontalPodAutoscaling() {
  final o = api.HorizontalPodAutoscaling();
  buildCounterHorizontalPodAutoscaling++;
  if (buildCounterHorizontalPodAutoscaling < 3) {
    o.disabled = true;
  }
  buildCounterHorizontalPodAutoscaling--;
  return o;
}

void checkHorizontalPodAutoscaling(api.HorizontalPodAutoscaling o) {
  buildCounterHorizontalPodAutoscaling++;
  if (buildCounterHorizontalPodAutoscaling < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
  }
  buildCounterHorizontalPodAutoscaling--;
}

core.int buildCounterHttpCacheControlResponseHeader = 0;
api.HttpCacheControlResponseHeader buildHttpCacheControlResponseHeader() {
  final o = api.HttpCacheControlResponseHeader();
  buildCounterHttpCacheControlResponseHeader++;
  if (buildCounterHttpCacheControlResponseHeader < 3) {
    o.age = 'foo';
    o.directive = 'foo';
    o.expires = 'foo';
  }
  buildCounterHttpCacheControlResponseHeader--;
  return o;
}

void checkHttpCacheControlResponseHeader(api.HttpCacheControlResponseHeader o) {
  buildCounterHttpCacheControlResponseHeader++;
  if (buildCounterHttpCacheControlResponseHeader < 3) {
    unittest.expect(
      o.age!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.directive!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expires!,
      unittest.equals('foo'),
    );
  }
  buildCounterHttpCacheControlResponseHeader--;
}

core.int buildCounterHttpLoadBalancing = 0;
api.HttpLoadBalancing buildHttpLoadBalancing() {
  final o = api.HttpLoadBalancing();
  buildCounterHttpLoadBalancing++;
  if (buildCounterHttpLoadBalancing < 3) {
    o.disabled = true;
  }
  buildCounterHttpLoadBalancing--;
  return o;
}

void checkHttpLoadBalancing(api.HttpLoadBalancing o) {
  buildCounterHttpLoadBalancing++;
  if (buildCounterHttpLoadBalancing < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
  }
  buildCounterHttpLoadBalancing--;
}

core.int buildCounterILBSubsettingConfig = 0;
api.ILBSubsettingConfig buildILBSubsettingConfig() {
  final o = api.ILBSubsettingConfig();
  buildCounterILBSubsettingConfig++;
  if (buildCounterILBSubsettingConfig < 3) {
    o.enabled = true;
  }
  buildCounterILBSubsettingConfig--;
  return o;
}

void checkILBSubsettingConfig(api.ILBSubsettingConfig o) {
  buildCounterILBSubsettingConfig++;
  if (buildCounterILBSubsettingConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterILBSubsettingConfig--;
}

core.int buildCounterIPAllocationPolicy = 0;
api.IPAllocationPolicy buildIPAllocationPolicy() {
  final o = api.IPAllocationPolicy();
  buildCounterIPAllocationPolicy++;
  if (buildCounterIPAllocationPolicy < 3) {
    o.clusterIpv4Cidr = 'foo';
    o.clusterIpv4CidrBlock = 'foo';
    o.clusterSecondaryRangeName = 'foo';
    o.createSubnetwork = true;
    o.nodeIpv4Cidr = 'foo';
    o.nodeIpv4CidrBlock = 'foo';
    o.servicesIpv4Cidr = 'foo';
    o.servicesIpv4CidrBlock = 'foo';
    o.servicesSecondaryRangeName = 'foo';
    o.subnetworkName = 'foo';
    o.tpuIpv4CidrBlock = 'foo';
    o.useIpAliases = true;
    o.useRoutes = true;
  }
  buildCounterIPAllocationPolicy--;
  return o;
}

void checkIPAllocationPolicy(api.IPAllocationPolicy o) {
  buildCounterIPAllocationPolicy++;
  if (buildCounterIPAllocationPolicy < 3) {
    unittest.expect(
      o.clusterIpv4Cidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterSecondaryRangeName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.createSubnetwork!, unittest.isTrue);
    unittest.expect(
      o.nodeIpv4Cidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.servicesIpv4Cidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.servicesIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.servicesSecondaryRangeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetworkName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tpuIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useIpAliases!, unittest.isTrue);
    unittest.expect(o.useRoutes!, unittest.isTrue);
  }
  buildCounterIPAllocationPolicy--;
}

core.int buildCounterIntraNodeVisibilityConfig = 0;
api.IntraNodeVisibilityConfig buildIntraNodeVisibilityConfig() {
  final o = api.IntraNodeVisibilityConfig();
  buildCounterIntraNodeVisibilityConfig++;
  if (buildCounterIntraNodeVisibilityConfig < 3) {
    o.enabled = true;
  }
  buildCounterIntraNodeVisibilityConfig--;
  return o;
}

void checkIntraNodeVisibilityConfig(api.IntraNodeVisibilityConfig o) {
  buildCounterIntraNodeVisibilityConfig++;
  if (buildCounterIntraNodeVisibilityConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterIntraNodeVisibilityConfig--;
}

core.int buildCounterJwk = 0;
api.Jwk buildJwk() {
  final o = api.Jwk();
  buildCounterJwk++;
  if (buildCounterJwk < 3) {
    o.alg = 'foo';
    o.crv = 'foo';
    o.e = 'foo';
    o.kid = 'foo';
    o.kty = 'foo';
    o.n = 'foo';
    o.use = 'foo';
    o.x = 'foo';
    o.y = 'foo';
  }
  buildCounterJwk--;
  return o;
}

void checkJwk(api.Jwk o) {
  buildCounterJwk++;
  if (buildCounterJwk < 3) {
    unittest.expect(
      o.alg!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crv!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.e!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kty!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.n!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.use!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.x!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.y!,
      unittest.equals('foo'),
    );
  }
  buildCounterJwk--;
}

core.int buildCounterKubernetesDashboard = 0;
api.KubernetesDashboard buildKubernetesDashboard() {
  final o = api.KubernetesDashboard();
  buildCounterKubernetesDashboard++;
  if (buildCounterKubernetesDashboard < 3) {
    o.disabled = true;
  }
  buildCounterKubernetesDashboard--;
  return o;
}

void checkKubernetesDashboard(api.KubernetesDashboard o) {
  buildCounterKubernetesDashboard++;
  if (buildCounterKubernetesDashboard < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
  }
  buildCounterKubernetesDashboard--;
}

core.int buildCounterLegacyAbac = 0;
api.LegacyAbac buildLegacyAbac() {
  final o = api.LegacyAbac();
  buildCounterLegacyAbac++;
  if (buildCounterLegacyAbac < 3) {
    o.enabled = true;
  }
  buildCounterLegacyAbac--;
  return o;
}

void checkLegacyAbac(api.LegacyAbac o) {
  buildCounterLegacyAbac++;
  if (buildCounterLegacyAbac < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterLegacyAbac--;
}

core.Map<core.String, core.String> buildUnnamed2204() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2204(core.Map<core.String, core.String> o) {
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

core.int buildCounterLinuxNodeConfig = 0;
api.LinuxNodeConfig buildLinuxNodeConfig() {
  final o = api.LinuxNodeConfig();
  buildCounterLinuxNodeConfig++;
  if (buildCounterLinuxNodeConfig < 3) {
    o.sysctls = buildUnnamed2204();
  }
  buildCounterLinuxNodeConfig--;
  return o;
}

void checkLinuxNodeConfig(api.LinuxNodeConfig o) {
  buildCounterLinuxNodeConfig++;
  if (buildCounterLinuxNodeConfig < 3) {
    checkUnnamed2204(o.sysctls!);
  }
  buildCounterLinuxNodeConfig--;
}

core.List<api.Cluster> buildUnnamed2205() => [
      buildCluster(),
      buildCluster(),
    ];

void checkUnnamed2205(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.List<core.String> buildUnnamed2206() => [
      'foo',
      'foo',
    ];

void checkUnnamed2206(core.List<core.String> o) {
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

core.int buildCounterListClustersResponse = 0;
api.ListClustersResponse buildListClustersResponse() {
  final o = api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed2205();
    o.missingZones = buildUnnamed2206();
  }
  buildCounterListClustersResponse--;
  return o;
}

void checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed2205(o.clusters!);
    checkUnnamed2206(o.missingZones!);
  }
  buildCounterListClustersResponse--;
}

core.List<api.NodePool> buildUnnamed2207() => [
      buildNodePool(),
      buildNodePool(),
    ];

void checkUnnamed2207(core.List<api.NodePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodePool(o[0]);
  checkNodePool(o[1]);
}

core.int buildCounterListNodePoolsResponse = 0;
api.ListNodePoolsResponse buildListNodePoolsResponse() {
  final o = api.ListNodePoolsResponse();
  buildCounterListNodePoolsResponse++;
  if (buildCounterListNodePoolsResponse < 3) {
    o.nodePools = buildUnnamed2207();
  }
  buildCounterListNodePoolsResponse--;
  return o;
}

void checkListNodePoolsResponse(api.ListNodePoolsResponse o) {
  buildCounterListNodePoolsResponse++;
  if (buildCounterListNodePoolsResponse < 3) {
    checkUnnamed2207(o.nodePools!);
  }
  buildCounterListNodePoolsResponse--;
}

core.List<core.String> buildUnnamed2208() => [
      'foo',
      'foo',
    ];

void checkUnnamed2208(core.List<core.String> o) {
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

core.List<api.Operation> buildUnnamed2209() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed2209(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.missingZones = buildUnnamed2208();
    o.operations = buildUnnamed2209();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    checkUnnamed2208(o.missingZones!);
    checkUnnamed2209(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.UsableSubnetwork> buildUnnamed2210() => [
      buildUsableSubnetwork(),
      buildUsableSubnetwork(),
    ];

void checkUnnamed2210(core.List<api.UsableSubnetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsableSubnetwork(o[0]);
  checkUsableSubnetwork(o[1]);
}

core.int buildCounterListUsableSubnetworksResponse = 0;
api.ListUsableSubnetworksResponse buildListUsableSubnetworksResponse() {
  final o = api.ListUsableSubnetworksResponse();
  buildCounterListUsableSubnetworksResponse++;
  if (buildCounterListUsableSubnetworksResponse < 3) {
    o.nextPageToken = 'foo';
    o.subnetworks = buildUnnamed2210();
  }
  buildCounterListUsableSubnetworksResponse--;
  return o;
}

void checkListUsableSubnetworksResponse(api.ListUsableSubnetworksResponse o) {
  buildCounterListUsableSubnetworksResponse++;
  if (buildCounterListUsableSubnetworksResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2210(o.subnetworks!);
  }
  buildCounterListUsableSubnetworksResponse--;
}

core.List<core.String> buildUnnamed2211() => [
      'foo',
      'foo',
    ];

void checkUnnamed2211(core.List<core.String> o) {
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

core.int buildCounterLoggingComponentConfig = 0;
api.LoggingComponentConfig buildLoggingComponentConfig() {
  final o = api.LoggingComponentConfig();
  buildCounterLoggingComponentConfig++;
  if (buildCounterLoggingComponentConfig < 3) {
    o.enableComponents = buildUnnamed2211();
  }
  buildCounterLoggingComponentConfig--;
  return o;
}

void checkLoggingComponentConfig(api.LoggingComponentConfig o) {
  buildCounterLoggingComponentConfig++;
  if (buildCounterLoggingComponentConfig < 3) {
    checkUnnamed2211(o.enableComponents!);
  }
  buildCounterLoggingComponentConfig--;
}

core.int buildCounterLoggingConfig = 0;
api.LoggingConfig buildLoggingConfig() {
  final o = api.LoggingConfig();
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    o.componentConfig = buildLoggingComponentConfig();
  }
  buildCounterLoggingConfig--;
  return o;
}

void checkLoggingConfig(api.LoggingConfig o) {
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    checkLoggingComponentConfig(o.componentConfig!);
  }
  buildCounterLoggingConfig--;
}

core.int buildCounterMaintenancePolicy = 0;
api.MaintenancePolicy buildMaintenancePolicy() {
  final o = api.MaintenancePolicy();
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    o.resourceVersion = 'foo';
    o.window = buildMaintenanceWindow();
  }
  buildCounterMaintenancePolicy--;
  return o;
}

void checkMaintenancePolicy(api.MaintenancePolicy o) {
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    unittest.expect(
      o.resourceVersion!,
      unittest.equals('foo'),
    );
    checkMaintenanceWindow(o.window!);
  }
  buildCounterMaintenancePolicy--;
}

core.Map<core.String, api.TimeWindow> buildUnnamed2212() => {
      'x': buildTimeWindow(),
      'y': buildTimeWindow(),
    };

void checkUnnamed2212(core.Map<core.String, api.TimeWindow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeWindow(o['x']!);
  checkTimeWindow(o['y']!);
}

core.int buildCounterMaintenanceWindow = 0;
api.MaintenanceWindow buildMaintenanceWindow() {
  final o = api.MaintenanceWindow();
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    o.dailyMaintenanceWindow = buildDailyMaintenanceWindow();
    o.maintenanceExclusions = buildUnnamed2212();
    o.recurringWindow = buildRecurringTimeWindow();
  }
  buildCounterMaintenanceWindow--;
  return o;
}

void checkMaintenanceWindow(api.MaintenanceWindow o) {
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    checkDailyMaintenanceWindow(o.dailyMaintenanceWindow!);
    checkUnnamed2212(o.maintenanceExclusions!);
    checkRecurringTimeWindow(o.recurringWindow!);
  }
  buildCounterMaintenanceWindow--;
}

core.int buildCounterMasterAuth = 0;
api.MasterAuth buildMasterAuth() {
  final o = api.MasterAuth();
  buildCounterMasterAuth++;
  if (buildCounterMasterAuth < 3) {
    o.clientCertificate = 'foo';
    o.clientCertificateConfig = buildClientCertificateConfig();
    o.clientKey = 'foo';
    o.clusterCaCertificate = 'foo';
    o.password = 'foo';
    o.username = 'foo';
  }
  buildCounterMasterAuth--;
  return o;
}

void checkMasterAuth(api.MasterAuth o) {
  buildCounterMasterAuth++;
  if (buildCounterMasterAuth < 3) {
    unittest.expect(
      o.clientCertificate!,
      unittest.equals('foo'),
    );
    checkClientCertificateConfig(o.clientCertificateConfig!);
    unittest.expect(
      o.clientKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterCaCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterMasterAuth--;
}

core.List<api.CidrBlock> buildUnnamed2213() => [
      buildCidrBlock(),
      buildCidrBlock(),
    ];

void checkUnnamed2213(core.List<api.CidrBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCidrBlock(o[0]);
  checkCidrBlock(o[1]);
}

core.int buildCounterMasterAuthorizedNetworksConfig = 0;
api.MasterAuthorizedNetworksConfig buildMasterAuthorizedNetworksConfig() {
  final o = api.MasterAuthorizedNetworksConfig();
  buildCounterMasterAuthorizedNetworksConfig++;
  if (buildCounterMasterAuthorizedNetworksConfig < 3) {
    o.cidrBlocks = buildUnnamed2213();
    o.enabled = true;
  }
  buildCounterMasterAuthorizedNetworksConfig--;
  return o;
}

void checkMasterAuthorizedNetworksConfig(api.MasterAuthorizedNetworksConfig o) {
  buildCounterMasterAuthorizedNetworksConfig++;
  if (buildCounterMasterAuthorizedNetworksConfig < 3) {
    checkUnnamed2213(o.cidrBlocks!);
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterMasterAuthorizedNetworksConfig--;
}

core.int buildCounterMaxPodsConstraint = 0;
api.MaxPodsConstraint buildMaxPodsConstraint() {
  final o = api.MaxPodsConstraint();
  buildCounterMaxPodsConstraint++;
  if (buildCounterMaxPodsConstraint < 3) {
    o.maxPodsPerNode = 'foo';
  }
  buildCounterMaxPodsConstraint--;
  return o;
}

void checkMaxPodsConstraint(api.MaxPodsConstraint o) {
  buildCounterMaxPodsConstraint++;
  if (buildCounterMaxPodsConstraint < 3) {
    unittest.expect(
      o.maxPodsPerNode!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaxPodsConstraint--;
}

core.int buildCounterMetric = 0;
api.Metric buildMetric() {
  final o = api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.doubleValue = 42.0;
    o.intValue = 'foo';
    o.name = 'foo';
    o.stringValue = 'foo';
  }
  buildCounterMetric--;
  return o;
}

void checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetric--;
}

core.List<core.String> buildUnnamed2214() => [
      'foo',
      'foo',
    ];

void checkUnnamed2214(core.List<core.String> o) {
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

core.int buildCounterMonitoringComponentConfig = 0;
api.MonitoringComponentConfig buildMonitoringComponentConfig() {
  final o = api.MonitoringComponentConfig();
  buildCounterMonitoringComponentConfig++;
  if (buildCounterMonitoringComponentConfig < 3) {
    o.enableComponents = buildUnnamed2214();
  }
  buildCounterMonitoringComponentConfig--;
  return o;
}

void checkMonitoringComponentConfig(api.MonitoringComponentConfig o) {
  buildCounterMonitoringComponentConfig++;
  if (buildCounterMonitoringComponentConfig < 3) {
    checkUnnamed2214(o.enableComponents!);
  }
  buildCounterMonitoringComponentConfig--;
}

core.int buildCounterMonitoringConfig = 0;
api.MonitoringConfig buildMonitoringConfig() {
  final o = api.MonitoringConfig();
  buildCounterMonitoringConfig++;
  if (buildCounterMonitoringConfig < 3) {
    o.componentConfig = buildMonitoringComponentConfig();
  }
  buildCounterMonitoringConfig--;
  return o;
}

void checkMonitoringConfig(api.MonitoringConfig o) {
  buildCounterMonitoringConfig++;
  if (buildCounterMonitoringConfig < 3) {
    checkMonitoringComponentConfig(o.componentConfig!);
  }
  buildCounterMonitoringConfig--;
}

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  final o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.datapathProvider = 'foo';
    o.defaultSnatStatus = buildDefaultSnatStatus();
    o.enableIntraNodeVisibility = true;
    o.enableL4ilbSubsetting = true;
    o.network = 'foo';
    o.privateIpv6GoogleAccess = 'foo';
    o.subnetwork = 'foo';
  }
  buildCounterNetworkConfig--;
  return o;
}

void checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    unittest.expect(
      o.datapathProvider!,
      unittest.equals('foo'),
    );
    checkDefaultSnatStatus(o.defaultSnatStatus!);
    unittest.expect(o.enableIntraNodeVisibility!, unittest.isTrue);
    unittest.expect(o.enableL4ilbSubsetting!, unittest.isTrue);
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateIpv6GoogleAccess!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkConfig--;
}

core.int buildCounterNetworkPolicy = 0;
api.NetworkPolicy buildNetworkPolicy() {
  final o = api.NetworkPolicy();
  buildCounterNetworkPolicy++;
  if (buildCounterNetworkPolicy < 3) {
    o.enabled = true;
    o.provider = 'foo';
  }
  buildCounterNetworkPolicy--;
  return o;
}

void checkNetworkPolicy(api.NetworkPolicy o) {
  buildCounterNetworkPolicy++;
  if (buildCounterNetworkPolicy < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.provider!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkPolicy--;
}

core.int buildCounterNetworkPolicyConfig = 0;
api.NetworkPolicyConfig buildNetworkPolicyConfig() {
  final o = api.NetworkPolicyConfig();
  buildCounterNetworkPolicyConfig++;
  if (buildCounterNetworkPolicyConfig < 3) {
    o.disabled = true;
  }
  buildCounterNetworkPolicyConfig--;
  return o;
}

void checkNetworkPolicyConfig(api.NetworkPolicyConfig o) {
  buildCounterNetworkPolicyConfig++;
  if (buildCounterNetworkPolicyConfig < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
  }
  buildCounterNetworkPolicyConfig--;
}

core.List<api.AcceleratorConfig> buildUnnamed2215() => [
      buildAcceleratorConfig(),
      buildAcceleratorConfig(),
    ];

void checkUnnamed2215(core.List<api.AcceleratorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorConfig(o[0]);
  checkAcceleratorConfig(o[1]);
}

core.Map<core.String, core.String> buildUnnamed2216() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2216(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed2217() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2217(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed2218() => [
      'foo',
      'foo',
    ];

void checkUnnamed2218(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2219() => [
      'foo',
      'foo',
    ];

void checkUnnamed2219(core.List<core.String> o) {
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

core.List<api.NodeTaint> buildUnnamed2220() => [
      buildNodeTaint(),
      buildNodeTaint(),
    ];

void checkUnnamed2220(core.List<api.NodeTaint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeTaint(o[0]);
  checkNodeTaint(o[1]);
}

core.int buildCounterNodeConfig = 0;
api.NodeConfig buildNodeConfig() {
  final o = api.NodeConfig();
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    o.accelerators = buildUnnamed2215();
    o.bootDiskKmsKey = 'foo';
    o.diskSizeGb = 42;
    o.diskType = 'foo';
    o.gvnic = buildVirtualNIC();
    o.imageType = 'foo';
    o.kubeletConfig = buildNodeKubeletConfig();
    o.labels = buildUnnamed2216();
    o.linuxNodeConfig = buildLinuxNodeConfig();
    o.localSsdCount = 42;
    o.machineType = 'foo';
    o.metadata = buildUnnamed2217();
    o.minCpuPlatform = 'foo';
    o.nodeGroup = 'foo';
    o.oauthScopes = buildUnnamed2218();
    o.preemptible = true;
    o.reservationAffinity = buildReservationAffinity();
    o.sandboxConfig = buildSandboxConfig();
    o.serviceAccount = 'foo';
    o.shieldedInstanceConfig = buildShieldedInstanceConfig();
    o.tags = buildUnnamed2219();
    o.taints = buildUnnamed2220();
    o.workloadMetadataConfig = buildWorkloadMetadataConfig();
  }
  buildCounterNodeConfig--;
  return o;
}

void checkNodeConfig(api.NodeConfig o) {
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    checkUnnamed2215(o.accelerators!);
    unittest.expect(
      o.bootDiskKmsKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.diskType!,
      unittest.equals('foo'),
    );
    checkVirtualNIC(o.gvnic!);
    unittest.expect(
      o.imageType!,
      unittest.equals('foo'),
    );
    checkNodeKubeletConfig(o.kubeletConfig!);
    checkUnnamed2216(o.labels!);
    checkLinuxNodeConfig(o.linuxNodeConfig!);
    unittest.expect(
      o.localSsdCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    checkUnnamed2217(o.metadata!);
    unittest.expect(
      o.minCpuPlatform!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeGroup!,
      unittest.equals('foo'),
    );
    checkUnnamed2218(o.oauthScopes!);
    unittest.expect(o.preemptible!, unittest.isTrue);
    checkReservationAffinity(o.reservationAffinity!);
    checkSandboxConfig(o.sandboxConfig!);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    checkShieldedInstanceConfig(o.shieldedInstanceConfig!);
    checkUnnamed2219(o.tags!);
    checkUnnamed2220(o.taints!);
    checkWorkloadMetadataConfig(o.workloadMetadataConfig!);
  }
  buildCounterNodeConfig--;
}

core.int buildCounterNodeKubeletConfig = 0;
api.NodeKubeletConfig buildNodeKubeletConfig() {
  final o = api.NodeKubeletConfig();
  buildCounterNodeKubeletConfig++;
  if (buildCounterNodeKubeletConfig < 3) {
    o.cpuCfsQuota = true;
    o.cpuCfsQuotaPeriod = 'foo';
    o.cpuManagerPolicy = 'foo';
  }
  buildCounterNodeKubeletConfig--;
  return o;
}

void checkNodeKubeletConfig(api.NodeKubeletConfig o) {
  buildCounterNodeKubeletConfig++;
  if (buildCounterNodeKubeletConfig < 3) {
    unittest.expect(o.cpuCfsQuota!, unittest.isTrue);
    unittest.expect(
      o.cpuCfsQuotaPeriod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpuManagerPolicy!,
      unittest.equals('foo'),
    );
  }
  buildCounterNodeKubeletConfig--;
}

core.int buildCounterNodeManagement = 0;
api.NodeManagement buildNodeManagement() {
  final o = api.NodeManagement();
  buildCounterNodeManagement++;
  if (buildCounterNodeManagement < 3) {
    o.autoRepair = true;
    o.autoUpgrade = true;
    o.upgradeOptions = buildAutoUpgradeOptions();
  }
  buildCounterNodeManagement--;
  return o;
}

void checkNodeManagement(api.NodeManagement o) {
  buildCounterNodeManagement++;
  if (buildCounterNodeManagement < 3) {
    unittest.expect(o.autoRepair!, unittest.isTrue);
    unittest.expect(o.autoUpgrade!, unittest.isTrue);
    checkAutoUpgradeOptions(o.upgradeOptions!);
  }
  buildCounterNodeManagement--;
}

core.int buildCounterNodeNetworkConfig = 0;
api.NodeNetworkConfig buildNodeNetworkConfig() {
  final o = api.NodeNetworkConfig();
  buildCounterNodeNetworkConfig++;
  if (buildCounterNodeNetworkConfig < 3) {
    o.createPodRange = true;
    o.podIpv4CidrBlock = 'foo';
    o.podRange = 'foo';
  }
  buildCounterNodeNetworkConfig--;
  return o;
}

void checkNodeNetworkConfig(api.NodeNetworkConfig o) {
  buildCounterNodeNetworkConfig++;
  if (buildCounterNodeNetworkConfig < 3) {
    unittest.expect(o.createPodRange!, unittest.isTrue);
    unittest.expect(
      o.podIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.podRange!,
      unittest.equals('foo'),
    );
  }
  buildCounterNodeNetworkConfig--;
}

core.List<api.StatusCondition> buildUnnamed2221() => [
      buildStatusCondition(),
      buildStatusCondition(),
    ];

void checkUnnamed2221(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
}

core.List<core.String> buildUnnamed2222() => [
      'foo',
      'foo',
    ];

void checkUnnamed2222(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2223() => [
      'foo',
      'foo',
    ];

void checkUnnamed2223(core.List<core.String> o) {
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

core.int buildCounterNodePool = 0;
api.NodePool buildNodePool() {
  final o = api.NodePool();
  buildCounterNodePool++;
  if (buildCounterNodePool < 3) {
    o.autoscaling = buildNodePoolAutoscaling();
    o.conditions = buildUnnamed2221();
    o.config = buildNodeConfig();
    o.initialNodeCount = 42;
    o.instanceGroupUrls = buildUnnamed2222();
    o.locations = buildUnnamed2223();
    o.management = buildNodeManagement();
    o.maxPodsConstraint = buildMaxPodsConstraint();
    o.name = 'foo';
    o.networkConfig = buildNodeNetworkConfig();
    o.podIpv4CidrSize = 42;
    o.selfLink = 'foo';
    o.status = 'foo';
    o.statusMessage = 'foo';
    o.upgradeSettings = buildUpgradeSettings();
    o.version = 'foo';
  }
  buildCounterNodePool--;
  return o;
}

void checkNodePool(api.NodePool o) {
  buildCounterNodePool++;
  if (buildCounterNodePool < 3) {
    checkNodePoolAutoscaling(o.autoscaling!);
    checkUnnamed2221(o.conditions!);
    checkNodeConfig(o.config!);
    unittest.expect(
      o.initialNodeCount!,
      unittest.equals(42),
    );
    checkUnnamed2222(o.instanceGroupUrls!);
    checkUnnamed2223(o.locations!);
    checkNodeManagement(o.management!);
    checkMaxPodsConstraint(o.maxPodsConstraint!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNodeNetworkConfig(o.networkConfig!);
    unittest.expect(
      o.podIpv4CidrSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusMessage!,
      unittest.equals('foo'),
    );
    checkUpgradeSettings(o.upgradeSettings!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterNodePool--;
}

core.int buildCounterNodePoolAutoscaling = 0;
api.NodePoolAutoscaling buildNodePoolAutoscaling() {
  final o = api.NodePoolAutoscaling();
  buildCounterNodePoolAutoscaling++;
  if (buildCounterNodePoolAutoscaling < 3) {
    o.autoprovisioned = true;
    o.enabled = true;
    o.maxNodeCount = 42;
    o.minNodeCount = 42;
  }
  buildCounterNodePoolAutoscaling--;
  return o;
}

void checkNodePoolAutoscaling(api.NodePoolAutoscaling o) {
  buildCounterNodePoolAutoscaling++;
  if (buildCounterNodePoolAutoscaling < 3) {
    unittest.expect(o.autoprovisioned!, unittest.isTrue);
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.maxNodeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minNodeCount!,
      unittest.equals(42),
    );
  }
  buildCounterNodePoolAutoscaling--;
}

core.int buildCounterNodeTaint = 0;
api.NodeTaint buildNodeTaint() {
  final o = api.NodeTaint();
  buildCounterNodeTaint++;
  if (buildCounterNodeTaint < 3) {
    o.effect = 'foo';
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterNodeTaint--;
  return o;
}

void checkNodeTaint(api.NodeTaint o) {
  buildCounterNodeTaint++;
  if (buildCounterNodeTaint < 3) {
    unittest.expect(
      o.effect!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterNodeTaint--;
}

core.int buildCounterNotificationConfig = 0;
api.NotificationConfig buildNotificationConfig() {
  final o = api.NotificationConfig();
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    o.pubsub = buildPubSub();
  }
  buildCounterNotificationConfig--;
  return o;
}

void checkNotificationConfig(api.NotificationConfig o) {
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    checkPubSub(o.pubsub!);
  }
  buildCounterNotificationConfig--;
}

core.List<api.StatusCondition> buildUnnamed2224() => [
      buildStatusCondition(),
      buildStatusCondition(),
    ];

void checkUnnamed2224(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
}

core.List<api.StatusCondition> buildUnnamed2225() => [
      buildStatusCondition(),
      buildStatusCondition(),
    ];

void checkUnnamed2225(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.clusterConditions = buildUnnamed2224();
    o.detail = 'foo';
    o.endTime = 'foo';
    o.error = buildStatus();
    o.location = 'foo';
    o.name = 'foo';
    o.nodepoolConditions = buildUnnamed2225();
    o.operationType = 'foo';
    o.progress = buildOperationProgress();
    o.selfLink = 'foo';
    o.startTime = 'foo';
    o.status = 'foo';
    o.statusMessage = 'foo';
    o.targetLink = 'foo';
    o.zone = 'foo';
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    checkUnnamed2224(o.clusterConditions!);
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkStatus(o.error!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2225(o.nodepoolConditions!);
    unittest.expect(
      o.operationType!,
      unittest.equals('foo'),
    );
    checkOperationProgress(o.progress!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperation--;
}

core.List<api.Metric> buildUnnamed2226() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed2226(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.OperationProgress> buildUnnamed2227() => [
      buildOperationProgress(),
      buildOperationProgress(),
    ];

void checkUnnamed2227(core.List<api.OperationProgress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationProgress(o[0]);
  checkOperationProgress(o[1]);
}

core.int buildCounterOperationProgress = 0;
api.OperationProgress buildOperationProgress() {
  final o = api.OperationProgress();
  buildCounterOperationProgress++;
  if (buildCounterOperationProgress < 3) {
    o.metrics = buildUnnamed2226();
    o.name = 'foo';
    o.stages = buildUnnamed2227();
    o.status = 'foo';
  }
  buildCounterOperationProgress--;
  return o;
}

void checkOperationProgress(api.OperationProgress o) {
  buildCounterOperationProgress++;
  if (buildCounterOperationProgress < 3) {
    checkUnnamed2226(o.metrics!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2227(o.stages!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationProgress--;
}

core.int buildCounterPrivateClusterConfig = 0;
api.PrivateClusterConfig buildPrivateClusterConfig() {
  final o = api.PrivateClusterConfig();
  buildCounterPrivateClusterConfig++;
  if (buildCounterPrivateClusterConfig < 3) {
    o.enablePrivateEndpoint = true;
    o.enablePrivateNodes = true;
    o.masterGlobalAccessConfig = buildPrivateClusterMasterGlobalAccessConfig();
    o.masterIpv4CidrBlock = 'foo';
    o.peeringName = 'foo';
    o.privateEndpoint = 'foo';
    o.publicEndpoint = 'foo';
  }
  buildCounterPrivateClusterConfig--;
  return o;
}

void checkPrivateClusterConfig(api.PrivateClusterConfig o) {
  buildCounterPrivateClusterConfig++;
  if (buildCounterPrivateClusterConfig < 3) {
    unittest.expect(o.enablePrivateEndpoint!, unittest.isTrue);
    unittest.expect(o.enablePrivateNodes!, unittest.isTrue);
    checkPrivateClusterMasterGlobalAccessConfig(o.masterGlobalAccessConfig!);
    unittest.expect(
      o.masterIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peeringName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateEndpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicEndpoint!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrivateClusterConfig--;
}

core.int buildCounterPrivateClusterMasterGlobalAccessConfig = 0;
api.PrivateClusterMasterGlobalAccessConfig
    buildPrivateClusterMasterGlobalAccessConfig() {
  final o = api.PrivateClusterMasterGlobalAccessConfig();
  buildCounterPrivateClusterMasterGlobalAccessConfig++;
  if (buildCounterPrivateClusterMasterGlobalAccessConfig < 3) {
    o.enabled = true;
  }
  buildCounterPrivateClusterMasterGlobalAccessConfig--;
  return o;
}

void checkPrivateClusterMasterGlobalAccessConfig(
    api.PrivateClusterMasterGlobalAccessConfig o) {
  buildCounterPrivateClusterMasterGlobalAccessConfig++;
  if (buildCounterPrivateClusterMasterGlobalAccessConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterPrivateClusterMasterGlobalAccessConfig--;
}

core.int buildCounterPubSub = 0;
api.PubSub buildPubSub() {
  final o = api.PubSub();
  buildCounterPubSub++;
  if (buildCounterPubSub < 3) {
    o.enabled = true;
    o.topic = 'foo';
  }
  buildCounterPubSub--;
  return o;
}

void checkPubSub(api.PubSub o) {
  buildCounterPubSub++;
  if (buildCounterPubSub < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterPubSub--;
}

core.int buildCounterRecurringTimeWindow = 0;
api.RecurringTimeWindow buildRecurringTimeWindow() {
  final o = api.RecurringTimeWindow();
  buildCounterRecurringTimeWindow++;
  if (buildCounterRecurringTimeWindow < 3) {
    o.recurrence = 'foo';
    o.window = buildTimeWindow();
  }
  buildCounterRecurringTimeWindow--;
  return o;
}

void checkRecurringTimeWindow(api.RecurringTimeWindow o) {
  buildCounterRecurringTimeWindow++;
  if (buildCounterRecurringTimeWindow < 3) {
    unittest.expect(
      o.recurrence!,
      unittest.equals('foo'),
    );
    checkTimeWindow(o.window!);
  }
  buildCounterRecurringTimeWindow--;
}

core.int buildCounterReleaseChannel = 0;
api.ReleaseChannel buildReleaseChannel() {
  final o = api.ReleaseChannel();
  buildCounterReleaseChannel++;
  if (buildCounterReleaseChannel < 3) {
    o.channel = 'foo';
  }
  buildCounterReleaseChannel--;
  return o;
}

void checkReleaseChannel(api.ReleaseChannel o) {
  buildCounterReleaseChannel++;
  if (buildCounterReleaseChannel < 3) {
    unittest.expect(
      o.channel!,
      unittest.equals('foo'),
    );
  }
  buildCounterReleaseChannel--;
}

core.List<core.String> buildUnnamed2228() => [
      'foo',
      'foo',
    ];

void checkUnnamed2228(core.List<core.String> o) {
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

core.int buildCounterReleaseChannelConfig = 0;
api.ReleaseChannelConfig buildReleaseChannelConfig() {
  final o = api.ReleaseChannelConfig();
  buildCounterReleaseChannelConfig++;
  if (buildCounterReleaseChannelConfig < 3) {
    o.channel = 'foo';
    o.defaultVersion = 'foo';
    o.validVersions = buildUnnamed2228();
  }
  buildCounterReleaseChannelConfig--;
  return o;
}

void checkReleaseChannelConfig(api.ReleaseChannelConfig o) {
  buildCounterReleaseChannelConfig++;
  if (buildCounterReleaseChannelConfig < 3) {
    unittest.expect(
      o.channel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed2228(o.validVersions!);
  }
  buildCounterReleaseChannelConfig--;
}

core.List<core.String> buildUnnamed2229() => [
      'foo',
      'foo',
    ];

void checkUnnamed2229(core.List<core.String> o) {
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

core.int buildCounterReservationAffinity = 0;
api.ReservationAffinity buildReservationAffinity() {
  final o = api.ReservationAffinity();
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    o.consumeReservationType = 'foo';
    o.key = 'foo';
    o.values = buildUnnamed2229();
  }
  buildCounterReservationAffinity--;
  return o;
}

void checkReservationAffinity(api.ReservationAffinity o) {
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    unittest.expect(
      o.consumeReservationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkUnnamed2229(o.values!);
  }
  buildCounterReservationAffinity--;
}

core.int buildCounterResourceLimit = 0;
api.ResourceLimit buildResourceLimit() {
  final o = api.ResourceLimit();
  buildCounterResourceLimit++;
  if (buildCounterResourceLimit < 3) {
    o.maximum = 'foo';
    o.minimum = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterResourceLimit--;
  return o;
}

void checkResourceLimit(api.ResourceLimit o) {
  buildCounterResourceLimit++;
  if (buildCounterResourceLimit < 3) {
    unittest.expect(
      o.maximum!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimum!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceLimit--;
}

core.int buildCounterResourceUsageExportConfig = 0;
api.ResourceUsageExportConfig buildResourceUsageExportConfig() {
  final o = api.ResourceUsageExportConfig();
  buildCounterResourceUsageExportConfig++;
  if (buildCounterResourceUsageExportConfig < 3) {
    o.bigqueryDestination = buildBigQueryDestination();
    o.consumptionMeteringConfig = buildConsumptionMeteringConfig();
    o.enableNetworkEgressMetering = true;
  }
  buildCounterResourceUsageExportConfig--;
  return o;
}

void checkResourceUsageExportConfig(api.ResourceUsageExportConfig o) {
  buildCounterResourceUsageExportConfig++;
  if (buildCounterResourceUsageExportConfig < 3) {
    checkBigQueryDestination(o.bigqueryDestination!);
    checkConsumptionMeteringConfig(o.consumptionMeteringConfig!);
    unittest.expect(o.enableNetworkEgressMetering!, unittest.isTrue);
  }
  buildCounterResourceUsageExportConfig--;
}

core.int buildCounterRollbackNodePoolUpgradeRequest = 0;
api.RollbackNodePoolUpgradeRequest buildRollbackNodePoolUpgradeRequest() {
  final o = api.RollbackNodePoolUpgradeRequest();
  buildCounterRollbackNodePoolUpgradeRequest++;
  if (buildCounterRollbackNodePoolUpgradeRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.nodePoolId = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterRollbackNodePoolUpgradeRequest--;
  return o;
}

void checkRollbackNodePoolUpgradeRequest(api.RollbackNodePoolUpgradeRequest o) {
  buildCounterRollbackNodePoolUpgradeRequest++;
  if (buildCounterRollbackNodePoolUpgradeRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodePoolId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterRollbackNodePoolUpgradeRequest--;
}

core.int buildCounterSandboxConfig = 0;
api.SandboxConfig buildSandboxConfig() {
  final o = api.SandboxConfig();
  buildCounterSandboxConfig++;
  if (buildCounterSandboxConfig < 3) {
    o.type = 'foo';
  }
  buildCounterSandboxConfig--;
  return o;
}

void checkSandboxConfig(api.SandboxConfig o) {
  buildCounterSandboxConfig++;
  if (buildCounterSandboxConfig < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSandboxConfig--;
}

core.List<api.ReleaseChannelConfig> buildUnnamed2230() => [
      buildReleaseChannelConfig(),
      buildReleaseChannelConfig(),
    ];

void checkUnnamed2230(core.List<api.ReleaseChannelConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReleaseChannelConfig(o[0]);
  checkReleaseChannelConfig(o[1]);
}

core.List<core.String> buildUnnamed2231() => [
      'foo',
      'foo',
    ];

void checkUnnamed2231(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2232() => [
      'foo',
      'foo',
    ];

void checkUnnamed2232(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2233() => [
      'foo',
      'foo',
    ];

void checkUnnamed2233(core.List<core.String> o) {
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

core.int buildCounterServerConfig = 0;
api.ServerConfig buildServerConfig() {
  final o = api.ServerConfig();
  buildCounterServerConfig++;
  if (buildCounterServerConfig < 3) {
    o.channels = buildUnnamed2230();
    o.defaultClusterVersion = 'foo';
    o.defaultImageType = 'foo';
    o.validImageTypes = buildUnnamed2231();
    o.validMasterVersions = buildUnnamed2232();
    o.validNodeVersions = buildUnnamed2233();
  }
  buildCounterServerConfig--;
  return o;
}

void checkServerConfig(api.ServerConfig o) {
  buildCounterServerConfig++;
  if (buildCounterServerConfig < 3) {
    checkUnnamed2230(o.channels!);
    unittest.expect(
      o.defaultClusterVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultImageType!,
      unittest.equals('foo'),
    );
    checkUnnamed2231(o.validImageTypes!);
    checkUnnamed2232(o.validMasterVersions!);
    checkUnnamed2233(o.validNodeVersions!);
  }
  buildCounterServerConfig--;
}

core.int buildCounterSetAddonsConfigRequest = 0;
api.SetAddonsConfigRequest buildSetAddonsConfigRequest() {
  final o = api.SetAddonsConfigRequest();
  buildCounterSetAddonsConfigRequest++;
  if (buildCounterSetAddonsConfigRequest < 3) {
    o.addonsConfig = buildAddonsConfig();
    o.clusterId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetAddonsConfigRequest--;
  return o;
}

void checkSetAddonsConfigRequest(api.SetAddonsConfigRequest o) {
  buildCounterSetAddonsConfigRequest++;
  if (buildCounterSetAddonsConfigRequest < 3) {
    checkAddonsConfig(o.addonsConfig!);
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetAddonsConfigRequest--;
}

core.Map<core.String, core.String> buildUnnamed2234() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2234(core.Map<core.String, core.String> o) {
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

core.int buildCounterSetLabelsRequest = 0;
api.SetLabelsRequest buildSetLabelsRequest() {
  final o = api.SetLabelsRequest();
  buildCounterSetLabelsRequest++;
  if (buildCounterSetLabelsRequest < 3) {
    o.clusterId = 'foo';
    o.labelFingerprint = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.resourceLabels = buildUnnamed2234();
    o.zone = 'foo';
  }
  buildCounterSetLabelsRequest--;
  return o;
}

void checkSetLabelsRequest(api.SetLabelsRequest o) {
  buildCounterSetLabelsRequest++;
  if (buildCounterSetLabelsRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.labelFingerprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkUnnamed2234(o.resourceLabels!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetLabelsRequest--;
}

core.int buildCounterSetLegacyAbacRequest = 0;
api.SetLegacyAbacRequest buildSetLegacyAbacRequest() {
  final o = api.SetLegacyAbacRequest();
  buildCounterSetLegacyAbacRequest++;
  if (buildCounterSetLegacyAbacRequest < 3) {
    o.clusterId = 'foo';
    o.enabled = true;
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetLegacyAbacRequest--;
  return o;
}

void checkSetLegacyAbacRequest(api.SetLegacyAbacRequest o) {
  buildCounterSetLegacyAbacRequest++;
  if (buildCounterSetLegacyAbacRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetLegacyAbacRequest--;
}

core.List<core.String> buildUnnamed2235() => [
      'foo',
      'foo',
    ];

void checkUnnamed2235(core.List<core.String> o) {
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

core.int buildCounterSetLocationsRequest = 0;
api.SetLocationsRequest buildSetLocationsRequest() {
  final o = api.SetLocationsRequest();
  buildCounterSetLocationsRequest++;
  if (buildCounterSetLocationsRequest < 3) {
    o.clusterId = 'foo';
    o.locations = buildUnnamed2235();
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetLocationsRequest--;
  return o;
}

void checkSetLocationsRequest(api.SetLocationsRequest o) {
  buildCounterSetLocationsRequest++;
  if (buildCounterSetLocationsRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    checkUnnamed2235(o.locations!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetLocationsRequest--;
}

core.int buildCounterSetLoggingServiceRequest = 0;
api.SetLoggingServiceRequest buildSetLoggingServiceRequest() {
  final o = api.SetLoggingServiceRequest();
  buildCounterSetLoggingServiceRequest++;
  if (buildCounterSetLoggingServiceRequest < 3) {
    o.clusterId = 'foo';
    o.loggingService = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetLoggingServiceRequest--;
  return o;
}

void checkSetLoggingServiceRequest(api.SetLoggingServiceRequest o) {
  buildCounterSetLoggingServiceRequest++;
  if (buildCounterSetLoggingServiceRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.loggingService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetLoggingServiceRequest--;
}

core.int buildCounterSetMaintenancePolicyRequest = 0;
api.SetMaintenancePolicyRequest buildSetMaintenancePolicyRequest() {
  final o = api.SetMaintenancePolicyRequest();
  buildCounterSetMaintenancePolicyRequest++;
  if (buildCounterSetMaintenancePolicyRequest < 3) {
    o.clusterId = 'foo';
    o.maintenancePolicy = buildMaintenancePolicy();
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetMaintenancePolicyRequest--;
  return o;
}

void checkSetMaintenancePolicyRequest(api.SetMaintenancePolicyRequest o) {
  buildCounterSetMaintenancePolicyRequest++;
  if (buildCounterSetMaintenancePolicyRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    checkMaintenancePolicy(o.maintenancePolicy!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetMaintenancePolicyRequest--;
}

core.int buildCounterSetMasterAuthRequest = 0;
api.SetMasterAuthRequest buildSetMasterAuthRequest() {
  final o = api.SetMasterAuthRequest();
  buildCounterSetMasterAuthRequest++;
  if (buildCounterSetMasterAuthRequest < 3) {
    o.action = 'foo';
    o.clusterId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.update = buildMasterAuth();
    o.zone = 'foo';
  }
  buildCounterSetMasterAuthRequest--;
  return o;
}

void checkSetMasterAuthRequest(api.SetMasterAuthRequest o) {
  buildCounterSetMasterAuthRequest++;
  if (buildCounterSetMasterAuthRequest < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkMasterAuth(o.update!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetMasterAuthRequest--;
}

core.int buildCounterSetMonitoringServiceRequest = 0;
api.SetMonitoringServiceRequest buildSetMonitoringServiceRequest() {
  final o = api.SetMonitoringServiceRequest();
  buildCounterSetMonitoringServiceRequest++;
  if (buildCounterSetMonitoringServiceRequest < 3) {
    o.clusterId = 'foo';
    o.monitoringService = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetMonitoringServiceRequest--;
  return o;
}

void checkSetMonitoringServiceRequest(api.SetMonitoringServiceRequest o) {
  buildCounterSetMonitoringServiceRequest++;
  if (buildCounterSetMonitoringServiceRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.monitoringService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetMonitoringServiceRequest--;
}

core.int buildCounterSetNetworkPolicyRequest = 0;
api.SetNetworkPolicyRequest buildSetNetworkPolicyRequest() {
  final o = api.SetNetworkPolicyRequest();
  buildCounterSetNetworkPolicyRequest++;
  if (buildCounterSetNetworkPolicyRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.networkPolicy = buildNetworkPolicy();
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetNetworkPolicyRequest--;
  return o;
}

void checkSetNetworkPolicyRequest(api.SetNetworkPolicyRequest o) {
  buildCounterSetNetworkPolicyRequest++;
  if (buildCounterSetNetworkPolicyRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNetworkPolicy(o.networkPolicy!);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetNetworkPolicyRequest--;
}

core.int buildCounterSetNodePoolAutoscalingRequest = 0;
api.SetNodePoolAutoscalingRequest buildSetNodePoolAutoscalingRequest() {
  final o = api.SetNodePoolAutoscalingRequest();
  buildCounterSetNodePoolAutoscalingRequest++;
  if (buildCounterSetNodePoolAutoscalingRequest < 3) {
    o.autoscaling = buildNodePoolAutoscaling();
    o.clusterId = 'foo';
    o.name = 'foo';
    o.nodePoolId = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetNodePoolAutoscalingRequest--;
  return o;
}

void checkSetNodePoolAutoscalingRequest(api.SetNodePoolAutoscalingRequest o) {
  buildCounterSetNodePoolAutoscalingRequest++;
  if (buildCounterSetNodePoolAutoscalingRequest < 3) {
    checkNodePoolAutoscaling(o.autoscaling!);
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodePoolId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetNodePoolAutoscalingRequest--;
}

core.int buildCounterSetNodePoolManagementRequest = 0;
api.SetNodePoolManagementRequest buildSetNodePoolManagementRequest() {
  final o = api.SetNodePoolManagementRequest();
  buildCounterSetNodePoolManagementRequest++;
  if (buildCounterSetNodePoolManagementRequest < 3) {
    o.clusterId = 'foo';
    o.management = buildNodeManagement();
    o.name = 'foo';
    o.nodePoolId = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetNodePoolManagementRequest--;
  return o;
}

void checkSetNodePoolManagementRequest(api.SetNodePoolManagementRequest o) {
  buildCounterSetNodePoolManagementRequest++;
  if (buildCounterSetNodePoolManagementRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    checkNodeManagement(o.management!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodePoolId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetNodePoolManagementRequest--;
}

core.int buildCounterSetNodePoolSizeRequest = 0;
api.SetNodePoolSizeRequest buildSetNodePoolSizeRequest() {
  final o = api.SetNodePoolSizeRequest();
  buildCounterSetNodePoolSizeRequest++;
  if (buildCounterSetNodePoolSizeRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.nodeCount = 42;
    o.nodePoolId = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetNodePoolSizeRequest--;
  return o;
}

void checkSetNodePoolSizeRequest(api.SetNodePoolSizeRequest o) {
  buildCounterSetNodePoolSizeRequest++;
  if (buildCounterSetNodePoolSizeRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nodePoolId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetNodePoolSizeRequest--;
}

core.int buildCounterShieldedInstanceConfig = 0;
api.ShieldedInstanceConfig buildShieldedInstanceConfig() {
  final o = api.ShieldedInstanceConfig();
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    o.enableIntegrityMonitoring = true;
    o.enableSecureBoot = true;
  }
  buildCounterShieldedInstanceConfig--;
  return o;
}

void checkShieldedInstanceConfig(api.ShieldedInstanceConfig o) {
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    unittest.expect(o.enableIntegrityMonitoring!, unittest.isTrue);
    unittest.expect(o.enableSecureBoot!, unittest.isTrue);
  }
  buildCounterShieldedInstanceConfig--;
}

core.int buildCounterShieldedNodes = 0;
api.ShieldedNodes buildShieldedNodes() {
  final o = api.ShieldedNodes();
  buildCounterShieldedNodes++;
  if (buildCounterShieldedNodes < 3) {
    o.enabled = true;
  }
  buildCounterShieldedNodes--;
  return o;
}

void checkShieldedNodes(api.ShieldedNodes o) {
  buildCounterShieldedNodes++;
  if (buildCounterShieldedNodes < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterShieldedNodes--;
}

core.int buildCounterStartIPRotationRequest = 0;
api.StartIPRotationRequest buildStartIPRotationRequest() {
  final o = api.StartIPRotationRequest();
  buildCounterStartIPRotationRequest++;
  if (buildCounterStartIPRotationRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.rotateCredentials = true;
    o.zone = 'foo';
  }
  buildCounterStartIPRotationRequest--;
  return o;
}

void checkStartIPRotationRequest(api.StartIPRotationRequest o) {
  buildCounterStartIPRotationRequest++;
  if (buildCounterStartIPRotationRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.rotateCredentials!, unittest.isTrue);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterStartIPRotationRequest--;
}

core.Map<core.String, core.Object> buildUnnamed2236() => {
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

void checkUnnamed2236(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed2237() => [
      buildUnnamed2236(),
      buildUnnamed2236(),
    ];

void checkUnnamed2237(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2236(o[0]);
  checkUnnamed2236(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2237();
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
    checkUnnamed2237(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStatusCondition = 0;
api.StatusCondition buildStatusCondition() {
  final o = api.StatusCondition();
  buildCounterStatusCondition++;
  if (buildCounterStatusCondition < 3) {
    o.canonicalCode = 'foo';
    o.code = 'foo';
    o.message = 'foo';
  }
  buildCounterStatusCondition--;
  return o;
}

void checkStatusCondition(api.StatusCondition o) {
  buildCounterStatusCondition++;
  if (buildCounterStatusCondition < 3) {
    unittest.expect(
      o.canonicalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatusCondition--;
}

core.int buildCounterTimeWindow = 0;
api.TimeWindow buildTimeWindow() {
  final o = api.TimeWindow();
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterTimeWindow--;
  return o;
}

void checkTimeWindow(api.TimeWindow o) {
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimeWindow--;
}

core.int buildCounterUpdateClusterRequest = 0;
api.UpdateClusterRequest buildUpdateClusterRequest() {
  final o = api.UpdateClusterRequest();
  buildCounterUpdateClusterRequest++;
  if (buildCounterUpdateClusterRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.update = buildClusterUpdate();
    o.zone = 'foo';
  }
  buildCounterUpdateClusterRequest--;
  return o;
}

void checkUpdateClusterRequest(api.UpdateClusterRequest o) {
  buildCounterUpdateClusterRequest++;
  if (buildCounterUpdateClusterRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkClusterUpdate(o.update!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateClusterRequest--;
}

core.int buildCounterUpdateMasterRequest = 0;
api.UpdateMasterRequest buildUpdateMasterRequest() {
  final o = api.UpdateMasterRequest();
  buildCounterUpdateMasterRequest++;
  if (buildCounterUpdateMasterRequest < 3) {
    o.clusterId = 'foo';
    o.masterVersion = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterUpdateMasterRequest--;
  return o;
}

void checkUpdateMasterRequest(api.UpdateMasterRequest o) {
  buildCounterUpdateMasterRequest++;
  if (buildCounterUpdateMasterRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.masterVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateMasterRequest--;
}

core.List<core.String> buildUnnamed2238() => [
      'foo',
      'foo',
    ];

void checkUnnamed2238(core.List<core.String> o) {
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

core.int buildCounterUpdateNodePoolRequest = 0;
api.UpdateNodePoolRequest buildUpdateNodePoolRequest() {
  final o = api.UpdateNodePoolRequest();
  buildCounterUpdateNodePoolRequest++;
  if (buildCounterUpdateNodePoolRequest < 3) {
    o.clusterId = 'foo';
    o.gvnic = buildVirtualNIC();
    o.imageType = 'foo';
    o.kubeletConfig = buildNodeKubeletConfig();
    o.linuxNodeConfig = buildLinuxNodeConfig();
    o.locations = buildUnnamed2238();
    o.name = 'foo';
    o.nodePoolId = 'foo';
    o.nodeVersion = 'foo';
    o.projectId = 'foo';
    o.upgradeSettings = buildUpgradeSettings();
    o.workloadMetadataConfig = buildWorkloadMetadataConfig();
    o.zone = 'foo';
  }
  buildCounterUpdateNodePoolRequest--;
  return o;
}

void checkUpdateNodePoolRequest(api.UpdateNodePoolRequest o) {
  buildCounterUpdateNodePoolRequest++;
  if (buildCounterUpdateNodePoolRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    checkVirtualNIC(o.gvnic!);
    unittest.expect(
      o.imageType!,
      unittest.equals('foo'),
    );
    checkNodeKubeletConfig(o.kubeletConfig!);
    checkLinuxNodeConfig(o.linuxNodeConfig!);
    checkUnnamed2238(o.locations!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodePoolId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkUpgradeSettings(o.upgradeSettings!);
    checkWorkloadMetadataConfig(o.workloadMetadataConfig!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateNodePoolRequest--;
}

core.int buildCounterUpgradeAvailableEvent = 0;
api.UpgradeAvailableEvent buildUpgradeAvailableEvent() {
  final o = api.UpgradeAvailableEvent();
  buildCounterUpgradeAvailableEvent++;
  if (buildCounterUpgradeAvailableEvent < 3) {
    o.releaseChannel = buildReleaseChannel();
    o.resource = 'foo';
    o.resourceType = 'foo';
    o.version = 'foo';
  }
  buildCounterUpgradeAvailableEvent--;
  return o;
}

void checkUpgradeAvailableEvent(api.UpgradeAvailableEvent o) {
  buildCounterUpgradeAvailableEvent++;
  if (buildCounterUpgradeAvailableEvent < 3) {
    checkReleaseChannel(o.releaseChannel!);
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpgradeAvailableEvent--;
}

core.int buildCounterUpgradeEvent = 0;
api.UpgradeEvent buildUpgradeEvent() {
  final o = api.UpgradeEvent();
  buildCounterUpgradeEvent++;
  if (buildCounterUpgradeEvent < 3) {
    o.currentVersion = 'foo';
    o.operation = 'foo';
    o.operationStartTime = 'foo';
    o.resource = 'foo';
    o.resourceType = 'foo';
    o.targetVersion = 'foo';
  }
  buildCounterUpgradeEvent--;
  return o;
}

void checkUpgradeEvent(api.UpgradeEvent o) {
  buildCounterUpgradeEvent++;
  if (buildCounterUpgradeEvent < 3) {
    unittest.expect(
      o.currentVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpgradeEvent--;
}

core.int buildCounterUpgradeSettings = 0;
api.UpgradeSettings buildUpgradeSettings() {
  final o = api.UpgradeSettings();
  buildCounterUpgradeSettings++;
  if (buildCounterUpgradeSettings < 3) {
    o.maxSurge = 42;
    o.maxUnavailable = 42;
  }
  buildCounterUpgradeSettings--;
  return o;
}

void checkUpgradeSettings(api.UpgradeSettings o) {
  buildCounterUpgradeSettings++;
  if (buildCounterUpgradeSettings < 3) {
    unittest.expect(
      o.maxSurge!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxUnavailable!,
      unittest.equals(42),
    );
  }
  buildCounterUpgradeSettings--;
}

core.List<api.UsableSubnetworkSecondaryRange> buildUnnamed2239() => [
      buildUsableSubnetworkSecondaryRange(),
      buildUsableSubnetworkSecondaryRange(),
    ];

void checkUnnamed2239(core.List<api.UsableSubnetworkSecondaryRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsableSubnetworkSecondaryRange(o[0]);
  checkUsableSubnetworkSecondaryRange(o[1]);
}

core.int buildCounterUsableSubnetwork = 0;
api.UsableSubnetwork buildUsableSubnetwork() {
  final o = api.UsableSubnetwork();
  buildCounterUsableSubnetwork++;
  if (buildCounterUsableSubnetwork < 3) {
    o.ipCidrRange = 'foo';
    o.network = 'foo';
    o.secondaryIpRanges = buildUnnamed2239();
    o.statusMessage = 'foo';
    o.subnetwork = 'foo';
  }
  buildCounterUsableSubnetwork--;
  return o;
}

void checkUsableSubnetwork(api.UsableSubnetwork o) {
  buildCounterUsableSubnetwork++;
  if (buildCounterUsableSubnetwork < 3) {
    unittest.expect(
      o.ipCidrRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    checkUnnamed2239(o.secondaryIpRanges!);
    unittest.expect(
      o.statusMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsableSubnetwork--;
}

core.int buildCounterUsableSubnetworkSecondaryRange = 0;
api.UsableSubnetworkSecondaryRange buildUsableSubnetworkSecondaryRange() {
  final o = api.UsableSubnetworkSecondaryRange();
  buildCounterUsableSubnetworkSecondaryRange++;
  if (buildCounterUsableSubnetworkSecondaryRange < 3) {
    o.ipCidrRange = 'foo';
    o.rangeName = 'foo';
    o.status = 'foo';
  }
  buildCounterUsableSubnetworkSecondaryRange--;
  return o;
}

void checkUsableSubnetworkSecondaryRange(api.UsableSubnetworkSecondaryRange o) {
  buildCounterUsableSubnetworkSecondaryRange++;
  if (buildCounterUsableSubnetworkSecondaryRange < 3) {
    unittest.expect(
      o.ipCidrRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rangeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsableSubnetworkSecondaryRange--;
}

core.int buildCounterVerticalPodAutoscaling = 0;
api.VerticalPodAutoscaling buildVerticalPodAutoscaling() {
  final o = api.VerticalPodAutoscaling();
  buildCounterVerticalPodAutoscaling++;
  if (buildCounterVerticalPodAutoscaling < 3) {
    o.enabled = true;
  }
  buildCounterVerticalPodAutoscaling--;
  return o;
}

void checkVerticalPodAutoscaling(api.VerticalPodAutoscaling o) {
  buildCounterVerticalPodAutoscaling++;
  if (buildCounterVerticalPodAutoscaling < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterVerticalPodAutoscaling--;
}

core.int buildCounterVirtualNIC = 0;
api.VirtualNIC buildVirtualNIC() {
  final o = api.VirtualNIC();
  buildCounterVirtualNIC++;
  if (buildCounterVirtualNIC < 3) {
    o.enabled = true;
  }
  buildCounterVirtualNIC--;
  return o;
}

void checkVirtualNIC(api.VirtualNIC o) {
  buildCounterVirtualNIC++;
  if (buildCounterVirtualNIC < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterVirtualNIC--;
}

core.int buildCounterWorkloadIdentityConfig = 0;
api.WorkloadIdentityConfig buildWorkloadIdentityConfig() {
  final o = api.WorkloadIdentityConfig();
  buildCounterWorkloadIdentityConfig++;
  if (buildCounterWorkloadIdentityConfig < 3) {
    o.workloadPool = 'foo';
  }
  buildCounterWorkloadIdentityConfig--;
  return o;
}

void checkWorkloadIdentityConfig(api.WorkloadIdentityConfig o) {
  buildCounterWorkloadIdentityConfig++;
  if (buildCounterWorkloadIdentityConfig < 3) {
    unittest.expect(
      o.workloadPool!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkloadIdentityConfig--;
}

core.int buildCounterWorkloadMetadataConfig = 0;
api.WorkloadMetadataConfig buildWorkloadMetadataConfig() {
  final o = api.WorkloadMetadataConfig();
  buildCounterWorkloadMetadataConfig++;
  if (buildCounterWorkloadMetadataConfig < 3) {
    o.mode = 'foo';
  }
  buildCounterWorkloadMetadataConfig--;
  return o;
}

void checkWorkloadMetadataConfig(api.WorkloadMetadataConfig o) {
  buildCounterWorkloadMetadataConfig++;
  if (buildCounterWorkloadMetadataConfig < 3) {
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkloadMetadataConfig--;
}

void main() {
  unittest.group('obj-schema-AcceleratorConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcceleratorConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcceleratorConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAcceleratorConfig(od);
    });
  });

  unittest.group('obj-schema-AddonsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddonsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddonsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddonsConfig(od);
    });
  });

  unittest.group('obj-schema-AuthenticatorGroupsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthenticatorGroupsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthenticatorGroupsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthenticatorGroupsConfig(od);
    });
  });

  unittest.group('obj-schema-AutoUpgradeOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoUpgradeOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoUpgradeOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoUpgradeOptions(od);
    });
  });

  unittest.group('obj-schema-Autopilot', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutopilot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Autopilot.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAutopilot(od);
    });
  });

  unittest.group('obj-schema-AutoprovisioningNodePoolDefaults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoprovisioningNodePoolDefaults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoprovisioningNodePoolDefaults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoprovisioningNodePoolDefaults(od);
    });
  });

  unittest.group('obj-schema-BigQueryDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigQueryDestination(od);
    });
  });

  unittest.group('obj-schema-BinaryAuthorization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinaryAuthorization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BinaryAuthorization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBinaryAuthorization(od);
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

  unittest.group('obj-schema-CidrBlock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCidrBlock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CidrBlock.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCidrBlock(od);
    });
  });

  unittest.group('obj-schema-ClientCertificateConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientCertificateConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientCertificateConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClientCertificateConfig(od);
    });
  });

  unittest.group('obj-schema-CloudRunConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRunConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRunConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudRunConfig(od);
    });
  });

  unittest.group('obj-schema-Cluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Cluster.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCluster(od);
    });
  });

  unittest.group('obj-schema-ClusterAutoscaling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterAutoscaling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterAutoscaling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterAutoscaling(od);
    });
  });

  unittest.group('obj-schema-ClusterUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUpdate(od);
    });
  });

  unittest.group('obj-schema-CompleteIPRotationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompleteIPRotationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompleteIPRotationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompleteIPRotationRequest(od);
    });
  });

  unittest.group('obj-schema-ConfidentialNodes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfidentialNodes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfidentialNodes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfidentialNodes(od);
    });
  });

  unittest.group('obj-schema-ConfigConnectorConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigConnectorConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigConnectorConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigConnectorConfig(od);
    });
  });

  unittest.group('obj-schema-ConsumptionMeteringConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumptionMeteringConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsumptionMeteringConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConsumptionMeteringConfig(od);
    });
  });

  unittest.group('obj-schema-CreateClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateClusterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateClusterRequest(od);
    });
  });

  unittest.group('obj-schema-CreateNodePoolRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateNodePoolRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateNodePoolRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateNodePoolRequest(od);
    });
  });

  unittest.group('obj-schema-DailyMaintenanceWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyMaintenanceWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyMaintenanceWindow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDailyMaintenanceWindow(od);
    });
  });

  unittest.group('obj-schema-DatabaseEncryption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseEncryption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseEncryption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseEncryption(od);
    });
  });

  unittest.group('obj-schema-DefaultSnatStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefaultSnatStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefaultSnatStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDefaultSnatStatus(od);
    });
  });

  unittest.group('obj-schema-DnsCacheConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsCacheConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DnsCacheConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDnsCacheConfig(od);
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

  unittest.group('obj-schema-GcePersistentDiskCsiDriverConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcePersistentDiskCsiDriverConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcePersistentDiskCsiDriverConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcePersistentDiskCsiDriverConfig(od);
    });
  });

  unittest.group('obj-schema-GcpFilestoreCsiDriverConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcpFilestoreCsiDriverConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcpFilestoreCsiDriverConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcpFilestoreCsiDriverConfig(od);
    });
  });

  unittest.group('obj-schema-GetJSONWebKeysResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetJSONWebKeysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetJSONWebKeysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetJSONWebKeysResponse(od);
    });
  });

  unittest.group('obj-schema-GetOpenIDConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetOpenIDConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetOpenIDConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetOpenIDConfigResponse(od);
    });
  });

  unittest.group('obj-schema-HorizontalPodAutoscaling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHorizontalPodAutoscaling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HorizontalPodAutoscaling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHorizontalPodAutoscaling(od);
    });
  });

  unittest.group('obj-schema-HttpCacheControlResponseHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpCacheControlResponseHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpCacheControlResponseHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpCacheControlResponseHeader(od);
    });
  });

  unittest.group('obj-schema-HttpLoadBalancing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpLoadBalancing();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpLoadBalancing.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpLoadBalancing(od);
    });
  });

  unittest.group('obj-schema-ILBSubsettingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildILBSubsettingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ILBSubsettingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkILBSubsettingConfig(od);
    });
  });

  unittest.group('obj-schema-IPAllocationPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIPAllocationPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IPAllocationPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIPAllocationPolicy(od);
    });
  });

  unittest.group('obj-schema-IntraNodeVisibilityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntraNodeVisibilityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntraNodeVisibilityConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntraNodeVisibilityConfig(od);
    });
  });

  unittest.group('obj-schema-Jwk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJwk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Jwk.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJwk(od);
    });
  });

  unittest.group('obj-schema-KubernetesDashboard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKubernetesDashboard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KubernetesDashboard.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKubernetesDashboard(od);
    });
  });

  unittest.group('obj-schema-LegacyAbac', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLegacyAbac();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LegacyAbac.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLegacyAbac(od);
    });
  });

  unittest.group('obj-schema-LinuxNodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinuxNodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinuxNodeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinuxNodeConfig(od);
    });
  });

  unittest.group('obj-schema-ListClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListClustersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListNodePoolsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNodePoolsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNodePoolsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNodePoolsResponse(od);
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

  unittest.group('obj-schema-ListUsableSubnetworksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUsableSubnetworksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUsableSubnetworksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUsableSubnetworksResponse(od);
    });
  });

  unittest.group('obj-schema-LoggingComponentConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoggingComponentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoggingComponentConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoggingComponentConfig(od);
    });
  });

  unittest.group('obj-schema-LoggingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoggingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoggingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoggingConfig(od);
    });
  });

  unittest.group('obj-schema-MaintenancePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenancePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenancePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaintenancePolicy(od);
    });
  });

  unittest.group('obj-schema-MaintenanceWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenanceWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenanceWindow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaintenanceWindow(od);
    });
  });

  unittest.group('obj-schema-MasterAuth', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMasterAuth();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MasterAuth.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMasterAuth(od);
    });
  });

  unittest.group('obj-schema-MasterAuthorizedNetworksConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMasterAuthorizedNetworksConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MasterAuthorizedNetworksConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMasterAuthorizedNetworksConfig(od);
    });
  });

  unittest.group('obj-schema-MaxPodsConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaxPodsConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaxPodsConstraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaxPodsConstraint(od);
    });
  });

  unittest.group('obj-schema-Metric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metric.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetric(od);
    });
  });

  unittest.group('obj-schema-MonitoringComponentConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoringComponentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoringComponentConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonitoringComponentConfig(od);
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

  unittest.group('obj-schema-NetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-NetworkPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkPolicy(od);
    });
  });

  unittest.group('obj-schema-NetworkPolicyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkPolicyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkPolicyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkPolicyConfig(od);
    });
  });

  unittest.group('obj-schema-NodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NodeConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNodeConfig(od);
    });
  });

  unittest.group('obj-schema-NodeKubeletConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeKubeletConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeKubeletConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodeKubeletConfig(od);
    });
  });

  unittest.group('obj-schema-NodeManagement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeManagement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeManagement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodeManagement(od);
    });
  });

  unittest.group('obj-schema-NodeNetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeNetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodeNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-NodePool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodePool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NodePool.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNodePool(od);
    });
  });

  unittest.group('obj-schema-NodePoolAutoscaling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodePoolAutoscaling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodePoolAutoscaling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodePoolAutoscaling(od);
    });
  });

  unittest.group('obj-schema-NodeTaint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeTaint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NodeTaint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNodeTaint(od);
    });
  });

  unittest.group('obj-schema-NotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotificationConfig(od);
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

  unittest.group('obj-schema-OperationProgress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationProgress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationProgress(od);
    });
  });

  unittest.group('obj-schema-PrivateClusterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateClusterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateClusterConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrivateClusterConfig(od);
    });
  });

  unittest.group('obj-schema-PrivateClusterMasterGlobalAccessConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateClusterMasterGlobalAccessConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateClusterMasterGlobalAccessConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrivateClusterMasterGlobalAccessConfig(od);
    });
  });

  unittest.group('obj-schema-PubSub', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubSub();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PubSub.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPubSub(od);
    });
  });

  unittest.group('obj-schema-RecurringTimeWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecurringTimeWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecurringTimeWindow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecurringTimeWindow(od);
    });
  });

  unittest.group('obj-schema-ReleaseChannel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReleaseChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReleaseChannel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReleaseChannel(od);
    });
  });

  unittest.group('obj-schema-ReleaseChannelConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReleaseChannelConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReleaseChannelConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReleaseChannelConfig(od);
    });
  });

  unittest.group('obj-schema-ReservationAffinity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReservationAffinity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReservationAffinity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReservationAffinity(od);
    });
  });

  unittest.group('obj-schema-ResourceLimit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceLimit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceLimit.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceLimit(od);
    });
  });

  unittest.group('obj-schema-ResourceUsageExportConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceUsageExportConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceUsageExportConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceUsageExportConfig(od);
    });
  });

  unittest.group('obj-schema-RollbackNodePoolUpgradeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackNodePoolUpgradeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackNodePoolUpgradeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRollbackNodePoolUpgradeRequest(od);
    });
  });

  unittest.group('obj-schema-SandboxConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSandboxConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SandboxConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSandboxConfig(od);
    });
  });

  unittest.group('obj-schema-ServerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServerConfig(od);
    });
  });

  unittest.group('obj-schema-SetAddonsConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetAddonsConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetAddonsConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetAddonsConfigRequest(od);
    });
  });

  unittest.group('obj-schema-SetLabelsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetLabelsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetLabelsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetLabelsRequest(od);
    });
  });

  unittest.group('obj-schema-SetLegacyAbacRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetLegacyAbacRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetLegacyAbacRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetLegacyAbacRequest(od);
    });
  });

  unittest.group('obj-schema-SetLocationsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetLocationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetLocationsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetLocationsRequest(od);
    });
  });

  unittest.group('obj-schema-SetLoggingServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetLoggingServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetLoggingServiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetLoggingServiceRequest(od);
    });
  });

  unittest.group('obj-schema-SetMaintenancePolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetMaintenancePolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetMaintenancePolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetMaintenancePolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SetMasterAuthRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetMasterAuthRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetMasterAuthRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetMasterAuthRequest(od);
    });
  });

  unittest.group('obj-schema-SetMonitoringServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetMonitoringServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetMonitoringServiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetMonitoringServiceRequest(od);
    });
  });

  unittest.group('obj-schema-SetNetworkPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetNetworkPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetNetworkPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetNetworkPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SetNodePoolAutoscalingRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetNodePoolAutoscalingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetNodePoolAutoscalingRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetNodePoolAutoscalingRequest(od);
    });
  });

  unittest.group('obj-schema-SetNodePoolManagementRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetNodePoolManagementRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetNodePoolManagementRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetNodePoolManagementRequest(od);
    });
  });

  unittest.group('obj-schema-SetNodePoolSizeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetNodePoolSizeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetNodePoolSizeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetNodePoolSizeRequest(od);
    });
  });

  unittest.group('obj-schema-ShieldedInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShieldedInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShieldedInstanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShieldedInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-ShieldedNodes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShieldedNodes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShieldedNodes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShieldedNodes(od);
    });
  });

  unittest.group('obj-schema-StartIPRotationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartIPRotationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartIPRotationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartIPRotationRequest(od);
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

  unittest.group('obj-schema-StatusCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatusCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StatusCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStatusCondition(od);
    });
  });

  unittest.group('obj-schema-TimeWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeWindow.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeWindow(od);
    });
  });

  unittest.group('obj-schema-UpdateClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateClusterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateClusterRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateMasterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateMasterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateMasterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateMasterRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateNodePoolRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateNodePoolRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateNodePoolRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateNodePoolRequest(od);
    });
  });

  unittest.group('obj-schema-UpgradeAvailableEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeAvailableEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeAvailableEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeAvailableEvent(od);
    });
  });

  unittest.group('obj-schema-UpgradeEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeEvent(od);
    });
  });

  unittest.group('obj-schema-UpgradeSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeSettings(od);
    });
  });

  unittest.group('obj-schema-UsableSubnetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsableSubnetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsableSubnetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsableSubnetwork(od);
    });
  });

  unittest.group('obj-schema-UsableSubnetworkSecondaryRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsableSubnetworkSecondaryRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsableSubnetworkSecondaryRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsableSubnetworkSecondaryRange(od);
    });
  });

  unittest.group('obj-schema-VerticalPodAutoscaling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerticalPodAutoscaling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerticalPodAutoscaling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerticalPodAutoscaling(od);
    });
  });

  unittest.group('obj-schema-VirtualNIC', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVirtualNIC();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.VirtualNIC.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVirtualNIC(od);
    });
  });

  unittest.group('obj-schema-WorkloadIdentityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadIdentityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadIdentityConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkloadIdentityConfig(od);
    });
  });

  unittest.group('obj-schema-WorkloadMetadataConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadMetadataConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadMetadataConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkloadMetadataConfig(od);
    });
  });

  unittest.group('resource-ProjectsAggregatedUsableSubnetworksResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.aggregated.usableSubnetworks;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListUsableSubnetworksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListUsableSubnetworksResponse(
          response as api.ListUsableSubnetworksResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--getServerConfig', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildServerConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getServerConfig(arg_name,
          projectId: arg_projectId, zone: arg_zone, $fields: arg_$fields);
      checkServerConfig(response as api.ServerConfig);
    });
  });

  unittest.group('resource-ProjectsLocationsClustersResource', () {
    unittest.test('method--completeIpRotation', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildCompleteIPRotationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CompleteIPRotationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCompleteIPRotationRequest(obj);

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
      final response = await res.completeIpRotation(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildCreateClusterRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateClusterRequest(obj);

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
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_name = 'foo';
      final arg_clusterId = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['clusterId']!.first,
          unittest.equals(arg_clusterId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
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
          clusterId: arg_clusterId,
          projectId: arg_projectId,
          zone: arg_zone,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_name = 'foo';
      final arg_clusterId = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['clusterId']!.first,
          unittest.equals(arg_clusterId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          clusterId: arg_clusterId,
          projectId: arg_projectId,
          zone: arg_zone,
          $fields: arg_$fields);
      checkCluster(response as api.Cluster);
    });

    unittest.test('method--getJwks', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildGetJSONWebKeysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getJwks(arg_parent, $fields: arg_$fields);
      checkGetJSONWebKeysResponse(response as api.GetJSONWebKeysResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_parent = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          projectId: arg_projectId, zone: arg_zone, $fields: arg_$fields);
      checkListClustersResponse(response as api.ListClustersResponse);
    });

    unittest.test('method--setAddons', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetAddonsConfigRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetAddonsConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetAddonsConfigRequest(obj);

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
      final response =
          await res.setAddons(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setLegacyAbac', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetLegacyAbacRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLegacyAbacRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLegacyAbacRequest(obj);

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
      final response =
          await res.setLegacyAbac(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setLocations', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetLocationsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLocationsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLocationsRequest(obj);

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
      final response =
          await res.setLocations(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setLogging', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetLoggingServiceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLoggingServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLoggingServiceRequest(obj);

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
      final response =
          await res.setLogging(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setMaintenancePolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetMaintenancePolicyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetMaintenancePolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMaintenancePolicyRequest(obj);

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
      final response = await res.setMaintenancePolicy(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setMasterAuth', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetMasterAuthRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetMasterAuthRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMasterAuthRequest(obj);

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
      final response =
          await res.setMasterAuth(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setMonitoring', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetMonitoringServiceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetMonitoringServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMonitoringServiceRequest(obj);

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
      final response =
          await res.setMonitoring(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setNetworkPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetNetworkPolicyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNetworkPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNetworkPolicyRequest(obj);

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
      final response = await res.setNetworkPolicy(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setResourceLabels', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetLabelsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLabelsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLabelsRequest(obj);

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
      final response = await res.setResourceLabels(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--startIpRotation', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildStartIPRotationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartIPRotationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartIPRotationRequest(obj);

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
      final response = await res.startIpRotation(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildUpdateClusterRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateClusterRequest(obj);

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
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--updateMaster', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildUpdateMasterRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateMasterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateMasterRequest(obj);

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
      final response =
          await res.updateMaster(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsClustersNodePoolsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_request = buildCreateNodePoolRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateNodePoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateNodePoolRequest(obj);

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
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_name = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['clusterId']!.first,
          unittest.equals(arg_clusterId),
        );
        unittest.expect(
          queryMap['nodePoolId']!.first,
          unittest.equals(arg_nodePoolId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
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
          clusterId: arg_clusterId,
          nodePoolId: arg_nodePoolId,
          projectId: arg_projectId,
          zone: arg_zone,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_name = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['clusterId']!.first,
          unittest.equals(arg_clusterId),
        );
        unittest.expect(
          queryMap['nodePoolId']!.first,
          unittest.equals(arg_nodePoolId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNodePool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          clusterId: arg_clusterId,
          nodePoolId: arg_nodePoolId,
          projectId: arg_projectId,
          zone: arg_zone,
          $fields: arg_$fields);
      checkNodePool(response as api.NodePool);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_parent = 'foo';
      final arg_clusterId = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['clusterId']!.first,
          unittest.equals(arg_clusterId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListNodePoolsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          clusterId: arg_clusterId,
          projectId: arg_projectId,
          zone: arg_zone,
          $fields: arg_$fields);
      checkListNodePoolsResponse(response as api.ListNodePoolsResponse);
    });

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_request = buildRollbackNodePoolUpgradeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RollbackNodePoolUpgradeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRollbackNodePoolUpgradeRequest(obj);

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
      final response =
          await res.rollback(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setAutoscaling', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_request = buildSetNodePoolAutoscalingRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNodePoolAutoscalingRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolAutoscalingRequest(obj);

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
      final response =
          await res.setAutoscaling(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setManagement', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_request = buildSetNodePoolManagementRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNodePoolManagementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolManagementRequest(obj);

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
      final response =
          await res.setManagement(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setSize', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_request = buildSetNodePoolSizeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNodePoolSizeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolSizeRequest(obj);

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
      final response =
          await res.setSize(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_request = buildUpdateNodePoolRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateNodePoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateNodePoolRequest(obj);

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
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsClustersWellKnownResource', () {
    unittest.test('method--getOpenidConfiguration', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.wellKnown;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildGetOpenIDConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getOpenidConfiguration(arg_parent, $fields: arg_$fields);
      checkGetOpenIDConfigResponse(response as api.GetOpenIDConfigResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.operations;
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_operationId = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['operationId']!.first,
          unittest.equals(arg_operationId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
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
      final response = await res.get(arg_name,
          operationId: arg_operationId,
          projectId: arg_projectId,
          zone: arg_zone,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.operations;
      final arg_parent = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
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
      final response = await res.list(arg_parent,
          projectId: arg_projectId, zone: arg_zone, $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsZonesResource', () {
    unittest.test('method--getServerconfig', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/serverconfig', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/serverconfig'),
        );
        pathOffset += 13;

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildServerConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getServerconfig(arg_projectId, arg_zone,
          name: arg_name, $fields: arg_$fields);
      checkServerConfig(response as api.ServerConfig);
    });
  });

  unittest.group('resource-ProjectsZonesClustersResource', () {
    unittest.test('method--addons', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetAddonsConfigRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetAddonsConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetAddonsConfigRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/addons', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/addons'),
        );
        pathOffset += 7;

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
      final response = await res.addons(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--completeIpRotation', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildCompleteIPRotationRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CompleteIPRotationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCompleteIPRotationRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf(':completeIpRotation', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals(':completeIpRotation'),
        );
        pathOffset += 19;

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
      final response = await res.completeIpRotation(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildCreateClusterRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateClusterRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/clusters'),
        );
        pathOffset += 9;

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
      final response = await res.create(arg_request, arg_projectId, arg_zone,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
      final response = await res.delete(arg_projectId, arg_zone, arg_clusterId,
          name: arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_zone, arg_clusterId,
          name: arg_name, $fields: arg_$fields);
      checkCluster(response as api.Cluster);
    });

    unittest.test('method--legacyAbac', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetLegacyAbacRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLegacyAbacRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLegacyAbacRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/legacyAbac', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/legacyAbac'),
        );
        pathOffset += 11;

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
      final response = await res.legacyAbac(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/clusters'),
        );
        pathOffset += 9;

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
          queryMap['parent']!.first,
          unittest.equals(arg_parent),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_zone,
          parent: arg_parent, $fields: arg_$fields);
      checkListClustersResponse(response as api.ListClustersResponse);
    });

    unittest.test('method--locations', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetLocationsRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLocationsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLocationsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/locations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/locations'),
        );
        pathOffset += 10;

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
      final response = await res.locations(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--logging', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetLoggingServiceRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLoggingServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLoggingServiceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/logging', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/logging'),
        );
        pathOffset += 8;

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
      final response = await res.logging(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--master', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildUpdateMasterRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateMasterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateMasterRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/master', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/master'),
        );
        pathOffset += 7;

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
      final response = await res.master(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--monitoring', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetMonitoringServiceRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetMonitoringServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMonitoringServiceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/monitoring', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/monitoring'),
        );
        pathOffset += 11;

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
      final response = await res.monitoring(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--resourceLabels', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetLabelsRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLabelsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLabelsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/resourceLabels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/resourceLabels'),
        );
        pathOffset += 15;

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
      final response = await res.resourceLabels(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setMaintenancePolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetMaintenancePolicyRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetMaintenancePolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMaintenancePolicyRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf(':setMaintenancePolicy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals(':setMaintenancePolicy'),
        );
        pathOffset += 21;

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
      final response = await res.setMaintenancePolicy(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setMasterAuth', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetMasterAuthRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetMasterAuthRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMasterAuthRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf(':setMasterAuth', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals(':setMasterAuth'),
        );
        pathOffset += 14;

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
      final response = await res.setMasterAuth(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setNetworkPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetNetworkPolicyRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNetworkPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNetworkPolicyRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf(':setNetworkPolicy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals(':setNetworkPolicy'),
        );
        pathOffset += 17;

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
      final response = await res.setNetworkPolicy(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--startIpRotation', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildStartIPRotationRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartIPRotationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartIPRotationRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf(':startIpRotation', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals(':startIpRotation'),
        );
        pathOffset += 16;

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
      final response = await res.startIpRotation(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildUpdateClusterRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateClusterRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );

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
      final response = await res.update(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsZonesClustersNodePoolsResource', () {
    unittest.test('method--autoscaling', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_request = buildSetNodePoolAutoscalingRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNodePoolAutoscalingRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolAutoscalingRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/nodePools/'),
        );
        pathOffset += 11;
        index = path.indexOf('/autoscaling', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_nodePoolId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/autoscaling'),
        );
        pathOffset += 12;

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
      final response = await res.autoscaling(
          arg_request, arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_request = buildCreateNodePoolRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateNodePoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateNodePoolRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/nodePools'),
        );
        pathOffset += 10;

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
      final response = await res.create(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/nodePools/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_nodePoolId'),
        );

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
      final response = await res.delete(
          arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
          name: arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/nodePools/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_nodePoolId'),
        );

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNodePool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
          name: arg_name, $fields: arg_$fields);
      checkNodePool(response as api.NodePool);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/nodePools'),
        );
        pathOffset += 10;

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
          queryMap['parent']!.first,
          unittest.equals(arg_parent),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListNodePoolsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_zone, arg_clusterId,
          parent: arg_parent, $fields: arg_$fields);
      checkListNodePoolsResponse(response as api.ListNodePoolsResponse);
    });

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_request = buildRollbackNodePoolUpgradeRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RollbackNodePoolUpgradeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRollbackNodePoolUpgradeRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/nodePools/'),
        );
        pathOffset += 11;
        index = path.indexOf(':rollback', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_nodePoolId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals(':rollback'),
        );
        pathOffset += 9;

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
      final response = await res.rollback(
          arg_request, arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setManagement', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_request = buildSetNodePoolManagementRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNodePoolManagementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolManagementRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/nodePools/'),
        );
        pathOffset += 11;
        index = path.indexOf('/setManagement', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_nodePoolId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/setManagement'),
        );
        pathOffset += 14;

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
      final response = await res.setManagement(
          arg_request, arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setSize', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_request = buildSetNodePoolSizeRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNodePoolSizeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolSizeRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/nodePools/'),
        );
        pathOffset += 11;
        index = path.indexOf('/setSize', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_nodePoolId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/setSize'),
        );
        pathOffset += 8;

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
      final response = await res.setSize(
          arg_request, arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_request = buildUpdateNodePoolRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateNodePoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateNodePoolRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/nodePools/'),
        );
        pathOffset += 11;
        index = path.indexOf('/update', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_nodePoolId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/update'),
        );
        pathOffset += 7;

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
      final response = await res.update(
          arg_request, arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsZonesOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_operationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/operations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/operations/'),
        );
        pathOffset += 12;
        index = path.indexOf(':cancel', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_operationId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':cancel'),
        );
        pathOffset += 7;

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
      final response = await res.cancel(
          arg_request, arg_projectId, arg_zone, arg_operationId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.operations;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_operationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/operations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/operations/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_operationId'),
        );

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
      final response = await res.get(arg_projectId, arg_zone, arg_operationId,
          name: arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.operations;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/operations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/operations'),
        );
        pathOffset += 11;

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
          queryMap['parent']!.first,
          unittest.equals(arg_parent),
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
      final response = await res.list(arg_projectId, arg_zone,
          parent: arg_parent, $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
