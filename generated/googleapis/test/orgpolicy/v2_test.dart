// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/orgpolicy/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudOrgpolicyV2AlternatePolicySpec = 0;
api.GoogleCloudOrgpolicyV2AlternatePolicySpec
    buildGoogleCloudOrgpolicyV2AlternatePolicySpec() {
  final o = api.GoogleCloudOrgpolicyV2AlternatePolicySpec();
  buildCounterGoogleCloudOrgpolicyV2AlternatePolicySpec++;
  if (buildCounterGoogleCloudOrgpolicyV2AlternatePolicySpec < 3) {
    o.launch = 'foo';
    o.spec = buildGoogleCloudOrgpolicyV2PolicySpec();
  }
  buildCounterGoogleCloudOrgpolicyV2AlternatePolicySpec--;
  return o;
}

void checkGoogleCloudOrgpolicyV2AlternatePolicySpec(
    api.GoogleCloudOrgpolicyV2AlternatePolicySpec o) {
  buildCounterGoogleCloudOrgpolicyV2AlternatePolicySpec++;
  if (buildCounterGoogleCloudOrgpolicyV2AlternatePolicySpec < 3) {
    unittest.expect(
      o.launch!,
      unittest.equals('foo'),
    );
    checkGoogleCloudOrgpolicyV2PolicySpec(o.spec!);
  }
  buildCounterGoogleCloudOrgpolicyV2AlternatePolicySpec--;
}

core.int buildCounterGoogleCloudOrgpolicyV2Constraint = 0;
api.GoogleCloudOrgpolicyV2Constraint buildGoogleCloudOrgpolicyV2Constraint() {
  final o = api.GoogleCloudOrgpolicyV2Constraint();
  buildCounterGoogleCloudOrgpolicyV2Constraint++;
  if (buildCounterGoogleCloudOrgpolicyV2Constraint < 3) {
    o.booleanConstraint =
        buildGoogleCloudOrgpolicyV2ConstraintBooleanConstraint();
    o.constraintDefault = 'foo';
    o.customConstraint =
        buildGoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint();
    o.description = 'foo';
    o.displayName = 'foo';
    o.listConstraint = buildGoogleCloudOrgpolicyV2ConstraintListConstraint();
    o.name = 'foo';
    o.supportsDryRun = true;
  }
  buildCounterGoogleCloudOrgpolicyV2Constraint--;
  return o;
}

