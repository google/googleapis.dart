// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

library googleapis.cloudidentity.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/cloudidentity/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterEntityKey = 0;
api.EntityKey buildEntityKey() {
  var o = api.EntityKey();
  buildCounterEntityKey++;
  if (buildCounterEntityKey < 3) {
    o.id = 'foo';
    o.namespace = 'foo';
  }
  buildCounterEntityKey--;
  return o;
}

void checkEntityKey(api.EntityKey o) {
  buildCounterEntityKey++;
  if (buildCounterEntityKey < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.namespace, unittest.equals('foo'));
  }
  buildCounterEntityKey--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes = 0;
api.GoogleAppsCloudidentityDevicesV1AndroidAttributes
    buildGoogleAppsCloudidentityDevicesV1AndroidAttributes() {
  var o = api.GoogleAppsCloudidentityDevicesV1AndroidAttributes();
  buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes < 3) {
    o.enabledUnknownSources = true;
    o.ownerProfileAccount = true;
    o.ownershipPrivilege = 'foo';
    o.supportsWorkProfile = true;
  }
  buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1AndroidAttributes(
    api.GoogleAppsCloudidentityDevicesV1AndroidAttributes o) {
  buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes < 3) {
    unittest.expect(o.enabledUnknownSources, unittest.isTrue);
    unittest.expect(o.ownerProfileAccount, unittest.isTrue);
    unittest.expect(o.ownershipPrivilege, unittest.equals('foo'));
    unittest.expect(o.supportsWorkProfile, unittest.isTrue);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest =
    0;
api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest() {
  var o = api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest <
      3) {
    o.customer = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest(
    api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest <
      3) {
    unittest.expect(o.customer, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
    buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse() {
  var o = api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse <
      3) {
    o.deviceUser = buildGoogleAppsCloudidentityDevicesV1DeviceUser();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse(
    api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse <
      3) {
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(o.deviceUser);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest = 0;
api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest() {
  var o = api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest < 3) {
    o.customer = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest(
    api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest < 3) {
    unittest.expect(o.customer, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
    buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse() {
  var o = api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse < 3) {
    o.deviceUser = buildGoogleAppsCloudidentityDevicesV1DeviceUser();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse(
    api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse < 3) {
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(o.deviceUser);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest =
    0;
api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest() {
  var o = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest < 3) {
    o.customer = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest(
    api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest < 3) {
    unittest.expect(o.customer, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
    buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse() {
  var o = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse <
      3) {
    o.device = buildGoogleAppsCloudidentityDevicesV1Device();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse(
    api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse <
      3) {
    checkGoogleAppsCloudidentityDevicesV1Device(o.device);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse--;
}

core.int
    buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest = 0;
api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest() {
  var o = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest <
      3) {
    o.customer = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest(
    api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest <
      3) {
    unittest.expect(o.customer, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest--;
}

core.int
    buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
    buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse() {
  var o = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse <
      3) {
    o.deviceUser = buildGoogleAppsCloudidentityDevicesV1DeviceUser();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse(
    api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse <
      3) {
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(o.deviceUser);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse--;
}

core.List<core.String> buildUnnamed1515() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1515(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue>
    buildUnnamed1516() {
  var o =
      <core.String, api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue>{};
  o['x'] = buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue();
  o['y'] = buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue();
  return o;
}

void checkUnnamed1516(
    core.Map<core.String,
            api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(o['x']);
  checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(o['y']);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ClientState = 0;
api.GoogleAppsCloudidentityDevicesV1ClientState
    buildGoogleAppsCloudidentityDevicesV1ClientState() {
  var o = api.GoogleAppsCloudidentityDevicesV1ClientState();
  buildCounterGoogleAppsCloudidentityDevicesV1ClientState++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ClientState < 3) {
    o.assetTags = buildUnnamed1515();
    o.complianceState = 'foo';
    o.createTime = 'foo';
    o.customId = 'foo';
    o.etag = 'foo';
    o.healthScore = 'foo';
    o.keyValuePairs = buildUnnamed1516();
    o.lastUpdateTime = 'foo';
    o.managed = 'foo';
    o.name = 'foo';
    o.ownerType = 'foo';
    o.scoreReason = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ClientState--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ClientState(
    api.GoogleAppsCloudidentityDevicesV1ClientState o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ClientState++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ClientState < 3) {
    checkUnnamed1515(o.assetTags);
    unittest.expect(o.complianceState, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.customId, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.healthScore, unittest.equals('foo'));
    checkUnnamed1516(o.keyValuePairs);
    unittest.expect(o.lastUpdateTime, unittest.equals('foo'));
    unittest.expect(o.managed, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ownerType, unittest.equals('foo'));
    unittest.expect(o.scoreReason, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ClientState--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue = 0;
api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue
    buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue() {
  var o = api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue();
  buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue < 3) {
    o.boolValue = true;
    o.numberValue = 42.0;
    o.stringValue = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(
    api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue < 3) {
    unittest.expect(o.boolValue, unittest.isTrue);
    unittest.expect(o.numberValue, unittest.equals(42.0));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue--;
}

core.List<core.String> buildUnnamed1517() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1517(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1518() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1518(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1Device = 0;
api.GoogleAppsCloudidentityDevicesV1Device
    buildGoogleAppsCloudidentityDevicesV1Device() {
  var o = api.GoogleAppsCloudidentityDevicesV1Device();
  buildCounterGoogleAppsCloudidentityDevicesV1Device++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1Device < 3) {
    o.androidSpecificAttributes =
        buildGoogleAppsCloudidentityDevicesV1AndroidAttributes();
    o.assetTag = 'foo';
    o.basebandVersion = 'foo';
    o.bootloaderVersion = 'foo';
    o.brand = 'foo';
    o.buildNumber = 'foo';
    o.compromisedState = 'foo';
    o.createTime = 'foo';
    o.deviceType = 'foo';
    o.enabledDeveloperOptions = true;
    o.enabledUsbDebugging = true;
    o.encryptionState = 'foo';
    o.imei = 'foo';
    o.kernelVersion = 'foo';
    o.lastSyncTime = 'foo';
    o.managementState = 'foo';
    o.manufacturer = 'foo';
    o.meid = 'foo';
    o.model = 'foo';
    o.name = 'foo';
    o.networkOperator = 'foo';
    o.osVersion = 'foo';
    o.otherAccounts = buildUnnamed1517();
    o.ownerType = 'foo';
    o.releaseVersion = 'foo';
    o.securityPatchTime = 'foo';
    o.serialNumber = 'foo';
    o.wifiMacAddresses = buildUnnamed1518();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1Device--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1Device(
    api.GoogleAppsCloudidentityDevicesV1Device o) {
  buildCounterGoogleAppsCloudidentityDevicesV1Device++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1Device < 3) {
    checkGoogleAppsCloudidentityDevicesV1AndroidAttributes(
        o.androidSpecificAttributes);
    unittest.expect(o.assetTag, unittest.equals('foo'));
    unittest.expect(o.basebandVersion, unittest.equals('foo'));
    unittest.expect(o.bootloaderVersion, unittest.equals('foo'));
    unittest.expect(o.brand, unittest.equals('foo'));
    unittest.expect(o.buildNumber, unittest.equals('foo'));
    unittest.expect(o.compromisedState, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.deviceType, unittest.equals('foo'));
    unittest.expect(o.enabledDeveloperOptions, unittest.isTrue);
    unittest.expect(o.enabledUsbDebugging, unittest.isTrue);
    unittest.expect(o.encryptionState, unittest.equals('foo'));
    unittest.expect(o.imei, unittest.equals('foo'));
    unittest.expect(o.kernelVersion, unittest.equals('foo'));
    unittest.expect(o.lastSyncTime, unittest.equals('foo'));
    unittest.expect(o.managementState, unittest.equals('foo'));
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.meid, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.networkOperator, unittest.equals('foo'));
    unittest.expect(o.osVersion, unittest.equals('foo'));
    checkUnnamed1517(o.otherAccounts);
    unittest.expect(o.ownerType, unittest.equals('foo'));
    unittest.expect(o.releaseVersion, unittest.equals('foo'));
    unittest.expect(o.securityPatchTime, unittest.equals('foo'));
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    checkUnnamed1518(o.wifiMacAddresses);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1Device--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser = 0;
api.GoogleAppsCloudidentityDevicesV1DeviceUser
    buildGoogleAppsCloudidentityDevicesV1DeviceUser() {
  var o = api.GoogleAppsCloudidentityDevicesV1DeviceUser();
  buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser < 3) {
    o.compromisedState = 'foo';
    o.createTime = 'foo';
    o.firstSyncTime = 'foo';
    o.languageCode = 'foo';
    o.lastSyncTime = 'foo';
    o.managementState = 'foo';
    o.name = 'foo';
    o.passwordState = 'foo';
    o.userAgent = 'foo';
    o.userEmail = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1DeviceUser(
    api.GoogleAppsCloudidentityDevicesV1DeviceUser o) {
  buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser < 3) {
    unittest.expect(o.compromisedState, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.firstSyncTime, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.lastSyncTime, unittest.equals('foo'));
    unittest.expect(o.managementState, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.passwordState, unittest.equals('foo'));
    unittest.expect(o.userAgent, unittest.equals('foo'));
    unittest.expect(o.userEmail, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser--;
}

core.List<api.GoogleAppsCloudidentityDevicesV1ClientState> buildUnnamed1519() {
  var o = <api.GoogleAppsCloudidentityDevicesV1ClientState>[];
  o.add(buildGoogleAppsCloudidentityDevicesV1ClientState());
  o.add(buildGoogleAppsCloudidentityDevicesV1ClientState());
  return o;
}

void checkUnnamed1519(
    core.List<api.GoogleAppsCloudidentityDevicesV1ClientState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1ClientState(o[0]);
  checkGoogleAppsCloudidentityDevicesV1ClientState(o[1]);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
    buildGoogleAppsCloudidentityDevicesV1ListClientStatesResponse() {
  var o = api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse <
      3) {
    o.clientStates = buildUnnamed1519();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ListClientStatesResponse(
    api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse <
      3) {
    checkUnnamed1519(o.clientStates);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse--;
}

core.List<api.GoogleAppsCloudidentityDevicesV1DeviceUser> buildUnnamed1520() {
  var o = <api.GoogleAppsCloudidentityDevicesV1DeviceUser>[];
  o.add(buildGoogleAppsCloudidentityDevicesV1DeviceUser());
  o.add(buildGoogleAppsCloudidentityDevicesV1DeviceUser());
  return o;
}

void checkUnnamed1520(
    core.List<api.GoogleAppsCloudidentityDevicesV1DeviceUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1DeviceUser(o[0]);
  checkGoogleAppsCloudidentityDevicesV1DeviceUser(o[1]);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    buildGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse() {
  var o = api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse < 3) {
    o.deviceUsers = buildUnnamed1520();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse(
    api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse < 3) {
    checkUnnamed1520(o.deviceUsers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse--;
}

core.List<api.GoogleAppsCloudidentityDevicesV1Device> buildUnnamed1521() {
  var o = <api.GoogleAppsCloudidentityDevicesV1Device>[];
  o.add(buildGoogleAppsCloudidentityDevicesV1Device());
  o.add(buildGoogleAppsCloudidentityDevicesV1Device());
  return o;
}

void checkUnnamed1521(core.List<api.GoogleAppsCloudidentityDevicesV1Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1Device(o[0]);
  checkGoogleAppsCloudidentityDevicesV1Device(o[1]);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse = 0;
api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse
    buildGoogleAppsCloudidentityDevicesV1ListDevicesResponse() {
  var o = api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse < 3) {
    o.devices = buildUnnamed1521();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ListDevicesResponse(
    api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse < 3) {
    checkUnnamed1521(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse--;
}

core.List<core.String> buildUnnamed1522() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1522(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
    buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    buildGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse() {
  var o = api.GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse <
      3) {
    o.customer = 'foo';
    o.names = buildUnnamed1522();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse(
    api.GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse <
      3) {
    unittest.expect(o.customer, unittest.equals('foo'));
    checkUnnamed1522(o.names);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest = 0;
api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
    buildGoogleAppsCloudidentityDevicesV1WipeDeviceRequest() {
  var o = api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest < 3) {
    o.customer = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1WipeDeviceRequest(
    api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest < 3) {
    unittest.expect(o.customer, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse = 0;
api.GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
    buildGoogleAppsCloudidentityDevicesV1WipeDeviceResponse() {
  var o = api.GoogleAppsCloudidentityDevicesV1WipeDeviceResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse < 3) {
    o.device = buildGoogleAppsCloudidentityDevicesV1Device();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1WipeDeviceResponse(
    api.GoogleAppsCloudidentityDevicesV1WipeDeviceResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse < 3) {
    checkGoogleAppsCloudidentityDevicesV1Device(o.device);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest = 0;
api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest() {
  var o = api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest < 3) {
    o.customer = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest(
    api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest < 3) {
    unittest.expect(o.customer, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse = 0;
api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
    buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse() {
  var o = api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse < 3) {
    o.deviceUser = buildGoogleAppsCloudidentityDevicesV1DeviceUser();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse(
    api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse < 3) {
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(o.deviceUser);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse--;
}

core.Map<core.String, core.String> buildUnnamed1523() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1523(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  var o = api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.groupKey = buildEntityKey();
    o.labels = buildUnnamed1523();
    o.name = 'foo';
    o.parent = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGroup--;
  return o;
}

void checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkEntityKey(o.groupKey);
    checkUnnamed1523(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGroup--;
}

core.List<api.Group> buildUnnamed1524() {
  var o = <api.Group>[];
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

void checkUnnamed1524(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterListGroupsResponse = 0;
api.ListGroupsResponse buildListGroupsResponse() {
  var o = api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.groups = buildUnnamed1524();
    o.nextPageToken = 'foo';
  }
  buildCounterListGroupsResponse--;
  return o;
}

void checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkUnnamed1524(o.groups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListGroupsResponse--;
}

core.List<api.Membership> buildUnnamed1525() {
  var o = <api.Membership>[];
  o.add(buildMembership());
  o.add(buildMembership());
  return o;
}

void checkUnnamed1525(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0]);
  checkMembership(o[1]);
}

core.int buildCounterListMembershipsResponse = 0;
api.ListMembershipsResponse buildListMembershipsResponse() {
  var o = api.ListMembershipsResponse();
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    o.memberships = buildUnnamed1525();
    o.nextPageToken = 'foo';
  }
  buildCounterListMembershipsResponse--;
  return o;
}

void checkListMembershipsResponse(api.ListMembershipsResponse o) {
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    checkUnnamed1525(o.memberships);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListMembershipsResponse--;
}

core.int buildCounterLookupGroupNameResponse = 0;
api.LookupGroupNameResponse buildLookupGroupNameResponse() {
  var o = api.LookupGroupNameResponse();
  buildCounterLookupGroupNameResponse++;
  if (buildCounterLookupGroupNameResponse < 3) {
    o.name = 'foo';
  }
  buildCounterLookupGroupNameResponse--;
  return o;
}

void checkLookupGroupNameResponse(api.LookupGroupNameResponse o) {
  buildCounterLookupGroupNameResponse++;
  if (buildCounterLookupGroupNameResponse < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLookupGroupNameResponse--;
}

core.int buildCounterLookupMembershipNameResponse = 0;
api.LookupMembershipNameResponse buildLookupMembershipNameResponse() {
  var o = api.LookupMembershipNameResponse();
  buildCounterLookupMembershipNameResponse++;
  if (buildCounterLookupMembershipNameResponse < 3) {
    o.name = 'foo';
  }
  buildCounterLookupMembershipNameResponse--;
  return o;
}

void checkLookupMembershipNameResponse(api.LookupMembershipNameResponse o) {
  buildCounterLookupMembershipNameResponse++;
  if (buildCounterLookupMembershipNameResponse < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLookupMembershipNameResponse--;
}

core.List<api.MembershipRole> buildUnnamed1526() {
  var o = <api.MembershipRole>[];
  o.add(buildMembershipRole());
  o.add(buildMembershipRole());
  return o;
}

void checkUnnamed1526(core.List<api.MembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipRole(o[0]);
  checkMembershipRole(o[1]);
}

core.int buildCounterMembership = 0;
api.Membership buildMembership() {
  var o = api.Membership();
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.preferredMemberKey = buildEntityKey();
    o.roles = buildUnnamed1526();
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMembership--;
  return o;
}

void checkMembership(api.Membership o) {
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkEntityKey(o.preferredMemberKey);
    checkUnnamed1526(o.roles);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterMembership--;
}

core.int buildCounterMembershipRole = 0;
api.MembershipRole buildMembershipRole() {
  var o = api.MembershipRole();
  buildCounterMembershipRole++;
  if (buildCounterMembershipRole < 3) {
    o.name = 'foo';
  }
  buildCounterMembershipRole--;
  return o;
}

void checkMembershipRole(api.MembershipRole o) {
  buildCounterMembershipRole++;
  if (buildCounterMembershipRole < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterMembershipRole--;
}

core.List<api.MembershipRole> buildUnnamed1527() {
  var o = <api.MembershipRole>[];
  o.add(buildMembershipRole());
  o.add(buildMembershipRole());
  return o;
}

void checkUnnamed1527(core.List<api.MembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipRole(o[0]);
  checkMembershipRole(o[1]);
}

core.List<core.String> buildUnnamed1528() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1528(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModifyMembershipRolesRequest = 0;
api.ModifyMembershipRolesRequest buildModifyMembershipRolesRequest() {
  var o = api.ModifyMembershipRolesRequest();
  buildCounterModifyMembershipRolesRequest++;
  if (buildCounterModifyMembershipRolesRequest < 3) {
    o.addRoles = buildUnnamed1527();
    o.removeRoles = buildUnnamed1528();
  }
  buildCounterModifyMembershipRolesRequest--;
  return o;
}

void checkModifyMembershipRolesRequest(api.ModifyMembershipRolesRequest o) {
  buildCounterModifyMembershipRolesRequest++;
  if (buildCounterModifyMembershipRolesRequest < 3) {
    checkUnnamed1527(o.addRoles);
    checkUnnamed1528(o.removeRoles);
  }
  buildCounterModifyMembershipRolesRequest--;
}

core.int buildCounterModifyMembershipRolesResponse = 0;
api.ModifyMembershipRolesResponse buildModifyMembershipRolesResponse() {
  var o = api.ModifyMembershipRolesResponse();
  buildCounterModifyMembershipRolesResponse++;
  if (buildCounterModifyMembershipRolesResponse < 3) {
    o.membership = buildMembership();
  }
  buildCounterModifyMembershipRolesResponse--;
  return o;
}

void checkModifyMembershipRolesResponse(api.ModifyMembershipRolesResponse o) {
  buildCounterModifyMembershipRolesResponse++;
  if (buildCounterModifyMembershipRolesResponse < 3) {
    checkMembership(o.membership);
  }
  buildCounterModifyMembershipRolesResponse--;
}

core.Map<core.String, core.Object> buildUnnamed1529() {
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

void checkUnnamed1529(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed1530() {
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

void checkUnnamed1530(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed1529();
    o.name = 'foo';
    o.response = buildUnnamed1530();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed1529(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1530(o.response);
  }
  buildCounterOperation--;
}

core.List<api.Group> buildUnnamed1531() {
  var o = <api.Group>[];
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

void checkUnnamed1531(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterSearchGroupsResponse = 0;
api.SearchGroupsResponse buildSearchGroupsResponse() {
  var o = api.SearchGroupsResponse();
  buildCounterSearchGroupsResponse++;
  if (buildCounterSearchGroupsResponse < 3) {
    o.groups = buildUnnamed1531();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchGroupsResponse--;
  return o;
}

void checkSearchGroupsResponse(api.SearchGroupsResponse o) {
  buildCounterSearchGroupsResponse++;
  if (buildCounterSearchGroupsResponse < 3) {
    checkUnnamed1531(o.groups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchGroupsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed1532() {
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

void checkUnnamed1532(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed1533() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed1532());
  o.add(buildUnnamed1532());
  return o;
}

void checkUnnamed1533(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1532(o[0]);
  checkUnnamed1532(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1533();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed1533(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

void main() {
  unittest.group('obj-schema-EntityKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildEntityKey();
      var od = api.EntityKey.fromJson(o.toJson());
      checkEntityKey(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1AndroidAttributes',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1AndroidAttributes();
      var od = api.GoogleAppsCloudidentityDevicesV1AndroidAttributes.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1AndroidAttributes(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest();
      var od =
          api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse();
      var od = api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
          .fromJson(o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest();
      var od =
          api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse();
      var od =
          api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest();
      var od =
          api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse();
      var od =
          api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest();
      var od = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
          .fromJson(o.toJson());
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse();
      var od = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
          .fromJson(o.toJson());
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1ClientState', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1ClientState();
      var od =
          api.GoogleAppsCloudidentityDevicesV1ClientState.fromJson(o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ClientState(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CustomAttributeValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue();
      var od =
          api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1Device', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1Device();
      var od = api.GoogleAppsCloudidentityDevicesV1Device.fromJson(o.toJson());
      checkGoogleAppsCloudidentityDevicesV1Device(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1DeviceUser', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1DeviceUser();
      var od =
          api.GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(o.toJson());
      checkGoogleAppsCloudidentityDevicesV1DeviceUser(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ListClientStatesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1ListClientStatesResponse();
      var od =
          api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ListClientStatesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse();
      var od =
          api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ListDevicesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1ListDevicesResponse();
      var od = api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ListDevicesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse();
      var od = api.GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
          .fromJson(o.toJson());
      checkGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceRequest();
      var od = api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceResponse();
      var od = api.GoogleAppsCloudidentityDevicesV1WipeDeviceResponse.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest();
      var od =
          api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse();
      var od =
          api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroup();
      var od = api.Group.fromJson(o.toJson());
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-ListGroupsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListGroupsResponse();
      var od = api.ListGroupsResponse.fromJson(o.toJson());
      checkListGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMembershipsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListMembershipsResponse();
      var od = api.ListMembershipsResponse.fromJson(o.toJson());
      checkListMembershipsResponse(od);
    });
  });

  unittest.group('obj-schema-LookupGroupNameResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLookupGroupNameResponse();
      var od = api.LookupGroupNameResponse.fromJson(o.toJson());
      checkLookupGroupNameResponse(od);
    });
  });

  unittest.group('obj-schema-LookupMembershipNameResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLookupMembershipNameResponse();
      var od = api.LookupMembershipNameResponse.fromJson(o.toJson());
      checkLookupMembershipNameResponse(od);
    });
  });

  unittest.group('obj-schema-Membership', () {
    unittest.test('to-json--from-json', () {
      var o = buildMembership();
      var od = api.Membership.fromJson(o.toJson());
      checkMembership(od);
    });
  });

  unittest.group('obj-schema-MembershipRole', () {
    unittest.test('to-json--from-json', () {
      var o = buildMembershipRole();
      var od = api.MembershipRole.fromJson(o.toJson());
      checkMembershipRole(od);
    });
  });

  unittest.group('obj-schema-ModifyMembershipRolesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyMembershipRolesRequest();
      var od = api.ModifyMembershipRolesRequest.fromJson(o.toJson());
      checkModifyMembershipRolesRequest(od);
    });
  });

  unittest.group('obj-schema-ModifyMembershipRolesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyMembershipRolesResponse();
      var od = api.ModifyMembershipRolesResponse.fromJson(o.toJson());
      checkModifyMembershipRolesResponse(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-SearchGroupsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchGroupsResponse();
      var od = api.SearchGroupsResponse.fromJson(o.toJson());
      checkSearchGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group('resource-DevicesResourceApi', () {
    unittest.test('method--cancelWipe', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
            .fromJson(json);
        checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancelWipe(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices;
      var arg_request = buildGoogleAppsCloudidentityDevicesV1Device();
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAppsCloudidentityDevicesV1Device.fromJson(json);
        checkGoogleAppsCloudidentityDevicesV1Device(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("v1/devices"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, customer: arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices;
      var arg_name = 'foo';
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, customer: arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices;
      var arg_name = 'foo';
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleAppsCloudidentityDevicesV1Device());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, customer: arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAppsCloudidentityDevicesV1Device(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices;
      var arg_customer = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("v1/devices"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAppsCloudidentityDevicesV1ListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              customer: arg_customer,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAppsCloudidentityDevicesV1ListDevicesResponse(response);
      })));
    });

    unittest.test('method--wipe', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1WipeDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest.fromJson(
                json);
        checkGoogleAppsCloudidentityDevicesV1WipeDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .wipe(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group('resource-DevicesDeviceUsersResourceApi', () {
    unittest.test('method--approve', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
            .fromJson(json);
        checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .approve(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--block', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest.fromJson(
                json);
        checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .block(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--cancelWipe', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
                .fromJson(json);
        checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancelWipe(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_name = 'foo';
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, customer: arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_name = 'foo';
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAppsCloudidentityDevicesV1DeviceUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, customer: arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAppsCloudidentityDevicesV1DeviceUser(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_parent = 'foo';
      var arg_customer = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              customer: arg_customer,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse(response);
      })));
    });

    unittest.test('method--lookup', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_parent = 'foo';
      var arg_androidId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_rawResourceId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["androidId"].first, unittest.equals(arg_androidId));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["rawResourceId"].first,
            unittest.equals(arg_rawResourceId));
        unittest.expect(queryMap["userId"].first, unittest.equals(arg_userId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lookup(arg_parent,
              androidId: arg_androidId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              rawResourceId: arg_rawResourceId,
              userId: arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse(
            response);
      })));
    });

    unittest.test('method--wipe', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest.fromJson(
                json);
        checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .wipe(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group('resource-DevicesDeviceUsersClientStatesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices.deviceUsers.clientStates;
      var arg_name = 'foo';
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleAppsCloudidentityDevicesV1ClientState());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, customer: arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAppsCloudidentityDevicesV1ClientState(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices.deviceUsers.clientStates;
      var arg_parent = 'foo';
      var arg_customer = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleAppsCloudidentityDevicesV1ListClientStatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              customer: arg_customer,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAppsCloudidentityDevicesV1ListClientStatesResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).devices.deviceUsers.clientStates;
      var arg_request = buildGoogleAppsCloudidentityDevicesV1ClientState();
      var arg_name = 'foo';
      var arg_customer = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAppsCloudidentityDevicesV1ClientState.fromJson(json);
        checkGoogleAppsCloudidentityDevicesV1ClientState(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              customer: arg_customer,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group('resource-GroupsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).groups;
      var arg_request = buildGroup();
      var arg_initialGroupConfig = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/groups"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["initialGroupConfig"].first,
            unittest.equals(arg_initialGroupConfig));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request,
              initialGroupConfig: arg_initialGroupConfig, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).groups;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).groups;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroup(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).groups;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_parent = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/groups"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["parent"].first, unittest.equals(arg_parent));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              parent: arg_parent,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGroupsResponse(response);
      })));
    });

    unittest.test('method--lookup', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).groups;
      var arg_groupKey_id = 'foo';
      var arg_groupKey_namespace = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/groups:lookup"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["groupKey.id"].first, unittest.equals(arg_groupKey_id));
        unittest.expect(queryMap["groupKey.namespace"].first,
            unittest.equals(arg_groupKey_namespace));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLookupGroupNameResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lookup(
              groupKey_id: arg_groupKey_id,
              groupKey_namespace: arg_groupKey_namespace,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLookupGroupNameResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).groups;
      var arg_request = buildGroup();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--search', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).groups;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_query = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/groups:search"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              query: arg_query,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchGroupsResponse(response);
      })));
    });
  });

  unittest.group('resource-GroupsMembershipsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).groups.memberships;
      var arg_request = buildMembership();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Membership.fromJson(json);
        checkMembership(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).groups.memberships;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).groups.memberships;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMembership());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMembership(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).groups.memberships;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListMembershipsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListMembershipsResponse(response);
      })));
    });

    unittest.test('method--lookup', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).groups.memberships;
      var arg_parent = 'foo';
      var arg_memberKey_id = 'foo';
      var arg_memberKey_namespace = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["memberKey.id"].first, unittest.equals(arg_memberKey_id));
        unittest.expect(queryMap["memberKey.namespace"].first,
            unittest.equals(arg_memberKey_namespace));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLookupMembershipNameResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lookup(arg_parent,
              memberKey_id: arg_memberKey_id,
              memberKey_namespace: arg_memberKey_namespace,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLookupMembershipNameResponse(response);
      })));
    });

    unittest.test('method--modifyMembershipRoles', () {
      var mock = HttpServerMock();
      var res = api.CloudidentityApi(mock).groups.memberships;
      var arg_request = buildModifyMembershipRolesRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ModifyMembershipRolesRequest.fromJson(json);
        checkModifyMembershipRolesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildModifyMembershipRolesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .modifyMembershipRoles(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkModifyMembershipRolesResponse(response);
      })));
    });
  });
}
