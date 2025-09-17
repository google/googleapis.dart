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

import 'package:googleapis/cloudasset/v1p5beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudOrgpolicyV1Policy> buildUnnamed1() => [
  buildGoogleCloudOrgpolicyV1Policy(),
  buildGoogleCloudOrgpolicyV1Policy(),
];

void checkUnnamed1(core.List<api.GoogleCloudOrgpolicyV1Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudOrgpolicyV1Policy(o[0]);
  checkGoogleCloudOrgpolicyV1Policy(o[1]);
}

core.int buildCounterAsset = 0;
api.Asset buildAsset() {
  final o = api.Asset();
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    o.accessLevel = buildGoogleIdentityAccesscontextmanagerV1AccessLevel();
    o.accessPolicy = buildGoogleIdentityAccesscontextmanagerV1AccessPolicy();
    o.ancestors = buildUnnamed0();
    o.assetType = 'foo';
    o.iamPolicy = buildPolicy();
    o.name = 'foo';
    o.orgPolicy = buildUnnamed1();
    o.resource = buildResource();
    o.servicePerimeter =
        buildGoogleIdentityAccesscontextmanagerV1ServicePerimeter();
  }
  buildCounterAsset--;
  return o;
}

void checkAsset(api.Asset o) {
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    checkGoogleIdentityAccesscontextmanagerV1AccessLevel(o.accessLevel!);
    checkGoogleIdentityAccesscontextmanagerV1AccessPolicy(o.accessPolicy!);
    checkUnnamed0(o.ancestors!);
    unittest.expect(o.assetType!, unittest.equals('foo'));
    checkPolicy(o.iamPolicy!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed1(o.orgPolicy!);
    checkResource(o.resource!);
    checkGoogleIdentityAccesscontextmanagerV1ServicePerimeter(
      o.servicePerimeter!,
    );
  }
  buildCounterAsset--;
}

core.List<api.AuditLogConfig> buildUnnamed2() => [
  buildAuditLogConfig(),
  buildAuditLogConfig(),
];

