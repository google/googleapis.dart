library googleapis.container.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/container/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAcceleratorConfig = 0;
buildAcceleratorConfig() {
  var o = new api.AcceleratorConfig();
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    o.acceleratorCount = "foo";
    o.acceleratorType = "foo";
  }
  buildCounterAcceleratorConfig--;
  return o;
}

checkAcceleratorConfig(api.AcceleratorConfig o) {
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    unittest.expect(o.acceleratorCount, unittest.equals('foo'));
    unittest.expect(o.acceleratorType, unittest.equals('foo'));
  }
  buildCounterAcceleratorConfig--;
}

core.int buildCounterAddonsConfig = 0;
buildAddonsConfig() {
  var o = new api.AddonsConfig();
  buildCounterAddonsConfig++;
  if (buildCounterAddonsConfig < 3) {
    o.cloudRunConfig = buildCloudRunConfig();
    o.configConnectorConfig = buildConfigConnectorConfig();
    o.dnsCacheConfig = buildDnsCacheConfig();
    o.horizontalPodAutoscaling = buildHorizontalPodAutoscaling();
    o.httpLoadBalancing = buildHttpLoadBalancing();
    o.kubernetesDashboard = buildKubernetesDashboard();
    o.networkPolicyConfig = buildNetworkPolicyConfig();
  }
  buildCounterAddonsConfig--;
  return o;
}

checkAddonsConfig(api.AddonsConfig o) {
  buildCounterAddonsConfig++;
  if (buildCounterAddonsConfig < 3) {
    checkCloudRunConfig(o.cloudRunConfig);
    checkConfigConnectorConfig(o.configConnectorConfig);
    checkDnsCacheConfig(o.dnsCacheConfig);
    checkHorizontalPodAutoscaling(o.horizontalPodAutoscaling);
    checkHttpLoadBalancing(o.httpLoadBalancing);
    checkKubernetesDashboard(o.kubernetesDashboard);
    checkNetworkPolicyConfig(o.networkPolicyConfig);
  }
  buildCounterAddonsConfig--;
}

core.int buildCounterAuthenticatorGroupsConfig = 0;
buildAuthenticatorGroupsConfig() {
  var o = new api.AuthenticatorGroupsConfig();
  buildCounterAuthenticatorGroupsConfig++;
  if (buildCounterAuthenticatorGroupsConfig < 3) {
    o.enabled = true;
    o.securityGroup = "foo";
  }
  buildCounterAuthenticatorGroupsConfig--;
  return o;
}

checkAuthenticatorGroupsConfig(api.AuthenticatorGroupsConfig o) {
  buildCounterAuthenticatorGroupsConfig++;
  if (buildCounterAuthenticatorGroupsConfig < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.securityGroup, unittest.equals('foo'));
  }
  buildCounterAuthenticatorGroupsConfig--;
}

core.int buildCounterAutoUpgradeOptions = 0;
buildAutoUpgradeOptions() {
  var o = new api.AutoUpgradeOptions();
  buildCounterAutoUpgradeOptions++;
  if (buildCounterAutoUpgradeOptions < 3) {
    o.autoUpgradeStartTime = "foo";
    o.description = "foo";
  }
  buildCounterAutoUpgradeOptions--;
  return o;
}

checkAutoUpgradeOptions(api.AutoUpgradeOptions o) {
  buildCounterAutoUpgradeOptions++;
  if (buildCounterAutoUpgradeOptions < 3) {
    unittest.expect(o.autoUpgradeStartTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
  }
  buildCounterAutoUpgradeOptions--;
}

buildUnnamed4336() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4336(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAutoprovisioningNodePoolDefaults = 0;
buildAutoprovisioningNodePoolDefaults() {
  var o = new api.AutoprovisioningNodePoolDefaults();
  buildCounterAutoprovisioningNodePoolDefaults++;
  if (buildCounterAutoprovisioningNodePoolDefaults < 3) {
    o.bootDiskKmsKey = "foo";
    o.diskSizeGb = 42;
    o.diskType = "foo";
    o.management = buildNodeManagement();
    o.minCpuPlatform = "foo";
    o.oauthScopes = buildUnnamed4336();
    o.serviceAccount = "foo";
    o.shieldedInstanceConfig = buildShieldedInstanceConfig();
    o.upgradeSettings = buildUpgradeSettings();
  }
  buildCounterAutoprovisioningNodePoolDefaults--;
  return o;
}

checkAutoprovisioningNodePoolDefaults(api.AutoprovisioningNodePoolDefaults o) {
  buildCounterAutoprovisioningNodePoolDefaults++;
  if (buildCounterAutoprovisioningNodePoolDefaults < 3) {
    unittest.expect(o.bootDiskKmsKey, unittest.equals('foo'));
    unittest.expect(o.diskSizeGb, unittest.equals(42));
    unittest.expect(o.diskType, unittest.equals('foo'));
    checkNodeManagement(o.management);
    unittest.expect(o.minCpuPlatform, unittest.equals('foo'));
    checkUnnamed4336(o.oauthScopes);
    unittest.expect(o.serviceAccount, unittest.equals('foo'));
    checkShieldedInstanceConfig(o.shieldedInstanceConfig);
    checkUpgradeSettings(o.upgradeSettings);
  }
  buildCounterAutoprovisioningNodePoolDefaults--;
}

core.int buildCounterBigQueryDestination = 0;
buildBigQueryDestination() {
  var o = new api.BigQueryDestination();
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    o.datasetId = "foo";
  }
  buildCounterBigQueryDestination--;
  return o;
}

checkBigQueryDestination(api.BigQueryDestination o) {
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
  }
  buildCounterBigQueryDestination--;
}

core.int buildCounterBinaryAuthorization = 0;
buildBinaryAuthorization() {
  var o = new api.BinaryAuthorization();
  buildCounterBinaryAuthorization++;
  if (buildCounterBinaryAuthorization < 3) {
    o.enabled = true;
  }
  buildCounterBinaryAuthorization--;
  return o;
}

