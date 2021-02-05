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
import 'package:googleapis/cloudidentity/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterCheckTransitiveMembershipResponse = 0;
api.CheckTransitiveMembershipResponse buildCheckTransitiveMembershipResponse() {
  var o = api.CheckTransitiveMembershipResponse();
  buildCounterCheckTransitiveMembershipResponse++;
  if (buildCounterCheckTransitiveMembershipResponse < 3) {
    o.hasMembership = true;
  }
  buildCounterCheckTransitiveMembershipResponse--;
  return o;
}

void checkCheckTransitiveMembershipResponse(
    api.CheckTransitiveMembershipResponse o) {
  buildCounterCheckTransitiveMembershipResponse++;
  if (buildCounterCheckTransitiveMembershipResponse < 3) {
    unittest.expect(o.hasMembership, unittest.isTrue);
  }
  buildCounterCheckTransitiveMembershipResponse--;
}

core.List<api.DynamicGroupQuery> buildUnnamed1691() {
  var o = <api.DynamicGroupQuery>[];
  o.add(buildDynamicGroupQuery());
  o.add(buildDynamicGroupQuery());
  return o;
}

void checkUnnamed1691(core.List<api.DynamicGroupQuery> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDynamicGroupQuery(o[0] as api.DynamicGroupQuery);
  checkDynamicGroupQuery(o[1] as api.DynamicGroupQuery);
}

core.int buildCounterDynamicGroupMetadata = 0;
api.DynamicGroupMetadata buildDynamicGroupMetadata() {
  var o = api.DynamicGroupMetadata();
  buildCounterDynamicGroupMetadata++;
  if (buildCounterDynamicGroupMetadata < 3) {
    o.queries = buildUnnamed1691();
    o.status = buildDynamicGroupStatus();
  }
  buildCounterDynamicGroupMetadata--;
  return o;
}

void checkDynamicGroupMetadata(api.DynamicGroupMetadata o) {
  buildCounterDynamicGroupMetadata++;
  if (buildCounterDynamicGroupMetadata < 3) {
    checkUnnamed1691(o.queries);
    checkDynamicGroupStatus(o.status as api.DynamicGroupStatus);
  }
  buildCounterDynamicGroupMetadata--;
}

core.int buildCounterDynamicGroupQuery = 0;
api.DynamicGroupQuery buildDynamicGroupQuery() {
  var o = api.DynamicGroupQuery();
  buildCounterDynamicGroupQuery++;
  if (buildCounterDynamicGroupQuery < 3) {
    o.query = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterDynamicGroupQuery--;
  return o;
}

void checkDynamicGroupQuery(api.DynamicGroupQuery o) {
  buildCounterDynamicGroupQuery++;
  if (buildCounterDynamicGroupQuery < 3) {
    unittest.expect(o.query, unittest.equals('foo'));
    unittest.expect(o.resourceType, unittest.equals('foo'));
  }
  buildCounterDynamicGroupQuery--;
}

core.int buildCounterDynamicGroupStatus = 0;
api.DynamicGroupStatus buildDynamicGroupStatus() {
  var o = api.DynamicGroupStatus();
  buildCounterDynamicGroupStatus++;
  if (buildCounterDynamicGroupStatus < 3) {
    o.status = 'foo';
    o.statusTime = 'foo';
  }
  buildCounterDynamicGroupStatus--;
  return o;
}

void checkDynamicGroupStatus(api.DynamicGroupStatus o) {
  buildCounterDynamicGroupStatus++;
  if (buildCounterDynamicGroupStatus < 3) {
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusTime, unittest.equals('foo'));
  }
  buildCounterDynamicGroupStatus--;
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

core.int buildCounterExpiryDetail = 0;
api.ExpiryDetail buildExpiryDetail() {
  var o = api.ExpiryDetail();
  buildCounterExpiryDetail++;
  if (buildCounterExpiryDetail < 3) {
    o.expireTime = 'foo';
  }
  buildCounterExpiryDetail--;
  return o;
}

void checkExpiryDetail(api.ExpiryDetail o) {
  buildCounterExpiryDetail++;
  if (buildCounterExpiryDetail < 3) {
    unittest.expect(o.expireTime, unittest.equals('foo'));
  }
  buildCounterExpiryDetail--;
}

core.List<api.MembershipAdjacencyList> buildUnnamed1692() {
  var o = <api.MembershipAdjacencyList>[];
  o.add(buildMembershipAdjacencyList());
  o.add(buildMembershipAdjacencyList());
  return o;
}

void checkUnnamed1692(core.List<api.MembershipAdjacencyList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipAdjacencyList(o[0] as api.MembershipAdjacencyList);
  checkMembershipAdjacencyList(o[1] as api.MembershipAdjacencyList);
}

core.List<api.Group> buildUnnamed1693() {
  var o = <api.Group>[];
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

void checkUnnamed1693(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0] as api.Group);
  checkGroup(o[1] as api.Group);
}