void checkUnnamed2(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed2();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed2(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed3();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed3(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
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
    o.members = buildUnnamed4();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed4(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
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

core.int buildCounterGoogleCloudOrgpolicyV1BooleanPolicy = 0;
api.GoogleCloudOrgpolicyV1BooleanPolicy
buildGoogleCloudOrgpolicyV1BooleanPolicy() {
  final o = api.GoogleCloudOrgpolicyV1BooleanPolicy();
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1BooleanPolicy < 3) {
    o.enforced = true;
  }
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy--;
  return o;
}

void checkGoogleCloudOrgpolicyV1BooleanPolicy(
  api.GoogleCloudOrgpolicyV1BooleanPolicy o,
) {
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1BooleanPolicy < 3) {
    unittest.expect(o.enforced!, unittest.isTrue);
  }
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudOrgpolicyV1ListPolicy = 0;
api.GoogleCloudOrgpolicyV1ListPolicy buildGoogleCloudOrgpolicyV1ListPolicy() {
  final o = api.GoogleCloudOrgpolicyV1ListPolicy();
  buildCounterGoogleCloudOrgpolicyV1ListPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1ListPolicy < 3) {
    o.allValues = 'foo';
    o.allowedValues = buildUnnamed5();
    o.deniedValues = buildUnnamed6();
    o.inheritFromParent = true;
    o.suggestedValue = 'foo';
  }
  buildCounterGoogleCloudOrgpolicyV1ListPolicy--;
  return o;
}

void checkGoogleCloudOrgpolicyV1ListPolicy(
  api.GoogleCloudOrgpolicyV1ListPolicy o,
) {
  buildCounterGoogleCloudOrgpolicyV1ListPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1ListPolicy < 3) {
    unittest.expect(o.allValues!, unittest.equals('foo'));
    checkUnnamed5(o.allowedValues!);
    checkUnnamed6(o.deniedValues!);
    unittest.expect(o.inheritFromParent!, unittest.isTrue);
    unittest.expect(o.suggestedValue!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudOrgpolicyV1ListPolicy--;
}

core.int buildCounterGoogleCloudOrgpolicyV1Policy = 0;
api.GoogleCloudOrgpolicyV1Policy buildGoogleCloudOrgpolicyV1Policy() {
  final o = api.GoogleCloudOrgpolicyV1Policy();
  buildCounterGoogleCloudOrgpolicyV1Policy++;
  if (buildCounterGoogleCloudOrgpolicyV1Policy < 3) {
    o.booleanPolicy = buildGoogleCloudOrgpolicyV1BooleanPolicy();
    o.constraint = 'foo';
    o.etag = 'foo';
    o.listPolicy = buildGoogleCloudOrgpolicyV1ListPolicy();
    o.restoreDefault = buildGoogleCloudOrgpolicyV1RestoreDefault();
    o.updateTime = 'foo';
    o.version = 42;
  }
  buildCounterGoogleCloudOrgpolicyV1Policy--;
  return o;
}

void checkGoogleCloudOrgpolicyV1Policy(api.GoogleCloudOrgpolicyV1Policy o) {
  buildCounterGoogleCloudOrgpolicyV1Policy++;
  if (buildCounterGoogleCloudOrgpolicyV1Policy < 3) {
    checkGoogleCloudOrgpolicyV1BooleanPolicy(o.booleanPolicy!);
    unittest.expect(o.constraint!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkGoogleCloudOrgpolicyV1ListPolicy(o.listPolicy!);
    checkGoogleCloudOrgpolicyV1RestoreDefault(o.restoreDefault!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterGoogleCloudOrgpolicyV1Policy--;
}

core.int buildCounterGoogleCloudOrgpolicyV1RestoreDefault = 0;
api.GoogleCloudOrgpolicyV1RestoreDefault
buildGoogleCloudOrgpolicyV1RestoreDefault() {
  final o = api.GoogleCloudOrgpolicyV1RestoreDefault();
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault++;
  if (buildCounterGoogleCloudOrgpolicyV1RestoreDefault < 3) {}
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault--;
  return o;
}

void checkGoogleCloudOrgpolicyV1RestoreDefault(
  api.GoogleCloudOrgpolicyV1RestoreDefault o,
) {
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault++;
  if (buildCounterGoogleCloudOrgpolicyV1RestoreDefault < 3) {}
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel = 0;
api.GoogleIdentityAccesscontextmanagerV1AccessLevel
buildGoogleIdentityAccesscontextmanagerV1AccessLevel() {
  final o = api.GoogleIdentityAccesscontextmanagerV1AccessLevel();
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel < 3) {
    o.basic = buildGoogleIdentityAccesscontextmanagerV1BasicLevel();
    o.custom = buildGoogleIdentityAccesscontextmanagerV1CustomLevel();
    o.description = 'foo';
    o.name = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1AccessLevel(
  api.GoogleIdentityAccesscontextmanagerV1AccessLevel o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel < 3) {
    checkGoogleIdentityAccesscontextmanagerV1BasicLevel(o.basic!);
    checkGoogleIdentityAccesscontextmanagerV1CustomLevel(o.custom!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy = 0;
api.GoogleIdentityAccesscontextmanagerV1AccessPolicy
buildGoogleIdentityAccesscontextmanagerV1AccessPolicy() {
  final o = api.GoogleIdentityAccesscontextmanagerV1AccessPolicy();
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy < 3) {
    o.etag = 'foo';
    o.name = 'foo';
    o.parent = 'foo';
    o.scopes = buildUnnamed7();
    o.title = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1AccessPolicy(
  api.GoogleIdentityAccesscontextmanagerV1AccessPolicy o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy < 3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkUnnamed7(o.scopes!);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy--;
}

core.List<api.GoogleIdentityAccesscontextmanagerV1MethodSelector>
buildUnnamed8() => [
  buildGoogleIdentityAccesscontextmanagerV1MethodSelector(),
  buildGoogleIdentityAccesscontextmanagerV1MethodSelector(),
];

void checkUnnamed8(
  core.List<api.GoogleIdentityAccesscontextmanagerV1MethodSelector> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1MethodSelector(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1MethodSelector(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation = 0;
api.GoogleIdentityAccesscontextmanagerV1ApiOperation
buildGoogleIdentityAccesscontextmanagerV1ApiOperation() {
  final o = api.GoogleIdentityAccesscontextmanagerV1ApiOperation();
  buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation < 3) {
    o.methodSelectors = buildUnnamed8();
    o.serviceName = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1ApiOperation(
  api.GoogleIdentityAccesscontextmanagerV1ApiOperation o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation < 3) {
    checkUnnamed8(o.methodSelectors!);
    unittest.expect(o.serviceName!, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation--;
}

core.List<api.GoogleIdentityAccesscontextmanagerV1Condition> buildUnnamed9() =>
    [
      buildGoogleIdentityAccesscontextmanagerV1Condition(),
      buildGoogleIdentityAccesscontextmanagerV1Condition(),
    ];

void checkUnnamed9(
  core.List<api.GoogleIdentityAccesscontextmanagerV1Condition> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1Condition(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1Condition(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel = 0;
api.GoogleIdentityAccesscontextmanagerV1BasicLevel
buildGoogleIdentityAccesscontextmanagerV1BasicLevel() {
  final o = api.GoogleIdentityAccesscontextmanagerV1BasicLevel();
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel < 3) {
    o.combiningFunction = 'foo';
    o.conditions = buildUnnamed9();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1BasicLevel(
  api.GoogleIdentityAccesscontextmanagerV1BasicLevel o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel < 3) {
    unittest.expect(o.combiningFunction!, unittest.equals('foo'));
    checkUnnamed9(o.conditions!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel--;
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

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleIdentityAccesscontextmanagerV1VpcNetworkSource>
buildUnnamed14() => [
  buildGoogleIdentityAccesscontextmanagerV1VpcNetworkSource(),
  buildGoogleIdentityAccesscontextmanagerV1VpcNetworkSource(),
];

void checkUnnamed14(
  core.List<api.GoogleIdentityAccesscontextmanagerV1VpcNetworkSource> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1VpcNetworkSource(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1VpcNetworkSource(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1Condition = 0;
api.GoogleIdentityAccesscontextmanagerV1Condition
buildGoogleIdentityAccesscontextmanagerV1Condition() {
  final o = api.GoogleIdentityAccesscontextmanagerV1Condition();
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1Condition < 3) {
    o.devicePolicy = buildGoogleIdentityAccesscontextmanagerV1DevicePolicy();
    o.ipSubnetworks = buildUnnamed10();
    o.members = buildUnnamed11();
    o.negate = true;
    o.regions = buildUnnamed12();
    o.requiredAccessLevels = buildUnnamed13();
    o.vpcNetworkSources = buildUnnamed14();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1Condition(
  api.GoogleIdentityAccesscontextmanagerV1Condition o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1Condition < 3) {
    checkGoogleIdentityAccesscontextmanagerV1DevicePolicy(o.devicePolicy!);
    checkUnnamed10(o.ipSubnetworks!);
    checkUnnamed11(o.members!);
    unittest.expect(o.negate!, unittest.isTrue);
    checkUnnamed12(o.regions!);
    checkUnnamed13(o.requiredAccessLevels!);
    checkUnnamed14(o.vpcNetworkSources!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel = 0;
api.GoogleIdentityAccesscontextmanagerV1CustomLevel
buildGoogleIdentityAccesscontextmanagerV1CustomLevel() {
  final o = api.GoogleIdentityAccesscontextmanagerV1CustomLevel();
  buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel < 3) {
    o.expr = buildExpr();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1CustomLevel(
  api.GoogleIdentityAccesscontextmanagerV1CustomLevel o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel < 3) {
    checkExpr(o.expr!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleIdentityAccesscontextmanagerV1OsConstraint>
buildUnnamed17() => [
  buildGoogleIdentityAccesscontextmanagerV1OsConstraint(),
  buildGoogleIdentityAccesscontextmanagerV1OsConstraint(),
];

void checkUnnamed17(
  core.List<api.GoogleIdentityAccesscontextmanagerV1OsConstraint> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1OsConstraint(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1OsConstraint(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy = 0;
api.GoogleIdentityAccesscontextmanagerV1DevicePolicy
buildGoogleIdentityAccesscontextmanagerV1DevicePolicy() {
  final o = api.GoogleIdentityAccesscontextmanagerV1DevicePolicy();
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy < 3) {
    o.allowedDeviceManagementLevels = buildUnnamed15();
    o.allowedEncryptionStatuses = buildUnnamed16();
    o.osConstraints = buildUnnamed17();
    o.requireAdminApproval = true;
    o.requireCorpOwned = true;
    o.requireScreenlock = true;
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1DevicePolicy(
  api.GoogleIdentityAccesscontextmanagerV1DevicePolicy o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy < 3) {
    checkUnnamed15(o.allowedDeviceManagementLevels!);
    checkUnnamed16(o.allowedEncryptionStatuses!);
    checkUnnamed17(o.osConstraints!);
    unittest.expect(o.requireAdminApproval!, unittest.isTrue);
    unittest.expect(o.requireCorpOwned!, unittest.isTrue);
    unittest.expect(o.requireScreenlock!, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleIdentityAccesscontextmanagerV1EgressSource>
buildUnnamed19() => [
  buildGoogleIdentityAccesscontextmanagerV1EgressSource(),
  buildGoogleIdentityAccesscontextmanagerV1EgressSource(),
];

void checkUnnamed19(
  core.List<api.GoogleIdentityAccesscontextmanagerV1EgressSource> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1EgressSource(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1EgressSource(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom = 0;
api.GoogleIdentityAccesscontextmanagerV1EgressFrom
buildGoogleIdentityAccesscontextmanagerV1EgressFrom() {
  final o = api.GoogleIdentityAccesscontextmanagerV1EgressFrom();
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom < 3) {
    o.identities = buildUnnamed18();
    o.identityType = 'foo';
    o.sourceRestriction = 'foo';
    o.sources = buildUnnamed19();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1EgressFrom(
  api.GoogleIdentityAccesscontextmanagerV1EgressFrom o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom < 3) {
    checkUnnamed18(o.identities!);
    unittest.expect(o.identityType!, unittest.equals('foo'));
    unittest.expect(o.sourceRestriction!, unittest.equals('foo'));
    checkUnnamed19(o.sources!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy = 0;
api.GoogleIdentityAccesscontextmanagerV1EgressPolicy
buildGoogleIdentityAccesscontextmanagerV1EgressPolicy() {
  final o = api.GoogleIdentityAccesscontextmanagerV1EgressPolicy();
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy < 3) {
    o.egressFrom = buildGoogleIdentityAccesscontextmanagerV1EgressFrom();
    o.egressTo = buildGoogleIdentityAccesscontextmanagerV1EgressTo();
    o.title = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1EgressPolicy(
  api.GoogleIdentityAccesscontextmanagerV1EgressPolicy o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy < 3) {
    checkGoogleIdentityAccesscontextmanagerV1EgressFrom(o.egressFrom!);
    checkGoogleIdentityAccesscontextmanagerV1EgressTo(o.egressTo!);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1EgressSource = 0;
api.GoogleIdentityAccesscontextmanagerV1EgressSource
buildGoogleIdentityAccesscontextmanagerV1EgressSource() {
  final o = api.GoogleIdentityAccesscontextmanagerV1EgressSource();
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressSource++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressSource < 3) {
    o.accessLevel = 'foo';
    o.resource = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressSource--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1EgressSource(
  api.GoogleIdentityAccesscontextmanagerV1EgressSource o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressSource++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressSource < 3) {
    unittest.expect(o.accessLevel!, unittest.equals('foo'));
    unittest.expect(o.resource!, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressSource--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleIdentityAccesscontextmanagerV1ApiOperation>
buildUnnamed21() => [
  buildGoogleIdentityAccesscontextmanagerV1ApiOperation(),
  buildGoogleIdentityAccesscontextmanagerV1ApiOperation(),
];

void checkUnnamed21(
  core.List<api.GoogleIdentityAccesscontextmanagerV1ApiOperation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1ApiOperation(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1ApiOperation(o[1]);
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

core.int buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo = 0;
api.GoogleIdentityAccesscontextmanagerV1EgressTo
buildGoogleIdentityAccesscontextmanagerV1EgressTo() {
  final o = api.GoogleIdentityAccesscontextmanagerV1EgressTo();
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo < 3) {
    o.externalResources = buildUnnamed20();
    o.operations = buildUnnamed21();
    o.resources = buildUnnamed22();
    o.roles = buildUnnamed23();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1EgressTo(
  api.GoogleIdentityAccesscontextmanagerV1EgressTo o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo < 3) {
    checkUnnamed20(o.externalResources!);
    checkUnnamed21(o.operations!);
    checkUnnamed22(o.resources!);
    checkUnnamed23(o.roles!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo--;
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleIdentityAccesscontextmanagerV1IngressSource>
buildUnnamed25() => [
  buildGoogleIdentityAccesscontextmanagerV1IngressSource(),
  buildGoogleIdentityAccesscontextmanagerV1IngressSource(),
];

void checkUnnamed25(
  core.List<api.GoogleIdentityAccesscontextmanagerV1IngressSource> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1IngressSource(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1IngressSource(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom = 0;
api.GoogleIdentityAccesscontextmanagerV1IngressFrom
buildGoogleIdentityAccesscontextmanagerV1IngressFrom() {
  final o = api.GoogleIdentityAccesscontextmanagerV1IngressFrom();
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom < 3) {
    o.identities = buildUnnamed24();
    o.identityType = 'foo';
    o.sources = buildUnnamed25();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1IngressFrom(
  api.GoogleIdentityAccesscontextmanagerV1IngressFrom o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom < 3) {
    checkUnnamed24(o.identities!);
    unittest.expect(o.identityType!, unittest.equals('foo'));
    checkUnnamed25(o.sources!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy = 0;
api.GoogleIdentityAccesscontextmanagerV1IngressPolicy
buildGoogleIdentityAccesscontextmanagerV1IngressPolicy() {
  final o = api.GoogleIdentityAccesscontextmanagerV1IngressPolicy();
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy < 3) {
    o.ingressFrom = buildGoogleIdentityAccesscontextmanagerV1IngressFrom();
    o.ingressTo = buildGoogleIdentityAccesscontextmanagerV1IngressTo();
    o.title = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1IngressPolicy(
  api.GoogleIdentityAccesscontextmanagerV1IngressPolicy o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy < 3) {
    checkGoogleIdentityAccesscontextmanagerV1IngressFrom(o.ingressFrom!);
    checkGoogleIdentityAccesscontextmanagerV1IngressTo(o.ingressTo!);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource = 0;
api.GoogleIdentityAccesscontextmanagerV1IngressSource
buildGoogleIdentityAccesscontextmanagerV1IngressSource() {
  final o = api.GoogleIdentityAccesscontextmanagerV1IngressSource();
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource < 3) {
    o.accessLevel = 'foo';
    o.resource = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1IngressSource(
  api.GoogleIdentityAccesscontextmanagerV1IngressSource o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource < 3) {
    unittest.expect(o.accessLevel!, unittest.equals('foo'));
    unittest.expect(o.resource!, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource--;
}

core.List<api.GoogleIdentityAccesscontextmanagerV1ApiOperation>
buildUnnamed26() => [
  buildGoogleIdentityAccesscontextmanagerV1ApiOperation(),
  buildGoogleIdentityAccesscontextmanagerV1ApiOperation(),
];

void checkUnnamed26(
  core.List<api.GoogleIdentityAccesscontextmanagerV1ApiOperation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1ApiOperation(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1ApiOperation(o[1]);
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo = 0;
api.GoogleIdentityAccesscontextmanagerV1IngressTo
buildGoogleIdentityAccesscontextmanagerV1IngressTo() {
  final o = api.GoogleIdentityAccesscontextmanagerV1IngressTo();
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo < 3) {
    o.operations = buildUnnamed26();
    o.resources = buildUnnamed27();
    o.roles = buildUnnamed28();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1IngressTo(
  api.GoogleIdentityAccesscontextmanagerV1IngressTo o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo < 3) {
    checkUnnamed26(o.operations!);
    checkUnnamed27(o.resources!);
    checkUnnamed28(o.roles!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector = 0;
api.GoogleIdentityAccesscontextmanagerV1MethodSelector
buildGoogleIdentityAccesscontextmanagerV1MethodSelector() {
  final o = api.GoogleIdentityAccesscontextmanagerV1MethodSelector();
  buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector < 3) {
    o.method = 'foo';
    o.permission = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1MethodSelector(
  api.GoogleIdentityAccesscontextmanagerV1MethodSelector o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector < 3) {
    unittest.expect(o.method!, unittest.equals('foo'));
    unittest.expect(o.permission!, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint = 0;
api.GoogleIdentityAccesscontextmanagerV1OsConstraint
buildGoogleIdentityAccesscontextmanagerV1OsConstraint() {
  final o = api.GoogleIdentityAccesscontextmanagerV1OsConstraint();
  buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint < 3) {
    o.minimumVersion = 'foo';
    o.osType = 'foo';
    o.requireVerifiedChromeOs = true;
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1OsConstraint(
  api.GoogleIdentityAccesscontextmanagerV1OsConstraint o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint < 3) {
    unittest.expect(o.minimumVersion!, unittest.equals('foo'));
    unittest.expect(o.osType!, unittest.equals('foo'));
    unittest.expect(o.requireVerifiedChromeOs!, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter = 0;
api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter
buildGoogleIdentityAccesscontextmanagerV1ServicePerimeter() {
  final o = api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter();
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter < 3) {
    o.description = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.perimeterType = 'foo';
    o.spec = buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
    o.status =
        buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
    o.title = 'foo';
    o.useExplicitDryRunSpec = true;
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1ServicePerimeter(
  api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.perimeterType!, unittest.equals('foo'));
    checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(o.spec!);
    checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(o.status!);
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.useExplicitDryRunSpec!, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter--;
}

core.List<core.String> buildUnnamed29() => ['foo', 'foo'];

void checkUnnamed29(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleIdentityAccesscontextmanagerV1EgressPolicy>
buildUnnamed30() => [
  buildGoogleIdentityAccesscontextmanagerV1EgressPolicy(),
  buildGoogleIdentityAccesscontextmanagerV1EgressPolicy(),
];

void checkUnnamed30(
  core.List<api.GoogleIdentityAccesscontextmanagerV1EgressPolicy> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1EgressPolicy(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1EgressPolicy(o[1]);
}

core.List<api.GoogleIdentityAccesscontextmanagerV1IngressPolicy>
buildUnnamed31() => [
  buildGoogleIdentityAccesscontextmanagerV1IngressPolicy(),
  buildGoogleIdentityAccesscontextmanagerV1IngressPolicy(),
];

void checkUnnamed31(
  core.List<api.GoogleIdentityAccesscontextmanagerV1IngressPolicy> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1IngressPolicy(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1IngressPolicy(o[1]);
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig = 0;
api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig() {
  final o = api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig <
      3) {
    o.accessLevels = buildUnnamed29();
    o.egressPolicies = buildUnnamed30();
    o.ingressPolicies = buildUnnamed31();
    o.resources = buildUnnamed32();
    o.restrictedServices = buildUnnamed33();
    o.vpcAccessibleServices =
        buildGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(
  api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig <
      3) {
    checkUnnamed29(o.accessLevels!);
    checkUnnamed30(o.egressPolicies!);
    checkUnnamed31(o.ingressPolicies!);
    checkUnnamed32(o.resources!);
    checkUnnamed33(o.restrictedServices!);
    checkGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices(
      o.vpcAccessibleServices!,
    );
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig--;
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices =
    0;
api.GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
buildGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices() {
  final o = api.GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices();
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices <
      3) {
    o.allowedServices = buildUnnamed34();
    o.enableRestriction = true;
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices(
  api.GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices <
      3) {
    checkUnnamed34(o.allowedServices!);
    unittest.expect(o.enableRestriction!, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1VpcNetworkSource = 0;
api.GoogleIdentityAccesscontextmanagerV1VpcNetworkSource
buildGoogleIdentityAccesscontextmanagerV1VpcNetworkSource() {
  final o = api.GoogleIdentityAccesscontextmanagerV1VpcNetworkSource();
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcNetworkSource++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1VpcNetworkSource < 3) {
    o.vpcSubnetwork = buildGoogleIdentityAccesscontextmanagerV1VpcSubNetwork();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcNetworkSource--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1VpcNetworkSource(
  api.GoogleIdentityAccesscontextmanagerV1VpcNetworkSource o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcNetworkSource++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1VpcNetworkSource < 3) {
    checkGoogleIdentityAccesscontextmanagerV1VpcSubNetwork(o.vpcSubnetwork!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcNetworkSource--;
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1VpcSubNetwork = 0;
api.GoogleIdentityAccesscontextmanagerV1VpcSubNetwork
buildGoogleIdentityAccesscontextmanagerV1VpcSubNetwork() {
  final o = api.GoogleIdentityAccesscontextmanagerV1VpcSubNetwork();
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcSubNetwork++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1VpcSubNetwork < 3) {
    o.network = 'foo';
    o.vpcIpSubnetworks = buildUnnamed35();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcSubNetwork--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1VpcSubNetwork(
  api.GoogleIdentityAccesscontextmanagerV1VpcSubNetwork o,
) {
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcSubNetwork++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1VpcSubNetwork < 3) {
    unittest.expect(o.network!, unittest.equals('foo'));
    checkUnnamed35(o.vpcIpSubnetworks!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcSubNetwork--;
}

core.List<api.Asset> buildUnnamed36() => [buildAsset(), buildAsset()];

void checkUnnamed36(core.List<api.Asset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsset(o[0]);
  checkAsset(o[1]);
}

core.int buildCounterListAssetsResponse = 0;
api.ListAssetsResponse buildListAssetsResponse() {
  final o = api.ListAssetsResponse();
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    o.assets = buildUnnamed36();
    o.nextPageToken = 'foo';
    o.readTime = 'foo';
  }
  buildCounterListAssetsResponse--;
  return o;
}

void checkListAssetsResponse(api.ListAssetsResponse o) {
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    checkUnnamed36(o.assets!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.readTime!, unittest.equals('foo'));
  }
  buildCounterListAssetsResponse--;
}

core.List<api.AuditConfig> buildUnnamed37() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed37(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed38() => [buildBinding(), buildBinding()];

void checkUnnamed38(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed37();
    o.bindings = buildUnnamed38();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed37(o.auditConfigs!);
    checkUnnamed38(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
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

core.int buildCounterResource = 0;
api.Resource buildResource() {
  final o = api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.data = buildUnnamed39();
    o.discoveryDocumentUri = 'foo';
    o.discoveryName = 'foo';
    o.parent = 'foo';
    o.resourceUrl = 'foo';
    o.version = 'foo';
  }
  buildCounterResource--;
  return o;
}

void checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkUnnamed39(o.data!);
    unittest.expect(o.discoveryDocumentUri!, unittest.equals('foo'));
    unittest.expect(o.discoveryName!, unittest.equals('foo'));
    unittest.expect(o.parent!, unittest.equals('foo'));
    unittest.expect(o.resourceUrl!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterResource--;
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Asset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Asset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAsset(od);
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

  unittest.group('obj-schema-GoogleCloudOrgpolicyV1BooleanPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV1BooleanPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV1BooleanPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudOrgpolicyV1BooleanPolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV1ListPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV1ListPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV1ListPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudOrgpolicyV1ListPolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV1Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV1Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV1Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudOrgpolicyV1Policy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV1RestoreDefault', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV1RestoreDefault();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV1RestoreDefault.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudOrgpolicyV1RestoreDefault(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1AccessLevel',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1AccessLevel();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleIdentityAccesscontextmanagerV1AccessLevel.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1AccessLevel(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1AccessPolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1AccessPolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleIdentityAccesscontextmanagerV1AccessPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1AccessPolicy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1ApiOperation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1ApiOperation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleIdentityAccesscontextmanagerV1ApiOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1ApiOperation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1BasicLevel',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1BasicLevel();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleIdentityAccesscontextmanagerV1BasicLevel.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1BasicLevel(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1Condition',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1Condition();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleIdentityAccesscontextmanagerV1Condition.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1Condition(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1CustomLevel',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1CustomLevel();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleIdentityAccesscontextmanagerV1CustomLevel.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1CustomLevel(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1DevicePolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1DevicePolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleIdentityAccesscontextmanagerV1DevicePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1DevicePolicy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1EgressFrom',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1EgressFrom();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleIdentityAccesscontextmanagerV1EgressFrom.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1EgressFrom(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1EgressPolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1EgressPolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleIdentityAccesscontextmanagerV1EgressPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1EgressPolicy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1EgressSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1EgressSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleIdentityAccesscontextmanagerV1EgressSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1EgressSource(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1EgressTo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1EgressTo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1EgressTo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIdentityAccesscontextmanagerV1EgressTo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1IngressFrom',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1IngressFrom();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleIdentityAccesscontextmanagerV1IngressFrom.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1IngressFrom(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1IngressPolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1IngressPolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleIdentityAccesscontextmanagerV1IngressPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1IngressPolicy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1IngressSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1IngressSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleIdentityAccesscontextmanagerV1IngressSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1IngressSource(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1IngressTo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1IngressTo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleIdentityAccesscontextmanagerV1IngressTo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1IngressTo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1MethodSelector',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1MethodSelector();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleIdentityAccesscontextmanagerV1MethodSelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1MethodSelector(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1OsConstraint',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1OsConstraint();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleIdentityAccesscontextmanagerV1OsConstraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1OsConstraint(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1ServicePerimeter',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1ServicePerimeter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleIdentityAccesscontextmanagerV1ServicePerimeter.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1ServicePerimeter(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1VpcNetworkSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1VpcNetworkSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleIdentityAccesscontextmanagerV1VpcNetworkSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1VpcNetworkSource(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleIdentityAccesscontextmanagerV1VpcSubNetwork',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleIdentityAccesscontextmanagerV1VpcSubNetwork();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleIdentityAccesscontextmanagerV1VpcSubNetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleIdentityAccesscontextmanagerV1VpcSubNetwork(od);
      });
    },
  );

  unittest.group('obj-schema-ListAssetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAssetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAssetsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAssetsResponse(od);
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

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Resource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResource(od);
    });
  });

  unittest.group('resource-AssetsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).assets;
      final arg_parent = 'foo';
      final arg_assetTypes = buildUnnamed40();
      final arg_contentType = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readTime = 'foo';
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
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('v1p5beta1/'),
          );
          pathOffset += 10;
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
            queryMap['assetTypes']!,
            unittest.equals(arg_assetTypes),
          );
          unittest.expect(
            queryMap['contentType']!.first,
            unittest.equals(arg_contentType),
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
            queryMap['readTime']!.first,
            unittest.equals(arg_readTime),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAssetsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        assetTypes: arg_assetTypes,
        contentType: arg_contentType,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        readTime: arg_readTime,
        $fields: arg_$fields,
      );
      checkListAssetsResponse(response as api.ListAssetsResponse);
    });
  });
}