checkBinaryAuthorization(api.BinaryAuthorization o) {
  buildCounterBinaryAuthorization++;
  if (buildCounterBinaryAuthorization < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterBinaryAuthorization--;
}

core.int buildCounterCancelOperationRequest = 0;
buildCancelOperationRequest() {
  var o = new api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {
    o.name = "foo";
    o.operationId = "foo";
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterCancelOperationRequest--;
  return o;
}

checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterCancelOperationRequest--;
}

core.int buildCounterCidrBlock = 0;
buildCidrBlock() {
  var o = new api.CidrBlock();
  buildCounterCidrBlock++;
  if (buildCounterCidrBlock < 3) {
    o.cidrBlock = "foo";
    o.displayName = "foo";
  }
  buildCounterCidrBlock--;
  return o;
}

checkCidrBlock(api.CidrBlock o) {
  buildCounterCidrBlock++;
  if (buildCounterCidrBlock < 3) {
    unittest.expect(o.cidrBlock, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
  }
  buildCounterCidrBlock--;
}

core.int buildCounterClientCertificateConfig = 0;
buildClientCertificateConfig() {
  var o = new api.ClientCertificateConfig();
  buildCounterClientCertificateConfig++;
  if (buildCounterClientCertificateConfig < 3) {
    o.issueClientCertificate = true;
  }
  buildCounterClientCertificateConfig--;
  return o;
}

checkClientCertificateConfig(api.ClientCertificateConfig o) {
  buildCounterClientCertificateConfig++;
  if (buildCounterClientCertificateConfig < 3) {
    unittest.expect(o.issueClientCertificate, unittest.isTrue);
  }
  buildCounterClientCertificateConfig--;
}

core.int buildCounterCloudRunConfig = 0;
buildCloudRunConfig() {
  var o = new api.CloudRunConfig();
  buildCounterCloudRunConfig++;
  if (buildCounterCloudRunConfig < 3) {
    o.disabled = true;
    o.loadBalancerType = "foo";
  }
  buildCounterCloudRunConfig--;
  return o;
}

checkCloudRunConfig(api.CloudRunConfig o) {
  buildCounterCloudRunConfig++;
  if (buildCounterCloudRunConfig < 3) {
    unittest.expect(o.disabled, unittest.isTrue);
    unittest.expect(o.loadBalancerType, unittest.equals('foo'));
  }
  buildCounterCloudRunConfig--;
}

buildUnnamed4337() {
  var o = new core.List<api.StatusCondition>();
  o.add(buildStatusCondition());
  o.add(buildStatusCondition());
  return o;
}

checkUnnamed4337(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
}

buildUnnamed4338() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4338(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4339() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4339(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4340() {
  var o = new core.List<api.NodePool>();
  o.add(buildNodePool());
  o.add(buildNodePool());
  return o;
}

checkUnnamed4340(core.List<api.NodePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodePool(o[0]);
  checkNodePool(o[1]);
}

buildUnnamed4341() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4341(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterCluster = 0;
buildCluster() {
  var o = new api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.addonsConfig = buildAddonsConfig();
    o.authenticatorGroupsConfig = buildAuthenticatorGroupsConfig();
    o.autoscaling = buildClusterAutoscaling();
    o.binaryAuthorization = buildBinaryAuthorization();
    o.clusterIpv4Cidr = "foo";
    o.conditions = buildUnnamed4337();
    o.createTime = "foo";
    o.currentMasterVersion = "foo";
    o.currentNodeCount = 42;
    o.currentNodeVersion = "foo";
    o.databaseEncryption = buildDatabaseEncryption();
    o.defaultMaxPodsConstraint = buildMaxPodsConstraint();
    o.description = "foo";
    o.enableKubernetesAlpha = true;
    o.enableTpu = true;
    o.endpoint = "foo";
    o.expireTime = "foo";
    o.initialClusterVersion = "foo";
    o.initialNodeCount = 42;
    o.instanceGroupUrls = buildUnnamed4338();
    o.ipAllocationPolicy = buildIPAllocationPolicy();
    o.labelFingerprint = "foo";
    o.legacyAbac = buildLegacyAbac();
    o.location = "foo";
    o.locations = buildUnnamed4339();
    o.loggingService = "foo";
    o.maintenancePolicy = buildMaintenancePolicy();
    o.masterAuth = buildMasterAuth();
    o.masterAuthorizedNetworksConfig = buildMasterAuthorizedNetworksConfig();
    o.monitoringService = "foo";
    o.name = "foo";
    o.network = "foo";
    o.networkConfig = buildNetworkConfig();
    o.networkPolicy = buildNetworkPolicy();
    o.nodeConfig = buildNodeConfig();
    o.nodeIpv4CidrSize = 42;
    o.nodePools = buildUnnamed4340();
    o.privateClusterConfig = buildPrivateClusterConfig();
    o.releaseChannel = buildReleaseChannel();
    o.resourceLabels = buildUnnamed4341();
    o.resourceUsageExportConfig = buildResourceUsageExportConfig();
    o.selfLink = "foo";
    o.servicesIpv4Cidr = "foo";
    o.shieldedNodes = buildShieldedNodes();
    o.status = "foo";
    o.statusMessage = "foo";
    o.subnetwork = "foo";
    o.tpuIpv4CidrBlock = "foo";
    o.verticalPodAutoscaling = buildVerticalPodAutoscaling();
    o.workloadIdentityConfig = buildWorkloadIdentityConfig();
    o.zone = "foo";
  }
  buildCounterCluster--;
  return o;
}

checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    checkAddonsConfig(o.addonsConfig);
    checkAuthenticatorGroupsConfig(o.authenticatorGroupsConfig);
    checkClusterAutoscaling(o.autoscaling);
    checkBinaryAuthorization(o.binaryAuthorization);
    unittest.expect(o.clusterIpv4Cidr, unittest.equals('foo'));
    checkUnnamed4337(o.conditions);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.currentMasterVersion, unittest.equals('foo'));
    unittest.expect(o.currentNodeCount, unittest.equals(42));
    unittest.expect(o.currentNodeVersion, unittest.equals('foo'));
    checkDatabaseEncryption(o.databaseEncryption);
    checkMaxPodsConstraint(o.defaultMaxPodsConstraint);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.enableKubernetesAlpha, unittest.isTrue);
    unittest.expect(o.enableTpu, unittest.isTrue);
    unittest.expect(o.endpoint, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    unittest.expect(o.initialClusterVersion, unittest.equals('foo'));
    unittest.expect(o.initialNodeCount, unittest.equals(42));
    checkUnnamed4338(o.instanceGroupUrls);
    checkIPAllocationPolicy(o.ipAllocationPolicy);
    unittest.expect(o.labelFingerprint, unittest.equals('foo'));
    checkLegacyAbac(o.legacyAbac);
    unittest.expect(o.location, unittest.equals('foo'));
    checkUnnamed4339(o.locations);
    unittest.expect(o.loggingService, unittest.equals('foo'));
    checkMaintenancePolicy(o.maintenancePolicy);
    checkMasterAuth(o.masterAuth);
    checkMasterAuthorizedNetworksConfig(o.masterAuthorizedNetworksConfig);
    unittest.expect(o.monitoringService, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    checkNetworkConfig(o.networkConfig);
    checkNetworkPolicy(o.networkPolicy);
    checkNodeConfig(o.nodeConfig);
    unittest.expect(o.nodeIpv4CidrSize, unittest.equals(42));
    checkUnnamed4340(o.nodePools);
    checkPrivateClusterConfig(o.privateClusterConfig);
    checkReleaseChannel(o.releaseChannel);
    checkUnnamed4341(o.resourceLabels);
    checkResourceUsageExportConfig(o.resourceUsageExportConfig);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.servicesIpv4Cidr, unittest.equals('foo'));
    checkShieldedNodes(o.shieldedNodes);
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
    unittest.expect(o.tpuIpv4CidrBlock, unittest.equals('foo'));
    checkVerticalPodAutoscaling(o.verticalPodAutoscaling);
    checkWorkloadIdentityConfig(o.workloadIdentityConfig);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterCluster--;
}

buildUnnamed4342() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4342(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4343() {
  var o = new core.List<api.ResourceLimit>();
  o.add(buildResourceLimit());
  o.add(buildResourceLimit());
  return o;
}

checkUnnamed4343(core.List<api.ResourceLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceLimit(o[0]);
  checkResourceLimit(o[1]);
}

core.int buildCounterClusterAutoscaling = 0;
buildClusterAutoscaling() {
  var o = new api.ClusterAutoscaling();
  buildCounterClusterAutoscaling++;
  if (buildCounterClusterAutoscaling < 3) {
    o.autoprovisioningLocations = buildUnnamed4342();
    o.autoprovisioningNodePoolDefaults =
        buildAutoprovisioningNodePoolDefaults();
    o.enableNodeAutoprovisioning = true;
    o.resourceLimits = buildUnnamed4343();
  }
  buildCounterClusterAutoscaling--;
  return o;
}

checkClusterAutoscaling(api.ClusterAutoscaling o) {
  buildCounterClusterAutoscaling++;
  if (buildCounterClusterAutoscaling < 3) {
    checkUnnamed4342(o.autoprovisioningLocations);
    checkAutoprovisioningNodePoolDefaults(o.autoprovisioningNodePoolDefaults);
    unittest.expect(o.enableNodeAutoprovisioning, unittest.isTrue);
    checkUnnamed4343(o.resourceLimits);
  }
  buildCounterClusterAutoscaling--;
}

buildUnnamed4344() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4344(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterClusterUpdate = 0;
buildClusterUpdate() {
  var o = new api.ClusterUpdate();
  buildCounterClusterUpdate++;
  if (buildCounterClusterUpdate < 3) {
    o.desiredAddonsConfig = buildAddonsConfig();
    o.desiredBinaryAuthorization = buildBinaryAuthorization();
    o.desiredClusterAutoscaling = buildClusterAutoscaling();
    o.desiredDatabaseEncryption = buildDatabaseEncryption();
    o.desiredDefaultSnatStatus = buildDefaultSnatStatus();
    o.desiredImageType = "foo";
    o.desiredIntraNodeVisibilityConfig = buildIntraNodeVisibilityConfig();
    o.desiredLocations = buildUnnamed4344();
    o.desiredLoggingService = "foo";
    o.desiredMasterAuthorizedNetworksConfig =
        buildMasterAuthorizedNetworksConfig();
    o.desiredMasterVersion = "foo";
    o.desiredMonitoringService = "foo";
    o.desiredNodePoolAutoscaling = buildNodePoolAutoscaling();
    o.desiredNodePoolId = "foo";
    o.desiredNodeVersion = "foo";
    o.desiredPrivateClusterConfig = buildPrivateClusterConfig();
    o.desiredReleaseChannel = buildReleaseChannel();
    o.desiredResourceUsageExportConfig = buildResourceUsageExportConfig();
    o.desiredShieldedNodes = buildShieldedNodes();
    o.desiredVerticalPodAutoscaling = buildVerticalPodAutoscaling();
    o.desiredWorkloadIdentityConfig = buildWorkloadIdentityConfig();
  }
  buildCounterClusterUpdate--;
  return o;
}

checkClusterUpdate(api.ClusterUpdate o) {
  buildCounterClusterUpdate++;
  if (buildCounterClusterUpdate < 3) {
    checkAddonsConfig(o.desiredAddonsConfig);
    checkBinaryAuthorization(o.desiredBinaryAuthorization);
    checkClusterAutoscaling(o.desiredClusterAutoscaling);
    checkDatabaseEncryption(o.desiredDatabaseEncryption);
    checkDefaultSnatStatus(o.desiredDefaultSnatStatus);
    unittest.expect(o.desiredImageType, unittest.equals('foo'));
    checkIntraNodeVisibilityConfig(o.desiredIntraNodeVisibilityConfig);
    checkUnnamed4344(o.desiredLocations);
    unittest.expect(o.desiredLoggingService, unittest.equals('foo'));
    checkMasterAuthorizedNetworksConfig(
        o.desiredMasterAuthorizedNetworksConfig);
    unittest.expect(o.desiredMasterVersion, unittest.equals('foo'));
    unittest.expect(o.desiredMonitoringService, unittest.equals('foo'));
    checkNodePoolAutoscaling(o.desiredNodePoolAutoscaling);
    unittest.expect(o.desiredNodePoolId, unittest.equals('foo'));
    unittest.expect(o.desiredNodeVersion, unittest.equals('foo'));
    checkPrivateClusterConfig(o.desiredPrivateClusterConfig);
    checkReleaseChannel(o.desiredReleaseChannel);
    checkResourceUsageExportConfig(o.desiredResourceUsageExportConfig);
    checkShieldedNodes(o.desiredShieldedNodes);
    checkVerticalPodAutoscaling(o.desiredVerticalPodAutoscaling);
    checkWorkloadIdentityConfig(o.desiredWorkloadIdentityConfig);
  }
  buildCounterClusterUpdate--;
}

core.int buildCounterCompleteIPRotationRequest = 0;
buildCompleteIPRotationRequest() {
  var o = new api.CompleteIPRotationRequest();
  buildCounterCompleteIPRotationRequest++;
  if (buildCounterCompleteIPRotationRequest < 3) {
    o.clusterId = "foo";
    o.name = "foo";
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterCompleteIPRotationRequest--;
  return o;
}

checkCompleteIPRotationRequest(api.CompleteIPRotationRequest o) {
  buildCounterCompleteIPRotationRequest++;
  if (buildCounterCompleteIPRotationRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterCompleteIPRotationRequest--;
}

core.int buildCounterConfigConnectorConfig = 0;
buildConfigConnectorConfig() {
  var o = new api.ConfigConnectorConfig();
  buildCounterConfigConnectorConfig++;
  if (buildCounterConfigConnectorConfig < 3) {
    o.enabled = true;
  }
  buildCounterConfigConnectorConfig--;
  return o;
}

checkConfigConnectorConfig(api.ConfigConnectorConfig o) {
  buildCounterConfigConnectorConfig++;
  if (buildCounterConfigConnectorConfig < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterConfigConnectorConfig--;
}

core.int buildCounterConsumptionMeteringConfig = 0;
buildConsumptionMeteringConfig() {
  var o = new api.ConsumptionMeteringConfig();
  buildCounterConsumptionMeteringConfig++;
  if (buildCounterConsumptionMeteringConfig < 3) {
    o.enabled = true;
  }
  buildCounterConsumptionMeteringConfig--;
  return o;
}

checkConsumptionMeteringConfig(api.ConsumptionMeteringConfig o) {
  buildCounterConsumptionMeteringConfig++;
  if (buildCounterConsumptionMeteringConfig < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterConsumptionMeteringConfig--;
}

core.int buildCounterCreateClusterRequest = 0;
buildCreateClusterRequest() {
  var o = new api.CreateClusterRequest();
  buildCounterCreateClusterRequest++;
  if (buildCounterCreateClusterRequest < 3) {
    o.cluster = buildCluster();
    o.parent = "foo";
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterCreateClusterRequest--;
  return o;
}

checkCreateClusterRequest(api.CreateClusterRequest o) {
  buildCounterCreateClusterRequest++;
  if (buildCounterCreateClusterRequest < 3) {
    checkCluster(o.cluster);
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterCreateClusterRequest--;
}

core.int buildCounterCreateNodePoolRequest = 0;
buildCreateNodePoolRequest() {
  var o = new api.CreateNodePoolRequest();
  buildCounterCreateNodePoolRequest++;
  if (buildCounterCreateNodePoolRequest < 3) {
    o.clusterId = "foo";
    o.nodePool = buildNodePool();
    o.parent = "foo";
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterCreateNodePoolRequest--;
  return o;
}

checkCreateNodePoolRequest(api.CreateNodePoolRequest o) {
  buildCounterCreateNodePoolRequest++;
  if (buildCounterCreateNodePoolRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    checkNodePool(o.nodePool);
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterCreateNodePoolRequest--;
}

core.int buildCounterDailyMaintenanceWindow = 0;
buildDailyMaintenanceWindow() {
  var o = new api.DailyMaintenanceWindow();
  buildCounterDailyMaintenanceWindow++;
  if (buildCounterDailyMaintenanceWindow < 3) {
    o.duration = "foo";
    o.startTime = "foo";
  }
  buildCounterDailyMaintenanceWindow--;
  return o;
}

checkDailyMaintenanceWindow(api.DailyMaintenanceWindow o) {
  buildCounterDailyMaintenanceWindow++;
  if (buildCounterDailyMaintenanceWindow < 3) {
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterDailyMaintenanceWindow--;
}

core.int buildCounterDatabaseEncryption = 0;
buildDatabaseEncryption() {
  var o = new api.DatabaseEncryption();
  buildCounterDatabaseEncryption++;
  if (buildCounterDatabaseEncryption < 3) {
    o.keyName = "foo";
    o.state = "foo";
  }
  buildCounterDatabaseEncryption--;
  return o;
}

checkDatabaseEncryption(api.DatabaseEncryption o) {
  buildCounterDatabaseEncryption++;
  if (buildCounterDatabaseEncryption < 3) {
    unittest.expect(o.keyName, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterDatabaseEncryption--;
}

core.int buildCounterDefaultSnatStatus = 0;
buildDefaultSnatStatus() {
  var o = new api.DefaultSnatStatus();
  buildCounterDefaultSnatStatus++;
  if (buildCounterDefaultSnatStatus < 3) {
    o.disabled = true;
  }
  buildCounterDefaultSnatStatus--;
  return o;
}

checkDefaultSnatStatus(api.DefaultSnatStatus o) {
  buildCounterDefaultSnatStatus++;
  if (buildCounterDefaultSnatStatus < 3) {
    unittest.expect(o.disabled, unittest.isTrue);
  }
  buildCounterDefaultSnatStatus--;
}

core.int buildCounterDnsCacheConfig = 0;
buildDnsCacheConfig() {
  var o = new api.DnsCacheConfig();
  buildCounterDnsCacheConfig++;
  if (buildCounterDnsCacheConfig < 3) {
    o.enabled = true;
  }
  buildCounterDnsCacheConfig--;
  return o;
}

checkDnsCacheConfig(api.DnsCacheConfig o) {
  buildCounterDnsCacheConfig++;
  if (buildCounterDnsCacheConfig < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterDnsCacheConfig--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

buildUnnamed4345() {
  var o = new core.List<api.Jwk>();
  o.add(buildJwk());
  o.add(buildJwk());
  return o;
}

checkUnnamed4345(core.List<api.Jwk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJwk(o[0]);
  checkJwk(o[1]);
}

core.int buildCounterGetJSONWebKeysResponse = 0;
buildGetJSONWebKeysResponse() {
  var o = new api.GetJSONWebKeysResponse();
  buildCounterGetJSONWebKeysResponse++;
  if (buildCounterGetJSONWebKeysResponse < 3) {
    o.cacheHeader = buildHttpCacheControlResponseHeader();
    o.keys = buildUnnamed4345();
  }
  buildCounterGetJSONWebKeysResponse--;
  return o;
}

checkGetJSONWebKeysResponse(api.GetJSONWebKeysResponse o) {
  buildCounterGetJSONWebKeysResponse++;
  if (buildCounterGetJSONWebKeysResponse < 3) {
    checkHttpCacheControlResponseHeader(o.cacheHeader);
    checkUnnamed4345(o.keys);
  }
  buildCounterGetJSONWebKeysResponse--;
}

buildUnnamed4346() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4346(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4347() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4347(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4348() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4348(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4349() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4349(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4350() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4350(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGetOpenIDConfigResponse = 0;
buildGetOpenIDConfigResponse() {
  var o = new api.GetOpenIDConfigResponse();
  buildCounterGetOpenIDConfigResponse++;
  if (buildCounterGetOpenIDConfigResponse < 3) {
    o.cacheHeader = buildHttpCacheControlResponseHeader();
    o.claimsSupported = buildUnnamed4346();
    o.grantTypes = buildUnnamed4347();
    o.idTokenSigningAlgValuesSupported = buildUnnamed4348();
    o.issuer = "foo";
    o.jwksUri = "foo";
    o.responseTypesSupported = buildUnnamed4349();
    o.subjectTypesSupported = buildUnnamed4350();
  }
  buildCounterGetOpenIDConfigResponse--;
  return o;
}

checkGetOpenIDConfigResponse(api.GetOpenIDConfigResponse o) {
  buildCounterGetOpenIDConfigResponse++;
  if (buildCounterGetOpenIDConfigResponse < 3) {
    checkHttpCacheControlResponseHeader(o.cacheHeader);
    checkUnnamed4346(o.claimsSupported);
    checkUnnamed4347(o.grantTypes);
    checkUnnamed4348(o.idTokenSigningAlgValuesSupported);
    unittest.expect(o.issuer, unittest.equals('foo'));
    unittest.expect(o.jwksUri, unittest.equals('foo'));
    checkUnnamed4349(o.responseTypesSupported);
    checkUnnamed4350(o.subjectTypesSupported);
  }
  buildCounterGetOpenIDConfigResponse--;
}

core.int buildCounterHorizontalPodAutoscaling = 0;
buildHorizontalPodAutoscaling() {
  var o = new api.HorizontalPodAutoscaling();
  buildCounterHorizontalPodAutoscaling++;
  if (buildCounterHorizontalPodAutoscaling < 3) {
    o.disabled = true;
  }
  buildCounterHorizontalPodAutoscaling--;
  return o;
}

checkHorizontalPodAutoscaling(api.HorizontalPodAutoscaling o) {
  buildCounterHorizontalPodAutoscaling++;
  if (buildCounterHorizontalPodAutoscaling < 3) {
    unittest.expect(o.disabled, unittest.isTrue);
  }
  buildCounterHorizontalPodAutoscaling--;
}

core.int buildCounterHttpCacheControlResponseHeader = 0;
buildHttpCacheControlResponseHeader() {
  var o = new api.HttpCacheControlResponseHeader();
  buildCounterHttpCacheControlResponseHeader++;
  if (buildCounterHttpCacheControlResponseHeader < 3) {
    o.age = "foo";
    o.directive = "foo";
    o.expires = "foo";
  }
  buildCounterHttpCacheControlResponseHeader--;
  return o;
}

checkHttpCacheControlResponseHeader(api.HttpCacheControlResponseHeader o) {
  buildCounterHttpCacheControlResponseHeader++;
  if (buildCounterHttpCacheControlResponseHeader < 3) {
    unittest.expect(o.age, unittest.equals('foo'));
    unittest.expect(o.directive, unittest.equals('foo'));
    unittest.expect(o.expires, unittest.equals('foo'));
  }
  buildCounterHttpCacheControlResponseHeader--;
}

core.int buildCounterHttpLoadBalancing = 0;
buildHttpLoadBalancing() {
  var o = new api.HttpLoadBalancing();
  buildCounterHttpLoadBalancing++;
  if (buildCounterHttpLoadBalancing < 3) {
    o.disabled = true;
  }
  buildCounterHttpLoadBalancing--;
  return o;
}

checkHttpLoadBalancing(api.HttpLoadBalancing o) {
  buildCounterHttpLoadBalancing++;
  if (buildCounterHttpLoadBalancing < 3) {
    unittest.expect(o.disabled, unittest.isTrue);
  }
  buildCounterHttpLoadBalancing--;
}

core.int buildCounterIPAllocationPolicy = 0;
buildIPAllocationPolicy() {
  var o = new api.IPAllocationPolicy();
  buildCounterIPAllocationPolicy++;
  if (buildCounterIPAllocationPolicy < 3) {
    o.clusterIpv4Cidr = "foo";
    o.clusterIpv4CidrBlock = "foo";
    o.clusterSecondaryRangeName = "foo";
    o.createSubnetwork = true;
    o.nodeIpv4Cidr = "foo";
    o.nodeIpv4CidrBlock = "foo";
    o.servicesIpv4Cidr = "foo";
    o.servicesIpv4CidrBlock = "foo";
    o.servicesSecondaryRangeName = "foo";
    o.subnetworkName = "foo";
    o.tpuIpv4CidrBlock = "foo";
    o.useIpAliases = true;
    o.useRoutes = true;
  }
  buildCounterIPAllocationPolicy--;
  return o;
}

checkIPAllocationPolicy(api.IPAllocationPolicy o) {
  buildCounterIPAllocationPolicy++;
  if (buildCounterIPAllocationPolicy < 3) {
    unittest.expect(o.clusterIpv4Cidr, unittest.equals('foo'));
    unittest.expect(o.clusterIpv4CidrBlock, unittest.equals('foo'));
    unittest.expect(o.clusterSecondaryRangeName, unittest.equals('foo'));
    unittest.expect(o.createSubnetwork, unittest.isTrue);
    unittest.expect(o.nodeIpv4Cidr, unittest.equals('foo'));
    unittest.expect(o.nodeIpv4CidrBlock, unittest.equals('foo'));
    unittest.expect(o.servicesIpv4Cidr, unittest.equals('foo'));
    unittest.expect(o.servicesIpv4CidrBlock, unittest.equals('foo'));
    unittest.expect(o.servicesSecondaryRangeName, unittest.equals('foo'));
    unittest.expect(o.subnetworkName, unittest.equals('foo'));
    unittest.expect(o.tpuIpv4CidrBlock, unittest.equals('foo'));
    unittest.expect(o.useIpAliases, unittest.isTrue);
    unittest.expect(o.useRoutes, unittest.isTrue);
  }
  buildCounterIPAllocationPolicy--;
}

core.int buildCounterIntraNodeVisibilityConfig = 0;
buildIntraNodeVisibilityConfig() {
  var o = new api.IntraNodeVisibilityConfig();
  buildCounterIntraNodeVisibilityConfig++;
  if (buildCounterIntraNodeVisibilityConfig < 3) {
    o.enabled = true;
  }
  buildCounterIntraNodeVisibilityConfig--;
  return o;
}

checkIntraNodeVisibilityConfig(api.IntraNodeVisibilityConfig o) {
  buildCounterIntraNodeVisibilityConfig++;
  if (buildCounterIntraNodeVisibilityConfig < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterIntraNodeVisibilityConfig--;
}

core.int buildCounterJwk = 0;
buildJwk() {
  var o = new api.Jwk();
  buildCounterJwk++;
  if (buildCounterJwk < 3) {
    o.alg = "foo";
    o.crv = "foo";
    o.e = "foo";
    o.kid = "foo";
    o.kty = "foo";
    o.n = "foo";
    o.use = "foo";
    o.x = "foo";
    o.y = "foo";
  }
  buildCounterJwk--;
  return o;
}

checkJwk(api.Jwk o) {
  buildCounterJwk++;
  if (buildCounterJwk < 3) {
    unittest.expect(o.alg, unittest.equals('foo'));
    unittest.expect(o.crv, unittest.equals('foo'));
    unittest.expect(o.e, unittest.equals('foo'));
    unittest.expect(o.kid, unittest.equals('foo'));
    unittest.expect(o.kty, unittest.equals('foo'));
    unittest.expect(o.n, unittest.equals('foo'));
    unittest.expect(o.use, unittest.equals('foo'));
    unittest.expect(o.x, unittest.equals('foo'));
    unittest.expect(o.y, unittest.equals('foo'));
  }
  buildCounterJwk--;
}

core.int buildCounterKubernetesDashboard = 0;
buildKubernetesDashboard() {
  var o = new api.KubernetesDashboard();
  buildCounterKubernetesDashboard++;
  if (buildCounterKubernetesDashboard < 3) {
    o.disabled = true;
  }
  buildCounterKubernetesDashboard--;
  return o;
}

checkKubernetesDashboard(api.KubernetesDashboard o) {
  buildCounterKubernetesDashboard++;
  if (buildCounterKubernetesDashboard < 3) {
    unittest.expect(o.disabled, unittest.isTrue);
  }
  buildCounterKubernetesDashboard--;
}

core.int buildCounterLegacyAbac = 0;
buildLegacyAbac() {
  var o = new api.LegacyAbac();
  buildCounterLegacyAbac++;
  if (buildCounterLegacyAbac < 3) {
    o.enabled = true;
  }
  buildCounterLegacyAbac--;
  return o;
}

checkLegacyAbac(api.LegacyAbac o) {
  buildCounterLegacyAbac++;
  if (buildCounterLegacyAbac < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterLegacyAbac--;
}

buildUnnamed4351() {
  var o = new core.List<api.Cluster>();
  o.add(buildCluster());
  o.add(buildCluster());
  return o;
}

checkUnnamed4351(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

buildUnnamed4352() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4352(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListClustersResponse = 0;
buildListClustersResponse() {
  var o = new api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed4351();
    o.missingZones = buildUnnamed4352();
  }
  buildCounterListClustersResponse--;
  return o;
}

checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed4351(o.clusters);
    checkUnnamed4352(o.missingZones);
  }
  buildCounterListClustersResponse--;
}

buildUnnamed4353() {
  var o = new core.List<api.NodePool>();
  o.add(buildNodePool());
  o.add(buildNodePool());
  return o;
}

checkUnnamed4353(core.List<api.NodePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodePool(o[0]);
  checkNodePool(o[1]);
}

core.int buildCounterListNodePoolsResponse = 0;
buildListNodePoolsResponse() {
  var o = new api.ListNodePoolsResponse();
  buildCounterListNodePoolsResponse++;
  if (buildCounterListNodePoolsResponse < 3) {
    o.nodePools = buildUnnamed4353();
  }
  buildCounterListNodePoolsResponse--;
  return o;
}

checkListNodePoolsResponse(api.ListNodePoolsResponse o) {
  buildCounterListNodePoolsResponse++;
  if (buildCounterListNodePoolsResponse < 3) {
    checkUnnamed4353(o.nodePools);
  }
  buildCounterListNodePoolsResponse--;
}

buildUnnamed4354() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4354(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4355() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed4355(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.missingZones = buildUnnamed4354();
    o.operations = buildUnnamed4355();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    checkUnnamed4354(o.missingZones);
    checkUnnamed4355(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed4356() {
  var o = new core.List<api.UsableSubnetwork>();
  o.add(buildUsableSubnetwork());
  o.add(buildUsableSubnetwork());
  return o;
}

checkUnnamed4356(core.List<api.UsableSubnetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsableSubnetwork(o[0]);
  checkUsableSubnetwork(o[1]);
}

core.int buildCounterListUsableSubnetworksResponse = 0;
buildListUsableSubnetworksResponse() {
  var o = new api.ListUsableSubnetworksResponse();
  buildCounterListUsableSubnetworksResponse++;
  if (buildCounterListUsableSubnetworksResponse < 3) {
    o.nextPageToken = "foo";
    o.subnetworks = buildUnnamed4356();
  }
  buildCounterListUsableSubnetworksResponse--;
  return o;
}

checkListUsableSubnetworksResponse(api.ListUsableSubnetworksResponse o) {
  buildCounterListUsableSubnetworksResponse++;
  if (buildCounterListUsableSubnetworksResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4356(o.subnetworks);
  }
  buildCounterListUsableSubnetworksResponse--;
}

core.int buildCounterMaintenancePolicy = 0;
buildMaintenancePolicy() {
  var o = new api.MaintenancePolicy();
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    o.resourceVersion = "foo";
    o.window = buildMaintenanceWindow();
  }
  buildCounterMaintenancePolicy--;
  return o;
}

checkMaintenancePolicy(api.MaintenancePolicy o) {
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    unittest.expect(o.resourceVersion, unittest.equals('foo'));
    checkMaintenanceWindow(o.window);
  }
  buildCounterMaintenancePolicy--;
}

buildUnnamed4357() {
  var o = new core.Map<core.String, api.TimeWindow>();
  o["x"] = buildTimeWindow();
  o["y"] = buildTimeWindow();
  return o;
}

checkUnnamed4357(core.Map<core.String, api.TimeWindow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeWindow(o["x"]);
  checkTimeWindow(o["y"]);
}

core.int buildCounterMaintenanceWindow = 0;
buildMaintenanceWindow() {
  var o = new api.MaintenanceWindow();
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    o.dailyMaintenanceWindow = buildDailyMaintenanceWindow();
    o.maintenanceExclusions = buildUnnamed4357();
    o.recurringWindow = buildRecurringTimeWindow();
  }
  buildCounterMaintenanceWindow--;
  return o;
}

checkMaintenanceWindow(api.MaintenanceWindow o) {
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    checkDailyMaintenanceWindow(o.dailyMaintenanceWindow);
    checkUnnamed4357(o.maintenanceExclusions);
    checkRecurringTimeWindow(o.recurringWindow);
  }
  buildCounterMaintenanceWindow--;
}

core.int buildCounterMasterAuth = 0;
buildMasterAuth() {
  var o = new api.MasterAuth();
  buildCounterMasterAuth++;
  if (buildCounterMasterAuth < 3) {
    o.clientCertificate = "foo";
    o.clientCertificateConfig = buildClientCertificateConfig();
    o.clientKey = "foo";
    o.clusterCaCertificate = "foo";
    o.password = "foo";
    o.username = "foo";
  }
  buildCounterMasterAuth--;
  return o;
}

checkMasterAuth(api.MasterAuth o) {
  buildCounterMasterAuth++;
  if (buildCounterMasterAuth < 3) {
    unittest.expect(o.clientCertificate, unittest.equals('foo'));
    checkClientCertificateConfig(o.clientCertificateConfig);
    unittest.expect(o.clientKey, unittest.equals('foo'));
    unittest.expect(o.clusterCaCertificate, unittest.equals('foo'));
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterMasterAuth--;
}

buildUnnamed4358() {
  var o = new core.List<api.CidrBlock>();
  o.add(buildCidrBlock());
  o.add(buildCidrBlock());
  return o;
}

checkUnnamed4358(core.List<api.CidrBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCidrBlock(o[0]);
  checkCidrBlock(o[1]);
}

core.int buildCounterMasterAuthorizedNetworksConfig = 0;
buildMasterAuthorizedNetworksConfig() {
  var o = new api.MasterAuthorizedNetworksConfig();
  buildCounterMasterAuthorizedNetworksConfig++;
  if (buildCounterMasterAuthorizedNetworksConfig < 3) {
    o.cidrBlocks = buildUnnamed4358();
    o.enabled = true;
  }
  buildCounterMasterAuthorizedNetworksConfig--;
  return o;
}

checkMasterAuthorizedNetworksConfig(api.MasterAuthorizedNetworksConfig o) {
  buildCounterMasterAuthorizedNetworksConfig++;
  if (buildCounterMasterAuthorizedNetworksConfig < 3) {
    checkUnnamed4358(o.cidrBlocks);
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterMasterAuthorizedNetworksConfig--;
}

core.int buildCounterMaxPodsConstraint = 0;
buildMaxPodsConstraint() {
  var o = new api.MaxPodsConstraint();
  buildCounterMaxPodsConstraint++;
  if (buildCounterMaxPodsConstraint < 3) {
    o.maxPodsPerNode = "foo";
  }
  buildCounterMaxPodsConstraint--;
  return o;
}

checkMaxPodsConstraint(api.MaxPodsConstraint o) {
  buildCounterMaxPodsConstraint++;
  if (buildCounterMaxPodsConstraint < 3) {
    unittest.expect(o.maxPodsPerNode, unittest.equals('foo'));
  }
  buildCounterMaxPodsConstraint--;
}

core.int buildCounterMetric = 0;
buildMetric() {
  var o = new api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.doubleValue = 42.0;
    o.intValue = "foo";
    o.name = "foo";
    o.stringValue = "foo";
  }
  buildCounterMetric--;
  return o;
}

checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    unittest.expect(o.doubleValue, unittest.equals(42.0));
    unittest.expect(o.intValue, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterMetric--;
}

core.int buildCounterNetworkConfig = 0;
buildNetworkConfig() {
  var o = new api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.defaultSnatStatus = buildDefaultSnatStatus();
    o.enableIntraNodeVisibility = true;
    o.network = "foo";
    o.subnetwork = "foo";
  }
  buildCounterNetworkConfig--;
  return o;
}

checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    checkDefaultSnatStatus(o.defaultSnatStatus);
    unittest.expect(o.enableIntraNodeVisibility, unittest.isTrue);
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
  }
  buildCounterNetworkConfig--;
}

core.int buildCounterNetworkPolicy = 0;
buildNetworkPolicy() {
  var o = new api.NetworkPolicy();
  buildCounterNetworkPolicy++;
  if (buildCounterNetworkPolicy < 3) {
    o.enabled = true;
    o.provider = "foo";
  }
  buildCounterNetworkPolicy--;
  return o;
}

checkNetworkPolicy(api.NetworkPolicy o) {
  buildCounterNetworkPolicy++;
  if (buildCounterNetworkPolicy < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.provider, unittest.equals('foo'));
  }
  buildCounterNetworkPolicy--;
}

core.int buildCounterNetworkPolicyConfig = 0;
buildNetworkPolicyConfig() {
  var o = new api.NetworkPolicyConfig();
  buildCounterNetworkPolicyConfig++;
  if (buildCounterNetworkPolicyConfig < 3) {
    o.disabled = true;
  }
  buildCounterNetworkPolicyConfig--;
  return o;
}

checkNetworkPolicyConfig(api.NetworkPolicyConfig o) {
  buildCounterNetworkPolicyConfig++;
  if (buildCounterNetworkPolicyConfig < 3) {
    unittest.expect(o.disabled, unittest.isTrue);
  }
  buildCounterNetworkPolicyConfig--;
}

buildUnnamed4359() {
  var o = new core.List<api.AcceleratorConfig>();
  o.add(buildAcceleratorConfig());
  o.add(buildAcceleratorConfig());
  return o;
}

checkUnnamed4359(core.List<api.AcceleratorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorConfig(o[0]);
  checkAcceleratorConfig(o[1]);
}

buildUnnamed4360() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4360(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed4361() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4361(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed4362() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4362(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4363() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4363(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4364() {
  var o = new core.List<api.NodeTaint>();
  o.add(buildNodeTaint());
  o.add(buildNodeTaint());
  return o;
}

checkUnnamed4364(core.List<api.NodeTaint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeTaint(o[0]);
  checkNodeTaint(o[1]);
}

core.int buildCounterNodeConfig = 0;
buildNodeConfig() {
  var o = new api.NodeConfig();
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    o.accelerators = buildUnnamed4359();
    o.bootDiskKmsKey = "foo";
    o.diskSizeGb = 42;
    o.diskType = "foo";
    o.imageType = "foo";
    o.labels = buildUnnamed4360();
    o.localSsdCount = 42;
    o.machineType = "foo";
    o.metadata = buildUnnamed4361();
    o.minCpuPlatform = "foo";
    o.nodeGroup = "foo";
    o.oauthScopes = buildUnnamed4362();
    o.preemptible = true;
    o.reservationAffinity = buildReservationAffinity();
    o.sandboxConfig = buildSandboxConfig();
    o.serviceAccount = "foo";
    o.shieldedInstanceConfig = buildShieldedInstanceConfig();
    o.tags = buildUnnamed4363();
    o.taints = buildUnnamed4364();
    o.workloadMetadataConfig = buildWorkloadMetadataConfig();
  }
  buildCounterNodeConfig--;
  return o;
}

checkNodeConfig(api.NodeConfig o) {
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    checkUnnamed4359(o.accelerators);
    unittest.expect(o.bootDiskKmsKey, unittest.equals('foo'));
    unittest.expect(o.diskSizeGb, unittest.equals(42));
    unittest.expect(o.diskType, unittest.equals('foo'));
    unittest.expect(o.imageType, unittest.equals('foo'));
    checkUnnamed4360(o.labels);
    unittest.expect(o.localSsdCount, unittest.equals(42));
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkUnnamed4361(o.metadata);
    unittest.expect(o.minCpuPlatform, unittest.equals('foo'));
    unittest.expect(o.nodeGroup, unittest.equals('foo'));
    checkUnnamed4362(o.oauthScopes);
    unittest.expect(o.preemptible, unittest.isTrue);
    checkReservationAffinity(o.reservationAffinity);
    checkSandboxConfig(o.sandboxConfig);
    unittest.expect(o.serviceAccount, unittest.equals('foo'));
    checkShieldedInstanceConfig(o.shieldedInstanceConfig);
    checkUnnamed4363(o.tags);
    checkUnnamed4364(o.taints);
    checkWorkloadMetadataConfig(o.workloadMetadataConfig);
  }
  buildCounterNodeConfig--;
}

core.int buildCounterNodeManagement = 0;
buildNodeManagement() {
  var o = new api.NodeManagement();
  buildCounterNodeManagement++;
  if (buildCounterNodeManagement < 3) {
    o.autoRepair = true;
    o.autoUpgrade = true;
    o.upgradeOptions = buildAutoUpgradeOptions();
  }
  buildCounterNodeManagement--;
  return o;
}

checkNodeManagement(api.NodeManagement o) {
  buildCounterNodeManagement++;
  if (buildCounterNodeManagement < 3) {
    unittest.expect(o.autoRepair, unittest.isTrue);
    unittest.expect(o.autoUpgrade, unittest.isTrue);
    checkAutoUpgradeOptions(o.upgradeOptions);
  }
  buildCounterNodeManagement--;
}

buildUnnamed4365() {
  var o = new core.List<api.StatusCondition>();
  o.add(buildStatusCondition());
  o.add(buildStatusCondition());
  return o;
}

checkUnnamed4365(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
}

buildUnnamed4366() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4366(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4367() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4367(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNodePool = 0;
buildNodePool() {
  var o = new api.NodePool();
  buildCounterNodePool++;
  if (buildCounterNodePool < 3) {
    o.autoscaling = buildNodePoolAutoscaling();
    o.conditions = buildUnnamed4365();
    o.config = buildNodeConfig();
    o.initialNodeCount = 42;
    o.instanceGroupUrls = buildUnnamed4366();
    o.locations = buildUnnamed4367();
    o.management = buildNodeManagement();
    o.maxPodsConstraint = buildMaxPodsConstraint();
    o.name = "foo";
    o.podIpv4CidrSize = 42;
    o.selfLink = "foo";
    o.status = "foo";
    o.statusMessage = "foo";
    o.upgradeSettings = buildUpgradeSettings();
    o.version = "foo";
  }
  buildCounterNodePool--;
  return o;
}

checkNodePool(api.NodePool o) {
  buildCounterNodePool++;
  if (buildCounterNodePool < 3) {
    checkNodePoolAutoscaling(o.autoscaling);
    checkUnnamed4365(o.conditions);
    checkNodeConfig(o.config);
    unittest.expect(o.initialNodeCount, unittest.equals(42));
    checkUnnamed4366(o.instanceGroupUrls);
    checkUnnamed4367(o.locations);
    checkNodeManagement(o.management);
    checkMaxPodsConstraint(o.maxPodsConstraint);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.podIpv4CidrSize, unittest.equals(42));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    checkUpgradeSettings(o.upgradeSettings);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterNodePool--;
}

core.int buildCounterNodePoolAutoscaling = 0;
buildNodePoolAutoscaling() {
  var o = new api.NodePoolAutoscaling();
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

checkNodePoolAutoscaling(api.NodePoolAutoscaling o) {
  buildCounterNodePoolAutoscaling++;
  if (buildCounterNodePoolAutoscaling < 3) {
    unittest.expect(o.autoprovisioned, unittest.isTrue);
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.maxNodeCount, unittest.equals(42));
    unittest.expect(o.minNodeCount, unittest.equals(42));
  }
  buildCounterNodePoolAutoscaling--;
}

core.int buildCounterNodeTaint = 0;
buildNodeTaint() {
  var o = new api.NodeTaint();
  buildCounterNodeTaint++;
  if (buildCounterNodeTaint < 3) {
    o.effect = "foo";
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterNodeTaint--;
  return o;
}

checkNodeTaint(api.NodeTaint o) {
  buildCounterNodeTaint++;
  if (buildCounterNodeTaint < 3) {
    unittest.expect(o.effect, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterNodeTaint--;
}

buildUnnamed4368() {
  var o = new core.List<api.StatusCondition>();
  o.add(buildStatusCondition());
  o.add(buildStatusCondition());
  return o;
}

checkUnnamed4368(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
}

buildUnnamed4369() {
  var o = new core.List<api.StatusCondition>();
  o.add(buildStatusCondition());
  o.add(buildStatusCondition());
  return o;
}

checkUnnamed4369(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.clusterConditions = buildUnnamed4368();
    o.detail = "foo";
    o.endTime = "foo";
    o.location = "foo";
    o.name = "foo";
    o.nodepoolConditions = buildUnnamed4369();
    o.operationType = "foo";
    o.progress = buildOperationProgress();
    o.selfLink = "foo";
    o.startTime = "foo";
    o.status = "foo";
    o.statusMessage = "foo";
    o.targetLink = "foo";
    o.zone = "foo";
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    checkUnnamed4368(o.clusterConditions);
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4369(o.nodepoolConditions);
    unittest.expect(o.operationType, unittest.equals('foo'));
    checkOperationProgress(o.progress);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.targetLink, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterOperation--;
}

buildUnnamed4370() {
  var o = new core.List<api.Metric>();
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

checkUnnamed4370(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

buildUnnamed4371() {
  var o = new core.List<api.OperationProgress>();
  o.add(buildOperationProgress());
  o.add(buildOperationProgress());
  return o;
}

checkUnnamed4371(core.List<api.OperationProgress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationProgress(o[0]);
  checkOperationProgress(o[1]);
}

core.int buildCounterOperationProgress = 0;
buildOperationProgress() {
  var o = new api.OperationProgress();
  buildCounterOperationProgress++;
  if (buildCounterOperationProgress < 3) {
    o.metrics = buildUnnamed4370();
    o.name = "foo";
    o.stages = buildUnnamed4371();
    o.status = "foo";
  }
  buildCounterOperationProgress--;
  return o;
}

checkOperationProgress(api.OperationProgress o) {
  buildCounterOperationProgress++;
  if (buildCounterOperationProgress < 3) {
    checkUnnamed4370(o.metrics);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4371(o.stages);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterOperationProgress--;
}

core.int buildCounterPrivateClusterConfig = 0;
buildPrivateClusterConfig() {
  var o = new api.PrivateClusterConfig();
  buildCounterPrivateClusterConfig++;
  if (buildCounterPrivateClusterConfig < 3) {
    o.enablePrivateEndpoint = true;
    o.enablePrivateNodes = true;
    o.masterGlobalAccessConfig = buildPrivateClusterMasterGlobalAccessConfig();
    o.masterIpv4CidrBlock = "foo";
    o.peeringName = "foo";
    o.privateEndpoint = "foo";
    o.publicEndpoint = "foo";
  }
  buildCounterPrivateClusterConfig--;
  return o;
}

checkPrivateClusterConfig(api.PrivateClusterConfig o) {
  buildCounterPrivateClusterConfig++;
  if (buildCounterPrivateClusterConfig < 3) {
    unittest.expect(o.enablePrivateEndpoint, unittest.isTrue);
    unittest.expect(o.enablePrivateNodes, unittest.isTrue);
    checkPrivateClusterMasterGlobalAccessConfig(o.masterGlobalAccessConfig);
    unittest.expect(o.masterIpv4CidrBlock, unittest.equals('foo'));
    unittest.expect(o.peeringName, unittest.equals('foo'));
    unittest.expect(o.privateEndpoint, unittest.equals('foo'));
    unittest.expect(o.publicEndpoint, unittest.equals('foo'));
  }
  buildCounterPrivateClusterConfig--;
}

core.int buildCounterPrivateClusterMasterGlobalAccessConfig = 0;
buildPrivateClusterMasterGlobalAccessConfig() {
  var o = new api.PrivateClusterMasterGlobalAccessConfig();
  buildCounterPrivateClusterMasterGlobalAccessConfig++;
  if (buildCounterPrivateClusterMasterGlobalAccessConfig < 3) {
    o.enabled = true;
  }
  buildCounterPrivateClusterMasterGlobalAccessConfig--;
  return o;
}

checkPrivateClusterMasterGlobalAccessConfig(
    api.PrivateClusterMasterGlobalAccessConfig o) {
  buildCounterPrivateClusterMasterGlobalAccessConfig++;
  if (buildCounterPrivateClusterMasterGlobalAccessConfig < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterPrivateClusterMasterGlobalAccessConfig--;
}

core.int buildCounterRecurringTimeWindow = 0;
buildRecurringTimeWindow() {
  var o = new api.RecurringTimeWindow();
  buildCounterRecurringTimeWindow++;
  if (buildCounterRecurringTimeWindow < 3) {
    o.recurrence = "foo";
    o.window = buildTimeWindow();
  }
  buildCounterRecurringTimeWindow--;
  return o;
}

checkRecurringTimeWindow(api.RecurringTimeWindow o) {
  buildCounterRecurringTimeWindow++;
  if (buildCounterRecurringTimeWindow < 3) {
    unittest.expect(o.recurrence, unittest.equals('foo'));
    checkTimeWindow(o.window);
  }
  buildCounterRecurringTimeWindow--;
}

core.int buildCounterReleaseChannel = 0;
buildReleaseChannel() {
  var o = new api.ReleaseChannel();
  buildCounterReleaseChannel++;
  if (buildCounterReleaseChannel < 3) {
    o.channel = "foo";
  }
  buildCounterReleaseChannel--;
  return o;
}

checkReleaseChannel(api.ReleaseChannel o) {
  buildCounterReleaseChannel++;
  if (buildCounterReleaseChannel < 3) {
    unittest.expect(o.channel, unittest.equals('foo'));
  }
  buildCounterReleaseChannel--;
}

buildUnnamed4372() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4372(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReleaseChannelConfig = 0;
buildReleaseChannelConfig() {
  var o = new api.ReleaseChannelConfig();
  buildCounterReleaseChannelConfig++;
  if (buildCounterReleaseChannelConfig < 3) {
    o.channel = "foo";
    o.defaultVersion = "foo";
    o.validVersions = buildUnnamed4372();
  }
  buildCounterReleaseChannelConfig--;
  return o;
}

checkReleaseChannelConfig(api.ReleaseChannelConfig o) {
  buildCounterReleaseChannelConfig++;
  if (buildCounterReleaseChannelConfig < 3) {
    unittest.expect(o.channel, unittest.equals('foo'));
    unittest.expect(o.defaultVersion, unittest.equals('foo'));
    checkUnnamed4372(o.validVersions);
  }
  buildCounterReleaseChannelConfig--;
}

buildUnnamed4373() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4373(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReservationAffinity = 0;
buildReservationAffinity() {
  var o = new api.ReservationAffinity();
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    o.consumeReservationType = "foo";
    o.key = "foo";
    o.values = buildUnnamed4373();
  }
  buildCounterReservationAffinity--;
  return o;
}

checkReservationAffinity(api.ReservationAffinity o) {
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    unittest.expect(o.consumeReservationType, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed4373(o.values);
  }
  buildCounterReservationAffinity--;
}

core.int buildCounterResourceLimit = 0;
buildResourceLimit() {
  var o = new api.ResourceLimit();
  buildCounterResourceLimit++;
  if (buildCounterResourceLimit < 3) {
    o.maximum = "foo";
    o.minimum = "foo";
    o.resourceType = "foo";
  }
  buildCounterResourceLimit--;
  return o;
}

checkResourceLimit(api.ResourceLimit o) {
  buildCounterResourceLimit++;
  if (buildCounterResourceLimit < 3) {
    unittest.expect(o.maximum, unittest.equals('foo'));
    unittest.expect(o.minimum, unittest.equals('foo'));
    unittest.expect(o.resourceType, unittest.equals('foo'));
  }
  buildCounterResourceLimit--;
}

core.int buildCounterResourceUsageExportConfig = 0;
buildResourceUsageExportConfig() {
  var o = new api.ResourceUsageExportConfig();
  buildCounterResourceUsageExportConfig++;
  if (buildCounterResourceUsageExportConfig < 3) {
    o.bigqueryDestination = buildBigQueryDestination();
    o.consumptionMeteringConfig = buildConsumptionMeteringConfig();
    o.enableNetworkEgressMetering = true;
  }
  buildCounterResourceUsageExportConfig--;
  return o;
}

checkResourceUsageExportConfig(api.ResourceUsageExportConfig o) {
  buildCounterResourceUsageExportConfig++;
  if (buildCounterResourceUsageExportConfig < 3) {
    checkBigQueryDestination(o.bigqueryDestination);
    checkConsumptionMeteringConfig(o.consumptionMeteringConfig);
    unittest.expect(o.enableNetworkEgressMetering, unittest.isTrue);
  }
  buildCounterResourceUsageExportConfig--;
}

core.int buildCounterRollbackNodePoolUpgradeRequest = 0;
buildRollbackNodePoolUpgradeRequest() {
  var o = new api.RollbackNodePoolUpgradeRequest();
  buildCounterRollbackNodePoolUpgradeRequest++;
  if (buildCounterRollbackNodePoolUpgradeRequest < 3) {
    o.clusterId = "foo";
    o.name = "foo";
    o.nodePoolId = "foo";
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterRollbackNodePoolUpgradeRequest--;
  return o;
}

checkRollbackNodePoolUpgradeRequest(api.RollbackNodePoolUpgradeRequest o) {
  buildCounterRollbackNodePoolUpgradeRequest++;
  if (buildCounterRollbackNodePoolUpgradeRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nodePoolId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterRollbackNodePoolUpgradeRequest--;
}

core.int buildCounterSandboxConfig = 0;
buildSandboxConfig() {
  var o = new api.SandboxConfig();
  buildCounterSandboxConfig++;
  if (buildCounterSandboxConfig < 3) {
    o.type = "foo";
  }
  buildCounterSandboxConfig--;
  return o;
}

checkSandboxConfig(api.SandboxConfig o) {
  buildCounterSandboxConfig++;
  if (buildCounterSandboxConfig < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterSandboxConfig--;
}

buildUnnamed4374() {
  var o = new core.List<api.ReleaseChannelConfig>();
  o.add(buildReleaseChannelConfig());
  o.add(buildReleaseChannelConfig());
  return o;
}

checkUnnamed4374(core.List<api.ReleaseChannelConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReleaseChannelConfig(o[0]);
  checkReleaseChannelConfig(o[1]);
}

buildUnnamed4375() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4375(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4376() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4376(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4377() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4377(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterServerConfig = 0;
buildServerConfig() {
  var o = new api.ServerConfig();
  buildCounterServerConfig++;
  if (buildCounterServerConfig < 3) {
    o.channels = buildUnnamed4374();
    o.defaultClusterVersion = "foo";
    o.defaultImageType = "foo";
    o.validImageTypes = buildUnnamed4375();
    o.validMasterVersions = buildUnnamed4376();
    o.validNodeVersions = buildUnnamed4377();
  }
  buildCounterServerConfig--;
  return o;
}

checkServerConfig(api.ServerConfig o) {
  buildCounterServerConfig++;
  if (buildCounterServerConfig < 3) {
    checkUnnamed4374(o.channels);
    unittest.expect(o.defaultClusterVersion, unittest.equals('foo'));
    unittest.expect(o.defaultImageType, unittest.equals('foo'));
    checkUnnamed4375(o.validImageTypes);
    checkUnnamed4376(o.validMasterVersions);
    checkUnnamed4377(o.validNodeVersions);
  }
  buildCounterServerConfig--;
}

core.int buildCounterSetAddonsConfigRequest = 0;
buildSetAddonsConfigRequest() {
  var o = new api.SetAddonsConfigRequest();
  buildCounterSetAddonsConfigRequest++;
  if (buildCounterSetAddonsConfigRequest < 3) {
    o.addonsConfig = buildAddonsConfig();
    o.clusterId = "foo";
    o.name = "foo";
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterSetAddonsConfigRequest--;
  return o;
}

checkSetAddonsConfigRequest(api.SetAddonsConfigRequest o) {
  buildCounterSetAddonsConfigRequest++;
  if (buildCounterSetAddonsConfigRequest < 3) {
    checkAddonsConfig(o.addonsConfig);
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetAddonsConfigRequest--;
}

buildUnnamed4378() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4378(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterSetLabelsRequest = 0;
buildSetLabelsRequest() {
  var o = new api.SetLabelsRequest();
  buildCounterSetLabelsRequest++;
  if (buildCounterSetLabelsRequest < 3) {
    o.clusterId = "foo";
    o.labelFingerprint = "foo";
    o.name = "foo";
    o.projectId = "foo";
    o.resourceLabels = buildUnnamed4378();
    o.zone = "foo";
  }
  buildCounterSetLabelsRequest--;
  return o;
}

checkSetLabelsRequest(api.SetLabelsRequest o) {
  buildCounterSetLabelsRequest++;
  if (buildCounterSetLabelsRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.labelFingerprint, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUnnamed4378(o.resourceLabels);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetLabelsRequest--;
}

core.int buildCounterSetLegacyAbacRequest = 0;
buildSetLegacyAbacRequest() {
  var o = new api.SetLegacyAbacRequest();
  buildCounterSetLegacyAbacRequest++;
  if (buildCounterSetLegacyAbacRequest < 3) {
    o.clusterId = "foo";
    o.enabled = true;
    o.name = "foo";
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterSetLegacyAbacRequest--;
  return o;
}

checkSetLegacyAbacRequest(api.SetLegacyAbacRequest o) {
  buildCounterSetLegacyAbacRequest++;
  if (buildCounterSetLegacyAbacRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetLegacyAbacRequest--;
}

buildUnnamed4379() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4379(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSetLocationsRequest = 0;
buildSetLocationsRequest() {
  var o = new api.SetLocationsRequest();
  buildCounterSetLocationsRequest++;
  if (buildCounterSetLocationsRequest < 3) {
    o.clusterId = "foo";
    o.locations = buildUnnamed4379();
    o.name = "foo";
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterSetLocationsRequest--;
  return o;
}

checkSetLocationsRequest(api.SetLocationsRequest o) {
  buildCounterSetLocationsRequest++;
  if (buildCounterSetLocationsRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    checkUnnamed4379(o.locations);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetLocationsRequest--;
}

core.int buildCounterSetLoggingServiceRequest = 0;
buildSetLoggingServiceRequest() {
  var o = new api.SetLoggingServiceRequest();
  buildCounterSetLoggingServiceRequest++;
  if (buildCounterSetLoggingServiceRequest < 3) {
    o.clusterId = "foo";
    o.loggingService = "foo";
    o.name = "foo";
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterSetLoggingServiceRequest--;
  return o;
}

checkSetLoggingServiceRequest(api.SetLoggingServiceRequest o) {
  buildCounterSetLoggingServiceRequest++;
  if (buildCounterSetLoggingServiceRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.loggingService, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetLoggingServiceRequest--;
}

core.int buildCounterSetMaintenancePolicyRequest = 0;
buildSetMaintenancePolicyRequest() {
  var o = new api.SetMaintenancePolicyRequest();
  buildCounterSetMaintenancePolicyRequest++;
  if (buildCounterSetMaintenancePolicyRequest < 3) {
    o.clusterId = "foo";
    o.maintenancePolicy = buildMaintenancePolicy();
    o.name = "foo";
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterSetMaintenancePolicyRequest--;
  return o;
}

checkSetMaintenancePolicyRequest(api.SetMaintenancePolicyRequest o) {
  buildCounterSetMaintenancePolicyRequest++;
  if (buildCounterSetMaintenancePolicyRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    checkMaintenancePolicy(o.maintenancePolicy);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetMaintenancePolicyRequest--;
}

core.int buildCounterSetMasterAuthRequest = 0;
buildSetMasterAuthRequest() {
  var o = new api.SetMasterAuthRequest();
  buildCounterSetMasterAuthRequest++;
  if (buildCounterSetMasterAuthRequest < 3) {
    o.action = "foo";
    o.clusterId = "foo";
    o.name = "foo";
    o.projectId = "foo";
    o.update = buildMasterAuth();
    o.zone = "foo";
  }
  buildCounterSetMasterAuthRequest--;
  return o;
}

checkSetMasterAuthRequest(api.SetMasterAuthRequest o) {
  buildCounterSetMasterAuthRequest++;
  if (buildCounterSetMasterAuthRequest < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkMasterAuth(o.update);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetMasterAuthRequest--;
}

core.int buildCounterSetMonitoringServiceRequest = 0;
buildSetMonitoringServiceRequest() {
  var o = new api.SetMonitoringServiceRequest();
  buildCounterSetMonitoringServiceRequest++;
  if (buildCounterSetMonitoringServiceRequest < 3) {
    o.clusterId = "foo";
    o.monitoringService = "foo";
    o.name = "foo";
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterSetMonitoringServiceRequest--;
  return o;
}

checkSetMonitoringServiceRequest(api.SetMonitoringServiceRequest o) {
  buildCounterSetMonitoringServiceRequest++;
  if (buildCounterSetMonitoringServiceRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.monitoringService, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetMonitoringServiceRequest--;
}

core.int buildCounterSetNetworkPolicyRequest = 0;
buildSetNetworkPolicyRequest() {
  var o = new api.SetNetworkPolicyRequest();
  buildCounterSetNetworkPolicyRequest++;
  if (buildCounterSetNetworkPolicyRequest < 3) {
    o.clusterId = "foo";
    o.name = "foo";
    o.networkPolicy = buildNetworkPolicy();
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterSetNetworkPolicyRequest--;
  return o;
}

checkSetNetworkPolicyRequest(api.SetNetworkPolicyRequest o) {
  buildCounterSetNetworkPolicyRequest++;
  if (buildCounterSetNetworkPolicyRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkNetworkPolicy(o.networkPolicy);
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetNetworkPolicyRequest--;
}

core.int buildCounterSetNodePoolAutoscalingRequest = 0;
buildSetNodePoolAutoscalingRequest() {
  var o = new api.SetNodePoolAutoscalingRequest();
  buildCounterSetNodePoolAutoscalingRequest++;
  if (buildCounterSetNodePoolAutoscalingRequest < 3) {
    o.autoscaling = buildNodePoolAutoscaling();
    o.clusterId = "foo";
    o.name = "foo";
    o.nodePoolId = "foo";
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterSetNodePoolAutoscalingRequest--;
  return o;
}

checkSetNodePoolAutoscalingRequest(api.SetNodePoolAutoscalingRequest o) {
  buildCounterSetNodePoolAutoscalingRequest++;
  if (buildCounterSetNodePoolAutoscalingRequest < 3) {
    checkNodePoolAutoscaling(o.autoscaling);
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nodePoolId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetNodePoolAutoscalingRequest--;
}

core.int buildCounterSetNodePoolManagementRequest = 0;
buildSetNodePoolManagementRequest() {
  var o = new api.SetNodePoolManagementRequest();
  buildCounterSetNodePoolManagementRequest++;
  if (buildCounterSetNodePoolManagementRequest < 3) {
    o.clusterId = "foo";
    o.management = buildNodeManagement();
    o.name = "foo";
    o.nodePoolId = "foo";
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterSetNodePoolManagementRequest--;
  return o;
}

checkSetNodePoolManagementRequest(api.SetNodePoolManagementRequest o) {
  buildCounterSetNodePoolManagementRequest++;
  if (buildCounterSetNodePoolManagementRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    checkNodeManagement(o.management);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nodePoolId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetNodePoolManagementRequest--;
}

core.int buildCounterSetNodePoolSizeRequest = 0;
buildSetNodePoolSizeRequest() {
  var o = new api.SetNodePoolSizeRequest();
  buildCounterSetNodePoolSizeRequest++;
  if (buildCounterSetNodePoolSizeRequest < 3) {
    o.clusterId = "foo";
    o.name = "foo";
    o.nodeCount = 42;
    o.nodePoolId = "foo";
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterSetNodePoolSizeRequest--;
  return o;
}

checkSetNodePoolSizeRequest(api.SetNodePoolSizeRequest o) {
  buildCounterSetNodePoolSizeRequest++;
  if (buildCounterSetNodePoolSizeRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nodeCount, unittest.equals(42));
    unittest.expect(o.nodePoolId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetNodePoolSizeRequest--;
}

core.int buildCounterShieldedInstanceConfig = 0;
buildShieldedInstanceConfig() {
  var o = new api.ShieldedInstanceConfig();
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    o.enableIntegrityMonitoring = true;
    o.enableSecureBoot = true;
  }
  buildCounterShieldedInstanceConfig--;
  return o;
}

checkShieldedInstanceConfig(api.ShieldedInstanceConfig o) {
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    unittest.expect(o.enableIntegrityMonitoring, unittest.isTrue);
    unittest.expect(o.enableSecureBoot, unittest.isTrue);
  }
  buildCounterShieldedInstanceConfig--;
}

core.int buildCounterShieldedNodes = 0;
buildShieldedNodes() {
  var o = new api.ShieldedNodes();
  buildCounterShieldedNodes++;
  if (buildCounterShieldedNodes < 3) {
    o.enabled = true;
  }
  buildCounterShieldedNodes--;
  return o;
}

checkShieldedNodes(api.ShieldedNodes o) {
  buildCounterShieldedNodes++;
  if (buildCounterShieldedNodes < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterShieldedNodes--;
}

core.int buildCounterStartIPRotationRequest = 0;
buildStartIPRotationRequest() {
  var o = new api.StartIPRotationRequest();
  buildCounterStartIPRotationRequest++;
  if (buildCounterStartIPRotationRequest < 3) {
    o.clusterId = "foo";
    o.name = "foo";
    o.projectId = "foo";
    o.rotateCredentials = true;
    o.zone = "foo";
  }
  buildCounterStartIPRotationRequest--;
  return o;
}

checkStartIPRotationRequest(api.StartIPRotationRequest o) {
  buildCounterStartIPRotationRequest++;
  if (buildCounterStartIPRotationRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.rotateCredentials, unittest.isTrue);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterStartIPRotationRequest--;
}

core.int buildCounterStatusCondition = 0;
buildStatusCondition() {
  var o = new api.StatusCondition();
  buildCounterStatusCondition++;
  if (buildCounterStatusCondition < 3) {
    o.code = "foo";
    o.message = "foo";
  }
  buildCounterStatusCondition--;
  return o;
}

checkStatusCondition(api.StatusCondition o) {
  buildCounterStatusCondition++;
  if (buildCounterStatusCondition < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatusCondition--;
}

core.int buildCounterTimeWindow = 0;
buildTimeWindow() {
  var o = new api.TimeWindow();
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
  }
  buildCounterTimeWindow--;
  return o;
}

checkTimeWindow(api.TimeWindow o) {
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimeWindow--;
}

core.int buildCounterUpdateClusterRequest = 0;
buildUpdateClusterRequest() {
  var o = new api.UpdateClusterRequest();
  buildCounterUpdateClusterRequest++;
  if (buildCounterUpdateClusterRequest < 3) {
    o.clusterId = "foo";
    o.name = "foo";
    o.projectId = "foo";
    o.update = buildClusterUpdate();
    o.zone = "foo";
  }
  buildCounterUpdateClusterRequest--;
  return o;
}

checkUpdateClusterRequest(api.UpdateClusterRequest o) {
  buildCounterUpdateClusterRequest++;
  if (buildCounterUpdateClusterRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkClusterUpdate(o.update);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterUpdateClusterRequest--;
}

core.int buildCounterUpdateMasterRequest = 0;
buildUpdateMasterRequest() {
  var o = new api.UpdateMasterRequest();
  buildCounterUpdateMasterRequest++;
  if (buildCounterUpdateMasterRequest < 3) {
    o.clusterId = "foo";
    o.masterVersion = "foo";
    o.name = "foo";
    o.projectId = "foo";
    o.zone = "foo";
  }
  buildCounterUpdateMasterRequest--;
  return o;
}

checkUpdateMasterRequest(api.UpdateMasterRequest o) {
  buildCounterUpdateMasterRequest++;
  if (buildCounterUpdateMasterRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.masterVersion, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterUpdateMasterRequest--;
}

buildUnnamed4380() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4380(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUpdateNodePoolRequest = 0;
buildUpdateNodePoolRequest() {
  var o = new api.UpdateNodePoolRequest();
  buildCounterUpdateNodePoolRequest++;
  if (buildCounterUpdateNodePoolRequest < 3) {
    o.clusterId = "foo";
    o.imageType = "foo";
    o.locations = buildUnnamed4380();
    o.name = "foo";
    o.nodePoolId = "foo";
    o.nodeVersion = "foo";
    o.projectId = "foo";
    o.upgradeSettings = buildUpgradeSettings();
    o.workloadMetadataConfig = buildWorkloadMetadataConfig();
    o.zone = "foo";
  }
  buildCounterUpdateNodePoolRequest--;
  return o;
}

checkUpdateNodePoolRequest(api.UpdateNodePoolRequest o) {
  buildCounterUpdateNodePoolRequest++;
  if (buildCounterUpdateNodePoolRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.imageType, unittest.equals('foo'));
    checkUnnamed4380(o.locations);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nodePoolId, unittest.equals('foo'));
    unittest.expect(o.nodeVersion, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUpgradeSettings(o.upgradeSettings);
    checkWorkloadMetadataConfig(o.workloadMetadataConfig);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterUpdateNodePoolRequest--;
}

core.int buildCounterUpgradeEvent = 0;
buildUpgradeEvent() {
  var o = new api.UpgradeEvent();
  buildCounterUpgradeEvent++;
  if (buildCounterUpgradeEvent < 3) {
    o.currentVersion = "foo";
    o.operation = "foo";
    o.operationStartTime = "foo";
    o.resource = "foo";
    o.resourceType = "foo";
    o.targetVersion = "foo";
  }
  buildCounterUpgradeEvent--;
  return o;
}

checkUpgradeEvent(api.UpgradeEvent o) {
  buildCounterUpgradeEvent++;
  if (buildCounterUpgradeEvent < 3) {
    unittest.expect(o.currentVersion, unittest.equals('foo'));
    unittest.expect(o.operation, unittest.equals('foo'));
    unittest.expect(o.operationStartTime, unittest.equals('foo'));
    unittest.expect(o.resource, unittest.equals('foo'));
    unittest.expect(o.resourceType, unittest.equals('foo'));
    unittest.expect(o.targetVersion, unittest.equals('foo'));
  }
  buildCounterUpgradeEvent--;
}

core.int buildCounterUpgradeSettings = 0;
buildUpgradeSettings() {
  var o = new api.UpgradeSettings();
  buildCounterUpgradeSettings++;
  if (buildCounterUpgradeSettings < 3) {
    o.maxSurge = 42;
    o.maxUnavailable = 42;
  }
  buildCounterUpgradeSettings--;
  return o;
}

checkUpgradeSettings(api.UpgradeSettings o) {
  buildCounterUpgradeSettings++;
  if (buildCounterUpgradeSettings < 3) {
    unittest.expect(o.maxSurge, unittest.equals(42));
    unittest.expect(o.maxUnavailable, unittest.equals(42));
  }
  buildCounterUpgradeSettings--;
}

buildUnnamed4381() {
  var o = new core.List<api.UsableSubnetworkSecondaryRange>();
  o.add(buildUsableSubnetworkSecondaryRange());
  o.add(buildUsableSubnetworkSecondaryRange());
  return o;
}

checkUnnamed4381(core.List<api.UsableSubnetworkSecondaryRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsableSubnetworkSecondaryRange(o[0]);
  checkUsableSubnetworkSecondaryRange(o[1]);
}

core.int buildCounterUsableSubnetwork = 0;
buildUsableSubnetwork() {
  var o = new api.UsableSubnetwork();
  buildCounterUsableSubnetwork++;
  if (buildCounterUsableSubnetwork < 3) {
    o.ipCidrRange = "foo";
    o.network = "foo";
    o.secondaryIpRanges = buildUnnamed4381();
    o.statusMessage = "foo";
    o.subnetwork = "foo";
  }
  buildCounterUsableSubnetwork--;
  return o;
}

checkUsableSubnetwork(api.UsableSubnetwork o) {
  buildCounterUsableSubnetwork++;
  if (buildCounterUsableSubnetwork < 3) {
    unittest.expect(o.ipCidrRange, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    checkUnnamed4381(o.secondaryIpRanges);
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
  }
  buildCounterUsableSubnetwork--;
}

core.int buildCounterUsableSubnetworkSecondaryRange = 0;
buildUsableSubnetworkSecondaryRange() {
  var o = new api.UsableSubnetworkSecondaryRange();
  buildCounterUsableSubnetworkSecondaryRange++;
  if (buildCounterUsableSubnetworkSecondaryRange < 3) {
    o.ipCidrRange = "foo";
    o.rangeName = "foo";
    o.status = "foo";
  }
  buildCounterUsableSubnetworkSecondaryRange--;
  return o;
}

checkUsableSubnetworkSecondaryRange(api.UsableSubnetworkSecondaryRange o) {
  buildCounterUsableSubnetworkSecondaryRange++;
  if (buildCounterUsableSubnetworkSecondaryRange < 3) {
    unittest.expect(o.ipCidrRange, unittest.equals('foo'));
    unittest.expect(o.rangeName, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterUsableSubnetworkSecondaryRange--;
}

core.int buildCounterVerticalPodAutoscaling = 0;
buildVerticalPodAutoscaling() {
  var o = new api.VerticalPodAutoscaling();
  buildCounterVerticalPodAutoscaling++;
  if (buildCounterVerticalPodAutoscaling < 3) {
    o.enabled = true;
  }
  buildCounterVerticalPodAutoscaling--;
  return o;
}

checkVerticalPodAutoscaling(api.VerticalPodAutoscaling o) {
  buildCounterVerticalPodAutoscaling++;
  if (buildCounterVerticalPodAutoscaling < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterVerticalPodAutoscaling--;
}

core.int buildCounterWorkloadIdentityConfig = 0;
buildWorkloadIdentityConfig() {
  var o = new api.WorkloadIdentityConfig();
  buildCounterWorkloadIdentityConfig++;
  if (buildCounterWorkloadIdentityConfig < 3) {
    o.workloadPool = "foo";
  }
  buildCounterWorkloadIdentityConfig--;
  return o;
}

checkWorkloadIdentityConfig(api.WorkloadIdentityConfig o) {
  buildCounterWorkloadIdentityConfig++;
  if (buildCounterWorkloadIdentityConfig < 3) {
    unittest.expect(o.workloadPool, unittest.equals('foo'));
  }
  buildCounterWorkloadIdentityConfig--;
}

core.int buildCounterWorkloadMetadataConfig = 0;
buildWorkloadMetadataConfig() {
  var o = new api.WorkloadMetadataConfig();
  buildCounterWorkloadMetadataConfig++;
  if (buildCounterWorkloadMetadataConfig < 3) {
    o.mode = "foo";
  }
  buildCounterWorkloadMetadataConfig--;
  return o;
}

checkWorkloadMetadataConfig(api.WorkloadMetadataConfig o) {
  buildCounterWorkloadMetadataConfig++;
  if (buildCounterWorkloadMetadataConfig < 3) {
    unittest.expect(o.mode, unittest.equals('foo'));
  }
  buildCounterWorkloadMetadataConfig--;
}

main() {
  unittest.group("obj-schema-AcceleratorConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAcceleratorConfig();
      var od = new api.AcceleratorConfig.fromJson(o.toJson());
      checkAcceleratorConfig(od);
    });
  });

  unittest.group("obj-schema-AddonsConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddonsConfig();
      var od = new api.AddonsConfig.fromJson(o.toJson());
      checkAddonsConfig(od);
    });
  });

  unittest.group("obj-schema-AuthenticatorGroupsConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthenticatorGroupsConfig();
      var od = new api.AuthenticatorGroupsConfig.fromJson(o.toJson());
      checkAuthenticatorGroupsConfig(od);
    });
  });

  unittest.group("obj-schema-AutoUpgradeOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoUpgradeOptions();
      var od = new api.AutoUpgradeOptions.fromJson(o.toJson());
      checkAutoUpgradeOptions(od);
    });
  });

  unittest.group("obj-schema-AutoprovisioningNodePoolDefaults", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoprovisioningNodePoolDefaults();
      var od = new api.AutoprovisioningNodePoolDefaults.fromJson(o.toJson());
      checkAutoprovisioningNodePoolDefaults(od);
    });
  });

  unittest.group("obj-schema-BigQueryDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildBigQueryDestination();
      var od = new api.BigQueryDestination.fromJson(o.toJson());
      checkBigQueryDestination(od);
    });
  });

  unittest.group("obj-schema-BinaryAuthorization", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinaryAuthorization();
      var od = new api.BinaryAuthorization.fromJson(o.toJson());
      checkBinaryAuthorization(od);
    });
  });

  unittest.group("obj-schema-CancelOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelOperationRequest();
      var od = new api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od);
    });
  });

  unittest.group("obj-schema-CidrBlock", () {
    unittest.test("to-json--from-json", () {
      var o = buildCidrBlock();
      var od = new api.CidrBlock.fromJson(o.toJson());
      checkCidrBlock(od);
    });
  });

  unittest.group("obj-schema-ClientCertificateConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildClientCertificateConfig();
      var od = new api.ClientCertificateConfig.fromJson(o.toJson());
      checkClientCertificateConfig(od);
    });
  });

  unittest.group("obj-schema-CloudRunConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudRunConfig();
      var od = new api.CloudRunConfig.fromJson(o.toJson());
      checkCloudRunConfig(od);
    });
  });

  unittest.group("obj-schema-Cluster", () {
    unittest.test("to-json--from-json", () {
      var o = buildCluster();
      var od = new api.Cluster.fromJson(o.toJson());
      checkCluster(od);
    });
  });

  unittest.group("obj-schema-ClusterAutoscaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildClusterAutoscaling();
      var od = new api.ClusterAutoscaling.fromJson(o.toJson());
      checkClusterAutoscaling(od);
    });
  });

  unittest.group("obj-schema-ClusterUpdate", () {
    unittest.test("to-json--from-json", () {
      var o = buildClusterUpdate();
      var od = new api.ClusterUpdate.fromJson(o.toJson());
      checkClusterUpdate(od);
    });
  });

  unittest.group("obj-schema-CompleteIPRotationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompleteIPRotationRequest();
      var od = new api.CompleteIPRotationRequest.fromJson(o.toJson());
      checkCompleteIPRotationRequest(od);
    });
  });

  unittest.group("obj-schema-ConfigConnectorConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildConfigConnectorConfig();
      var od = new api.ConfigConnectorConfig.fromJson(o.toJson());
      checkConfigConnectorConfig(od);
    });
  });

  unittest.group("obj-schema-ConsumptionMeteringConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildConsumptionMeteringConfig();
      var od = new api.ConsumptionMeteringConfig.fromJson(o.toJson());
      checkConsumptionMeteringConfig(od);
    });
  });

  unittest.group("obj-schema-CreateClusterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateClusterRequest();
      var od = new api.CreateClusterRequest.fromJson(o.toJson());
      checkCreateClusterRequest(od);
    });
  });

  unittest.group("obj-schema-CreateNodePoolRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateNodePoolRequest();
      var od = new api.CreateNodePoolRequest.fromJson(o.toJson());
      checkCreateNodePoolRequest(od);
    });
  });

  unittest.group("obj-schema-DailyMaintenanceWindow", () {
    unittest.test("to-json--from-json", () {
      var o = buildDailyMaintenanceWindow();
      var od = new api.DailyMaintenanceWindow.fromJson(o.toJson());
      checkDailyMaintenanceWindow(od);
    });
  });

  unittest.group("obj-schema-DatabaseEncryption", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatabaseEncryption();
      var od = new api.DatabaseEncryption.fromJson(o.toJson());
      checkDatabaseEncryption(od);
    });
  });

  unittest.group("obj-schema-DefaultSnatStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildDefaultSnatStatus();
      var od = new api.DefaultSnatStatus.fromJson(o.toJson());
      checkDefaultSnatStatus(od);
    });
  });

  unittest.group("obj-schema-DnsCacheConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildDnsCacheConfig();
      var od = new api.DnsCacheConfig.fromJson(o.toJson());
      checkDnsCacheConfig(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-GetJSONWebKeysResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetJSONWebKeysResponse();
      var od = new api.GetJSONWebKeysResponse.fromJson(o.toJson());
      checkGetJSONWebKeysResponse(od);
    });
  });

  unittest.group("obj-schema-GetOpenIDConfigResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetOpenIDConfigResponse();
      var od = new api.GetOpenIDConfigResponse.fromJson(o.toJson());
      checkGetOpenIDConfigResponse(od);
    });
  });

  unittest.group("obj-schema-HorizontalPodAutoscaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildHorizontalPodAutoscaling();
      var od = new api.HorizontalPodAutoscaling.fromJson(o.toJson());
      checkHorizontalPodAutoscaling(od);
    });
  });

  unittest.group("obj-schema-HttpCacheControlResponseHeader", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpCacheControlResponseHeader();
      var od = new api.HttpCacheControlResponseHeader.fromJson(o.toJson());
      checkHttpCacheControlResponseHeader(od);
    });
  });

  unittest.group("obj-schema-HttpLoadBalancing", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpLoadBalancing();
      var od = new api.HttpLoadBalancing.fromJson(o.toJson());
      checkHttpLoadBalancing(od);
    });
  });

  unittest.group("obj-schema-IPAllocationPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildIPAllocationPolicy();
      var od = new api.IPAllocationPolicy.fromJson(o.toJson());
      checkIPAllocationPolicy(od);
    });
  });

  unittest.group("obj-schema-IntraNodeVisibilityConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntraNodeVisibilityConfig();
      var od = new api.IntraNodeVisibilityConfig.fromJson(o.toJson());
      checkIntraNodeVisibilityConfig(od);
    });
  });

  unittest.group("obj-schema-Jwk", () {
    unittest.test("to-json--from-json", () {
      var o = buildJwk();
      var od = new api.Jwk.fromJson(o.toJson());
      checkJwk(od);
    });
  });

  unittest.group("obj-schema-KubernetesDashboard", () {
    unittest.test("to-json--from-json", () {
      var o = buildKubernetesDashboard();
      var od = new api.KubernetesDashboard.fromJson(o.toJson());
      checkKubernetesDashboard(od);
    });
  });

  unittest.group("obj-schema-LegacyAbac", () {
    unittest.test("to-json--from-json", () {
      var o = buildLegacyAbac();
      var od = new api.LegacyAbac.fromJson(o.toJson());
      checkLegacyAbac(od);
    });
  });

  unittest.group("obj-schema-ListClustersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListClustersResponse();
      var od = new api.ListClustersResponse.fromJson(o.toJson());
      checkListClustersResponse(od);
    });
  });

  unittest.group("obj-schema-ListNodePoolsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListNodePoolsResponse();
      var od = new api.ListNodePoolsResponse.fromJson(o.toJson());
      checkListNodePoolsResponse(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListUsableSubnetworksResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListUsableSubnetworksResponse();
      var od = new api.ListUsableSubnetworksResponse.fromJson(o.toJson());
      checkListUsableSubnetworksResponse(od);
    });
  });

  unittest.group("obj-schema-MaintenancePolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildMaintenancePolicy();
      var od = new api.MaintenancePolicy.fromJson(o.toJson());
      checkMaintenancePolicy(od);
    });
  });

  unittest.group("obj-schema-MaintenanceWindow", () {
    unittest.test("to-json--from-json", () {
      var o = buildMaintenanceWindow();
      var od = new api.MaintenanceWindow.fromJson(o.toJson());
      checkMaintenanceWindow(od);
    });
  });

  unittest.group("obj-schema-MasterAuth", () {
    unittest.test("to-json--from-json", () {
      var o = buildMasterAuth();
      var od = new api.MasterAuth.fromJson(o.toJson());
      checkMasterAuth(od);
    });
  });

  unittest.group("obj-schema-MasterAuthorizedNetworksConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildMasterAuthorizedNetworksConfig();
      var od = new api.MasterAuthorizedNetworksConfig.fromJson(o.toJson());
      checkMasterAuthorizedNetworksConfig(od);
    });
  });

  unittest.group("obj-schema-MaxPodsConstraint", () {
    unittest.test("to-json--from-json", () {
      var o = buildMaxPodsConstraint();
      var od = new api.MaxPodsConstraint.fromJson(o.toJson());
      checkMaxPodsConstraint(od);
    });
  });

  unittest.group("obj-schema-Metric", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetric();
      var od = new api.Metric.fromJson(o.toJson());
      checkMetric(od);
    });
  });

  unittest.group("obj-schema-NetworkConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkConfig();
      var od = new api.NetworkConfig.fromJson(o.toJson());
      checkNetworkConfig(od);
    });
  });

  unittest.group("obj-schema-NetworkPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkPolicy();
      var od = new api.NetworkPolicy.fromJson(o.toJson());
      checkNetworkPolicy(od);
    });
  });

  unittest.group("obj-schema-NetworkPolicyConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkPolicyConfig();
      var od = new api.NetworkPolicyConfig.fromJson(o.toJson());
      checkNetworkPolicyConfig(od);
    });
  });

  unittest.group("obj-schema-NodeConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildNodeConfig();
      var od = new api.NodeConfig.fromJson(o.toJson());
      checkNodeConfig(od);
    });
  });

  unittest.group("obj-schema-NodeManagement", () {
    unittest.test("to-json--from-json", () {
      var o = buildNodeManagement();
      var od = new api.NodeManagement.fromJson(o.toJson());
      checkNodeManagement(od);
    });
  });

  unittest.group("obj-schema-NodePool", () {
    unittest.test("to-json--from-json", () {
      var o = buildNodePool();
      var od = new api.NodePool.fromJson(o.toJson());
      checkNodePool(od);
    });
  });

  unittest.group("obj-schema-NodePoolAutoscaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildNodePoolAutoscaling();
      var od = new api.NodePoolAutoscaling.fromJson(o.toJson());
      checkNodePoolAutoscaling(od);
    });
  });

  unittest.group("obj-schema-NodeTaint", () {
    unittest.test("to-json--from-json", () {
      var o = buildNodeTaint();
      var od = new api.NodeTaint.fromJson(o.toJson());
      checkNodeTaint(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OperationProgress", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationProgress();
      var od = new api.OperationProgress.fromJson(o.toJson());
      checkOperationProgress(od);
    });
  });

  unittest.group("obj-schema-PrivateClusterConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrivateClusterConfig();
      var od = new api.PrivateClusterConfig.fromJson(o.toJson());
      checkPrivateClusterConfig(od);
    });
  });

  unittest.group("obj-schema-PrivateClusterMasterGlobalAccessConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrivateClusterMasterGlobalAccessConfig();
      var od =
          new api.PrivateClusterMasterGlobalAccessConfig.fromJson(o.toJson());
      checkPrivateClusterMasterGlobalAccessConfig(od);
    });
  });

  unittest.group("obj-schema-RecurringTimeWindow", () {
    unittest.test("to-json--from-json", () {
      var o = buildRecurringTimeWindow();
      var od = new api.RecurringTimeWindow.fromJson(o.toJson());
      checkRecurringTimeWindow(od);
    });
  });

  unittest.group("obj-schema-ReleaseChannel", () {
    unittest.test("to-json--from-json", () {
      var o = buildReleaseChannel();
      var od = new api.ReleaseChannel.fromJson(o.toJson());
      checkReleaseChannel(od);
    });
  });

  unittest.group("obj-schema-ReleaseChannelConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildReleaseChannelConfig();
      var od = new api.ReleaseChannelConfig.fromJson(o.toJson());
      checkReleaseChannelConfig(od);
    });
  });

  unittest.group("obj-schema-ReservationAffinity", () {
    unittest.test("to-json--from-json", () {
      var o = buildReservationAffinity();
      var od = new api.ReservationAffinity.fromJson(o.toJson());
      checkReservationAffinity(od);
    });
  });

  unittest.group("obj-schema-ResourceLimit", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceLimit();
      var od = new api.ResourceLimit.fromJson(o.toJson());
      checkResourceLimit(od);
    });
  });

  unittest.group("obj-schema-ResourceUsageExportConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceUsageExportConfig();
      var od = new api.ResourceUsageExportConfig.fromJson(o.toJson());
      checkResourceUsageExportConfig(od);
    });
  });

  unittest.group("obj-schema-RollbackNodePoolUpgradeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRollbackNodePoolUpgradeRequest();
      var od = new api.RollbackNodePoolUpgradeRequest.fromJson(o.toJson());
      checkRollbackNodePoolUpgradeRequest(od);
    });
  });

  unittest.group("obj-schema-SandboxConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildSandboxConfig();
      var od = new api.SandboxConfig.fromJson(o.toJson());
      checkSandboxConfig(od);
    });
  });

  unittest.group("obj-schema-ServerConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildServerConfig();
      var od = new api.ServerConfig.fromJson(o.toJson());
      checkServerConfig(od);
    });
  });

  unittest.group("obj-schema-SetAddonsConfigRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetAddonsConfigRequest();
      var od = new api.SetAddonsConfigRequest.fromJson(o.toJson());
      checkSetAddonsConfigRequest(od);
    });
  });

  unittest.group("obj-schema-SetLabelsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetLabelsRequest();
      var od = new api.SetLabelsRequest.fromJson(o.toJson());
      checkSetLabelsRequest(od);
    });
  });

  unittest.group("obj-schema-SetLegacyAbacRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetLegacyAbacRequest();
      var od = new api.SetLegacyAbacRequest.fromJson(o.toJson());
      checkSetLegacyAbacRequest(od);
    });
  });

  unittest.group("obj-schema-SetLocationsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetLocationsRequest();
      var od = new api.SetLocationsRequest.fromJson(o.toJson());
      checkSetLocationsRequest(od);
    });
  });

  unittest.group("obj-schema-SetLoggingServiceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetLoggingServiceRequest();
      var od = new api.SetLoggingServiceRequest.fromJson(o.toJson());
      checkSetLoggingServiceRequest(od);
    });
  });

  unittest.group("obj-schema-SetMaintenancePolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetMaintenancePolicyRequest();
      var od = new api.SetMaintenancePolicyRequest.fromJson(o.toJson());
      checkSetMaintenancePolicyRequest(od);
    });
  });

  unittest.group("obj-schema-SetMasterAuthRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetMasterAuthRequest();
      var od = new api.SetMasterAuthRequest.fromJson(o.toJson());
      checkSetMasterAuthRequest(od);
    });
  });

  unittest.group("obj-schema-SetMonitoringServiceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetMonitoringServiceRequest();
      var od = new api.SetMonitoringServiceRequest.fromJson(o.toJson());
      checkSetMonitoringServiceRequest(od);
    });
  });

  unittest.group("obj-schema-SetNetworkPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetNetworkPolicyRequest();
      var od = new api.SetNetworkPolicyRequest.fromJson(o.toJson());
      checkSetNetworkPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-SetNodePoolAutoscalingRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetNodePoolAutoscalingRequest();
      var od = new api.SetNodePoolAutoscalingRequest.fromJson(o.toJson());
      checkSetNodePoolAutoscalingRequest(od);
    });
  });

  unittest.group("obj-schema-SetNodePoolManagementRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetNodePoolManagementRequest();
      var od = new api.SetNodePoolManagementRequest.fromJson(o.toJson());
      checkSetNodePoolManagementRequest(od);
    });
  });

  unittest.group("obj-schema-SetNodePoolSizeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetNodePoolSizeRequest();
      var od = new api.SetNodePoolSizeRequest.fromJson(o.toJson());
      checkSetNodePoolSizeRequest(od);
    });
  });

  unittest.group("obj-schema-ShieldedInstanceConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildShieldedInstanceConfig();
      var od = new api.ShieldedInstanceConfig.fromJson(o.toJson());
      checkShieldedInstanceConfig(od);
    });
  });

  unittest.group("obj-schema-ShieldedNodes", () {
    unittest.test("to-json--from-json", () {
      var o = buildShieldedNodes();
      var od = new api.ShieldedNodes.fromJson(o.toJson());
      checkShieldedNodes(od);
    });
  });

  unittest.group("obj-schema-StartIPRotationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildStartIPRotationRequest();
      var od = new api.StartIPRotationRequest.fromJson(o.toJson());
      checkStartIPRotationRequest(od);
    });
  });

  unittest.group("obj-schema-StatusCondition", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatusCondition();
      var od = new api.StatusCondition.fromJson(o.toJson());
      checkStatusCondition(od);
    });
  });

  unittest.group("obj-schema-TimeWindow", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeWindow();
      var od = new api.TimeWindow.fromJson(o.toJson());
      checkTimeWindow(od);
    });
  });

  unittest.group("obj-schema-UpdateClusterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateClusterRequest();
      var od = new api.UpdateClusterRequest.fromJson(o.toJson());
      checkUpdateClusterRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateMasterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateMasterRequest();
      var od = new api.UpdateMasterRequest.fromJson(o.toJson());
      checkUpdateMasterRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateNodePoolRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateNodePoolRequest();
      var od = new api.UpdateNodePoolRequest.fromJson(o.toJson());
      checkUpdateNodePoolRequest(od);
    });
  });

  unittest.group("obj-schema-UpgradeEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpgradeEvent();
      var od = new api.UpgradeEvent.fromJson(o.toJson());
      checkUpgradeEvent(od);
    });
  });

  unittest.group("obj-schema-UpgradeSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpgradeSettings();
      var od = new api.UpgradeSettings.fromJson(o.toJson());
      checkUpgradeSettings(od);
    });
  });

  unittest.group("obj-schema-UsableSubnetwork", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsableSubnetwork();
      var od = new api.UsableSubnetwork.fromJson(o.toJson());
      checkUsableSubnetwork(od);
    });
  });

  unittest.group("obj-schema-UsableSubnetworkSecondaryRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsableSubnetworkSecondaryRange();
      var od = new api.UsableSubnetworkSecondaryRange.fromJson(o.toJson());
      checkUsableSubnetworkSecondaryRange(od);
    });
  });

  unittest.group("obj-schema-VerticalPodAutoscaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildVerticalPodAutoscaling();
      var od = new api.VerticalPodAutoscaling.fromJson(o.toJson());
      checkVerticalPodAutoscaling(od);
    });
  });

  unittest.group("obj-schema-WorkloadIdentityConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkloadIdentityConfig();
      var od = new api.WorkloadIdentityConfig.fromJson(o.toJson());
      checkWorkloadIdentityConfig(od);
    });
  });

  unittest.group("obj-schema-WorkloadMetadataConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkloadMetadataConfig();
      var od = new api.WorkloadMetadataConfig.fromJson(o.toJson());
      checkWorkloadMetadataConfig(od);
    });
  });

  unittest.group("resource-ProjectsAggregatedUsableSubnetworksResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAggregatedUsableSubnetworksResourceApi res =
          new api.ContainerApi(mock).projects.aggregated.usableSubnetworks;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListUsableSubnetworksResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListUsableSubnetworksResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--getServerConfig", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.ContainerApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildServerConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getServerConfig(arg_name,
              projectId: arg_projectId, zone: arg_zone, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServerConfig(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsClustersResourceApi", () {
    unittest.test("method--completeIpRotation", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildCompleteIPRotationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CompleteIPRotationRequest.fromJson(json);
        checkCompleteIPRotationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .completeIpRotation(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildCreateClusterRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateClusterRequest.fromJson(json);
        checkCreateClusterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_name = "foo";
      var arg_zone = "foo";
      var arg_projectId = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(
            queryMap["clusterId"].first, unittest.equals(arg_clusterId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              zone: arg_zone,
              projectId: arg_projectId,
              clusterId: arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_name = "foo";
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(
            queryMap["clusterId"].first, unittest.equals(arg_clusterId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCluster());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              projectId: arg_projectId,
              zone: arg_zone,
              clusterId: arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCluster(response);
      })));
    });

    unittest.test("method--getJwks", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetJSONWebKeysResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getJwks(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetJSONWebKeysResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_parent = "foo";
      var arg_zone = "foo";
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListClustersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              zone: arg_zone, projectId: arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListClustersResponse(response);
      })));
    });

    unittest.test("method--setAddons", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetAddonsConfigRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetAddonsConfigRequest.fromJson(json);
        checkSetAddonsConfigRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setAddons(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setLegacyAbac", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetLegacyAbacRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetLegacyAbacRequest.fromJson(json);
        checkSetLegacyAbacRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setLegacyAbac(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setLocations", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetLocationsRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetLocationsRequest.fromJson(json);
        checkSetLocationsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setLocations(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setLogging", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetLoggingServiceRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetLoggingServiceRequest.fromJson(json);
        checkSetLoggingServiceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setLogging(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setMaintenancePolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetMaintenancePolicyRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetMaintenancePolicyRequest.fromJson(json);
        checkSetMaintenancePolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setMaintenancePolicy(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setMasterAuth", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetMasterAuthRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetMasterAuthRequest.fromJson(json);
        checkSetMasterAuthRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setMasterAuth(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setMonitoring", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetMonitoringServiceRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetMonitoringServiceRequest.fromJson(json);
        checkSetMonitoringServiceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setMonitoring(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setNetworkPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetNetworkPolicyRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetNetworkPolicyRequest.fromJson(json);
        checkSetNetworkPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setNetworkPolicy(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setResourceLabels", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetLabelsRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetLabelsRequest.fromJson(json);
        checkSetLabelsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setResourceLabels(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--startIpRotation", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildStartIPRotationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.StartIPRotationRequest.fromJson(json);
        checkStartIPRotationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .startIpRotation(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildUpdateClusterRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateClusterRequest.fromJson(json);
        checkUpdateClusterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--updateMaster", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildUpdateMasterRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateMasterRequest.fromJson(json);
        checkUpdateMasterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateMaster(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsClustersNodePoolsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_request = buildCreateNodePoolRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateNodePoolRequest.fromJson(json);
        checkCreateNodePoolRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_name = "foo";
      var arg_nodePoolId = "foo";
      var arg_projectId = "foo";
      var arg_clusterId = "foo";
      var arg_zone = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["nodePoolId"].first, unittest.equals(arg_nodePoolId));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(
            queryMap["clusterId"].first, unittest.equals(arg_clusterId));
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              nodePoolId: arg_nodePoolId,
              projectId: arg_projectId,
              clusterId: arg_clusterId,
              zone: arg_zone,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_name = "foo";
      var arg_zone = "foo";
      var arg_nodePoolId = "foo";
      var arg_projectId = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(
            queryMap["nodePoolId"].first, unittest.equals(arg_nodePoolId));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(
            queryMap["clusterId"].first, unittest.equals(arg_clusterId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNodePool());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              zone: arg_zone,
              nodePoolId: arg_nodePoolId,
              projectId: arg_projectId,
              clusterId: arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNodePool(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_parent = "foo";
      var arg_zone = "foo";
      var arg_projectId = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(
            queryMap["clusterId"].first, unittest.equals(arg_clusterId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListNodePoolsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              zone: arg_zone,
              projectId: arg_projectId,
              clusterId: arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNodePoolsResponse(response);
      })));
    });

    unittest.test("method--rollback", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_request = buildRollbackNodePoolUpgradeRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RollbackNodePoolUpgradeRequest.fromJson(json);
        checkRollbackNodePoolUpgradeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rollback(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setAutoscaling", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_request = buildSetNodePoolAutoscalingRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetNodePoolAutoscalingRequest.fromJson(json);
        checkSetNodePoolAutoscalingRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setAutoscaling(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setManagement", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_request = buildSetNodePoolManagementRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetNodePoolManagementRequest.fromJson(json);
        checkSetNodePoolManagementRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setManagement(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setSize", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_request = buildSetNodePoolSizeRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetNodePoolSizeRequest.fromJson(json);
        checkSetNodePoolSizeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setSize(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_request = buildUpdateNodePoolRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateNodePoolRequest.fromJson(json);
        checkUpdateNodePoolRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsClustersWell_knownResourceApi", () {
    unittest.test("method--getOpenid_configuration", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsClustersWell_knownResourceApi res =
          new api.ContainerApi(mock).projects.locations.clusters.well_known;
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetOpenIDConfigResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getOpenid_configuration(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetOpenIDConfigResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.ContainerApi(mock).projects.locations.operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CancelOperationRequest.fromJson(json);
        checkCancelOperationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.ContainerApi(mock).projects.locations.operations;
      var arg_name = "foo";
      var arg_operationId = "foo";
      var arg_zone = "foo";
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["operationId"].first, unittest.equals(arg_operationId));
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              operationId: arg_operationId,
              zone: arg_zone,
              projectId: arg_projectId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.ContainerApi(mock).projects.locations.operations;
      var arg_parent = "foo";
      var arg_zone = "foo";
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              zone: arg_zone, projectId: arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsZonesResourceApi", () {
    unittest.test("method--getServerconfig", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesResourceApi res =
          new api.ContainerApi(mock).projects.zones;
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/serverconfig", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/serverconfig"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildServerConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getServerconfig(arg_projectId, arg_zone,
              name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServerConfig(response);
      })));
    });
  });

  unittest.group("resource-ProjectsZonesClustersResourceApi", () {
    unittest.test("method--addons", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetAddonsConfigRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetAddonsConfigRequest.fromJson(json);
        checkSetAddonsConfigRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/addons", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/addons"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addons(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--completeIpRotation", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildCompleteIPRotationRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CompleteIPRotationRequest.fromJson(json);
        checkCompleteIPRotationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf(":completeIpRotation", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals(":completeIpRotation"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .completeIpRotation(
              arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildCreateClusterRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateClusterRequest.fromJson(json);
        checkCreateClusterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clusters"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, arg_zone, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectId, arg_zone, arg_clusterId,
              name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCluster());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_zone, arg_clusterId,
              name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCluster(response);
      })));
    });

    unittest.test("method--legacyAbac", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetLegacyAbacRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetLegacyAbacRequest.fromJson(json);
        checkSetLegacyAbacRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/legacyAbac", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/legacyAbac"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .legacyAbac(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clusters"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["parent"].first, unittest.equals(arg_parent));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListClustersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_zone,
              parent: arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListClustersResponse(response);
      })));
    });

    unittest.test("method--locations", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetLocationsRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetLocationsRequest.fromJson(json);
        checkSetLocationsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/locations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/locations"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .locations(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--logging", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetLoggingServiceRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetLoggingServiceRequest.fromJson(json);
        checkSetLoggingServiceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/logging", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/logging"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .logging(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--master", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildUpdateMasterRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateMasterRequest.fromJson(json);
        checkUpdateMasterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/master", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/master"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .master(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--monitoring", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetMonitoringServiceRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetMonitoringServiceRequest.fromJson(json);
        checkSetMonitoringServiceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/monitoring", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/monitoring"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .monitoring(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--resourceLabels", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetLabelsRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetLabelsRequest.fromJson(json);
        checkSetLabelsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/resourceLabels", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/resourceLabels"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resourceLabels(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setMaintenancePolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetMaintenancePolicyRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetMaintenancePolicyRequest.fromJson(json);
        checkSetMaintenancePolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf(":setMaintenancePolicy", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals(":setMaintenancePolicy"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setMaintenancePolicy(
              arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setMasterAuth", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetMasterAuthRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetMasterAuthRequest.fromJson(json);
        checkSetMasterAuthRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf(":setMasterAuth", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals(":setMasterAuth"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setMasterAuth(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setNetworkPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetNetworkPolicyRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetNetworkPolicyRequest.fromJson(json);
        checkSetNetworkPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf(":setNetworkPolicy", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals(":setNetworkPolicy"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setNetworkPolicy(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--startIpRotation", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildStartIPRotationRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.StartIPRotationRequest.fromJson(json);
        checkStartIPRotationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf(":startIpRotation", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals(":startIpRotation"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .startIpRotation(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildUpdateClusterRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateClusterRequest.fromJson(json);
        checkUpdateClusterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsZonesClustersNodePoolsResourceApi", () {
    unittest.test("method--autoscaling", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_request = buildSetNodePoolAutoscalingRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_nodePoolId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetNodePoolAutoscalingRequest.fromJson(json);
        checkSetNodePoolAutoscalingRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/nodePools/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/nodePools/"));
        pathOffset += 11;
        index = path.indexOf("/autoscaling", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_nodePoolId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/autoscaling"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .autoscaling(arg_request, arg_projectId, arg_zone, arg_clusterId,
              arg_nodePoolId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_request = buildCreateNodePoolRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateNodePoolRequest.fromJson(json);
        checkCreateNodePoolRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/nodePools", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/nodePools"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_nodePoolId = "foo";
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/nodePools/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/nodePools/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_nodePoolId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
              name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_nodePoolId = "foo";
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/nodePools/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/nodePools/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_nodePoolId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNodePool());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
              name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNodePool(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/nodePools", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/nodePools"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["parent"].first, unittest.equals(arg_parent));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListNodePoolsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_zone, arg_clusterId,
              parent: arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNodePoolsResponse(response);
      })));
    });

    unittest.test("method--rollback", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_request = buildRollbackNodePoolUpgradeRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_nodePoolId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RollbackNodePoolUpgradeRequest.fromJson(json);
        checkRollbackNodePoolUpgradeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/nodePools/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/nodePools/"));
        pathOffset += 11;
        index = path.indexOf(":rollback", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_nodePoolId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":rollback"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rollback(arg_request, arg_projectId, arg_zone, arg_clusterId,
              arg_nodePoolId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setManagement", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_request = buildSetNodePoolManagementRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_nodePoolId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetNodePoolManagementRequest.fromJson(json);
        checkSetNodePoolManagementRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/nodePools/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/nodePools/"));
        pathOffset += 11;
        index = path.indexOf("/setManagement", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_nodePoolId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/setManagement"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setManagement(arg_request, arg_projectId, arg_zone, arg_clusterId,
              arg_nodePoolId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setSize", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_request = buildSetNodePoolSizeRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_nodePoolId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetNodePoolSizeRequest.fromJson(json);
        checkSetNodePoolSizeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/nodePools/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/nodePools/"));
        pathOffset += 11;
        index = path.indexOf("/setSize", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_nodePoolId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/setSize"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setSize(arg_request, arg_projectId, arg_zone, arg_clusterId,
              arg_nodePoolId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesClustersNodePoolsResourceApi res =
          new api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_request = buildUpdateNodePoolRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_nodePoolId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateNodePoolRequest.fromJson(json);
        checkUpdateNodePoolRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf("/nodePools/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/nodePools/"));
        pathOffset += 11;
        index = path.indexOf("/update", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_nodePoolId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/update"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, arg_zone, arg_clusterId,
              arg_nodePoolId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsZonesOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesOperationsResourceApi res =
          new api.ContainerApi(mock).projects.zones.operations;
      var arg_request = buildCancelOperationRequest();
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_operationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CancelOperationRequest.fromJson(json);
        checkCancelOperationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/operations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/operations/"));
        pathOffset += 12;
        index = path.indexOf(":cancel", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_operationId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":cancel"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_projectId, arg_zone, arg_operationId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesOperationsResourceApi res =
          new api.ContainerApi(mock).projects.zones.operations;
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_operationId = "foo";
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/operations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/operations/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_operationId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_zone, arg_operationId,
              name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsZonesOperationsResourceApi res =
          new api.ContainerApi(mock).projects.zones.operations;
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/operations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/operations"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["parent"].first, unittest.equals(arg_parent));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_zone,
              parent: arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });
}
