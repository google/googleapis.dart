// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/cloudiot/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterBindDeviceToGatewayRequest = 0;
api.BindDeviceToGatewayRequest buildBindDeviceToGatewayRequest() {
  var o = api.BindDeviceToGatewayRequest();
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
  var o = api.BindDeviceToGatewayResponse();
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

core.List<core.String> buildUnnamed2860() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2860(core.List<core.String> o) {
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
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed2860();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition! as api.Expr);
    checkUnnamed2860(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.List<api.DeviceCredential> buildUnnamed2861() {
  var o = <api.DeviceCredential>[];
  o.add(buildDeviceCredential());
  o.add(buildDeviceCredential());
  return o;
}

void checkUnnamed2861(core.List<api.DeviceCredential> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceCredential(o[0] as api.DeviceCredential);
  checkDeviceCredential(o[1] as api.DeviceCredential);
}

core.Map<core.String, core.String> buildUnnamed2862() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2862(core.Map<core.String, core.String> o) {
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
  var o = api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.blocked = true;
    o.config = buildDeviceConfig();
    o.credentials = buildUnnamed2861();
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
    o.metadata = buildUnnamed2862();
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
    checkDeviceConfig(o.config! as api.DeviceConfig);
    checkUnnamed2861(o.credentials!);
    checkGatewayConfig(o.gatewayConfig! as api.GatewayConfig);
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
    checkStatus(o.lastErrorStatus! as api.Status);
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
    checkUnnamed2862(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numId!,
      unittest.equals('foo'),
    );
    checkDeviceState(o.state! as api.DeviceState);
  }
  buildCounterDevice--;
}

core.int buildCounterDeviceConfig = 0;
api.DeviceConfig buildDeviceConfig() {
  var o = api.DeviceConfig();
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
  var o = api.DeviceCredential();
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
    checkPublicKeyCredential(o.publicKey! as api.PublicKeyCredential);
  }
  buildCounterDeviceCredential--;
}

core.List<api.RegistryCredential> buildUnnamed2863() {
  var o = <api.RegistryCredential>[];
  o.add(buildRegistryCredential());
  o.add(buildRegistryCredential());
  return o;
}

void checkUnnamed2863(core.List<api.RegistryCredential> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegistryCredential(o[0] as api.RegistryCredential);
  checkRegistryCredential(o[1] as api.RegistryCredential);
}

core.List<api.EventNotificationConfig> buildUnnamed2864() {
  var o = <api.EventNotificationConfig>[];
  o.add(buildEventNotificationConfig());
  o.add(buildEventNotificationConfig());
  return o;
}

void checkUnnamed2864(core.List<api.EventNotificationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventNotificationConfig(o[0] as api.EventNotificationConfig);
  checkEventNotificationConfig(o[1] as api.EventNotificationConfig);
}

core.int buildCounterDeviceRegistry = 0;
api.DeviceRegistry buildDeviceRegistry() {
  var o = api.DeviceRegistry();
  buildCounterDeviceRegistry++;
  if (buildCounterDeviceRegistry < 3) {
    o.credentials = buildUnnamed2863();
    o.eventNotificationConfigs = buildUnnamed2864();
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
    checkUnnamed2863(o.credentials!);
    checkUnnamed2864(o.eventNotificationConfigs!);
    checkHttpConfig(o.httpConfig! as api.HttpConfig);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logLevel!,
      unittest.equals('foo'),
    );
    checkMqttConfig(o.mqttConfig! as api.MqttConfig);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkStateNotificationConfig(
        o.stateNotificationConfig! as api.StateNotificationConfig);
  }
  buildCounterDeviceRegistry--;
}

