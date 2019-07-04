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
    checkHorizontalPodAutoscaling(o.horizontalPodAutoscaling);
    checkHttpLoadBalancing(o.httpLoadBalancing);
    checkKubernetesDashboard(o.kubernetesDashboard);
    checkNetworkPolicyConfig(o.networkPolicyConfig);
  }
  buildCounterAddonsConfig--;
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

buildUnnamed3767() {
  var o = new core.List<api.StatusCondition>();
  o.add(buildStatusCondition());
  o.add(buildStatusCondition());
  return o;
}

checkUnnamed3767(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
}

buildUnnamed3768() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3768(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3769() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3769(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3770() {
  var o = new core.List<api.NodePool>();
  o.add(buildNodePool());
  o.add(buildNodePool());
  return o;
}

checkUnnamed3770(core.List<api.NodePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodePool(o[0]);
  checkNodePool(o[1]);
}

buildUnnamed3771() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3771(core.Map<core.String, core.String> o) {
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
    o.clusterIpv4Cidr = "foo";
    o.conditions = buildUnnamed3767();
    o.createTime = "foo";
    o.currentMasterVersion = "foo";
    o.currentNodeCount = 42;
    o.currentNodeVersion = "foo";
    o.defaultMaxPodsConstraint = buildMaxPodsConstraint();
    o.description = "foo";
    o.enableKubernetesAlpha = true;
    o.enableTpu = true;
    o.endpoint = "foo";
    o.expireTime = "foo";
    o.initialClusterVersion = "foo";
    o.initialNodeCount = 42;
    o.instanceGroupUrls = buildUnnamed3768();
    o.ipAllocationPolicy = buildIPAllocationPolicy();
    o.labelFingerprint = "foo";
    o.legacyAbac = buildLegacyAbac();
    o.location = "foo";
    o.locations = buildUnnamed3769();
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
    o.nodePools = buildUnnamed3770();
    o.privateClusterConfig = buildPrivateClusterConfig();
    o.resourceLabels = buildUnnamed3771();
    o.resourceUsageExportConfig = buildResourceUsageExportConfig();
    o.selfLink = "foo";
    o.servicesIpv4Cidr = "foo";
    o.status = "foo";
    o.statusMessage = "foo";
    o.subnetwork = "foo";
    o.tpuIpv4CidrBlock = "foo";
    o.zone = "foo";
  }
  buildCounterCluster--;
  return o;
}

checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    checkAddonsConfig(o.addonsConfig);
    unittest.expect(o.clusterIpv4Cidr, unittest.equals('foo'));
    checkUnnamed3767(o.conditions);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.currentMasterVersion, unittest.equals('foo'));
    unittest.expect(o.currentNodeCount, unittest.equals(42));
    unittest.expect(o.currentNodeVersion, unittest.equals('foo'));
    checkMaxPodsConstraint(o.defaultMaxPodsConstraint);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.enableKubernetesAlpha, unittest.isTrue);
    unittest.expect(o.enableTpu, unittest.isTrue);
    unittest.expect(o.endpoint, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    unittest.expect(o.initialClusterVersion, unittest.equals('foo'));
    unittest.expect(o.initialNodeCount, unittest.equals(42));
    checkUnnamed3768(o.instanceGroupUrls);
    checkIPAllocationPolicy(o.ipAllocationPolicy);
    unittest.expect(o.labelFingerprint, unittest.equals('foo'));
    checkLegacyAbac(o.legacyAbac);
    unittest.expect(o.location, unittest.equals('foo'));
    checkUnnamed3769(o.locations);
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
    checkUnnamed3770(o.nodePools);
    checkPrivateClusterConfig(o.privateClusterConfig);
    checkUnnamed3771(o.resourceLabels);
    checkResourceUsageExportConfig(o.resourceUsageExportConfig);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.servicesIpv4Cidr, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
    unittest.expect(o.tpuIpv4CidrBlock, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterCluster--;
}

buildUnnamed3772() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3772(core.List<core.String> o) {
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
    o.desiredImageType = "foo";
    o.desiredLocations = buildUnnamed3772();
    o.desiredLoggingService = "foo";
    o.desiredMasterAuthorizedNetworksConfig =
        buildMasterAuthorizedNetworksConfig();
    o.desiredMasterVersion = "foo";
    o.desiredMonitoringService = "foo";
    o.desiredNodePoolAutoscaling = buildNodePoolAutoscaling();
    o.desiredNodePoolId = "foo";
    o.desiredNodeVersion = "foo";
    o.desiredResourceUsageExportConfig = buildResourceUsageExportConfig();
  }
  buildCounterClusterUpdate--;
  return o;
}

