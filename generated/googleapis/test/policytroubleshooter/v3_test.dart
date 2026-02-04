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

import 'package:googleapis/policytroubleshooter/v3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudPolicytroubleshooterIamV3AccessTuple = 0;
api.GoogleCloudPolicytroubleshooterIamV3AccessTuple
buildGoogleCloudPolicytroubleshooterIamV3AccessTuple() {
  final o = api.GoogleCloudPolicytroubleshooterIamV3AccessTuple();
  buildCounterGoogleCloudPolicytroubleshooterIamV3AccessTuple++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3AccessTuple < 3) {
    o.conditionContext =
        buildGoogleCloudPolicytroubleshooterIamV3ConditionContext();
    o.fullResourceName = 'foo';
    o.permission = 'foo';
    o.permissionFqdn = 'foo';
    o.principal = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3AccessTuple--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3AccessTuple(
  api.GoogleCloudPolicytroubleshooterIamV3AccessTuple o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3AccessTuple++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3AccessTuple < 3) {
    checkGoogleCloudPolicytroubleshooterIamV3ConditionContext(
      o.conditionContext!,
    );
    unittest.expect(o.fullResourceName!, unittest.equals('foo'));
    unittest.expect(o.permission!, unittest.equals('foo'));
    unittest.expect(o.permissionFqdn!, unittest.equals('foo'));
    unittest.expect(o.principal!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3AccessTuple--;
}

core.Map<
  core.String,
  api.GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership
>
buildUnnamed0() => {
  'x':
      buildGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership(),
  'y':
      buildGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership(),
};

void checkUnnamed0(
  core.Map<
    core.String,
    api.GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership(
    o['x']!,
  );
  checkGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership(
    o['y']!,
  );
}

core.int
buildCounterGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation = 0;
api.GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation
buildGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation() {
  final o = api.GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation();
  buildCounterGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation <
      3) {
    o.allowAccessState = 'foo';
    o.combinedMembership =
        buildGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership();
    o.condition = buildGoogleTypeExpr();
    o.conditionExplanation =
        buildGoogleCloudPolicytroubleshooterIamV3ConditionExplanation();
    o.memberships = buildUnnamed0();
    o.relevance = 'foo';
    o.role = 'foo';
    o.rolePermission = 'foo';
    o.rolePermissionRelevance = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation(
  api.GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation <
      3) {
    unittest.expect(o.allowAccessState!, unittest.equals('foo'));
    checkGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership(
      o.combinedMembership!,
    );
    checkGoogleTypeExpr(o.condition!);
    checkGoogleCloudPolicytroubleshooterIamV3ConditionExplanation(
      o.conditionExplanation!,
    );
    checkUnnamed0(o.memberships!);
    unittest.expect(o.relevance!, unittest.equals('foo'));
    unittest.expect(o.role!, unittest.equals('foo'));
    unittest.expect(o.rolePermission!, unittest.equals('foo'));
    unittest.expect(o.rolePermissionRelevance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation--;
}

core.int
buildCounterGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership =
    0;
api.GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership
buildGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership() {
  final o =
      api.GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership();
  buildCounterGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership <
      3) {
    o.membership = 'foo';
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership--;
  return o;
}

void
checkGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership(
  api.GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership
  o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership <
      3) {
    unittest.expect(o.membership!, unittest.equals('foo'));
    unittest.expect(o.relevance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership--;
}

core.List<api.GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy>
buildUnnamed1() => [
  buildGoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy(),
  buildGoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy(),
];

void checkUnnamed1(
  core.List<api.GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy(o[0]);
  checkGoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy(o[1]);
}

core.int
buildCounterGoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation = 0;
api.GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation
buildGoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation() {
  final o = api.GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation();
  buildCounterGoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation <
      3) {
    o.allowAccessState = 'foo';
    o.explainedPolicies = buildUnnamed1();
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation(
  api.GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation <
      3) {
    unittest.expect(o.allowAccessState!, unittest.equals('foo'));
    checkUnnamed1(o.explainedPolicies!);
    unittest.expect(o.relevance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation--;
}

core.List<api.GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag>
buildUnnamed2() => [
  buildGoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag(),
  buildGoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag(),
];

void checkUnnamed2(
  core.List<
    api.GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag(o[0]);
  checkGoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag(o[1]);
}

core.int buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContext = 0;
api.GoogleCloudPolicytroubleshooterIamV3ConditionContext
buildGoogleCloudPolicytroubleshooterIamV3ConditionContext() {
  final o = api.GoogleCloudPolicytroubleshooterIamV3ConditionContext();
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContext++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContext < 3) {
    o.destination =
        buildGoogleCloudPolicytroubleshooterIamV3ConditionContextPeer();
    o.effectiveTags = buildUnnamed2();
    o.request =
        buildGoogleCloudPolicytroubleshooterIamV3ConditionContextRequest();
    o.resource =
        buildGoogleCloudPolicytroubleshooterIamV3ConditionContextResource();
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContext--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3ConditionContext(
  api.GoogleCloudPolicytroubleshooterIamV3ConditionContext o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContext++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContext < 3) {
    checkGoogleCloudPolicytroubleshooterIamV3ConditionContextPeer(
      o.destination!,
    );
    checkUnnamed2(o.effectiveTags!);
    checkGoogleCloudPolicytroubleshooterIamV3ConditionContextRequest(
      o.request!,
    );
    checkGoogleCloudPolicytroubleshooterIamV3ConditionContextResource(
      o.resource!,
    );
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContext--;
}

core.int
buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag =
    0;
api.GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag
buildGoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag() {
  final o =
      api.GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag();
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag <
      3) {
    o.inherited = true;
    o.namespacedTagKey = 'foo';
    o.namespacedTagValue = 'foo';
    o.tagKey = 'foo';
    o.tagKeyParentName = 'foo';
    o.tagValue = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag(
  api.GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag <
      3) {
    unittest.expect(o.inherited!, unittest.isTrue);
    unittest.expect(o.namespacedTagKey!, unittest.equals('foo'));
    unittest.expect(o.namespacedTagValue!, unittest.equals('foo'));
    unittest.expect(o.tagKey!, unittest.equals('foo'));
    unittest.expect(o.tagKeyParentName!, unittest.equals('foo'));
    unittest.expect(o.tagValue!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag--;
}

core.int buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextPeer =
    0;
api.GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer
buildGoogleCloudPolicytroubleshooterIamV3ConditionContextPeer() {
  final o = api.GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer();
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextPeer++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextPeer <
      3) {
    o.ip = 'foo';
    o.port = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextPeer--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3ConditionContextPeer(
  api.GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextPeer++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextPeer <
      3) {
    unittest.expect(o.ip!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextPeer--;
}

core.int
buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextRequest = 0;
api.GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest
buildGoogleCloudPolicytroubleshooterIamV3ConditionContextRequest() {
  final o = api.GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest();
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextRequest++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextRequest <
      3) {
    o.receiveTime = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextRequest--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3ConditionContextRequest(
  api.GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextRequest++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextRequest <
      3) {
    unittest.expect(o.receiveTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextRequest--;
}

core.int
buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextResource = 0;
api.GoogleCloudPolicytroubleshooterIamV3ConditionContextResource
buildGoogleCloudPolicytroubleshooterIamV3ConditionContextResource() {
  final o = api.GoogleCloudPolicytroubleshooterIamV3ConditionContextResource();
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextResource++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextResource <
      3) {
    o.name = 'foo';
    o.service = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextResource--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3ConditionContextResource(
  api.GoogleCloudPolicytroubleshooterIamV3ConditionContextResource o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextResource++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextResource <
      3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionContextResource--;
}

core.List<api.GoogleRpcStatus> buildUnnamed3() => [
  buildGoogleRpcStatus(),
  buildGoogleRpcStatus(),
];

void checkUnnamed3(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.List<
  api.GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState
>
buildUnnamed4() => [
  buildGoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState(),
  buildGoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState(),
];

void checkUnnamed4(
  core.List<
    api.GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState(
    o[0],
  );
  checkGoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState(
    o[1],
  );
}

core.int buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionExplanation =
    0;
api.GoogleCloudPolicytroubleshooterIamV3ConditionExplanation
buildGoogleCloudPolicytroubleshooterIamV3ConditionExplanation() {
  final o = api.GoogleCloudPolicytroubleshooterIamV3ConditionExplanation();
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionExplanation <
      3) {
    o.errors = buildUnnamed3();
    o.evaluationStates = buildUnnamed4();
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionExplanation--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3ConditionExplanation(
  api.GoogleCloudPolicytroubleshooterIamV3ConditionExplanation o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionExplanation <
      3) {
    checkUnnamed3(o.errors!);
    checkUnnamed4(o.evaluationStates!);
    var casted1 = (o.value!) as core.Map;
    unittest.expect(casted1, unittest.hasLength(3));
    unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted1['bool'], unittest.equals(true));
    unittest.expect(casted1['string'], unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionExplanation--;
}

core.List<api.GoogleRpcStatus> buildUnnamed5() => [
  buildGoogleRpcStatus(),
  buildGoogleRpcStatus(),
];

void checkUnnamed5(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int
buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState =
    0;
api.GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState
buildGoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState() {
  final o =
      api.GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState();
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState <
      3) {
    o.end = 42;
    o.errors = buildUnnamed5();
    o.start = 42;
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState--;
  return o;
}

void
checkGoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState(
  api.GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState <
      3) {
    unittest.expect(o.end!, unittest.equals(42));
    checkUnnamed5(o.errors!);
    unittest.expect(o.start!, unittest.equals(42));
    var casted2 = (o.value!) as core.Map;
    unittest.expect(casted2, unittest.hasLength(3));
    unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted2['bool'], unittest.equals(true));
    unittest.expect(casted2['string'], unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState--;
}

core.List<api.GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource>
buildUnnamed6() => [
  buildGoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource(),
  buildGoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource(),
];

void checkUnnamed6(
  core.List<api.GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource(o[0]);
  checkGoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource(o[1]);
}

core.int buildCounterGoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation =
    0;
api.GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation
buildGoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation() {
  final o = api.GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation();
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation <
      3) {
    o.denyAccessState = 'foo';
    o.explainedResources = buildUnnamed6();
    o.permissionDeniable = true;
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation(
  api.GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation <
      3) {
    unittest.expect(o.denyAccessState!, unittest.equals('foo'));
    checkUnnamed6(o.explainedResources!);
    unittest.expect(o.permissionDeniable!, unittest.isTrue);
    unittest.expect(o.relevance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation--;
}

core.Map<
  core.String,
  api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching
>
buildUnnamed7() => {
  'x':
      buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching(),
  'y':
      buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching(),
};

void checkUnnamed7(
  core.Map<
    core.String,
    api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching(
    o['x']!,
  );
  checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching(
    o['y']!,
  );
}

core.Map<
  core.String,
  api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching
>
buildUnnamed8() => {
  'x':
      buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching(),
  'y':
      buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching(),
};

void checkUnnamed8(
  core.Map<
    core.String,
    api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching(
    o['x']!,
  );
  checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching(
    o['y']!,
  );
}

core.Map<
  core.String,
  api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching
>
buildUnnamed9() => {
  'x':
      buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching(),
  'y':
      buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching(),
};

void checkUnnamed9(
  core.Map<
    core.String,
    api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching(
    o['x']!,
  );
  checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching(
    o['y']!,
  );
}

core.Map<
  core.String,
  api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching
>
buildUnnamed10() => {
  'x':
      buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching(),
  'y':
      buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching(),
};

void checkUnnamed10(
  core.Map<
    core.String,
    api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching(
    o['x']!,
  );
  checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching(
    o['y']!,
  );
}

core.int buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation =
    0;
api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation
buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation() {
  final o = api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation();
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation < 3) {
    o.combinedDeniedPermission =
        buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching();
    o.combinedDeniedPrincipal =
        buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching();
    o.combinedExceptionPermission =
        buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching();
    o.combinedExceptionPrincipal =
        buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching();
    o.condition = buildGoogleTypeExpr();
    o.conditionExplanation =
        buildGoogleCloudPolicytroubleshooterIamV3ConditionExplanation();
    o.deniedPermissions = buildUnnamed7();
    o.deniedPrincipals = buildUnnamed8();
    o.denyAccessState = 'foo';
    o.exceptionPermissions = buildUnnamed9();
    o.exceptionPrincipals = buildUnnamed10();
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation(
  api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation < 3) {
    checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching(
      o.combinedDeniedPermission!,
    );
    checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching(
      o.combinedDeniedPrincipal!,
    );
    checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching(
      o.combinedExceptionPermission!,
    );
    checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching(
      o.combinedExceptionPrincipal!,
    );
    checkGoogleTypeExpr(o.condition!);
    checkGoogleCloudPolicytroubleshooterIamV3ConditionExplanation(
      o.conditionExplanation!,
    );
    checkUnnamed7(o.deniedPermissions!);
    checkUnnamed8(o.deniedPrincipals!);
    unittest.expect(o.denyAccessState!, unittest.equals('foo'));
    checkUnnamed9(o.exceptionPermissions!);
    checkUnnamed10(o.exceptionPrincipals!);
    unittest.expect(o.relevance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation--;
}

core.int
buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching =
    0;
api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching
buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching() {
  final o =
      api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching();
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching <
      3) {
    o.membership = 'foo';
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching--;
  return o;
}

void
checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching(
  api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching
  o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching <
      3) {
    unittest.expect(o.membership!, unittest.equals('foo'));
    unittest.expect(o.relevance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching--;
}

core.int
buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching =
    0;
api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching
buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching() {
  final o =
      api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching();
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching <
      3) {
    o.permissionMatchingState = 'foo';
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching--;
  return o;
}

void
checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching(
  api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching
  o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching <
      3) {
    unittest.expect(o.permissionMatchingState!, unittest.equals('foo'));
    unittest.expect(o.relevance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching--;
}

core.List<api.GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation>
buildUnnamed11() => [
  buildGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation(),
  buildGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation(),
];

void checkUnnamed11(
  core.List<api.GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation(o[0]);
  checkGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation(o[1]);
}

core.int buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy =
    0;
api.GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy
buildGoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy() {
  final o = api.GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy();
  buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy <
      3) {
    o.allowAccessState = 'foo';
    o.bindingExplanations = buildUnnamed11();
    o.fullResourceName = 'foo';
    o.policy = buildGoogleIamV1Policy();
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy(
  api.GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy <
      3) {
    unittest.expect(o.allowAccessState!, unittest.equals('foo'));
    checkUnnamed11(o.bindingExplanations!);
    unittest.expect(o.fullResourceName!, unittest.equals('foo'));
    checkGoogleIamV1Policy(o.policy!);
    unittest.expect(o.relevance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy--;
}

core.List<api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation>
buildUnnamed12() => [
  buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation(),
  buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation(),
];

void checkUnnamed12(
  core.List<api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation(o[0]);
  checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation(o[1]);
}

core.int buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy =
    0;
api.GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy
buildGoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy() {
  final o = api.GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy();
  buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy < 3) {
    o.denyAccessState = 'foo';
    o.policy = buildGoogleIamV2Policy();
    o.relevance = 'foo';
    o.ruleExplanations = buildUnnamed12();
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy(
  api.GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy < 3) {
    unittest.expect(o.denyAccessState!, unittest.equals('foo'));
    checkGoogleIamV2Policy(o.policy!);
    unittest.expect(o.relevance!, unittest.equals('foo'));
    checkUnnamed12(o.ruleExplanations!);
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy--;
}

core.List<api.GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy>
buildUnnamed13() => [
  buildGoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy(),
  buildGoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy(),
];

void checkUnnamed13(
  core.List<api.GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy(o[0]);
  checkGoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy(o[1]);
}

core.int buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource =
    0;
api.GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource
buildGoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource() {
  final o = api.GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource();
  buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource <
      3) {
    o.denyAccessState = 'foo';
    o.explainedPolicies = buildUnnamed13();
    o.fullResourceName = 'foo';
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource(
  api.GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource <
      3) {
    unittest.expect(o.denyAccessState!, unittest.equals('foo'));
    checkUnnamed13(o.explainedPolicies!);
    unittest.expect(o.fullResourceName!, unittest.equals('foo'));
    unittest.expect(o.relevance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource--;
}

core.int
buildCounterGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest =
    0;
api.GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest
buildGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest() {
  final o =
      api.GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest();
  buildCounterGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest <
      3) {
    o.accessTuple = buildGoogleCloudPolicytroubleshooterIamV3AccessTuple();
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest(
  api.GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest <
      3) {
    checkGoogleCloudPolicytroubleshooterIamV3AccessTuple(o.accessTuple!);
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest--;
}

core.int
buildCounterGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse =
    0;
api.GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse
buildGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse() {
  final o =
      api.GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse();
  buildCounterGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse <
      3) {
    o.accessTuple = buildGoogleCloudPolicytroubleshooterIamV3AccessTuple();
    o.allowPolicyExplanation =
        buildGoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation();
    o.denyPolicyExplanation =
        buildGoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation();
    o.overallAccessState = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse(
  api.GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse o,
) {
  buildCounterGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse++;
  if (buildCounterGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse <
      3) {
    checkGoogleCloudPolicytroubleshooterIamV3AccessTuple(o.accessTuple!);
    checkGoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation(
      o.allowPolicyExplanation!,
    );
    checkGoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation(
      o.denyPolicyExplanation!,
    );
    unittest.expect(o.overallAccessState!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed14() => [
  buildGoogleIamV1AuditLogConfig(),
  buildGoogleIamV1AuditLogConfig(),
];

void checkUnnamed14(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed14();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed14(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  final o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed15();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed15(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
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
    o.members = buildUnnamed16();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed16(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed17() => [
  buildGoogleIamV1AuditConfig(),
  buildGoogleIamV1AuditConfig(),
];

void checkUnnamed17(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed18() => [
  buildGoogleIamV1Binding(),
  buildGoogleIamV1Binding(),
];

void checkUnnamed18(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed17();
    o.bindings = buildUnnamed18();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed17(o.auditConfigs!);
    checkUnnamed18(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterGoogleIamV1Policy--;
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV2DenyRule = 0;
api.GoogleIamV2DenyRule buildGoogleIamV2DenyRule() {
  final o = api.GoogleIamV2DenyRule();
  buildCounterGoogleIamV2DenyRule++;
  if (buildCounterGoogleIamV2DenyRule < 3) {
    o.denialCondition = buildGoogleTypeExpr();
    o.deniedPermissions = buildUnnamed19();
    o.deniedPrincipals = buildUnnamed20();
    o.exceptionPermissions = buildUnnamed21();
    o.exceptionPrincipals = buildUnnamed22();
  }
  buildCounterGoogleIamV2DenyRule--;
  return o;
}

void checkGoogleIamV2DenyRule(api.GoogleIamV2DenyRule o) {
  buildCounterGoogleIamV2DenyRule++;
  if (buildCounterGoogleIamV2DenyRule < 3) {
    checkGoogleTypeExpr(o.denialCondition!);
    checkUnnamed19(o.deniedPermissions!);
    checkUnnamed20(o.deniedPrincipals!);
    checkUnnamed21(o.exceptionPermissions!);
    checkUnnamed22(o.exceptionPrincipals!);
  }
  buildCounterGoogleIamV2DenyRule--;
}

core.Map<core.String, core.String> buildUnnamed23() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed23(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.GoogleIamV2PolicyRule> buildUnnamed24() => [
  buildGoogleIamV2PolicyRule(),
  buildGoogleIamV2PolicyRule(),
];

void checkUnnamed24(core.List<api.GoogleIamV2PolicyRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV2PolicyRule(o[0]);
  checkGoogleIamV2PolicyRule(o[1]);
}

core.int buildCounterGoogleIamV2Policy = 0;
api.GoogleIamV2Policy buildGoogleIamV2Policy() {
  final o = api.GoogleIamV2Policy();
  buildCounterGoogleIamV2Policy++;
  if (buildCounterGoogleIamV2Policy < 3) {
    o.annotations = buildUnnamed23();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.rules = buildUnnamed24();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleIamV2Policy--;
  return o;
}

void checkGoogleIamV2Policy(api.GoogleIamV2Policy o) {
  buildCounterGoogleIamV2Policy++;
  if (buildCounterGoogleIamV2Policy < 3) {
    checkUnnamed23(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed24(o.rules!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV2Policy--;
}

core.int buildCounterGoogleIamV2PolicyRule = 0;
api.GoogleIamV2PolicyRule buildGoogleIamV2PolicyRule() {
  final o = api.GoogleIamV2PolicyRule();
  buildCounterGoogleIamV2PolicyRule++;
  if (buildCounterGoogleIamV2PolicyRule < 3) {
    o.denyRule = buildGoogleIamV2DenyRule();
    o.description = 'foo';
  }
  buildCounterGoogleIamV2PolicyRule--;
  return o;
}

void checkGoogleIamV2PolicyRule(api.GoogleIamV2PolicyRule o) {
  buildCounterGoogleIamV2PolicyRule++;
  if (buildCounterGoogleIamV2PolicyRule < 3) {
    checkGoogleIamV2DenyRule(o.denyRule!);
    unittest.expect(o.description!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV2PolicyRule--;
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
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed26(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
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
  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3AccessTuple',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudPolicytroubleshooterIamV3AccessTuple();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudPolicytroubleshooterIamV3AccessTuple.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicytroubleshooterIamV3AccessTuple(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3ConditionContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudPolicytroubleshooterIamV3ConditionContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3ConditionContext.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3ConditionContext(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3ConditionContextPeer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3ConditionContextPeer(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3ConditionContextRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3ConditionContextRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3ConditionContextResource',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3ConditionContextResource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3ConditionContextResource.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3ConditionContextResource(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3ConditionExplanation',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3ConditionExplanation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3ConditionExplanation.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3ConditionExplanation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse(
          od,
        );
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

  unittest.group('obj-schema-GoogleIamV2DenyRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV2DenyRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV2DenyRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV2DenyRule(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV2Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV2Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV2Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV2Policy(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV2PolicyRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV2PolicyRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV2PolicyRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV2PolicyRule(od);
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

  unittest.group('resource-IamResource', () {
    unittest.test('method--troubleshoot', () async {
      final mock = HttpServerMock();
      final res = api.PolicyTroubleshooterApi(mock).iam;
      final arg_request =
          buildGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('v3/iam:troubleshoot'),
          );
          pathOffset += 19;

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
            buildGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.troubleshoot(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse(
        response
            as api.GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse,
      );
    });
  });
}