void checkGoogleCloudOrgpolicyV2Constraint(
    api.GoogleCloudOrgpolicyV2Constraint o) {
  buildCounterGoogleCloudOrgpolicyV2Constraint++;
  if (buildCounterGoogleCloudOrgpolicyV2Constraint < 3) {
    checkGoogleCloudOrgpolicyV2ConstraintBooleanConstraint(
        o.booleanConstraint!);
    unittest.expect(
      o.constraintDefault!,
      unittest.equals('foo'),
    );
    checkGoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint(
        o.customConstraint!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudOrgpolicyV2ConstraintListConstraint(o.listConstraint!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.supportsDryRun!, unittest.isTrue);
  }
  buildCounterGoogleCloudOrgpolicyV2Constraint--;
}

core.int buildCounterGoogleCloudOrgpolicyV2ConstraintBooleanConstraint = 0;
api.GoogleCloudOrgpolicyV2ConstraintBooleanConstraint
    buildGoogleCloudOrgpolicyV2ConstraintBooleanConstraint() {
  final o = api.GoogleCloudOrgpolicyV2ConstraintBooleanConstraint();
  buildCounterGoogleCloudOrgpolicyV2ConstraintBooleanConstraint++;
  if (buildCounterGoogleCloudOrgpolicyV2ConstraintBooleanConstraint < 3) {}
  buildCounterGoogleCloudOrgpolicyV2ConstraintBooleanConstraint--;
  return o;
}

void checkGoogleCloudOrgpolicyV2ConstraintBooleanConstraint(
    api.GoogleCloudOrgpolicyV2ConstraintBooleanConstraint o) {
  buildCounterGoogleCloudOrgpolicyV2ConstraintBooleanConstraint++;
  if (buildCounterGoogleCloudOrgpolicyV2ConstraintBooleanConstraint < 3) {}
  buildCounterGoogleCloudOrgpolicyV2ConstraintBooleanConstraint--;
}

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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
    buildCounterGoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint =
    0;
api.GoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint
    buildGoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint() {
  final o = api.GoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint();
  buildCounterGoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint++;
  if (buildCounterGoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint <
      3) {
    o.actionType = 'foo';
    o.condition = 'foo';
    o.methodTypes = buildUnnamed0();
    o.resourceTypes = buildUnnamed1();
  }
  buildCounterGoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint--;
  return o;
}

void checkGoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint(
    api.GoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint o) {
  buildCounterGoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint++;
  if (buildCounterGoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint <
      3) {
    unittest.expect(
      o.actionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.methodTypes!);
    checkUnnamed1(o.resourceTypes!);
  }
  buildCounterGoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint--;
}

core.int buildCounterGoogleCloudOrgpolicyV2ConstraintListConstraint = 0;
api.GoogleCloudOrgpolicyV2ConstraintListConstraint
    buildGoogleCloudOrgpolicyV2ConstraintListConstraint() {
  final o = api.GoogleCloudOrgpolicyV2ConstraintListConstraint();
  buildCounterGoogleCloudOrgpolicyV2ConstraintListConstraint++;
  if (buildCounterGoogleCloudOrgpolicyV2ConstraintListConstraint < 3) {
    o.supportsIn = true;
    o.supportsUnder = true;
  }
  buildCounterGoogleCloudOrgpolicyV2ConstraintListConstraint--;
  return o;
}

void checkGoogleCloudOrgpolicyV2ConstraintListConstraint(
    api.GoogleCloudOrgpolicyV2ConstraintListConstraint o) {
  buildCounterGoogleCloudOrgpolicyV2ConstraintListConstraint++;
  if (buildCounterGoogleCloudOrgpolicyV2ConstraintListConstraint < 3) {
    unittest.expect(o.supportsIn!, unittest.isTrue);
    unittest.expect(o.supportsUnder!, unittest.isTrue);
  }
  buildCounterGoogleCloudOrgpolicyV2ConstraintListConstraint--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudOrgpolicyV2CustomConstraint = 0;
api.GoogleCloudOrgpolicyV2CustomConstraint
    buildGoogleCloudOrgpolicyV2CustomConstraint() {
  final o = api.GoogleCloudOrgpolicyV2CustomConstraint();
  buildCounterGoogleCloudOrgpolicyV2CustomConstraint++;
  if (buildCounterGoogleCloudOrgpolicyV2CustomConstraint < 3) {
    o.actionType = 'foo';
    o.condition = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.methodTypes = buildUnnamed2();
    o.name = 'foo';
    o.resourceTypes = buildUnnamed3();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudOrgpolicyV2CustomConstraint--;
  return o;
}

void checkGoogleCloudOrgpolicyV2CustomConstraint(
    api.GoogleCloudOrgpolicyV2CustomConstraint o) {
  buildCounterGoogleCloudOrgpolicyV2CustomConstraint++;
  if (buildCounterGoogleCloudOrgpolicyV2CustomConstraint < 3) {
    unittest.expect(
      o.actionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.condition!,
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
    checkUnnamed2(o.methodTypes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.resourceTypes!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudOrgpolicyV2CustomConstraint--;
}

core.List<api.GoogleCloudOrgpolicyV2Constraint> buildUnnamed4() => [
      buildGoogleCloudOrgpolicyV2Constraint(),
      buildGoogleCloudOrgpolicyV2Constraint(),
    ];

void checkUnnamed4(core.List<api.GoogleCloudOrgpolicyV2Constraint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudOrgpolicyV2Constraint(o[0]);
  checkGoogleCloudOrgpolicyV2Constraint(o[1]);
}

core.int buildCounterGoogleCloudOrgpolicyV2ListConstraintsResponse = 0;
api.GoogleCloudOrgpolicyV2ListConstraintsResponse
    buildGoogleCloudOrgpolicyV2ListConstraintsResponse() {
  final o = api.GoogleCloudOrgpolicyV2ListConstraintsResponse();
  buildCounterGoogleCloudOrgpolicyV2ListConstraintsResponse++;
  if (buildCounterGoogleCloudOrgpolicyV2ListConstraintsResponse < 3) {
    o.constraints = buildUnnamed4();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudOrgpolicyV2ListConstraintsResponse--;
  return o;
}

void checkGoogleCloudOrgpolicyV2ListConstraintsResponse(
    api.GoogleCloudOrgpolicyV2ListConstraintsResponse o) {
  buildCounterGoogleCloudOrgpolicyV2ListConstraintsResponse++;
  if (buildCounterGoogleCloudOrgpolicyV2ListConstraintsResponse < 3) {
    checkUnnamed4(o.constraints!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudOrgpolicyV2ListConstraintsResponse--;
}

core.List<api.GoogleCloudOrgpolicyV2CustomConstraint> buildUnnamed5() => [
      buildGoogleCloudOrgpolicyV2CustomConstraint(),
      buildGoogleCloudOrgpolicyV2CustomConstraint(),
    ];

void checkUnnamed5(core.List<api.GoogleCloudOrgpolicyV2CustomConstraint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudOrgpolicyV2CustomConstraint(o[0]);
  checkGoogleCloudOrgpolicyV2CustomConstraint(o[1]);
}

core.int buildCounterGoogleCloudOrgpolicyV2ListCustomConstraintsResponse = 0;
api.GoogleCloudOrgpolicyV2ListCustomConstraintsResponse
    buildGoogleCloudOrgpolicyV2ListCustomConstraintsResponse() {
  final o = api.GoogleCloudOrgpolicyV2ListCustomConstraintsResponse();
  buildCounterGoogleCloudOrgpolicyV2ListCustomConstraintsResponse++;
  if (buildCounterGoogleCloudOrgpolicyV2ListCustomConstraintsResponse < 3) {
    o.customConstraints = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudOrgpolicyV2ListCustomConstraintsResponse--;
  return o;
}

void checkGoogleCloudOrgpolicyV2ListCustomConstraintsResponse(
    api.GoogleCloudOrgpolicyV2ListCustomConstraintsResponse o) {
  buildCounterGoogleCloudOrgpolicyV2ListCustomConstraintsResponse++;
  if (buildCounterGoogleCloudOrgpolicyV2ListCustomConstraintsResponse < 3) {
    checkUnnamed5(o.customConstraints!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudOrgpolicyV2ListCustomConstraintsResponse--;
}

core.List<api.GoogleCloudOrgpolicyV2Policy> buildUnnamed6() => [
      buildGoogleCloudOrgpolicyV2Policy(),
      buildGoogleCloudOrgpolicyV2Policy(),
    ];

void checkUnnamed6(core.List<api.GoogleCloudOrgpolicyV2Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudOrgpolicyV2Policy(o[0]);
  checkGoogleCloudOrgpolicyV2Policy(o[1]);
}

core.int buildCounterGoogleCloudOrgpolicyV2ListPoliciesResponse = 0;
api.GoogleCloudOrgpolicyV2ListPoliciesResponse
    buildGoogleCloudOrgpolicyV2ListPoliciesResponse() {
  final o = api.GoogleCloudOrgpolicyV2ListPoliciesResponse();
  buildCounterGoogleCloudOrgpolicyV2ListPoliciesResponse++;
  if (buildCounterGoogleCloudOrgpolicyV2ListPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.policies = buildUnnamed6();
  }
  buildCounterGoogleCloudOrgpolicyV2ListPoliciesResponse--;
  return o;
}

void checkGoogleCloudOrgpolicyV2ListPoliciesResponse(
    api.GoogleCloudOrgpolicyV2ListPoliciesResponse o) {
  buildCounterGoogleCloudOrgpolicyV2ListPoliciesResponse++;
  if (buildCounterGoogleCloudOrgpolicyV2ListPoliciesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.policies!);
  }
  buildCounterGoogleCloudOrgpolicyV2ListPoliciesResponse--;
}

core.int buildCounterGoogleCloudOrgpolicyV2Policy = 0;
api.GoogleCloudOrgpolicyV2Policy buildGoogleCloudOrgpolicyV2Policy() {
  final o = api.GoogleCloudOrgpolicyV2Policy();
  buildCounterGoogleCloudOrgpolicyV2Policy++;
  if (buildCounterGoogleCloudOrgpolicyV2Policy < 3) {
    o.alternate = buildGoogleCloudOrgpolicyV2AlternatePolicySpec();
    o.dryRunSpec = buildGoogleCloudOrgpolicyV2PolicySpec();
    o.etag = 'foo';
    o.name = 'foo';
    o.spec = buildGoogleCloudOrgpolicyV2PolicySpec();
  }
  buildCounterGoogleCloudOrgpolicyV2Policy--;
  return o;
}

void checkGoogleCloudOrgpolicyV2Policy(api.GoogleCloudOrgpolicyV2Policy o) {
  buildCounterGoogleCloudOrgpolicyV2Policy++;
  if (buildCounterGoogleCloudOrgpolicyV2Policy < 3) {
    checkGoogleCloudOrgpolicyV2AlternatePolicySpec(o.alternate!);
    checkGoogleCloudOrgpolicyV2PolicySpec(o.dryRunSpec!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudOrgpolicyV2PolicySpec(o.spec!);
  }
  buildCounterGoogleCloudOrgpolicyV2Policy--;
}

core.List<api.GoogleCloudOrgpolicyV2PolicySpecPolicyRule> buildUnnamed7() => [
      buildGoogleCloudOrgpolicyV2PolicySpecPolicyRule(),
      buildGoogleCloudOrgpolicyV2PolicySpecPolicyRule(),
    ];

void checkUnnamed7(
    core.List<api.GoogleCloudOrgpolicyV2PolicySpecPolicyRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudOrgpolicyV2PolicySpecPolicyRule(o[0]);
  checkGoogleCloudOrgpolicyV2PolicySpecPolicyRule(o[1]);
}

core.int buildCounterGoogleCloudOrgpolicyV2PolicySpec = 0;
api.GoogleCloudOrgpolicyV2PolicySpec buildGoogleCloudOrgpolicyV2PolicySpec() {
  final o = api.GoogleCloudOrgpolicyV2PolicySpec();
  buildCounterGoogleCloudOrgpolicyV2PolicySpec++;
  if (buildCounterGoogleCloudOrgpolicyV2PolicySpec < 3) {
    o.etag = 'foo';
    o.inheritFromParent = true;
    o.reset = true;
    o.rules = buildUnnamed7();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudOrgpolicyV2PolicySpec--;
  return o;
}

void checkGoogleCloudOrgpolicyV2PolicySpec(
    api.GoogleCloudOrgpolicyV2PolicySpec o) {
  buildCounterGoogleCloudOrgpolicyV2PolicySpec++;
  if (buildCounterGoogleCloudOrgpolicyV2PolicySpec < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(o.inheritFromParent!, unittest.isTrue);
    unittest.expect(o.reset!, unittest.isTrue);
    checkUnnamed7(o.rules!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudOrgpolicyV2PolicySpec--;
}

core.int buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRule = 0;
api.GoogleCloudOrgpolicyV2PolicySpecPolicyRule
    buildGoogleCloudOrgpolicyV2PolicySpecPolicyRule() {
  final o = api.GoogleCloudOrgpolicyV2PolicySpecPolicyRule();
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRule++;
  if (buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRule < 3) {
    o.allowAll = true;
    o.condition = buildGoogleTypeExpr();
    o.denyAll = true;
    o.enforce = true;
    o.values = buildGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues();
  }
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRule--;
  return o;
}

void checkGoogleCloudOrgpolicyV2PolicySpecPolicyRule(
    api.GoogleCloudOrgpolicyV2PolicySpecPolicyRule o) {
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRule++;
  if (buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRule < 3) {
    unittest.expect(o.allowAll!, unittest.isTrue);
    checkGoogleTypeExpr(o.condition!);
    unittest.expect(o.denyAll!, unittest.isTrue);
    unittest.expect(o.enforce!, unittest.isTrue);
    checkGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues(o.values!);
  }
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRule--;
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues = 0;
api.GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues
    buildGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues() {
  final o = api.GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues();
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues++;
  if (buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues < 3) {
    o.allowedValues = buildUnnamed8();
    o.deniedValues = buildUnnamed9();
  }
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues--;
  return o;
}

void checkGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues(
    api.GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues o) {
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues++;
  if (buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues < 3) {
    checkUnnamed8(o.allowedValues!);
    checkUnnamed9(o.deniedValues!);
  }
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.int buildCounterGoogleTypeExpr = 0;
api.GoogleTypeExpr buildGoogleTypeExpr() {
  final o = api.GoogleTypeExpr();
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleTypeExpr--;
  return o;
}

void checkGoogleTypeExpr(api.GoogleTypeExpr o) {
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
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
  buildCounterGoogleTypeExpr--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudOrgpolicyV2AlternatePolicySpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2AlternatePolicySpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2AlternatePolicySpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV2AlternatePolicySpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV2Constraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2Constraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2Constraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV2Constraint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV2ConstraintBooleanConstraint',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2ConstraintBooleanConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2ConstraintBooleanConstraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV2ConstraintBooleanConstraint(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV2ConstraintGoogleDefinedCustomConstraint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV2ConstraintListConstraint',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2ConstraintListConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2ConstraintListConstraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV2ConstraintListConstraint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV2CustomConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2CustomConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2CustomConstraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV2CustomConstraint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV2ListConstraintsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2ListConstraintsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2ListConstraintsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV2ListConstraintsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudOrgpolicyV2ListCustomConstraintsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2ListCustomConstraintsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudOrgpolicyV2ListCustomConstraintsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV2ListCustomConstraintsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV2ListPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2ListPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2ListPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV2ListPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV2Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2Policy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV2Policy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV2PolicySpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2PolicySpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2PolicySpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV2PolicySpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV2PolicySpecPolicyRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2PolicySpecPolicyRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2PolicySpecPolicyRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV2PolicySpecPolicyRule(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeExpr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeExpr.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group('resource-FoldersConstraintsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).folders.constraints;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudOrgpolicyV2ListConstraintsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2ListConstraintsResponse(
          response as api.GoogleCloudOrgpolicyV2ListConstraintsResponse);
    });
  });

  unittest.group('resource-FoldersPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).folders.policies;
      final arg_request = buildGoogleCloudOrgpolicyV2Policy();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudOrgpolicyV2Policy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudOrgpolicyV2Policy(obj);

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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudOrgpolicyV2Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2Policy(
          response as api.GoogleCloudOrgpolicyV2Policy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).folders.policies;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, etag: arg_etag, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).folders.policies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudOrgpolicyV2Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2Policy(
          response as api.GoogleCloudOrgpolicyV2Policy);
    });

    unittest.test('method--getEffectivePolicy', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).folders.policies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudOrgpolicyV2Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getEffectivePolicy(arg_name, $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2Policy(
          response as api.GoogleCloudOrgpolicyV2Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).folders.policies;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudOrgpolicyV2ListPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2ListPoliciesResponse(
          response as api.GoogleCloudOrgpolicyV2ListPoliciesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).folders.policies;
      final arg_request = buildGoogleCloudOrgpolicyV2Policy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudOrgpolicyV2Policy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudOrgpolicyV2Policy(obj);

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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudOrgpolicyV2Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2Policy(
          response as api.GoogleCloudOrgpolicyV2Policy);
    });
  });

  unittest.group('resource-OrganizationsConstraintsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).organizations.constraints;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudOrgpolicyV2ListConstraintsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2ListConstraintsResponse(
          response as api.GoogleCloudOrgpolicyV2ListConstraintsResponse);
    });
  });

  unittest.group('resource-OrganizationsCustomConstraintsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).organizations.customConstraints;
      final arg_request = buildGoogleCloudOrgpolicyV2CustomConstraint();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudOrgpolicyV2CustomConstraint.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudOrgpolicyV2CustomConstraint(obj);

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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudOrgpolicyV2CustomConstraint());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2CustomConstraint(
          response as api.GoogleCloudOrgpolicyV2CustomConstraint);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).organizations.customConstraints;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).organizations.customConstraints;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudOrgpolicyV2CustomConstraint());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2CustomConstraint(
          response as api.GoogleCloudOrgpolicyV2CustomConstraint);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).organizations.customConstraints;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudOrgpolicyV2ListCustomConstraintsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2ListCustomConstraintsResponse(
          response as api.GoogleCloudOrgpolicyV2ListCustomConstraintsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).organizations.customConstraints;
      final arg_request = buildGoogleCloudOrgpolicyV2CustomConstraint();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudOrgpolicyV2CustomConstraint.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudOrgpolicyV2CustomConstraint(obj);

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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudOrgpolicyV2CustomConstraint());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2CustomConstraint(
          response as api.GoogleCloudOrgpolicyV2CustomConstraint);
    });
  });

  unittest.group('resource-OrganizationsPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).organizations.policies;
      final arg_request = buildGoogleCloudOrgpolicyV2Policy();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudOrgpolicyV2Policy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudOrgpolicyV2Policy(obj);

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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudOrgpolicyV2Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2Policy(
          response as api.GoogleCloudOrgpolicyV2Policy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).organizations.policies;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, etag: arg_etag, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).organizations.policies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudOrgpolicyV2Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2Policy(
          response as api.GoogleCloudOrgpolicyV2Policy);
    });

    unittest.test('method--getEffectivePolicy', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).organizations.policies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudOrgpolicyV2Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getEffectivePolicy(arg_name, $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2Policy(
          response as api.GoogleCloudOrgpolicyV2Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).organizations.policies;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudOrgpolicyV2ListPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2ListPoliciesResponse(
          response as api.GoogleCloudOrgpolicyV2ListPoliciesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).organizations.policies;
      final arg_request = buildGoogleCloudOrgpolicyV2Policy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudOrgpolicyV2Policy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudOrgpolicyV2Policy(obj);

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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudOrgpolicyV2Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2Policy(
          response as api.GoogleCloudOrgpolicyV2Policy);
    });
  });

  unittest.group('resource-ProjectsConstraintsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).projects.constraints;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudOrgpolicyV2ListConstraintsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2ListConstraintsResponse(
          response as api.GoogleCloudOrgpolicyV2ListConstraintsResponse);
    });
  });

  unittest.group('resource-ProjectsPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).projects.policies;
      final arg_request = buildGoogleCloudOrgpolicyV2Policy();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudOrgpolicyV2Policy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudOrgpolicyV2Policy(obj);

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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudOrgpolicyV2Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2Policy(
          response as api.GoogleCloudOrgpolicyV2Policy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).projects.policies;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, etag: arg_etag, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).projects.policies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudOrgpolicyV2Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2Policy(
          response as api.GoogleCloudOrgpolicyV2Policy);
    });

    unittest.test('method--getEffectivePolicy', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).projects.policies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudOrgpolicyV2Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getEffectivePolicy(arg_name, $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2Policy(
          response as api.GoogleCloudOrgpolicyV2Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).projects.policies;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudOrgpolicyV2ListPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2ListPoliciesResponse(
          response as api.GoogleCloudOrgpolicyV2ListPoliciesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.OrgPolicyApi(mock).projects.policies;
      final arg_request = buildGoogleCloudOrgpolicyV2Policy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudOrgpolicyV2Policy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudOrgpolicyV2Policy(obj);

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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudOrgpolicyV2Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudOrgpolicyV2Policy(
          response as api.GoogleCloudOrgpolicyV2Policy);
    });
  });
}
