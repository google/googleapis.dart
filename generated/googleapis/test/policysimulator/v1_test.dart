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

import 'package:googleapis/policysimulator/v1.dart' as api;
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
    o.methodTypes = buildUnnamed0();
    o.name = 'foo';
    o.resourceTypes = buildUnnamed1();
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
    checkUnnamed0(o.methodTypes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.resourceTypes!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudOrgpolicyV2CustomConstraint--;
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

core.List<api.GoogleCloudOrgpolicyV2PolicySpecPolicyRule> buildUnnamed2() => [
      buildGoogleCloudOrgpolicyV2PolicySpecPolicyRule(),
      buildGoogleCloudOrgpolicyV2PolicySpecPolicyRule(),
    ];

void checkUnnamed2(
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
    o.rules = buildUnnamed2();
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
    checkUnnamed2(o.rules!);
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

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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
    o.allowedValues = buildUnnamed3();
    o.deniedValues = buildUnnamed4();
  }
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues--;
  return o;
}

void checkGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues(
    api.GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues o) {
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues++;
  if (buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues < 3) {
    checkUnnamed3(o.allowedValues!);
    checkUnnamed4(o.deniedValues!);
  }
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1AccessStateDiff = 0;
api.GoogleCloudPolicysimulatorV1AccessStateDiff
    buildGoogleCloudPolicysimulatorV1AccessStateDiff() {
  final o = api.GoogleCloudPolicysimulatorV1AccessStateDiff();
  buildCounterGoogleCloudPolicysimulatorV1AccessStateDiff++;
  if (buildCounterGoogleCloudPolicysimulatorV1AccessStateDiff < 3) {
    o.accessChange = 'foo';
    o.baseline = buildGoogleCloudPolicysimulatorV1ExplainedAccess();
    o.simulated = buildGoogleCloudPolicysimulatorV1ExplainedAccess();
  }
  buildCounterGoogleCloudPolicysimulatorV1AccessStateDiff--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1AccessStateDiff(
    api.GoogleCloudPolicysimulatorV1AccessStateDiff o) {
  buildCounterGoogleCloudPolicysimulatorV1AccessStateDiff++;
  if (buildCounterGoogleCloudPolicysimulatorV1AccessStateDiff < 3) {
    unittest.expect(
      o.accessChange!,
      unittest.equals('foo'),
    );
    checkGoogleCloudPolicysimulatorV1ExplainedAccess(o.baseline!);
    checkGoogleCloudPolicysimulatorV1ExplainedAccess(o.simulated!);
  }
  buildCounterGoogleCloudPolicysimulatorV1AccessStateDiff--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1AccessTuple = 0;
api.GoogleCloudPolicysimulatorV1AccessTuple
    buildGoogleCloudPolicysimulatorV1AccessTuple() {
  final o = api.GoogleCloudPolicysimulatorV1AccessTuple();
  buildCounterGoogleCloudPolicysimulatorV1AccessTuple++;
  if (buildCounterGoogleCloudPolicysimulatorV1AccessTuple < 3) {
    o.fullResourceName = 'foo';
    o.permission = 'foo';
    o.principal = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1AccessTuple--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1AccessTuple(
    api.GoogleCloudPolicysimulatorV1AccessTuple o) {
  buildCounterGoogleCloudPolicysimulatorV1AccessTuple++;
  if (buildCounterGoogleCloudPolicysimulatorV1AccessTuple < 3) {
    unittest.expect(
      o.fullResourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permission!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.principal!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicysimulatorV1AccessTuple--;
}

core.Map<core.String,
        api.GoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership>
    buildUnnamed5() => {
          'x':
              buildGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership(),
          'y':
              buildGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership(),
        };

void checkUnnamed5(
    core.Map<
            core.String,
            api
            .GoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership(
      o['x']!);
  checkGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership(
      o['y']!);
}

core.int buildCounterGoogleCloudPolicysimulatorV1BindingExplanation = 0;
api.GoogleCloudPolicysimulatorV1BindingExplanation
    buildGoogleCloudPolicysimulatorV1BindingExplanation() {
  final o = api.GoogleCloudPolicysimulatorV1BindingExplanation();
  buildCounterGoogleCloudPolicysimulatorV1BindingExplanation++;
  if (buildCounterGoogleCloudPolicysimulatorV1BindingExplanation < 3) {
    o.access = 'foo';
    o.condition = buildGoogleTypeExpr();
    o.memberships = buildUnnamed5();
    o.relevance = 'foo';
    o.role = 'foo';
    o.rolePermission = 'foo';
    o.rolePermissionRelevance = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1BindingExplanation--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1BindingExplanation(
    api.GoogleCloudPolicysimulatorV1BindingExplanation o) {
  buildCounterGoogleCloudPolicysimulatorV1BindingExplanation++;
  if (buildCounterGoogleCloudPolicysimulatorV1BindingExplanation < 3) {
    unittest.expect(
      o.access!,
      unittest.equals('foo'),
    );
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed5(o.memberships!);
    unittest.expect(
      o.relevance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rolePermission!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rolePermissionRelevance!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicysimulatorV1BindingExplanation--;
}

core.int
    buildCounterGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership =
    0;
api.GoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership
    buildGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership() {
  final o =
      api.GoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership();
  buildCounterGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership++;
  if (buildCounterGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership <
      3) {
    o.membership = 'foo';
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership(
    api.GoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership o) {
  buildCounterGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership++;
  if (buildCounterGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership <
      3) {
    unittest.expect(
      o.membership!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relevance!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership--;
}

core.List<api.GoogleRpcStatus> buildUnnamed6() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed6(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.List<api.GoogleCloudPolicysimulatorV1ExplainedPolicy> buildUnnamed7() => [
      buildGoogleCloudPolicysimulatorV1ExplainedPolicy(),
      buildGoogleCloudPolicysimulatorV1ExplainedPolicy(),
    ];

void checkUnnamed7(
    core.List<api.GoogleCloudPolicysimulatorV1ExplainedPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1ExplainedPolicy(o[0]);
  checkGoogleCloudPolicysimulatorV1ExplainedPolicy(o[1]);
}

core.int buildCounterGoogleCloudPolicysimulatorV1ExplainedAccess = 0;
api.GoogleCloudPolicysimulatorV1ExplainedAccess
    buildGoogleCloudPolicysimulatorV1ExplainedAccess() {
  final o = api.GoogleCloudPolicysimulatorV1ExplainedAccess();
  buildCounterGoogleCloudPolicysimulatorV1ExplainedAccess++;
  if (buildCounterGoogleCloudPolicysimulatorV1ExplainedAccess < 3) {
    o.accessState = 'foo';
    o.errors = buildUnnamed6();
    o.policies = buildUnnamed7();
  }
  buildCounterGoogleCloudPolicysimulatorV1ExplainedAccess--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1ExplainedAccess(
    api.GoogleCloudPolicysimulatorV1ExplainedAccess o) {
  buildCounterGoogleCloudPolicysimulatorV1ExplainedAccess++;
  if (buildCounterGoogleCloudPolicysimulatorV1ExplainedAccess < 3) {
    unittest.expect(
      o.accessState!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.errors!);
    checkUnnamed7(o.policies!);
  }
  buildCounterGoogleCloudPolicysimulatorV1ExplainedAccess--;
}

core.List<api.GoogleCloudPolicysimulatorV1BindingExplanation> buildUnnamed8() =>
    [
      buildGoogleCloudPolicysimulatorV1BindingExplanation(),
      buildGoogleCloudPolicysimulatorV1BindingExplanation(),
    ];

void checkUnnamed8(
    core.List<api.GoogleCloudPolicysimulatorV1BindingExplanation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1BindingExplanation(o[0]);
  checkGoogleCloudPolicysimulatorV1BindingExplanation(o[1]);
}

core.int buildCounterGoogleCloudPolicysimulatorV1ExplainedPolicy = 0;
api.GoogleCloudPolicysimulatorV1ExplainedPolicy
    buildGoogleCloudPolicysimulatorV1ExplainedPolicy() {
  final o = api.GoogleCloudPolicysimulatorV1ExplainedPolicy();
  buildCounterGoogleCloudPolicysimulatorV1ExplainedPolicy++;
  if (buildCounterGoogleCloudPolicysimulatorV1ExplainedPolicy < 3) {
    o.access = 'foo';
    o.bindingExplanations = buildUnnamed8();
    o.fullResourceName = 'foo';
    o.policy = buildGoogleIamV1Policy();
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1ExplainedPolicy--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1ExplainedPolicy(
    api.GoogleCloudPolicysimulatorV1ExplainedPolicy o) {
  buildCounterGoogleCloudPolicysimulatorV1ExplainedPolicy++;
  if (buildCounterGoogleCloudPolicysimulatorV1ExplainedPolicy < 3) {
    unittest.expect(
      o.access!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.bindingExplanations!);
    unittest.expect(
      o.fullResourceName!,
      unittest.equals('foo'),
    );
    checkGoogleIamV1Policy(o.policy!);
    unittest.expect(
      o.relevance!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicysimulatorV1ExplainedPolicy--;
}

core.List<api.GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview>
    buildUnnamed9() => [
          buildGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview(),
          buildGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview(),
        ];

void checkUnnamed9(
    core.List<api.GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview(o[0]);
  checkGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview(o[1]);
}

core.int
    buildCounterGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse =
    0;
api.GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse
    buildGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse() {
  final o =
      api.GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse();
  buildCounterGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.orgPolicyViolationsPreviews = buildUnnamed9();
  }
  buildCounterGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse(
    api.GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse o) {
  buildCounterGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.orgPolicyViolationsPreviews!);
  }
  buildCounterGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse--;
}

core.List<api.GoogleCloudPolicysimulatorV1OrgPolicyViolation>
    buildUnnamed10() => [
          buildGoogleCloudPolicysimulatorV1OrgPolicyViolation(),
          buildGoogleCloudPolicysimulatorV1OrgPolicyViolation(),
        ];

void checkUnnamed10(
    core.List<api.GoogleCloudPolicysimulatorV1OrgPolicyViolation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1OrgPolicyViolation(o[0]);
  checkGoogleCloudPolicysimulatorV1OrgPolicyViolation(o[1]);
}

core.int
    buildCounterGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse = 0;
api.GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse
    buildGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse() {
  final o = api.GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse();
  buildCounterGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.orgPolicyViolations = buildUnnamed10();
  }
  buildCounterGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse(
    api.GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse o) {
  buildCounterGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.orgPolicyViolations!);
  }
  buildCounterGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse--;
}

core.List<api.GoogleCloudPolicysimulatorV1ReplayResult> buildUnnamed11() => [
      buildGoogleCloudPolicysimulatorV1ReplayResult(),
      buildGoogleCloudPolicysimulatorV1ReplayResult(),
    ];

void checkUnnamed11(core.List<api.GoogleCloudPolicysimulatorV1ReplayResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1ReplayResult(o[0]);
  checkGoogleCloudPolicysimulatorV1ReplayResult(o[1]);
}

core.int buildCounterGoogleCloudPolicysimulatorV1ListReplayResultsResponse = 0;
api.GoogleCloudPolicysimulatorV1ListReplayResultsResponse
    buildGoogleCloudPolicysimulatorV1ListReplayResultsResponse() {
  final o = api.GoogleCloudPolicysimulatorV1ListReplayResultsResponse();
  buildCounterGoogleCloudPolicysimulatorV1ListReplayResultsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1ListReplayResultsResponse < 3) {
    o.nextPageToken = 'foo';
    o.replayResults = buildUnnamed11();
  }
  buildCounterGoogleCloudPolicysimulatorV1ListReplayResultsResponse--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1ListReplayResultsResponse(
    api.GoogleCloudPolicysimulatorV1ListReplayResultsResponse o) {
  buildCounterGoogleCloudPolicysimulatorV1ListReplayResultsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1ListReplayResultsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.replayResults!);
  }
  buildCounterGoogleCloudPolicysimulatorV1ListReplayResultsResponse--;
}

core.List<
        api.GoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay>
    buildUnnamed12() => [
          buildGoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay(),
          buildGoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay(),
        ];

void checkUnnamed12(
    core.List<
            api
            .GoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay(
      o[0]);
  checkGoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay(
      o[1]);
}

core.List<api.GoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay>
    buildUnnamed13() => [
          buildGoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay(),
          buildGoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay(),
        ];

void checkUnnamed13(
    core.List<api.GoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay(o[0]);
  checkGoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay(o[1]);
}

core.int buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlay = 0;
api.GoogleCloudPolicysimulatorV1OrgPolicyOverlay
    buildGoogleCloudPolicysimulatorV1OrgPolicyOverlay() {
  final o = api.GoogleCloudPolicysimulatorV1OrgPolicyOverlay();
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlay++;
  if (buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlay < 3) {
    o.customConstraints = buildUnnamed12();
    o.policies = buildUnnamed13();
  }
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlay--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1OrgPolicyOverlay(
    api.GoogleCloudPolicysimulatorV1OrgPolicyOverlay o) {
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlay++;
  if (buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlay < 3) {
    checkUnnamed12(o.customConstraints!);
    checkUnnamed13(o.policies!);
  }
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlay--;
}

core.int
    buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay =
    0;
api.GoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay
    buildGoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay() {
  final o =
      api.GoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay();
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay++;
  if (buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay <
      3) {
    o.customConstraint = buildGoogleCloudOrgpolicyV2CustomConstraint();
    o.customConstraintParent = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay(
    api.GoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay o) {
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay++;
  if (buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay <
      3) {
    checkGoogleCloudOrgpolicyV2CustomConstraint(o.customConstraint!);
    unittest.expect(
      o.customConstraintParent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay =
    0;
api.GoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay
    buildGoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay() {
  final o = api.GoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay();
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay++;
  if (buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay <
      3) {
    o.policy = buildGoogleCloudOrgpolicyV2Policy();
    o.policyParent = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay(
    api.GoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay o) {
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay++;
  if (buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay <
      3) {
    checkGoogleCloudOrgpolicyV2Policy(o.policy!);
    unittest.expect(
      o.policyParent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolation = 0;
api.GoogleCloudPolicysimulatorV1OrgPolicyViolation
    buildGoogleCloudPolicysimulatorV1OrgPolicyViolation() {
  final o = api.GoogleCloudPolicysimulatorV1OrgPolicyViolation();
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolation++;
  if (buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolation < 3) {
    o.customConstraint = buildGoogleCloudOrgpolicyV2CustomConstraint();
    o.error = buildGoogleRpcStatus();
    o.name = 'foo';
    o.resource = buildGoogleCloudPolicysimulatorV1ResourceContext();
  }
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolation--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1OrgPolicyViolation(
    api.GoogleCloudPolicysimulatorV1OrgPolicyViolation o) {
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolation++;
  if (buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolation < 3) {
    checkGoogleCloudOrgpolicyV2CustomConstraint(o.customConstraint!);
    checkGoogleRpcStatus(o.error!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudPolicysimulatorV1ResourceContext(o.resource!);
  }
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolation--;
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview = 0;
api.GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview
    buildGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview() {
  final o = api.GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview();
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview++;
  if (buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview < 3) {
    o.createTime = 'foo';
    o.customConstraints = buildUnnamed14();
    o.name = 'foo';
    o.overlay = buildGoogleCloudPolicysimulatorV1OrgPolicyOverlay();
    o.resourceCounts =
        buildGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts();
    o.state = 'foo';
    o.violationsCount = 42;
  }
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview(
    api.GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview o) {
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview++;
  if (buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.customConstraints!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudPolicysimulatorV1OrgPolicyOverlay(o.overlay!);
    checkGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts(
        o.resourceCounts!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.violationsCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview--;
}

core.int
    buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts =
    0;
api.GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts
    buildGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts() {
  final o = api
      .GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts();
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts++;
  if (buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts <
      3) {
    o.compliant = 42;
    o.errors = 42;
    o.noncompliant = 42;
    o.scanned = 42;
    o.unenforced = 42;
  }
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts(
    api.GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts
        o) {
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts++;
  if (buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts <
      3) {
    unittest.expect(
      o.compliant!,
      unittest.equals(42),
    );
    unittest.expect(
      o.errors!,
      unittest.equals(42),
    );
    unittest.expect(
      o.noncompliant!,
      unittest.equals(42),
    );
    unittest.expect(
      o.scanned!,
      unittest.equals(42),
    );
    unittest.expect(
      o.unenforced!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1Replay = 0;
api.GoogleCloudPolicysimulatorV1Replay
    buildGoogleCloudPolicysimulatorV1Replay() {
  final o = api.GoogleCloudPolicysimulatorV1Replay();
  buildCounterGoogleCloudPolicysimulatorV1Replay++;
  if (buildCounterGoogleCloudPolicysimulatorV1Replay < 3) {
    o.config = buildGoogleCloudPolicysimulatorV1ReplayConfig();
    o.name = 'foo';
    o.resultsSummary = buildGoogleCloudPolicysimulatorV1ReplayResultsSummary();
    o.state = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1Replay--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1Replay(
    api.GoogleCloudPolicysimulatorV1Replay o) {
  buildCounterGoogleCloudPolicysimulatorV1Replay++;
  if (buildCounterGoogleCloudPolicysimulatorV1Replay < 3) {
    checkGoogleCloudPolicysimulatorV1ReplayConfig(o.config!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudPolicysimulatorV1ReplayResultsSummary(o.resultsSummary!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicysimulatorV1Replay--;
}

core.Map<core.String, api.GoogleIamV1Policy> buildUnnamed15() => {
      'x': buildGoogleIamV1Policy(),
      'y': buildGoogleIamV1Policy(),
    };

void checkUnnamed15(core.Map<core.String, api.GoogleIamV1Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Policy(o['x']!);
  checkGoogleIamV1Policy(o['y']!);
}

core.int buildCounterGoogleCloudPolicysimulatorV1ReplayConfig = 0;
api.GoogleCloudPolicysimulatorV1ReplayConfig
    buildGoogleCloudPolicysimulatorV1ReplayConfig() {
  final o = api.GoogleCloudPolicysimulatorV1ReplayConfig();
  buildCounterGoogleCloudPolicysimulatorV1ReplayConfig++;
  if (buildCounterGoogleCloudPolicysimulatorV1ReplayConfig < 3) {
    o.logSource = 'foo';
    o.policyOverlay = buildUnnamed15();
  }
  buildCounterGoogleCloudPolicysimulatorV1ReplayConfig--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1ReplayConfig(
    api.GoogleCloudPolicysimulatorV1ReplayConfig o) {
  buildCounterGoogleCloudPolicysimulatorV1ReplayConfig++;
  if (buildCounterGoogleCloudPolicysimulatorV1ReplayConfig < 3) {
    unittest.expect(
      o.logSource!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.policyOverlay!);
  }
  buildCounterGoogleCloudPolicysimulatorV1ReplayConfig--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1ReplayDiff = 0;
api.GoogleCloudPolicysimulatorV1ReplayDiff
    buildGoogleCloudPolicysimulatorV1ReplayDiff() {
  final o = api.GoogleCloudPolicysimulatorV1ReplayDiff();
  buildCounterGoogleCloudPolicysimulatorV1ReplayDiff++;
  if (buildCounterGoogleCloudPolicysimulatorV1ReplayDiff < 3) {
    o.accessDiff = buildGoogleCloudPolicysimulatorV1AccessStateDiff();
  }
  buildCounterGoogleCloudPolicysimulatorV1ReplayDiff--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1ReplayDiff(
    api.GoogleCloudPolicysimulatorV1ReplayDiff o) {
  buildCounterGoogleCloudPolicysimulatorV1ReplayDiff++;
  if (buildCounterGoogleCloudPolicysimulatorV1ReplayDiff < 3) {
    checkGoogleCloudPolicysimulatorV1AccessStateDiff(o.accessDiff!);
  }
  buildCounterGoogleCloudPolicysimulatorV1ReplayDiff--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1ReplayResult = 0;
api.GoogleCloudPolicysimulatorV1ReplayResult
    buildGoogleCloudPolicysimulatorV1ReplayResult() {
  final o = api.GoogleCloudPolicysimulatorV1ReplayResult();
  buildCounterGoogleCloudPolicysimulatorV1ReplayResult++;
  if (buildCounterGoogleCloudPolicysimulatorV1ReplayResult < 3) {
    o.accessTuple = buildGoogleCloudPolicysimulatorV1AccessTuple();
    o.diff = buildGoogleCloudPolicysimulatorV1ReplayDiff();
    o.error = buildGoogleRpcStatus();
    o.lastSeenDate = buildGoogleTypeDate();
    o.name = 'foo';
    o.parent = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1ReplayResult--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1ReplayResult(
    api.GoogleCloudPolicysimulatorV1ReplayResult o) {
  buildCounterGoogleCloudPolicysimulatorV1ReplayResult++;
  if (buildCounterGoogleCloudPolicysimulatorV1ReplayResult < 3) {
    checkGoogleCloudPolicysimulatorV1AccessTuple(o.accessTuple!);
    checkGoogleCloudPolicysimulatorV1ReplayDiff(o.diff!);
    checkGoogleRpcStatus(o.error!);
    checkGoogleTypeDate(o.lastSeenDate!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicysimulatorV1ReplayResult--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1ReplayResultsSummary = 0;
api.GoogleCloudPolicysimulatorV1ReplayResultsSummary
    buildGoogleCloudPolicysimulatorV1ReplayResultsSummary() {
  final o = api.GoogleCloudPolicysimulatorV1ReplayResultsSummary();
  buildCounterGoogleCloudPolicysimulatorV1ReplayResultsSummary++;
  if (buildCounterGoogleCloudPolicysimulatorV1ReplayResultsSummary < 3) {
    o.differenceCount = 42;
    o.errorCount = 42;
    o.logCount = 42;
    o.newestDate = buildGoogleTypeDate();
    o.oldestDate = buildGoogleTypeDate();
    o.unchangedCount = 42;
  }
  buildCounterGoogleCloudPolicysimulatorV1ReplayResultsSummary--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1ReplayResultsSummary(
    api.GoogleCloudPolicysimulatorV1ReplayResultsSummary o) {
  buildCounterGoogleCloudPolicysimulatorV1ReplayResultsSummary++;
  if (buildCounterGoogleCloudPolicysimulatorV1ReplayResultsSummary < 3) {
    unittest.expect(
      o.differenceCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.errorCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.logCount!,
      unittest.equals(42),
    );
    checkGoogleTypeDate(o.newestDate!);
    checkGoogleTypeDate(o.oldestDate!);
    unittest.expect(
      o.unchangedCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudPolicysimulatorV1ReplayResultsSummary--;
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudPolicysimulatorV1ResourceContext = 0;
api.GoogleCloudPolicysimulatorV1ResourceContext
    buildGoogleCloudPolicysimulatorV1ResourceContext() {
  final o = api.GoogleCloudPolicysimulatorV1ResourceContext();
  buildCounterGoogleCloudPolicysimulatorV1ResourceContext++;
  if (buildCounterGoogleCloudPolicysimulatorV1ResourceContext < 3) {
    o.ancestors = buildUnnamed16();
    o.assetType = 'foo';
    o.resource = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1ResourceContext--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1ResourceContext(
    api.GoogleCloudPolicysimulatorV1ResourceContext o) {
  buildCounterGoogleCloudPolicysimulatorV1ResourceContext++;
  if (buildCounterGoogleCloudPolicysimulatorV1ResourceContext < 3) {
    checkUnnamed16(o.ancestors!);
    unittest.expect(
      o.assetType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicysimulatorV1ResourceContext--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed17() => [
      buildGoogleIamV1AuditLogConfig(),
      buildGoogleIamV1AuditLogConfig(),
    ];

void checkUnnamed17(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed17();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed17(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  final o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed18();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed18(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  final o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed19();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed19(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed20() => [
      buildGoogleIamV1AuditConfig(),
      buildGoogleIamV1AuditConfig(),
    ];

void checkUnnamed20(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed21() => [
      buildGoogleIamV1Binding(),
      buildGoogleIamV1Binding(),
    ];

void checkUnnamed21(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed20();
    o.bindings = buildUnnamed21();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed20(o.auditConfigs!);
    checkUnnamed21(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleIamV1Policy--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed22() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed22(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed22();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed23();
    o.name = 'foo';
    o.response = buildUnnamed24();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed23(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed25() => {
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

void checkUnnamed25(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed26() => [
      buildUnnamed25(),
      buildUnnamed25(),
    ];

void checkUnnamed26(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed25(o[0]);
  checkUnnamed25(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed26();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed26(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  final o = api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

void checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleTypeDate--;
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

  unittest.group('obj-schema-GoogleCloudOrgpolicyV2CustomConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2CustomConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2CustomConstraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV2CustomConstraint(od);
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

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1AccessStateDiff', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1AccessStateDiff();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1AccessStateDiff.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1AccessStateDiff(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1AccessTuple', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1AccessTuple();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1AccessTuple.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1AccessTuple(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1BindingExplanation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1BindingExplanation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1BindingExplanation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1BindingExplanation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1ExplainedAccess', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1ExplainedAccess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1ExplainedAccess.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1ExplainedAccess(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1ExplainedPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1ExplainedPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1ExplainedPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1ExplainedPolicy(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1ListReplayResultsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1ListReplayResultsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPolicysimulatorV1ListReplayResultsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1ListReplayResultsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1OrgPolicyOverlay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1OrgPolicyOverlay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1OrgPolicyOverlay.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1OrgPolicyOverlay(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1OrgPolicyViolation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1OrgPolicyViolation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1OrgPolicyViolation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1OrgPolicyViolation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1Replay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1Replay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1Replay.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1Replay(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1ReplayConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1ReplayConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1ReplayConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1ReplayConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1ReplayDiff', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1ReplayDiff();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1ReplayDiff.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1ReplayDiff(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1ReplayResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1ReplayResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1ReplayResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1ReplayResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1ReplayResultsSummary',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1ReplayResultsSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1ReplayResultsSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1ReplayResultsSummary(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1ResourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1ResourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1ResourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1ResourceContext(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Binding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Binding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Policy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1Policy(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDate(od);
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

  unittest.group(
      'resource-FoldersLocationsOrgPolicyViolationsPreviewsOperationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock)
          .folders
          .locations
          .orgPolicyViolationsPreviews
          .operations;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-FoldersLocationsReplaysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).folders.locations.replays;
      final arg_request = buildGoogleCloudPolicysimulatorV1Replay();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudPolicysimulatorV1Replay.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPolicysimulatorV1Replay(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).folders.locations.replays;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudPolicysimulatorV1Replay());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1Replay(
          response as api.GoogleCloudPolicysimulatorV1Replay);
    });
  });

  unittest.group('resource-FoldersLocationsReplaysOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.PolicySimulatorApi(mock).folders.locations.replays.operations;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.PolicySimulatorApi(mock).folders.locations.replays.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-FoldersLocationsReplaysResultsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.PolicySimulatorApi(mock).folders.locations.replays.results;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1ListReplayResultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1ListReplayResultsResponse(response
          as api.GoogleCloudPolicysimulatorV1ListReplayResultsResponse);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).operations;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group(
      'resource-OrganizationsLocationsOrgPolicyViolationsPreviewsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock)
          .organizations
          .locations
          .orgPolicyViolationsPreviews;
      final arg_request =
          buildGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview();
      final arg_parent = 'foo';
      final arg_orgPolicyViolationsPreviewId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview(obj);

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
          queryMap['orgPolicyViolationsPreviewId']!.first,
          unittest.equals(arg_orgPolicyViolationsPreviewId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          orgPolicyViolationsPreviewId: arg_orgPolicyViolationsPreviewId,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock)
          .organizations
          .locations
          .orgPolicyViolationsPreviews;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview(response
          as api.GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock)
          .organizations
          .locations
          .orgPolicyViolationsPreviews;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse(
          response as api
              .GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse);
    });
  });

  unittest.group(
      'resource-OrganizationsLocationsOrgPolicyViolationsPreviewsOperationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock)
          .organizations
          .locations
          .orgPolicyViolationsPreviews
          .operations;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group(
      'resource-OrganizationsLocationsOrgPolicyViolationsPreviewsOrgPolicyViolationsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock)
          .organizations
          .locations
          .orgPolicyViolationsPreviews
          .orgPolicyViolations;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse(response
          as api.GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse);
    });
  });

  unittest.group('resource-OrganizationsLocationsReplaysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).organizations.locations.replays;
      final arg_request = buildGoogleCloudPolicysimulatorV1Replay();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudPolicysimulatorV1Replay.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPolicysimulatorV1Replay(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).organizations.locations.replays;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudPolicysimulatorV1Replay());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1Replay(
          response as api.GoogleCloudPolicysimulatorV1Replay);
    });
  });

  unittest.group('resource-OrganizationsLocationsReplaysOperationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock)
          .organizations
          .locations
          .replays
          .operations;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock)
          .organizations
          .locations
          .replays
          .operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-OrganizationsLocationsReplaysResultsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.PolicySimulatorApi(mock).organizations.locations.replays.results;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1ListReplayResultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1ListReplayResultsResponse(response
          as api.GoogleCloudPolicysimulatorV1ListReplayResultsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsOrgPolicyViolationsPreviewsOperationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock)
          .projects
          .locations
          .orgPolicyViolationsPreviews
          .operations;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsReplaysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).projects.locations.replays;
      final arg_request = buildGoogleCloudPolicysimulatorV1Replay();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudPolicysimulatorV1Replay.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPolicysimulatorV1Replay(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).projects.locations.replays;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudPolicysimulatorV1Replay());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1Replay(
          response as api.GoogleCloudPolicysimulatorV1Replay);
    });
  });

  unittest.group('resource-ProjectsLocationsReplaysOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.PolicySimulatorApi(mock).projects.locations.replays.operations;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.PolicySimulatorApi(mock).projects.locations.replays.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsReplaysResultsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.PolicySimulatorApi(mock).projects.locations.replays.results;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1ListReplayResultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1ListReplayResultsResponse(response
          as api.GoogleCloudPolicysimulatorV1ListReplayResultsResponse);
    });
  });
}
