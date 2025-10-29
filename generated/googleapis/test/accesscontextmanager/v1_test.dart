// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
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
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterAccessLevel--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccessPolicy = 0;
api.AccessPolicy buildAccessPolicy() {
  final o = api.AccessPolicy();
  buildCounterAccessPolicy++;
  if (buildCounterAccessPolicy < 3) {
    o.etag = 'foo';
    o.name = 'foo';
    o.parent = 'foo';
    o.scopes = buildUnnamed0();
    o.title = 'foo';
  }
  buildCounterAccessPolicy--;
  return o;
}

void checkAccessPolicy(api.AccessPolicy o) {
  buildCounterAccessPolicy++;
  if (buildCounterAccessPolicy < 3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkUnnamed0(o.scopes!);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterAccessPolicy--;
}

core.int buildCounterAccessScope = 0;
api.AccessScope buildAccessScope() {
  final o = api.AccessScope();
  buildCounterAccessScope++;
  if (buildCounterAccessScope < 3) {
    o.clientScope = buildClientScope();
  }
  buildCounterAccessScope--;
  return o;
}

void checkAccessScope(api.AccessScope o) {
  buildCounterAccessScope++;
  if (buildCounterAccessScope < 3) {
    checkClientScope(o.clientScope!);
  }
  buildCounterAccessScope--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccessSettings = 0;
api.AccessSettings buildAccessSettings() {
  final o = api.AccessSettings();
  buildCounterAccessSettings++;
  if (buildCounterAccessSettings < 3) {
    o.accessLevels = buildUnnamed1();
    o.sessionSettings = buildSessionSettings();
  }
  buildCounterAccessSettings--;
  return o;
}

void checkAccessSettings(api.AccessSettings o) {
  buildCounterAccessSettings++;
  if (buildCounterAccessSettings < 3) {
    checkUnnamed1(o.accessLevels!);
    checkSessionSettings(o.sessionSettings!);
  }
  buildCounterAccessSettings--;
}

core.List<api.MethodSelector> buildUnnamed2() => [
  buildMethodSelector(),
  buildMethodSelector(),
];

void checkUnnamed2(core.List<api.MethodSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMethodSelector(o[0]);
  checkMethodSelector(o[1]);
}

core.int buildCounterApiOperation = 0;
api.ApiOperation buildApiOperation() {
  final o = api.ApiOperation();
  buildCounterApiOperation++;
  if (buildCounterApiOperation < 3) {
    o.methodSelectors = buildUnnamed2();
    o.serviceName = 'foo';
  }
  buildCounterApiOperation--;
  return o;
}

void checkApiOperation(api.ApiOperation o) {
  buildCounterApiOperation++;
  if (buildCounterApiOperation < 3) {
    checkUnnamed2(o.methodSelectors!);
    unittest.expect(o.serviceName!, unittest.equals('foo'));
  }
  buildCounterApiOperation--;
}

core.int buildCounterApplication = 0;
api.Application buildApplication() {
  final o = api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.clientId = 'foo';
    o.name = 'foo';
  }
  buildCounterApplication--;
  return o;
}

void checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterApplication--;
}

core.List<api.AuditLogConfig> buildUnnamed3() => [
  buildAuditLogConfig(),
  buildAuditLogConfig(),
];

