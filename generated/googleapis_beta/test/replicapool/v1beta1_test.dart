library googleapis_beta.replicapool.v1beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/replicapool/v1beta1.dart' as api;

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

buildUnnamed5193() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5193(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5194() {
  var o = new core.List<api.EnvVariable>();
  o.add(buildEnvVariable());
  o.add(buildEnvVariable());
  return o;
}

checkUnnamed5194(core.List<api.EnvVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvVariable(o[0]);
  checkEnvVariable(o[1]);
}

core.int buildCounterAction = 0;
buildAction() {
  var o = new api.Action();
  buildCounterAction++;
  if (buildCounterAction < 3) {
    o.commands = buildUnnamed5193();
    o.envVariables = buildUnnamed5194();
    o.timeoutMilliSeconds = 42;
  }
  buildCounterAction--;
  return o;
}

checkAction(api.Action o) {
  buildCounterAction++;
  if (buildCounterAction < 3) {
    checkUnnamed5193(o.commands);
    checkUnnamed5194(o.envVariables);
    unittest.expect(o.timeoutMilliSeconds, unittest.equals(42));
  }
  buildCounterAction--;
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
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterEnvVariable--;
  return o;
}

checkEnvVariable(api.EnvVariable o) {
  buildCounterEnvVariable++;
  if (buildCounterEnvVariable < 3) {
    unittest.expect(o.hidden, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
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

core.int buildCounterHealthCheck = 0;
buildHealthCheck() {
  var o = new api.HealthCheck();
  buildCounterHealthCheck++;
  if (buildCounterHealthCheck < 3) {
    o.checkIntervalSec = 42;
    o.description = "foo";
    o.healthyThreshold = 42;
    o.host = "foo";
    o.name = "foo";
    o.path = "foo";
    o.port = 42;
    o.timeoutSec = 42;
    o.unhealthyThreshold = 42;
  }
  buildCounterHealthCheck--;
  return o;
}

checkHealthCheck(api.HealthCheck o) {
  buildCounterHealthCheck++;
  if (buildCounterHealthCheck < 3) {
    unittest.expect(o.checkIntervalSec, unittest.equals(42));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.healthyThreshold, unittest.equals(42));
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
    unittest.expect(o.timeoutSec, unittest.equals(42));
    unittest.expect(o.unhealthyThreshold, unittest.equals(42));
  }
  buildCounterHealthCheck--;
}

core.int buildCounterLabel = 0;
buildLabel() {
  var o = new api.Label();
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterLabel--;
  return o;
}

checkLabel(api.Label o) {
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterLabel--;
}

buildUnnamed5195() {
  var o = new core.List<api.MetadataItem>();
  o.add(buildMetadataItem());
  o.add(buildMetadataItem());
  return o;
}

checkUnnamed5195(core.List<api.MetadataItem> o) {
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
    o.items = buildUnnamed5195();
  }
  buildCounterMetadata--;
  return o;
}

checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    unittest.expect(o.fingerPrint, unittest.equals('foo'));
    checkUnnamed5195(o.items);
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

buildUnnamed5196() {
  var o = new core.List<api.AccessConfig>();
  o.add(buildAccessConfig());
  o.add(buildAccessConfig());
  return o;
}

checkUnnamed5196(core.List<api.AccessConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessConfig(o[0]);
  checkAccessConfig(o[1]);
}

core.int buildCounterNetworkInterface = 0;
buildNetworkInterface() {
  var o = new api.NetworkInterface();
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    o.accessConfigs = buildUnnamed5196();
    o.network = "foo";
    o.networkIp = "foo";
  }
  buildCounterNetworkInterface--;
  return o;
}

checkNetworkInterface(api.NetworkInterface o) {
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    checkUnnamed5196(o.accessConfigs);
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.networkIp, unittest.equals('foo'));
  }
  buildCounterNetworkInterface--;
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

buildUnnamed5197() {
  var o = new core.List<api.HealthCheck>();
  o.add(buildHealthCheck());
  o.add(buildHealthCheck());
  return o;
}

