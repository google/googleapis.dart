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
import 'package:googleapis/accesscontextmanager/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAccessLevel = 0;
api.AccessLevel buildAccessLevel() {
  var o = api.AccessLevel();
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
    checkBasicLevel(o.basic as api.BasicLevel);
    checkCustomLevel(o.custom as api.CustomLevel);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterAccessLevel--;
}

core.int buildCounterAccessPolicy = 0;
api.AccessPolicy buildAccessPolicy() {
  var o = api.AccessPolicy();
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
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterAccessPolicy--;
}

core.List<api.MethodSelector> buildUnnamed6338() {
  var o = <api.MethodSelector>[];
  o.add(buildMethodSelector());
  o.add(buildMethodSelector());
  return o;
}

void checkUnnamed6338(core.List<api.MethodSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMethodSelector(o[0] as api.MethodSelector);
  checkMethodSelector(o[1] as api.MethodSelector);
}

core.int buildCounterApiOperation = 0;
api.ApiOperation buildApiOperation() {
  var o = api.ApiOperation();
  buildCounterApiOperation++;
  if (buildCounterApiOperation < 3) {
    o.methodSelectors = buildUnnamed6338();
    o.serviceName = 'foo';
  }
  buildCounterApiOperation--;
  return o;
}

void checkApiOperation(api.ApiOperation o) {
  buildCounterApiOperation++;
  if (buildCounterApiOperation < 3) {
    checkUnnamed6338(o.methodSelectors);
    unittest.expect(o.serviceName, unittest.equals('foo'));
  }
  buildCounterApiOperation--;
}

core.List<api.Condition> buildUnnamed6339() {
  var o = <api.Condition>[];
  o.add(buildCondition());
  o.add(buildCondition());
  return o;
}

void checkUnnamed6339(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0] as api.Condition);
  checkCondition(o[1] as api.Condition);
}

core.int buildCounterBasicLevel = 0;
api.BasicLevel buildBasicLevel() {
  var o = api.BasicLevel();
  buildCounterBasicLevel++;
  if (buildCounterBasicLevel < 3) {
    o.combiningFunction = 'foo';
    o.conditions = buildUnnamed6339();
  }
  buildCounterBasicLevel--;
  return o;
}

void checkBasicLevel(api.BasicLevel o) {
  buildCounterBasicLevel++;
  if (buildCounterBasicLevel < 3) {
    unittest.expect(o.combiningFunction, unittest.equals('foo'));
    checkUnnamed6339(o.conditions);
  }
  buildCounterBasicLevel--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  var o = api.CancelOperationRequest();
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
  var o = api.CommitServicePerimetersRequest();
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
    unittest.expect(o.etag, unittest.equals('foo'));
  }
  buildCounterCommitServicePerimetersRequest--;
}

core.List<api.ServicePerimeter> buildUnnamed6340() {
  var o = <api.ServicePerimeter>[];
  o.add(buildServicePerimeter());
  o.add(buildServicePerimeter());
  return o;
}

void checkUnnamed6340(core.List<api.ServicePerimeter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServicePerimeter(o[0] as api.ServicePerimeter);
  checkServicePerimeter(o[1] as api.ServicePerimeter);
}

core.int buildCounterCommitServicePerimetersResponse = 0;
api.CommitServicePerimetersResponse buildCommitServicePerimetersResponse() {
  var o = api.CommitServicePerimetersResponse();
  buildCounterCommitServicePerimetersResponse++;
  if (buildCounterCommitServicePerimetersResponse < 3) {
    o.servicePerimeters = buildUnnamed6340();
  }
  buildCounterCommitServicePerimetersResponse--;
  return o;
}

void checkCommitServicePerimetersResponse(
    api.CommitServicePerimetersResponse o) {
  buildCounterCommitServicePerimetersResponse++;
  if (buildCounterCommitServicePerimetersResponse < 3) {
    checkUnnamed6340(o.servicePerimeters);
  }
  buildCounterCommitServicePerimetersResponse--;
}

core.List<core.String> buildUnnamed6341() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6341(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6342() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6342(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6343() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6343(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6344() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6344(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCondition = 0;
api.Condition buildCondition() {
  var o = api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.devicePolicy = buildDevicePolicy();
    o.ipSubnetworks = buildUnnamed6341();
    o.members = buildUnnamed6342();
    o.negate = true;
    o.regions = buildUnnamed6343();
    o.requiredAccessLevels = buildUnnamed6344();
  }
  buildCounterCondition--;
  return o;
}

void checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    checkDevicePolicy(o.devicePolicy as api.DevicePolicy);
    checkUnnamed6341(o.ipSubnetworks);
    checkUnnamed6342(o.members);
    unittest.expect(o.negate, unittest.isTrue);
    checkUnnamed6343(o.regions);
    checkUnnamed6344(o.requiredAccessLevels);
  }
  buildCounterCondition--;
}

core.int buildCounterCustomLevel = 0;
api.CustomLevel buildCustomLevel() {
  var o = api.CustomLevel();
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
    checkExpr(o.expr as api.Expr);
  }
  buildCounterCustomLevel--;
}