core.int buildCounterDeviceState = 0;
api.DeviceState buildDeviceState() {
  var o = api.DeviceState();
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
  var o = api.Empty();
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
  var o = api.EventNotificationConfig();
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
  var o = api.Expr();
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
  var o = api.GatewayConfig();
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
  var o = api.GetIamPolicyRequest();
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
    checkGetPolicyOptions(o.options! as api.GetPolicyOptions);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
api.GetPolicyOptions buildGetPolicyOptions() {
  var o = api.GetPolicyOptions();
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
  var o = api.HttpConfig();
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

core.List<api.DeviceConfig> buildUnnamed2865() {
  var o = <api.DeviceConfig>[];
  o.add(buildDeviceConfig());
  o.add(buildDeviceConfig());
  return o;
}

void checkUnnamed2865(core.List<api.DeviceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceConfig(o[0] as api.DeviceConfig);
  checkDeviceConfig(o[1] as api.DeviceConfig);
}

core.int buildCounterListDeviceConfigVersionsResponse = 0;
api.ListDeviceConfigVersionsResponse buildListDeviceConfigVersionsResponse() {
  var o = api.ListDeviceConfigVersionsResponse();
  buildCounterListDeviceConfigVersionsResponse++;
  if (buildCounterListDeviceConfigVersionsResponse < 3) {
    o.deviceConfigs = buildUnnamed2865();
  }
  buildCounterListDeviceConfigVersionsResponse--;
  return o;
}

void checkListDeviceConfigVersionsResponse(
    api.ListDeviceConfigVersionsResponse o) {
  buildCounterListDeviceConfigVersionsResponse++;
  if (buildCounterListDeviceConfigVersionsResponse < 3) {
    checkUnnamed2865(o.deviceConfigs!);
  }
  buildCounterListDeviceConfigVersionsResponse--;
}

core.List<api.DeviceRegistry> buildUnnamed2866() {
  var o = <api.DeviceRegistry>[];
  o.add(buildDeviceRegistry());
  o.add(buildDeviceRegistry());
  return o;
}

void checkUnnamed2866(core.List<api.DeviceRegistry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceRegistry(o[0] as api.DeviceRegistry);
  checkDeviceRegistry(o[1] as api.DeviceRegistry);
}

core.int buildCounterListDeviceRegistriesResponse = 0;
api.ListDeviceRegistriesResponse buildListDeviceRegistriesResponse() {
  var o = api.ListDeviceRegistriesResponse();
  buildCounterListDeviceRegistriesResponse++;
  if (buildCounterListDeviceRegistriesResponse < 3) {
    o.deviceRegistries = buildUnnamed2866();
    o.nextPageToken = 'foo';
  }
  buildCounterListDeviceRegistriesResponse--;
  return o;
}

void checkListDeviceRegistriesResponse(api.ListDeviceRegistriesResponse o) {
  buildCounterListDeviceRegistriesResponse++;
  if (buildCounterListDeviceRegistriesResponse < 3) {
    checkUnnamed2866(o.deviceRegistries!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDeviceRegistriesResponse--;
}

core.List<api.DeviceState> buildUnnamed2867() {
  var o = <api.DeviceState>[];
  o.add(buildDeviceState());
  o.add(buildDeviceState());
  return o;
}

void checkUnnamed2867(core.List<api.DeviceState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceState(o[0] as api.DeviceState);
  checkDeviceState(o[1] as api.DeviceState);
}

core.int buildCounterListDeviceStatesResponse = 0;
api.ListDeviceStatesResponse buildListDeviceStatesResponse() {
  var o = api.ListDeviceStatesResponse();
  buildCounterListDeviceStatesResponse++;
  if (buildCounterListDeviceStatesResponse < 3) {
    o.deviceStates = buildUnnamed2867();
  }
  buildCounterListDeviceStatesResponse--;
  return o;
}

void checkListDeviceStatesResponse(api.ListDeviceStatesResponse o) {
  buildCounterListDeviceStatesResponse++;
  if (buildCounterListDeviceStatesResponse < 3) {
    checkUnnamed2867(o.deviceStates!);
  }
  buildCounterListDeviceStatesResponse--;
}

core.List<api.Device> buildUnnamed2868() {
  var o = <api.Device>[];
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

void checkUnnamed2868(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0] as api.Device);
  checkDevice(o[1] as api.Device);
}

core.int buildCounterListDevicesResponse = 0;
api.ListDevicesResponse buildListDevicesResponse() {
  var o = api.ListDevicesResponse();
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    o.devices = buildUnnamed2868();
    o.nextPageToken = 'foo';
  }
  buildCounterListDevicesResponse--;
  return o;
}

void checkListDevicesResponse(api.ListDevicesResponse o) {
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    checkUnnamed2868(o.devices!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDevicesResponse--;
}

core.int buildCounterModifyCloudToDeviceConfigRequest = 0;
api.ModifyCloudToDeviceConfigRequest buildModifyCloudToDeviceConfigRequest() {
  var o = api.ModifyCloudToDeviceConfigRequest();
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
  var o = api.MqttConfig();
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

core.List<api.Binding> buildUnnamed2869() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed2869(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed2869();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed2869(o.bindings!);
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
  var o = api.PublicKeyCertificate();
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
    checkX509CertificateDetails(o.x509Details! as api.X509CertificateDetails);
  }
  buildCounterPublicKeyCertificate--;
}

core.int buildCounterPublicKeyCredential = 0;
api.PublicKeyCredential buildPublicKeyCredential() {
  var o = api.PublicKeyCredential();
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
  var o = api.RegistryCredential();
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
    checkPublicKeyCertificate(
        o.publicKeyCertificate! as api.PublicKeyCertificate);
  }
  buildCounterRegistryCredential--;
}

core.int buildCounterSendCommandToDeviceRequest = 0;
api.SendCommandToDeviceRequest buildSendCommandToDeviceRequest() {
  var o = api.SendCommandToDeviceRequest();
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
  var o = api.SendCommandToDeviceResponse();
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
  var o = api.SetIamPolicyRequest();
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
    checkPolicy(o.policy! as api.Policy);
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterStateNotificationConfig = 0;
api.StateNotificationConfig buildStateNotificationConfig() {
  var o = api.StateNotificationConfig();
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

core.Map<core.String, core.Object> buildUnnamed2870() {
  var o = <core.String, core.Object>{};
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

void checkUnnamed2870(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed2871() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2870());
  o.add(buildUnnamed2870());
  return o;
}

void checkUnnamed2871(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2870(o[0]);
  checkUnnamed2870(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2871();
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
    checkUnnamed2871(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed2872() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2872(core.List<core.String> o) {
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
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed2872();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed2872(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed2873() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2873(core.List<core.String> o) {
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
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed2873();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed2873(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUnbindDeviceFromGatewayRequest = 0;
api.UnbindDeviceFromGatewayRequest buildUnbindDeviceFromGatewayRequest() {
  var o = api.UnbindDeviceFromGatewayRequest();
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
  var o = api.UnbindDeviceFromGatewayResponse();
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
  var o = api.X509CertificateDetails();
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

core.List<core.String> buildUnnamed2874() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2874(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2875() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2875(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2876() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2876(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2877() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2877(core.List<core.String> o) {
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
    unittest.test('to-json--from-json', () {
      var o = buildBindDeviceToGatewayRequest();
      var od = api.BindDeviceToGatewayRequest.fromJson(o.toJson());
      checkBindDeviceToGatewayRequest(od as api.BindDeviceToGatewayRequest);
    });
  });

  unittest.group('obj-schema-BindDeviceToGatewayResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBindDeviceToGatewayResponse();
      var od = api.BindDeviceToGatewayResponse.fromJson(o.toJson());
      checkBindDeviceToGatewayResponse(od as api.BindDeviceToGatewayResponse);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-Device', () {
    unittest.test('to-json--from-json', () {
      var o = buildDevice();
      var od = api.Device.fromJson(o.toJson());
      checkDevice(od as api.Device);
    });
  });

  unittest.group('obj-schema-DeviceConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceConfig();
      var od = api.DeviceConfig.fromJson(o.toJson());
      checkDeviceConfig(od as api.DeviceConfig);
    });
  });

  unittest.group('obj-schema-DeviceCredential', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceCredential();
      var od = api.DeviceCredential.fromJson(o.toJson());
      checkDeviceCredential(od as api.DeviceCredential);
    });
  });

  unittest.group('obj-schema-DeviceRegistry', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceRegistry();
      var od = api.DeviceRegistry.fromJson(o.toJson());
      checkDeviceRegistry(od as api.DeviceRegistry);
    });
  });

  unittest.group('obj-schema-DeviceState', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceState();
      var od = api.DeviceState.fromJson(o.toJson());
      checkDeviceState(od as api.DeviceState);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-EventNotificationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventNotificationConfig();
      var od = api.EventNotificationConfig.fromJson(o.toJson());
      checkEventNotificationConfig(od as api.EventNotificationConfig);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-GatewayConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGatewayConfig();
      var od = api.GatewayConfig.fromJson(o.toJson());
      checkGatewayConfig(od as api.GatewayConfig);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetIamPolicyRequest();
      var od = api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od as api.GetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetPolicyOptions();
      var od = api.GetPolicyOptions.fromJson(o.toJson());
      checkGetPolicyOptions(od as api.GetPolicyOptions);
    });
  });

  unittest.group('obj-schema-HttpConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildHttpConfig();
      var od = api.HttpConfig.fromJson(o.toJson());
      checkHttpConfig(od as api.HttpConfig);
    });
  });

  unittest.group('obj-schema-ListDeviceConfigVersionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListDeviceConfigVersionsResponse();
      var od = api.ListDeviceConfigVersionsResponse.fromJson(o.toJson());
      checkListDeviceConfigVersionsResponse(
          od as api.ListDeviceConfigVersionsResponse);
    });
  });

  unittest.group('obj-schema-ListDeviceRegistriesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListDeviceRegistriesResponse();
      var od = api.ListDeviceRegistriesResponse.fromJson(o.toJson());
      checkListDeviceRegistriesResponse(od as api.ListDeviceRegistriesResponse);
    });
  });

  unittest.group('obj-schema-ListDeviceStatesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListDeviceStatesResponse();
      var od = api.ListDeviceStatesResponse.fromJson(o.toJson());
      checkListDeviceStatesResponse(od as api.ListDeviceStatesResponse);
    });
  });

  unittest.group('obj-schema-ListDevicesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListDevicesResponse();
      var od = api.ListDevicesResponse.fromJson(o.toJson());
      checkListDevicesResponse(od as api.ListDevicesResponse);
    });
  });

  unittest.group('obj-schema-ModifyCloudToDeviceConfigRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyCloudToDeviceConfigRequest();
      var od = api.ModifyCloudToDeviceConfigRequest.fromJson(o.toJson());
      checkModifyCloudToDeviceConfigRequest(
          od as api.ModifyCloudToDeviceConfigRequest);
    });
  });

  unittest.group('obj-schema-MqttConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildMqttConfig();
      var od = api.MqttConfig.fromJson(o.toJson());
      checkMqttConfig(od as api.MqttConfig);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-PublicKeyCertificate', () {
    unittest.test('to-json--from-json', () {
      var o = buildPublicKeyCertificate();
      var od = api.PublicKeyCertificate.fromJson(o.toJson());
      checkPublicKeyCertificate(od as api.PublicKeyCertificate);
    });
  });

  unittest.group('obj-schema-PublicKeyCredential', () {
    unittest.test('to-json--from-json', () {
      var o = buildPublicKeyCredential();
      var od = api.PublicKeyCredential.fromJson(o.toJson());
      checkPublicKeyCredential(od as api.PublicKeyCredential);
    });
  });

  unittest.group('obj-schema-RegistryCredential', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegistryCredential();
      var od = api.RegistryCredential.fromJson(o.toJson());
      checkRegistryCredential(od as api.RegistryCredential);
    });
  });

  unittest.group('obj-schema-SendCommandToDeviceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSendCommandToDeviceRequest();
      var od = api.SendCommandToDeviceRequest.fromJson(o.toJson());
      checkSendCommandToDeviceRequest(od as api.SendCommandToDeviceRequest);
    });
  });

  unittest.group('obj-schema-SendCommandToDeviceResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSendCommandToDeviceResponse();
      var od = api.SendCommandToDeviceResponse.fromJson(o.toJson());
      checkSendCommandToDeviceResponse(od as api.SendCommandToDeviceResponse);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetIamPolicyRequest();
      var od = api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od as api.SetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-StateNotificationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildStateNotificationConfig();
      var od = api.StateNotificationConfig.fromJson(o.toJson());
      checkStateNotificationConfig(od as api.StateNotificationConfig);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsRequest();
      var od = api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od as api.TestIamPermissionsRequest);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsResponse();
      var od = api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('obj-schema-UnbindDeviceFromGatewayRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUnbindDeviceFromGatewayRequest();
      var od = api.UnbindDeviceFromGatewayRequest.fromJson(o.toJson());
      checkUnbindDeviceFromGatewayRequest(
          od as api.UnbindDeviceFromGatewayRequest);
    });
  });

  unittest.group('obj-schema-UnbindDeviceFromGatewayResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildUnbindDeviceFromGatewayResponse();
      var od = api.UnbindDeviceFromGatewayResponse.fromJson(o.toJson());
      checkUnbindDeviceFromGatewayResponse(
          od as api.UnbindDeviceFromGatewayResponse);
    });
  });

  unittest.group('obj-schema-X509CertificateDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildX509CertificateDetails();
      var od = api.X509CertificateDetails.fromJson(o.toJson());
      checkX509CertificateDetails(od as api.X509CertificateDetails);
    });
  });

  unittest.group('resource-ProjectsLocationsRegistriesResource', () {
    unittest.test('method--bindDeviceToGateway', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries;
      var arg_request = buildBindDeviceToGatewayRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BindDeviceToGatewayRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBindDeviceToGatewayRequest(obj as api.BindDeviceToGatewayRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBindDeviceToGatewayResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bindDeviceToGateway(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBindDeviceToGatewayResponse(
            response as api.BindDeviceToGatewayResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries;
      var arg_request = buildDeviceRegistry();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DeviceRegistry.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeviceRegistry(obj as api.DeviceRegistry);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDeviceRegistry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeviceRegistry(response as api.DeviceRegistry);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDeviceRegistry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeviceRegistry(response as api.DeviceRegistry);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj as api.GetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListDeviceRegistriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDeviceRegistriesResponse(
            response as api.ListDeviceRegistriesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries;
      var arg_request = buildDeviceRegistry();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DeviceRegistry.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeviceRegistry(obj as api.DeviceRegistry);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDeviceRegistry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeviceRegistry(response as api.DeviceRegistry);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(
            response as api.TestIamPermissionsResponse);
      })));
    });

    unittest.test('method--unbindDeviceFromGateway', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries;
      var arg_request = buildUnbindDeviceFromGatewayRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UnbindDeviceFromGatewayRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUnbindDeviceFromGatewayRequest(
            obj as api.UnbindDeviceFromGatewayRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUnbindDeviceFromGatewayResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unbindDeviceFromGateway(arg_request, arg_parent,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUnbindDeviceFromGatewayResponse(
            response as api.UnbindDeviceFromGatewayResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsRegistriesDevicesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries.devices;
      var arg_request = buildDevice();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Device.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDevice(obj as api.Device);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevice(response as api.Device);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries.devices;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries.devices;
      var arg_name = 'foo';
      var arg_fieldMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fieldMask"]!.first,
          unittest.equals(arg_fieldMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, fieldMask: arg_fieldMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevice(response as api.Device);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries.devices;
      var arg_parent = 'foo';
      var arg_deviceIds = buildUnnamed2874();
      var arg_deviceNumIds = buildUnnamed2875();
      var arg_fieldMask = 'foo';
      var arg_gatewayListOptions_associationsDeviceId = 'foo';
      var arg_gatewayListOptions_associationsGatewayId = 'foo';
      var arg_gatewayListOptions_gatewayType = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["deviceIds"]!,
          unittest.equals(arg_deviceIds),
        );
        unittest.expect(
          queryMap["deviceNumIds"]!,
          unittest.equals(arg_deviceNumIds),
        );
        unittest.expect(
          queryMap["fieldMask"]!.first,
          unittest.equals(arg_fieldMask),
        );
        unittest.expect(
          queryMap["gatewayListOptions.associationsDeviceId"]!.first,
          unittest.equals(arg_gatewayListOptions_associationsDeviceId),
        );
        unittest.expect(
          queryMap["gatewayListOptions.associationsGatewayId"]!.first,
          unittest.equals(arg_gatewayListOptions_associationsGatewayId),
        );
        unittest.expect(
          queryMap["gatewayListOptions.gatewayType"]!.first,
          unittest.equals(arg_gatewayListOptions_gatewayType),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              deviceIds: arg_deviceIds,
              deviceNumIds: arg_deviceNumIds,
              fieldMask: arg_fieldMask,
              gatewayListOptions_associationsDeviceId:
                  arg_gatewayListOptions_associationsDeviceId,
              gatewayListOptions_associationsGatewayId:
                  arg_gatewayListOptions_associationsGatewayId,
              gatewayListOptions_gatewayType:
                  arg_gatewayListOptions_gatewayType,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDevicesResponse(response as api.ListDevicesResponse);
      })));
    });

    unittest.test('method--modifyCloudToDeviceConfig', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries.devices;
      var arg_request = buildModifyCloudToDeviceConfigRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ModifyCloudToDeviceConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyCloudToDeviceConfigRequest(
            obj as api.ModifyCloudToDeviceConfigRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDeviceConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .modifyCloudToDeviceConfig(arg_request, arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeviceConfig(response as api.DeviceConfig);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries.devices;
      var arg_request = buildDevice();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Device.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDevice(obj as api.Device);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevice(response as api.Device);
      })));
    });

    unittest.test('method--sendCommandToDevice', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries.devices;
      var arg_request = buildSendCommandToDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SendCommandToDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSendCommandToDeviceRequest(obj as api.SendCommandToDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSendCommandToDeviceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sendCommandToDevice(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSendCommandToDeviceResponse(
            response as api.SendCommandToDeviceResponse);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsLocationsRegistriesDevicesConfigVersionsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock)
          .projects
          .locations
          .registries
          .devices
          .configVersions;
      var arg_name = 'foo';
      var arg_numVersions = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["numVersions"]!.first),
          unittest.equals(arg_numVersions),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListDeviceConfigVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name, numVersions: arg_numVersions, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDeviceConfigVersionsResponse(
            response as api.ListDeviceConfigVersionsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsRegistriesDevicesStatesResource',
      () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.CloudIotApi(mock).projects.locations.registries.devices.states;
      var arg_name = 'foo';
      var arg_numStates = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["numStates"]!.first),
          unittest.equals(arg_numStates),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListDeviceStatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name, numStates: arg_numStates, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDeviceStatesResponse(response as api.ListDeviceStatesResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsRegistriesGroupsResource', () {
    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries.groups;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj as api.GetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries.groups;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.CloudIotApi(mock).projects.locations.registries.groups;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(
            response as api.TestIamPermissionsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsRegistriesGroupsDevicesResource',
      () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.CloudIotApi(mock).projects.locations.registries.groups.devices;
      var arg_parent = 'foo';
      var arg_deviceIds = buildUnnamed2876();
      var arg_deviceNumIds = buildUnnamed2877();
      var arg_fieldMask = 'foo';
      var arg_gatewayListOptions_associationsDeviceId = 'foo';
      var arg_gatewayListOptions_associationsGatewayId = 'foo';
      var arg_gatewayListOptions_gatewayType = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["deviceIds"]!,
          unittest.equals(arg_deviceIds),
        );
        unittest.expect(
          queryMap["deviceNumIds"]!,
          unittest.equals(arg_deviceNumIds),
        );
        unittest.expect(
          queryMap["fieldMask"]!.first,
          unittest.equals(arg_fieldMask),
        );
        unittest.expect(
          queryMap["gatewayListOptions.associationsDeviceId"]!.first,
          unittest.equals(arg_gatewayListOptions_associationsDeviceId),
        );
        unittest.expect(
          queryMap["gatewayListOptions.associationsGatewayId"]!.first,
          unittest.equals(arg_gatewayListOptions_associationsGatewayId),
        );
        unittest.expect(
          queryMap["gatewayListOptions.gatewayType"]!.first,
          unittest.equals(arg_gatewayListOptions_gatewayType),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              deviceIds: arg_deviceIds,
              deviceNumIds: arg_deviceNumIds,
              fieldMask: arg_fieldMask,
              gatewayListOptions_associationsDeviceId:
                  arg_gatewayListOptions_associationsDeviceId,
              gatewayListOptions_associationsGatewayId:
                  arg_gatewayListOptions_associationsGatewayId,
              gatewayListOptions_gatewayType:
                  arg_gatewayListOptions_gatewayType,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDevicesResponse(response as api.ListDevicesResponse);
      })));
    });
  });
}