checkUnnamed5197(core.List<api.HealthCheck> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHealthCheck(o[0]);
  checkHealthCheck(o[1]);
}

buildUnnamed5198() {
  var o = new core.List<api.Label>();
  o.add(buildLabel());
  o.add(buildLabel());
  return o;
}

checkUnnamed5198(core.List<api.Label> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabel(o[0]);
  checkLabel(o[1]);
}

buildUnnamed5199() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5199(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5200() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5200(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPool = 0;
buildPool() {
  var o = new api.Pool();
  buildCounterPool++;
  if (buildCounterPool < 3) {
    o.autoRestart = true;
    o.baseInstanceName = "foo";
    o.currentNumReplicas = 42;
    o.description = "foo";
    o.healthChecks = buildUnnamed5197();
    o.initialNumReplicas = 42;
    o.labels = buildUnnamed5198();
    o.name = "foo";
    o.numReplicas = 42;
    o.resourceViews = buildUnnamed5199();
    o.selfLink = "foo";
    o.targetPool = "foo";
    o.targetPools = buildUnnamed5200();
    o.template = buildTemplate();
    o.type = "foo";
  }
  buildCounterPool--;
  return o;
}

checkPool(api.Pool o) {
  buildCounterPool++;
  if (buildCounterPool < 3) {
    unittest.expect(o.autoRestart, unittest.isTrue);
    unittest.expect(o.baseInstanceName, unittest.equals('foo'));
    unittest.expect(o.currentNumReplicas, unittest.equals(42));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed5197(o.healthChecks);
    unittest.expect(o.initialNumReplicas, unittest.equals(42));
    checkUnnamed5198(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.numReplicas, unittest.equals(42));
    checkUnnamed5199(o.resourceViews);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.targetPool, unittest.equals('foo'));
    checkUnnamed5200(o.targetPools);
    checkTemplate(o.template);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterPool--;
}

buildUnnamed5201() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5201(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPoolsDeleteRequest = 0;
buildPoolsDeleteRequest() {
  var o = new api.PoolsDeleteRequest();
  buildCounterPoolsDeleteRequest++;
  if (buildCounterPoolsDeleteRequest < 3) {
    o.abandonInstances = buildUnnamed5201();
  }
  buildCounterPoolsDeleteRequest--;
  return o;
}

checkPoolsDeleteRequest(api.PoolsDeleteRequest o) {
  buildCounterPoolsDeleteRequest++;
  if (buildCounterPoolsDeleteRequest < 3) {
    checkUnnamed5201(o.abandonInstances);
  }
  buildCounterPoolsDeleteRequest--;
}

buildUnnamed5202() {
  var o = new core.List<api.Pool>();
  o.add(buildPool());
  o.add(buildPool());
  return o;
}

checkUnnamed5202(core.List<api.Pool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPool(o[0]);
  checkPool(o[1]);
}

core.int buildCounterPoolsListResponse = 0;
buildPoolsListResponse() {
  var o = new api.PoolsListResponse();
  buildCounterPoolsListResponse++;
  if (buildCounterPoolsListResponse < 3) {
    o.nextPageToken = "foo";
    o.resources = buildUnnamed5202();
  }
  buildCounterPoolsListResponse--;
  return o;
}

checkPoolsListResponse(api.PoolsListResponse o) {
  buildCounterPoolsListResponse++;
  if (buildCounterPoolsListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5202(o.resources);
  }
  buildCounterPoolsListResponse--;
}

core.int buildCounterReplica = 0;
buildReplica() {
  var o = new api.Replica();
  buildCounterReplica++;
  if (buildCounterReplica < 3) {
    o.name = "foo";
    o.selfLink = "foo";
    o.status = buildReplicaStatus();
  }
  buildCounterReplica--;
  return o;
}

checkReplica(api.Replica o) {
  buildCounterReplica++;
  if (buildCounterReplica < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkReplicaStatus(o.status);
  }
  buildCounterReplica--;
}

core.int buildCounterReplicaStatus = 0;
buildReplicaStatus() {
  var o = new api.ReplicaStatus();
  buildCounterReplicaStatus++;
  if (buildCounterReplicaStatus < 3) {
    o.details = "foo";
    o.state = "foo";
    o.templateVersion = "foo";
    o.vmLink = "foo";
    o.vmStartTime = "foo";
  }
  buildCounterReplicaStatus--;
  return o;
}

checkReplicaStatus(api.ReplicaStatus o) {
  buildCounterReplicaStatus++;
  if (buildCounterReplicaStatus < 3) {
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.templateVersion, unittest.equals('foo'));
    unittest.expect(o.vmLink, unittest.equals('foo'));
    unittest.expect(o.vmStartTime, unittest.equals('foo'));
  }
  buildCounterReplicaStatus--;
}

core.int buildCounterReplicasDeleteRequest = 0;
buildReplicasDeleteRequest() {
  var o = new api.ReplicasDeleteRequest();
  buildCounterReplicasDeleteRequest++;
  if (buildCounterReplicasDeleteRequest < 3) {
    o.abandonInstance = true;
  }
  buildCounterReplicasDeleteRequest--;
  return o;
}

checkReplicasDeleteRequest(api.ReplicasDeleteRequest o) {
  buildCounterReplicasDeleteRequest++;
  if (buildCounterReplicasDeleteRequest < 3) {
    unittest.expect(o.abandonInstance, unittest.isTrue);
  }
  buildCounterReplicasDeleteRequest--;
}

buildUnnamed5203() {
  var o = new core.List<api.Replica>();
  o.add(buildReplica());
  o.add(buildReplica());
  return o;
}

checkUnnamed5203(core.List<api.Replica> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReplica(o[0]);
  checkReplica(o[1]);
}

core.int buildCounterReplicasListResponse = 0;
buildReplicasListResponse() {
  var o = new api.ReplicasListResponse();
  buildCounterReplicasListResponse++;
  if (buildCounterReplicasListResponse < 3) {
    o.nextPageToken = "foo";
    o.resources = buildUnnamed5203();
  }
  buildCounterReplicasListResponse--;
  return o;
}

checkReplicasListResponse(api.ReplicasListResponse o) {
  buildCounterReplicasListResponse++;
  if (buildCounterReplicasListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5203(o.resources);
  }
  buildCounterReplicasListResponse--;
}

buildUnnamed5204() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5204(core.List<core.String> o) {
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
    o.scopes = buildUnnamed5204();
  }
  buildCounterServiceAccount--;
  return o;
}

checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    checkUnnamed5204(o.scopes);
  }
  buildCounterServiceAccount--;
}