checkClusterUpdate(api.ClusterUpdate o) {
  buildCounterClusterUpdate++;
  if (buildCounterClusterUpdate < 3) {
    checkAddonsConfig(o.desiredAddonsConfig);
    unittest.expect(o.desiredImageType, unittest.equals('foo'));
    checkUnnamed3772(o.desiredLocations);
    unittest.expect(o.desiredLoggingService, unittest.equals('foo'));
    checkMasterAuthorizedNetworksConfig(
        o.desiredMasterAuthorizedNetworksConfig);
    unittest.expect(o.desiredMasterVersion, unittest.equals('foo'));
    unittest.expect(o.desiredMonitoringService, unittest.equals('foo'));
    checkNodePoolAutoscaling(o.desiredNodePoolAutoscaling);
    unittest.expect(o.desiredNodePoolId, unittest.equals('foo'));
    unittest.expect(o.desiredNodeVersion, unittest.equals('foo'));
    checkResourceUsageExportConfig(o.desiredResourceUsageExportConfig);
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

buildUnnamed3773() {
  var o = new core.List<api.Jwk>();
  o.add(buildJwk());
  o.add(buildJwk());
  return o;
}

checkUnnamed3773(core.List<api.Jwk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJwk(o[0]);
  checkJwk(o[1]);
}

core.int buildCounterGetJSONWebKeysResponse = 0;
buildGetJSONWebKeysResponse() {
  var o = new api.GetJSONWebKeysResponse();
  buildCounterGetJSONWebKeysResponse++;
  if (buildCounterGetJSONWebKeysResponse < 3) {
    o.keys = buildUnnamed3773();
  }
  buildCounterGetJSONWebKeysResponse--;
  return o;
}

checkGetJSONWebKeysResponse(api.GetJSONWebKeysResponse o) {
  buildCounterGetJSONWebKeysResponse++;
  if (buildCounterGetJSONWebKeysResponse < 3) {
    checkUnnamed3773(o.keys);
  }
  buildCounterGetJSONWebKeysResponse--;
}

buildUnnamed3774() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3774(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3775() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3775(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3776() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3776(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3777() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3777(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3778() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3778(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGetOpenIDConfigResponse = 0;
buildGetOpenIDConfigResponse() {
  var o = new api.GetOpenIDConfigResponse();
  buildCounterGetOpenIDConfigResponse++;
  if (buildCounterGetOpenIDConfigResponse < 3) {
    o.claimsSupported = buildUnnamed3774();
    o.grantTypes = buildUnnamed3775();
    o.idTokenSigningAlgValuesSupported = buildUnnamed3776();
    o.issuer = "foo";
    o.jwksUri = "foo";
    o.responseTypesSupported = buildUnnamed3777();
    o.subjectTypesSupported = buildUnnamed3778();
  }
  buildCounterGetOpenIDConfigResponse--;
  return o;
}

checkGetOpenIDConfigResponse(api.GetOpenIDConfigResponse o) {
  buildCounterGetOpenIDConfigResponse++;
  if (buildCounterGetOpenIDConfigResponse < 3) {
    checkUnnamed3774(o.claimsSupported);
    checkUnnamed3775(o.grantTypes);
    checkUnnamed3776(o.idTokenSigningAlgValuesSupported);
    unittest.expect(o.issuer, unittest.equals('foo'));
    unittest.expect(o.jwksUri, unittest.equals('foo'));
    checkUnnamed3777(o.responseTypesSupported);
    checkUnnamed3778(o.subjectTypesSupported);
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
  }
  buildCounterIPAllocationPolicy--;
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

buildUnnamed3779() {
  var o = new core.List<api.Cluster>();
  o.add(buildCluster());
  o.add(buildCluster());
  return o;
}

checkUnnamed3779(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

buildUnnamed3780() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3780(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListClustersResponse = 0;
buildListClustersResponse() {
  var o = new api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed3779();
    o.missingZones = buildUnnamed3780();
  }
  buildCounterListClustersResponse--;
  return o;
}

checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed3779(o.clusters);
    checkUnnamed3780(o.missingZones);
  }
  buildCounterListClustersResponse--;
}

buildUnnamed3781() {
  var o = new core.List<api.NodePool>();
  o.add(buildNodePool());
  o.add(buildNodePool());
  return o;
}

checkUnnamed3781(core.List<api.NodePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodePool(o[0]);
  checkNodePool(o[1]);
}

core.int buildCounterListNodePoolsResponse = 0;
buildListNodePoolsResponse() {
  var o = new api.ListNodePoolsResponse();
  buildCounterListNodePoolsResponse++;
  if (buildCounterListNodePoolsResponse < 3) {
    o.nodePools = buildUnnamed3781();
  }
  buildCounterListNodePoolsResponse--;
  return o;
}

checkListNodePoolsResponse(api.ListNodePoolsResponse o) {
  buildCounterListNodePoolsResponse++;
  if (buildCounterListNodePoolsResponse < 3) {
    checkUnnamed3781(o.nodePools);
  }
  buildCounterListNodePoolsResponse--;
}

buildUnnamed3782() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3782(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3783() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed3783(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.missingZones = buildUnnamed3782();
    o.operations = buildUnnamed3783();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    checkUnnamed3782(o.missingZones);
    checkUnnamed3783(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed3784() {
  var o = new core.List<api.UsableSubnetwork>();
  o.add(buildUsableSubnetwork());
  o.add(buildUsableSubnetwork());
  return o;
}

checkUnnamed3784(core.List<api.UsableSubnetwork> o) {
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
    o.subnetworks = buildUnnamed3784();
  }
  buildCounterListUsableSubnetworksResponse--;
  return o;
}

checkListUsableSubnetworksResponse(api.ListUsableSubnetworksResponse o) {
  buildCounterListUsableSubnetworksResponse++;
  if (buildCounterListUsableSubnetworksResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3784(o.subnetworks);
  }
  buildCounterListUsableSubnetworksResponse--;
}

core.int buildCounterMaintenancePolicy = 0;
buildMaintenancePolicy() {
  var o = new api.MaintenancePolicy();
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    o.window = buildMaintenanceWindow();
  }
  buildCounterMaintenancePolicy--;
  return o;
}

checkMaintenancePolicy(api.MaintenancePolicy o) {
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    checkMaintenanceWindow(o.window);
  }
  buildCounterMaintenancePolicy--;
}

core.int buildCounterMaintenanceWindow = 0;
buildMaintenanceWindow() {
  var o = new api.MaintenanceWindow();
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    o.dailyMaintenanceWindow = buildDailyMaintenanceWindow();
  }
  buildCounterMaintenanceWindow--;
  return o;
}

checkMaintenanceWindow(api.MaintenanceWindow o) {
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    checkDailyMaintenanceWindow(o.dailyMaintenanceWindow);
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

buildUnnamed3785() {
  var o = new core.List<api.CidrBlock>();
  o.add(buildCidrBlock());
  o.add(buildCidrBlock());
  return o;
}

checkUnnamed3785(core.List<api.CidrBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCidrBlock(o[0]);
  checkCidrBlock(o[1]);
}

core.int buildCounterMasterAuthorizedNetworksConfig = 0;
buildMasterAuthorizedNetworksConfig() {
  var o = new api.MasterAuthorizedNetworksConfig();
  buildCounterMasterAuthorizedNetworksConfig++;
  if (buildCounterMasterAuthorizedNetworksConfig < 3) {
    o.cidrBlocks = buildUnnamed3785();
    o.enabled = true;
  }
  buildCounterMasterAuthorizedNetworksConfig--;
  return o;
}

checkMasterAuthorizedNetworksConfig(api.MasterAuthorizedNetworksConfig o) {
  buildCounterMasterAuthorizedNetworksConfig++;
  if (buildCounterMasterAuthorizedNetworksConfig < 3) {
    checkUnnamed3785(o.cidrBlocks);
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

core.int buildCounterNetworkConfig = 0;
buildNetworkConfig() {
  var o = new api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.network = "foo";
    o.subnetwork = "foo";
  }
  buildCounterNetworkConfig--;
  return o;
}

checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
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

buildUnnamed3786() {
  var o = new core.List<api.AcceleratorConfig>();
  o.add(buildAcceleratorConfig());
  o.add(buildAcceleratorConfig());
  return o;
}

checkUnnamed3786(core.List<api.AcceleratorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorConfig(o[0]);
  checkAcceleratorConfig(o[1]);
}

buildUnnamed3787() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3787(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3788() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3788(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3789() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3789(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3790() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3790(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3791() {
  var o = new core.List<api.NodeTaint>();
  o.add(buildNodeTaint());
  o.add(buildNodeTaint());
  return o;
}

checkUnnamed3791(core.List<api.NodeTaint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeTaint(o[0]);
  checkNodeTaint(o[1]);
}

core.int buildCounterNodeConfig = 0;
buildNodeConfig() {
  var o = new api.NodeConfig();
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    o.accelerators = buildUnnamed3786();
    o.diskSizeGb = 42;
    o.diskType = "foo";
    o.imageType = "foo";
    o.labels = buildUnnamed3787();
    o.localSsdCount = 42;
    o.machineType = "foo";
    o.metadata = buildUnnamed3788();
    o.minCpuPlatform = "foo";
    o.oauthScopes = buildUnnamed3789();
    o.preemptible = true;
    o.serviceAccount = "foo";
    o.tags = buildUnnamed3790();
    o.taints = buildUnnamed3791();
  }
  buildCounterNodeConfig--;
  return o;
}

checkNodeConfig(api.NodeConfig o) {
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    checkUnnamed3786(o.accelerators);
    unittest.expect(o.diskSizeGb, unittest.equals(42));
    unittest.expect(o.diskType, unittest.equals('foo'));
    unittest.expect(o.imageType, unittest.equals('foo'));
    checkUnnamed3787(o.labels);
    unittest.expect(o.localSsdCount, unittest.equals(42));
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkUnnamed3788(o.metadata);
    unittest.expect(o.minCpuPlatform, unittest.equals('foo'));
    checkUnnamed3789(o.oauthScopes);
    unittest.expect(o.preemptible, unittest.isTrue);
    unittest.expect(o.serviceAccount, unittest.equals('foo'));
    checkUnnamed3790(o.tags);
    checkUnnamed3791(o.taints);
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

buildUnnamed3792() {
  var o = new core.List<api.StatusCondition>();
  o.add(buildStatusCondition());
  o.add(buildStatusCondition());
  return o;
}

checkUnnamed3792(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
}

buildUnnamed3793() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3793(core.List<core.String> o) {
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
    o.conditions = buildUnnamed3792();
    o.config = buildNodeConfig();
    o.initialNodeCount = 42;
    o.instanceGroupUrls = buildUnnamed3793();
    o.management = buildNodeManagement();
    o.maxPodsConstraint = buildMaxPodsConstraint();
    o.name = "foo";
    o.podIpv4CidrSize = 42;
    o.selfLink = "foo";
    o.status = "foo";
    o.statusMessage = "foo";
    o.version = "foo";
  }
  buildCounterNodePool--;
  return o;
}

checkNodePool(api.NodePool o) {
  buildCounterNodePool++;
  if (buildCounterNodePool < 3) {
    checkNodePoolAutoscaling(o.autoscaling);
    checkUnnamed3792(o.conditions);
    checkNodeConfig(o.config);
    unittest.expect(o.initialNodeCount, unittest.equals(42));
    checkUnnamed3793(o.instanceGroupUrls);
    checkNodeManagement(o.management);
    checkMaxPodsConstraint(o.maxPodsConstraint);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.podIpv4CidrSize, unittest.equals(42));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterNodePool--;
}

core.int buildCounterNodePoolAutoscaling = 0;
buildNodePoolAutoscaling() {
  var o = new api.NodePoolAutoscaling();
  buildCounterNodePoolAutoscaling++;
  if (buildCounterNodePoolAutoscaling < 3) {
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

buildUnnamed3794() {
  var o = new core.List<api.StatusCondition>();
  o.add(buildStatusCondition());
  o.add(buildStatusCondition());
  return o;
}

checkUnnamed3794(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
}

buildUnnamed3795() {
  var o = new core.List<api.StatusCondition>();
  o.add(buildStatusCondition());
  o.add(buildStatusCondition());
  return o;
}

checkUnnamed3795(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.clusterConditions = buildUnnamed3794();
    o.detail = "foo";
    o.endTime = "foo";
    o.location = "foo";
    o.name = "foo";
    o.nodepoolConditions = buildUnnamed3795();
    o.operationType = "foo";
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
    checkUnnamed3794(o.clusterConditions);
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3795(o.nodepoolConditions);
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.targetLink, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterOperation--;
}

core.int buildCounterPrivateClusterConfig = 0;
buildPrivateClusterConfig() {
  var o = new api.PrivateClusterConfig();
  buildCounterPrivateClusterConfig++;
  if (buildCounterPrivateClusterConfig < 3) {
    o.enablePrivateEndpoint = true;
    o.enablePrivateNodes = true;
    o.masterIpv4CidrBlock = "foo";
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
    unittest.expect(o.masterIpv4CidrBlock, unittest.equals('foo'));
    unittest.expect(o.privateEndpoint, unittest.equals('foo'));
    unittest.expect(o.publicEndpoint, unittest.equals('foo'));
  }
  buildCounterPrivateClusterConfig--;
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

buildUnnamed3796() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3796(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3797() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3797(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3798() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3798(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterServerConfig = 0;
buildServerConfig() {
  var o = new api.ServerConfig();
  buildCounterServerConfig++;
  if (buildCounterServerConfig < 3) {
    o.defaultClusterVersion = "foo";
    o.defaultImageType = "foo";
    o.validImageTypes = buildUnnamed3796();
    o.validMasterVersions = buildUnnamed3797();
    o.validNodeVersions = buildUnnamed3798();
  }
  buildCounterServerConfig--;
  return o;
}

checkServerConfig(api.ServerConfig o) {
  buildCounterServerConfig++;
  if (buildCounterServerConfig < 3) {
    unittest.expect(o.defaultClusterVersion, unittest.equals('foo'));
    unittest.expect(o.defaultImageType, unittest.equals('foo'));
    checkUnnamed3796(o.validImageTypes);
    checkUnnamed3797(o.validMasterVersions);
    checkUnnamed3798(o.validNodeVersions);
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

buildUnnamed3799() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3799(core.Map<core.String, core.String> o) {
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
    o.resourceLabels = buildUnnamed3799();
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
    checkUnnamed3799(o.resourceLabels);
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

buildUnnamed3800() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3800(core.List<core.String> o) {
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
    o.locations = buildUnnamed3800();
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
    checkUnnamed3800(o.locations);
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

core.int buildCounterUpdateNodePoolRequest = 0;
buildUpdateNodePoolRequest() {
  var o = new api.UpdateNodePoolRequest();
  buildCounterUpdateNodePoolRequest++;
  if (buildCounterUpdateNodePoolRequest < 3) {
    o.clusterId = "foo";
    o.imageType = "foo";
    o.name = "foo";
    o.nodePoolId = "foo";
    o.nodeVersion = "foo";
    o.projectId = "foo";
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nodePoolId, unittest.equals('foo'));
    unittest.expect(o.nodeVersion, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterUpdateNodePoolRequest--;
}

buildUnnamed3801() {
  var o = new core.List<api.UsableSubnetworkSecondaryRange>();
  o.add(buildUsableSubnetworkSecondaryRange());
  o.add(buildUsableSubnetworkSecondaryRange());
  return o;
}

checkUnnamed3801(core.List<api.UsableSubnetworkSecondaryRange> o) {
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
    o.secondaryIpRanges = buildUnnamed3801();
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
    checkUnnamed3801(o.secondaryIpRanges);
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

  unittest.group("obj-schema-AutoUpgradeOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoUpgradeOptions();
      var od = new api.AutoUpgradeOptions.fromJson(o.toJson());
      checkAutoUpgradeOptions(od);
    });
  });

  unittest.group("obj-schema-BigQueryDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildBigQueryDestination();
      var od = new api.BigQueryDestination.fromJson(o.toJson());
      checkBigQueryDestination(od);
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

  unittest.group("obj-schema-Cluster", () {
    unittest.test("to-json--from-json", () {
      var o = buildCluster();
      var od = new api.Cluster.fromJson(o.toJson());
      checkCluster(od);
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

  unittest.group("obj-schema-PrivateClusterConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrivateClusterConfig();
      var od = new api.PrivateClusterConfig.fromJson(o.toJson());
      checkPrivateClusterConfig(od);
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

  unittest.group("resource-ProjectsAggregatedUsableSubnetworksResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAggregatedUsableSubnetworksResourceApi res =
          new api.ContainerApi(mock).projects.aggregated.usableSubnetworks;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListUsableSubnetworksResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
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
      var arg_clusterId = "foo";
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
            queryMap["clusterId"].first, unittest.equals(arg_clusterId));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
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
              clusterId: arg_clusterId,
              projectId: arg_projectId,
              zone: arg_zone,
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
        var resp = convert.json.encode(buildListClustersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              projectId: arg_projectId, zone: arg_zone, $fields: arg_$fields)
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
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_nodePoolId = "foo";
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
        unittest.expect(
            queryMap["nodePoolId"].first, unittest.equals(arg_nodePoolId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              projectId: arg_projectId,
              zone: arg_zone,
              clusterId: arg_clusterId,
              nodePoolId: arg_nodePoolId,
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
      var arg_projectId = "foo";
      var arg_zone = "foo";
      var arg_clusterId = "foo";
      var arg_nodePoolId = "foo";
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
        unittest.expect(
            queryMap["nodePoolId"].first, unittest.equals(arg_nodePoolId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNodePool());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              projectId: arg_projectId,
              zone: arg_zone,
              clusterId: arg_clusterId,
              nodePoolId: arg_nodePoolId,
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
        var resp = convert.json.encode(buildListNodePoolsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              projectId: arg_projectId,
              zone: arg_zone,
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
            queryMap["operationId"].first, unittest.equals(arg_operationId));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
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
              projectId: arg_projectId,
              zone: arg_zone,
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
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              projectId: arg_projectId, zone: arg_zone, $fields: arg_$fields)
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
