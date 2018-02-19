library googleapis.cloudiot.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/cloudiot/v1.dart' as api;

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

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed3521() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed3521(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed3521();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed3521(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed3522() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3522(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed3522();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed3522(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

buildUnnamed3523() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3523(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.members = buildUnnamed3523();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkUnnamed3523(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

buildUnnamed3524() {
  var o = new core.List<api.DeviceCredential>();
  o.add(buildDeviceCredential());
  o.add(buildDeviceCredential());
  return o;
}

checkUnnamed3524(core.List<api.DeviceCredential> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceCredential(o[0]);
  checkDeviceCredential(o[1]);
}

buildUnnamed3525() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3525(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterDevice = 0;
buildDevice() {
  var o = new api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.blocked = true;
    o.config = buildDeviceConfig();
    o.credentials = buildUnnamed3524();
    o.id = "foo";
    o.lastConfigAckTime = "foo";
    o.lastConfigSendTime = "foo";
    o.lastErrorStatus = buildStatus();
    o.lastErrorTime = "foo";
    o.lastEventTime = "foo";
    o.lastHeartbeatTime = "foo";
    o.lastStateTime = "foo";
    o.metadata = buildUnnamed3525();
    o.name = "foo";
    o.numId = "foo";
    o.state = buildDeviceState();
  }
  buildCounterDevice--;
  return o;
}

checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    unittest.expect(o.blocked, unittest.isTrue);
    checkDeviceConfig(o.config);
    checkUnnamed3524(o.credentials);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.lastConfigAckTime, unittest.equals('foo'));
    unittest.expect(o.lastConfigSendTime, unittest.equals('foo'));
    checkStatus(o.lastErrorStatus);
    unittest.expect(o.lastErrorTime, unittest.equals('foo'));
    unittest.expect(o.lastEventTime, unittest.equals('foo'));
    unittest.expect(o.lastHeartbeatTime, unittest.equals('foo'));
    unittest.expect(o.lastStateTime, unittest.equals('foo'));
    checkUnnamed3525(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.numId, unittest.equals('foo'));
    checkDeviceState(o.state);
  }
  buildCounterDevice--;
}

core.int buildCounterDeviceConfig = 0;
buildDeviceConfig() {
  var o = new api.DeviceConfig();
  buildCounterDeviceConfig++;
  if (buildCounterDeviceConfig < 3) {
    o.binaryData = "foo";
    o.cloudUpdateTime = "foo";
    o.deviceAckTime = "foo";
    o.version = "foo";
  }
  buildCounterDeviceConfig--;
  return o;
}

checkDeviceConfig(api.DeviceConfig o) {
  buildCounterDeviceConfig++;
  if (buildCounterDeviceConfig < 3) {
    unittest.expect(o.binaryData, unittest.equals('foo'));
    unittest.expect(o.cloudUpdateTime, unittest.equals('foo'));
    unittest.expect(o.deviceAckTime, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterDeviceConfig--;
}

core.int buildCounterDeviceCredential = 0;
buildDeviceCredential() {
  var o = new api.DeviceCredential();
  buildCounterDeviceCredential++;
  if (buildCounterDeviceCredential < 3) {
    o.expirationTime = "foo";
    o.publicKey = buildPublicKeyCredential();
  }
  buildCounterDeviceCredential--;
  return o;
}

checkDeviceCredential(api.DeviceCredential o) {
  buildCounterDeviceCredential++;
  if (buildCounterDeviceCredential < 3) {
    unittest.expect(o.expirationTime, unittest.equals('foo'));
    checkPublicKeyCredential(o.publicKey);
  }
  buildCounterDeviceCredential--;
}

buildUnnamed3526() {
  var o = new core.List<api.RegistryCredential>();
  o.add(buildRegistryCredential());
  o.add(buildRegistryCredential());
  return o;
}

checkUnnamed3526(core.List<api.RegistryCredential> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegistryCredential(o[0]);
  checkRegistryCredential(o[1]);
}

buildUnnamed3527() {
  var o = new core.List<api.EventNotificationConfig>();
  o.add(buildEventNotificationConfig());
  o.add(buildEventNotificationConfig());
  return o;
}

checkUnnamed3527(core.List<api.EventNotificationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventNotificationConfig(o[0]);
  checkEventNotificationConfig(o[1]);
}

core.int buildCounterDeviceRegistry = 0;
buildDeviceRegistry() {
  var o = new api.DeviceRegistry();
  buildCounterDeviceRegistry++;
  if (buildCounterDeviceRegistry < 3) {
    o.credentials = buildUnnamed3526();
    o.eventNotificationConfigs = buildUnnamed3527();
    o.httpConfig = buildHttpConfig();
    o.id = "foo";
    o.mqttConfig = buildMqttConfig();
    o.name = "foo";
    o.stateNotificationConfig = buildStateNotificationConfig();
  }
  buildCounterDeviceRegistry--;
  return o;
}

checkDeviceRegistry(api.DeviceRegistry o) {
  buildCounterDeviceRegistry++;
  if (buildCounterDeviceRegistry < 3) {
    checkUnnamed3526(o.credentials);
    checkUnnamed3527(o.eventNotificationConfigs);
    checkHttpConfig(o.httpConfig);
    unittest.expect(o.id, unittest.equals('foo'));
    checkMqttConfig(o.mqttConfig);
    unittest.expect(o.name, unittest.equals('foo'));
    checkStateNotificationConfig(o.stateNotificationConfig);
  }
  buildCounterDeviceRegistry--;
}

core.int buildCounterDeviceState = 0;
buildDeviceState() {
  var o = new api.DeviceState();
  buildCounterDeviceState++;
  if (buildCounterDeviceState < 3) {
    o.binaryData = "foo";
    o.updateTime = "foo";
  }
  buildCounterDeviceState--;
  return o;
}

checkDeviceState(api.DeviceState o) {
  buildCounterDeviceState++;
  if (buildCounterDeviceState < 3) {
    unittest.expect(o.binaryData, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterDeviceState--;
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

core.int buildCounterEventNotificationConfig = 0;
buildEventNotificationConfig() {
  var o = new api.EventNotificationConfig();
  buildCounterEventNotificationConfig++;
  if (buildCounterEventNotificationConfig < 3) {
    o.pubsubTopicName = "foo";
    o.subfolderMatches = "foo";
  }
  buildCounterEventNotificationConfig--;
  return o;
}

checkEventNotificationConfig(api.EventNotificationConfig o) {
  buildCounterEventNotificationConfig++;
  if (buildCounterEventNotificationConfig < 3) {
    unittest.expect(o.pubsubTopicName, unittest.equals('foo'));
    unittest.expect(o.subfolderMatches, unittest.equals('foo'));
  }
  buildCounterEventNotificationConfig--;
}

core.int buildCounterGetIamPolicyRequest = 0;
buildGetIamPolicyRequest() {
  var o = new api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {}
  buildCounterGetIamPolicyRequest--;
  return o;
}

checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {}
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterHttpConfig = 0;
buildHttpConfig() {
  var o = new api.HttpConfig();
  buildCounterHttpConfig++;
  if (buildCounterHttpConfig < 3) {
    o.httpEnabledState = "foo";
  }
  buildCounterHttpConfig--;
  return o;
}

checkHttpConfig(api.HttpConfig o) {
  buildCounterHttpConfig++;
  if (buildCounterHttpConfig < 3) {
    unittest.expect(o.httpEnabledState, unittest.equals('foo'));
  }
  buildCounterHttpConfig--;
}

buildUnnamed3528() {
  var o = new core.List<api.DeviceConfig>();
  o.add(buildDeviceConfig());
  o.add(buildDeviceConfig());
  return o;
}

checkUnnamed3528(core.List<api.DeviceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceConfig(o[0]);
  checkDeviceConfig(o[1]);
}

core.int buildCounterListDeviceConfigVersionsResponse = 0;
buildListDeviceConfigVersionsResponse() {
  var o = new api.ListDeviceConfigVersionsResponse();
  buildCounterListDeviceConfigVersionsResponse++;
  if (buildCounterListDeviceConfigVersionsResponse < 3) {
    o.deviceConfigs = buildUnnamed3528();
  }
  buildCounterListDeviceConfigVersionsResponse--;
  return o;
}

checkListDeviceConfigVersionsResponse(api.ListDeviceConfigVersionsResponse o) {
  buildCounterListDeviceConfigVersionsResponse++;
  if (buildCounterListDeviceConfigVersionsResponse < 3) {
    checkUnnamed3528(o.deviceConfigs);
  }
  buildCounterListDeviceConfigVersionsResponse--;
}

buildUnnamed3529() {
  var o = new core.List<api.DeviceRegistry>();
  o.add(buildDeviceRegistry());
  o.add(buildDeviceRegistry());
  return o;
}

checkUnnamed3529(core.List<api.DeviceRegistry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceRegistry(o[0]);
  checkDeviceRegistry(o[1]);
}

core.int buildCounterListDeviceRegistriesResponse = 0;
buildListDeviceRegistriesResponse() {
  var o = new api.ListDeviceRegistriesResponse();
  buildCounterListDeviceRegistriesResponse++;
  if (buildCounterListDeviceRegistriesResponse < 3) {
    o.deviceRegistries = buildUnnamed3529();
    o.nextPageToken = "foo";
  }
  buildCounterListDeviceRegistriesResponse--;
  return o;
}

checkListDeviceRegistriesResponse(api.ListDeviceRegistriesResponse o) {
  buildCounterListDeviceRegistriesResponse++;
  if (buildCounterListDeviceRegistriesResponse < 3) {
    checkUnnamed3529(o.deviceRegistries);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDeviceRegistriesResponse--;
}

buildUnnamed3530() {
  var o = new core.List<api.DeviceState>();
  o.add(buildDeviceState());
  o.add(buildDeviceState());
  return o;
}

checkUnnamed3530(core.List<api.DeviceState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceState(o[0]);
  checkDeviceState(o[1]);
}

core.int buildCounterListDeviceStatesResponse = 0;
buildListDeviceStatesResponse() {
  var o = new api.ListDeviceStatesResponse();
  buildCounterListDeviceStatesResponse++;
  if (buildCounterListDeviceStatesResponse < 3) {
    o.deviceStates = buildUnnamed3530();
  }
  buildCounterListDeviceStatesResponse--;
  return o;
}

checkListDeviceStatesResponse(api.ListDeviceStatesResponse o) {
  buildCounterListDeviceStatesResponse++;
  if (buildCounterListDeviceStatesResponse < 3) {
    checkUnnamed3530(o.deviceStates);
  }
  buildCounterListDeviceStatesResponse--;
}

buildUnnamed3531() {
  var o = new core.List<api.Device>();
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

checkUnnamed3531(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterListDevicesResponse = 0;
buildListDevicesResponse() {
  var o = new api.ListDevicesResponse();
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    o.devices = buildUnnamed3531();
    o.nextPageToken = "foo";
  }
  buildCounterListDevicesResponse--;
  return o;
}

checkListDevicesResponse(api.ListDevicesResponse o) {
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    checkUnnamed3531(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDevicesResponse--;
}

core.int buildCounterModifyCloudToDeviceConfigRequest = 0;
buildModifyCloudToDeviceConfigRequest() {
  var o = new api.ModifyCloudToDeviceConfigRequest();
  buildCounterModifyCloudToDeviceConfigRequest++;
  if (buildCounterModifyCloudToDeviceConfigRequest < 3) {
    o.binaryData = "foo";
    o.versionToUpdate = "foo";
  }
  buildCounterModifyCloudToDeviceConfigRequest--;
  return o;
}

checkModifyCloudToDeviceConfigRequest(api.ModifyCloudToDeviceConfigRequest o) {
  buildCounterModifyCloudToDeviceConfigRequest++;
  if (buildCounterModifyCloudToDeviceConfigRequest < 3) {
    unittest.expect(o.binaryData, unittest.equals('foo'));
    unittest.expect(o.versionToUpdate, unittest.equals('foo'));
  }
  buildCounterModifyCloudToDeviceConfigRequest--;
}

core.int buildCounterMqttConfig = 0;
buildMqttConfig() {
  var o = new api.MqttConfig();
  buildCounterMqttConfig++;
  if (buildCounterMqttConfig < 3) {
    o.mqttEnabledState = "foo";
  }
  buildCounterMqttConfig--;
  return o;
}

checkMqttConfig(api.MqttConfig o) {
  buildCounterMqttConfig++;
  if (buildCounterMqttConfig < 3) {
    unittest.expect(o.mqttEnabledState, unittest.equals('foo'));
  }
  buildCounterMqttConfig--;
}

buildUnnamed3532() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed3532(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed3533() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed3533(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed3532();
    o.bindings = buildUnnamed3533();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed3532(o.auditConfigs);
    checkUnnamed3533(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPublicKeyCertificate = 0;
buildPublicKeyCertificate() {
  var o = new api.PublicKeyCertificate();
  buildCounterPublicKeyCertificate++;
  if (buildCounterPublicKeyCertificate < 3) {
    o.certificate = "foo";
    o.format = "foo";
    o.x509Details = buildX509CertificateDetails();
  }
  buildCounterPublicKeyCertificate--;
  return o;
}

checkPublicKeyCertificate(api.PublicKeyCertificate o) {
  buildCounterPublicKeyCertificate++;
  if (buildCounterPublicKeyCertificate < 3) {
    unittest.expect(o.certificate, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
    checkX509CertificateDetails(o.x509Details);
  }
  buildCounterPublicKeyCertificate--;
}

core.int buildCounterPublicKeyCredential = 0;
buildPublicKeyCredential() {
  var o = new api.PublicKeyCredential();
  buildCounterPublicKeyCredential++;
  if (buildCounterPublicKeyCredential < 3) {
    o.format = "foo";
    o.key = "foo";
  }
  buildCounterPublicKeyCredential--;
  return o;
}

checkPublicKeyCredential(api.PublicKeyCredential o) {
  buildCounterPublicKeyCredential++;
  if (buildCounterPublicKeyCredential < 3) {
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterPublicKeyCredential--;
}

core.int buildCounterRegistryCredential = 0;
buildRegistryCredential() {
  var o = new api.RegistryCredential();
  buildCounterRegistryCredential++;
  if (buildCounterRegistryCredential < 3) {
    o.publicKeyCertificate = buildPublicKeyCertificate();
  }
  buildCounterRegistryCredential--;
  return o;
}

checkRegistryCredential(api.RegistryCredential o) {
  buildCounterRegistryCredential++;
  if (buildCounterRegistryCredential < 3) {
    checkPublicKeyCertificate(o.publicKeyCertificate);
  }
  buildCounterRegistryCredential--;
}

core.int buildCounterSetIamPolicyRequest = 0;
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = "foo";
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterStateNotificationConfig = 0;
buildStateNotificationConfig() {
  var o = new api.StateNotificationConfig();
  buildCounterStateNotificationConfig++;
  if (buildCounterStateNotificationConfig < 3) {
    o.pubsubTopicName = "foo";
  }
  buildCounterStateNotificationConfig--;
  return o;
}

checkStateNotificationConfig(api.StateNotificationConfig o) {
  buildCounterStateNotificationConfig++;
  if (buildCounterStateNotificationConfig < 3) {
    unittest.expect(o.pubsubTopicName, unittest.equals('foo'));
  }
  buildCounterStateNotificationConfig--;
}

buildUnnamed3534() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3534(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed3535() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3534());
  o.add(buildUnnamed3534());
  return o;
}

checkUnnamed3535(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3534(o[0]);
  checkUnnamed3534(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3535();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3535(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed3536() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3536(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed3536();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed3536(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed3537() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3537(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed3537();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed3537(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterX509CertificateDetails = 0;
buildX509CertificateDetails() {
  var o = new api.X509CertificateDetails();
  buildCounterX509CertificateDetails++;
  if (buildCounterX509CertificateDetails < 3) {
    o.expiryTime = "foo";
    o.issuer = "foo";
    o.publicKeyType = "foo";
    o.signatureAlgorithm = "foo";
    o.startTime = "foo";
    o.subject = "foo";
  }
  buildCounterX509CertificateDetails--;
  return o;
}

checkX509CertificateDetails(api.X509CertificateDetails o) {
  buildCounterX509CertificateDetails++;
  if (buildCounterX509CertificateDetails < 3) {
    unittest.expect(o.expiryTime, unittest.equals('foo'));
    unittest.expect(o.issuer, unittest.equals('foo'));
    unittest.expect(o.publicKeyType, unittest.equals('foo'));
    unittest.expect(o.signatureAlgorithm, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.subject, unittest.equals('foo'));
  }
  buildCounterX509CertificateDetails--;
}

buildUnnamed3538() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3538(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3539() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3539(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditConfig();
      var od = new api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });

  unittest.group("obj-schema-AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLogConfig();
      var od = new api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-Device", () {
    unittest.test("to-json--from-json", () {
      var o = buildDevice();
      var od = new api.Device.fromJson(o.toJson());
      checkDevice(od);
    });
  });

  unittest.group("obj-schema-DeviceConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceConfig();
      var od = new api.DeviceConfig.fromJson(o.toJson());
      checkDeviceConfig(od);
    });
  });

  unittest.group("obj-schema-DeviceCredential", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceCredential();
      var od = new api.DeviceCredential.fromJson(o.toJson());
      checkDeviceCredential(od);
    });
  });

  unittest.group("obj-schema-DeviceRegistry", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceRegistry();
      var od = new api.DeviceRegistry.fromJson(o.toJson());
      checkDeviceRegistry(od);
    });
  });

  unittest.group("obj-schema-DeviceState", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceState();
      var od = new api.DeviceState.fromJson(o.toJson());
      checkDeviceState(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-EventNotificationConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildEventNotificationConfig();
      var od = new api.EventNotificationConfig.fromJson(o.toJson());
      checkEventNotificationConfig(od);
    });
  });

  unittest.group("obj-schema-GetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetIamPolicyRequest();
      var od = new api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-HttpConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpConfig();
      var od = new api.HttpConfig.fromJson(o.toJson());
      checkHttpConfig(od);
    });
  });

  unittest.group("obj-schema-ListDeviceConfigVersionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDeviceConfigVersionsResponse();
      var od = new api.ListDeviceConfigVersionsResponse.fromJson(o.toJson());
      checkListDeviceConfigVersionsResponse(od);
    });
  });

  unittest.group("obj-schema-ListDeviceRegistriesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDeviceRegistriesResponse();
      var od = new api.ListDeviceRegistriesResponse.fromJson(o.toJson());
      checkListDeviceRegistriesResponse(od);
    });
  });

  unittest.group("obj-schema-ListDeviceStatesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDeviceStatesResponse();
      var od = new api.ListDeviceStatesResponse.fromJson(o.toJson());
      checkListDeviceStatesResponse(od);
    });
  });

  unittest.group("obj-schema-ListDevicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDevicesResponse();
      var od = new api.ListDevicesResponse.fromJson(o.toJson());
      checkListDevicesResponse(od);
    });
  });

  unittest.group("obj-schema-ModifyCloudToDeviceConfigRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildModifyCloudToDeviceConfigRequest();
      var od = new api.ModifyCloudToDeviceConfigRequest.fromJson(o.toJson());
      checkModifyCloudToDeviceConfigRequest(od);
    });
  });

  unittest.group("obj-schema-MqttConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildMqttConfig();
      var od = new api.MqttConfig.fromJson(o.toJson());
      checkMqttConfig(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-PublicKeyCertificate", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublicKeyCertificate();
      var od = new api.PublicKeyCertificate.fromJson(o.toJson());
      checkPublicKeyCertificate(od);
    });
  });

  unittest.group("obj-schema-PublicKeyCredential", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublicKeyCredential();
      var od = new api.PublicKeyCredential.fromJson(o.toJson());
      checkPublicKeyCredential(od);
    });
  });

  unittest.group("obj-schema-RegistryCredential", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegistryCredential();
      var od = new api.RegistryCredential.fromJson(o.toJson());
      checkRegistryCredential(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-StateNotificationConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildStateNotificationConfig();
      var od = new api.StateNotificationConfig.fromJson(o.toJson());
      checkStateNotificationConfig(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsRequest();
      var od = new api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = new api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group("obj-schema-X509CertificateDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildX509CertificateDetails();
      var od = new api.X509CertificateDetails.fromJson(o.toJson());
      checkX509CertificateDetails(od);
    });
  });

  unittest.group("resource-ProjectsLocationsRegistriesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries;
      var arg_request = buildDeviceRegistry();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DeviceRegistry.fromJson(json);
        checkDeviceRegistry(obj);

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDeviceRegistry());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.DeviceRegistry response) {
        checkDeviceRegistry(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDeviceRegistry());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.DeviceRegistry response) {
        checkDeviceRegistry(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Policy response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListDeviceRegistriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest
              .expectAsync1(((api.ListDeviceRegistriesResponse response) {
        checkListDeviceRegistriesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries;
      var arg_request = buildDeviceRegistry();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DeviceRegistry.fromJson(json);
        checkDeviceRegistry(obj);

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDeviceRegistry());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.DeviceRegistry response) {
        checkDeviceRegistry(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Policy response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(
              unittest.expectAsync1(((api.TestIamPermissionsResponse response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsRegistriesDevicesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesDevicesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries.devices;
      var arg_request = buildDevice();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Device.fromJson(json);
        checkDevice(obj);

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Device response) {
        checkDevice(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesDevicesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries.devices;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesDevicesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries.devices;
      var arg_name = "foo";
      var arg_fieldMask = "foo";
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["fieldMask"].first, unittest.equals(arg_fieldMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, fieldMask: arg_fieldMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Device response) {
        checkDevice(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesDevicesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries.devices;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_fieldMask = "foo";
      var arg_pageSize = 42;
      var arg_deviceIds = buildUnnamed3538();
      var arg_deviceNumIds = buildUnnamed3539();
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["fieldMask"].first, unittest.equals(arg_fieldMask));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["deviceIds"], unittest.equals(arg_deviceIds));
        unittest.expect(
            queryMap["deviceNumIds"], unittest.equals(arg_deviceNumIds));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListDevicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              fieldMask: arg_fieldMask,
              pageSize: arg_pageSize,
              deviceIds: arg_deviceIds,
              deviceNumIds: arg_deviceNumIds,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListDevicesResponse response) {
        checkListDevicesResponse(response);
      })));
    });

    unittest.test("method--modifyCloudToDeviceConfig", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesDevicesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries.devices;
      var arg_request = buildModifyCloudToDeviceConfigRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ModifyCloudToDeviceConfigRequest.fromJson(json);
        checkModifyCloudToDeviceConfigRequest(obj);

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDeviceConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .modifyCloudToDeviceConfig(arg_request, arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.DeviceConfig response) {
        checkDeviceConfig(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesDevicesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries.devices;
      var arg_request = buildDevice();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Device.fromJson(json);
        checkDevice(obj);

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Device response) {
        checkDevice(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsLocationsRegistriesDevicesConfigVersionsResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesDevicesConfigVersionsResourceApi res =
          new api.CloudiotApi(mock)
              .projects
              .locations
              .registries
              .devices
              .configVersions;
      var arg_name = "foo";
      var arg_numVersions = 42;
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["numVersions"].first),
            unittest.equals(arg_numVersions));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListDeviceConfigVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name, numVersions: arg_numVersions, $fields: arg_$fields)
          .then(unittest
              .expectAsync1(((api.ListDeviceConfigVersionsResponse response) {
        checkListDeviceConfigVersionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsRegistriesDevicesStatesResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesDevicesStatesResourceApi res =
          new api.CloudiotApi(mock)
              .projects
              .locations
              .registries
              .devices
              .states;
      var arg_name = "foo";
      var arg_numStates = 42;
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["numStates"].first),
            unittest.equals(arg_numStates));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListDeviceStatesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name, numStates: arg_numStates, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListDeviceStatesResponse response) {
        checkListDeviceStatesResponse(response);
      })));
    });
  });
}
