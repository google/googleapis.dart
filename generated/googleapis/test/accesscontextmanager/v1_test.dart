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

import 'package:googleapis/accesscontextmanager/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccessLevel = 0;
api.AccessLevel buildAccessLevel() {
  final o = api.AccessLevel();
  buildCounterAccessLevel++;
  if (buildCounterAccessLevel < 3) {
    o.basic = buildBasicLevel();
    o.custom = buildCustomLevel();
    o.description = 'foo';
    o.name = 'foo';
    o.title = 'foo';
  }
  buildCounterAccessLevel--;
  return o;
}

void checkAccessLevel(api.AccessLevel o) {
  buildCounterAccessLevel++;
  if (buildCounterAccessLevel < 3) {
    checkBasicLevel(o.basic!);
    checkCustomLevel(o.custom!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccessLevel--;
}

core.int buildCounterAccessPolicy = 0;
api.AccessPolicy buildAccessPolicy() {
  final o = api.AccessPolicy();
  buildCounterAccessPolicy++;
  if (buildCounterAccessPolicy < 3) {
    o.etag = 'foo';
    o.name = 'foo';
    o.parent = 'foo';
    o.title = 'foo';
  }
  buildCounterAccessPolicy--;
  return o;
}

void checkAccessPolicy(api.AccessPolicy o) {
  buildCounterAccessPolicy++;
  if (buildCounterAccessPolicy < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccessPolicy--;
}

core.List<api.MethodSelector> buildUnnamed7369() {
  final o = <api.MethodSelector>[];
  o.add(buildMethodSelector());
  o.add(buildMethodSelector());
  return o;
}

void checkUnnamed7369(core.List<api.MethodSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMethodSelector(o[0]);
  checkMethodSelector(o[1]);
}

core.int buildCounterApiOperation = 0;
api.ApiOperation buildApiOperation() {
  final o = api.ApiOperation();
  buildCounterApiOperation++;
  if (buildCounterApiOperation < 3) {
    o.methodSelectors = buildUnnamed7369();
    o.serviceName = 'foo';
  }
  buildCounterApiOperation--;
  return o;
}

void checkApiOperation(api.ApiOperation o) {
  buildCounterApiOperation++;
  if (buildCounterApiOperation < 3) {
    checkUnnamed7369(o.methodSelectors!);
    unittest.expect(
      o.serviceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterApiOperation--;
}

core.List<api.Condition> buildUnnamed7370() {
  final o = <api.Condition>[];
  o.add(buildCondition());
  o.add(buildCondition());
  return o;
}

void checkUnnamed7370(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

core.int buildCounterBasicLevel = 0;
api.BasicLevel buildBasicLevel() {
  final o = api.BasicLevel();
  buildCounterBasicLevel++;
  if (buildCounterBasicLevel < 3) {
    o.combiningFunction = 'foo';
    o.conditions = buildUnnamed7370();
  }
  buildCounterBasicLevel--;
  return o;
}

void checkBasicLevel(api.BasicLevel o) {
  buildCounterBasicLevel++;
  if (buildCounterBasicLevel < 3) {
    unittest.expect(
      o.combiningFunction!,
      unittest.equals('foo'),
    );
    checkUnnamed7370(o.conditions!);
  }
  buildCounterBasicLevel--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterCommitServicePerimetersRequest = 0;
api.CommitServicePerimetersRequest buildCommitServicePerimetersRequest() {
  final o = api.CommitServicePerimetersRequest();
  buildCounterCommitServicePerimetersRequest++;
  if (buildCounterCommitServicePerimetersRequest < 3) {
    o.etag = 'foo';
  }
  buildCounterCommitServicePerimetersRequest--;
  return o;
}

void checkCommitServicePerimetersRequest(api.CommitServicePerimetersRequest o) {
  buildCounterCommitServicePerimetersRequest++;
  if (buildCounterCommitServicePerimetersRequest < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommitServicePerimetersRequest--;
}

core.List<api.ServicePerimeter> buildUnnamed7371() {
  final o = <api.ServicePerimeter>[];
  o.add(buildServicePerimeter());
  o.add(buildServicePerimeter());
  return o;
}

void checkUnnamed7371(core.List<api.ServicePerimeter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServicePerimeter(o[0]);
  checkServicePerimeter(o[1]);
}

core.int buildCounterCommitServicePerimetersResponse = 0;
api.CommitServicePerimetersResponse buildCommitServicePerimetersResponse() {
  final o = api.CommitServicePerimetersResponse();
  buildCounterCommitServicePerimetersResponse++;
  if (buildCounterCommitServicePerimetersResponse < 3) {
    o.servicePerimeters = buildUnnamed7371();
  }
  buildCounterCommitServicePerimetersResponse--;
  return o;
}

void checkCommitServicePerimetersResponse(
    api.CommitServicePerimetersResponse o) {
  buildCounterCommitServicePerimetersResponse++;
  if (buildCounterCommitServicePerimetersResponse < 3) {
    checkUnnamed7371(o.servicePerimeters!);
  }
  buildCounterCommitServicePerimetersResponse--;
}

core.List<core.String> buildUnnamed7372() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7372(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7373() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7373(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7374() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7374(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7375() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7375(core.List<core.String> o) {
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

core.int buildCounterCondition = 0;
api.Condition buildCondition() {
  final o = api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.devicePolicy = buildDevicePolicy();
    o.ipSubnetworks = buildUnnamed7372();
    o.members = buildUnnamed7373();
    o.negate = true;
    o.regions = buildUnnamed7374();
    o.requiredAccessLevels = buildUnnamed7375();
  }
  buildCounterCondition--;
  return o;
}

void checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    checkDevicePolicy(o.devicePolicy!);
    checkUnnamed7372(o.ipSubnetworks!);
    checkUnnamed7373(o.members!);
    unittest.expect(o.negate!, unittest.isTrue);
    checkUnnamed7374(o.regions!);
    checkUnnamed7375(o.requiredAccessLevels!);
  }
  buildCounterCondition--;
}

core.int buildCounterCustomLevel = 0;
api.CustomLevel buildCustomLevel() {
  final o = api.CustomLevel();
  buildCounterCustomLevel++;
  if (buildCounterCustomLevel < 3) {
    o.expr = buildExpr();
  }
  buildCounterCustomLevel--;
  return o;
}

void checkCustomLevel(api.CustomLevel o) {
  buildCounterCustomLevel++;
  if (buildCounterCustomLevel < 3) {
    checkExpr(o.expr!);
  }
  buildCounterCustomLevel--;
}

core.List<core.String> buildUnnamed7376() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7376(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7377() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7377(core.List<core.String> o) {
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

core.List<api.OsConstraint> buildUnnamed7378() {
  final o = <api.OsConstraint>[];
  o.add(buildOsConstraint());
  o.add(buildOsConstraint());
  return o;
}

void checkUnnamed7378(core.List<api.OsConstraint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOsConstraint(o[0]);
  checkOsConstraint(o[1]);
}

core.int buildCounterDevicePolicy = 0;
api.DevicePolicy buildDevicePolicy() {
  final o = api.DevicePolicy();
  buildCounterDevicePolicy++;
  if (buildCounterDevicePolicy < 3) {
    o.allowedDeviceManagementLevels = buildUnnamed7376();
    o.allowedEncryptionStatuses = buildUnnamed7377();
    o.osConstraints = buildUnnamed7378();
    o.requireAdminApproval = true;
    o.requireCorpOwned = true;
    o.requireScreenlock = true;
  }
  buildCounterDevicePolicy--;
  return o;
}

void checkDevicePolicy(api.DevicePolicy o) {
  buildCounterDevicePolicy++;
  if (buildCounterDevicePolicy < 3) {
    checkUnnamed7376(o.allowedDeviceManagementLevels!);
    checkUnnamed7377(o.allowedEncryptionStatuses!);
    checkUnnamed7378(o.osConstraints!);
    unittest.expect(o.requireAdminApproval!, unittest.isTrue);
    unittest.expect(o.requireCorpOwned!, unittest.isTrue);
    unittest.expect(o.requireScreenlock!, unittest.isTrue);
  }
  buildCounterDevicePolicy--;
}

core.List<core.String> buildUnnamed7379() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7379(core.List<core.String> o) {
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

core.int buildCounterEgressFrom = 0;
api.EgressFrom buildEgressFrom() {
  final o = api.EgressFrom();
  buildCounterEgressFrom++;
  if (buildCounterEgressFrom < 3) {
    o.identities = buildUnnamed7379();
    o.identityType = 'foo';
  }
  buildCounterEgressFrom--;
  return o;
}

void checkEgressFrom(api.EgressFrom o) {
  buildCounterEgressFrom++;
  if (buildCounterEgressFrom < 3) {
    checkUnnamed7379(o.identities!);
    unittest.expect(
      o.identityType!,
      unittest.equals('foo'),
    );
  }
  buildCounterEgressFrom--;
}

core.int buildCounterEgressPolicy = 0;
api.EgressPolicy buildEgressPolicy() {
  final o = api.EgressPolicy();
  buildCounterEgressPolicy++;
  if (buildCounterEgressPolicy < 3) {
    o.egressFrom = buildEgressFrom();
    o.egressTo = buildEgressTo();
  }
  buildCounterEgressPolicy--;
  return o;
}

void checkEgressPolicy(api.EgressPolicy o) {
  buildCounterEgressPolicy++;
  if (buildCounterEgressPolicy < 3) {
    checkEgressFrom(o.egressFrom!);
    checkEgressTo(o.egressTo!);
  }
  buildCounterEgressPolicy--;
}

core.List<api.ApiOperation> buildUnnamed7380() {
  final o = <api.ApiOperation>[];
  o.add(buildApiOperation());
  o.add(buildApiOperation());
  return o;
}

void checkUnnamed7380(core.List<api.ApiOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiOperation(o[0]);
  checkApiOperation(o[1]);
}

core.List<core.String> buildUnnamed7381() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7381(core.List<core.String> o) {
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

core.int buildCounterEgressTo = 0;
api.EgressTo buildEgressTo() {
  final o = api.EgressTo();
  buildCounterEgressTo++;
  if (buildCounterEgressTo < 3) {
    o.operations = buildUnnamed7380();
    o.resources = buildUnnamed7381();
  }
  buildCounterEgressTo--;
  return o;
}

void checkEgressTo(api.EgressTo o) {
  buildCounterEgressTo++;
  if (buildCounterEgressTo < 3) {
    checkUnnamed7380(o.operations!);
    checkUnnamed7381(o.resources!);
  }
  buildCounterEgressTo--;
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

core.List<core.String> buildUnnamed7382() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7382(core.List<core.String> o) {
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

core.int buildCounterGcpUserAccessBinding = 0;
api.GcpUserAccessBinding buildGcpUserAccessBinding() {
  final o = api.GcpUserAccessBinding();
  buildCounterGcpUserAccessBinding++;
  if (buildCounterGcpUserAccessBinding < 3) {
    o.accessLevels = buildUnnamed7382();
    o.groupKey = 'foo';
    o.name = 'foo';
  }
  buildCounterGcpUserAccessBinding--;
  return o;
}

void checkGcpUserAccessBinding(api.GcpUserAccessBinding o) {
  buildCounterGcpUserAccessBinding++;
  if (buildCounterGcpUserAccessBinding < 3) {
    checkUnnamed7382(o.accessLevels!);
    unittest.expect(
      o.groupKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcpUserAccessBinding--;
}

core.List<core.String> buildUnnamed7383() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7383(core.List<core.String> o) {
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

core.List<api.IngressSource> buildUnnamed7384() {
  final o = <api.IngressSource>[];
  o.add(buildIngressSource());
  o.add(buildIngressSource());
  return o;
}

void checkUnnamed7384(core.List<api.IngressSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIngressSource(o[0]);
  checkIngressSource(o[1]);
}

core.int buildCounterIngressFrom = 0;
api.IngressFrom buildIngressFrom() {
  final o = api.IngressFrom();
  buildCounterIngressFrom++;
  if (buildCounterIngressFrom < 3) {
    o.identities = buildUnnamed7383();
    o.identityType = 'foo';
    o.sources = buildUnnamed7384();
  }
  buildCounterIngressFrom--;
  return o;
}

void checkIngressFrom(api.IngressFrom o) {
  buildCounterIngressFrom++;
  if (buildCounterIngressFrom < 3) {
    checkUnnamed7383(o.identities!);
    unittest.expect(
      o.identityType!,
      unittest.equals('foo'),
    );
    checkUnnamed7384(o.sources!);
  }
  buildCounterIngressFrom--;
}

core.int buildCounterIngressPolicy = 0;
api.IngressPolicy buildIngressPolicy() {
  final o = api.IngressPolicy();
  buildCounterIngressPolicy++;
  if (buildCounterIngressPolicy < 3) {
    o.ingressFrom = buildIngressFrom();
    o.ingressTo = buildIngressTo();
  }
  buildCounterIngressPolicy--;
  return o;
}

void checkIngressPolicy(api.IngressPolicy o) {
  buildCounterIngressPolicy++;
  if (buildCounterIngressPolicy < 3) {
    checkIngressFrom(o.ingressFrom!);
    checkIngressTo(o.ingressTo!);
  }
  buildCounterIngressPolicy--;
}

core.int buildCounterIngressSource = 0;
api.IngressSource buildIngressSource() {
  final o = api.IngressSource();
  buildCounterIngressSource++;
  if (buildCounterIngressSource < 3) {
    o.accessLevel = 'foo';
    o.resource = 'foo';
  }
  buildCounterIngressSource--;
  return o;
}

void checkIngressSource(api.IngressSource o) {
  buildCounterIngressSource++;
  if (buildCounterIngressSource < 3) {
    unittest.expect(
      o.accessLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
  }
  buildCounterIngressSource--;
}

core.List<api.ApiOperation> buildUnnamed7385() {
  final o = <api.ApiOperation>[];
  o.add(buildApiOperation());
  o.add(buildApiOperation());
  return o;
}

void checkUnnamed7385(core.List<api.ApiOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiOperation(o[0]);
  checkApiOperation(o[1]);
}

core.List<core.String> buildUnnamed7386() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7386(core.List<core.String> o) {
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

core.int buildCounterIngressTo = 0;
api.IngressTo buildIngressTo() {
  final o = api.IngressTo();
  buildCounterIngressTo++;
  if (buildCounterIngressTo < 3) {
    o.operations = buildUnnamed7385();
    o.resources = buildUnnamed7386();
  }
  buildCounterIngressTo--;
  return o;
}

void checkIngressTo(api.IngressTo o) {
  buildCounterIngressTo++;
  if (buildCounterIngressTo < 3) {
    checkUnnamed7385(o.operations!);
    checkUnnamed7386(o.resources!);
  }
  buildCounterIngressTo--;
}

core.List<api.AccessLevel> buildUnnamed7387() {
  final o = <api.AccessLevel>[];
  o.add(buildAccessLevel());
  o.add(buildAccessLevel());
  return o;
}

void checkUnnamed7387(core.List<api.AccessLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessLevel(o[0]);
  checkAccessLevel(o[1]);
}

core.int buildCounterListAccessLevelsResponse = 0;
api.ListAccessLevelsResponse buildListAccessLevelsResponse() {
  final o = api.ListAccessLevelsResponse();
  buildCounterListAccessLevelsResponse++;
  if (buildCounterListAccessLevelsResponse < 3) {
    o.accessLevels = buildUnnamed7387();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccessLevelsResponse--;
  return o;
}

void checkListAccessLevelsResponse(api.ListAccessLevelsResponse o) {
  buildCounterListAccessLevelsResponse++;
  if (buildCounterListAccessLevelsResponse < 3) {
    checkUnnamed7387(o.accessLevels!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAccessLevelsResponse--;
}

core.List<api.AccessPolicy> buildUnnamed7388() {
  final o = <api.AccessPolicy>[];
  o.add(buildAccessPolicy());
  o.add(buildAccessPolicy());
  return o;
}

void checkUnnamed7388(core.List<api.AccessPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessPolicy(o[0]);
  checkAccessPolicy(o[1]);
}

core.int buildCounterListAccessPoliciesResponse = 0;
api.ListAccessPoliciesResponse buildListAccessPoliciesResponse() {
  final o = api.ListAccessPoliciesResponse();
  buildCounterListAccessPoliciesResponse++;
  if (buildCounterListAccessPoliciesResponse < 3) {
    o.accessPolicies = buildUnnamed7388();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccessPoliciesResponse--;
  return o;
}

void checkListAccessPoliciesResponse(api.ListAccessPoliciesResponse o) {
  buildCounterListAccessPoliciesResponse++;
  if (buildCounterListAccessPoliciesResponse < 3) {
    checkUnnamed7388(o.accessPolicies!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAccessPoliciesResponse--;
}

core.List<api.GcpUserAccessBinding> buildUnnamed7389() {
  final o = <api.GcpUserAccessBinding>[];
  o.add(buildGcpUserAccessBinding());
  o.add(buildGcpUserAccessBinding());
  return o;
}

void checkUnnamed7389(core.List<api.GcpUserAccessBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGcpUserAccessBinding(o[0]);
  checkGcpUserAccessBinding(o[1]);
}

core.int buildCounterListGcpUserAccessBindingsResponse = 0;
api.ListGcpUserAccessBindingsResponse buildListGcpUserAccessBindingsResponse() {
  final o = api.ListGcpUserAccessBindingsResponse();
  buildCounterListGcpUserAccessBindingsResponse++;
  if (buildCounterListGcpUserAccessBindingsResponse < 3) {
    o.gcpUserAccessBindings = buildUnnamed7389();
    o.nextPageToken = 'foo';
  }
  buildCounterListGcpUserAccessBindingsResponse--;
  return o;
}

void checkListGcpUserAccessBindingsResponse(
    api.ListGcpUserAccessBindingsResponse o) {
  buildCounterListGcpUserAccessBindingsResponse++;
  if (buildCounterListGcpUserAccessBindingsResponse < 3) {
    checkUnnamed7389(o.gcpUserAccessBindings!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGcpUserAccessBindingsResponse--;
}

core.List<api.Operation> buildUnnamed7390() {
  final o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed7390(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed7390();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7390(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.ServicePerimeter> buildUnnamed7391() {
  final o = <api.ServicePerimeter>[];
  o.add(buildServicePerimeter());
  o.add(buildServicePerimeter());
  return o;
}

void checkUnnamed7391(core.List<api.ServicePerimeter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServicePerimeter(o[0]);
  checkServicePerimeter(o[1]);
}

core.int buildCounterListServicePerimetersResponse = 0;
api.ListServicePerimetersResponse buildListServicePerimetersResponse() {
  final o = api.ListServicePerimetersResponse();
  buildCounterListServicePerimetersResponse++;
  if (buildCounterListServicePerimetersResponse < 3) {
    o.nextPageToken = 'foo';
    o.servicePerimeters = buildUnnamed7391();
  }
  buildCounterListServicePerimetersResponse--;
  return o;
}

void checkListServicePerimetersResponse(api.ListServicePerimetersResponse o) {
  buildCounterListServicePerimetersResponse++;
  if (buildCounterListServicePerimetersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7391(o.servicePerimeters!);
  }
  buildCounterListServicePerimetersResponse--;
}

core.int buildCounterMethodSelector = 0;
api.MethodSelector buildMethodSelector() {
  final o = api.MethodSelector();
  buildCounterMethodSelector++;
  if (buildCounterMethodSelector < 3) {
    o.method = 'foo';
    o.permission = 'foo';
  }
  buildCounterMethodSelector--;
  return o;
}

void checkMethodSelector(api.MethodSelector o) {
  buildCounterMethodSelector++;
  if (buildCounterMethodSelector < 3) {
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permission!,
      unittest.equals('foo'),
    );
  }
  buildCounterMethodSelector--;
}

core.Map<core.String, core.Object> buildUnnamed7392() {
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

void checkUnnamed7392(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed7393() {
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

void checkUnnamed7393(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed7392();
    o.name = 'foo';
    o.response = buildUnnamed7393();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed7392(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7393(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOsConstraint = 0;
api.OsConstraint buildOsConstraint() {
  final o = api.OsConstraint();
  buildCounterOsConstraint++;
  if (buildCounterOsConstraint < 3) {
    o.minimumVersion = 'foo';
    o.osType = 'foo';
    o.requireVerifiedChromeOs = true;
  }
  buildCounterOsConstraint--;
  return o;
}

void checkOsConstraint(api.OsConstraint o) {
  buildCounterOsConstraint++;
  if (buildCounterOsConstraint < 3) {
    unittest.expect(
      o.minimumVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requireVerifiedChromeOs!, unittest.isTrue);
  }
  buildCounterOsConstraint--;
}

core.List<api.AccessLevel> buildUnnamed7394() {
  final o = <api.AccessLevel>[];
  o.add(buildAccessLevel());
  o.add(buildAccessLevel());
  return o;
}

void checkUnnamed7394(core.List<api.AccessLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessLevel(o[0]);
  checkAccessLevel(o[1]);
}

core.int buildCounterReplaceAccessLevelsRequest = 0;
api.ReplaceAccessLevelsRequest buildReplaceAccessLevelsRequest() {
  final o = api.ReplaceAccessLevelsRequest();
  buildCounterReplaceAccessLevelsRequest++;
  if (buildCounterReplaceAccessLevelsRequest < 3) {
    o.accessLevels = buildUnnamed7394();
    o.etag = 'foo';
  }
  buildCounterReplaceAccessLevelsRequest--;
  return o;
}

void checkReplaceAccessLevelsRequest(api.ReplaceAccessLevelsRequest o) {
  buildCounterReplaceAccessLevelsRequest++;
  if (buildCounterReplaceAccessLevelsRequest < 3) {
    checkUnnamed7394(o.accessLevels!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
  }
  buildCounterReplaceAccessLevelsRequest--;
}

core.List<api.AccessLevel> buildUnnamed7395() {
  final o = <api.AccessLevel>[];
  o.add(buildAccessLevel());
  o.add(buildAccessLevel());
  return o;
}

void checkUnnamed7395(core.List<api.AccessLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessLevel(o[0]);
  checkAccessLevel(o[1]);
}

core.int buildCounterReplaceAccessLevelsResponse = 0;
api.ReplaceAccessLevelsResponse buildReplaceAccessLevelsResponse() {
  final o = api.ReplaceAccessLevelsResponse();
  buildCounterReplaceAccessLevelsResponse++;
  if (buildCounterReplaceAccessLevelsResponse < 3) {
    o.accessLevels = buildUnnamed7395();
  }
  buildCounterReplaceAccessLevelsResponse--;
  return o;
}

void checkReplaceAccessLevelsResponse(api.ReplaceAccessLevelsResponse o) {
  buildCounterReplaceAccessLevelsResponse++;
  if (buildCounterReplaceAccessLevelsResponse < 3) {
    checkUnnamed7395(o.accessLevels!);
  }
  buildCounterReplaceAccessLevelsResponse--;
}

core.List<api.ServicePerimeter> buildUnnamed7396() {
  final o = <api.ServicePerimeter>[];
  o.add(buildServicePerimeter());
  o.add(buildServicePerimeter());
  return o;
}

void checkUnnamed7396(core.List<api.ServicePerimeter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServicePerimeter(o[0]);
  checkServicePerimeter(o[1]);
}

core.int buildCounterReplaceServicePerimetersRequest = 0;
api.ReplaceServicePerimetersRequest buildReplaceServicePerimetersRequest() {
  final o = api.ReplaceServicePerimetersRequest();
  buildCounterReplaceServicePerimetersRequest++;
  if (buildCounterReplaceServicePerimetersRequest < 3) {
    o.etag = 'foo';
    o.servicePerimeters = buildUnnamed7396();
  }
  buildCounterReplaceServicePerimetersRequest--;
  return o;
}

void checkReplaceServicePerimetersRequest(
    api.ReplaceServicePerimetersRequest o) {
  buildCounterReplaceServicePerimetersRequest++;
  if (buildCounterReplaceServicePerimetersRequest < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed7396(o.servicePerimeters!);
  }
  buildCounterReplaceServicePerimetersRequest--;
}

core.List<api.ServicePerimeter> buildUnnamed7397() {
  final o = <api.ServicePerimeter>[];
  o.add(buildServicePerimeter());
  o.add(buildServicePerimeter());
  return o;
}

void checkUnnamed7397(core.List<api.ServicePerimeter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServicePerimeter(o[0]);
  checkServicePerimeter(o[1]);
}

core.int buildCounterReplaceServicePerimetersResponse = 0;
api.ReplaceServicePerimetersResponse buildReplaceServicePerimetersResponse() {
  final o = api.ReplaceServicePerimetersResponse();
  buildCounterReplaceServicePerimetersResponse++;
  if (buildCounterReplaceServicePerimetersResponse < 3) {
    o.servicePerimeters = buildUnnamed7397();
  }
  buildCounterReplaceServicePerimetersResponse--;
  return o;
}

void checkReplaceServicePerimetersResponse(
    api.ReplaceServicePerimetersResponse o) {
  buildCounterReplaceServicePerimetersResponse++;
  if (buildCounterReplaceServicePerimetersResponse < 3) {
    checkUnnamed7397(o.servicePerimeters!);
  }
  buildCounterReplaceServicePerimetersResponse--;
}

core.int buildCounterServicePerimeter = 0;
api.ServicePerimeter buildServicePerimeter() {
  final o = api.ServicePerimeter();
  buildCounterServicePerimeter++;
  if (buildCounterServicePerimeter < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.perimeterType = 'foo';
    o.spec = buildServicePerimeterConfig();
    o.status = buildServicePerimeterConfig();
    o.title = 'foo';
    o.useExplicitDryRunSpec = true;
  }
  buildCounterServicePerimeter--;
  return o;
}

void checkServicePerimeter(api.ServicePerimeter o) {
  buildCounterServicePerimeter++;
  if (buildCounterServicePerimeter < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.perimeterType!,
      unittest.equals('foo'),
    );
    checkServicePerimeterConfig(o.spec!);
    checkServicePerimeterConfig(o.status!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useExplicitDryRunSpec!, unittest.isTrue);
  }
  buildCounterServicePerimeter--;
}

core.List<core.String> buildUnnamed7398() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7398(core.List<core.String> o) {
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

core.List<api.EgressPolicy> buildUnnamed7399() {
  final o = <api.EgressPolicy>[];
  o.add(buildEgressPolicy());
  o.add(buildEgressPolicy());
  return o;
}

void checkUnnamed7399(core.List<api.EgressPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEgressPolicy(o[0]);
  checkEgressPolicy(o[1]);
}

core.List<api.IngressPolicy> buildUnnamed7400() {
  final o = <api.IngressPolicy>[];
  o.add(buildIngressPolicy());
  o.add(buildIngressPolicy());
  return o;
}

void checkUnnamed7400(core.List<api.IngressPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIngressPolicy(o[0]);
  checkIngressPolicy(o[1]);
}

core.List<core.String> buildUnnamed7401() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7401(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7402() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7402(core.List<core.String> o) {
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

core.int buildCounterServicePerimeterConfig = 0;
api.ServicePerimeterConfig buildServicePerimeterConfig() {
  final o = api.ServicePerimeterConfig();
  buildCounterServicePerimeterConfig++;
  if (buildCounterServicePerimeterConfig < 3) {
    o.accessLevels = buildUnnamed7398();
    o.egressPolicies = buildUnnamed7399();
    o.ingressPolicies = buildUnnamed7400();
    o.resources = buildUnnamed7401();
    o.restrictedServices = buildUnnamed7402();
    o.vpcAccessibleServices = buildVpcAccessibleServices();
  }
  buildCounterServicePerimeterConfig--;
  return o;
}

void checkServicePerimeterConfig(api.ServicePerimeterConfig o) {
  buildCounterServicePerimeterConfig++;
  if (buildCounterServicePerimeterConfig < 3) {
    checkUnnamed7398(o.accessLevels!);
    checkUnnamed7399(o.egressPolicies!);
    checkUnnamed7400(o.ingressPolicies!);
    checkUnnamed7401(o.resources!);
    checkUnnamed7402(o.restrictedServices!);
    checkVpcAccessibleServices(o.vpcAccessibleServices!);
  }
  buildCounterServicePerimeterConfig--;
}

core.Map<core.String, core.Object> buildUnnamed7403() {
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

void checkUnnamed7403(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed7404() {
  final o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7403());
  o.add(buildUnnamed7403());
  return o;
}

void checkUnnamed7404(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7403(o[0]);
  checkUnnamed7403(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7404();
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
    checkUnnamed7404(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed7405() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7405(core.List<core.String> o) {
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

core.int buildCounterVpcAccessibleServices = 0;
api.VpcAccessibleServices buildVpcAccessibleServices() {
  final o = api.VpcAccessibleServices();
  buildCounterVpcAccessibleServices++;
  if (buildCounterVpcAccessibleServices < 3) {
    o.allowedServices = buildUnnamed7405();
    o.enableRestriction = true;
  }
  buildCounterVpcAccessibleServices--;
  return o;
}

void checkVpcAccessibleServices(api.VpcAccessibleServices o) {
  buildCounterVpcAccessibleServices++;
  if (buildCounterVpcAccessibleServices < 3) {
    checkUnnamed7405(o.allowedServices!);
    unittest.expect(o.enableRestriction!, unittest.isTrue);
  }
  buildCounterVpcAccessibleServices--;
}

void main() {
  unittest.group('obj-schema-AccessLevel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessLevel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccessLevel(od);
    });
  });

  unittest.group('obj-schema-AccessPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccessPolicy(od);
    });
  });

  unittest.group('obj-schema-ApiOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApiOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApiOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApiOperation(od);
    });
  });

  unittest.group('obj-schema-BasicLevel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BasicLevel.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBasicLevel(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-CommitServicePerimetersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitServicePerimetersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitServicePerimetersRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommitServicePerimetersRequest(od);
    });
  });

  unittest.group('obj-schema-CommitServicePerimetersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitServicePerimetersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitServicePerimetersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommitServicePerimetersResponse(od);
    });
  });

  unittest.group('obj-schema-Condition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Condition.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCondition(od);
    });
  });

  unittest.group('obj-schema-CustomLevel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomLevel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomLevel(od);
    });
  });

  unittest.group('obj-schema-DevicePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDevicePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DevicePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDevicePolicy(od);
    });
  });

  unittest.group('obj-schema-EgressFrom', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEgressFrom();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EgressFrom.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEgressFrom(od);
    });
  });

  unittest.group('obj-schema-EgressPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEgressPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EgressPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEgressPolicy(od);
    });
  });

  unittest.group('obj-schema-EgressTo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEgressTo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EgressTo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEgressTo(od);
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

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-GcpUserAccessBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcpUserAccessBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcpUserAccessBinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcpUserAccessBinding(od);
    });
  });

  unittest.group('obj-schema-IngressFrom', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngressFrom();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngressFrom.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIngressFrom(od);
    });
  });

  unittest.group('obj-schema-IngressPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngressPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngressPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIngressPolicy(od);
    });
  });

  unittest.group('obj-schema-IngressSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngressSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngressSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIngressSource(od);
    });
  });

  unittest.group('obj-schema-IngressTo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngressTo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IngressTo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIngressTo(od);
    });
  });

  unittest.group('obj-schema-ListAccessLevelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccessLevelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccessLevelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAccessLevelsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAccessPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccessPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccessPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAccessPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGcpUserAccessBindingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGcpUserAccessBindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGcpUserAccessBindingsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGcpUserAccessBindingsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListServicePerimetersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServicePerimetersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServicePerimetersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListServicePerimetersResponse(od);
    });
  });

  unittest.group('obj-schema-MethodSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMethodSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MethodSelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMethodSelector(od);
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

  unittest.group('obj-schema-OsConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOsConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OsConstraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOsConstraint(od);
    });
  });

  unittest.group('obj-schema-ReplaceAccessLevelsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceAccessLevelsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceAccessLevelsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplaceAccessLevelsRequest(od);
    });
  });

  unittest.group('obj-schema-ReplaceAccessLevelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceAccessLevelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceAccessLevelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplaceAccessLevelsResponse(od);
    });
  });

  unittest.group('obj-schema-ReplaceServicePerimetersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceServicePerimetersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceServicePerimetersRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplaceServicePerimetersRequest(od);
    });
  });

  unittest.group('obj-schema-ReplaceServicePerimetersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceServicePerimetersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceServicePerimetersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplaceServicePerimetersResponse(od);
    });
  });

  unittest.group('obj-schema-ServicePerimeter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServicePerimeter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServicePerimeter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServicePerimeter(od);
    });
  });

  unittest.group('obj-schema-ServicePerimeterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServicePerimeterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServicePerimeterConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServicePerimeterConfig(od);
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

  unittest.group('obj-schema-VpcAccessibleServices', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVpcAccessibleServices();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VpcAccessibleServices.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVpcAccessibleServices(od);
    });
  });

  unittest.group('resource-AccessPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies;
      final arg_request = buildAccessPolicy();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccessPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccessPolicy(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1/accessPolicies'),
        );
        pathOffset += 17;

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
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies;
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
      final res = api.AccessContextManagerApi(mock).accessPolicies;
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
        final resp = convert.json.encode(buildAccessPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAccessPolicy(response as api.AccessPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1/accessPolicies'),
        );
        pathOffset += 17;

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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListAccessPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          parent: arg_parent,
          $fields: arg_$fields);
      checkListAccessPoliciesResponse(
          response as api.ListAccessPoliciesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies;
      final arg_request = buildAccessPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccessPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccessPolicy(obj);

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
  });

  unittest.group('resource-AccessPoliciesAccessLevelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      final arg_request = buildAccessLevel();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccessLevel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccessLevel(obj);

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
      final res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
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
      final res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      final arg_name = 'foo';
      final arg_accessLevelFormat = 'foo';
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
          queryMap['accessLevelFormat']!.first,
          unittest.equals(arg_accessLevelFormat),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccessLevel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          accessLevelFormat: arg_accessLevelFormat, $fields: arg_$fields);
      checkAccessLevel(response as api.AccessLevel);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      final arg_parent = 'foo';
      final arg_accessLevelFormat = 'foo';
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
          queryMap['accessLevelFormat']!.first,
          unittest.equals(arg_accessLevelFormat),
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
        final resp = convert.json.encode(buildListAccessLevelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          accessLevelFormat: arg_accessLevelFormat,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAccessLevelsResponse(response as api.ListAccessLevelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      final arg_request = buildAccessLevel();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccessLevel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccessLevel(obj);

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

    unittest.test('method--replaceAll', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      final arg_request = buildReplaceAccessLevelsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReplaceAccessLevelsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReplaceAccessLevelsRequest(obj);

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
          await res.replaceAll(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-AccessPoliciesServicePerimetersResource', () {
    unittest.test('method--commit', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
      final arg_request = buildCommitServicePerimetersRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CommitServicePerimetersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCommitServicePerimetersRequest(obj);

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
          await res.commit(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
      final arg_request = buildServicePerimeter();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ServicePerimeter.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServicePerimeter(obj);

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
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
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
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
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
        final resp = convert.json.encode(buildServicePerimeter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkServicePerimeter(response as api.ServicePerimeter);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
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
        final resp = convert.json.encode(buildListServicePerimetersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListServicePerimetersResponse(
          response as api.ListServicePerimetersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
      final arg_request = buildServicePerimeter();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ServicePerimeter.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServicePerimeter(obj);

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

    unittest.test('method--replaceAll', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
      final arg_request = buildReplaceServicePerimetersRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReplaceServicePerimetersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReplaceServicePerimetersRequest(obj);

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
          await res.replaceAll(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

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
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).operations;
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
      final res = api.AccessContextManagerApi(mock).operations;
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
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
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
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-OrganizationsGcpUserAccessBindingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).organizations.gcpUserAccessBindings;
      final arg_request = buildGcpUserAccessBinding();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GcpUserAccessBinding.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGcpUserAccessBinding(obj);

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
      final res =
          api.AccessContextManagerApi(mock).organizations.gcpUserAccessBindings;
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
      final res =
          api.AccessContextManagerApi(mock).organizations.gcpUserAccessBindings;
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
        final resp = convert.json.encode(buildGcpUserAccessBinding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGcpUserAccessBinding(response as api.GcpUserAccessBinding);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).organizations.gcpUserAccessBindings;
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
            convert.json.encode(buildListGcpUserAccessBindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGcpUserAccessBindingsResponse(
          response as api.ListGcpUserAccessBindingsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).organizations.gcpUserAccessBindings;
      final arg_request = buildGcpUserAccessBinding();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GcpUserAccessBinding.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGcpUserAccessBinding(obj);

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
  });
}
