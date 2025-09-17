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

import 'package:googleapis/policysimulator/v1beta.dart' as api;
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
  api.GoogleCloudOrgpolicyV2AlternatePolicySpec o,
) {
  buildCounterGoogleCloudOrgpolicyV2AlternatePolicySpec++;
  if (buildCounterGoogleCloudOrgpolicyV2AlternatePolicySpec < 3) {
    unittest.expect(o.launch!, unittest.equals('foo'));
    checkGoogleCloudOrgpolicyV2PolicySpec(o.spec!);
  }
  buildCounterGoogleCloudOrgpolicyV2AlternatePolicySpec--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
  api.GoogleCloudOrgpolicyV2CustomConstraint o,
) {
  buildCounterGoogleCloudOrgpolicyV2CustomConstraint++;
  if (buildCounterGoogleCloudOrgpolicyV2CustomConstraint < 3) {
    unittest.expect(o.actionType!, unittest.equals('foo'));
    unittest.expect(o.condition!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed0(o.methodTypes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed1(o.resourceTypes!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
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
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudOrgpolicyV2PolicySpec(o.spec!);
  }
  buildCounterGoogleCloudOrgpolicyV2Policy--;
}

core.List<api.GoogleCloudOrgpolicyV2PolicySpecPolicyRule> buildUnnamed2() => [
  buildGoogleCloudOrgpolicyV2PolicySpecPolicyRule(),
  buildGoogleCloudOrgpolicyV2PolicySpecPolicyRule(),
];

void checkUnnamed2(
  core.List<api.GoogleCloudOrgpolicyV2PolicySpecPolicyRule> o,
) {
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
  api.GoogleCloudOrgpolicyV2PolicySpec o,
) {
  buildCounterGoogleCloudOrgpolicyV2PolicySpec++;
  if (buildCounterGoogleCloudOrgpolicyV2PolicySpec < 3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.inheritFromParent!, unittest.isTrue);
    unittest.expect(o.reset!, unittest.isTrue);
    checkUnnamed2(o.rules!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudOrgpolicyV2PolicySpec--;
}

core.Map<core.String, core.Object?> buildUnnamed3() => {
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

void checkUnnamed3(core.Map<core.String, core.Object?> o) {
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
    o.parameters = buildUnnamed3();
    o.values = buildGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues();
  }
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRule--;
  return o;
}

void checkGoogleCloudOrgpolicyV2PolicySpecPolicyRule(
  api.GoogleCloudOrgpolicyV2PolicySpecPolicyRule o,
) {
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRule++;
  if (buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRule < 3) {
    unittest.expect(o.allowAll!, unittest.isTrue);
    checkGoogleTypeExpr(o.condition!);
    unittest.expect(o.denyAll!, unittest.isTrue);
    unittest.expect(o.enforce!, unittest.isTrue);
    checkUnnamed3(o.parameters!);
    checkGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues(o.values!);
  }
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRule--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues = 0;
api.GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues
buildGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues() {
  final o = api.GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues();
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues++;
  if (buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues < 3) {
    o.allowedValues = buildUnnamed4();
    o.deniedValues = buildUnnamed5();
  }
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues--;
  return o;
}

void checkGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues(
  api.GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues o,
) {
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues++;
  if (buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues < 3) {
    checkUnnamed4(o.allowedValues!);
    checkUnnamed5(o.deniedValues!);
  }
  buildCounterGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1betaAccessStateDiff = 0;
api.GoogleCloudPolicysimulatorV1betaAccessStateDiff
buildGoogleCloudPolicysimulatorV1betaAccessStateDiff() {
  final o = api.GoogleCloudPolicysimulatorV1betaAccessStateDiff();
  buildCounterGoogleCloudPolicysimulatorV1betaAccessStateDiff++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaAccessStateDiff < 3) {
    o.accessChange = 'foo';
    o.baseline = buildGoogleCloudPolicysimulatorV1betaExplainedAccess();
    o.simulated = buildGoogleCloudPolicysimulatorV1betaExplainedAccess();
  }
  buildCounterGoogleCloudPolicysimulatorV1betaAccessStateDiff--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaAccessStateDiff(
  api.GoogleCloudPolicysimulatorV1betaAccessStateDiff o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaAccessStateDiff++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaAccessStateDiff < 3) {
    unittest.expect(o.accessChange!, unittest.equals('foo'));
    checkGoogleCloudPolicysimulatorV1betaExplainedAccess(o.baseline!);
    checkGoogleCloudPolicysimulatorV1betaExplainedAccess(o.simulated!);
  }
  buildCounterGoogleCloudPolicysimulatorV1betaAccessStateDiff--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1betaAccessTuple = 0;
api.GoogleCloudPolicysimulatorV1betaAccessTuple
buildGoogleCloudPolicysimulatorV1betaAccessTuple() {
  final o = api.GoogleCloudPolicysimulatorV1betaAccessTuple();
  buildCounterGoogleCloudPolicysimulatorV1betaAccessTuple++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaAccessTuple < 3) {
    o.fullResourceName = 'foo';
    o.permission = 'foo';
    o.principal = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1betaAccessTuple--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaAccessTuple(
  api.GoogleCloudPolicysimulatorV1betaAccessTuple o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaAccessTuple++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaAccessTuple < 3) {
    unittest.expect(o.fullResourceName!, unittest.equals('foo'));
    unittest.expect(o.permission!, unittest.equals('foo'));
    unittest.expect(o.principal!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1betaAccessTuple--;
}

core.Map<
  core.String,
  api.GoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership
>
buildUnnamed6() => {
  'x':
      buildGoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership(),
  'y':
      buildGoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership(),
};

void checkUnnamed6(
  core.Map<
    core.String,
    api.GoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership(
    o['x']!,
  );
  checkGoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership(
    o['y']!,
  );
}

core.int buildCounterGoogleCloudPolicysimulatorV1betaBindingExplanation = 0;
api.GoogleCloudPolicysimulatorV1betaBindingExplanation
buildGoogleCloudPolicysimulatorV1betaBindingExplanation() {
  final o = api.GoogleCloudPolicysimulatorV1betaBindingExplanation();
  buildCounterGoogleCloudPolicysimulatorV1betaBindingExplanation++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaBindingExplanation < 3) {
    o.access = 'foo';
    o.condition = buildGoogleTypeExpr();
    o.memberships = buildUnnamed6();
    o.relevance = 'foo';
    o.role = 'foo';
    o.rolePermission = 'foo';
    o.rolePermissionRelevance = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1betaBindingExplanation--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaBindingExplanation(
  api.GoogleCloudPolicysimulatorV1betaBindingExplanation o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaBindingExplanation++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaBindingExplanation < 3) {
    unittest.expect(o.access!, unittest.equals('foo'));
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed6(o.memberships!);
    unittest.expect(o.relevance!, unittest.equals('foo'));
    unittest.expect(o.role!, unittest.equals('foo'));
    unittest.expect(o.rolePermission!, unittest.equals('foo'));
    unittest.expect(o.rolePermissionRelevance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1betaBindingExplanation--;
}

core.int
buildCounterGoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership =
    0;
api.GoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership
buildGoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership() {
  final o =
      api.GoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership();
  buildCounterGoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership <
      3) {
    o.membership = 'foo';
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership(
  api.GoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership <
      3) {
    unittest.expect(o.membership!, unittest.equals('foo'));
    unittest.expect(o.relevance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7() => [
  buildGoogleRpcStatus(),
  buildGoogleRpcStatus(),
];

void checkUnnamed7(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.List<api.GoogleCloudPolicysimulatorV1betaExplainedPolicy>
buildUnnamed8() => [
  buildGoogleCloudPolicysimulatorV1betaExplainedPolicy(),
  buildGoogleCloudPolicysimulatorV1betaExplainedPolicy(),
];

void checkUnnamed8(
  core.List<api.GoogleCloudPolicysimulatorV1betaExplainedPolicy> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1betaExplainedPolicy(o[0]);
  checkGoogleCloudPolicysimulatorV1betaExplainedPolicy(o[1]);
}

core.int buildCounterGoogleCloudPolicysimulatorV1betaExplainedAccess = 0;
api.GoogleCloudPolicysimulatorV1betaExplainedAccess
buildGoogleCloudPolicysimulatorV1betaExplainedAccess() {
  final o = api.GoogleCloudPolicysimulatorV1betaExplainedAccess();
  buildCounterGoogleCloudPolicysimulatorV1betaExplainedAccess++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaExplainedAccess < 3) {
    o.accessState = 'foo';
    o.errors = buildUnnamed7();
    o.policies = buildUnnamed8();
  }
  buildCounterGoogleCloudPolicysimulatorV1betaExplainedAccess--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaExplainedAccess(
  api.GoogleCloudPolicysimulatorV1betaExplainedAccess o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaExplainedAccess++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaExplainedAccess < 3) {
    unittest.expect(o.accessState!, unittest.equals('foo'));
    checkUnnamed7(o.errors!);
    checkUnnamed8(o.policies!);
  }
  buildCounterGoogleCloudPolicysimulatorV1betaExplainedAccess--;
}

core.List<api.GoogleCloudPolicysimulatorV1betaBindingExplanation>
buildUnnamed9() => [
  buildGoogleCloudPolicysimulatorV1betaBindingExplanation(),
  buildGoogleCloudPolicysimulatorV1betaBindingExplanation(),
];

void checkUnnamed9(
  core.List<api.GoogleCloudPolicysimulatorV1betaBindingExplanation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1betaBindingExplanation(o[0]);
  checkGoogleCloudPolicysimulatorV1betaBindingExplanation(o[1]);
}

core.int buildCounterGoogleCloudPolicysimulatorV1betaExplainedPolicy = 0;
api.GoogleCloudPolicysimulatorV1betaExplainedPolicy
buildGoogleCloudPolicysimulatorV1betaExplainedPolicy() {
  final o = api.GoogleCloudPolicysimulatorV1betaExplainedPolicy();
  buildCounterGoogleCloudPolicysimulatorV1betaExplainedPolicy++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaExplainedPolicy < 3) {
    o.access = 'foo';
    o.bindingExplanations = buildUnnamed9();
    o.fullResourceName = 'foo';
    o.policy = buildGoogleIamV1Policy();
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1betaExplainedPolicy--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaExplainedPolicy(
  api.GoogleCloudPolicysimulatorV1betaExplainedPolicy o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaExplainedPolicy++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaExplainedPolicy < 3) {
    unittest.expect(o.access!, unittest.equals('foo'));
    checkUnnamed9(o.bindingExplanations!);
    unittest.expect(o.fullResourceName!, unittest.equals('foo'));
    checkGoogleIamV1Policy(o.policy!);
    unittest.expect(o.relevance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1betaExplainedPolicy--;
}

core.List<api.GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview>
buildUnnamed10() => [
  buildGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview(),
  buildGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview(),
];

void checkUnnamed10(
  core.List<api.GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview(o[0]);
  checkGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview(o[1]);
}

core.int
buildCounterGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse =
    0;
api.GoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse
buildGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse() {
  final o =
      api.GoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse();
  buildCounterGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.orgPolicyViolationsPreviews = buildUnnamed10();
  }
  buildCounterGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse--;
  return o;
}

void
checkGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse(
  api.GoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed10(o.orgPolicyViolationsPreviews!);
  }
  buildCounterGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse--;
}

core.List<api.GoogleCloudPolicysimulatorV1betaOrgPolicyViolation>
buildUnnamed11() => [
  buildGoogleCloudPolicysimulatorV1betaOrgPolicyViolation(),
  buildGoogleCloudPolicysimulatorV1betaOrgPolicyViolation(),
];

void checkUnnamed11(
  core.List<api.GoogleCloudPolicysimulatorV1betaOrgPolicyViolation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1betaOrgPolicyViolation(o[0]);
  checkGoogleCloudPolicysimulatorV1betaOrgPolicyViolation(o[1]);
}

core.int
buildCounterGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse = 0;
api.GoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse
buildGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse() {
  final o =
      api.GoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse();
  buildCounterGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.orgPolicyViolations = buildUnnamed11();
  }
  buildCounterGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse(
  api.GoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed11(o.orgPolicyViolations!);
  }
  buildCounterGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse--;
}

core.List<api.GoogleCloudPolicysimulatorV1betaReplayResult> buildUnnamed12() =>
    [
      buildGoogleCloudPolicysimulatorV1betaReplayResult(),
      buildGoogleCloudPolicysimulatorV1betaReplayResult(),
    ];

void checkUnnamed12(
  core.List<api.GoogleCloudPolicysimulatorV1betaReplayResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1betaReplayResult(o[0]);
  checkGoogleCloudPolicysimulatorV1betaReplayResult(o[1]);
}

core.int buildCounterGoogleCloudPolicysimulatorV1betaListReplayResultsResponse =
    0;
api.GoogleCloudPolicysimulatorV1betaListReplayResultsResponse
buildGoogleCloudPolicysimulatorV1betaListReplayResultsResponse() {
  final o = api.GoogleCloudPolicysimulatorV1betaListReplayResultsResponse();
  buildCounterGoogleCloudPolicysimulatorV1betaListReplayResultsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaListReplayResultsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.replayResults = buildUnnamed12();
  }
  buildCounterGoogleCloudPolicysimulatorV1betaListReplayResultsResponse--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaListReplayResultsResponse(
  api.GoogleCloudPolicysimulatorV1betaListReplayResultsResponse o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaListReplayResultsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaListReplayResultsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed12(o.replayResults!);
  }
  buildCounterGoogleCloudPolicysimulatorV1betaListReplayResultsResponse--;
}

core.List<api.GoogleCloudPolicysimulatorV1betaReplay> buildUnnamed13() => [
  buildGoogleCloudPolicysimulatorV1betaReplay(),
  buildGoogleCloudPolicysimulatorV1betaReplay(),
];

void checkUnnamed13(core.List<api.GoogleCloudPolicysimulatorV1betaReplay> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1betaReplay(o[0]);
  checkGoogleCloudPolicysimulatorV1betaReplay(o[1]);
}

core.int buildCounterGoogleCloudPolicysimulatorV1betaListReplaysResponse = 0;
api.GoogleCloudPolicysimulatorV1betaListReplaysResponse
buildGoogleCloudPolicysimulatorV1betaListReplaysResponse() {
  final o = api.GoogleCloudPolicysimulatorV1betaListReplaysResponse();
  buildCounterGoogleCloudPolicysimulatorV1betaListReplaysResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaListReplaysResponse < 3) {
    o.nextPageToken = 'foo';
    o.replays = buildUnnamed13();
  }
  buildCounterGoogleCloudPolicysimulatorV1betaListReplaysResponse--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaListReplaysResponse(
  api.GoogleCloudPolicysimulatorV1betaListReplaysResponse o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaListReplaysResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaListReplaysResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed13(o.replays!);
  }
  buildCounterGoogleCloudPolicysimulatorV1betaListReplaysResponse--;
}

core.List<
  api.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay
>
buildUnnamed14() => [
  buildGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay(),
  buildGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay(),
];

void checkUnnamed14(
  core.List<
    api.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay(
    o[0],
  );
  checkGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay(
    o[1],
  );
}

core.List<api.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay>
buildUnnamed15() => [
  buildGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay(),
  buildGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay(),
];

void checkUnnamed15(
  core.List<api.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay(o[0]);
  checkGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay(o[1]);
}

core.int buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlay = 0;
api.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay
buildGoogleCloudPolicysimulatorV1betaOrgPolicyOverlay() {
  final o = api.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay();
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlay++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlay < 3) {
    o.customConstraints = buildUnnamed14();
    o.policies = buildUnnamed15();
  }
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlay--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaOrgPolicyOverlay(
  api.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlay++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlay < 3) {
    checkUnnamed14(o.customConstraints!);
    checkUnnamed15(o.policies!);
  }
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlay--;
}

core.int
buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay =
    0;
api.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay
buildGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay() {
  final o =
      api.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay();
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay <
      3) {
    o.customConstraint = buildGoogleCloudOrgpolicyV2CustomConstraint();
    o.customConstraintParent = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay--;
  return o;
}

void
checkGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay(
  api.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay <
      3) {
    checkGoogleCloudOrgpolicyV2CustomConstraint(o.customConstraint!);
    unittest.expect(o.customConstraintParent!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay--;
}

core.int
buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay = 0;
api.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay
buildGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay() {
  final o = api.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay();
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay <
      3) {
    o.policy = buildGoogleCloudOrgpolicyV2Policy();
    o.policyParent = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay(
  api.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay <
      3) {
    checkGoogleCloudOrgpolicyV2Policy(o.policy!);
    unittest.expect(o.policyParent!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolation = 0;
api.GoogleCloudPolicysimulatorV1betaOrgPolicyViolation
buildGoogleCloudPolicysimulatorV1betaOrgPolicyViolation() {
  final o = api.GoogleCloudPolicysimulatorV1betaOrgPolicyViolation();
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolation++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolation < 3) {
    o.customConstraint = buildGoogleCloudOrgpolicyV2CustomConstraint();
    o.error = buildGoogleRpcStatus();
    o.name = 'foo';
    o.resource = buildGoogleCloudPolicysimulatorV1betaResourceContext();
  }
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolation--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaOrgPolicyViolation(
  api.GoogleCloudPolicysimulatorV1betaOrgPolicyViolation o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolation++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolation < 3) {
    checkGoogleCloudOrgpolicyV2CustomConstraint(o.customConstraint!);
    checkGoogleRpcStatus(o.error!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudPolicysimulatorV1betaResourceContext(o.resource!);
  }
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolation--;
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview = 0;
api.GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview
buildGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview() {
  final o = api.GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview();
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview <
      3) {
    o.createTime = 'foo';
    o.customConstraints = buildUnnamed16();
    o.name = 'foo';
    o.overlay = buildGoogleCloudPolicysimulatorV1betaOrgPolicyOverlay();
    o.resourceCounts =
        buildGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts();
    o.state = 'foo';
    o.violationsCount = 42;
  }
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview(
  api.GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview <
      3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed16(o.customConstraints!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudPolicysimulatorV1betaOrgPolicyOverlay(o.overlay!);
    checkGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts(
      o.resourceCounts!,
    );
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.violationsCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview--;
}

core.int
buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts =
    0;
api.GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts
buildGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts() {
  final o =
      api.GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts();
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts <
      3) {
    o.compliant = 42;
    o.errors = 42;
    o.noncompliant = 42;
    o.scanned = 42;
    o.unenforced = 42;
  }
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts--;
  return o;
}

void
checkGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts(
  api.GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts
  o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts <
      3) {
    unittest.expect(o.compliant!, unittest.equals(42));
    unittest.expect(o.errors!, unittest.equals(42));
    unittest.expect(o.noncompliant!, unittest.equals(42));
    unittest.expect(o.scanned!, unittest.equals(42));
    unittest.expect(o.unenforced!, unittest.equals(42));
  }
  buildCounterGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1betaReplay = 0;
api.GoogleCloudPolicysimulatorV1betaReplay
buildGoogleCloudPolicysimulatorV1betaReplay() {
  final o = api.GoogleCloudPolicysimulatorV1betaReplay();
  buildCounterGoogleCloudPolicysimulatorV1betaReplay++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaReplay < 3) {
    o.config = buildGoogleCloudPolicysimulatorV1betaReplayConfig();
    o.name = 'foo';
    o.resultsSummary =
        buildGoogleCloudPolicysimulatorV1betaReplayResultsSummary();
    o.state = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1betaReplay--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaReplay(
  api.GoogleCloudPolicysimulatorV1betaReplay o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaReplay++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaReplay < 3) {
    checkGoogleCloudPolicysimulatorV1betaReplayConfig(o.config!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudPolicysimulatorV1betaReplayResultsSummary(
      o.resultsSummary!,
    );
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1betaReplay--;
}

core.Map<core.String, api.GoogleIamV1Policy> buildUnnamed17() => {
  'x': buildGoogleIamV1Policy(),
  'y': buildGoogleIamV1Policy(),
};

void checkUnnamed17(core.Map<core.String, api.GoogleIamV1Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Policy(o['x']!);
  checkGoogleIamV1Policy(o['y']!);
}

core.int buildCounterGoogleCloudPolicysimulatorV1betaReplayConfig = 0;
api.GoogleCloudPolicysimulatorV1betaReplayConfig
buildGoogleCloudPolicysimulatorV1betaReplayConfig() {
  final o = api.GoogleCloudPolicysimulatorV1betaReplayConfig();
  buildCounterGoogleCloudPolicysimulatorV1betaReplayConfig++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaReplayConfig < 3) {
    o.logSource = 'foo';
    o.policyOverlay = buildUnnamed17();
  }
  buildCounterGoogleCloudPolicysimulatorV1betaReplayConfig--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaReplayConfig(
  api.GoogleCloudPolicysimulatorV1betaReplayConfig o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaReplayConfig++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaReplayConfig < 3) {
    unittest.expect(o.logSource!, unittest.equals('foo'));
    checkUnnamed17(o.policyOverlay!);
  }
  buildCounterGoogleCloudPolicysimulatorV1betaReplayConfig--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1betaReplayDiff = 0;
api.GoogleCloudPolicysimulatorV1betaReplayDiff
buildGoogleCloudPolicysimulatorV1betaReplayDiff() {
  final o = api.GoogleCloudPolicysimulatorV1betaReplayDiff();
  buildCounterGoogleCloudPolicysimulatorV1betaReplayDiff++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaReplayDiff < 3) {
    o.accessDiff = buildGoogleCloudPolicysimulatorV1betaAccessStateDiff();
  }
  buildCounterGoogleCloudPolicysimulatorV1betaReplayDiff--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaReplayDiff(
  api.GoogleCloudPolicysimulatorV1betaReplayDiff o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaReplayDiff++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaReplayDiff < 3) {
    checkGoogleCloudPolicysimulatorV1betaAccessStateDiff(o.accessDiff!);
  }
  buildCounterGoogleCloudPolicysimulatorV1betaReplayDiff--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1betaReplayResult = 0;
api.GoogleCloudPolicysimulatorV1betaReplayResult
buildGoogleCloudPolicysimulatorV1betaReplayResult() {
  final o = api.GoogleCloudPolicysimulatorV1betaReplayResult();
  buildCounterGoogleCloudPolicysimulatorV1betaReplayResult++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaReplayResult < 3) {
    o.accessTuple = buildGoogleCloudPolicysimulatorV1betaAccessTuple();
    o.diff = buildGoogleCloudPolicysimulatorV1betaReplayDiff();
    o.error = buildGoogleRpcStatus();
    o.lastSeenDate = buildGoogleTypeDate();
    o.name = 'foo';
    o.parent = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1betaReplayResult--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaReplayResult(
  api.GoogleCloudPolicysimulatorV1betaReplayResult o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaReplayResult++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaReplayResult < 3) {
    checkGoogleCloudPolicysimulatorV1betaAccessTuple(o.accessTuple!);
    checkGoogleCloudPolicysimulatorV1betaReplayDiff(o.diff!);
    checkGoogleRpcStatus(o.error!);
    checkGoogleTypeDate(o.lastSeenDate!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.parent!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1betaReplayResult--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1betaReplayResultsSummary = 0;
api.GoogleCloudPolicysimulatorV1betaReplayResultsSummary
buildGoogleCloudPolicysimulatorV1betaReplayResultsSummary() {
  final o = api.GoogleCloudPolicysimulatorV1betaReplayResultsSummary();
  buildCounterGoogleCloudPolicysimulatorV1betaReplayResultsSummary++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaReplayResultsSummary < 3) {
    o.differenceCount = 42;
    o.errorCount = 42;
    o.logCount = 42;
    o.newestDate = buildGoogleTypeDate();
    o.oldestDate = buildGoogleTypeDate();
    o.unchangedCount = 42;
  }
  buildCounterGoogleCloudPolicysimulatorV1betaReplayResultsSummary--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaReplayResultsSummary(
  api.GoogleCloudPolicysimulatorV1betaReplayResultsSummary o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaReplayResultsSummary++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaReplayResultsSummary < 3) {
    unittest.expect(o.differenceCount!, unittest.equals(42));
    unittest.expect(o.errorCount!, unittest.equals(42));
    unittest.expect(o.logCount!, unittest.equals(42));
    checkGoogleTypeDate(o.newestDate!);
    checkGoogleTypeDate(o.oldestDate!);
    unittest.expect(o.unchangedCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudPolicysimulatorV1betaReplayResultsSummary--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudPolicysimulatorV1betaResourceContext = 0;
api.GoogleCloudPolicysimulatorV1betaResourceContext
buildGoogleCloudPolicysimulatorV1betaResourceContext() {
  final o = api.GoogleCloudPolicysimulatorV1betaResourceContext();
  buildCounterGoogleCloudPolicysimulatorV1betaResourceContext++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaResourceContext < 3) {
    o.ancestors = buildUnnamed18();
    o.assetType = 'foo';
    o.resource = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1betaResourceContext--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1betaResourceContext(
  api.GoogleCloudPolicysimulatorV1betaResourceContext o,
) {
  buildCounterGoogleCloudPolicysimulatorV1betaResourceContext++;
  if (buildCounterGoogleCloudPolicysimulatorV1betaResourceContext < 3) {
    checkUnnamed18(o.ancestors!);
    unittest.expect(o.assetType!, unittest.equals('foo'));
    unittest.expect(o.resource!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1betaResourceContext--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed19() => [
  buildGoogleIamV1AuditLogConfig(),
  buildGoogleIamV1AuditLogConfig(),
];

void checkUnnamed19(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed19();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed19(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  final o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed20();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed20(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  final o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed21();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed21(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed22() => [
  buildGoogleIamV1AuditConfig(),
  buildGoogleIamV1AuditConfig(),
];

void checkUnnamed22(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed23() => [
  buildGoogleIamV1Binding(),
  buildGoogleIamV1Binding(),
];

void checkUnnamed23(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed22();
    o.bindings = buildUnnamed23();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed22(o.auditConfigs!);
    checkUnnamed23(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterGoogleIamV1Policy--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed24() => [
  buildGoogleLongrunningOperation(),
  buildGoogleLongrunningOperation(),
];

void checkUnnamed24(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed24();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
  api.GoogleLongrunningListOperationsResponse o,
) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed24(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed25() => {
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

void checkUnnamed25(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed26() => {
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

void checkUnnamed26(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed25();
    o.name = 'foo';
    o.response = buildUnnamed26();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed25(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed26(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed27() => {
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

void checkUnnamed27(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed28() => [
  buildUnnamed27(),
  buildUnnamed27(),
];

void checkUnnamed28(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed27(o[0]);
  checkUnnamed27(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed28();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed28(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
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
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
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
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterGoogleTypeExpr--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudOrgpolicyV2AlternatePolicySpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2AlternatePolicySpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2AlternatePolicySpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudOrgpolicyV2AlternatePolicySpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV2CustomConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2CustomConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2CustomConstraint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudOrgpolicyV2CustomConstraint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV2Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudOrgpolicyV2Policy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV2PolicySpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2PolicySpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2PolicySpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudOrgpolicyV2PolicySpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV2PolicySpecPolicyRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV2PolicySpecPolicyRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV2PolicySpecPolicyRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudOrgpolicyV2PolicySpecPolicyRule(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaAccessStateDiff',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudPolicysimulatorV1betaAccessStateDiff();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudPolicysimulatorV1betaAccessStateDiff.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaAccessStateDiff(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1betaAccessTuple', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1betaAccessTuple();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1betaAccessTuple.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudPolicysimulatorV1betaAccessTuple(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaBindingExplanation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudPolicysimulatorV1betaBindingExplanation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicysimulatorV1betaBindingExplanation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaBindingExplanation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaBindingExplanationAnnotatedMembership(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaExplainedAccess',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudPolicysimulatorV1betaExplainedAccess();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudPolicysimulatorV1betaExplainedAccess.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaExplainedAccess(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaExplainedPolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudPolicysimulatorV1betaExplainedPolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudPolicysimulatorV1betaExplainedPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaExplainedPolicy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaListReplayResultsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicysimulatorV1betaListReplayResultsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicysimulatorV1betaListReplayResultsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaListReplayResultsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaListReplaysResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudPolicysimulatorV1betaListReplaysResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicysimulatorV1betaListReplaysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaListReplaysResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudPolicysimulatorV1betaOrgPolicyOverlay();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaOrgPolicyOverlay(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaOrgPolicyViolation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudPolicysimulatorV1betaOrgPolicyViolation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicysimulatorV1betaOrgPolicyViolation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaOrgPolicyViolation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1betaReplay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1betaReplay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1betaReplay.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudPolicysimulatorV1betaReplay(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1betaReplayConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1betaReplayConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1betaReplayConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudPolicysimulatorV1betaReplayConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1betaReplayDiff', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1betaReplayDiff();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1betaReplayDiff.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudPolicysimulatorV1betaReplayDiff(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1betaReplayResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1betaReplayResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1betaReplayResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudPolicysimulatorV1betaReplayResult(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaReplayResultsSummary',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudPolicysimulatorV1betaReplayResultsSummary();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicysimulatorV1betaReplayResultsSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaReplayResultsSummary(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicysimulatorV1betaResourceContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudPolicysimulatorV1betaResourceContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudPolicysimulatorV1betaResourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicysimulatorV1betaResourceContext(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleIamV1AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Binding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1Policy(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeExpr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeExpr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group(
    'resource-FoldersLocationsAccessPolicySimulationsOperationsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.PolicySimulatorApi(
              mock,
            ).folders.locations.accessPolicySimulations.operations;
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
              path.substring(pathOffset, pathOffset + 7),
              unittest.equals('v1beta/'),
            );
            pathOffset += 7;
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
            final resp = convert.json.encode(buildGoogleLongrunningOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation,
        );
      });
    },
  );

  unittest.group(
    'resource-FoldersLocationsOrgPolicyViolationsPreviewsOperationsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.PolicySimulatorApi(
              mock,
            ).folders.locations.orgPolicyViolationsPreviews.operations;
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
              path.substring(pathOffset, pathOffset + 7),
              unittest.equals('v1beta/'),
            );
            pathOffset += 7;
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
            final resp = convert.json.encode(buildGoogleLongrunningOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation,
        );
      });
    },
  );

  unittest.group('resource-FoldersLocationsReplaysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).folders.locations.replays;
      final arg_request = buildGoogleCloudPolicysimulatorV1betaReplay();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudPolicysimulatorV1betaReplay.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudPolicysimulatorV1betaReplay(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).folders.locations.replays;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1betaReplay(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1betaReplay(
        response as api.GoogleCloudPolicysimulatorV1betaReplay,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).folders.locations.replays;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudPolicysimulatorV1betaListReplaysResponse(),
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
      checkGoogleCloudPolicysimulatorV1betaListReplaysResponse(
        response as api.GoogleCloudPolicysimulatorV1betaListReplaysResponse,
      );
    });
  });

  unittest.group('resource-FoldersLocationsReplaysOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.PolicySimulatorApi(mock).folders.locations.replays.operations;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleLongrunningListOperationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudPolicysimulatorV1betaListReplayResultsResponse(),
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
      checkGoogleCloudPolicysimulatorV1betaListReplayResultsResponse(
        response
            as api.GoogleCloudPolicysimulatorV1betaListReplayResultsResponse,
      );
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).operations;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleLongrunningListOperationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });

  unittest.group(
    'resource-OrganizationsLocationsAccessPolicySimulationsOperationsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.PolicySimulatorApi(
              mock,
            ).organizations.locations.accessPolicySimulations.operations;
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
              path.substring(pathOffset, pathOffset + 7),
              unittest.equals('v1beta/'),
            );
            pathOffset += 7;
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
            final resp = convert.json.encode(buildGoogleLongrunningOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation,
        );
      });
    },
  );

  unittest.group('resource-OrganizationsLocationsOrgPolicyViolationsPreviewsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.PolicySimulatorApi(
            mock,
          ).organizations.locations.orgPolicyViolationsPreviews;
      final arg_request =
          buildGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview();
      final arg_parent = 'foo';
      final arg_orgPolicyViolationsPreviewId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        orgPolicyViolationsPreviewId: arg_orgPolicyViolationsPreviewId,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res =
          api.PolicySimulatorApi(
            mock,
          ).organizations.locations.orgPolicyViolationsPreviews;
      final arg_request =
          buildGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.PolicySimulatorApi(
            mock,
          ).organizations.locations.orgPolicyViolationsPreviews;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview(
        response
            as api.GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.PolicySimulatorApi(
            mock,
          ).organizations.locations.orgPolicyViolationsPreviews;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse(),
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
      checkGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse(
        response
            as api.GoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsPreviewsResponse,
      );
    });
  });

  unittest.group(
    'resource-OrganizationsLocationsOrgPolicyViolationsPreviewsOperationsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.PolicySimulatorApi(
              mock,
            ).organizations.locations.orgPolicyViolationsPreviews.operations;
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
              path.substring(pathOffset, pathOffset + 7),
              unittest.equals('v1beta/'),
            );
            pathOffset += 7;
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
            final resp = convert.json.encode(buildGoogleLongrunningOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation,
        );
      });
    },
  );

  unittest.group(
    'resource-OrganizationsLocationsOrgPolicyViolationsPreviewsOrgPolicyViolationsResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.PolicySimulatorApi(mock)
                .organizations
                .locations
                .orgPolicyViolationsPreviews
                .orgPolicyViolations;
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
              path.substring(pathOffset, pathOffset + 7),
              unittest.equals('v1beta/'),
            );
            pathOffset += 7;
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
              buildGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse(),
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
        checkGoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse(
          response
              as api.GoogleCloudPolicysimulatorV1betaListOrgPolicyViolationsResponse,
        );
      });
    },
  );

  unittest.group('resource-OrganizationsLocationsReplaysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).organizations.locations.replays;
      final arg_request = buildGoogleCloudPolicysimulatorV1betaReplay();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudPolicysimulatorV1betaReplay.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudPolicysimulatorV1betaReplay(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).organizations.locations.replays;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1betaReplay(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1betaReplay(
        response as api.GoogleCloudPolicysimulatorV1betaReplay,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).organizations.locations.replays;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudPolicysimulatorV1betaListReplaysResponse(),
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
      checkGoogleCloudPolicysimulatorV1betaListReplaysResponse(
        response as api.GoogleCloudPolicysimulatorV1betaListReplaysResponse,
      );
    });
  });

  unittest.group('resource-OrganizationsLocationsReplaysOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.PolicySimulatorApi(
            mock,
          ).organizations.locations.replays.operations;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.PolicySimulatorApi(
            mock,
          ).organizations.locations.replays.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleLongrunningListOperationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudPolicysimulatorV1betaListReplayResultsResponse(),
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
      checkGoogleCloudPolicysimulatorV1betaListReplayResultsResponse(
        response
            as api.GoogleCloudPolicysimulatorV1betaListReplayResultsResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsAccessPolicySimulationsOperationsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.PolicySimulatorApi(
              mock,
            ).projects.locations.accessPolicySimulations.operations;
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
              path.substring(pathOffset, pathOffset + 7),
              unittest.equals('v1beta/'),
            );
            pathOffset += 7;
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
            final resp = convert.json.encode(buildGoogleLongrunningOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsOrgPolicyViolationsPreviewsOperationsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.PolicySimulatorApi(
              mock,
            ).projects.locations.orgPolicyViolationsPreviews.operations;
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
              path.substring(pathOffset, pathOffset + 7),
              unittest.equals('v1beta/'),
            );
            pathOffset += 7;
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
            final resp = convert.json.encode(buildGoogleLongrunningOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsReplaysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).projects.locations.replays;
      final arg_request = buildGoogleCloudPolicysimulatorV1betaReplay();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudPolicysimulatorV1betaReplay.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudPolicysimulatorV1betaReplay(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).projects.locations.replays;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1betaReplay(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1betaReplay(
        response as api.GoogleCloudPolicysimulatorV1betaReplay,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).projects.locations.replays;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudPolicysimulatorV1betaListReplaysResponse(),
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
      checkGoogleCloudPolicysimulatorV1betaListReplaysResponse(
        response as api.GoogleCloudPolicysimulatorV1betaListReplaysResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsReplaysOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.PolicySimulatorApi(mock).projects.locations.replays.operations;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleLongrunningListOperationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudPolicysimulatorV1betaListReplayResultsResponse(),
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
      checkGoogleCloudPolicysimulatorV1betaListReplayResultsResponse(
        response
            as api.GoogleCloudPolicysimulatorV1betaListReplayResultsResponse,
      );
    });
  });
}