core.List<core.String> buildUnnamed6345() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6345(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6346() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6346(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.OsConstraint> buildUnnamed6347() {
  var o = <api.OsConstraint>[];
  o.add(buildOsConstraint());
  o.add(buildOsConstraint());
  return o;
}

void checkUnnamed6347(core.List<api.OsConstraint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOsConstraint(o[0] as api.OsConstraint);
  checkOsConstraint(o[1] as api.OsConstraint);
}

core.int buildCounterDevicePolicy = 0;
api.DevicePolicy buildDevicePolicy() {
  var o = api.DevicePolicy();
  buildCounterDevicePolicy++;
  if (buildCounterDevicePolicy < 3) {
    o.allowedDeviceManagementLevels = buildUnnamed6345();
    o.allowedEncryptionStatuses = buildUnnamed6346();
    o.osConstraints = buildUnnamed6347();
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
    checkUnnamed6345(o.allowedDeviceManagementLevels);
    checkUnnamed6346(o.allowedEncryptionStatuses);
    checkUnnamed6347(o.osConstraints);
    unittest.expect(o.requireAdminApproval, unittest.isTrue);
    unittest.expect(o.requireCorpOwned, unittest.isTrue);
    unittest.expect(o.requireScreenlock, unittest.isTrue);
  }
  buildCounterDevicePolicy--;
}

core.List<core.String> buildUnnamed6348() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6348(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEgressFrom = 0;
api.EgressFrom buildEgressFrom() {
  var o = api.EgressFrom();
  buildCounterEgressFrom++;
  if (buildCounterEgressFrom < 3) {
    o.identities = buildUnnamed6348();
    o.identityType = 'foo';
  }
  buildCounterEgressFrom--;
  return o;
}

void checkEgressFrom(api.EgressFrom o) {
  buildCounterEgressFrom++;
  if (buildCounterEgressFrom < 3) {
    checkUnnamed6348(o.identities);
    unittest.expect(o.identityType, unittest.equals('foo'));
  }
  buildCounterEgressFrom--;
}

core.int buildCounterEgressPolicy = 0;
api.EgressPolicy buildEgressPolicy() {
  var o = api.EgressPolicy();
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
    checkEgressFrom(o.egressFrom as api.EgressFrom);
    checkEgressTo(o.egressTo as api.EgressTo);
  }
  buildCounterEgressPolicy--;
}

core.List<api.ApiOperation> buildUnnamed6349() {
  var o = <api.ApiOperation>[];
  o.add(buildApiOperation());
  o.add(buildApiOperation());
  return o;
}

void checkUnnamed6349(core.List<api.ApiOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiOperation(o[0] as api.ApiOperation);
  checkApiOperation(o[1] as api.ApiOperation);
}

core.List<core.String> buildUnnamed6350() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6350(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEgressTo = 0;
api.EgressTo buildEgressTo() {
  var o = api.EgressTo();
  buildCounterEgressTo++;
  if (buildCounterEgressTo < 3) {
    o.operations = buildUnnamed6349();
    o.resources = buildUnnamed6350();
  }
  buildCounterEgressTo--;
  return o;
}

void checkEgressTo(api.EgressTo o) {
  buildCounterEgressTo++;
  if (buildCounterEgressTo < 3) {
    checkUnnamed6349(o.operations);
    checkUnnamed6350(o.resources);
  }
  buildCounterEgressTo--;
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.List<core.String> buildUnnamed6351() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6351(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGcpUserAccessBinding = 0;
api.GcpUserAccessBinding buildGcpUserAccessBinding() {
  var o = api.GcpUserAccessBinding();
  buildCounterGcpUserAccessBinding++;
  if (buildCounterGcpUserAccessBinding < 3) {
    o.accessLevels = buildUnnamed6351();
    o.groupKey = 'foo';
    o.name = 'foo';
  }
  buildCounterGcpUserAccessBinding--;
  return o;
}

void checkGcpUserAccessBinding(api.GcpUserAccessBinding o) {
  buildCounterGcpUserAccessBinding++;
  if (buildCounterGcpUserAccessBinding < 3) {
    checkUnnamed6351(o.accessLevels);
    unittest.expect(o.groupKey, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGcpUserAccessBinding--;
}

core.List<core.String> buildUnnamed6352() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6352(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.IngressSource> buildUnnamed6353() {
  var o = <api.IngressSource>[];
  o.add(buildIngressSource());
  o.add(buildIngressSource());
  return o;
}

void checkUnnamed6353(core.List<api.IngressSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIngressSource(o[0] as api.IngressSource);
  checkIngressSource(o[1] as api.IngressSource);
}

core.int buildCounterIngressFrom = 0;
api.IngressFrom buildIngressFrom() {
  var o = api.IngressFrom();
  buildCounterIngressFrom++;
  if (buildCounterIngressFrom < 3) {
    o.identities = buildUnnamed6352();
    o.identityType = 'foo';
    o.sources = buildUnnamed6353();
  }
  buildCounterIngressFrom--;
  return o;
}

void checkIngressFrom(api.IngressFrom o) {
  buildCounterIngressFrom++;
  if (buildCounterIngressFrom < 3) {
    checkUnnamed6352(o.identities);
    unittest.expect(o.identityType, unittest.equals('foo'));
    checkUnnamed6353(o.sources);
  }
  buildCounterIngressFrom--;
}

core.int buildCounterIngressPolicy = 0;
api.IngressPolicy buildIngressPolicy() {
  var o = api.IngressPolicy();
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
    checkIngressFrom(o.ingressFrom as api.IngressFrom);
    checkIngressTo(o.ingressTo as api.IngressTo);
  }
  buildCounterIngressPolicy--;
}

core.int buildCounterIngressSource = 0;
api.IngressSource buildIngressSource() {
  var o = api.IngressSource();
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
    unittest.expect(o.accessLevel, unittest.equals('foo'));
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterIngressSource--;
}

core.List<api.ApiOperation> buildUnnamed6354() {
  var o = <api.ApiOperation>[];
  o.add(buildApiOperation());
  o.add(buildApiOperation());
  return o;
}

void checkUnnamed6354(core.List<api.ApiOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiOperation(o[0] as api.ApiOperation);
  checkApiOperation(o[1] as api.ApiOperation);
}

core.List<core.String> buildUnnamed6355() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6355(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIngressTo = 0;
api.IngressTo buildIngressTo() {
  var o = api.IngressTo();
  buildCounterIngressTo++;
  if (buildCounterIngressTo < 3) {
    o.operations = buildUnnamed6354();
    o.resources = buildUnnamed6355();
  }
  buildCounterIngressTo--;
  return o;
}

void checkIngressTo(api.IngressTo o) {
  buildCounterIngressTo++;
  if (buildCounterIngressTo < 3) {
    checkUnnamed6354(o.operations);
    checkUnnamed6355(o.resources);
  }
  buildCounterIngressTo--;
}

core.List<api.AccessLevel> buildUnnamed6356() {
  var o = <api.AccessLevel>[];
  o.add(buildAccessLevel());
  o.add(buildAccessLevel());
  return o;
}

void checkUnnamed6356(core.List<api.AccessLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessLevel(o[0] as api.AccessLevel);
  checkAccessLevel(o[1] as api.AccessLevel);
}

core.int buildCounterListAccessLevelsResponse = 0;
api.ListAccessLevelsResponse buildListAccessLevelsResponse() {
  var o = api.ListAccessLevelsResponse();
  buildCounterListAccessLevelsResponse++;
  if (buildCounterListAccessLevelsResponse < 3) {
    o.accessLevels = buildUnnamed6356();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccessLevelsResponse--;
  return o;
}

void checkListAccessLevelsResponse(api.ListAccessLevelsResponse o) {
  buildCounterListAccessLevelsResponse++;
  if (buildCounterListAccessLevelsResponse < 3) {
    checkUnnamed6356(o.accessLevels);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAccessLevelsResponse--;
}

core.List<api.AccessPolicy> buildUnnamed6357() {
  var o = <api.AccessPolicy>[];
  o.add(buildAccessPolicy());
  o.add(buildAccessPolicy());
  return o;
}

void checkUnnamed6357(core.List<api.AccessPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessPolicy(o[0] as api.AccessPolicy);
  checkAccessPolicy(o[1] as api.AccessPolicy);
}

core.int buildCounterListAccessPoliciesResponse = 0;
api.ListAccessPoliciesResponse buildListAccessPoliciesResponse() {
  var o = api.ListAccessPoliciesResponse();
  buildCounterListAccessPoliciesResponse++;
  if (buildCounterListAccessPoliciesResponse < 3) {
    o.accessPolicies = buildUnnamed6357();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccessPoliciesResponse--;
  return o;
}

void checkListAccessPoliciesResponse(api.ListAccessPoliciesResponse o) {
  buildCounterListAccessPoliciesResponse++;
  if (buildCounterListAccessPoliciesResponse < 3) {
    checkUnnamed6357(o.accessPolicies);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAccessPoliciesResponse--;
}

core.List<api.GcpUserAccessBinding> buildUnnamed6358() {
  var o = <api.GcpUserAccessBinding>[];
  o.add(buildGcpUserAccessBinding());
  o.add(buildGcpUserAccessBinding());
  return o;
}

void checkUnnamed6358(core.List<api.GcpUserAccessBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGcpUserAccessBinding(o[0] as api.GcpUserAccessBinding);
  checkGcpUserAccessBinding(o[1] as api.GcpUserAccessBinding);
}

core.int buildCounterListGcpUserAccessBindingsResponse = 0;
api.ListGcpUserAccessBindingsResponse buildListGcpUserAccessBindingsResponse() {
  var o = api.ListGcpUserAccessBindingsResponse();
  buildCounterListGcpUserAccessBindingsResponse++;
  if (buildCounterListGcpUserAccessBindingsResponse < 3) {
    o.gcpUserAccessBindings = buildUnnamed6358();
    o.nextPageToken = 'foo';
  }
  buildCounterListGcpUserAccessBindingsResponse--;
  return o;
}

void checkListGcpUserAccessBindingsResponse(
    api.ListGcpUserAccessBindingsResponse o) {
  buildCounterListGcpUserAccessBindingsResponse++;
  if (buildCounterListGcpUserAccessBindingsResponse < 3) {
    checkUnnamed6358(o.gcpUserAccessBindings);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListGcpUserAccessBindingsResponse--;
}

core.List<api.Operation> buildUnnamed6359() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed6359(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed6359();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6359(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.ServicePerimeter> buildUnnamed6360() {
  var o = <api.ServicePerimeter>[];
  o.add(buildServicePerimeter());
  o.add(buildServicePerimeter());
  return o;
}

void checkUnnamed6360(core.List<api.ServicePerimeter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServicePerimeter(o[0] as api.ServicePerimeter);
  checkServicePerimeter(o[1] as api.ServicePerimeter);
}

core.int buildCounterListServicePerimetersResponse = 0;
api.ListServicePerimetersResponse buildListServicePerimetersResponse() {
  var o = api.ListServicePerimetersResponse();
  buildCounterListServicePerimetersResponse++;
  if (buildCounterListServicePerimetersResponse < 3) {
    o.nextPageToken = 'foo';
    o.servicePerimeters = buildUnnamed6360();
  }
  buildCounterListServicePerimetersResponse--;
  return o;
}

void checkListServicePerimetersResponse(api.ListServicePerimetersResponse o) {
  buildCounterListServicePerimetersResponse++;
  if (buildCounterListServicePerimetersResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6360(o.servicePerimeters);
  }
  buildCounterListServicePerimetersResponse--;
}

core.int buildCounterMethodSelector = 0;
api.MethodSelector buildMethodSelector() {
  var o = api.MethodSelector();
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
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.permission, unittest.equals('foo'));
  }
  buildCounterMethodSelector--;
}

core.Map<core.String, core.Object> buildUnnamed6361() {
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

void checkUnnamed6361(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6362() {
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

void checkUnnamed6362(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed6361();
    o.name = 'foo';
    o.response = buildUnnamed6362();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error as api.Status);
    checkUnnamed6361(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6362(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOsConstraint = 0;
api.OsConstraint buildOsConstraint() {
  var o = api.OsConstraint();
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
    unittest.expect(o.minimumVersion, unittest.equals('foo'));
    unittest.expect(o.osType, unittest.equals('foo'));
    unittest.expect(o.requireVerifiedChromeOs, unittest.isTrue);
  }
  buildCounterOsConstraint--;
}

core.List<api.AccessLevel> buildUnnamed6363() {
  var o = <api.AccessLevel>[];
  o.add(buildAccessLevel());
  o.add(buildAccessLevel());
  return o;
}

void checkUnnamed6363(core.List<api.AccessLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessLevel(o[0] as api.AccessLevel);
  checkAccessLevel(o[1] as api.AccessLevel);
}

core.int buildCounterReplaceAccessLevelsRequest = 0;
api.ReplaceAccessLevelsRequest buildReplaceAccessLevelsRequest() {
  var o = api.ReplaceAccessLevelsRequest();
  buildCounterReplaceAccessLevelsRequest++;
  if (buildCounterReplaceAccessLevelsRequest < 3) {
    o.accessLevels = buildUnnamed6363();
    o.etag = 'foo';
  }
  buildCounterReplaceAccessLevelsRequest--;
  return o;
}

void checkReplaceAccessLevelsRequest(api.ReplaceAccessLevelsRequest o) {
  buildCounterReplaceAccessLevelsRequest++;
  if (buildCounterReplaceAccessLevelsRequest < 3) {
    checkUnnamed6363(o.accessLevels);
    unittest.expect(o.etag, unittest.equals('foo'));
  }
  buildCounterReplaceAccessLevelsRequest--;
}

core.List<api.AccessLevel> buildUnnamed6364() {
  var o = <api.AccessLevel>[];
  o.add(buildAccessLevel());
  o.add(buildAccessLevel());
  return o;
}

void checkUnnamed6364(core.List<api.AccessLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessLevel(o[0] as api.AccessLevel);
  checkAccessLevel(o[1] as api.AccessLevel);
}

core.int buildCounterReplaceAccessLevelsResponse = 0;
api.ReplaceAccessLevelsResponse buildReplaceAccessLevelsResponse() {
  var o = api.ReplaceAccessLevelsResponse();
  buildCounterReplaceAccessLevelsResponse++;
  if (buildCounterReplaceAccessLevelsResponse < 3) {
    o.accessLevels = buildUnnamed6364();
  }
  buildCounterReplaceAccessLevelsResponse--;
  return o;
}

void checkReplaceAccessLevelsResponse(api.ReplaceAccessLevelsResponse o) {
  buildCounterReplaceAccessLevelsResponse++;
  if (buildCounterReplaceAccessLevelsResponse < 3) {
    checkUnnamed6364(o.accessLevels);
  }
  buildCounterReplaceAccessLevelsResponse--;
}

core.List<api.ServicePerimeter> buildUnnamed6365() {
  var o = <api.ServicePerimeter>[];
  o.add(buildServicePerimeter());
  o.add(buildServicePerimeter());
  return o;
}

void checkUnnamed6365(core.List<api.ServicePerimeter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServicePerimeter(o[0] as api.ServicePerimeter);
  checkServicePerimeter(o[1] as api.ServicePerimeter);
}

core.int buildCounterReplaceServicePerimetersRequest = 0;
api.ReplaceServicePerimetersRequest buildReplaceServicePerimetersRequest() {
  var o = api.ReplaceServicePerimetersRequest();
  buildCounterReplaceServicePerimetersRequest++;
  if (buildCounterReplaceServicePerimetersRequest < 3) {
    o.etag = 'foo';
    o.servicePerimeters = buildUnnamed6365();
  }
  buildCounterReplaceServicePerimetersRequest--;
  return o;
}

void checkReplaceServicePerimetersRequest(
    api.ReplaceServicePerimetersRequest o) {
  buildCounterReplaceServicePerimetersRequest++;
  if (buildCounterReplaceServicePerimetersRequest < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed6365(o.servicePerimeters);
  }
  buildCounterReplaceServicePerimetersRequest--;
}

core.List<api.ServicePerimeter> buildUnnamed6366() {
  var o = <api.ServicePerimeter>[];
  o.add(buildServicePerimeter());
  o.add(buildServicePerimeter());
  return o;
}

void checkUnnamed6366(core.List<api.ServicePerimeter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServicePerimeter(o[0] as api.ServicePerimeter);
  checkServicePerimeter(o[1] as api.ServicePerimeter);
}

core.int buildCounterReplaceServicePerimetersResponse = 0;
api.ReplaceServicePerimetersResponse buildReplaceServicePerimetersResponse() {
  var o = api.ReplaceServicePerimetersResponse();
  buildCounterReplaceServicePerimetersResponse++;
  if (buildCounterReplaceServicePerimetersResponse < 3) {
    o.servicePerimeters = buildUnnamed6366();
  }
  buildCounterReplaceServicePerimetersResponse--;
  return o;
}

void checkReplaceServicePerimetersResponse(
    api.ReplaceServicePerimetersResponse o) {
  buildCounterReplaceServicePerimetersResponse++;
  if (buildCounterReplaceServicePerimetersResponse < 3) {
    checkUnnamed6366(o.servicePerimeters);
  }
  buildCounterReplaceServicePerimetersResponse--;
}

core.int buildCounterServicePerimeter = 0;
api.ServicePerimeter buildServicePerimeter() {
  var o = api.ServicePerimeter();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.perimeterType, unittest.equals('foo'));
    checkServicePerimeterConfig(o.spec as api.ServicePerimeterConfig);
    checkServicePerimeterConfig(o.status as api.ServicePerimeterConfig);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.useExplicitDryRunSpec, unittest.isTrue);
  }
  buildCounterServicePerimeter--;
}

core.List<core.String> buildUnnamed6367() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6367(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.EgressPolicy> buildUnnamed6368() {
  var o = <api.EgressPolicy>[];
  o.add(buildEgressPolicy());
  o.add(buildEgressPolicy());
  return o;
}

void checkUnnamed6368(core.List<api.EgressPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEgressPolicy(o[0] as api.EgressPolicy);
  checkEgressPolicy(o[1] as api.EgressPolicy);
}

core.List<api.IngressPolicy> buildUnnamed6369() {
  var o = <api.IngressPolicy>[];
  o.add(buildIngressPolicy());
  o.add(buildIngressPolicy());
  return o;
}

void checkUnnamed6369(core.List<api.IngressPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIngressPolicy(o[0] as api.IngressPolicy);
  checkIngressPolicy(o[1] as api.IngressPolicy);
}

core.List<core.String> buildUnnamed6370() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6370(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6371() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6371(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterServicePerimeterConfig = 0;
api.ServicePerimeterConfig buildServicePerimeterConfig() {
  var o = api.ServicePerimeterConfig();
  buildCounterServicePerimeterConfig++;
  if (buildCounterServicePerimeterConfig < 3) {
    o.accessLevels = buildUnnamed6367();
    o.egressPolicies = buildUnnamed6368();
    o.ingressPolicies = buildUnnamed6369();
    o.resources = buildUnnamed6370();
    o.restrictedServices = buildUnnamed6371();
    o.vpcAccessibleServices = buildVpcAccessibleServices();
  }
  buildCounterServicePerimeterConfig--;
  return o;
}

void checkServicePerimeterConfig(api.ServicePerimeterConfig o) {
  buildCounterServicePerimeterConfig++;
  if (buildCounterServicePerimeterConfig < 3) {
    checkUnnamed6367(o.accessLevels);
    checkUnnamed6368(o.egressPolicies);
    checkUnnamed6369(o.ingressPolicies);
    checkUnnamed6370(o.resources);
    checkUnnamed6371(o.restrictedServices);
    checkVpcAccessibleServices(
        o.vpcAccessibleServices as api.VpcAccessibleServices);
  }
  buildCounterServicePerimeterConfig--;
}

core.Map<core.String, core.Object> buildUnnamed6372() {
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

void checkUnnamed6372(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed6373() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6372());
  o.add(buildUnnamed6372());
  return o;
}

void checkUnnamed6373(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6372(o[0]);
  checkUnnamed6372(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6373();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6373(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed6374() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6374(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVpcAccessibleServices = 0;
api.VpcAccessibleServices buildVpcAccessibleServices() {
  var o = api.VpcAccessibleServices();
  buildCounterVpcAccessibleServices++;
  if (buildCounterVpcAccessibleServices < 3) {
    o.allowedServices = buildUnnamed6374();
    o.enableRestriction = true;
  }
  buildCounterVpcAccessibleServices--;
  return o;
}

void checkVpcAccessibleServices(api.VpcAccessibleServices o) {
  buildCounterVpcAccessibleServices++;
  if (buildCounterVpcAccessibleServices < 3) {
    checkUnnamed6374(o.allowedServices);
    unittest.expect(o.enableRestriction, unittest.isTrue);
  }
  buildCounterVpcAccessibleServices--;
}

void main() {
  unittest.group('obj-schema-AccessLevel', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccessLevel();
      var od = api.AccessLevel.fromJson(o.toJson());
      checkAccessLevel(od as api.AccessLevel);
    });
  });

  unittest.group('obj-schema-AccessPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccessPolicy();
      var od = api.AccessPolicy.fromJson(o.toJson());
      checkAccessPolicy(od as api.AccessPolicy);
    });
  });

  unittest.group('obj-schema-ApiOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildApiOperation();
      var od = api.ApiOperation.fromJson(o.toJson());
      checkApiOperation(od as api.ApiOperation);
    });
  });

  unittest.group('obj-schema-BasicLevel', () {
    unittest.test('to-json--from-json', () {
      var o = buildBasicLevel();
      var od = api.BasicLevel.fromJson(o.toJson());
      checkBasicLevel(od as api.BasicLevel);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCancelOperationRequest();
      var od = api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-CommitServicePerimetersRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommitServicePerimetersRequest();
      var od = api.CommitServicePerimetersRequest.fromJson(o.toJson());
      checkCommitServicePerimetersRequest(
          od as api.CommitServicePerimetersRequest);
    });
  });

  unittest.group('obj-schema-CommitServicePerimetersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommitServicePerimetersResponse();
      var od = api.CommitServicePerimetersResponse.fromJson(o.toJson());
      checkCommitServicePerimetersResponse(
          od as api.CommitServicePerimetersResponse);
    });
  });

  unittest.group('obj-schema-Condition', () {
    unittest.test('to-json--from-json', () {
      var o = buildCondition();
      var od = api.Condition.fromJson(o.toJson());
      checkCondition(od as api.Condition);
    });
  });

  unittest.group('obj-schema-CustomLevel', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomLevel();
      var od = api.CustomLevel.fromJson(o.toJson());
      checkCustomLevel(od as api.CustomLevel);
    });
  });

  unittest.group('obj-schema-DevicePolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildDevicePolicy();
      var od = api.DevicePolicy.fromJson(o.toJson());
      checkDevicePolicy(od as api.DevicePolicy);
    });
  });

  unittest.group('obj-schema-EgressFrom', () {
    unittest.test('to-json--from-json', () {
      var o = buildEgressFrom();
      var od = api.EgressFrom.fromJson(o.toJson());
      checkEgressFrom(od as api.EgressFrom);
    });
  });

  unittest.group('obj-schema-EgressPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildEgressPolicy();
      var od = api.EgressPolicy.fromJson(o.toJson());
      checkEgressPolicy(od as api.EgressPolicy);
    });
  });

  unittest.group('obj-schema-EgressTo', () {
    unittest.test('to-json--from-json', () {
      var o = buildEgressTo();
      var od = api.EgressTo.fromJson(o.toJson());
      checkEgressTo(od as api.EgressTo);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-GcpUserAccessBinding', () {
    unittest.test('to-json--from-json', () {
      var o = buildGcpUserAccessBinding();
      var od = api.GcpUserAccessBinding.fromJson(o.toJson());
      checkGcpUserAccessBinding(od as api.GcpUserAccessBinding);
    });
  });

  unittest.group('obj-schema-IngressFrom', () {
    unittest.test('to-json--from-json', () {
      var o = buildIngressFrom();
      var od = api.IngressFrom.fromJson(o.toJson());
      checkIngressFrom(od as api.IngressFrom);
    });
  });

  unittest.group('obj-schema-IngressPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildIngressPolicy();
      var od = api.IngressPolicy.fromJson(o.toJson());
      checkIngressPolicy(od as api.IngressPolicy);
    });
  });

  unittest.group('obj-schema-IngressSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildIngressSource();
      var od = api.IngressSource.fromJson(o.toJson());
      checkIngressSource(od as api.IngressSource);
    });
  });

  unittest.group('obj-schema-IngressTo', () {
    unittest.test('to-json--from-json', () {
      var o = buildIngressTo();
      var od = api.IngressTo.fromJson(o.toJson());
      checkIngressTo(od as api.IngressTo);
    });
  });

  unittest.group('obj-schema-ListAccessLevelsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAccessLevelsResponse();
      var od = api.ListAccessLevelsResponse.fromJson(o.toJson());
      checkListAccessLevelsResponse(od as api.ListAccessLevelsResponse);
    });
  });

  unittest.group('obj-schema-ListAccessPoliciesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAccessPoliciesResponse();
      var od = api.ListAccessPoliciesResponse.fromJson(o.toJson());
      checkListAccessPoliciesResponse(od as api.ListAccessPoliciesResponse);
    });
  });

  unittest.group('obj-schema-ListGcpUserAccessBindingsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListGcpUserAccessBindingsResponse();
      var od = api.ListGcpUserAccessBindingsResponse.fromJson(o.toJson());
      checkListGcpUserAccessBindingsResponse(
          od as api.ListGcpUserAccessBindingsResponse);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOperationsResponse();
      var od = api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-ListServicePerimetersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListServicePerimetersResponse();
      var od = api.ListServicePerimetersResponse.fromJson(o.toJson());
      checkListServicePerimetersResponse(
          od as api.ListServicePerimetersResponse);
    });
  });

  unittest.group('obj-schema-MethodSelector', () {
    unittest.test('to-json--from-json', () {
      var o = buildMethodSelector();
      var od = api.MethodSelector.fromJson(o.toJson());
      checkMethodSelector(od as api.MethodSelector);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-OsConstraint', () {
    unittest.test('to-json--from-json', () {
      var o = buildOsConstraint();
      var od = api.OsConstraint.fromJson(o.toJson());
      checkOsConstraint(od as api.OsConstraint);
    });
  });

  unittest.group('obj-schema-ReplaceAccessLevelsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReplaceAccessLevelsRequest();
      var od = api.ReplaceAccessLevelsRequest.fromJson(o.toJson());
      checkReplaceAccessLevelsRequest(od as api.ReplaceAccessLevelsRequest);
    });
  });

  unittest.group('obj-schema-ReplaceAccessLevelsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReplaceAccessLevelsResponse();
      var od = api.ReplaceAccessLevelsResponse.fromJson(o.toJson());
      checkReplaceAccessLevelsResponse(od as api.ReplaceAccessLevelsResponse);
    });
  });

  unittest.group('obj-schema-ReplaceServicePerimetersRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReplaceServicePerimetersRequest();
      var od = api.ReplaceServicePerimetersRequest.fromJson(o.toJson());
      checkReplaceServicePerimetersRequest(
          od as api.ReplaceServicePerimetersRequest);
    });
  });

  unittest.group('obj-schema-ReplaceServicePerimetersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReplaceServicePerimetersResponse();
      var od = api.ReplaceServicePerimetersResponse.fromJson(o.toJson());
      checkReplaceServicePerimetersResponse(
          od as api.ReplaceServicePerimetersResponse);
    });
  });

  unittest.group('obj-schema-ServicePerimeter', () {
    unittest.test('to-json--from-json', () {
      var o = buildServicePerimeter();
      var od = api.ServicePerimeter.fromJson(o.toJson());
      checkServicePerimeter(od as api.ServicePerimeter);
    });
  });

  unittest.group('obj-schema-ServicePerimeterConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildServicePerimeterConfig();
      var od = api.ServicePerimeterConfig.fromJson(o.toJson());
      checkServicePerimeterConfig(od as api.ServicePerimeterConfig);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-VpcAccessibleServices', () {
    unittest.test('to-json--from-json', () {
      var o = buildVpcAccessibleServices();
      var od = api.VpcAccessibleServices.fromJson(o.toJson());
      checkVpcAccessibleServices(od as api.VpcAccessibleServices);
    });
  });

  unittest.group('resource-AccessPoliciesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.AccessContextManagerApi(mock).accessPolicies;
      var arg_request = buildAccessPolicy();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccessPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccessPolicy(obj as api.AccessPolicy);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v1/accessPolicies"));
        pathOffset += 17;

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
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.AccessContextManagerApi(mock).accessPolicies;
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
      var res = api.AccessContextManagerApi(mock).accessPolicies;
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
        var resp = convert.json.encode(buildAccessPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessPolicy(response as api.AccessPolicy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AccessContextManagerApi(mock).accessPolicies;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v1/accessPolicies"));
        pathOffset += 17;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAccessPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              parent: arg_parent,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAccessPoliciesResponse(
            response as api.ListAccessPoliciesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.AccessContextManagerApi(mock).accessPolicies;
      var arg_request = buildAccessPolicy();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccessPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccessPolicy(obj as api.AccessPolicy);

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
  });

  unittest.group('resource-AccessPoliciesAccessLevelsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      var arg_request = buildAccessLevel();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccessLevel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccessLevel(obj as api.AccessLevel);

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
      var res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
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
      var res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      var arg_name = 'foo';
      var arg_accessLevelFormat = 'foo';
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
        unittest.expect(queryMap["accessLevelFormat"].first,
            unittest.equals(arg_accessLevelFormat));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccessLevel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              accessLevelFormat: arg_accessLevelFormat, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessLevel(response as api.AccessLevel);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      var arg_parent = 'foo';
      var arg_accessLevelFormat = 'foo';
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
        unittest.expect(queryMap["accessLevelFormat"].first,
            unittest.equals(arg_accessLevelFormat));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAccessLevelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              accessLevelFormat: arg_accessLevelFormat,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAccessLevelsResponse(response as api.ListAccessLevelsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      var arg_request = buildAccessLevel();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccessLevel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccessLevel(obj as api.AccessLevel);

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

    unittest.test('method--replaceAll', () {
      var mock = HttpServerMock();
      var res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      var arg_request = buildReplaceAccessLevelsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReplaceAccessLevelsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReplaceAccessLevelsRequest(obj as api.ReplaceAccessLevelsRequest);

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
          .replaceAll(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-AccessPoliciesServicePerimetersResource', () {
    unittest.test('method--commit', () {
      var mock = HttpServerMock();
      var res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
      var arg_request = buildCommitServicePerimetersRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CommitServicePerimetersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCommitServicePerimetersRequest(
            obj as api.CommitServicePerimetersRequest);

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
          .commit(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
      var arg_request = buildServicePerimeter();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ServicePerimeter.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServicePerimeter(obj as api.ServicePerimeter);

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
      var res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
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
      var res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
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
        var resp = convert.json.encode(buildServicePerimeter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServicePerimeter(response as api.ServicePerimeter);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
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
        var resp = convert.json.encode(buildListServicePerimetersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListServicePerimetersResponse(
            response as api.ListServicePerimetersResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
      var arg_request = buildServicePerimeter();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ServicePerimeter.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServicePerimeter(obj as api.ServicePerimeter);

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

    unittest.test('method--replaceAll', () {
      var mock = HttpServerMock();
      var res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
      var arg_request = buildReplaceServicePerimetersRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReplaceServicePerimetersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReplaceServicePerimetersRequest(
            obj as api.ReplaceServicePerimetersRequest);

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
          .replaceAll(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.AccessContextManagerApi(mock).operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj as api.CancelOperationRequest);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.AccessContextManagerApi(mock).operations;
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
      var res = api.AccessContextManagerApi(mock).operations;
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
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AccessContextManagerApi(mock).operations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response as api.ListOperationsResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsGcpUserAccessBindingsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res =
          api.AccessContextManagerApi(mock).organizations.gcpUserAccessBindings;
      var arg_request = buildGcpUserAccessBinding();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GcpUserAccessBinding.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGcpUserAccessBinding(obj as api.GcpUserAccessBinding);

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
      var res =
          api.AccessContextManagerApi(mock).organizations.gcpUserAccessBindings;
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
      var res =
          api.AccessContextManagerApi(mock).organizations.gcpUserAccessBindings;
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
        var resp = convert.json.encode(buildGcpUserAccessBinding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGcpUserAccessBinding(response as api.GcpUserAccessBinding);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.AccessContextManagerApi(mock).organizations.gcpUserAccessBindings;
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
            convert.json.encode(buildListGcpUserAccessBindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGcpUserAccessBindingsResponse(
            response as api.ListGcpUserAccessBindingsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res =
          api.AccessContextManagerApi(mock).organizations.gcpUserAccessBindings;
      var arg_request = buildGcpUserAccessBinding();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GcpUserAccessBinding.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGcpUserAccessBinding(obj as api.GcpUserAccessBinding);

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
  });
}
