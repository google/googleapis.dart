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

import 'package:googleapis/cloudidentity/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterCheckTransitiveMembershipResponse = 0;
api.CheckTransitiveMembershipResponse buildCheckTransitiveMembershipResponse() {
  final o = api.CheckTransitiveMembershipResponse();
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
    unittest.expect(o.hasMembership!, unittest.isTrue);
  }
  buildCounterCheckTransitiveMembershipResponse--;
}

core.int buildCounterCreateGroupMetadata = 0;
api.CreateGroupMetadata buildCreateGroupMetadata() {
  final o = api.CreateGroupMetadata();
  buildCounterCreateGroupMetadata++;
  if (buildCounterCreateGroupMetadata < 3) {}
  buildCounterCreateGroupMetadata--;
  return o;
}

void checkCreateGroupMetadata(api.CreateGroupMetadata o) {
  buildCounterCreateGroupMetadata++;
  if (buildCounterCreateGroupMetadata < 3) {}
  buildCounterCreateGroupMetadata--;
}

core.int buildCounterCreateMembershipMetadata = 0;
api.CreateMembershipMetadata buildCreateMembershipMetadata() {
  final o = api.CreateMembershipMetadata();
  buildCounterCreateMembershipMetadata++;
  if (buildCounterCreateMembershipMetadata < 3) {}
  buildCounterCreateMembershipMetadata--;
  return o;
}

void checkCreateMembershipMetadata(api.CreateMembershipMetadata o) {
  buildCounterCreateMembershipMetadata++;
  if (buildCounterCreateMembershipMetadata < 3) {}
  buildCounterCreateMembershipMetadata--;
}

core.int buildCounterDeleteGroupMetadata = 0;
api.DeleteGroupMetadata buildDeleteGroupMetadata() {
  final o = api.DeleteGroupMetadata();
  buildCounterDeleteGroupMetadata++;
  if (buildCounterDeleteGroupMetadata < 3) {}
  buildCounterDeleteGroupMetadata--;
  return o;
}

void checkDeleteGroupMetadata(api.DeleteGroupMetadata o) {
  buildCounterDeleteGroupMetadata++;
  if (buildCounterDeleteGroupMetadata < 3) {}
  buildCounterDeleteGroupMetadata--;
}

core.int buildCounterDeleteMembershipMetadata = 0;
api.DeleteMembershipMetadata buildDeleteMembershipMetadata() {
  final o = api.DeleteMembershipMetadata();
  buildCounterDeleteMembershipMetadata++;
  if (buildCounterDeleteMembershipMetadata < 3) {}
  buildCounterDeleteMembershipMetadata--;
  return o;
}

void checkDeleteMembershipMetadata(api.DeleteMembershipMetadata o) {
  buildCounterDeleteMembershipMetadata++;
  if (buildCounterDeleteMembershipMetadata < 3) {}
  buildCounterDeleteMembershipMetadata--;
}

core.List<api.DynamicGroupQuery> buildUnnamed0() => [
      buildDynamicGroupQuery(),
      buildDynamicGroupQuery(),
    ];

void checkUnnamed0(core.List<api.DynamicGroupQuery> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDynamicGroupQuery(o[0]);
  checkDynamicGroupQuery(o[1]);
}

core.int buildCounterDynamicGroupMetadata = 0;
api.DynamicGroupMetadata buildDynamicGroupMetadata() {
  final o = api.DynamicGroupMetadata();
  buildCounterDynamicGroupMetadata++;
  if (buildCounterDynamicGroupMetadata < 3) {
    o.queries = buildUnnamed0();
    o.status = buildDynamicGroupStatus();
  }
  buildCounterDynamicGroupMetadata--;
  return o;
}

void checkDynamicGroupMetadata(api.DynamicGroupMetadata o) {
  buildCounterDynamicGroupMetadata++;
  if (buildCounterDynamicGroupMetadata < 3) {
    checkUnnamed0(o.queries!);
    checkDynamicGroupStatus(o.status!);
  }
  buildCounterDynamicGroupMetadata--;
}

core.int buildCounterDynamicGroupQuery = 0;
api.DynamicGroupQuery buildDynamicGroupQuery() {
  final o = api.DynamicGroupQuery();
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
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDynamicGroupQuery--;
}

core.int buildCounterDynamicGroupStatus = 0;
api.DynamicGroupStatus buildDynamicGroupStatus() {
  final o = api.DynamicGroupStatus();
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
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterDynamicGroupStatus--;
}

core.int buildCounterEntityKey = 0;
api.EntityKey buildEntityKey() {
  final o = api.EntityKey();
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
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.namespace!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntityKey--;
}

core.int buildCounterExpiryDetail = 0;
api.ExpiryDetail buildExpiryDetail() {
  final o = api.ExpiryDetail();
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
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterExpiryDetail--;
}

core.int buildCounterGetMembershipGraphMetadata = 0;
api.GetMembershipGraphMetadata buildGetMembershipGraphMetadata() {
  final o = api.GetMembershipGraphMetadata();
  buildCounterGetMembershipGraphMetadata++;
  if (buildCounterGetMembershipGraphMetadata < 3) {}
  buildCounterGetMembershipGraphMetadata--;
  return o;
}

