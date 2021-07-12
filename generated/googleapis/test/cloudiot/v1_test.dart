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

import 'package:googleapis/cloudiot/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterBindDeviceToGatewayRequest = 0;
api.BindDeviceToGatewayRequest buildBindDeviceToGatewayRequest() {
  final o = api.BindDeviceToGatewayRequest();
  buildCounterBindDeviceToGatewayRequest++;
  if (buildCounterBindDeviceToGatewayRequest < 3) {
    o.deviceId = 'foo';
    o.gatewayId = 'foo';
  }
  buildCounterBindDeviceToGatewayRequest--;
  return o;
}

void checkBindDeviceToGatewayRequest(api.BindDeviceToGatewayRequest o) {
  buildCounterBindDeviceToGatewayRequest++;
  if (buildCounterBindDeviceToGatewayRequest < 3) {
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gatewayId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBindDeviceToGatewayRequest--;
}

core.int buildCounterBindDeviceToGatewayResponse = 0;
api.BindDeviceToGatewayResponse buildBindDeviceToGatewayResponse() {
  final o = api.BindDeviceToGatewayResponse();
  buildCounterBindDeviceToGatewayResponse++;
  if (buildCounterBindDeviceToGatewayResponse < 3) {}
  buildCounterBindDeviceToGatewayResponse--;
  return o;
}

void checkBindDeviceToGatewayResponse(api.BindDeviceToGatewayResponse o) {
  buildCounterBindDeviceToGatewayResponse++;
  if (buildCounterBindDeviceToGatewayResponse < 3) {}
  buildCounterBindDeviceToGatewayResponse--;
}

core.List<core.String> buildUnnamed3267() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3267(core.List<core.String> o) {
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
    o.members = buildUnnamed3267();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed3267(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.List<api.DeviceCredential> buildUnnamed3268() {
  final o = <api.DeviceCredential>[];
  o.add(buildDeviceCredential());
  o.add(buildDeviceCredential());
  return o;
}

void checkUnnamed3268(core.List<api.DeviceCredential> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceCredential(o[0]);
  checkDeviceCredential(o[1]);
}

core.Map<core.String, core.String> buildUnnamed3269() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3269(core.Map<core.String, core.String> o) {
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

core.int buildCounterDevice = 0;
api.Device buildDevice() {
  final o = api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.blocked = true;
    o.config = buildDeviceConfig();
    o.credentials = buildUnnamed3268();
    o.gatewayConfig = buildGatewayConfig();
    o.id = 'foo';
    o.lastConfigAckTime = 'foo';
    o.lastConfigSendTime = 'foo';
    o.lastErrorStatus = buildStatus();
    o.lastErrorTime = 'foo';
    o.lastEventTime = 'foo';
    o.lastHeartbeatTime = 'foo';
    o.lastStateTime = 'foo';
    o.logLevel = 'foo';
    o.metadata = buildUnnamed3269();
    o.name = 'foo';
    o.numId = 'foo';
    o.state = buildDeviceState();
  }
  buildCounterDevice--;
  return o;
}

void checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    unittest.expect(o.blocked!, unittest.isTrue);
    checkDeviceConfig(o.config!);
    checkUnnamed3268(o.credentials!);
    checkGatewayConfig(o.gatewayConfig!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastConfigAckTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastConfigSendTime!,
      unittest.equals('foo'),
    );
    checkStatus(o.lastErrorStatus!);
    unittest.expect(
      o.lastErrorTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastEventTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastHeartbeatTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastStateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logLevel!,
      unittest.equals('foo'),
    );
    checkUnnamed3269(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numId!,
      unittest.equals('foo'),
    );
    checkDeviceState(o.state!);
  }
  buildCounterDevice--;
}

core.int buildCounterDeviceConfig = 0;
api.DeviceConfig buildDeviceConfig() {
  final o = api.DeviceConfig();
  buildCounterDeviceConfig++;
  if (buildCounterDeviceConfig < 3) {
    o.binaryData = 'foo';
    o.cloudUpdateTime = 'foo';
    o.deviceAckTime = 'foo';
    o.version = 'foo';
  }
  buildCounterDeviceConfig--;
  return o;
}

void checkDeviceConfig(api.DeviceConfig o) {
  buildCounterDeviceConfig++;
  if (buildCounterDeviceConfig < 3) {
    unittest.expect(
      o.binaryData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cloudUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceAckTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeviceConfig--;
}

core.int buildCounterDeviceCredential = 0;
api.DeviceCredential buildDeviceCredential() {
  final o = api.DeviceCredential();
  buildCounterDeviceCredential++;
  if (buildCounterDeviceCredential < 3) {
    o.expirationTime = 'foo';
    o.publicKey = buildPublicKeyCredential();
  }
  buildCounterDeviceCredential--;
  return o;
}

void checkDeviceCredential(api.DeviceCredential o) {
  buildCounterDeviceCredential++;
  if (buildCounterDeviceCredential < 3) {
    unittest.expect(
      o.expirationTime!,
      unittest.equals('foo'),
    );
    checkPublicKeyCredential(o.publicKey!);
  }
  buildCounterDeviceCredential--;
}

core.List<api.RegistryCredential> buildUnnamed3270() {
  final o = <api.RegistryCredential>[];
  o.add(buildRegistryCredential());
  o.add(buildRegistryCredential());
  return o;
}

void checkUnnamed3270(core.List<api.RegistryCredential> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegistryCredential(o[0]);
  checkRegistryCredential(o[1]);
}

core.List<api.EventNotificationConfig> buildUnnamed3271() {
  final o = <api.EventNotificationConfig>[];
  o.add(buildEventNotificationConfig());
  o.add(buildEventNotificationConfig());
  return o;
}

void checkUnnamed3271(core.List<api.EventNotificationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventNotificationConfig(o[0]);
  checkEventNotificationConfig(o[1]);
}

core.int buildCounterDeviceRegistry = 0;
api.DeviceRegistry buildDeviceRegistry() {
  final o = api.DeviceRegistry();
  buildCounterDeviceRegistry++;
  if (buildCounterDeviceRegistry < 3) {
    o.credentials = buildUnnamed3270();
    o.eventNotificationConfigs = buildUnnamed3271();
    o.httpConfig = buildHttpConfig();
    o.id = 'foo';
    o.logLevel = 'foo';
    o.mqttConfig = buildMqttConfig();
    o.name = 'foo';
    o.stateNotificationConfig = buildStateNotificationConfig();
  }
  buildCounterDeviceRegistry--;
  return o;
}

void checkDeviceRegistry(api.DeviceRegistry o) {
  buildCounterDeviceRegistry++;
  if (buildCounterDeviceRegistry < 3) {
    checkUnnamed3270(o.credentials!);
    checkUnnamed3271(o.eventNotificationConfigs!);
    checkHttpConfig(o.httpConfig!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logLevel!,
      unittest.equals('foo'),
    );
    checkMqttConfig(o.mqttConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkStateNotificationConfig(o.stateNotificationConfig!);
  }
  buildCounterDeviceRegistry--;
}

core.int buildCounterDeviceState = 0;
api.DeviceState buildDeviceState() {
  final o = api.DeviceState();
  buildCounterDeviceState++;
  if (buildCounterDeviceState < 3) {
    o.binaryData = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterDeviceState--;
  return o;
}

void checkDeviceState(api.DeviceState o) {
  buildCounterDeviceState++;
  if (buildCounterDeviceState < 3) {
    unittest.expect(
      o.binaryData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeviceState--;
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

core.int buildCounterEventNotificationConfig = 0;
api.EventNotificationConfig buildEventNotificationConfig() {
  final o = api.EventNotificationConfig();
  buildCounterEventNotificationConfig++;
  if (buildCounterEventNotificationConfig < 3) {
    o.pubsubTopicName = 'foo';
    o.subfolderMatches = 'foo';
  }
  buildCounterEventNotificationConfig--;
  return o;
}

void checkEventNotificationConfig(api.EventNotificationConfig o) {
  buildCounterEventNotificationConfig++;
  if (buildCounterEventNotificationConfig < 3) {
    unittest.expect(
      o.pubsubTopicName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subfolderMatches!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventNotificationConfig--;
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

core.int buildCounterGatewayConfig = 0;
api.GatewayConfig buildGatewayConfig() {
  final o = api.GatewayConfig();
  buildCounterGatewayConfig++;
  if (buildCounterGatewayConfig < 3) {
    o.gatewayAuthMethod = 'foo';
    o.gatewayType = 'foo';
    o.lastAccessedGatewayId = 'foo';
    o.lastAccessedGatewayTime = 'foo';
  }
  buildCounterGatewayConfig--;
  return o;
}

void checkGatewayConfig(api.GatewayConfig o) {
  buildCounterGatewayConfig++;
  if (buildCounterGatewayConfig < 3) {
    unittest.expect(
      o.gatewayAuthMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gatewayType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastAccessedGatewayId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastAccessedGatewayTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGatewayConfig--;
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
    unittest.expect(
      o.requestedPolicyVersion!,
      unittest.equals(42),
    );
  }
  buildCounterGetPolicyOptions--;
}

core.int buildCounterHttpConfig = 0;
api.HttpConfig buildHttpConfig() {
  final o = api.HttpConfig();
  buildCounterHttpConfig++;
  if (buildCounterHttpConfig < 3) {
    o.httpEnabledState = 'foo';
  }
  buildCounterHttpConfig--;
  return o;
}

void checkHttpConfig(api.HttpConfig o) {
  buildCounterHttpConfig++;
  if (buildCounterHttpConfig < 3) {
    unittest.expect(
      o.httpEnabledState!,
      unittest.equals('foo'),
    );
  }
  buildCounterHttpConfig--;
}

core.List<api.DeviceConfig> buildUnnamed3272() {
  final o = <api.DeviceConfig>[];
  o.add(buildDeviceConfig());
  o.add(buildDeviceConfig());
  return o;
}

void checkUnnamed3272(core.List<api.DeviceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceConfig(o[0]);
  checkDeviceConfig(o[1]);
}

core.int buildCounterListDeviceConfigVersionsResponse = 0;
api.ListDeviceConfigVersionsResponse buildListDeviceConfigVersionsResponse() {
  final o = api.ListDeviceConfigVersionsResponse();
  buildCounterListDeviceConfigVersionsResponse++;
  if (buildCounterListDeviceConfigVersionsResponse < 3) {
    o.deviceConfigs = buildUnnamed3272();
  }
  buildCounterListDeviceConfigVersionsResponse--;
  return o;
}

void checkListDeviceConfigVersionsResponse(
    api.ListDeviceConfigVersionsResponse o) {
  buildCounterListDeviceConfigVersionsResponse++;
  if (buildCounterListDeviceConfigVersionsResponse < 3) {
    checkUnnamed3272(o.deviceConfigs!);
  }
  buildCounterListDeviceConfigVersionsResponse--;
}

core.List<api.DeviceRegistry> buildUnnamed3273() {
  final o = <api.DeviceRegistry>[];
  o.add(buildDeviceRegistry());
  o.add(buildDeviceRegistry());
  return o;
}

void checkUnnamed3273(core.List<api.DeviceRegistry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceRegistry(o[0]);
  checkDeviceRegistry(o[1]);
}

core.int buildCounterListDeviceRegistriesResponse = 0;
api.ListDeviceRegistriesResponse buildListDeviceRegistriesResponse() {
  final o = api.ListDeviceRegistriesResponse();
  buildCounterListDeviceRegistriesResponse++;
  if (buildCounterListDeviceRegistriesResponse < 3) {
    o.deviceRegistries = buildUnnamed3273();
    o.nextPageToken = 'foo';
  }
  buildCounterListDeviceRegistriesResponse--;
  return o;
}

void checkListDeviceRegistriesResponse(api.ListDeviceRegistriesResponse o) {
  buildCounterListDeviceRegistriesResponse++;
  if (buildCounterListDeviceRegistriesResponse < 3) {
    checkUnnamed3273(o.deviceRegistries!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDeviceRegistriesResponse--;
}

core.List<api.DeviceState> buildUnnamed3274() {
  final o = <api.DeviceState>[];
  o.add(buildDeviceState());
  o.add(buildDeviceState());
  return o;
}

void checkUnnamed3274(core.List<api.DeviceState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceState(o[0]);
  checkDeviceState(o[1]);
}

core.int buildCounterListDeviceStatesResponse = 0;
api.ListDeviceStatesResponse buildListDeviceStatesResponse() {
  final o = api.ListDeviceStatesResponse();
  buildCounterListDeviceStatesResponse++;
  if (buildCounterListDeviceStatesResponse < 3) {
    o.deviceStates = buildUnnamed3274();
  }
  buildCounterListDeviceStatesResponse--;
  return o;
}

void checkListDeviceStatesResponse(api.ListDeviceStatesResponse o) {
  buildCounterListDeviceStatesResponse++;
  if (buildCounterListDeviceStatesResponse < 3) {
    checkUnnamed3274(o.deviceStates!);
  }
  buildCounterListDeviceStatesResponse--;
}

core.List<api.Device> buildUnnamed3275() {
  final o = <api.Device>[];
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

void checkUnnamed3275(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterListDevicesResponse = 0;
api.ListDevicesResponse buildListDevicesResponse() {
  final o = api.ListDevicesResponse();
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    o.devices = buildUnnamed3275();
    o.nextPageToken = 'foo';
  }
  buildCounterListDevicesResponse--;
  return o;
}

void checkListDevicesResponse(api.ListDevicesResponse o) {
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    checkUnnamed3275(o.devices!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDevicesResponse--;
}

core.int buildCounterModifyCloudToDeviceConfigRequest = 0;
api.ModifyCloudToDeviceConfigRequest buildModifyCloudToDeviceConfigRequest() {
  final o = api.ModifyCloudToDeviceConfigRequest();
  buildCounterModifyCloudToDeviceConfigRequest++;
  if (buildCounterModifyCloudToDeviceConfigRequest < 3) {
    o.binaryData = 'foo';
    o.versionToUpdate = 'foo';
  }
  buildCounterModifyCloudToDeviceConfigRequest--;
  return o;
}

void checkModifyCloudToDeviceConfigRequest(
    api.ModifyCloudToDeviceConfigRequest o) {
  buildCounterModifyCloudToDeviceConfigRequest++;
  if (buildCounterModifyCloudToDeviceConfigRequest < 3) {
    unittest.expect(
      o.binaryData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionToUpdate!,
      unittest.equals('foo'),
    );
  }
  buildCounterModifyCloudToDeviceConfigRequest--;
}

core.int buildCounterMqttConfig = 0;
api.MqttConfig buildMqttConfig() {
  final o = api.MqttConfig();
  buildCounterMqttConfig++;
  if (buildCounterMqttConfig < 3) {
    o.mqttEnabledState = 'foo';
  }
  buildCounterMqttConfig--;
  return o;
}

void checkMqttConfig(api.MqttConfig o) {
  buildCounterMqttConfig++;
  if (buildCounterMqttConfig < 3) {
    unittest.expect(
      o.mqttEnabledState!,
      unittest.equals('foo'),
    );
  }
  buildCounterMqttConfig--;
}

core.List<api.Binding> buildUnnamed3276() {
  final o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed3276(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed3276();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed3276(o.bindings!);
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

core.int buildCounterPublicKeyCertificate = 0;
api.PublicKeyCertificate buildPublicKeyCertificate() {
  final o = api.PublicKeyCertificate();
  buildCounterPublicKeyCertificate++;
  if (buildCounterPublicKeyCertificate < 3) {
    o.certificate = 'foo';
    o.format = 'foo';
    o.x509Details = buildX509CertificateDetails();
  }
  buildCounterPublicKeyCertificate--;
  return o;
}

void checkPublicKeyCertificate(api.PublicKeyCertificate o) {
  buildCounterPublicKeyCertificate++;
  if (buildCounterPublicKeyCertificate < 3) {
    unittest.expect(
      o.certificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    checkX509CertificateDetails(o.x509Details!);
  }
  buildCounterPublicKeyCertificate--;
}

core.int buildCounterPublicKeyCredential = 0;
api.PublicKeyCredential buildPublicKeyCredential() {
  final o = api.PublicKeyCredential();
  buildCounterPublicKeyCredential++;
  if (buildCounterPublicKeyCredential < 3) {
    o.format = 'foo';
    o.key = 'foo';
  }
  buildCounterPublicKeyCredential--;
  return o;
}

void checkPublicKeyCredential(api.PublicKeyCredential o) {
  buildCounterPublicKeyCredential++;
  if (buildCounterPublicKeyCredential < 3) {
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterPublicKeyCredential--;
}

core.int buildCounterRegistryCredential = 0;
api.RegistryCredential buildRegistryCredential() {
  final o = api.RegistryCredential();
  buildCounterRegistryCredential++;
  if (buildCounterRegistryCredential < 3) {
    o.publicKeyCertificate = buildPublicKeyCertificate();
  }
  buildCounterRegistryCredential--;
  return o;
}

void checkRegistryCredential(api.RegistryCredential o) {
  buildCounterRegistryCredential++;
  if (buildCounterRegistryCredential < 3) {
    checkPublicKeyCertificate(o.publicKeyCertificate!);
  }
  buildCounterRegistryCredential--;
}

core.int buildCounterSendCommandToDeviceRequest = 0;
api.SendCommandToDeviceRequest buildSendCommandToDeviceRequest() {
  final o = api.SendCommandToDeviceRequest();
  buildCounterSendCommandToDeviceRequest++;
  if (buildCounterSendCommandToDeviceRequest < 3) {
    o.binaryData = 'foo';
    o.subfolder = 'foo';
  }
  buildCounterSendCommandToDeviceRequest--;
  return o;
}

void checkSendCommandToDeviceRequest(api.SendCommandToDeviceRequest o) {
  buildCounterSendCommandToDeviceRequest++;
  if (buildCounterSendCommandToDeviceRequest < 3) {
    unittest.expect(
      o.binaryData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subfolder!,
      unittest.equals('foo'),
    );
  }
  buildCounterSendCommandToDeviceRequest--;
}

core.int buildCounterSendCommandToDeviceResponse = 0;
api.SendCommandToDeviceResponse buildSendCommandToDeviceResponse() {
  final o = api.SendCommandToDeviceResponse();
  buildCounterSendCommandToDeviceResponse++;
  if (buildCounterSendCommandToDeviceResponse < 3) {}
  buildCounterSendCommandToDeviceResponse--;
  return o;
}

void checkSendCommandToDeviceResponse(api.SendCommandToDeviceResponse o) {
  buildCounterSendCommandToDeviceResponse++;
  if (buildCounterSendCommandToDeviceResponse < 3) {}
  buildCounterSendCommandToDeviceResponse--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterStateNotificationConfig = 0;
api.StateNotificationConfig buildStateNotificationConfig() {
  final o = api.StateNotificationConfig();
  buildCounterStateNotificationConfig++;
  if (buildCounterStateNotificationConfig < 3) {
    o.pubsubTopicName = 'foo';
  }
  buildCounterStateNotificationConfig--;
  return o;
}

void checkStateNotificationConfig(api.StateNotificationConfig o) {
  buildCounterStateNotificationConfig++;
  if (buildCounterStateNotificationConfig < 3) {
    unittest.expect(
      o.pubsubTopicName!,
      unittest.equals('foo'),
    );
  }
  buildCounterStateNotificationConfig--;
}

core.Map<core.String, core.Object> buildUnnamed3277() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed3277(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed3278() {
  final o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed3277());
  o.add(buildUnnamed3277());
  return o;
}

void checkUnnamed3278(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3277(o[0]);
  checkUnnamed3277(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3278();
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
    checkUnnamed3278(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed3279() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3279(core.List<core.String> o) {
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
    o.permissions = buildUnnamed3279();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed3279(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed3280() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3280(core.List<core.String> o) {
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
    o.permissions = buildUnnamed3280();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed3280(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUnbindDeviceFromGatewayRequest = 0;
api.UnbindDeviceFromGatewayRequest buildUnbindDeviceFromGatewayRequest() {
  final o = api.UnbindDeviceFromGatewayRequest();
  buildCounterUnbindDeviceFromGatewayRequest++;
  if (buildCounterUnbindDeviceFromGatewayRequest < 3) {
    o.deviceId = 'foo';
    o.gatewayId = 'foo';
  }
  buildCounterUnbindDeviceFromGatewayRequest--;
  return o;
}

void checkUnbindDeviceFromGatewayRequest(api.UnbindDeviceFromGatewayRequest o) {
  buildCounterUnbindDeviceFromGatewayRequest++;
  if (buildCounterUnbindDeviceFromGatewayRequest < 3) {
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gatewayId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUnbindDeviceFromGatewayRequest--;
}

core.int buildCounterUnbindDeviceFromGatewayResponse = 0;
api.UnbindDeviceFromGatewayResponse buildUnbindDeviceFromGatewayResponse() {
  final o = api.UnbindDeviceFromGatewayResponse();
  buildCounterUnbindDeviceFromGatewayResponse++;
  if (buildCounterUnbindDeviceFromGatewayResponse < 3) {}
  buildCounterUnbindDeviceFromGatewayResponse--;
  return o;
}

void checkUnbindDeviceFromGatewayResponse(
    api.UnbindDeviceFromGatewayResponse o) {
  buildCounterUnbindDeviceFromGatewayResponse++;
  if (buildCounterUnbindDeviceFromGatewayResponse < 3) {}
  buildCounterUnbindDeviceFromGatewayResponse--;
}

core.int buildCounterX509CertificateDetails = 0;
api.X509CertificateDetails buildX509CertificateDetails() {
  final o = api.X509CertificateDetails();
  buildCounterX509CertificateDetails++;
  if (buildCounterX509CertificateDetails < 3) {
    o.expiryTime = 'foo';
    o.issuer = 'foo';
    o.publicKeyType = 'foo';
    o.signatureAlgorithm = 'foo';
    o.startTime = 'foo';
    o.subject = 'foo';
  }
  buildCounterX509CertificateDetails--;
  return o;
}

void checkX509CertificateDetails(api.X509CertificateDetails o) {
  buildCounterX509CertificateDetails++;
  if (buildCounterX509CertificateDetails < 3) {
    unittest.expect(
      o.expiryTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.issuer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicKeyType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signatureAlgorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subject!,
      unittest.equals('foo'),
    );
  }
  buildCounterX509CertificateDetails--;
}

core.List<core.String> buildUnnamed3281() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3281(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3282() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3282(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3283() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3283(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3284() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3284(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-BindDeviceToGatewayRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBindDeviceToGatewayRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BindDeviceToGatewayRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBindDeviceToGatewayRequest(od);
    });
  });

  unittest.group('obj-schema-BindDeviceToGatewayResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBindDeviceToGatewayResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BindDeviceToGatewayResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBindDeviceToGatewayResponse(od);
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

  unittest.group('obj-schema-Device', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Device.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDevice(od);
    });
  });

  unittest.group('obj-schema-DeviceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceConfig(od);
    });
  });

  unittest.group('obj-schema-DeviceCredential', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceCredential();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceCredential.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceCredential(od);
    });
  });

  unittest.group('obj-schema-DeviceRegistry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceRegistry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceRegistry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceRegistry(od);
    });
  });

  unittest.group('obj-schema-DeviceState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceState(od);
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

  unittest.group('obj-schema-EventNotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventNotificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventNotificationConfig(od);
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

  unittest.group('obj-schema-GatewayConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGatewayConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GatewayConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGatewayConfig(od);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPolicyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetPolicyOptions(od);
    });
  });

  unittest.group('obj-schema-HttpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HttpConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttpConfig(od);
    });
  });

  unittest.group('obj-schema-ListDeviceConfigVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDeviceConfigVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDeviceConfigVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDeviceConfigVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDeviceRegistriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDeviceRegistriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDeviceRegistriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDeviceRegistriesResponse(od);
    });
  });

  unittest.group('obj-schema-ListDeviceStatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDeviceStatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDeviceStatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDeviceStatesResponse(od);
    });
  });

  unittest.group('obj-schema-ListDevicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDevicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDevicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDevicesResponse(od);
    });
  });

  unittest.group('obj-schema-ModifyCloudToDeviceConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyCloudToDeviceConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyCloudToDeviceConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyCloudToDeviceConfigRequest(od);
    });
  });

  unittest.group('obj-schema-MqttConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMqttConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MqttConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMqttConfig(od);
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

  unittest.group('obj-schema-PublicKeyCertificate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublicKeyCertificate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublicKeyCertificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPublicKeyCertificate(od);
    });
  });

  unittest.group('obj-schema-PublicKeyCredential', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublicKeyCredential();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublicKeyCredential.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPublicKeyCredential(od);
    });
  });

  unittest.group('obj-schema-RegistryCredential', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegistryCredential();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegistryCredential.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegistryCredential(od);
    });
  });

  unittest.group('obj-schema-SendCommandToDeviceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendCommandToDeviceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendCommandToDeviceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSendCommandToDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-SendCommandToDeviceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendCommandToDeviceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendCommandToDeviceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSendCommandToDeviceResponse(od);
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

  unittest.group('obj-schema-StateNotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStateNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StateNotificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStateNotificationConfig(od);
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

  unittest.group('obj-schema-UnbindDeviceFromGatewayRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnbindDeviceFromGatewayRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnbindDeviceFromGatewayRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnbindDeviceFromGatewayRequest(od);
    });
  });

  unittest.group('obj-schema-UnbindDeviceFromGatewayResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnbindDeviceFromGatewayResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnbindDeviceFromGatewayResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnbindDeviceFromGatewayResponse(od);
    });
  });

  unittest.group('obj-schema-X509CertificateDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildX509CertificateDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.X509CertificateDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkX509CertificateDetails(od);
    });
  });

  unittest.group('resource-ProjectsLocationsRegistriesResource', () {
    unittest.test('method--bindDeviceToGateway', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries;
      final arg_request = buildBindDeviceToGatewayRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BindDeviceToGatewayRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBindDeviceToGatewayRequest(obj);

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
        final resp = convert.json.encode(buildBindDeviceToGatewayResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.bindDeviceToGateway(arg_request, arg_parent,
          $fields: arg_$fields);
      checkBindDeviceToGatewayResponse(
          response as api.BindDeviceToGatewayResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries;
      final arg_request = buildDeviceRegistry();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeviceRegistry.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeviceRegistry(obj);

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
        final resp = convert.json.encode(buildDeviceRegistry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkDeviceRegistry(response as api.DeviceRegistry);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries;
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
        final resp = convert.json.encode(buildDeviceRegistry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDeviceRegistry(response as api.DeviceRegistry);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListDeviceRegistriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDeviceRegistriesResponse(
          response as api.ListDeviceRegistriesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries;
      final arg_request = buildDeviceRegistry();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeviceRegistry.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeviceRegistry(obj);

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
        final resp = convert.json.encode(buildDeviceRegistry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkDeviceRegistry(response as api.DeviceRegistry);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });

    unittest.test('method--unbindDeviceFromGateway', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries;
      final arg_request = buildUnbindDeviceFromGatewayRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UnbindDeviceFromGatewayRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUnbindDeviceFromGatewayRequest(obj);

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
        final resp =
            convert.json.encode(buildUnbindDeviceFromGatewayResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.unbindDeviceFromGateway(
          arg_request, arg_parent,
          $fields: arg_$fields);
      checkUnbindDeviceFromGatewayResponse(
          response as api.UnbindDeviceFromGatewayResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRegistriesDevicesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries.devices;
      final arg_request = buildDevice();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Device.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDevice(obj);

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
        final resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkDevice(response as api.Device);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries.devices;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries.devices;
      final arg_name = 'foo';
      final arg_fieldMask = 'foo';
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
          queryMap['fieldMask']!.first,
          unittest.equals(arg_fieldMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          fieldMask: arg_fieldMask, $fields: arg_$fields);
      checkDevice(response as api.Device);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries.devices;
      final arg_parent = 'foo';
      final arg_deviceIds = buildUnnamed3281();
      final arg_deviceNumIds = buildUnnamed3282();
      final arg_fieldMask = 'foo';
      final arg_gatewayListOptions_associationsDeviceId = 'foo';
      final arg_gatewayListOptions_associationsGatewayId = 'foo';
      final arg_gatewayListOptions_gatewayType = 'foo';
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
          queryMap['deviceIds']!,
          unittest.equals(arg_deviceIds),
        );
        unittest.expect(
          queryMap['deviceNumIds']!,
          unittest.equals(arg_deviceNumIds),
        );
        unittest.expect(
          queryMap['fieldMask']!.first,
          unittest.equals(arg_fieldMask),
        );
        unittest.expect(
          queryMap['gatewayListOptions.associationsDeviceId']!.first,
          unittest.equals(arg_gatewayListOptions_associationsDeviceId),
        );
        unittest.expect(
          queryMap['gatewayListOptions.associationsGatewayId']!.first,
          unittest.equals(arg_gatewayListOptions_associationsGatewayId),
        );
        unittest.expect(
          queryMap['gatewayListOptions.gatewayType']!.first,
          unittest.equals(arg_gatewayListOptions_gatewayType),
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
        final resp = convert.json.encode(buildListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          deviceIds: arg_deviceIds,
          deviceNumIds: arg_deviceNumIds,
          fieldMask: arg_fieldMask,
          gatewayListOptions_associationsDeviceId:
              arg_gatewayListOptions_associationsDeviceId,
          gatewayListOptions_associationsGatewayId:
              arg_gatewayListOptions_associationsGatewayId,
          gatewayListOptions_gatewayType: arg_gatewayListOptions_gatewayType,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDevicesResponse(response as api.ListDevicesResponse);
    });

    unittest.test('method--modifyCloudToDeviceConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries.devices;
      final arg_request = buildModifyCloudToDeviceConfigRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ModifyCloudToDeviceConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyCloudToDeviceConfigRequest(obj);

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
        final resp = convert.json.encode(buildDeviceConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.modifyCloudToDeviceConfig(
          arg_request, arg_name,
          $fields: arg_$fields);
      checkDeviceConfig(response as api.DeviceConfig);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries.devices;
      final arg_request = buildDevice();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Device.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDevice(obj);

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
        final resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkDevice(response as api.Device);
    });

    unittest.test('method--sendCommandToDevice', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries.devices;
      final arg_request = buildSendCommandToDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SendCommandToDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSendCommandToDeviceRequest(obj);

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
        final resp = convert.json.encode(buildSendCommandToDeviceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.sendCommandToDevice(arg_request, arg_name,
          $fields: arg_$fields);
      checkSendCommandToDeviceResponse(
          response as api.SendCommandToDeviceResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsRegistriesDevicesConfigVersionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock)
          .projects
          .locations
          .registries
          .devices
          .configVersions;
      final arg_name = 'foo';
      final arg_numVersions = 42;
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
          core.int.parse(queryMap['numVersions']!.first),
          unittest.equals(arg_numVersions),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListDeviceConfigVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          numVersions: arg_numVersions, $fields: arg_$fields);
      checkListDeviceConfigVersionsResponse(
          response as api.ListDeviceConfigVersionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRegistriesDevicesStatesResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudIotApi(mock).projects.locations.registries.devices.states;
      final arg_name = 'foo';
      final arg_numStates = 42;
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
          core.int.parse(queryMap['numStates']!.first),
          unittest.equals(arg_numStates),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListDeviceStatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          numStates: arg_numStates, $fields: arg_$fields);
      checkListDeviceStatesResponse(response as api.ListDeviceStatesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRegistriesGroupsResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries.groups;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries.groups;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudIotApi(mock).projects.locations.registries.groups;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRegistriesGroupsDevicesResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudIotApi(mock).projects.locations.registries.groups.devices;
      final arg_parent = 'foo';
      final arg_deviceIds = buildUnnamed3283();
      final arg_deviceNumIds = buildUnnamed3284();
      final arg_fieldMask = 'foo';
      final arg_gatewayListOptions_associationsDeviceId = 'foo';
      final arg_gatewayListOptions_associationsGatewayId = 'foo';
      final arg_gatewayListOptions_gatewayType = 'foo';
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
          queryMap['deviceIds']!,
          unittest.equals(arg_deviceIds),
        );
        unittest.expect(
          queryMap['deviceNumIds']!,
          unittest.equals(arg_deviceNumIds),
        );
        unittest.expect(
          queryMap['fieldMask']!.first,
          unittest.equals(arg_fieldMask),
        );
        unittest.expect(
          queryMap['gatewayListOptions.associationsDeviceId']!.first,
          unittest.equals(arg_gatewayListOptions_associationsDeviceId),
        );
        unittest.expect(
          queryMap['gatewayListOptions.associationsGatewayId']!.first,
          unittest.equals(arg_gatewayListOptions_associationsGatewayId),
        );
        unittest.expect(
          queryMap['gatewayListOptions.gatewayType']!.first,
          unittest.equals(arg_gatewayListOptions_gatewayType),
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
        final resp = convert.json.encode(buildListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          deviceIds: arg_deviceIds,
          deviceNumIds: arg_deviceNumIds,
          fieldMask: arg_fieldMask,
          gatewayListOptions_associationsDeviceId:
              arg_gatewayListOptions_associationsDeviceId,
          gatewayListOptions_associationsGatewayId:
              arg_gatewayListOptions_associationsGatewayId,
          gatewayListOptions_gatewayType: arg_gatewayListOptions_gatewayType,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDevicesResponse(response as api.ListDevicesResponse);
    });
  });
}