buildUnnamed5205() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5205(core.List<core.String> o) {
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
    o.items = buildUnnamed5205();
  }
  buildCounterTag--;
  return o;
}

checkTag(api.Tag o) {
  buildCounterTag++;
  if (buildCounterTag < 3) {
    unittest.expect(o.fingerPrint, unittest.equals('foo'));
    checkUnnamed5205(o.items);
  }
  buildCounterTag--;
}

buildUnnamed5206() {
  var o = new core.List<api.HealthCheck>();
  o.add(buildHealthCheck());
  o.add(buildHealthCheck());
  return o;
}

checkUnnamed5206(core.List<api.HealthCheck> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHealthCheck(o[0]);
  checkHealthCheck(o[1]);
}

core.int buildCounterTemplate = 0;
buildTemplate() {
  var o = new api.Template();
  buildCounterTemplate++;
  if (buildCounterTemplate < 3) {
    o.action = buildAction();
    o.healthChecks = buildUnnamed5206();
    o.version = "foo";
    o.vmParams = buildVmParams();
  }
  buildCounterTemplate--;
  return o;
}

checkTemplate(api.Template o) {
  buildCounterTemplate++;
  if (buildCounterTemplate < 3) {
    checkAction(o.action);
    checkUnnamed5206(o.healthChecks);
    unittest.expect(o.version, unittest.equals('foo'));
    checkVmParams(o.vmParams);
  }
  buildCounterTemplate--;
}