void checkGetMembershipGraphMetadata(api.GetMembershipGraphMetadata o) {
  buildCounterGetMembershipGraphMetadata++;
  if (buildCounterGetMembershipGraphMetadata < 3) {}
  buildCounterGetMembershipGraphMetadata--;
}

core.List<api.MembershipAdjacencyList> buildUnnamed1() => [
      buildMembershipAdjacencyList(),
      buildMembershipAdjacencyList(),
    ];

void checkUnnamed1(core.List<api.MembershipAdjacencyList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipAdjacencyList(o[0]);
  checkMembershipAdjacencyList(o[1]);
}

core.List<api.Group> buildUnnamed2() => [
      buildGroup(),
      buildGroup(),
    ];

void checkUnnamed2(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterGetMembershipGraphResponse = 0;
api.GetMembershipGraphResponse buildGetMembershipGraphResponse() {
  final o = api.GetMembershipGraphResponse();
  buildCounterGetMembershipGraphResponse++;
  if (buildCounterGetMembershipGraphResponse < 3) {
    o.adjacencyList = buildUnnamed1();
    o.groups = buildUnnamed2();
  }
  buildCounterGetMembershipGraphResponse--;
  return o;
}

void checkGetMembershipGraphResponse(api.GetMembershipGraphResponse o) {
  buildCounterGetMembershipGraphResponse++;
  if (buildCounterGetMembershipGraphResponse < 3) {
    checkUnnamed1(o.adjacencyList!);
    checkUnnamed2(o.groups!);
  }
  buildCounterGetMembershipGraphResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes = 0;
api.GoogleAppsCloudidentityDevicesV1AndroidAttributes
    buildGoogleAppsCloudidentityDevicesV1AndroidAttributes() {
  final o = api.GoogleAppsCloudidentityDevicesV1AndroidAttributes();
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
    unittest.expect(o.enabledUnknownSources!, unittest.isTrue);
    unittest.expect(o.ownerProfileAccount!, unittest.isTrue);
    unittest.expect(
      o.ownershipPrivilege!,
      unittest.equals('foo'),
    );
    unittest.expect(o.supportsWorkProfile!, unittest.isTrue);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata =
    0;
api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
    buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata() {
  final o = api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata();
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata(
    api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest =
    0;
api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest() {
  final o = api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest();
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
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
    buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse() {
  final o = api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse();
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
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(o.deviceUser!);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata =
    0;
api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
    buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata() {
  final o = api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata();
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata(
    api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata o) {
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest = 0;
api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest() {
  final o = api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest();
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
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
    buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse() {
  final o = api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse();
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
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(o.deviceUser!);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata =
    0;
api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
    buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata() {
  final o = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata();
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata(
    api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest =
    0;
api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest() {
  final o = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest();
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
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
    buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse() {
  final o = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse();
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
    checkGoogleAppsCloudidentityDevicesV1Device(o.device!);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse--;
}

core.int
    buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata =
    0;
api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
    buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata() {
  final o = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata();
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata(
    api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata--;
}

core.int
    buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest = 0;
api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest() {
  final o = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest();
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
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest--;
}

core.int
    buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
    buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse() {
  final o = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse();
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
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(o.deviceUser!);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.Map<core.String, api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue>
    buildUnnamed4() => {
          'x': buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue(),
          'y': buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue(),
        };

void checkUnnamed4(
    core.Map<core.String,
            api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(o['x']!);
  checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(o['y']!);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ClientState = 0;
api.GoogleAppsCloudidentityDevicesV1ClientState
    buildGoogleAppsCloudidentityDevicesV1ClientState() {
  final o = api.GoogleAppsCloudidentityDevicesV1ClientState();
  buildCounterGoogleAppsCloudidentityDevicesV1ClientState++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ClientState < 3) {
    o.assetTags = buildUnnamed3();
    o.complianceState = 'foo';
    o.createTime = 'foo';
    o.customId = 'foo';
    o.etag = 'foo';
    o.healthScore = 'foo';
    o.keyValuePairs = buildUnnamed4();
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
    checkUnnamed3(o.assetTags!);
    unittest.expect(
      o.complianceState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.healthScore!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.keyValuePairs!);
    unittest.expect(
      o.lastUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.managed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ownerType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scoreReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ClientState--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata = 0;
api.GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
    buildGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata() {
  final o = api.GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata();
  buildCounterGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata < 3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata(
    api.GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata < 3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue = 0;
api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue
    buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue() {
  final o = api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue();
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
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(
      o.numberValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata = 0;
api.GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
    buildGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata() {
  final o = api.GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata();
  buildCounterGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata < 3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata(
    api.GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata o) {
  buildCounterGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata < 3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata =
    0;
api.GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
    buildGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata() {
  final o = api.GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata();
  buildCounterGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata(
    api.GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata o) {
  buildCounterGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata--;
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterGoogleAppsCloudidentityDevicesV1Device = 0;
api.GoogleAppsCloudidentityDevicesV1Device
    buildGoogleAppsCloudidentityDevicesV1Device() {
  final o = api.GoogleAppsCloudidentityDevicesV1Device();
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
    o.otherAccounts = buildUnnamed5();
    o.ownerType = 'foo';
    o.releaseVersion = 'foo';
    o.securityPatchTime = 'foo';
    o.serialNumber = 'foo';
    o.wifiMacAddresses = buildUnnamed6();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1Device--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1Device(
    api.GoogleAppsCloudidentityDevicesV1Device o) {
  buildCounterGoogleAppsCloudidentityDevicesV1Device++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1Device < 3) {
    checkGoogleAppsCloudidentityDevicesV1AndroidAttributes(
        o.androidSpecificAttributes!);
    unittest.expect(
      o.assetTag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.basebandVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bootloaderVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.brand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.compromisedState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enabledDeveloperOptions!, unittest.isTrue);
    unittest.expect(o.enabledUsbDebugging!, unittest.isTrue);
    unittest.expect(
      o.encryptionState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imei!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kernelVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastSyncTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.managementState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.meid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkOperator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.otherAccounts!);
    unittest.expect(
      o.ownerType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.releaseVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.securityPatchTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.wifiMacAddresses!);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1Device--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser = 0;
api.GoogleAppsCloudidentityDevicesV1DeviceUser
    buildGoogleAppsCloudidentityDevicesV1DeviceUser() {
  final o = api.GoogleAppsCloudidentityDevicesV1DeviceUser();
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
    unittest.expect(
      o.compromisedState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstSyncTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastSyncTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.managementState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.passwordState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userAgent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser--;
}

core.List<api.GoogleAppsCloudidentityDevicesV1ClientState> buildUnnamed7() => [
      buildGoogleAppsCloudidentityDevicesV1ClientState(),
      buildGoogleAppsCloudidentityDevicesV1ClientState(),
    ];

void checkUnnamed7(
    core.List<api.GoogleAppsCloudidentityDevicesV1ClientState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1ClientState(o[0]);
  checkGoogleAppsCloudidentityDevicesV1ClientState(o[1]);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
    buildGoogleAppsCloudidentityDevicesV1ListClientStatesResponse() {
  final o = api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse <
      3) {
    o.clientStates = buildUnnamed7();
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
    checkUnnamed7(o.clientStates!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse--;
}

core.List<api.GoogleAppsCloudidentityDevicesV1DeviceUser> buildUnnamed8() => [
      buildGoogleAppsCloudidentityDevicesV1DeviceUser(),
      buildGoogleAppsCloudidentityDevicesV1DeviceUser(),
    ];

void checkUnnamed8(
    core.List<api.GoogleAppsCloudidentityDevicesV1DeviceUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1DeviceUser(o[0]);
  checkGoogleAppsCloudidentityDevicesV1DeviceUser(o[1]);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    buildGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse() {
  final o = api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse < 3) {
    o.deviceUsers = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse(
    api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse < 3) {
    checkUnnamed8(o.deviceUsers!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse--;
}

core.List<api.GoogleAppsCloudidentityDevicesV1Device> buildUnnamed9() => [
      buildGoogleAppsCloudidentityDevicesV1Device(),
      buildGoogleAppsCloudidentityDevicesV1Device(),
    ];

void checkUnnamed9(core.List<api.GoogleAppsCloudidentityDevicesV1Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1Device(o[0]);
  checkGoogleAppsCloudidentityDevicesV1Device(o[1]);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse = 0;
api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse
    buildGoogleAppsCloudidentityDevicesV1ListDevicesResponse() {
  final o = api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse < 3) {
    o.devices = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ListDevicesResponse(
    api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse < 3) {
    checkUnnamed9(o.devices!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata =
    0;
api.GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
    buildGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata() {
  final o = api.GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata();
  buildCounterGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata(
    api.GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata--;
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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

core.int
    buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    buildGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse() {
  final o = api.GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse <
      3) {
    o.customer = 'foo';
    o.names = buildUnnamed10();
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
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.names!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata =
    0;
api.GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
    buildGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata() {
  final o = api.GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata();
  buildCounterGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata(
    api.GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata o) {
  buildCounterGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata =
    0;
api.GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
    buildGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata() {
  final o = api.GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata();
  buildCounterGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata(
    api.GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata o) {
  buildCounterGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata <
      3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata = 0;
api.GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
    buildGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata() {
  final o = api.GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata();
  buildCounterGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata < 3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata(
    api.GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata o) {
  buildCounterGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata < 3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata = 0;
api.GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
    buildGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata() {
  final o = api.GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata();
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata < 3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata(
    api.GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata o) {
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata < 3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest = 0;
api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
    buildGoogleAppsCloudidentityDevicesV1WipeDeviceRequest() {
  final o = api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest();
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
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse = 0;
api.GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
    buildGoogleAppsCloudidentityDevicesV1WipeDeviceResponse() {
  final o = api.GoogleAppsCloudidentityDevicesV1WipeDeviceResponse();
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
    checkGoogleAppsCloudidentityDevicesV1Device(o.device!);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata = 0;
api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
    buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata() {
  final o = api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata();
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata < 3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata(
    api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata o) {
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata < 3) {}
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest = 0;
api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest() {
  final o = api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest();
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
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse = 0;
api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
    buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse() {
  final o = api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse();
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
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(o.deviceUser!);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse--;
}

core.Map<core.String, core.String> buildUnnamed11() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed11(core.Map<core.String, core.String> o) {
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

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  final o = api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.dynamicGroupMetadata = buildDynamicGroupMetadata();
    o.groupKey = buildEntityKey();
    o.labels = buildUnnamed11();
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkDynamicGroupMetadata(o.dynamicGroupMetadata!);
    checkEntityKey(o.groupKey!);
    checkUnnamed11(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroup--;
}

core.Map<core.String, core.String> buildUnnamed12() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed12(core.Map<core.String, core.String> o) {
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

core.List<api.TransitiveMembershipRole> buildUnnamed13() => [
      buildTransitiveMembershipRole(),
      buildTransitiveMembershipRole(),
    ];

void checkUnnamed13(core.List<api.TransitiveMembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitiveMembershipRole(o[0]);
  checkTransitiveMembershipRole(o[1]);
}

core.int buildCounterGroupRelation = 0;
api.GroupRelation buildGroupRelation() {
  final o = api.GroupRelation();
  buildCounterGroupRelation++;
  if (buildCounterGroupRelation < 3) {
    o.displayName = 'foo';
    o.group = 'foo';
    o.groupKey = buildEntityKey();
    o.labels = buildUnnamed12();
    o.relationType = 'foo';
    o.roles = buildUnnamed13();
  }
  buildCounterGroupRelation--;
  return o;
}

void checkGroupRelation(api.GroupRelation o) {
  buildCounterGroupRelation++;
  if (buildCounterGroupRelation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.group!,
      unittest.equals('foo'),
    );
    checkEntityKey(o.groupKey!);
    checkUnnamed12(o.labels!);
    unittest.expect(
      o.relationType!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.roles!);
  }
  buildCounterGroupRelation--;
}

core.List<api.Group> buildUnnamed14() => [
      buildGroup(),
      buildGroup(),
    ];

void checkUnnamed14(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterListGroupsResponse = 0;
api.ListGroupsResponse buildListGroupsResponse() {
  final o = api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.groups = buildUnnamed14();
    o.nextPageToken = 'foo';
  }
  buildCounterListGroupsResponse--;
  return o;
}

void checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkUnnamed14(o.groups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGroupsResponse--;
}

core.List<api.Membership> buildUnnamed15() => [
      buildMembership(),
      buildMembership(),
    ];

void checkUnnamed15(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0]);
  checkMembership(o[1]);
}

core.int buildCounterListMembershipsResponse = 0;
api.ListMembershipsResponse buildListMembershipsResponse() {
  final o = api.ListMembershipsResponse();
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    o.memberships = buildUnnamed15();
    o.nextPageToken = 'foo';
  }
  buildCounterListMembershipsResponse--;
  return o;
}

void checkListMembershipsResponse(api.ListMembershipsResponse o) {
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    checkUnnamed15(o.memberships!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListMembershipsResponse--;
}

core.int buildCounterLookupGroupNameResponse = 0;
api.LookupGroupNameResponse buildLookupGroupNameResponse() {
  final o = api.LookupGroupNameResponse();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLookupGroupNameResponse--;
}

core.int buildCounterLookupMembershipNameResponse = 0;
api.LookupMembershipNameResponse buildLookupMembershipNameResponse() {
  final o = api.LookupMembershipNameResponse();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLookupMembershipNameResponse--;
}

core.List<api.EntityKey> buildUnnamed16() => [
      buildEntityKey(),
      buildEntityKey(),
    ];

void checkUnnamed16(core.List<api.EntityKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityKey(o[0]);
  checkEntityKey(o[1]);
}

core.List<api.TransitiveMembershipRole> buildUnnamed17() => [
      buildTransitiveMembershipRole(),
      buildTransitiveMembershipRole(),
    ];

void checkUnnamed17(core.List<api.TransitiveMembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitiveMembershipRole(o[0]);
  checkTransitiveMembershipRole(o[1]);
}

core.int buildCounterMemberRelation = 0;
api.MemberRelation buildMemberRelation() {
  final o = api.MemberRelation();
  buildCounterMemberRelation++;
  if (buildCounterMemberRelation < 3) {
    o.member = 'foo';
    o.preferredMemberKey = buildUnnamed16();
    o.relationType = 'foo';
    o.roles = buildUnnamed17();
  }
  buildCounterMemberRelation--;
  return o;
}

void checkMemberRelation(api.MemberRelation o) {
  buildCounterMemberRelation++;
  if (buildCounterMemberRelation < 3) {
    unittest.expect(
      o.member!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.preferredMemberKey!);
    unittest.expect(
      o.relationType!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.roles!);
  }
  buildCounterMemberRelation--;
}

core.List<api.MembershipRole> buildUnnamed18() => [
      buildMembershipRole(),
      buildMembershipRole(),
    ];

void checkUnnamed18(core.List<api.MembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipRole(o[0]);
  checkMembershipRole(o[1]);
}

core.int buildCounterMembership = 0;
api.Membership buildMembership() {
  final o = api.Membership();
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.preferredMemberKey = buildEntityKey();
    o.roles = buildUnnamed18();
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMembership--;
  return o;
}

void checkMembership(api.Membership o) {
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkEntityKey(o.preferredMemberKey!);
    checkUnnamed18(o.roles!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMembership--;
}

core.List<api.Membership> buildUnnamed19() => [
      buildMembership(),
      buildMembership(),
    ];

void checkUnnamed19(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0]);
  checkMembership(o[1]);
}

core.int buildCounterMembershipAdjacencyList = 0;
api.MembershipAdjacencyList buildMembershipAdjacencyList() {
  final o = api.MembershipAdjacencyList();
  buildCounterMembershipAdjacencyList++;
  if (buildCounterMembershipAdjacencyList < 3) {
    o.edges = buildUnnamed19();
    o.group = 'foo';
  }
  buildCounterMembershipAdjacencyList--;
  return o;
}

void checkMembershipAdjacencyList(api.MembershipAdjacencyList o) {
  buildCounterMembershipAdjacencyList++;
  if (buildCounterMembershipAdjacencyList < 3) {
    checkUnnamed19(o.edges!);
    unittest.expect(
      o.group!,
      unittest.equals('foo'),
    );
  }
  buildCounterMembershipAdjacencyList--;
}

core.int buildCounterMembershipRole = 0;
api.MembershipRole buildMembershipRole() {
  final o = api.MembershipRole();
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
    checkExpiryDetail(o.expiryDetail!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterMembershipRole--;
}

core.List<api.MembershipRole> buildUnnamed20() => [
      buildMembershipRole(),
      buildMembershipRole(),
    ];

void checkUnnamed20(core.List<api.MembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipRole(o[0]);
  checkMembershipRole(o[1]);
}

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.List<api.UpdateMembershipRolesParams> buildUnnamed22() => [
      buildUpdateMembershipRolesParams(),
      buildUpdateMembershipRolesParams(),
    ];

void checkUnnamed22(core.List<api.UpdateMembershipRolesParams> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateMembershipRolesParams(o[0]);
  checkUpdateMembershipRolesParams(o[1]);
}

core.int buildCounterModifyMembershipRolesRequest = 0;
api.ModifyMembershipRolesRequest buildModifyMembershipRolesRequest() {
  final o = api.ModifyMembershipRolesRequest();
  buildCounterModifyMembershipRolesRequest++;
  if (buildCounterModifyMembershipRolesRequest < 3) {
    o.addRoles = buildUnnamed20();
    o.removeRoles = buildUnnamed21();
    o.updateRolesParams = buildUnnamed22();
  }
  buildCounterModifyMembershipRolesRequest--;
  return o;
}

void checkModifyMembershipRolesRequest(api.ModifyMembershipRolesRequest o) {
  buildCounterModifyMembershipRolesRequest++;
  if (buildCounterModifyMembershipRolesRequest < 3) {
    checkUnnamed20(o.addRoles!);
    checkUnnamed21(o.removeRoles!);
    checkUnnamed22(o.updateRolesParams!);
  }
  buildCounterModifyMembershipRolesRequest--;
}

core.int buildCounterModifyMembershipRolesResponse = 0;
api.ModifyMembershipRolesResponse buildModifyMembershipRolesResponse() {
  final o = api.ModifyMembershipRolesResponse();
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
    checkMembership(o.membership!);
  }
  buildCounterModifyMembershipRolesResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed23() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed23(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed24() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed24(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed23();
    o.name = 'foo';
    o.response = buildUnnamed24();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed23(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.Group> buildUnnamed25() => [
      buildGroup(),
      buildGroup(),
    ];

void checkUnnamed25(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterSearchGroupsResponse = 0;
api.SearchGroupsResponse buildSearchGroupsResponse() {
  final o = api.SearchGroupsResponse();
  buildCounterSearchGroupsResponse++;
  if (buildCounterSearchGroupsResponse < 3) {
    o.groups = buildUnnamed25();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchGroupsResponse--;
  return o;
}

void checkSearchGroupsResponse(api.SearchGroupsResponse o) {
  buildCounterSearchGroupsResponse++;
  if (buildCounterSearchGroupsResponse < 3) {
    checkUnnamed25(o.groups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchGroupsResponse--;
}

core.List<api.GroupRelation> buildUnnamed26() => [
      buildGroupRelation(),
      buildGroupRelation(),
    ];

void checkUnnamed26(core.List<api.GroupRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupRelation(o[0]);
  checkGroupRelation(o[1]);
}

core.int buildCounterSearchTransitiveGroupsResponse = 0;
api.SearchTransitiveGroupsResponse buildSearchTransitiveGroupsResponse() {
  final o = api.SearchTransitiveGroupsResponse();
  buildCounterSearchTransitiveGroupsResponse++;
  if (buildCounterSearchTransitiveGroupsResponse < 3) {
    o.memberships = buildUnnamed26();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchTransitiveGroupsResponse--;
  return o;
}

void checkSearchTransitiveGroupsResponse(api.SearchTransitiveGroupsResponse o) {
  buildCounterSearchTransitiveGroupsResponse++;
  if (buildCounterSearchTransitiveGroupsResponse < 3) {
    checkUnnamed26(o.memberships!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchTransitiveGroupsResponse--;
}

core.List<api.MemberRelation> buildUnnamed27() => [
      buildMemberRelation(),
      buildMemberRelation(),
    ];

void checkUnnamed27(core.List<api.MemberRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMemberRelation(o[0]);
  checkMemberRelation(o[1]);
}

core.int buildCounterSearchTransitiveMembershipsResponse = 0;
api.SearchTransitiveMembershipsResponse
    buildSearchTransitiveMembershipsResponse() {
  final o = api.SearchTransitiveMembershipsResponse();
  buildCounterSearchTransitiveMembershipsResponse++;
  if (buildCounterSearchTransitiveMembershipsResponse < 3) {
    o.memberships = buildUnnamed27();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchTransitiveMembershipsResponse--;
  return o;
}

void checkSearchTransitiveMembershipsResponse(
    api.SearchTransitiveMembershipsResponse o) {
  buildCounterSearchTransitiveMembershipsResponse++;
  if (buildCounterSearchTransitiveMembershipsResponse < 3) {
    checkUnnamed27(o.memberships!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchTransitiveMembershipsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed28() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed28(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed29() => [
      buildUnnamed28(),
      buildUnnamed28(),
    ];

void checkUnnamed29(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed28(o[0]);
  checkUnnamed28(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed29();
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
    checkUnnamed29(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTransitiveMembershipRole = 0;
api.TransitiveMembershipRole buildTransitiveMembershipRole() {
  final o = api.TransitiveMembershipRole();
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
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterTransitiveMembershipRole--;
}

core.int buildCounterUpdateGroupMetadata = 0;
api.UpdateGroupMetadata buildUpdateGroupMetadata() {
  final o = api.UpdateGroupMetadata();
  buildCounterUpdateGroupMetadata++;
  if (buildCounterUpdateGroupMetadata < 3) {}
  buildCounterUpdateGroupMetadata--;
  return o;
}

void checkUpdateGroupMetadata(api.UpdateGroupMetadata o) {
  buildCounterUpdateGroupMetadata++;
  if (buildCounterUpdateGroupMetadata < 3) {}
  buildCounterUpdateGroupMetadata--;
}

core.int buildCounterUpdateMembershipMetadata = 0;
api.UpdateMembershipMetadata buildUpdateMembershipMetadata() {
  final o = api.UpdateMembershipMetadata();
  buildCounterUpdateMembershipMetadata++;
  if (buildCounterUpdateMembershipMetadata < 3) {}
  buildCounterUpdateMembershipMetadata--;
  return o;
}

void checkUpdateMembershipMetadata(api.UpdateMembershipMetadata o) {
  buildCounterUpdateMembershipMetadata++;
  if (buildCounterUpdateMembershipMetadata < 3) {}
  buildCounterUpdateMembershipMetadata--;
}

core.int buildCounterUpdateMembershipRolesParams = 0;
api.UpdateMembershipRolesParams buildUpdateMembershipRolesParams() {
  final o = api.UpdateMembershipRolesParams();
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
    unittest.expect(
      o.fieldMask!,
      unittest.equals('foo'),
    );
    checkMembershipRole(o.membershipRole!);
  }
  buildCounterUpdateMembershipRolesParams--;
}

core.int buildCounterUserInvitation = 0;
api.UserInvitation buildUserInvitation() {
  final o = api.UserInvitation();
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
    unittest.expect(
      o.mailsSentCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserInvitation--;
}

void main() {
  unittest.group('obj-schema-CheckTransitiveMembershipResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckTransitiveMembershipResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckTransitiveMembershipResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCheckTransitiveMembershipResponse(od);
    });
  });

  unittest.group('obj-schema-CreateGroupMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateGroupMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateGroupMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateGroupMetadata(od);
    });
  });

  unittest.group('obj-schema-CreateMembershipMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateMembershipMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateMembershipMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateMembershipMetadata(od);
    });
  });

  unittest.group('obj-schema-DeleteGroupMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteGroupMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteGroupMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteGroupMetadata(od);
    });
  });

  unittest.group('obj-schema-DeleteMembershipMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteMembershipMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteMembershipMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteMembershipMetadata(od);
    });
  });

  unittest.group('obj-schema-DynamicGroupMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicGroupMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicGroupMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDynamicGroupMetadata(od);
    });
  });

  unittest.group('obj-schema-DynamicGroupQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicGroupQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicGroupQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDynamicGroupQuery(od);
    });
  });

  unittest.group('obj-schema-DynamicGroupStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicGroupStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicGroupStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDynamicGroupStatus(od);
    });
  });

  unittest.group('obj-schema-EntityKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EntityKey.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEntityKey(od);
    });
  });

  unittest.group('obj-schema-ExpiryDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpiryDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExpiryDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExpiryDetail(od);
    });
  });

  unittest.group('obj-schema-GetMembershipGraphMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetMembershipGraphMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetMembershipGraphMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetMembershipGraphMetadata(od);
    });
  });

  unittest.group('obj-schema-GetMembershipGraphResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetMembershipGraphResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetMembershipGraphResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetMembershipGraphResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1AndroidAttributes',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1AndroidAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1AndroidAttributes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1AndroidAttributes(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1ClientState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1ClientState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1ClientState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1ClientState(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CustomAttributeValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1Device', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1Device();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1Device.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1Device(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1DeviceUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1DeviceUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1DeviceUser(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ListClientStatesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1ListClientStatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1ListClientStatesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ListDevicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1ListDevicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1ListDevicesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1WipeDeviceResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Group.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-GroupRelation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupRelation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGroupRelation(od);
    });
  });

  unittest.group('obj-schema-ListGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMembershipsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMembershipsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMembershipsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMembershipsResponse(od);
    });
  });

  unittest.group('obj-schema-LookupGroupNameResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupGroupNameResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupGroupNameResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookupGroupNameResponse(od);
    });
  });

  unittest.group('obj-schema-LookupMembershipNameResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupMembershipNameResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupMembershipNameResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookupMembershipNameResponse(od);
    });
  });

  unittest.group('obj-schema-MemberRelation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemberRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MemberRelation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMemberRelation(od);
    });
  });

  unittest.group('obj-schema-Membership', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Membership.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMembership(od);
    });
  });

  unittest.group('obj-schema-MembershipAdjacencyList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipAdjacencyList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipAdjacencyList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipAdjacencyList(od);
    });
  });

  unittest.group('obj-schema-MembershipRole', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipRole.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipRole(od);
    });
  });

  unittest.group('obj-schema-ModifyMembershipRolesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyMembershipRolesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyMembershipRolesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyMembershipRolesRequest(od);
    });
  });

  unittest.group('obj-schema-ModifyMembershipRolesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyMembershipRolesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyMembershipRolesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyMembershipRolesResponse(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-SearchGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchTransitiveGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchTransitiveGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchTransitiveGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchTransitiveGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchTransitiveMembershipsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchTransitiveMembershipsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchTransitiveMembershipsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchTransitiveMembershipsResponse(od);
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

  unittest.group('obj-schema-TransitiveMembershipRole', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransitiveMembershipRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransitiveMembershipRole.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransitiveMembershipRole(od);
    });
  });

  unittest.group('obj-schema-UpdateGroupMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateGroupMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateGroupMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateGroupMetadata(od);
    });
  });

  unittest.group('obj-schema-UpdateMembershipMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateMembershipMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateMembershipMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateMembershipMetadata(od);
    });
  });

  unittest.group('obj-schema-UpdateMembershipRolesParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateMembershipRolesParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateMembershipRolesParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateMembershipRolesParams(od);
    });
  });

  unittest.group('obj-schema-UserInvitation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserInvitation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserInvitation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserInvitation(od);
    });
  });

  unittest.group('resource-DevicesResource', () {
    unittest.test('method--cancelWipe', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_request =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancelWipe(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_request = buildGoogleAppsCloudidentityDevicesV1Device();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAppsCloudidentityDevicesV1Device.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1Device(obj);

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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/devices'),
        );
        pathOffset += 10;

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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request,
          customer: arg_customer, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_name = 'foo';
      final arg_customer = 'foo';
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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          customer: arg_customer, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_name = 'foo';
      final arg_customer = 'foo';
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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAppsCloudidentityDevicesV1Device());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, customer: arg_customer, $fields: arg_$fields);
      checkGoogleAppsCloudidentityDevicesV1Device(
          response as api.GoogleAppsCloudidentityDevicesV1Device);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_customer = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/devices'),
        );
        pathOffset += 10;

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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAppsCloudidentityDevicesV1ListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          customer: arg_customer,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkGoogleAppsCloudidentityDevicesV1ListDevicesResponse(
          response as api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse);
    });

    unittest.test('method--wipe', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_request =
          buildGoogleAppsCloudidentityDevicesV1WipeDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1WipeDeviceRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.wipe(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-DevicesDeviceUsersResource', () {
    unittest.test('method--approve', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_request =
          buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.approve(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--block', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_request =
          buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.block(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--cancelWipe', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_request =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancelWipe(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_name = 'foo';
      final arg_customer = 'foo';
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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          customer: arg_customer, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_name = 'foo';
      final arg_customer = 'foo';
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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAppsCloudidentityDevicesV1DeviceUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, customer: arg_customer, $fields: arg_$fields);
      checkGoogleAppsCloudidentityDevicesV1DeviceUser(
          response as api.GoogleAppsCloudidentityDevicesV1DeviceUser);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_parent = 'foo';
      final arg_customer = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(
            buildGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          customer: arg_customer,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse(response
          as api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse);
    });

    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_parent = 'foo';
      final arg_androidId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_rawResourceId = 'foo';
      final arg_userId = 'foo';
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
          queryMap['androidId']!.first,
          unittest.equals(arg_androidId),
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
          queryMap['rawResourceId']!.first,
          unittest.equals(arg_rawResourceId),
        );
        unittest.expect(
          queryMap['userId']!.first,
          unittest.equals(arg_userId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lookup(arg_parent,
          androidId: arg_androidId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          rawResourceId: arg_rawResourceId,
          userId: arg_userId,
          $fields: arg_$fields);
      checkGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse(
          response as api
              .GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse);
    });

    unittest.test('method--wipe', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_request =
          buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.wipe(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-DevicesDeviceUsersClientStatesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers.clientStates;
      final arg_name = 'foo';
      final arg_customer = 'foo';
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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAppsCloudidentityDevicesV1ClientState());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, customer: arg_customer, $fields: arg_$fields);
      checkGoogleAppsCloudidentityDevicesV1ClientState(
          response as api.GoogleAppsCloudidentityDevicesV1ClientState);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers.clientStates;
      final arg_parent = 'foo';
      final arg_customer = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(
            buildGoogleAppsCloudidentityDevicesV1ListClientStatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          customer: arg_customer,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAppsCloudidentityDevicesV1ListClientStatesResponse(response
          as api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers.clientStates;
      final arg_request = buildGoogleAppsCloudidentityDevicesV1ClientState();
      final arg_name = 'foo';
      final arg_customer = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAppsCloudidentityDevicesV1ClientState.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1ClientState(obj);

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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          customer: arg_customer,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-GroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_request = buildGroup();
      final arg_initialGroupConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/groups'),
        );
        pathOffset += 9;

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
          queryMap['initialGroupConfig']!.first,
          unittest.equals(arg_initialGroupConfig),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request,
          initialGroupConfig: arg_initialGroupConfig, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
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
        final resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGroup(response as api.Group);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/groups'),
        );
        pathOffset += 9;

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
          queryMap['parent']!.first,
          unittest.equals(arg_parent),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          parent: arg_parent,
          view: arg_view,
          $fields: arg_$fields);
      checkListGroupsResponse(response as api.ListGroupsResponse);
    });

    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_groupKey_id = 'foo';
      final arg_groupKey_namespace = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/groups:lookup'),
        );
        pathOffset += 16;

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
          queryMap['groupKey.id']!.first,
          unittest.equals(arg_groupKey_id),
        );
        unittest.expect(
          queryMap['groupKey.namespace']!.first,
          unittest.equals(arg_groupKey_namespace),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLookupGroupNameResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lookup(
          groupKey_id: arg_groupKey_id,
          groupKey_namespace: arg_groupKey_namespace,
          $fields: arg_$fields);
      checkLookupGroupNameResponse(response as api.LookupGroupNameResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_request = buildGroup();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/groups:search'),
        );
        pathOffset += 16;

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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          view: arg_view,
          $fields: arg_$fields);
      checkSearchGroupsResponse(response as api.SearchGroupsResponse);
    });
  });

  unittest.group('resource-GroupsMembershipsResource', () {
    unittest.test('method--checkTransitiveMembership', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_parent = 'foo';
      final arg_query = 'foo';
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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildCheckTransitiveMembershipResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.checkTransitiveMembership(arg_parent,
          query: arg_query, $fields: arg_$fields);
      checkCheckTransitiveMembershipResponse(
          response as api.CheckTransitiveMembershipResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_request = buildMembership();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Membership.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMembership(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
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
        final resp = convert.json.encode(buildMembership());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMembership(response as api.Membership);
    });

    unittest.test('method--getMembershipGraph', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_parent = 'foo';
      final arg_query = 'foo';
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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getMembershipGraph(arg_parent,
          query: arg_query, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListMembershipsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListMembershipsResponse(response as api.ListMembershipsResponse);
    });

    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_parent = 'foo';
      final arg_memberKey_id = 'foo';
      final arg_memberKey_namespace = 'foo';
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
          queryMap['memberKey.id']!.first,
          unittest.equals(arg_memberKey_id),
        );
        unittest.expect(
          queryMap['memberKey.namespace']!.first,
          unittest.equals(arg_memberKey_namespace),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLookupMembershipNameResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lookup(arg_parent,
          memberKey_id: arg_memberKey_id,
          memberKey_namespace: arg_memberKey_namespace,
          $fields: arg_$fields);
      checkLookupMembershipNameResponse(
          response as api.LookupMembershipNameResponse);
    });

    unittest.test('method--modifyMembershipRoles', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_request = buildModifyMembershipRolesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ModifyMembershipRolesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyMembershipRolesRequest(obj);

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
        final resp = convert.json.encode(buildModifyMembershipRolesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.modifyMembershipRoles(arg_request, arg_name,
          $fields: arg_$fields);
      checkModifyMembershipRolesResponse(
          response as api.ModifyMembershipRolesResponse);
    });

    unittest.test('method--searchTransitiveGroups', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchTransitiveGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchTransitiveGroups(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          $fields: arg_$fields);
      checkSearchTransitiveGroupsResponse(
          response as api.SearchTransitiveGroupsResponse);
    });

    unittest.test('method--searchTransitiveMemberships', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
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
        final resp =
            convert.json.encode(buildSearchTransitiveMembershipsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchTransitiveMemberships(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSearchTransitiveMembershipsResponse(
          response as api.SearchTransitiveMembershipsResponse);
    });
  });
}
