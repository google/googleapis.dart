library googleapis_beta.manager.v1beta2.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis_beta/manager/v1beta2.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAccessConfig = 0;
buildAccessConfig() {
  var o = new api.AccessConfig();
  buildCounterAccessConfig++;
  if (buildCounterAccessConfig < 3) {
    o.name = "foo";
    o.natIp = "foo";
    o.type = "foo";
  }
  buildCounterAccessConfig--;
  return o;
}

checkAccessConfig(api.AccessConfig o) {
  buildCounterAccessConfig++;
  if (buildCounterAccessConfig < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.natIp, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAccessConfig--;
}

buildUnnamed3684() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3684(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAction = 0;
buildAction() {
  var o = new api.Action();
  buildCounterAction++;
  if (buildCounterAction < 3) {
    o.commands = buildUnnamed3684();
    o.timeoutMs = 42;
  }
  buildCounterAction--;
  return o;
}

checkAction(api.Action o) {
  buildCounterAction++;
  if (buildCounterAction < 3) {
    checkUnnamed3684(o.commands);
    unittest.expect(o.timeoutMs, unittest.equals(42));
  }
  buildCounterAction--;
}

buildUnnamed3685() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3685(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAllowedRule = 0;
buildAllowedRule() {
  var o = new api.AllowedRule();
  buildCounterAllowedRule++;
  if (buildCounterAllowedRule < 3) {
    o.IPProtocol = "foo";
    o.ports = buildUnnamed3685();
  }
  buildCounterAllowedRule--;
  return o;
}

checkAllowedRule(api.AllowedRule o) {
  buildCounterAllowedRule++;
  if (buildCounterAllowedRule < 3) {
    unittest.expect(o.IPProtocol, unittest.equals('foo'));
    checkUnnamed3685(o.ports);
  }
  buildCounterAllowedRule--;
}

core.int buildCounterAutoscalingModule = 0;
buildAutoscalingModule() {
  var o = new api.AutoscalingModule();
  buildCounterAutoscalingModule++;
  if (buildCounterAutoscalingModule < 3) {
    o.coolDownPeriodSec = 42;
    o.description = "foo";
    o.maxNumReplicas = 42;
    o.minNumReplicas = 42;
    o.signalType = "foo";
    o.targetModule = "foo";
    o.targetUtilization = 42.0;
  }
  buildCounterAutoscalingModule--;
  return o;
}

checkAutoscalingModule(api.AutoscalingModule o) {
  buildCounterAutoscalingModule++;
  if (buildCounterAutoscalingModule < 3) {
    unittest.expect(o.coolDownPeriodSec, unittest.equals(42));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.maxNumReplicas, unittest.equals(42));
    unittest.expect(o.minNumReplicas, unittest.equals(42));
    unittest.expect(o.signalType, unittest.equals('foo'));
    unittest.expect(o.targetModule, unittest.equals('foo'));
    unittest.expect(o.targetUtilization, unittest.equals(42.0));
  }
  buildCounterAutoscalingModule--;
}

core.int buildCounterAutoscalingModuleStatus = 0;
buildAutoscalingModuleStatus() {
  var o = new api.AutoscalingModuleStatus();
  buildCounterAutoscalingModuleStatus++;
  if (buildCounterAutoscalingModuleStatus < 3) {
    o.autoscalingConfigUrl = "foo";
  }
  buildCounterAutoscalingModuleStatus--;
  return o;
}

checkAutoscalingModuleStatus(api.AutoscalingModuleStatus o) {
  buildCounterAutoscalingModuleStatus++;
  if (buildCounterAutoscalingModuleStatus < 3) {
    unittest.expect(o.autoscalingConfigUrl, unittest.equals('foo'));
  }
  buildCounterAutoscalingModuleStatus--;
}

core.int buildCounterDeployState = 0;
buildDeployState() {
  var o = new api.DeployState();
  buildCounterDeployState++;
  if (buildCounterDeployState < 3) {
    o.details = "foo";
    o.status = "foo";
  }
  buildCounterDeployState--;
  return o;
}

checkDeployState(api.DeployState o) {
  buildCounterDeployState++;
  if (buildCounterDeployState < 3) {
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterDeployState--;
}

buildUnnamed3686() {
  var o = new core.Map<core.String, api.ModuleStatus>();
  o["x"] = buildModuleStatus();
  o["y"] = buildModuleStatus();
  return o;
}

checkUnnamed3686(core.Map<core.String, api.ModuleStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkModuleStatus(o["x"]);
  checkModuleStatus(o["y"]);
}

buildUnnamed3687() {
  var o = new core.List<api.ParamOverride>();
  o.add(buildParamOverride());
  o.add(buildParamOverride());
  return o;
}

checkUnnamed3687(core.List<api.ParamOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParamOverride(o[0]);
  checkParamOverride(o[1]);
}

core.int buildCounterDeployment = 0;
buildDeployment() {
  var o = new api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.creationDate = "foo";
    o.description = "foo";
    o.modules = buildUnnamed3686();
    o.name = "foo";
    o.overrides = buildUnnamed3687();
    o.state = buildDeployState();
    o.templateName = "foo";
  }
  buildCounterDeployment--;
  return o;
}

checkDeployment(api.Deployment o) {
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    unittest.expect(o.creationDate, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3686(o.modules);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3687(o.overrides);
    checkDeployState(o.state);
    unittest.expect(o.templateName, unittest.equals('foo'));
  }
  buildCounterDeployment--;
}

buildUnnamed3688() {
  var o = new core.List<api.Deployment>();
  o.add(buildDeployment());
  o.add(buildDeployment());
  return o;
}

checkUnnamed3688(core.List<api.Deployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployment(o[0]);
  checkDeployment(o[1]);
}

core.int buildCounterDeploymentsListResponse = 0;
buildDeploymentsListResponse() {
  var o = new api.DeploymentsListResponse();
  buildCounterDeploymentsListResponse++;
  if (buildCounterDeploymentsListResponse < 3) {
    o.nextPageToken = "foo";
    o.resources = buildUnnamed3688();
  }
  buildCounterDeploymentsListResponse--;
  return o;
}

checkDeploymentsListResponse(api.DeploymentsListResponse o) {
  buildCounterDeploymentsListResponse++;
  if (buildCounterDeploymentsListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3688(o.resources);
  }
  buildCounterDeploymentsListResponse--;
}

core.int buildCounterDiskAttachment = 0;
buildDiskAttachment() {
  var o = new api.DiskAttachment();
  buildCounterDiskAttachment++;
  if (buildCounterDiskAttachment < 3) {
    o.deviceName = "foo";
    o.index = 42;
  }
  buildCounterDiskAttachment--;
  return o;
}

checkDiskAttachment(api.DiskAttachment o) {
  buildCounterDiskAttachment++;
  if (buildCounterDiskAttachment < 3) {
    unittest.expect(o.deviceName, unittest.equals('foo'));
    unittest.expect(o.index, unittest.equals(42));
  }
  buildCounterDiskAttachment--;
}

core.int buildCounterEnvVariable = 0;
buildEnvVariable() {
  var o = new api.EnvVariable();
  buildCounterEnvVariable++;
  if (buildCounterEnvVariable < 3) {
    o.hidden = true;
    o.value = "foo";
  }
  buildCounterEnvVariable--;
  return o;
}

checkEnvVariable(api.EnvVariable o) {
  buildCounterEnvVariable++;
  if (buildCounterEnvVariable < 3) {
    unittest.expect(o.hidden, unittest.isTrue);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterEnvVariable--;
}

core.int buildCounterExistingDisk = 0;
buildExistingDisk() {
  var o = new api.ExistingDisk();
  buildCounterExistingDisk++;
  if (buildCounterExistingDisk < 3) {
    o.attachment = buildDiskAttachment();
    o.source = "foo";
  }
  buildCounterExistingDisk--;
  return o;
}

checkExistingDisk(api.ExistingDisk o) {
  buildCounterExistingDisk++;
  if (buildCounterExistingDisk < 3) {
    checkDiskAttachment(o.attachment);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterExistingDisk--;
}

buildUnnamed3689() {
  var o = new core.List<api.AllowedRule>();
  o.add(buildAllowedRule());
  o.add(buildAllowedRule());
  return o;
}

checkUnnamed3689(core.List<api.AllowedRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAllowedRule(o[0]);
  checkAllowedRule(o[1]);
}

buildUnnamed3690() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3690(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3691() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3691(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3692() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3692(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFirewallModule = 0;
buildFirewallModule() {
  var o = new api.FirewallModule();
  buildCounterFirewallModule++;
  if (buildCounterFirewallModule < 3) {
    o.allowed = buildUnnamed3689();
    o.description = "foo";
    o.network = "foo";
    o.sourceRanges = buildUnnamed3690();
    o.sourceTags = buildUnnamed3691();
    o.targetTags = buildUnnamed3692();
  }
  buildCounterFirewallModule--;
  return o;
}

checkFirewallModule(api.FirewallModule o) {
  buildCounterFirewallModule++;
  if (buildCounterFirewallModule < 3) {
    checkUnnamed3689(o.allowed);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    checkUnnamed3690(o.sourceRanges);
    checkUnnamed3691(o.sourceTags);
    checkUnnamed3692(o.targetTags);
  }
  buildCounterFirewallModule--;
}

core.int buildCounterFirewallModuleStatus = 0;
buildFirewallModuleStatus() {
  var o = new api.FirewallModuleStatus();
  buildCounterFirewallModuleStatus++;
  if (buildCounterFirewallModuleStatus < 3) {
    o.firewallUrl = "foo";
  }
  buildCounterFirewallModuleStatus--;
  return o;
}

checkFirewallModuleStatus(api.FirewallModuleStatus o) {
  buildCounterFirewallModuleStatus++;
  if (buildCounterFirewallModuleStatus < 3) {
    unittest.expect(o.firewallUrl, unittest.equals('foo'));
  }
  buildCounterFirewallModuleStatus--;
}

core.int buildCounterHealthCheckModule = 0;
buildHealthCheckModule() {
  var o = new api.HealthCheckModule();
  buildCounterHealthCheckModule++;
  if (buildCounterHealthCheckModule < 3) {
    o.checkIntervalSec = 42;
    o.description = "foo";
    o.healthyThreshold = 42;
    o.host = "foo";
    o.path = "foo";
    o.port = 42;
    o.timeoutSec = 42;
    o.unhealthyThreshold = 42;
  }
  buildCounterHealthCheckModule--;
  return o;
}

checkHealthCheckModule(api.HealthCheckModule o) {
  buildCounterHealthCheckModule++;
  if (buildCounterHealthCheckModule < 3) {
    unittest.expect(o.checkIntervalSec, unittest.equals(42));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.healthyThreshold, unittest.equals(42));
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
    unittest.expect(o.timeoutSec, unittest.equals(42));
    unittest.expect(o.unhealthyThreshold, unittest.equals(42));
  }
  buildCounterHealthCheckModule--;
}

core.int buildCounterHealthCheckModuleStatus = 0;
buildHealthCheckModuleStatus() {
  var o = new api.HealthCheckModuleStatus();
  buildCounterHealthCheckModuleStatus++;
  if (buildCounterHealthCheckModuleStatus < 3) {
    o.healthCheckUrl = "foo";
  }
  buildCounterHealthCheckModuleStatus--;
  return o;
}

checkHealthCheckModuleStatus(api.HealthCheckModuleStatus o) {
  buildCounterHealthCheckModuleStatus++;
  if (buildCounterHealthCheckModuleStatus < 3) {
    unittest.expect(o.healthCheckUrl, unittest.equals('foo'));
  }
  buildCounterHealthCheckModuleStatus--;
}

buildUnnamed3693() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3693(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3694() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3694(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLbModule = 0;
buildLbModule() {
  var o = new api.LbModule();
  buildCounterLbModule++;
  if (buildCounterLbModule < 3) {
    o.description = "foo";
    o.healthChecks = buildUnnamed3693();
    o.ipAddress = "foo";
    o.ipProtocol = "foo";
    o.portRange = "foo";
    o.sessionAffinity = "foo";
    o.targetModules = buildUnnamed3694();
  }
  buildCounterLbModule--;
  return o;
}

checkLbModule(api.LbModule o) {
  buildCounterLbModule++;
  if (buildCounterLbModule < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3693(o.healthChecks);
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    unittest.expect(o.ipProtocol, unittest.equals('foo'));
    unittest.expect(o.portRange, unittest.equals('foo'));
    unittest.expect(o.sessionAffinity, unittest.equals('foo'));
    checkUnnamed3694(o.targetModules);
  }
  buildCounterLbModule--;
}

core.int buildCounterLbModuleStatus = 0;
buildLbModuleStatus() {
  var o = new api.LbModuleStatus();
  buildCounterLbModuleStatus++;
  if (buildCounterLbModuleStatus < 3) {
    o.forwardingRuleUrl = "foo";
    o.targetPoolUrl = "foo";
  }
  buildCounterLbModuleStatus--;
  return o;
}

checkLbModuleStatus(api.LbModuleStatus o) {
  buildCounterLbModuleStatus++;
  if (buildCounterLbModuleStatus < 3) {
    unittest.expect(o.forwardingRuleUrl, unittest.equals('foo'));
    unittest.expect(o.targetPoolUrl, unittest.equals('foo'));
  }
  buildCounterLbModuleStatus--;
}

buildUnnamed3695() {
  var o = new core.List<api.MetadataItem>();
  o.add(buildMetadataItem());
  o.add(buildMetadataItem());
  return o;
}

checkUnnamed3695(core.List<api.MetadataItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetadataItem(o[0]);
  checkMetadataItem(o[1]);
}

core.int buildCounterMetadata = 0;
buildMetadata() {
  var o = new api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.fingerPrint = "foo";
    o.items = buildUnnamed3695();
  }
  buildCounterMetadata--;
  return o;
}

checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    unittest.expect(o.fingerPrint, unittest.equals('foo'));
    checkUnnamed3695(o.items);
  }
  buildCounterMetadata--;
}

core.int buildCounterMetadataItem = 0;
buildMetadataItem() {
  var o = new api.MetadataItem();
  buildCounterMetadataItem++;
  if (buildCounterMetadataItem < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterMetadataItem--;
  return o;
}

checkMetadataItem(api.MetadataItem o) {
  buildCounterMetadataItem++;
  if (buildCounterMetadataItem < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterMetadataItem--;
}

core.int buildCounterModule = 0;
buildModule() {
  var o = new api.Module();
  buildCounterModule++;
  if (buildCounterModule < 3) {
    o.autoscalingModule = buildAutoscalingModule();
    o.firewallModule = buildFirewallModule();
    o.healthCheckModule = buildHealthCheckModule();
    o.lbModule = buildLbModule();
    o.networkModule = buildNetworkModule();
    o.replicaPoolModule = buildReplicaPoolModule();
    o.type = "foo";
  }
  buildCounterModule--;
  return o;
}

checkModule(api.Module o) {
  buildCounterModule++;
  if (buildCounterModule < 3) {
    checkAutoscalingModule(o.autoscalingModule);
    checkFirewallModule(o.firewallModule);
    checkHealthCheckModule(o.healthCheckModule);
    checkLbModule(o.lbModule);
    checkNetworkModule(o.networkModule);
    checkReplicaPoolModule(o.replicaPoolModule);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterModule--;
}

core.int buildCounterModuleStatus = 0;
buildModuleStatus() {
  var o = new api.ModuleStatus();
  buildCounterModuleStatus++;
  if (buildCounterModuleStatus < 3) {
    o.autoscalingModuleStatus = buildAutoscalingModuleStatus();
    o.firewallModuleStatus = buildFirewallModuleStatus();
    o.healthCheckModuleStatus = buildHealthCheckModuleStatus();
    o.lbModuleStatus = buildLbModuleStatus();
    o.networkModuleStatus = buildNetworkModuleStatus();
    o.replicaPoolModuleStatus = buildReplicaPoolModuleStatus();
    o.state = buildDeployState();
    o.type = "foo";
  }
  buildCounterModuleStatus--;
  return o;
}

checkModuleStatus(api.ModuleStatus o) {
  buildCounterModuleStatus++;
  if (buildCounterModuleStatus < 3) {
    checkAutoscalingModuleStatus(o.autoscalingModuleStatus);
    checkFirewallModuleStatus(o.firewallModuleStatus);
    checkHealthCheckModuleStatus(o.healthCheckModuleStatus);
    checkLbModuleStatus(o.lbModuleStatus);
    checkNetworkModuleStatus(o.networkModuleStatus);
    checkReplicaPoolModuleStatus(o.replicaPoolModuleStatus);
    checkDeployState(o.state);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterModuleStatus--;
}

buildUnnamed3696() {
  var o = new core.List<api.AccessConfig>();
  o.add(buildAccessConfig());
  o.add(buildAccessConfig());
  return o;
}

checkUnnamed3696(core.List<api.AccessConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessConfig(o[0]);
  checkAccessConfig(o[1]);
}

core.int buildCounterNetworkInterface = 0;
buildNetworkInterface() {
  var o = new api.NetworkInterface();
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    o.accessConfigs = buildUnnamed3696();
    o.name = "foo";
    o.network = "foo";
    o.networkIp = "foo";
  }
  buildCounterNetworkInterface--;
  return o;
}

checkNetworkInterface(api.NetworkInterface o) {
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    checkUnnamed3696(o.accessConfigs);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.networkIp, unittest.equals('foo'));
  }
  buildCounterNetworkInterface--;
}

core.int buildCounterNetworkModule = 0;
buildNetworkModule() {
  var o = new api.NetworkModule();
  buildCounterNetworkModule++;
  if (buildCounterNetworkModule < 3) {
    o.IPv4Range = "foo";
    o.description = "foo";
    o.gatewayIPv4 = "foo";
  }
  buildCounterNetworkModule--;
  return o;
}

checkNetworkModule(api.NetworkModule o) {
  buildCounterNetworkModule++;
  if (buildCounterNetworkModule < 3) {
    unittest.expect(o.IPv4Range, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.gatewayIPv4, unittest.equals('foo'));
  }
  buildCounterNetworkModule--;
}

core.int buildCounterNetworkModuleStatus = 0;
buildNetworkModuleStatus() {
  var o = new api.NetworkModuleStatus();
  buildCounterNetworkModuleStatus++;
  if (buildCounterNetworkModuleStatus < 3) {
    o.networkUrl = "foo";
  }
  buildCounterNetworkModuleStatus--;
  return o;
}

checkNetworkModuleStatus(api.NetworkModuleStatus o) {
  buildCounterNetworkModuleStatus++;
  if (buildCounterNetworkModuleStatus < 3) {
    unittest.expect(o.networkUrl, unittest.equals('foo'));
  }
  buildCounterNetworkModuleStatus--;
}

core.int buildCounterNewDisk = 0;
buildNewDisk() {
  var o = new api.NewDisk();
  buildCounterNewDisk++;
  if (buildCounterNewDisk < 3) {
    o.attachment = buildDiskAttachment();
    o.autoDelete = true;
    o.boot = true;
    o.initializeParams = buildNewDiskInitializeParams();
  }
  buildCounterNewDisk--;
  return o;
}

checkNewDisk(api.NewDisk o) {
  buildCounterNewDisk++;
  if (buildCounterNewDisk < 3) {
    checkDiskAttachment(o.attachment);
    unittest.expect(o.autoDelete, unittest.isTrue);
    unittest.expect(o.boot, unittest.isTrue);
    checkNewDiskInitializeParams(o.initializeParams);
  }
  buildCounterNewDisk--;
}

core.int buildCounterNewDiskInitializeParams = 0;
buildNewDiskInitializeParams() {
  var o = new api.NewDiskInitializeParams();
  buildCounterNewDiskInitializeParams++;
  if (buildCounterNewDiskInitializeParams < 3) {
    o.diskSizeGb = "foo";
    o.diskType = "foo";
    o.sourceImage = "foo";
  }
  buildCounterNewDiskInitializeParams--;
  return o;
}

checkNewDiskInitializeParams(api.NewDiskInitializeParams o) {
  buildCounterNewDiskInitializeParams++;
  if (buildCounterNewDiskInitializeParams < 3) {
    unittest.expect(o.diskSizeGb, unittest.equals('foo'));
    unittest.expect(o.diskType, unittest.equals('foo'));
    unittest.expect(o.sourceImage, unittest.equals('foo'));
  }
  buildCounterNewDiskInitializeParams--;
}

core.int buildCounterParamOverride = 0;
buildParamOverride() {
  var o = new api.ParamOverride();
  buildCounterParamOverride++;
  if (buildCounterParamOverride < 3) {
    o.path = "foo";
    o.value = "foo";
  }
  buildCounterParamOverride--;
  return o;
}

checkParamOverride(api.ParamOverride o) {
  buildCounterParamOverride++;
  if (buildCounterParamOverride < 3) {
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterParamOverride--;
}

buildUnnamed3697() {
  var o = new core.Map<core.String, api.EnvVariable>();
  o["x"] = buildEnvVariable();
  o["y"] = buildEnvVariable();
  return o;
}

checkUnnamed3697(core.Map<core.String, api.EnvVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvVariable(o["x"]);
  checkEnvVariable(o["y"]);
}

buildUnnamed3698() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3698(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReplicaPoolModule = 0;
buildReplicaPoolModule() {
  var o = new api.ReplicaPoolModule();
  buildCounterReplicaPoolModule++;
  if (buildCounterReplicaPoolModule < 3) {
    o.envVariables = buildUnnamed3697();
    o.healthChecks = buildUnnamed3698();
    o.numReplicas = 42;
    o.replicaPoolParams = buildReplicaPoolParams();
    o.resourceView = "foo";
  }
  buildCounterReplicaPoolModule--;
  return o;
}

checkReplicaPoolModule(api.ReplicaPoolModule o) {
  buildCounterReplicaPoolModule++;
  if (buildCounterReplicaPoolModule < 3) {
    checkUnnamed3697(o.envVariables);
    checkUnnamed3698(o.healthChecks);
    unittest.expect(o.numReplicas, unittest.equals(42));
    checkReplicaPoolParams(o.replicaPoolParams);
    unittest.expect(o.resourceView, unittest.equals('foo'));
  }
  buildCounterReplicaPoolModule--;
}

core.int buildCounterReplicaPoolModuleStatus = 0;
buildReplicaPoolModuleStatus() {
  var o = new api.ReplicaPoolModuleStatus();
  buildCounterReplicaPoolModuleStatus++;
  if (buildCounterReplicaPoolModuleStatus < 3) {
    o.replicaPoolUrl = "foo";
    o.resourceViewUrl = "foo";
  }
  buildCounterReplicaPoolModuleStatus--;
  return o;
}

checkReplicaPoolModuleStatus(api.ReplicaPoolModuleStatus o) {
  buildCounterReplicaPoolModuleStatus++;
  if (buildCounterReplicaPoolModuleStatus < 3) {
    unittest.expect(o.replicaPoolUrl, unittest.equals('foo'));
    unittest.expect(o.resourceViewUrl, unittest.equals('foo'));
  }
  buildCounterReplicaPoolModuleStatus--;
}

core.int buildCounterReplicaPoolParams = 0;
buildReplicaPoolParams() {
  var o = new api.ReplicaPoolParams();
  buildCounterReplicaPoolParams++;
  if (buildCounterReplicaPoolParams < 3) {
    o.v1beta1 = buildReplicaPoolParamsV1Beta1();
  }
  buildCounterReplicaPoolParams--;
  return o;
}

checkReplicaPoolParams(api.ReplicaPoolParams o) {
  buildCounterReplicaPoolParams++;
  if (buildCounterReplicaPoolParams < 3) {
    checkReplicaPoolParamsV1Beta1(o.v1beta1);
  }
  buildCounterReplicaPoolParams--;
}

buildUnnamed3699() {
  var o = new core.List<api.ExistingDisk>();
  o.add(buildExistingDisk());
  o.add(buildExistingDisk());
  return o;
}

checkUnnamed3699(core.List<api.ExistingDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExistingDisk(o[0]);
  checkExistingDisk(o[1]);
}

buildUnnamed3700() {
  var o = new core.List<api.NewDisk>();
  o.add(buildNewDisk());
  o.add(buildNewDisk());
  return o;
}

checkUnnamed3700(core.List<api.NewDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNewDisk(o[0]);
  checkNewDisk(o[1]);
}

buildUnnamed3701() {
  var o = new core.List<api.NetworkInterface>();
  o.add(buildNetworkInterface());
  o.add(buildNetworkInterface());
  return o;
}

checkUnnamed3701(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
}

buildUnnamed3702() {
  var o = new core.List<api.ServiceAccount>();
  o.add(buildServiceAccount());
  o.add(buildServiceAccount());
  return o;
}

checkUnnamed3702(core.List<api.ServiceAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccount(o[0]);
  checkServiceAccount(o[1]);
}

core.int buildCounterReplicaPoolParamsV1Beta1 = 0;
buildReplicaPoolParamsV1Beta1() {
  var o = new api.ReplicaPoolParamsV1Beta1();
  buildCounterReplicaPoolParamsV1Beta1++;
  if (buildCounterReplicaPoolParamsV1Beta1 < 3) {
    o.autoRestart = true;
    o.baseInstanceName = "foo";
    o.canIpForward = true;
    o.description = "foo";
    o.disksToAttach = buildUnnamed3699();
    o.disksToCreate = buildUnnamed3700();
    o.initAction = "foo";
    o.machineType = "foo";
    o.metadata = buildMetadata();
    o.networkInterfaces = buildUnnamed3701();
    o.onHostMaintenance = "foo";
    o.serviceAccounts = buildUnnamed3702();
    o.tags = buildTag();
    o.zone = "foo";
  }
  buildCounterReplicaPoolParamsV1Beta1--;
  return o;
}

checkReplicaPoolParamsV1Beta1(api.ReplicaPoolParamsV1Beta1 o) {
  buildCounterReplicaPoolParamsV1Beta1++;
  if (buildCounterReplicaPoolParamsV1Beta1 < 3) {
    unittest.expect(o.autoRestart, unittest.isTrue);
    unittest.expect(o.baseInstanceName, unittest.equals('foo'));
    unittest.expect(o.canIpForward, unittest.isTrue);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3699(o.disksToAttach);
    checkUnnamed3700(o.disksToCreate);
    unittest.expect(o.initAction, unittest.equals('foo'));
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkMetadata(o.metadata);
    checkUnnamed3701(o.networkInterfaces);
    unittest.expect(o.onHostMaintenance, unittest.equals('foo'));
    checkUnnamed3702(o.serviceAccounts);
    checkTag(o.tags);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterReplicaPoolParamsV1Beta1--;
}

buildUnnamed3703() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3703(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterServiceAccount = 0;
buildServiceAccount() {
  var o = new api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.email = "foo";
    o.scopes = buildUnnamed3703();
  }
  buildCounterServiceAccount--;
  return o;
}

checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    checkUnnamed3703(o.scopes);
  }
  buildCounterServiceAccount--;
}

buildUnnamed3704() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3704(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTag = 0;
buildTag() {
  var o = new api.Tag();
  buildCounterTag++;
  if (buildCounterTag < 3) {
    o.fingerPrint = "foo";
    o.items = buildUnnamed3704();
  }
  buildCounterTag--;
  return o;
}

checkTag(api.Tag o) {
  buildCounterTag++;
  if (buildCounterTag < 3) {
    unittest.expect(o.fingerPrint, unittest.equals('foo'));
    checkUnnamed3704(o.items);
  }
  buildCounterTag--;
}

buildUnnamed3705() {
  var o = new core.Map<core.String, api.Action>();
  o["x"] = buildAction();
  o["y"] = buildAction();
  return o;
}

checkUnnamed3705(core.Map<core.String, api.Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAction(o["x"]);
  checkAction(o["y"]);
}

buildUnnamed3706() {
  var o = new core.Map<core.String, api.Module>();
  o["x"] = buildModule();
  o["y"] = buildModule();
  return o;
}

checkUnnamed3706(core.Map<core.String, api.Module> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkModule(o["x"]);
  checkModule(o["y"]);
}

core.int buildCounterTemplate = 0;
buildTemplate() {
  var o = new api.Template();
  buildCounterTemplate++;
  if (buildCounterTemplate < 3) {
    o.actions = buildUnnamed3705();
    o.description = "foo";
    o.modules = buildUnnamed3706();
    o.name = "foo";
  }
  buildCounterTemplate--;
  return o;
}

checkTemplate(api.Template o) {
  buildCounterTemplate++;
  if (buildCounterTemplate < 3) {
    checkUnnamed3705(o.actions);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3706(o.modules);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterTemplate--;
}

buildUnnamed3707() {
  var o = new core.List<api.Template>();
  o.add(buildTemplate());
  o.add(buildTemplate());
  return o;
}

checkUnnamed3707(core.List<api.Template> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTemplate(o[0]);
  checkTemplate(o[1]);
}

core.int buildCounterTemplatesListResponse = 0;
buildTemplatesListResponse() {
  var o = new api.TemplatesListResponse();
  buildCounterTemplatesListResponse++;
  if (buildCounterTemplatesListResponse < 3) {
    o.nextPageToken = "foo";
    o.resources = buildUnnamed3707();
  }
  buildCounterTemplatesListResponse--;
  return o;
}

checkTemplatesListResponse(api.TemplatesListResponse o) {
  buildCounterTemplatesListResponse++;
  if (buildCounterTemplatesListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3707(o.resources);
  }
  buildCounterTemplatesListResponse--;
}


main() {
  unittest.group("obj-schema-AccessConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccessConfig();
      var od = new api.AccessConfig.fromJson(o.toJson());
      checkAccessConfig(od);
    });
  });


  unittest.group("obj-schema-Action", () {
    unittest.test("to-json--from-json", () {
      var o = buildAction();
      var od = new api.Action.fromJson(o.toJson());
      checkAction(od);
    });
  });


  unittest.group("obj-schema-AllowedRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildAllowedRule();
      var od = new api.AllowedRule.fromJson(o.toJson());
      checkAllowedRule(od);
    });
  });


  unittest.group("obj-schema-AutoscalingModule", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalingModule();
      var od = new api.AutoscalingModule.fromJson(o.toJson());
      checkAutoscalingModule(od);
    });
  });


  unittest.group("obj-schema-AutoscalingModuleStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalingModuleStatus();
      var od = new api.AutoscalingModuleStatus.fromJson(o.toJson());
      checkAutoscalingModuleStatus(od);
    });
  });


  unittest.group("obj-schema-DeployState", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeployState();
      var od = new api.DeployState.fromJson(o.toJson());
      checkDeployState(od);
    });
  });


  unittest.group("obj-schema-Deployment", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeployment();
      var od = new api.Deployment.fromJson(o.toJson());
      checkDeployment(od);
    });
  });


  unittest.group("obj-schema-DeploymentsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeploymentsListResponse();
      var od = new api.DeploymentsListResponse.fromJson(o.toJson());
      checkDeploymentsListResponse(od);
    });
  });


  unittest.group("obj-schema-DiskAttachment", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiskAttachment();
      var od = new api.DiskAttachment.fromJson(o.toJson());
      checkDiskAttachment(od);
    });
  });


  unittest.group("obj-schema-EnvVariable", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnvVariable();
      var od = new api.EnvVariable.fromJson(o.toJson());
      checkEnvVariable(od);
    });
  });


  unittest.group("obj-schema-ExistingDisk", () {
    unittest.test("to-json--from-json", () {
      var o = buildExistingDisk();
      var od = new api.ExistingDisk.fromJson(o.toJson());
      checkExistingDisk(od);
    });
  });


  unittest.group("obj-schema-FirewallModule", () {
    unittest.test("to-json--from-json", () {
      var o = buildFirewallModule();
      var od = new api.FirewallModule.fromJson(o.toJson());
      checkFirewallModule(od);
    });
  });


  unittest.group("obj-schema-FirewallModuleStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildFirewallModuleStatus();
      var od = new api.FirewallModuleStatus.fromJson(o.toJson());
      checkFirewallModuleStatus(od);
    });
  });


  unittest.group("obj-schema-HealthCheckModule", () {
    unittest.test("to-json--from-json", () {
      var o = buildHealthCheckModule();
      var od = new api.HealthCheckModule.fromJson(o.toJson());
      checkHealthCheckModule(od);
    });
  });


  unittest.group("obj-schema-HealthCheckModuleStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildHealthCheckModuleStatus();
      var od = new api.HealthCheckModuleStatus.fromJson(o.toJson());
      checkHealthCheckModuleStatus(od);
    });
  });


  unittest.group("obj-schema-LbModule", () {
    unittest.test("to-json--from-json", () {
      var o = buildLbModule();
      var od = new api.LbModule.fromJson(o.toJson());
      checkLbModule(od);
    });
  });


  unittest.group("obj-schema-LbModuleStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildLbModuleStatus();
      var od = new api.LbModuleStatus.fromJson(o.toJson());
      checkLbModuleStatus(od);
    });
  });


  unittest.group("obj-schema-Metadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetadata();
      var od = new api.Metadata.fromJson(o.toJson());
      checkMetadata(od);
    });
  });


  unittest.group("obj-schema-MetadataItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetadataItem();
      var od = new api.MetadataItem.fromJson(o.toJson());
      checkMetadataItem(od);
    });
  });


  unittest.group("obj-schema-Module", () {
    unittest.test("to-json--from-json", () {
      var o = buildModule();
      var od = new api.Module.fromJson(o.toJson());
      checkModule(od);
    });
  });


  unittest.group("obj-schema-ModuleStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildModuleStatus();
      var od = new api.ModuleStatus.fromJson(o.toJson());
      checkModuleStatus(od);
    });
  });


  unittest.group("obj-schema-NetworkInterface", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkInterface();
      var od = new api.NetworkInterface.fromJson(o.toJson());
      checkNetworkInterface(od);
    });
  });


  unittest.group("obj-schema-NetworkModule", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkModule();
      var od = new api.NetworkModule.fromJson(o.toJson());
      checkNetworkModule(od);
    });
  });


  unittest.group("obj-schema-NetworkModuleStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkModuleStatus();
      var od = new api.NetworkModuleStatus.fromJson(o.toJson());
      checkNetworkModuleStatus(od);
    });
  });


  unittest.group("obj-schema-NewDisk", () {
    unittest.test("to-json--from-json", () {
      var o = buildNewDisk();
      var od = new api.NewDisk.fromJson(o.toJson());
      checkNewDisk(od);
    });
  });


  unittest.group("obj-schema-NewDiskInitializeParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildNewDiskInitializeParams();
      var od = new api.NewDiskInitializeParams.fromJson(o.toJson());
      checkNewDiskInitializeParams(od);
    });
  });


  unittest.group("obj-schema-ParamOverride", () {
    unittest.test("to-json--from-json", () {
      var o = buildParamOverride();
      var od = new api.ParamOverride.fromJson(o.toJson());
      checkParamOverride(od);
    });
  });


  unittest.group("obj-schema-ReplicaPoolModule", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplicaPoolModule();
      var od = new api.ReplicaPoolModule.fromJson(o.toJson());
      checkReplicaPoolModule(od);
    });
  });


  unittest.group("obj-schema-ReplicaPoolModuleStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplicaPoolModuleStatus();
      var od = new api.ReplicaPoolModuleStatus.fromJson(o.toJson());
      checkReplicaPoolModuleStatus(od);
    });
  });


  unittest.group("obj-schema-ReplicaPoolParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplicaPoolParams();
      var od = new api.ReplicaPoolParams.fromJson(o.toJson());
      checkReplicaPoolParams(od);
    });
  });


  unittest.group("obj-schema-ReplicaPoolParamsV1Beta1", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplicaPoolParamsV1Beta1();
      var od = new api.ReplicaPoolParamsV1Beta1.fromJson(o.toJson());
      checkReplicaPoolParamsV1Beta1(od);
    });
  });


  unittest.group("obj-schema-ServiceAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceAccount();
      var od = new api.ServiceAccount.fromJson(o.toJson());
      checkServiceAccount(od);
    });
  });


  unittest.group("obj-schema-Tag", () {
    unittest.test("to-json--from-json", () {
      var o = buildTag();
      var od = new api.Tag.fromJson(o.toJson());
      checkTag(od);
    });
  });


  unittest.group("obj-schema-Template", () {
    unittest.test("to-json--from-json", () {
      var o = buildTemplate();
      var od = new api.Template.fromJson(o.toJson());
      checkTemplate(od);
    });
  });


  unittest.group("obj-schema-TemplatesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTemplatesListResponse();
      var od = new api.TemplatesListResponse.fromJson(o.toJson());
      checkTemplatesListResponse(od);
    });
  });


  unittest.group("resource-DeploymentsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.DeploymentsResourceApi res = new api.ManagerApi(mock).deployments;
      var arg_projectId = "foo";
      var arg_region = "foo";
      var arg_deploymentName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectId, arg_region, arg_deploymentName).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.DeploymentsResourceApi res = new api.ManagerApi(mock).deployments;
      var arg_projectId = "foo";
      var arg_region = "foo";
      var arg_deploymentName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDeployment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectId, arg_region, arg_deploymentName).then(unittest.expectAsync(((api.Deployment response) {
        checkDeployment(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.DeploymentsResourceApi res = new api.ManagerApi(mock).deployments;
      var arg_request = buildDeployment();
      var arg_projectId = "foo";
      var arg_region = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Deployment.fromJson(json);
        checkDeployment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDeployment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_projectId, arg_region).then(unittest.expectAsync(((api.Deployment response) {
        checkDeployment(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.DeploymentsResourceApi res = new api.ManagerApi(mock).deployments;
      var arg_projectId = "foo";
      var arg_region = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDeploymentsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, arg_region, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.DeploymentsListResponse response) {
        checkDeploymentsListResponse(response);
      })));
    });

  });


  unittest.group("resource-TemplatesResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.TemplatesResourceApi res = new api.ManagerApi(mock).templates;
      var arg_projectId = "foo";
      var arg_templateName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectId, arg_templateName).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.TemplatesResourceApi res = new api.ManagerApi(mock).templates;
      var arg_projectId = "foo";
      var arg_templateName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectId, arg_templateName).then(unittest.expectAsync(((api.Template response) {
        checkTemplate(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.TemplatesResourceApi res = new api.ManagerApi(mock).templates;
      var arg_request = buildTemplate();
      var arg_projectId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Template.fromJson(json);
        checkTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_projectId).then(unittest.expectAsync(((api.Template response) {
        checkTemplate(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.TemplatesResourceApi res = new api.ManagerApi(mock).templates;
      var arg_projectId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTemplatesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.TemplatesListResponse response) {
        checkTemplatesListResponse(response);
      })));
    });

  });


}