buildUnnamed5207() {
  var o = new core.List<api.ExistingDisk>();
  o.add(buildExistingDisk());
  o.add(buildExistingDisk());
  return o;
}

checkUnnamed5207(core.List<api.ExistingDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExistingDisk(o[0]);
  checkExistingDisk(o[1]);
}

buildUnnamed5208() {
  var o = new core.List<api.NewDisk>();
  o.add(buildNewDisk());
  o.add(buildNewDisk());
  return o;
}

checkUnnamed5208(core.List<api.NewDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNewDisk(o[0]);
  checkNewDisk(o[1]);
}

buildUnnamed5209() {
  var o = new core.List<api.NetworkInterface>();
  o.add(buildNetworkInterface());
  o.add(buildNetworkInterface());
  return o;
}

checkUnnamed5209(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
}

buildUnnamed5210() {
  var o = new core.List<api.ServiceAccount>();
  o.add(buildServiceAccount());
  o.add(buildServiceAccount());
  return o;
}

checkUnnamed5210(core.List<api.ServiceAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccount(o[0]);
  checkServiceAccount(o[1]);
}

core.int buildCounterVmParams = 0;
buildVmParams() {
  var o = new api.VmParams();
  buildCounterVmParams++;
  if (buildCounterVmParams < 3) {
    o.baseInstanceName = "foo";
    o.canIpForward = true;
    o.description = "foo";
    o.disksToAttach = buildUnnamed5207();
    o.disksToCreate = buildUnnamed5208();
    o.machineType = "foo";
    o.metadata = buildMetadata();
    o.networkInterfaces = buildUnnamed5209();
    o.onHostMaintenance = "foo";
    o.serviceAccounts = buildUnnamed5210();
    o.tags = buildTag();
  }
  buildCounterVmParams--;
  return o;
}

