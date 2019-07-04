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

core.int buildCounterBindDeviceToGatewayRequest = 0;
buildBindDeviceToGatewayRequest() {
  var o = new api.BindDeviceToGatewayRequest();
  buildCounterBindDeviceToGatewayRequest++;
  if (buildCounterBindDeviceToGatewayRequest < 3) {
    o.deviceId = "foo";
    o.gatewayId = "foo";
  }
  buildCounterBindDeviceToGatewayRequest--;
  return o;
}

checkBindDeviceToGatewayRequest(api.BindDeviceToGatewayRequest o) {
  buildCounterBindDeviceToGatewayRequest++;
  if (buildCounterBindDeviceToGatewayRequest < 3) {
    unittest.expect(o.deviceId, unittest.equals('foo'));
    unittest.expect(o.gatewayId, unittest.equals('foo'));
  }
  buildCounterBindDeviceToGatewayRequest--;
}

core.int buildCounterBindDeviceToGatewayResponse = 0;
buildBindDeviceToGatewayResponse() {
  var o = new api.BindDeviceToGatewayResponse();
  buildCounterBindDeviceToGatewayResponse++;
  if (buildCounterBindDeviceToGatewayResponse < 3) {}
  buildCounterBindDeviceToGatewayResponse--;
  return o;
}

checkBindDeviceToGatewayResponse(api.BindDeviceToGatewayResponse o) {
  buildCounterBindDeviceToGatewayResponse++;
  if (buildCounterBindDeviceToGatewayResponse < 3) {}
  buildCounterBindDeviceToGatewayResponse--;
}