core.int buildCounterGetMembershipGraphResponse = 0;
api.GetMembershipGraphResponse buildGetMembershipGraphResponse() {
  var o = api.GetMembershipGraphResponse();
  buildCounterGetMembershipGraphResponse++;
  if (buildCounterGetMembershipGraphResponse < 3) {
    o.adjacencyList = buildUnnamed1692();
    o.groups = buildUnnamed1693();
  }
  buildCounterGetMembershipGraphResponse--;
  return o;
}

void checkGetMembershipGraphResponse(api.GetMembershipGraphResponse o) {
  buildCounterGetMembershipGraphResponse++;
  if (buildCounterGetMembershipGraphResponse < 3) {
    checkUnnamed1692(o.adjacencyList);
    checkUnnamed1693(o.groups);
  }
  buildCounterGetMembershipGraphResponse--;
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
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(
        o.deviceUser as api.GoogleAppsCloudidentityDevicesV1DeviceUser);
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
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(
        o.deviceUser as api.GoogleAppsCloudidentityDevicesV1DeviceUser);
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
    checkGoogleAppsCloudidentityDevicesV1Device(
        o.device as api.GoogleAppsCloudidentityDevicesV1Device);
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
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(
        o.deviceUser as api.GoogleAppsCloudidentityDevicesV1DeviceUser);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse--;
}