void checkUnnamed3(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed3();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed3(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed4();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed4(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuthorizedOrgsDesc = 0;
api.AuthorizedOrgsDesc buildAuthorizedOrgsDesc() {
  final o = api.AuthorizedOrgsDesc();
  buildCounterAuthorizedOrgsDesc++;
  if (buildCounterAuthorizedOrgsDesc < 3) {
    o.assetType = 'foo';
    o.authorizationDirection = 'foo';
    o.authorizationType = 'foo';
    o.name = 'foo';
    o.orgs = buildUnnamed5();
  }
  buildCounterAuthorizedOrgsDesc--;
  return o;
}

void checkAuthorizedOrgsDesc(api.AuthorizedOrgsDesc o) {
  buildCounterAuthorizedOrgsDesc++;
  if (buildCounterAuthorizedOrgsDesc < 3) {
    unittest.expect(o.assetType!, unittest.equals('foo'));
    unittest.expect(o.authorizationDirection!, unittest.equals('foo'));
    unittest.expect(o.authorizationType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed5(o.orgs!);
  }
  buildCounterAuthorizedOrgsDesc--;
}

core.List<api.Condition> buildUnnamed6() => [
  buildCondition(),
  buildCondition(),
];

void checkUnnamed6(core.List<api.Condition> o) {
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
    o.conditions = buildUnnamed6();
  }
  buildCounterBasicLevel--;
  return o;
}

void checkBasicLevel(api.BasicLevel o) {
  buildCounterBasicLevel++;
  if (buildCounterBasicLevel < 3) {
    unittest.expect(o.combiningFunction!, unittest.equals('foo'));
    checkUnnamed6(o.conditions!);
  }
  buildCounterBasicLevel--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed7();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed7(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
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

core.int buildCounterClientScope = 0;
api.ClientScope buildClientScope() {
  final o = api.ClientScope();
  buildCounterClientScope++;
  if (buildCounterClientScope < 3) {
    o.restrictedClientApplication = buildApplication();
  }
  buildCounterClientScope--;
  return o;
}

void checkClientScope(api.ClientScope o) {
  buildCounterClientScope++;
  if (buildCounterClientScope < 3) {
    checkApplication(o.restrictedClientApplication!);
  }
  buildCounterClientScope--;
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
    unittest.expect(o.etag!, unittest.equals('foo'));
  }
  buildCounterCommitServicePerimetersRequest--;
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.VpcNetworkSource> buildUnnamed12() => [
  buildVpcNetworkSource(),
  buildVpcNetworkSource(),
];

void checkUnnamed12(core.List<api.VpcNetworkSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVpcNetworkSource(o[0]);
  checkVpcNetworkSource(o[1]);
}

core.int buildCounterCondition = 0;
api.Condition buildCondition() {
  final o = api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.devicePolicy = buildDevicePolicy();
    o.ipSubnetworks = buildUnnamed8();
    o.members = buildUnnamed9();
    o.negate = true;
    o.regions = buildUnnamed10();
    o.requiredAccessLevels = buildUnnamed11();
    o.vpcNetworkSources = buildUnnamed12();
  }
  buildCounterCondition--;
  return o;
}

void checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    checkDevicePolicy(o.devicePolicy!);
    checkUnnamed8(o.ipSubnetworks!);
    checkUnnamed9(o.members!);
    unittest.expect(o.negate!, unittest.isTrue);
    checkUnnamed10(o.regions!);
    checkUnnamed11(o.requiredAccessLevels!);
    checkUnnamed12(o.vpcNetworkSources!);
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

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.OsConstraint> buildUnnamed15() => [
  buildOsConstraint(),
  buildOsConstraint(),
];

void checkUnnamed15(core.List<api.OsConstraint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOsConstraint(o[0]);
  checkOsConstraint(o[1]);
}

core.int buildCounterDevicePolicy = 0;
api.DevicePolicy buildDevicePolicy() {
  final o = api.DevicePolicy();
  buildCounterDevicePolicy++;
  if (buildCounterDevicePolicy < 3) {
    o.allowedDeviceManagementLevels = buildUnnamed13();
    o.allowedEncryptionStatuses = buildUnnamed14();
    o.osConstraints = buildUnnamed15();
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
    checkUnnamed13(o.allowedDeviceManagementLevels!);
    checkUnnamed14(o.allowedEncryptionStatuses!);
    checkUnnamed15(o.osConstraints!);
    unittest.expect(o.requireAdminApproval!, unittest.isTrue);
    unittest.expect(o.requireCorpOwned!, unittest.isTrue);
    unittest.expect(o.requireScreenlock!, unittest.isTrue);
  }
  buildCounterDevicePolicy--;
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.EgressSource> buildUnnamed17() => [
  buildEgressSource(),
  buildEgressSource(),
];

void checkUnnamed17(core.List<api.EgressSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEgressSource(o[0]);
  checkEgressSource(o[1]);
}

core.int buildCounterEgressFrom = 0;
api.EgressFrom buildEgressFrom() {
  final o = api.EgressFrom();
  buildCounterEgressFrom++;
  if (buildCounterEgressFrom < 3) {
    o.identities = buildUnnamed16();
    o.identityType = 'foo';
    o.sourceRestriction = 'foo';
    o.sources = buildUnnamed17();
  }
  buildCounterEgressFrom--;
  return o;
}

void checkEgressFrom(api.EgressFrom o) {
  buildCounterEgressFrom++;
  if (buildCounterEgressFrom < 3) {
    checkUnnamed16(o.identities!);
    unittest.expect(o.identityType!, unittest.equals('foo'));
    unittest.expect(o.sourceRestriction!, unittest.equals('foo'));
    checkUnnamed17(o.sources!);
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
    o.title = 'foo';
  }
  buildCounterEgressPolicy--;
  return o;
}

void checkEgressPolicy(api.EgressPolicy o) {
  buildCounterEgressPolicy++;
  if (buildCounterEgressPolicy < 3) {
    checkEgressFrom(o.egressFrom!);
    checkEgressTo(o.egressTo!);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterEgressPolicy--;
}

core.int buildCounterEgressSource = 0;
api.EgressSource buildEgressSource() {
  final o = api.EgressSource();
  buildCounterEgressSource++;
  if (buildCounterEgressSource < 3) {
    o.accessLevel = 'foo';
    o.resource = 'foo';
  }
  buildCounterEgressSource--;
  return o;
}

void checkEgressSource(api.EgressSource o) {
  buildCounterEgressSource++;
  if (buildCounterEgressSource < 3) {
    unittest.expect(o.accessLevel!, unittest.equals('foo'));
    unittest.expect(o.resource!, unittest.equals('foo'));
  }
  buildCounterEgressSource--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ApiOperation> buildUnnamed19() => [
  buildApiOperation(),
  buildApiOperation(),
];

void checkUnnamed19(core.List<api.ApiOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiOperation(o[0]);
  checkApiOperation(o[1]);
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEgressTo = 0;
api.EgressTo buildEgressTo() {
  final o = api.EgressTo();
  buildCounterEgressTo++;
  if (buildCounterEgressTo < 3) {
    o.externalResources = buildUnnamed18();
    o.operations = buildUnnamed19();
    o.resources = buildUnnamed20();
    o.roles = buildUnnamed21();
  }
  buildCounterEgressTo--;
  return o;
}

void checkEgressTo(api.EgressTo o) {
  buildCounterEgressTo++;
  if (buildCounterEgressTo < 3) {
    checkUnnamed18(o.externalResources!);
    checkUnnamed19(o.operations!);
    checkUnnamed20(o.resources!);
    checkUnnamed21(o.roles!);
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
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Application> buildUnnamed24() => [
  buildApplication(),
  buildApplication(),
];

void checkUnnamed24(core.List<api.Application> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplication(o[0]);
  checkApplication(o[1]);
}

core.List<api.ScopedAccessSettings> buildUnnamed25() => [
  buildScopedAccessSettings(),
  buildScopedAccessSettings(),
];

void checkUnnamed25(core.List<api.ScopedAccessSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScopedAccessSettings(o[0]);
  checkScopedAccessSettings(o[1]);
}

core.int buildCounterGcpUserAccessBinding = 0;
api.GcpUserAccessBinding buildGcpUserAccessBinding() {
  final o = api.GcpUserAccessBinding();
  buildCounterGcpUserAccessBinding++;
  if (buildCounterGcpUserAccessBinding < 3) {
    o.accessLevels = buildUnnamed22();
    o.dryRunAccessLevels = buildUnnamed23();
    o.groupKey = 'foo';
    o.name = 'foo';
    o.restrictedClientApplications = buildUnnamed24();
    o.scopedAccessSettings = buildUnnamed25();
    o.sessionSettings = buildSessionSettings();
  }
  buildCounterGcpUserAccessBinding--;
  return o;
}

void checkGcpUserAccessBinding(api.GcpUserAccessBinding o) {
  buildCounterGcpUserAccessBinding++;
  if (buildCounterGcpUserAccessBinding < 3) {
    checkUnnamed22(o.accessLevels!);
    checkUnnamed23(o.dryRunAccessLevels!);
    unittest.expect(o.groupKey!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed24(o.restrictedClientApplications!);
    checkUnnamed25(o.scopedAccessSettings!);
    checkSessionSettings(o.sessionSettings!);
  }
  buildCounterGcpUserAccessBinding--;
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
    unittest.expect(o.requestedPolicyVersion!, unittest.equals(42));
  }
  buildCounterGetPolicyOptions--;
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.IngressSource> buildUnnamed27() => [
  buildIngressSource(),
  buildIngressSource(),
];

void checkUnnamed27(core.List<api.IngressSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIngressSource(o[0]);
  checkIngressSource(o[1]);
}

core.int buildCounterIngressFrom = 0;
api.IngressFrom buildIngressFrom() {
  final o = api.IngressFrom();
  buildCounterIngressFrom++;
  if (buildCounterIngressFrom < 3) {
    o.identities = buildUnnamed26();
    o.identityType = 'foo';
    o.sources = buildUnnamed27();
  }
  buildCounterIngressFrom--;
  return o;
}

void checkIngressFrom(api.IngressFrom o) {
  buildCounterIngressFrom++;
  if (buildCounterIngressFrom < 3) {
    checkUnnamed26(o.identities!);
    unittest.expect(o.identityType!, unittest.equals('foo'));
    checkUnnamed27(o.sources!);
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
    o.title = 'foo';
  }
  buildCounterIngressPolicy--;
  return o;
}

void checkIngressPolicy(api.IngressPolicy o) {
  buildCounterIngressPolicy++;
  if (buildCounterIngressPolicy < 3) {
    checkIngressFrom(o.ingressFrom!);
    checkIngressTo(o.ingressTo!);
    unittest.expect(o.title!, unittest.equals('foo'));
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
    unittest.expect(o.accessLevel!, unittest.equals('foo'));
    unittest.expect(o.resource!, unittest.equals('foo'));
  }
  buildCounterIngressSource--;
}

core.List<api.ApiOperation> buildUnnamed28() => [
  buildApiOperation(),
  buildApiOperation(),
];

void checkUnnamed28(core.List<api.ApiOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiOperation(o[0]);
  checkApiOperation(o[1]);
}

core.List<core.String> buildUnnamed29() => ['foo', 'foo'];

void checkUnnamed29(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIngressTo = 0;
api.IngressTo buildIngressTo() {
  final o = api.IngressTo();
  buildCounterIngressTo++;
  if (buildCounterIngressTo < 3) {
    o.operations = buildUnnamed28();
    o.resources = buildUnnamed29();
    o.roles = buildUnnamed30();
  }
  buildCounterIngressTo--;
  return o;
}

void checkIngressTo(api.IngressTo o) {
  buildCounterIngressTo++;
  if (buildCounterIngressTo < 3) {
    checkUnnamed28(o.operations!);
    checkUnnamed29(o.resources!);
    checkUnnamed30(o.roles!);
  }
  buildCounterIngressTo--;
}

core.List<api.AccessLevel> buildUnnamed31() => [
  buildAccessLevel(),
  buildAccessLevel(),
];

void checkUnnamed31(core.List<api.AccessLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessLevel(o[0]);
  checkAccessLevel(o[1]);
}

core.int buildCounterListAccessLevelsResponse = 0;
api.ListAccessLevelsResponse buildListAccessLevelsResponse() {
  final o = api.ListAccessLevelsResponse();
  buildCounterListAccessLevelsResponse++;
  if (buildCounterListAccessLevelsResponse < 3) {
    o.accessLevels = buildUnnamed31();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccessLevelsResponse--;
  return o;
}

void checkListAccessLevelsResponse(api.ListAccessLevelsResponse o) {
  buildCounterListAccessLevelsResponse++;
  if (buildCounterListAccessLevelsResponse < 3) {
    checkUnnamed31(o.accessLevels!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAccessLevelsResponse--;
}

core.List<api.AccessPolicy> buildUnnamed32() => [
  buildAccessPolicy(),
  buildAccessPolicy(),
];

void checkUnnamed32(core.List<api.AccessPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessPolicy(o[0]);
  checkAccessPolicy(o[1]);
}

core.int buildCounterListAccessPoliciesResponse = 0;
api.ListAccessPoliciesResponse buildListAccessPoliciesResponse() {
  final o = api.ListAccessPoliciesResponse();
  buildCounterListAccessPoliciesResponse++;
  if (buildCounterListAccessPoliciesResponse < 3) {
    o.accessPolicies = buildUnnamed32();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccessPoliciesResponse--;
  return o;
}

void checkListAccessPoliciesResponse(api.ListAccessPoliciesResponse o) {
  buildCounterListAccessPoliciesResponse++;
  if (buildCounterListAccessPoliciesResponse < 3) {
    checkUnnamed32(o.accessPolicies!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAccessPoliciesResponse--;
}

core.List<api.AuthorizedOrgsDesc> buildUnnamed33() => [
  buildAuthorizedOrgsDesc(),
  buildAuthorizedOrgsDesc(),
];

void checkUnnamed33(core.List<api.AuthorizedOrgsDesc> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizedOrgsDesc(o[0]);
  checkAuthorizedOrgsDesc(o[1]);
}

core.int buildCounterListAuthorizedOrgsDescsResponse = 0;
api.ListAuthorizedOrgsDescsResponse buildListAuthorizedOrgsDescsResponse() {
  final o = api.ListAuthorizedOrgsDescsResponse();
  buildCounterListAuthorizedOrgsDescsResponse++;
  if (buildCounterListAuthorizedOrgsDescsResponse < 3) {
    o.authorizedOrgsDescs = buildUnnamed33();
    o.nextPageToken = 'foo';
  }
  buildCounterListAuthorizedOrgsDescsResponse--;
  return o;
}

void checkListAuthorizedOrgsDescsResponse(
  api.ListAuthorizedOrgsDescsResponse o,
) {
  buildCounterListAuthorizedOrgsDescsResponse++;
  if (buildCounterListAuthorizedOrgsDescsResponse < 3) {
    checkUnnamed33(o.authorizedOrgsDescs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAuthorizedOrgsDescsResponse--;
}

core.List<api.GcpUserAccessBinding> buildUnnamed34() => [
  buildGcpUserAccessBinding(),
  buildGcpUserAccessBinding(),
];

void checkUnnamed34(core.List<api.GcpUserAccessBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGcpUserAccessBinding(o[0]);
  checkGcpUserAccessBinding(o[1]);
}

core.int buildCounterListGcpUserAccessBindingsResponse = 0;
api.ListGcpUserAccessBindingsResponse buildListGcpUserAccessBindingsResponse() {
  final o = api.ListGcpUserAccessBindingsResponse();
  buildCounterListGcpUserAccessBindingsResponse++;
  if (buildCounterListGcpUserAccessBindingsResponse < 3) {
    o.gcpUserAccessBindings = buildUnnamed34();
    o.nextPageToken = 'foo';
  }
  buildCounterListGcpUserAccessBindingsResponse--;
  return o;
}

void checkListGcpUserAccessBindingsResponse(
  api.ListGcpUserAccessBindingsResponse o,
) {
  buildCounterListGcpUserAccessBindingsResponse++;
  if (buildCounterListGcpUserAccessBindingsResponse < 3) {
    checkUnnamed34(o.gcpUserAccessBindings!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListGcpUserAccessBindingsResponse--;
}

core.List<api.Operation> buildUnnamed35() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed35(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed35();
    o.unreachable = buildUnnamed36();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed35(o.operations!);
    checkUnnamed36(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.ServicePerimeter> buildUnnamed37() => [
  buildServicePerimeter(),
  buildServicePerimeter(),
];

void checkUnnamed37(core.List<api.ServicePerimeter> o) {
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
    o.servicePerimeters = buildUnnamed37();
  }
  buildCounterListServicePerimetersResponse--;
  return o;
}

void checkListServicePerimetersResponse(api.ListServicePerimetersResponse o) {
  buildCounterListServicePerimetersResponse++;
  if (buildCounterListServicePerimetersResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed37(o.servicePerimeters!);
  }
  buildCounterListServicePerimetersResponse--;
}

core.List<api.SupportedService> buildUnnamed38() => [
  buildSupportedService(),
  buildSupportedService(),
];

void checkUnnamed38(core.List<api.SupportedService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSupportedService(o[0]);
  checkSupportedService(o[1]);
}

core.int buildCounterListSupportedServicesResponse = 0;
api.ListSupportedServicesResponse buildListSupportedServicesResponse() {
  final o = api.ListSupportedServicesResponse();
  buildCounterListSupportedServicesResponse++;
  if (buildCounterListSupportedServicesResponse < 3) {
    o.nextPageToken = 'foo';
    o.supportedServices = buildUnnamed38();
  }
  buildCounterListSupportedServicesResponse--;
  return o;
}

void checkListSupportedServicesResponse(api.ListSupportedServicesResponse o) {
  buildCounterListSupportedServicesResponse++;
  if (buildCounterListSupportedServicesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed38(o.supportedServices!);
  }
  buildCounterListSupportedServicesResponse--;
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
    unittest.expect(o.method!, unittest.equals('foo'));
    unittest.expect(o.permission!, unittest.equals('foo'));
  }
  buildCounterMethodSelector--;
}

core.Map<core.String, core.Object?> buildUnnamed39() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed39(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed40() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed40(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed39();
    o.name = 'foo';
    o.response = buildUnnamed40();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed39(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed40(o.response!);
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
    unittest.expect(o.minimumVersion!, unittest.equals('foo'));
    unittest.expect(o.osType!, unittest.equals('foo'));
    unittest.expect(o.requireVerifiedChromeOs!, unittest.isTrue);
  }
  buildCounterOsConstraint--;
}

core.List<api.AuditConfig> buildUnnamed41() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed41(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed42() => [buildBinding(), buildBinding()];

void checkUnnamed42(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed41();
    o.bindings = buildUnnamed42();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed41(o.auditConfigs!);
    checkUnnamed42(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.List<api.AccessLevel> buildUnnamed43() => [
  buildAccessLevel(),
  buildAccessLevel(),
];

void checkUnnamed43(core.List<api.AccessLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessLevel(o[0]);
  checkAccessLevel(o[1]);
}

core.int buildCounterReplaceAccessLevelsRequest = 0;
api.ReplaceAccessLevelsRequest buildReplaceAccessLevelsRequest() {
  final o = api.ReplaceAccessLevelsRequest();
  buildCounterReplaceAccessLevelsRequest++;
  if (buildCounterReplaceAccessLevelsRequest < 3) {
    o.accessLevels = buildUnnamed43();
    o.etag = 'foo';
  }
  buildCounterReplaceAccessLevelsRequest--;
  return o;
}

void checkReplaceAccessLevelsRequest(api.ReplaceAccessLevelsRequest o) {
  buildCounterReplaceAccessLevelsRequest++;
  if (buildCounterReplaceAccessLevelsRequest < 3) {
    checkUnnamed43(o.accessLevels!);
    unittest.expect(o.etag!, unittest.equals('foo'));
  }
  buildCounterReplaceAccessLevelsRequest--;
}

core.List<api.ServicePerimeter> buildUnnamed44() => [
  buildServicePerimeter(),
  buildServicePerimeter(),
];

void checkUnnamed44(core.List<api.ServicePerimeter> o) {
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
    o.servicePerimeters = buildUnnamed44();
  }
  buildCounterReplaceServicePerimetersRequest--;
  return o;
}

void checkReplaceServicePerimetersRequest(
  api.ReplaceServicePerimetersRequest o,
) {
  buildCounterReplaceServicePerimetersRequest++;
  if (buildCounterReplaceServicePerimetersRequest < 3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed44(o.servicePerimeters!);
  }
  buildCounterReplaceServicePerimetersRequest--;
}

core.int buildCounterScopedAccessSettings = 0;
api.ScopedAccessSettings buildScopedAccessSettings() {
  final o = api.ScopedAccessSettings();
  buildCounterScopedAccessSettings++;
  if (buildCounterScopedAccessSettings < 3) {
    o.activeSettings = buildAccessSettings();
    o.dryRunSettings = buildAccessSettings();
    o.scope = buildAccessScope();
  }
  buildCounterScopedAccessSettings--;
  return o;
}

void checkScopedAccessSettings(api.ScopedAccessSettings o) {
  buildCounterScopedAccessSettings++;
  if (buildCounterScopedAccessSettings < 3) {
    checkAccessSettings(o.activeSettings!);
    checkAccessSettings(o.dryRunSettings!);
    checkAccessScope(o.scope!);
  }
  buildCounterScopedAccessSettings--;
}

core.int buildCounterServicePerimeter = 0;
api.ServicePerimeter buildServicePerimeter() {
  final o = api.ServicePerimeter();
  buildCounterServicePerimeter++;
  if (buildCounterServicePerimeter < 3) {
    o.description = 'foo';
    o.etag = 'foo';
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
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.perimeterType!, unittest.equals('foo'));
    checkServicePerimeterConfig(o.spec!);
    checkServicePerimeterConfig(o.status!);
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.useExplicitDryRunSpec!, unittest.isTrue);
  }
  buildCounterServicePerimeter--;
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.EgressPolicy> buildUnnamed46() => [
  buildEgressPolicy(),
  buildEgressPolicy(),
];

void checkUnnamed46(core.List<api.EgressPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEgressPolicy(o[0]);
  checkEgressPolicy(o[1]);
}

core.List<api.IngressPolicy> buildUnnamed47() => [
  buildIngressPolicy(),
  buildIngressPolicy(),
];

void checkUnnamed47(core.List<api.IngressPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIngressPolicy(o[0]);
  checkIngressPolicy(o[1]);
}

core.List<core.String> buildUnnamed48() => ['foo', 'foo'];

void checkUnnamed48(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterServicePerimeterConfig = 0;
api.ServicePerimeterConfig buildServicePerimeterConfig() {
  final o = api.ServicePerimeterConfig();
  buildCounterServicePerimeterConfig++;
  if (buildCounterServicePerimeterConfig < 3) {
    o.accessLevels = buildUnnamed45();
    o.egressPolicies = buildUnnamed46();
    o.ingressPolicies = buildUnnamed47();
    o.resources = buildUnnamed48();
    o.restrictedServices = buildUnnamed49();
    o.vpcAccessibleServices = buildVpcAccessibleServices();
  }
  buildCounterServicePerimeterConfig--;
  return o;
}

void checkServicePerimeterConfig(api.ServicePerimeterConfig o) {
  buildCounterServicePerimeterConfig++;
  if (buildCounterServicePerimeterConfig < 3) {
    checkUnnamed45(o.accessLevels!);
    checkUnnamed46(o.egressPolicies!);
    checkUnnamed47(o.ingressPolicies!);
    checkUnnamed48(o.resources!);
    checkUnnamed49(o.restrictedServices!);
    checkVpcAccessibleServices(o.vpcAccessibleServices!);
  }
  buildCounterServicePerimeterConfig--;
}

core.int buildCounterSessionSettings = 0;
api.SessionSettings buildSessionSettings() {
  final o = api.SessionSettings();
  buildCounterSessionSettings++;
  if (buildCounterSessionSettings < 3) {
    o.maxInactivity = 'foo';
    o.sessionLength = 'foo';
    o.sessionLengthEnabled = true;
    o.sessionReauthMethod = 'foo';
    o.useOidcMaxAge = true;
  }
  buildCounterSessionSettings--;
  return o;
}

void checkSessionSettings(api.SessionSettings o) {
  buildCounterSessionSettings++;
  if (buildCounterSessionSettings < 3) {
    unittest.expect(o.maxInactivity!, unittest.equals('foo'));
    unittest.expect(o.sessionLength!, unittest.equals('foo'));
    unittest.expect(o.sessionLengthEnabled!, unittest.isTrue);
    unittest.expect(o.sessionReauthMethod!, unittest.equals('foo'));
    unittest.expect(o.useOidcMaxAge!, unittest.isTrue);
  }
  buildCounterSessionSettings--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed50() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed50(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed51() => [
  buildUnnamed50(),
  buildUnnamed50(),
];

void checkUnnamed51(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed50(o[0]);
  checkUnnamed50(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed51();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed51(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<api.MethodSelector> buildUnnamed52() => [
  buildMethodSelector(),
  buildMethodSelector(),
];

void checkUnnamed52(core.List<api.MethodSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMethodSelector(o[0]);
  checkMethodSelector(o[1]);
}

core.int buildCounterSupportedService = 0;
api.SupportedService buildSupportedService() {
  final o = api.SupportedService();
  buildCounterSupportedService++;
  if (buildCounterSupportedService < 3) {
    o.availableOnRestrictedVip = true;
    o.knownLimitations = true;
    o.name = 'foo';
    o.serviceSupportStage = 'foo';
    o.supportStage = 'foo';
    o.supportedMethods = buildUnnamed52();
    o.title = 'foo';
  }
  buildCounterSupportedService--;
  return o;
}

void checkSupportedService(api.SupportedService o) {
  buildCounterSupportedService++;
  if (buildCounterSupportedService < 3) {
    unittest.expect(o.availableOnRestrictedVip!, unittest.isTrue);
    unittest.expect(o.knownLimitations!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.serviceSupportStage!, unittest.equals('foo'));
    unittest.expect(o.supportStage!, unittest.equals('foo'));
    checkUnnamed52(o.supportedMethods!);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterSupportedService--;
}

core.List<core.String> buildUnnamed53() => ['foo', 'foo'];

void checkUnnamed53(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed53();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed53(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed54() => ['foo', 'foo'];

void checkUnnamed54(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed54();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed54(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVpcAccessibleServices = 0;
api.VpcAccessibleServices buildVpcAccessibleServices() {
  final o = api.VpcAccessibleServices();
  buildCounterVpcAccessibleServices++;
  if (buildCounterVpcAccessibleServices < 3) {
    o.allowedServices = buildUnnamed55();
    o.enableRestriction = true;
  }
  buildCounterVpcAccessibleServices--;
  return o;
}

void checkVpcAccessibleServices(api.VpcAccessibleServices o) {
  buildCounterVpcAccessibleServices++;
  if (buildCounterVpcAccessibleServices < 3) {
    checkUnnamed55(o.allowedServices!);
    unittest.expect(o.enableRestriction!, unittest.isTrue);
  }
  buildCounterVpcAccessibleServices--;
}

core.int buildCounterVpcNetworkSource = 0;
api.VpcNetworkSource buildVpcNetworkSource() {
  final o = api.VpcNetworkSource();
  buildCounterVpcNetworkSource++;
  if (buildCounterVpcNetworkSource < 3) {
    o.vpcSubnetwork = buildVpcSubNetwork();
  }
  buildCounterVpcNetworkSource--;
  return o;
}

void checkVpcNetworkSource(api.VpcNetworkSource o) {
  buildCounterVpcNetworkSource++;
  if (buildCounterVpcNetworkSource < 3) {
    checkVpcSubNetwork(o.vpcSubnetwork!);
  }
  buildCounterVpcNetworkSource--;
}

core.List<core.String> buildUnnamed56() => ['foo', 'foo'];

void checkUnnamed56(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVpcSubNetwork = 0;
api.VpcSubNetwork buildVpcSubNetwork() {
  final o = api.VpcSubNetwork();
  buildCounterVpcSubNetwork++;
  if (buildCounterVpcSubNetwork < 3) {
    o.network = 'foo';
    o.vpcIpSubnetworks = buildUnnamed56();
  }
  buildCounterVpcSubNetwork--;
  return o;
}

void checkVpcSubNetwork(api.VpcSubNetwork o) {
  buildCounterVpcSubNetwork++;
  if (buildCounterVpcSubNetwork < 3) {
    unittest.expect(o.network!, unittest.equals('foo'));
    checkUnnamed56(o.vpcIpSubnetworks!);
  }
  buildCounterVpcSubNetwork--;
}

void main() {
  unittest.group('obj-schema-AccessLevel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessLevel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessLevel(od);
    });
  });

  unittest.group('obj-schema-AccessPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessPolicy(od);
    });
  });

  unittest.group('obj-schema-AccessScope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessScope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessScope.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessScope(od);
    });
  });

  unittest.group('obj-schema-AccessSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessSettings(od);
    });
  });

  unittest.group('obj-schema-ApiOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApiOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApiOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApiOperation(od);
    });
  });

  unittest.group('obj-schema-Application', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Application.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplication(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-AuthorizedOrgsDesc', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorizedOrgsDesc();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorizedOrgsDesc.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthorizedOrgsDesc(od);
    });
  });

  unittest.group('obj-schema-BasicLevel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasicLevel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBasicLevel(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-ClientScope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientScope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientScope.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClientScope(od);
    });
  });

  unittest.group('obj-schema-CommitServicePerimetersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitServicePerimetersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitServicePerimetersRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommitServicePerimetersRequest(od);
    });
  });

  unittest.group('obj-schema-Condition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Condition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCondition(od);
    });
  });

  unittest.group('obj-schema-CustomLevel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomLevel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomLevel(od);
    });
  });

  unittest.group('obj-schema-DevicePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDevicePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DevicePolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDevicePolicy(od);
    });
  });

  unittest.group('obj-schema-EgressFrom', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEgressFrom();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EgressFrom.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEgressFrom(od);
    });
  });

  unittest.group('obj-schema-EgressPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEgressPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EgressPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEgressPolicy(od);
    });
  });

  unittest.group('obj-schema-EgressSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEgressSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EgressSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEgressSource(od);
    });
  });

  unittest.group('obj-schema-EgressTo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEgressTo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EgressTo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEgressTo(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Expr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-GcpUserAccessBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcpUserAccessBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcpUserAccessBinding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGcpUserAccessBinding(od);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPolicyOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetPolicyOptions(od);
    });
  });

  unittest.group('obj-schema-IngressFrom', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngressFrom();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngressFrom.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngressFrom(od);
    });
  });

  unittest.group('obj-schema-IngressPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngressPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngressPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngressPolicy(od);
    });
  });

  unittest.group('obj-schema-IngressSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngressSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngressSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngressSource(od);
    });
  });

  unittest.group('obj-schema-IngressTo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngressTo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngressTo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngressTo(od);
    });
  });

  unittest.group('obj-schema-ListAccessLevelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccessLevelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccessLevelsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAccessLevelsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAccessPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccessPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccessPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAccessPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListAuthorizedOrgsDescsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAuthorizedOrgsDescsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAuthorizedOrgsDescsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAuthorizedOrgsDescsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGcpUserAccessBindingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGcpUserAccessBindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGcpUserAccessBindingsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGcpUserAccessBindingsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListServicePerimetersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServicePerimetersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServicePerimetersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListServicePerimetersResponse(od);
    });
  });

  unittest.group('obj-schema-ListSupportedServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSupportedServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSupportedServicesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSupportedServicesResponse(od);
    });
  });

  unittest.group('obj-schema-MethodSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMethodSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MethodSelector.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMethodSelector(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-OsConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOsConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OsConstraint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOsConstraint(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-ReplaceAccessLevelsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceAccessLevelsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceAccessLevelsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReplaceAccessLevelsRequest(od);
    });
  });

  unittest.group('obj-schema-ReplaceServicePerimetersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceServicePerimetersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceServicePerimetersRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReplaceServicePerimetersRequest(od);
    });
  });

  unittest.group('obj-schema-ScopedAccessSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScopedAccessSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScopedAccessSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScopedAccessSettings(od);
    });
  });

  unittest.group('obj-schema-ServicePerimeter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServicePerimeter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServicePerimeter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServicePerimeter(od);
    });
  });

  unittest.group('obj-schema-ServicePerimeterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServicePerimeterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServicePerimeterConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServicePerimeterConfig(od);
    });
  });

  unittest.group('obj-schema-SessionSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSessionSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SessionSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSessionSettings(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-SupportedService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSupportedService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SupportedService.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSupportedService(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-VpcAccessibleServices', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVpcAccessibleServices();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VpcAccessibleServices.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVpcAccessibleServices(od);
    });
  });

  unittest.group('obj-schema-VpcNetworkSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVpcNetworkSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VpcNetworkSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVpcNetworkSource(od);
    });
  });

  unittest.group('obj-schema-VpcSubNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVpcSubNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VpcSubNetwork.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVpcSubNetwork(od);
    });
  });

  unittest.group('resource-AccessPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies;
      final arg_request = buildAccessPolicy();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AccessPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAccessPolicy(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAccessPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAccessPolicy(response as api.AccessPolicy);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAccessPoliciesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkListAccessPoliciesResponse(
        response as api.ListAccessPoliciesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies;
      final arg_request = buildAccessPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AccessPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAccessPolicy(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-AccessPoliciesAccessLevelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      final arg_request = buildAccessLevel();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AccessLevel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAccessLevel(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      final arg_name = 'foo';
      final arg_accessLevelFormat = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAccessLevel());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        accessLevelFormat: arg_accessLevelFormat,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAccessLevelsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        accessLevelFormat: arg_accessLevelFormat,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAccessLevelsResponse(response as api.ListAccessLevelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      final arg_request = buildAccessLevel();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AccessLevel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAccessLevel(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--replaceAll', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      final arg_request = buildReplaceAccessLevelsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ReplaceAccessLevelsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReplaceAccessLevelsRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.replaceAll(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).accessPolicies.accessLevels;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-AccessPoliciesAuthorizedOrgsDescsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.authorizedOrgsDescs;
      final arg_request = buildAuthorizedOrgsDesc();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuthorizedOrgsDesc.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuthorizedOrgsDesc(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.authorizedOrgsDescs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.authorizedOrgsDescs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAuthorizedOrgsDesc());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAuthorizedOrgsDesc(response as api.AuthorizedOrgsDesc);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.authorizedOrgsDescs;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListAuthorizedOrgsDescsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAuthorizedOrgsDescsResponse(
        response as api.ListAuthorizedOrgsDescsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.authorizedOrgsDescs;
      final arg_request = buildAuthorizedOrgsDesc();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuthorizedOrgsDesc.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuthorizedOrgsDesc(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CommitServicePerimetersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCommitServicePerimetersRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.commit(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
      final arg_request = buildServicePerimeter();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ServicePerimeter.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkServicePerimeter(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildServicePerimeter());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListServicePerimetersResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListServicePerimetersResponse(
        response as api.ListServicePerimetersResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
      final arg_request = buildServicePerimeter();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ServicePerimeter.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkServicePerimeter(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--replaceAll', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
      final arg_request = buildReplaceServicePerimetersRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ReplaceServicePerimetersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReplaceServicePerimetersRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.replaceAll(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).accessPolicies.servicePerimeters;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelOperationRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
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
      final arg_returnPartialSuccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GcpUserAccessBinding.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGcpUserAccessBinding(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).organizations.gcpUserAccessBindings;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).organizations.gcpUserAccessBindings;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGcpUserAccessBinding());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListGcpUserAccessBindingsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListGcpUserAccessBindingsResponse(
        response as api.ListGcpUserAccessBindingsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.AccessContextManagerApi(mock).organizations.gcpUserAccessBindings;
      final arg_request = buildGcpUserAccessBinding();
      final arg_name = 'foo';
      final arg_append = true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GcpUserAccessBinding.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGcpUserAccessBinding(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['append']!.first,
            unittest.equals('$arg_append'),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        append: arg_append,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ServicesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).services;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/services/'),
          );
          pathOffset += 12;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_name'));

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSupportedService());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSupportedService(response as api.SupportedService);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AccessContextManagerApi(mock).services;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('v1/services'),
          );
          pathOffset += 11;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListSupportedServicesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListSupportedServicesResponse(
        response as api.ListSupportedServicesResponse,
      );
    });
  });
}