buildUnnamed103() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed103(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed103();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed103(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

buildUnnamed104() {
  var o = new core.List<api.DeviceCredential>();
  o.add(buildDeviceCredential());
  o.add(buildDeviceCredential());
  return o;
}

checkUnnamed104(core.List<api.DeviceCredential> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceCredential(o[0]);
  checkDeviceCredential(o[1]);
}

buildUnnamed105() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed105(core.Map<core.String, core.String> o) {
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
    o.credentials = buildUnnamed104();
    o.gatewayConfig = buildGatewayConfig();
    o.id = "foo";
    o.lastConfigAckTime = "foo";
    o.lastConfigSendTime = "foo";
    o.lastErrorStatus = buildStatus();
    o.lastErrorTime = "foo";
    o.lastEventTime = "foo";
    o.lastHeartbeatTime = "foo";
    o.lastStateTime = "foo";
    o.logLevel = "foo";
    o.metadata = buildUnnamed105();
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
    checkUnnamed104(o.credentials);
    checkGatewayConfig(o.gatewayConfig);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.lastConfigAckTime, unittest.equals('foo'));
    unittest.expect(o.lastConfigSendTime, unittest.equals('foo'));
    checkStatus(o.lastErrorStatus);
    unittest.expect(o.lastErrorTime, unittest.equals('foo'));
    unittest.expect(o.lastEventTime, unittest.equals('foo'));
    unittest.expect(o.lastHeartbeatTime, unittest.equals('foo'));
    unittest.expect(o.lastStateTime, unittest.equals('foo'));
    unittest.expect(o.logLevel, unittest.equals('foo'));
    checkUnnamed105(o.metadata);
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

buildUnnamed106() {
  var o = new core.List<api.RegistryCredential>();
  o.add(buildRegistryCredential());
  o.add(buildRegistryCredential());
  return o;
}

checkUnnamed106(core.List<api.RegistryCredential> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegistryCredential(o[0]);
  checkRegistryCredential(o[1]);
}

buildUnnamed107() {
  var o = new core.List<api.EventNotificationConfig>();
  o.add(buildEventNotificationConfig());
  o.add(buildEventNotificationConfig());
  return o;
}

checkUnnamed107(core.List<api.EventNotificationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventNotificationConfig(o[0]);
  checkEventNotificationConfig(o[1]);
}

core.int buildCounterDeviceRegistry = 0;
buildDeviceRegistry() {
  var o = new api.DeviceRegistry();
  buildCounterDeviceRegistry++;
  if (buildCounterDeviceRegistry < 3) {
    o.credentials = buildUnnamed106();
    o.eventNotificationConfigs = buildUnnamed107();
    o.httpConfig = buildHttpConfig();
    o.id = "foo";
    o.logLevel = "foo";
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
    checkUnnamed106(o.credentials);
    checkUnnamed107(o.eventNotificationConfigs);
    checkHttpConfig(o.httpConfig);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.logLevel, unittest.equals('foo'));
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

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.int buildCounterGatewayConfig = 0;
buildGatewayConfig() {
  var o = new api.GatewayConfig();
  buildCounterGatewayConfig++;
  if (buildCounterGatewayConfig < 3) {
    o.gatewayAuthMethod = "foo";
    o.gatewayType = "foo";
    o.lastAccessedGatewayId = "foo";
    o.lastAccessedGatewayTime = "foo";
  }
  buildCounterGatewayConfig--;
  return o;
}

checkGatewayConfig(api.GatewayConfig o) {
  buildCounterGatewayConfig++;
  if (buildCounterGatewayConfig < 3) {
    unittest.expect(o.gatewayAuthMethod, unittest.equals('foo'));
    unittest.expect(o.gatewayType, unittest.equals('foo'));
    unittest.expect(o.lastAccessedGatewayId, unittest.equals('foo'));
    unittest.expect(o.lastAccessedGatewayTime, unittest.equals('foo'));
  }
  buildCounterGatewayConfig--;
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

buildUnnamed108() {
  var o = new core.List<api.DeviceConfig>();
  o.add(buildDeviceConfig());
  o.add(buildDeviceConfig());
  return o;
}

checkUnnamed108(core.List<api.DeviceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceConfig(o[0]);
  checkDeviceConfig(o[1]);
}

core.int buildCounterListDeviceConfigVersionsResponse = 0;
buildListDeviceConfigVersionsResponse() {
  var o = new api.ListDeviceConfigVersionsResponse();
  buildCounterListDeviceConfigVersionsResponse++;
  if (buildCounterListDeviceConfigVersionsResponse < 3) {
    o.deviceConfigs = buildUnnamed108();
  }
  buildCounterListDeviceConfigVersionsResponse--;
  return o;
}

checkListDeviceConfigVersionsResponse(api.ListDeviceConfigVersionsResponse o) {
  buildCounterListDeviceConfigVersionsResponse++;
  if (buildCounterListDeviceConfigVersionsResponse < 3) {
    checkUnnamed108(o.deviceConfigs);
  }
  buildCounterListDeviceConfigVersionsResponse--;
}

buildUnnamed109() {
  var o = new core.List<api.DeviceRegistry>();
  o.add(buildDeviceRegistry());
  o.add(buildDeviceRegistry());
  return o;
}

checkUnnamed109(core.List<api.DeviceRegistry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceRegistry(o[0]);
  checkDeviceRegistry(o[1]);
}

core.int buildCounterListDeviceRegistriesResponse = 0;
buildListDeviceRegistriesResponse() {
  var o = new api.ListDeviceRegistriesResponse();
  buildCounterListDeviceRegistriesResponse++;
  if (buildCounterListDeviceRegistriesResponse < 3) {
    o.deviceRegistries = buildUnnamed109();
    o.nextPageToken = "foo";
  }
  buildCounterListDeviceRegistriesResponse--;
  return o;
}

checkListDeviceRegistriesResponse(api.ListDeviceRegistriesResponse o) {
  buildCounterListDeviceRegistriesResponse++;
  if (buildCounterListDeviceRegistriesResponse < 3) {
    checkUnnamed109(o.deviceRegistries);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDeviceRegistriesResponse--;
}

buildUnnamed110() {
  var o = new core.List<api.DeviceState>();
  o.add(buildDeviceState());
  o.add(buildDeviceState());
  return o;
}

checkUnnamed110(core.List<api.DeviceState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceState(o[0]);
  checkDeviceState(o[1]);
}

core.int buildCounterListDeviceStatesResponse = 0;
buildListDeviceStatesResponse() {
  var o = new api.ListDeviceStatesResponse();
  buildCounterListDeviceStatesResponse++;
  if (buildCounterListDeviceStatesResponse < 3) {
    o.deviceStates = buildUnnamed110();
  }
  buildCounterListDeviceStatesResponse--;
  return o;
}

checkListDeviceStatesResponse(api.ListDeviceStatesResponse o) {
  buildCounterListDeviceStatesResponse++;
  if (buildCounterListDeviceStatesResponse < 3) {
    checkUnnamed110(o.deviceStates);
  }
  buildCounterListDeviceStatesResponse--;
}

buildUnnamed111() {
  var o = new core.List<api.Device>();
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

checkUnnamed111(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterListDevicesResponse = 0;
buildListDevicesResponse() {
  var o = new api.ListDevicesResponse();
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    o.devices = buildUnnamed111();
    o.nextPageToken = "foo";
  }
  buildCounterListDevicesResponse--;
  return o;
}

checkListDevicesResponse(api.ListDevicesResponse o) {
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    checkUnnamed111(o.devices);
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

buildUnnamed112() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed112(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed112();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed112(o.bindings);
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

core.int buildCounterSendCommandToDeviceRequest = 0;
buildSendCommandToDeviceRequest() {
  var o = new api.SendCommandToDeviceRequest();
  buildCounterSendCommandToDeviceRequest++;
  if (buildCounterSendCommandToDeviceRequest < 3) {
    o.binaryData = "foo";
    o.subfolder = "foo";
  }
  buildCounterSendCommandToDeviceRequest--;
  return o;
}

checkSendCommandToDeviceRequest(api.SendCommandToDeviceRequest o) {
  buildCounterSendCommandToDeviceRequest++;
  if (buildCounterSendCommandToDeviceRequest < 3) {
    unittest.expect(o.binaryData, unittest.equals('foo'));
    unittest.expect(o.subfolder, unittest.equals('foo'));
  }
  buildCounterSendCommandToDeviceRequest--;
}

core.int buildCounterSendCommandToDeviceResponse = 0;
buildSendCommandToDeviceResponse() {
  var o = new api.SendCommandToDeviceResponse();
  buildCounterSendCommandToDeviceResponse++;
  if (buildCounterSendCommandToDeviceResponse < 3) {}
  buildCounterSendCommandToDeviceResponse--;
  return o;
}

checkSendCommandToDeviceResponse(api.SendCommandToDeviceResponse o) {
  buildCounterSendCommandToDeviceResponse++;
  if (buildCounterSendCommandToDeviceResponse < 3) {}
  buildCounterSendCommandToDeviceResponse--;
}

core.int buildCounterSetIamPolicyRequest = 0;
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
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

buildUnnamed113() {
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

checkUnnamed113(core.Map<core.String, core.Object> o) {
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

buildUnnamed114() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed113());
  o.add(buildUnnamed113());
  return o;
}

checkUnnamed114(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed113(o[0]);
  checkUnnamed113(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed114();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed114(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed115() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed115(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed115();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed115(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed116() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed116(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed116();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed116(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUnbindDeviceFromGatewayRequest = 0;
buildUnbindDeviceFromGatewayRequest() {
  var o = new api.UnbindDeviceFromGatewayRequest();
  buildCounterUnbindDeviceFromGatewayRequest++;
  if (buildCounterUnbindDeviceFromGatewayRequest < 3) {
    o.deviceId = "foo";
    o.gatewayId = "foo";
  }
  buildCounterUnbindDeviceFromGatewayRequest--;
  return o;
}

checkUnbindDeviceFromGatewayRequest(api.UnbindDeviceFromGatewayRequest o) {
  buildCounterUnbindDeviceFromGatewayRequest++;
  if (buildCounterUnbindDeviceFromGatewayRequest < 3) {
    unittest.expect(o.deviceId, unittest.equals('foo'));
    unittest.expect(o.gatewayId, unittest.equals('foo'));
  }
  buildCounterUnbindDeviceFromGatewayRequest--;
}

core.int buildCounterUnbindDeviceFromGatewayResponse = 0;
buildUnbindDeviceFromGatewayResponse() {
  var o = new api.UnbindDeviceFromGatewayResponse();
  buildCounterUnbindDeviceFromGatewayResponse++;
  if (buildCounterUnbindDeviceFromGatewayResponse < 3) {}
  buildCounterUnbindDeviceFromGatewayResponse--;
  return o;
}

checkUnbindDeviceFromGatewayResponse(api.UnbindDeviceFromGatewayResponse o) {
  buildCounterUnbindDeviceFromGatewayResponse++;
  if (buildCounterUnbindDeviceFromGatewayResponse < 3) {}
  buildCounterUnbindDeviceFromGatewayResponse--;
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

buildUnnamed117() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed117(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed118() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed118(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed119() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed119(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed120() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed120(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-BindDeviceToGatewayRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBindDeviceToGatewayRequest();
      var od = new api.BindDeviceToGatewayRequest.fromJson(o.toJson());
      checkBindDeviceToGatewayRequest(od);
    });
  });

  unittest.group("obj-schema-BindDeviceToGatewayResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBindDeviceToGatewayResponse();
      var od = new api.BindDeviceToGatewayResponse.fromJson(o.toJson());
      checkBindDeviceToGatewayResponse(od);
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

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-GatewayConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGatewayConfig();
      var od = new api.GatewayConfig.fromJson(o.toJson());
      checkGatewayConfig(od);
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

  unittest.group("obj-schema-SendCommandToDeviceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSendCommandToDeviceRequest();
      var od = new api.SendCommandToDeviceRequest.fromJson(o.toJson());
      checkSendCommandToDeviceRequest(od);
    });
  });

  unittest.group("obj-schema-SendCommandToDeviceResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSendCommandToDeviceResponse();
      var od = new api.SendCommandToDeviceResponse.fromJson(o.toJson());
      checkSendCommandToDeviceResponse(od);
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

  unittest.group("obj-schema-UnbindDeviceFromGatewayRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnbindDeviceFromGatewayRequest();
      var od = new api.UnbindDeviceFromGatewayRequest.fromJson(o.toJson());
      checkUnbindDeviceFromGatewayRequest(od);
    });
  });

  unittest.group("obj-schema-UnbindDeviceFromGatewayResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnbindDeviceFromGatewayResponse();
      var od = new api.UnbindDeviceFromGatewayResponse.fromJson(o.toJson());
      checkUnbindDeviceFromGatewayResponse(od);
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
    unittest.test("method--bindDeviceToGateway", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries;
      var arg_request = buildBindDeviceToGatewayRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BindDeviceToGatewayRequest.fromJson(json);
        checkBindDeviceToGatewayRequest(obj);

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
        var resp = convert.json.encode(buildBindDeviceToGatewayResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bindDeviceToGateway(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBindDeviceToGatewayResponse(response);
      })));
    });

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
        var resp = convert.json.encode(buildDeviceRegistry());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var resp = convert.json.encode(buildDeviceRegistry());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDeviceRegistriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDeviceRegistry());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });

    unittest.test("method--unbindDeviceFromGateway", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries;
      var arg_request = buildUnbindDeviceFromGatewayRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UnbindDeviceFromGatewayRequest.fromJson(json);
        checkUnbindDeviceFromGatewayRequest(obj);

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
        var resp = convert.json.encode(buildUnbindDeviceFromGatewayResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unbindDeviceFromGateway(arg_request, arg_parent,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUnbindDeviceFromGatewayResponse(response);
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
        var resp = convert.json.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
            queryMap["fieldMask"].first, unittest.equals(arg_fieldMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, fieldMask: arg_fieldMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevice(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesDevicesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries.devices;
      var arg_parent = "foo";
      var arg_deviceIds = buildUnnamed117();
      var arg_deviceNumIds = buildUnnamed118();
      var arg_gatewayListOptions_associationsDeviceId = "foo";
      var arg_gatewayListOptions_gatewayType = "foo";
      var arg_gatewayListOptions_associationsGatewayId = "foo";
      var arg_pageToken = "foo";
      var arg_fieldMask = "foo";
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
        unittest.expect(queryMap["deviceIds"], unittest.equals(arg_deviceIds));
        unittest.expect(
            queryMap["deviceNumIds"], unittest.equals(arg_deviceNumIds));
        unittest.expect(
            queryMap["gatewayListOptions.associationsDeviceId"].first,
            unittest.equals(arg_gatewayListOptions_associationsDeviceId));
        unittest.expect(queryMap["gatewayListOptions.gatewayType"].first,
            unittest.equals(arg_gatewayListOptions_gatewayType));
        unittest.expect(
            queryMap["gatewayListOptions.associationsGatewayId"].first,
            unittest.equals(arg_gatewayListOptions_associationsGatewayId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["fieldMask"].first, unittest.equals(arg_fieldMask));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDevicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              deviceIds: arg_deviceIds,
              deviceNumIds: arg_deviceNumIds,
              gatewayListOptions_associationsDeviceId:
                  arg_gatewayListOptions_associationsDeviceId,
              gatewayListOptions_gatewayType:
                  arg_gatewayListOptions_gatewayType,
              gatewayListOptions_associationsGatewayId:
                  arg_gatewayListOptions_associationsGatewayId,
              pageToken: arg_pageToken,
              fieldMask: arg_fieldMask,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var resp = convert.json.encode(buildDeviceConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .modifyCloudToDeviceConfig(arg_request, arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevice(response);
      })));
    });

    unittest.test("method--sendCommandToDevice", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesDevicesResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries.devices;
      var arg_request = buildSendCommandToDeviceRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SendCommandToDeviceRequest.fromJson(json);
        checkSendCommandToDeviceRequest(obj);

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
        var resp = convert.json.encode(buildSendCommandToDeviceResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sendCommandToDevice(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSendCommandToDeviceResponse(response);
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
        unittest.expect(core.int.parse(queryMap["numVersions"].first),
            unittest.equals(arg_numVersions));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDeviceConfigVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name, numVersions: arg_numVersions, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        unittest.expect(core.int.parse(queryMap["numStates"].first),
            unittest.equals(arg_numStates));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDeviceStatesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name, numStates: arg_numStates, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDeviceStatesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsRegistriesGroupsResourceApi", () {
    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesGroupsResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries.groups;
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesGroupsResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries.groups;
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesGroupsResourceApi res =
          new api.CloudiotApi(mock).projects.locations.registries.groups;
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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsRegistriesGroupsDevicesResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRegistriesGroupsDevicesResourceApi res =
          new api.CloudiotApi(mock)
              .projects
              .locations
              .registries
              .groups
              .devices;
      var arg_parent = "foo";
      var arg_deviceNumIds = buildUnnamed119();
      var arg_gatewayListOptions_associationsDeviceId = "foo";
      var arg_gatewayListOptions_gatewayType = "foo";
      var arg_gatewayListOptions_associationsGatewayId = "foo";
      var arg_pageToken = "foo";
      var arg_fieldMask = "foo";
      var arg_pageSize = 42;
      var arg_deviceIds = buildUnnamed120();
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
            queryMap["deviceNumIds"], unittest.equals(arg_deviceNumIds));
        unittest.expect(
            queryMap["gatewayListOptions.associationsDeviceId"].first,
            unittest.equals(arg_gatewayListOptions_associationsDeviceId));
        unittest.expect(queryMap["gatewayListOptions.gatewayType"].first,
            unittest.equals(arg_gatewayListOptions_gatewayType));
        unittest.expect(
            queryMap["gatewayListOptions.associationsGatewayId"].first,
            unittest.equals(arg_gatewayListOptions_associationsGatewayId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["fieldMask"].first, unittest.equals(arg_fieldMask));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["deviceIds"], unittest.equals(arg_deviceIds));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDevicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              deviceNumIds: arg_deviceNumIds,
              gatewayListOptions_associationsDeviceId:
                  arg_gatewayListOptions_associationsDeviceId,
              gatewayListOptions_gatewayType:
                  arg_gatewayListOptions_gatewayType,
              gatewayListOptions_associationsGatewayId:
                  arg_gatewayListOptions_associationsGatewayId,
              pageToken: arg_pageToken,
              fieldMask: arg_fieldMask,
              pageSize: arg_pageSize,
              deviceIds: arg_deviceIds,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDevicesResponse(response);
      })));
    });
  });
}