core.List<core.String> buildUnnamed1694() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1694(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue>
    buildUnnamed1695() {
  var o =
      <core.String, api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue>{};
  o['x'] = buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue();
  o['y'] = buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue();
  return o;
}

void checkUnnamed1695(
    core.Map<core.String,
            api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(
      o['x'] as api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue);
  checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(
      o['y'] as api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ClientState = 0;
api.GoogleAppsCloudidentityDevicesV1ClientState
    buildGoogleAppsCloudidentityDevicesV1ClientState() {
  var o = api.GoogleAppsCloudidentityDevicesV1ClientState();
  buildCounterGoogleAppsCloudidentityDevicesV1ClientState++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ClientState < 3) {
    o.assetTags = buildUnnamed1694();
    o.complianceState = 'foo';
    o.createTime = 'foo';
    o.customId = 'foo';
    o.etag = 'foo';
    o.healthScore = 'foo';
    o.keyValuePairs = buildUnnamed1695();
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
    checkUnnamed1694(o.assetTags);
    unittest.expect(o.complianceState, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.customId, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.healthScore, unittest.equals('foo'));
    checkUnnamed1695(o.keyValuePairs);
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

core.List<core.String> buildUnnamed1696() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1696(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1697() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1697(core.List<core.String> o) {
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
    o.otherAccounts = buildUnnamed1696();
    o.ownerType = 'foo';
    o.releaseVersion = 'foo';
    o.securityPatchTime = 'foo';
    o.serialNumber = 'foo';
    o.wifiMacAddresses = buildUnnamed1697();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1Device--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1Device(
    api.GoogleAppsCloudidentityDevicesV1Device o) {
  buildCounterGoogleAppsCloudidentityDevicesV1Device++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1Device < 3) {
    checkGoogleAppsCloudidentityDevicesV1AndroidAttributes(
        o.androidSpecificAttributes
            as api.GoogleAppsCloudidentityDevicesV1AndroidAttributes);
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
    checkUnnamed1696(o.otherAccounts);
    unittest.expect(o.ownerType, unittest.equals('foo'));
    unittest.expect(o.releaseVersion, unittest.equals('foo'));
    unittest.expect(o.securityPatchTime, unittest.equals('foo'));
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    checkUnnamed1697(o.wifiMacAddresses);
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

core.List<api.GoogleAppsCloudidentityDevicesV1ClientState> buildUnnamed1698() {
  var o = <api.GoogleAppsCloudidentityDevicesV1ClientState>[];
  o.add(buildGoogleAppsCloudidentityDevicesV1ClientState());
  o.add(buildGoogleAppsCloudidentityDevicesV1ClientState());
  return o;
}

void checkUnnamed1698(
    core.List<api.GoogleAppsCloudidentityDevicesV1ClientState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1ClientState(
      o[0] as api.GoogleAppsCloudidentityDevicesV1ClientState);
  checkGoogleAppsCloudidentityDevicesV1ClientState(
      o[1] as api.GoogleAppsCloudidentityDevicesV1ClientState);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
    buildGoogleAppsCloudidentityDevicesV1ListClientStatesResponse() {
  var o = api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse <
      3) {
    o.clientStates = buildUnnamed1698();
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
    checkUnnamed1698(o.clientStates);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse--;
}

core.List<api.GoogleAppsCloudidentityDevicesV1DeviceUser> buildUnnamed1699() {
  var o = <api.GoogleAppsCloudidentityDevicesV1DeviceUser>[];
  o.add(buildGoogleAppsCloudidentityDevicesV1DeviceUser());
  o.add(buildGoogleAppsCloudidentityDevicesV1DeviceUser());
  return o;
}

void checkUnnamed1699(
    core.List<api.GoogleAppsCloudidentityDevicesV1DeviceUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1DeviceUser(
      o[0] as api.GoogleAppsCloudidentityDevicesV1DeviceUser);
  checkGoogleAppsCloudidentityDevicesV1DeviceUser(
      o[1] as api.GoogleAppsCloudidentityDevicesV1DeviceUser);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    buildGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse() {
  var o = api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse < 3) {
    o.deviceUsers = buildUnnamed1699();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse(
    api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse < 3) {
    checkUnnamed1699(o.deviceUsers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse--;
}

core.List<api.GoogleAppsCloudidentityDevicesV1Device> buildUnnamed1700() {
  var o = <api.GoogleAppsCloudidentityDevicesV1Device>[];
  o.add(buildGoogleAppsCloudidentityDevicesV1Device());
  o.add(buildGoogleAppsCloudidentityDevicesV1Device());
  return o;
}

void checkUnnamed1700(core.List<api.GoogleAppsCloudidentityDevicesV1Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1Device(
      o[0] as api.GoogleAppsCloudidentityDevicesV1Device);
  checkGoogleAppsCloudidentityDevicesV1Device(
      o[1] as api.GoogleAppsCloudidentityDevicesV1Device);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse = 0;
api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse
    buildGoogleAppsCloudidentityDevicesV1ListDevicesResponse() {
  var o = api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse < 3) {
    o.devices = buildUnnamed1700();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ListDevicesResponse(
    api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse < 3) {
    checkUnnamed1700(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse--;
}

core.List<core.String> buildUnnamed1701() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1701(core.List<core.String> o) {
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
    o.names = buildUnnamed1701();
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
    checkUnnamed1701(o.names);
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
    checkGoogleAppsCloudidentityDevicesV1Device(
        o.device as api.GoogleAppsCloudidentityDevicesV1Device);
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
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(
        o.deviceUser as api.GoogleAppsCloudidentityDevicesV1DeviceUser);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse--;
}

core.Map<core.String, core.String> buildUnnamed1702() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1702(core.Map<core.String, core.String> o) {
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
    o.dynamicGroupMetadata = buildDynamicGroupMetadata();
    o.groupKey = buildEntityKey();
    o.labels = buildUnnamed1702();
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
    checkDynamicGroupMetadata(
        o.dynamicGroupMetadata as api.DynamicGroupMetadata);
    checkEntityKey(o.groupKey as api.EntityKey);
    checkUnnamed1702(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGroup--;
}

core.Map<core.String, core.String> buildUnnamed1703() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1703(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.TransitiveMembershipRole> buildUnnamed1704() {
  var o = <api.TransitiveMembershipRole>[];
  o.add(buildTransitiveMembershipRole());
  o.add(buildTransitiveMembershipRole());
  return o;
}

void checkUnnamed1704(core.List<api.TransitiveMembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitiveMembershipRole(o[0] as api.TransitiveMembershipRole);
  checkTransitiveMembershipRole(o[1] as api.TransitiveMembershipRole);
}

core.int buildCounterGroupRelation = 0;
api.GroupRelation buildGroupRelation() {
  var o = api.GroupRelation();
  buildCounterGroupRelation++;
  if (buildCounterGroupRelation < 3) {
    o.displayName = 'foo';
    o.group = 'foo';
    o.groupKey = buildEntityKey();
    o.labels = buildUnnamed1703();
    o.relationType = 'foo';
    o.roles = buildUnnamed1704();
  }
  buildCounterGroupRelation--;
  return o;
}

void checkGroupRelation(api.GroupRelation o) {
  buildCounterGroupRelation++;
  if (buildCounterGroupRelation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.group, unittest.equals('foo'));
    checkEntityKey(o.groupKey as api.EntityKey);
    checkUnnamed1703(o.labels);
    unittest.expect(o.relationType, unittest.equals('foo'));
    checkUnnamed1704(o.roles);
  }
  buildCounterGroupRelation--;
}

core.List<api.Group> buildUnnamed1705() {
  var o = <api.Group>[];
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

void checkUnnamed1705(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0] as api.Group);
  checkGroup(o[1] as api.Group);
}

core.int buildCounterListGroupsResponse = 0;
api.ListGroupsResponse buildListGroupsResponse() {
  var o = api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.groups = buildUnnamed1705();
    o.nextPageToken = 'foo';
  }
  buildCounterListGroupsResponse--;
  return o;
}

void checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkUnnamed1705(o.groups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListGroupsResponse--;
}

core.List<api.Membership> buildUnnamed1706() {
  var o = <api.Membership>[];
  o.add(buildMembership());
  o.add(buildMembership());
  return o;
}

void checkUnnamed1706(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0] as api.Membership);
  checkMembership(o[1] as api.Membership);
}

core.int buildCounterListMembershipsResponse = 0;
api.ListMembershipsResponse buildListMembershipsResponse() {
  var o = api.ListMembershipsResponse();
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    o.memberships = buildUnnamed1706();
    o.nextPageToken = 'foo';
  }
  buildCounterListMembershipsResponse--;
  return o;
}

void checkListMembershipsResponse(api.ListMembershipsResponse o) {
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    checkUnnamed1706(o.memberships);
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

core.List<api.EntityKey> buildUnnamed1707() {
  var o = <api.EntityKey>[];
  o.add(buildEntityKey());
  o.add(buildEntityKey());
  return o;
}

void checkUnnamed1707(core.List<api.EntityKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityKey(o[0] as api.EntityKey);
  checkEntityKey(o[1] as api.EntityKey);
}

core.List<api.TransitiveMembershipRole> buildUnnamed1708() {
  var o = <api.TransitiveMembershipRole>[];
  o.add(buildTransitiveMembershipRole());
  o.add(buildTransitiveMembershipRole());
  return o;
}

void checkUnnamed1708(core.List<api.TransitiveMembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitiveMembershipRole(o[0] as api.TransitiveMembershipRole);
  checkTransitiveMembershipRole(o[1] as api.TransitiveMembershipRole);
}

core.int buildCounterMemberRelation = 0;
api.MemberRelation buildMemberRelation() {
  var o = api.MemberRelation();
  buildCounterMemberRelation++;
  if (buildCounterMemberRelation < 3) {
    o.member = 'foo';
    o.preferredMemberKey = buildUnnamed1707();
    o.relationType = 'foo';
    o.roles = buildUnnamed1708();
  }
  buildCounterMemberRelation--;
  return o;
}

void checkMemberRelation(api.MemberRelation o) {
  buildCounterMemberRelation++;
  if (buildCounterMemberRelation < 3) {
    unittest.expect(o.member, unittest.equals('foo'));
    checkUnnamed1707(o.preferredMemberKey);
    unittest.expect(o.relationType, unittest.equals('foo'));
    checkUnnamed1708(o.roles);
  }
  buildCounterMemberRelation--;
}

core.List<api.MembershipRole> buildUnnamed1709() {
  var o = <api.MembershipRole>[];
  o.add(buildMembershipRole());
  o.add(buildMembershipRole());
  return o;
}

void checkUnnamed1709(core.List<api.MembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipRole(o[0] as api.MembershipRole);
  checkMembershipRole(o[1] as api.MembershipRole);
}

core.int buildCounterMembership = 0;
api.Membership buildMembership() {
  var o = api.Membership();
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.preferredMemberKey = buildEntityKey();
    o.roles = buildUnnamed1709();
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
    checkEntityKey(o.preferredMemberKey as api.EntityKey);
    checkUnnamed1709(o.roles);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterMembership--;
}

core.List<api.Membership> buildUnnamed1710() {
  var o = <api.Membership>[];
  o.add(buildMembership());
  o.add(buildMembership());
  return o;
}

void checkUnnamed1710(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0] as api.Membership);
  checkMembership(o[1] as api.Membership);
}

core.int buildCounterMembershipAdjacencyList = 0;
api.MembershipAdjacencyList buildMembershipAdjacencyList() {
  var o = api.MembershipAdjacencyList();
  buildCounterMembershipAdjacencyList++;
  if (buildCounterMembershipAdjacencyList < 3) {
    o.edges = buildUnnamed1710();
    o.group = 'foo';
  }
  buildCounterMembershipAdjacencyList--;
  return o;
}

void checkMembershipAdjacencyList(api.MembershipAdjacencyList o) {
  buildCounterMembershipAdjacencyList++;
  if (buildCounterMembershipAdjacencyList < 3) {
    checkUnnamed1710(o.edges);
    unittest.expect(o.group, unittest.equals('foo'));
  }
  buildCounterMembershipAdjacencyList--;
}

core.int buildCounterMembershipRole = 0;
api.MembershipRole buildMembershipRole() {
  var o = api.MembershipRole();
  buildCounterMembershipRole++;
  if (buildCounterMembershipRole < 3) {
    o.expiryDetail = buildExpiryDetail();
    o.name = 'foo';
  }
  buildCounterMembershipRole--;
  return o;
}

void checkMembershipRole(api.MembershipRole o) {
  buildCounterMembershipRole++;
  if (buildCounterMembershipRole < 3) {
    checkExpiryDetail(o.expiryDetail as api.ExpiryDetail);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterMembershipRole--;
}

core.List<api.MembershipRole> buildUnnamed1711() {
  var o = <api.MembershipRole>[];
  o.add(buildMembershipRole());
  o.add(buildMembershipRole());
  return o;
}

void checkUnnamed1711(core.List<api.MembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipRole(o[0] as api.MembershipRole);
  checkMembershipRole(o[1] as api.MembershipRole);
}

core.List<core.String> buildUnnamed1712() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1712(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.UpdateMembershipRolesParams> buildUnnamed1713() {
  var o = <api.UpdateMembershipRolesParams>[];
  o.add(buildUpdateMembershipRolesParams());
  o.add(buildUpdateMembershipRolesParams());
  return o;
}

void checkUnnamed1713(core.List<api.UpdateMembershipRolesParams> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateMembershipRolesParams(o[0] as api.UpdateMembershipRolesParams);
  checkUpdateMembershipRolesParams(o[1] as api.UpdateMembershipRolesParams);
}

core.int buildCounterModifyMembershipRolesRequest = 0;
api.ModifyMembershipRolesRequest buildModifyMembershipRolesRequest() {
  var o = api.ModifyMembershipRolesRequest();
  buildCounterModifyMembershipRolesRequest++;
  if (buildCounterModifyMembershipRolesRequest < 3) {
    o.addRoles = buildUnnamed1711();
    o.removeRoles = buildUnnamed1712();
    o.updateRolesParams = buildUnnamed1713();
  }
  buildCounterModifyMembershipRolesRequest--;
  return o;
}

void checkModifyMembershipRolesRequest(api.ModifyMembershipRolesRequest o) {
  buildCounterModifyMembershipRolesRequest++;
  if (buildCounterModifyMembershipRolesRequest < 3) {
    checkUnnamed1711(o.addRoles);
    checkUnnamed1712(o.removeRoles);
    checkUnnamed1713(o.updateRolesParams);
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
    checkMembership(o.membership as api.Membership);
  }
  buildCounterModifyMembershipRolesResponse--;
}

core.Map<core.String, core.Object> buildUnnamed1714() {
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

void checkUnnamed1714(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed1715() {
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

void checkUnnamed1715(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed1714();
    o.name = 'foo';
    o.response = buildUnnamed1715();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error as api.Status);
    checkUnnamed1714(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1715(o.response);
  }
  buildCounterOperation--;
}

core.List<api.Group> buildUnnamed1716() {
  var o = <api.Group>[];
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

void checkUnnamed1716(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0] as api.Group);
  checkGroup(o[1] as api.Group);
}

core.int buildCounterSearchGroupsResponse = 0;
api.SearchGroupsResponse buildSearchGroupsResponse() {
  var o = api.SearchGroupsResponse();
  buildCounterSearchGroupsResponse++;
  if (buildCounterSearchGroupsResponse < 3) {
    o.groups = buildUnnamed1716();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchGroupsResponse--;
  return o;
}

void checkSearchGroupsResponse(api.SearchGroupsResponse o) {
  buildCounterSearchGroupsResponse++;
  if (buildCounterSearchGroupsResponse < 3) {
    checkUnnamed1716(o.groups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchGroupsResponse--;
}

core.List<api.GroupRelation> buildUnnamed1717() {
  var o = <api.GroupRelation>[];
  o.add(buildGroupRelation());
  o.add(buildGroupRelation());
  return o;
}

void checkUnnamed1717(core.List<api.GroupRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupRelation(o[0] as api.GroupRelation);
  checkGroupRelation(o[1] as api.GroupRelation);
}

core.int buildCounterSearchTransitiveGroupsResponse = 0;
api.SearchTransitiveGroupsResponse buildSearchTransitiveGroupsResponse() {
  var o = api.SearchTransitiveGroupsResponse();
  buildCounterSearchTransitiveGroupsResponse++;
  if (buildCounterSearchTransitiveGroupsResponse < 3) {
    o.memberships = buildUnnamed1717();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchTransitiveGroupsResponse--;
  return o;
}

void checkSearchTransitiveGroupsResponse(api.SearchTransitiveGroupsResponse o) {
  buildCounterSearchTransitiveGroupsResponse++;
  if (buildCounterSearchTransitiveGroupsResponse < 3) {
    checkUnnamed1717(o.memberships);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchTransitiveGroupsResponse--;
}

core.List<api.MemberRelation> buildUnnamed1718() {
  var o = <api.MemberRelation>[];
  o.add(buildMemberRelation());
  o.add(buildMemberRelation());
  return o;
}

void checkUnnamed1718(core.List<api.MemberRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMemberRelation(o[0] as api.MemberRelation);
  checkMemberRelation(o[1] as api.MemberRelation);
}

core.int buildCounterSearchTransitiveMembershipsResponse = 0;
api.SearchTransitiveMembershipsResponse
    buildSearchTransitiveMembershipsResponse() {
  var o = api.SearchTransitiveMembershipsResponse();
  buildCounterSearchTransitiveMembershipsResponse++;
  if (buildCounterSearchTransitiveMembershipsResponse < 3) {
    o.memberships = buildUnnamed1718();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchTransitiveMembershipsResponse--;
  return o;
}

void checkSearchTransitiveMembershipsResponse(
    api.SearchTransitiveMembershipsResponse o) {
  buildCounterSearchTransitiveMembershipsResponse++;
  if (buildCounterSearchTransitiveMembershipsResponse < 3) {
    checkUnnamed1718(o.memberships);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchTransitiveMembershipsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed1719() {
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

void checkUnnamed1719(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed1720() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed1719());
  o.add(buildUnnamed1719());
  return o;
}

void checkUnnamed1720(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1719(o[0]);
  checkUnnamed1719(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1720();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed1720(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTransitiveMembershipRole = 0;
api.TransitiveMembershipRole buildTransitiveMembershipRole() {
  var o = api.TransitiveMembershipRole();
  buildCounterTransitiveMembershipRole++;
  if (buildCounterTransitiveMembershipRole < 3) {
    o.role = 'foo';
  }
  buildCounterTransitiveMembershipRole--;
  return o;
}

void checkTransitiveMembershipRole(api.TransitiveMembershipRole o) {
  buildCounterTransitiveMembershipRole++;
  if (buildCounterTransitiveMembershipRole < 3) {
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterTransitiveMembershipRole--;
}

core.int buildCounterUpdateMembershipRolesParams = 0;
api.UpdateMembershipRolesParams buildUpdateMembershipRolesParams() {
  var o = api.UpdateMembershipRolesParams();
  buildCounterUpdateMembershipRolesParams++;
  if (buildCounterUpdateMembershipRolesParams < 3) {
    o.fieldMask = 'foo';
    o.membershipRole = buildMembershipRole();
  }
  buildCounterUpdateMembershipRolesParams--;
  return o;
}

void checkUpdateMembershipRolesParams(api.UpdateMembershipRolesParams o) {
  buildCounterUpdateMembershipRolesParams++;
  if (buildCounterUpdateMembershipRolesParams < 3) {
    unittest.expect(o.fieldMask, unittest.equals('foo'));
    checkMembershipRole(o.membershipRole as api.MembershipRole);
  }
  buildCounterUpdateMembershipRolesParams--;
}

core.int buildCounterUserInvitation = 0;
api.UserInvitation buildUserInvitation() {
  var o = api.UserInvitation();
  buildCounterUserInvitation++;
  if (buildCounterUserInvitation < 3) {
    o.mailsSentCount = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterUserInvitation--;
  return o;
}

void checkUserInvitation(api.UserInvitation o) {
  buildCounterUserInvitation++;
  if (buildCounterUserInvitation < 3) {
    unittest.expect(o.mailsSentCount, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterUserInvitation--;
}

void main() {
  unittest.group('obj-schema-CheckTransitiveMembershipResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCheckTransitiveMembershipResponse();
      var od = api.CheckTransitiveMembershipResponse.fromJson(o.toJson());
      checkCheckTransitiveMembershipResponse(
          od as api.CheckTransitiveMembershipResponse);
    });
  });

  unittest.group('obj-schema-DynamicGroupMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildDynamicGroupMetadata();
      var od = api.DynamicGroupMetadata.fromJson(o.toJson());
      checkDynamicGroupMetadata(od as api.DynamicGroupMetadata);
    });
  });

  unittest.group('obj-schema-DynamicGroupQuery', () {
    unittest.test('to-json--from-json', () {
      var o = buildDynamicGroupQuery();
      var od = api.DynamicGroupQuery.fromJson(o.toJson());
      checkDynamicGroupQuery(od as api.DynamicGroupQuery);
    });
  });

  unittest.group('obj-schema-DynamicGroupStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildDynamicGroupStatus();
      var od = api.DynamicGroupStatus.fromJson(o.toJson());
      checkDynamicGroupStatus(od as api.DynamicGroupStatus);
    });
  });

  unittest.group('obj-schema-EntityKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildEntityKey();
      var od = api.EntityKey.fromJson(o.toJson());
      checkEntityKey(od as api.EntityKey);
    });
  });

  unittest.group('obj-schema-ExpiryDetail', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpiryDetail();
      var od = api.ExpiryDetail.fromJson(o.toJson());
      checkExpiryDetail(od as api.ExpiryDetail);
    });
  });

  unittest.group('obj-schema-GetMembershipGraphResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetMembershipGraphResponse();
      var od = api.GetMembershipGraphResponse.fromJson(o.toJson());
      checkGetMembershipGraphResponse(od as api.GetMembershipGraphResponse);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1AndroidAttributes',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1AndroidAttributes();
      var od = api.GoogleAppsCloudidentityDevicesV1AndroidAttributes.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1AndroidAttributes(
          od as api.GoogleAppsCloudidentityDevicesV1AndroidAttributes);
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
      checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest(
          od as api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse();
      var od = api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
          .fromJson(o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse(
          od as api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest();
      var od =
          api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest(
          od as api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse();
      var od =
          api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse(
          od as api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest();
      var od =
          api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest(
          od as api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest);
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
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse(
          od as api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse);
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
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest(od
          as api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest);
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
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse(od
          as api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1ClientState', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1ClientState();
      var od =
          api.GoogleAppsCloudidentityDevicesV1ClientState.fromJson(o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ClientState(
          od as api.GoogleAppsCloudidentityDevicesV1ClientState);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CustomAttributeValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue();
      var od =
          api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(
          od as api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1Device', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1Device();
      var od = api.GoogleAppsCloudidentityDevicesV1Device.fromJson(o.toJson());
      checkGoogleAppsCloudidentityDevicesV1Device(
          od as api.GoogleAppsCloudidentityDevicesV1Device);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1DeviceUser', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1DeviceUser();
      var od =
          api.GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(o.toJson());
      checkGoogleAppsCloudidentityDevicesV1DeviceUser(
          od as api.GoogleAppsCloudidentityDevicesV1DeviceUser);
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
      checkGoogleAppsCloudidentityDevicesV1ListClientStatesResponse(
          od as api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse();
      var od =
          api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse(
          od as api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ListDevicesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1ListDevicesResponse();
      var od = api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ListDevicesResponse(
          od as api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse);
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
      checkGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse(od
          as api.GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceRequest();
      var od = api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceRequest(
          od as api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceResponse();
      var od = api.GoogleAppsCloudidentityDevicesV1WipeDeviceResponse.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceResponse(
          od as api.GoogleAppsCloudidentityDevicesV1WipeDeviceResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest();
      var od =
          api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest(
          od as api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse();
      var od =
          api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse(
          od as api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroup();
      var od = api.Group.fromJson(o.toJson());
      checkGroup(od as api.Group);
    });
  });

  unittest.group('obj-schema-GroupRelation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroupRelation();
      var od = api.GroupRelation.fromJson(o.toJson());
      checkGroupRelation(od as api.GroupRelation);
    });
  });

  unittest.group('obj-schema-ListGroupsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListGroupsResponse();
      var od = api.ListGroupsResponse.fromJson(o.toJson());
      checkListGroupsResponse(od as api.ListGroupsResponse);
    });
  });

  unittest.group('obj-schema-ListMembershipsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListMembershipsResponse();
      var od = api.ListMembershipsResponse.fromJson(o.toJson());
      checkListMembershipsResponse(od as api.ListMembershipsResponse);
    });
  });

  unittest.group('obj-schema-LookupGroupNameResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLookupGroupNameResponse();
      var od = api.LookupGroupNameResponse.fromJson(o.toJson());
      checkLookupGroupNameResponse(od as api.LookupGroupNameResponse);
    });
  });

  unittest.group('obj-schema-LookupMembershipNameResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLookupMembershipNameResponse();
      var od = api.LookupMembershipNameResponse.fromJson(o.toJson());
      checkLookupMembershipNameResponse(od as api.LookupMembershipNameResponse);
    });
  });

  unittest.group('obj-schema-MemberRelation', () {
    unittest.test('to-json--from-json', () {
      var o = buildMemberRelation();
      var od = api.MemberRelation.fromJson(o.toJson());
      checkMemberRelation(od as api.MemberRelation);
    });
  });

  unittest.group('obj-schema-Membership', () {
    unittest.test('to-json--from-json', () {
      var o = buildMembership();
      var od = api.Membership.fromJson(o.toJson());
      checkMembership(od as api.Membership);
    });
  });

  unittest.group('obj-schema-MembershipAdjacencyList', () {
    unittest.test('to-json--from-json', () {
      var o = buildMembershipAdjacencyList();
      var od = api.MembershipAdjacencyList.fromJson(o.toJson());
      checkMembershipAdjacencyList(od as api.MembershipAdjacencyList);
    });
  });

  unittest.group('obj-schema-MembershipRole', () {
    unittest.test('to-json--from-json', () {
      var o = buildMembershipRole();
      var od = api.MembershipRole.fromJson(o.toJson());
      checkMembershipRole(od as api.MembershipRole);
    });
  });

  unittest.group('obj-schema-ModifyMembershipRolesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyMembershipRolesRequest();
      var od = api.ModifyMembershipRolesRequest.fromJson(o.toJson());
      checkModifyMembershipRolesRequest(od as api.ModifyMembershipRolesRequest);
    });
  });

  unittest.group('obj-schema-ModifyMembershipRolesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyMembershipRolesResponse();
      var od = api.ModifyMembershipRolesResponse.fromJson(o.toJson());
      checkModifyMembershipRolesResponse(
          od as api.ModifyMembershipRolesResponse);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-SearchGroupsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchGroupsResponse();
      var od = api.SearchGroupsResponse.fromJson(o.toJson());
      checkSearchGroupsResponse(od as api.SearchGroupsResponse);
    });
  });

  unittest.group('obj-schema-SearchTransitiveGroupsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchTransitiveGroupsResponse();
      var od = api.SearchTransitiveGroupsResponse.fromJson(o.toJson());
      checkSearchTransitiveGroupsResponse(
          od as api.SearchTransitiveGroupsResponse);
    });
  });

  unittest.group('obj-schema-SearchTransitiveMembershipsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchTransitiveMembershipsResponse();
      var od = api.SearchTransitiveMembershipsResponse.fromJson(o.toJson());
      checkSearchTransitiveMembershipsResponse(
          od as api.SearchTransitiveMembershipsResponse);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-TransitiveMembershipRole', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransitiveMembershipRole();
      var od = api.TransitiveMembershipRole.fromJson(o.toJson());
      checkTransitiveMembershipRole(od as api.TransitiveMembershipRole);
    });
  });

  unittest.group('obj-schema-UpdateMembershipRolesParams', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateMembershipRolesParams();
      var od = api.UpdateMembershipRolesParams.fromJson(o.toJson());
      checkUpdateMembershipRolesParams(od as api.UpdateMembershipRolesParams);
    });
  });

  unittest.group('obj-schema-UserInvitation', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserInvitation();
      var od = api.UserInvitation.fromJson(o.toJson());
      checkUserInvitation(od as api.UserInvitation);
    });
  });

  unittest.group('resource-DevicesResource', () {
    unittest.test('method--cancelWipe', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest(
            obj as api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest);

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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices;
      var arg_request = buildGoogleAppsCloudidentityDevicesV1Device();
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAppsCloudidentityDevicesV1Device.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1Device(
            obj as api.GoogleAppsCloudidentityDevicesV1Device);

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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices;
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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices;
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
        checkGoogleAppsCloudidentityDevicesV1Device(
            response as api.GoogleAppsCloudidentityDevicesV1Device);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices;
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
        checkGoogleAppsCloudidentityDevicesV1ListDevicesResponse(response
            as api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse);
      })));
    });

    unittest.test('method--wipe', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1WipeDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1WipeDeviceRequest(
            obj as api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest);

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
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-DevicesDeviceUsersResource', () {
    unittest.test('method--approve', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices.deviceUsers;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest(obj
            as api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest);

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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--block', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices.deviceUsers;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest(
            obj as api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest);

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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--cancelWipe', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices.deviceUsers;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest(obj
            as api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest);

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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices.deviceUsers;
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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices.deviceUsers;
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
        checkGoogleAppsCloudidentityDevicesV1DeviceUser(
            response as api.GoogleAppsCloudidentityDevicesV1DeviceUser);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices.deviceUsers;
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
        checkGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse(response
            as api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse);
      })));
    });

    unittest.test('method--lookup', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices.deviceUsers;
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
            response as api
                .GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse);
      })));
    });

    unittest.test('method--wipe', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices.deviceUsers;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest(
            obj as api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest);

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
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-DevicesDeviceUsersClientStatesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices.deviceUsers.clientStates;
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
        checkGoogleAppsCloudidentityDevicesV1ClientState(
            response as api.GoogleAppsCloudidentityDevicesV1ClientState);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices.deviceUsers.clientStates;
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
        checkGoogleAppsCloudidentityDevicesV1ListClientStatesResponse(response
            as api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).devices.deviceUsers.clientStates;
      var arg_request = buildGoogleAppsCloudidentityDevicesV1ClientState();
      var arg_name = 'foo';
      var arg_customer = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleAppsCloudidentityDevicesV1ClientState.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1ClientState(
            obj as api.GoogleAppsCloudidentityDevicesV1ClientState);

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
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-GroupsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups;
      var arg_request = buildGroup();
      var arg_initialGroupConfig = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj as api.Group);

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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups;
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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups;
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
        checkGroup(response as api.Group);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups;
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
        checkListGroupsResponse(response as api.ListGroupsResponse);
      })));
    });

    unittest.test('method--lookup', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups;
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
        checkLookupGroupNameResponse(response as api.LookupGroupNameResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups;
      var arg_request = buildGroup();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj as api.Group);

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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--search', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups;
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
        checkSearchGroupsResponse(response as api.SearchGroupsResponse);
      })));
    });
  });

  unittest.group('resource-GroupsMembershipsResource', () {
    unittest.test('method--checkTransitiveMembership', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups.memberships;
      var arg_parent = 'foo';
      var arg_query = 'foo';
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildCheckTransitiveMembershipResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .checkTransitiveMembership(arg_parent,
              query: arg_query, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCheckTransitiveMembershipResponse(
            response as api.CheckTransitiveMembershipResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups.memberships;
      var arg_request = buildMembership();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Membership.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMembership(obj as api.Membership);

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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups.memberships;
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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups.memberships;
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
        checkMembership(response as api.Membership);
      })));
    });

    unittest.test('method--getMembershipGraph', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups.memberships;
      var arg_parent = 'foo';
      var arg_query = 'foo';
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getMembershipGraph(arg_parent,
              query: arg_query, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups.memberships;
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
        checkListMembershipsResponse(response as api.ListMembershipsResponse);
      })));
    });

    unittest.test('method--lookup', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups.memberships;
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
        checkLookupMembershipNameResponse(
            response as api.LookupMembershipNameResponse);
      })));
    });

    unittest.test('method--modifyMembershipRoles', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups.memberships;
      var arg_request = buildModifyMembershipRolesRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ModifyMembershipRolesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyMembershipRolesRequest(
            obj as api.ModifyMembershipRolesRequest);

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
        checkModifyMembershipRolesResponse(
            response as api.ModifyMembershipRolesResponse);
      })));
    });

    unittest.test('method--searchTransitiveGroups', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups.memberships;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_query = 'foo';
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchTransitiveGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchTransitiveGroups(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              query: arg_query,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchTransitiveGroupsResponse(
            response as api.SearchTransitiveGroupsResponse);
      })));
    });

    unittest.test('method--searchTransitiveMemberships', () {
      var mock = HttpServerMock();
      var res = api.CloudIdentityApi(mock).groups.memberships;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildSearchTransitiveMembershipsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchTransitiveMemberships(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchTransitiveMembershipsResponse(
            response as api.SearchTransitiveMembershipsResponse);
      })));
    });
  });
}