checkVmParams(api.VmParams o) {
  buildCounterVmParams++;
  if (buildCounterVmParams < 3) {
    unittest.expect(o.baseInstanceName, unittest.equals('foo'));
    unittest.expect(o.canIpForward, unittest.isTrue);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed5207(o.disksToAttach);
    checkUnnamed5208(o.disksToCreate);
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkMetadata(o.metadata);
    checkUnnamed5209(o.networkInterfaces);
    unittest.expect(o.onHostMaintenance, unittest.equals('foo'));
    checkUnnamed5210(o.serviceAccounts);
    checkTag(o.tags);
  }
  buildCounterVmParams--;
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

  unittest.group("obj-schema-HealthCheck", () {
    unittest.test("to-json--from-json", () {
      var o = buildHealthCheck();
      var od = new api.HealthCheck.fromJson(o.toJson());
      checkHealthCheck(od);
    });
  });

  unittest.group("obj-schema-Label", () {
    unittest.test("to-json--from-json", () {
      var o = buildLabel();
      var od = new api.Label.fromJson(o.toJson());
      checkLabel(od);
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

  unittest.group("obj-schema-NetworkInterface", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkInterface();
      var od = new api.NetworkInterface.fromJson(o.toJson());
      checkNetworkInterface(od);
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

  unittest.group("obj-schema-Pool", () {
    unittest.test("to-json--from-json", () {
      var o = buildPool();
      var od = new api.Pool.fromJson(o.toJson());
      checkPool(od);
    });
  });

  unittest.group("obj-schema-PoolsDeleteRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPoolsDeleteRequest();
      var od = new api.PoolsDeleteRequest.fromJson(o.toJson());
      checkPoolsDeleteRequest(od);
    });
  });

  unittest.group("obj-schema-PoolsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPoolsListResponse();
      var od = new api.PoolsListResponse.fromJson(o.toJson());
      checkPoolsListResponse(od);
    });
  });

  unittest.group("obj-schema-Replica", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplica();
      var od = new api.Replica.fromJson(o.toJson());
      checkReplica(od);
    });
  });

  unittest.group("obj-schema-ReplicaStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplicaStatus();
      var od = new api.ReplicaStatus.fromJson(o.toJson());
      checkReplicaStatus(od);
    });
  });

  unittest.group("obj-schema-ReplicasDeleteRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplicasDeleteRequest();
      var od = new api.ReplicasDeleteRequest.fromJson(o.toJson());
      checkReplicasDeleteRequest(od);
    });
  });

  unittest.group("obj-schema-ReplicasListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplicasListResponse();
      var od = new api.ReplicasListResponse.fromJson(o.toJson());
      checkReplicasListResponse(od);
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

  unittest.group("obj-schema-VmParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildVmParams();
      var od = new api.VmParams.fromJson(o.toJson());
      checkVmParams(od);
    });
  });

  unittest.group("resource-PoolsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.PoolsResourceApi res = new api.ReplicapoolApi(mock).pools;
      var arg_request = buildPoolsDeleteRequest();
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_poolName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PoolsDeleteRequest.fromJson(json);
        checkPoolsDeleteRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_request, arg_projectName, arg_zone, arg_poolName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PoolsResourceApi res = new api.ReplicapoolApi(mock).pools;
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_poolName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildPool());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectName, arg_zone, arg_poolName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPool(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.PoolsResourceApi res = new api.ReplicapoolApi(mock).pools;
      var arg_request = buildPool();
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Pool.fromJson(json);
        checkPool(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildPool());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_projectName, arg_zone, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPool(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PoolsResourceApi res = new api.ReplicapoolApi(mock).pools;
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_maxResults = 42;
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPoolsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectName, arg_zone,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPoolsListResponse(response);
      })));
    });

    unittest.test("method--resize", () {
      var mock = new HttpServerMock();
      api.PoolsResourceApi res = new api.ReplicapoolApi(mock).pools;
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_poolName = "foo";
      var arg_numReplicas = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(core.int.parse(queryMap["numReplicas"].first),
            unittest.equals(arg_numReplicas));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPool());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resize(arg_projectName, arg_zone, arg_poolName,
              numReplicas: arg_numReplicas, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPool(response);
      })));
    });

    unittest.test("method--updatetemplate", () {
      var mock = new HttpServerMock();
      api.PoolsResourceApi res = new api.ReplicapoolApi(mock).pools;
      var arg_request = buildTemplate();
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_poolName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Template.fromJson(json);
        checkTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatetemplate(arg_request, arg_projectName, arg_zone, arg_poolName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-ReplicasResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ReplicasResourceApi res = new api.ReplicapoolApi(mock).replicas;
      var arg_request = buildReplicasDeleteRequest();
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_poolName = "foo";
      var arg_replicaName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReplicasDeleteRequest.fromJson(json);
        checkReplicasDeleteRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildReplica());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_request, arg_projectName, arg_zone, arg_poolName,
              arg_replicaName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReplica(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ReplicasResourceApi res = new api.ReplicapoolApi(mock).replicas;
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_poolName = "foo";
      var arg_replicaName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildReplica());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectName, arg_zone, arg_poolName, arg_replicaName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReplica(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ReplicasResourceApi res = new api.ReplicapoolApi(mock).replicas;
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_poolName = "foo";
      var arg_maxResults = 42;
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildReplicasListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectName, arg_zone, arg_poolName,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReplicasListResponse(response);
      })));
    });

    unittest.test("method--restart", () {
      var mock = new HttpServerMock();
      api.ReplicasResourceApi res = new api.ReplicapoolApi(mock).replicas;
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_poolName = "foo";
      var arg_replicaName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildReplica());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .restart(arg_projectName, arg_zone, arg_poolName, arg_replicaName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReplica(response);
      })));
    });
  });
}
