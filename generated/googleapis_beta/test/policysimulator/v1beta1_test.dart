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

import 'package:googleapis_beta/policysimulator/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.Map<core.String, api.GoogleIamV1Policy> buildUnnamed8392() => {
      'x': buildGoogleIamV1Policy(),
      'y': buildGoogleIamV1Policy(),
    };

void checkUnnamed8392(core.Map<core.String, api.GoogleIamV1Policy> o) {
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
    o.policyOverlay = buildUnnamed8392();
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
    checkUnnamed8392(o.policyOverlay!);
  }
  buildCounterGoogleCloudPolicysimulatorV1ReplayConfig--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1ReplayOperationMetadata = 0;
api.GoogleCloudPolicysimulatorV1ReplayOperationMetadata
    buildGoogleCloudPolicysimulatorV1ReplayOperationMetadata() {
  final o = api.GoogleCloudPolicysimulatorV1ReplayOperationMetadata();
  buildCounterGoogleCloudPolicysimulatorV1ReplayOperationMetadata++;
  if (buildCounterGoogleCloudPolicysimulatorV1ReplayOperationMetadata < 3) {
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1ReplayOperationMetadata--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1ReplayOperationMetadata(
    api.GoogleCloudPolicysimulatorV1ReplayOperationMetadata o) {
  buildCounterGoogleCloudPolicysimulatorV1ReplayOperationMetadata++;
  if (buildCounterGoogleCloudPolicysimulatorV1ReplayOperationMetadata < 3) {
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicysimulatorV1ReplayOperationMetadata--;
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

core.int buildCounterGoogleCloudPolicysimulatorV1beta1AccessStateDiff = 0;
api.GoogleCloudPolicysimulatorV1beta1AccessStateDiff
    buildGoogleCloudPolicysimulatorV1beta1AccessStateDiff() {
  final o = api.GoogleCloudPolicysimulatorV1beta1AccessStateDiff();
  buildCounterGoogleCloudPolicysimulatorV1beta1AccessStateDiff++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1AccessStateDiff < 3) {
    o.accessChange = 'foo';
    o.baseline = buildGoogleCloudPolicysimulatorV1beta1ExplainedAccess();
    o.simulated = buildGoogleCloudPolicysimulatorV1beta1ExplainedAccess();
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1AccessStateDiff--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1AccessStateDiff(
    api.GoogleCloudPolicysimulatorV1beta1AccessStateDiff o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1AccessStateDiff++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1AccessStateDiff < 3) {
    unittest.expect(
      o.accessChange!,
      unittest.equals('foo'),
    );
    checkGoogleCloudPolicysimulatorV1beta1ExplainedAccess(o.baseline!);
    checkGoogleCloudPolicysimulatorV1beta1ExplainedAccess(o.simulated!);
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1AccessStateDiff--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1AccessTuple = 0;
api.GoogleCloudPolicysimulatorV1beta1AccessTuple
    buildGoogleCloudPolicysimulatorV1beta1AccessTuple() {
  final o = api.GoogleCloudPolicysimulatorV1beta1AccessTuple();
  buildCounterGoogleCloudPolicysimulatorV1beta1AccessTuple++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1AccessTuple < 3) {
    o.fullResourceName = 'foo';
    o.permission = 'foo';
    o.principal = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1AccessTuple--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1AccessTuple(
    api.GoogleCloudPolicysimulatorV1beta1AccessTuple o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1AccessTuple++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1AccessTuple < 3) {
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
  buildCounterGoogleCloudPolicysimulatorV1beta1AccessTuple--;
}

core.Map<core.String,
        api.GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership>
    buildUnnamed8393() => {
          'x':
              buildGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership(),
          'y':
              buildGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership(),
        };

void checkUnnamed8393(
    core.Map<core.String,
            api.GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership(
      o['x']!);
  checkGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership(
      o['y']!);
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanation = 0;
api.GoogleCloudPolicysimulatorV1beta1BindingExplanation
    buildGoogleCloudPolicysimulatorV1beta1BindingExplanation() {
  final o = api.GoogleCloudPolicysimulatorV1beta1BindingExplanation();
  buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanation++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanation < 3) {
    o.access = 'foo';
    o.condition = buildGoogleTypeExpr();
    o.memberships = buildUnnamed8393();
    o.relevance = 'foo';
    o.role = 'foo';
    o.rolePermission = 'foo';
    o.rolePermissionRelevance = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanation--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1BindingExplanation(
    api.GoogleCloudPolicysimulatorV1beta1BindingExplanation o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanation++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanation < 3) {
    unittest.expect(
      o.access!,
      unittest.equals('foo'),
    );
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed8393(o.memberships!);
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
  buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanation--;
}

core.int
    buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership =
    0;
api.GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership
    buildGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership() {
  final o = api
      .GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership();
  buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership <
      3) {
    o.membership = 'foo';
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership(
    api.GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership
        o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership <
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
  buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership--;
}

core.List<api.GoogleRpcStatus> buildUnnamed8394() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed8394(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.List<api.GoogleCloudPolicysimulatorV1beta1ExplainedPolicy>
    buildUnnamed8395() => [
          buildGoogleCloudPolicysimulatorV1beta1ExplainedPolicy(),
          buildGoogleCloudPolicysimulatorV1beta1ExplainedPolicy(),
        ];

void checkUnnamed8395(
    core.List<api.GoogleCloudPolicysimulatorV1beta1ExplainedPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1beta1ExplainedPolicy(o[0]);
  checkGoogleCloudPolicysimulatorV1beta1ExplainedPolicy(o[1]);
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedAccess = 0;
api.GoogleCloudPolicysimulatorV1beta1ExplainedAccess
    buildGoogleCloudPolicysimulatorV1beta1ExplainedAccess() {
  final o = api.GoogleCloudPolicysimulatorV1beta1ExplainedAccess();
  buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedAccess++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedAccess < 3) {
    o.accessState = 'foo';
    o.errors = buildUnnamed8394();
    o.policies = buildUnnamed8395();
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedAccess--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1ExplainedAccess(
    api.GoogleCloudPolicysimulatorV1beta1ExplainedAccess o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedAccess++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedAccess < 3) {
    unittest.expect(
      o.accessState!,
      unittest.equals('foo'),
    );
    checkUnnamed8394(o.errors!);
    checkUnnamed8395(o.policies!);
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedAccess--;
}

core.List<api.GoogleCloudPolicysimulatorV1beta1BindingExplanation>
    buildUnnamed8396() => [
          buildGoogleCloudPolicysimulatorV1beta1BindingExplanation(),
          buildGoogleCloudPolicysimulatorV1beta1BindingExplanation(),
        ];

void checkUnnamed8396(
    core.List<api.GoogleCloudPolicysimulatorV1beta1BindingExplanation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1beta1BindingExplanation(o[0]);
  checkGoogleCloudPolicysimulatorV1beta1BindingExplanation(o[1]);
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedPolicy = 0;
api.GoogleCloudPolicysimulatorV1beta1ExplainedPolicy
    buildGoogleCloudPolicysimulatorV1beta1ExplainedPolicy() {
  final o = api.GoogleCloudPolicysimulatorV1beta1ExplainedPolicy();
  buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedPolicy++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedPolicy < 3) {
    o.access = 'foo';
    o.bindingExplanations = buildUnnamed8396();
    o.fullResourceName = 'foo';
    o.policy = buildGoogleIamV1Policy();
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedPolicy--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1ExplainedPolicy(
    api.GoogleCloudPolicysimulatorV1beta1ExplainedPolicy o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedPolicy++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedPolicy < 3) {
    unittest.expect(
      o.access!,
      unittest.equals('foo'),
    );
    checkUnnamed8396(o.bindingExplanations!);
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
  buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedPolicy--;
}

core.List<api.GoogleCloudPolicysimulatorV1beta1ReplayResult>
    buildUnnamed8397() => [
          buildGoogleCloudPolicysimulatorV1beta1ReplayResult(),
          buildGoogleCloudPolicysimulatorV1beta1ReplayResult(),
        ];

void checkUnnamed8397(
    core.List<api.GoogleCloudPolicysimulatorV1beta1ReplayResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1beta1ReplayResult(o[0]);
  checkGoogleCloudPolicysimulatorV1beta1ReplayResult(o[1]);
}

core.int
    buildCounterGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse = 0;
api.GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse
    buildGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse() {
  final o = api.GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse();
  buildCounterGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.replayResults = buildUnnamed8397();
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse(
    api.GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8397(o.replayResults!);
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1Replay = 0;
api.GoogleCloudPolicysimulatorV1beta1Replay
    buildGoogleCloudPolicysimulatorV1beta1Replay() {
  final o = api.GoogleCloudPolicysimulatorV1beta1Replay();
  buildCounterGoogleCloudPolicysimulatorV1beta1Replay++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1Replay < 3) {
    o.config = buildGoogleCloudPolicysimulatorV1beta1ReplayConfig();
    o.name = 'foo';
    o.resultsSummary =
        buildGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary();
    o.state = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1Replay--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1Replay(
    api.GoogleCloudPolicysimulatorV1beta1Replay o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1Replay++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1Replay < 3) {
    checkGoogleCloudPolicysimulatorV1beta1ReplayConfig(o.config!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary(
        o.resultsSummary!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1Replay--;
}

core.Map<core.String, api.GoogleIamV1Policy> buildUnnamed8398() => {
      'x': buildGoogleIamV1Policy(),
      'y': buildGoogleIamV1Policy(),
    };

void checkUnnamed8398(core.Map<core.String, api.GoogleIamV1Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Policy(o['x']!);
  checkGoogleIamV1Policy(o['y']!);
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1ReplayConfig = 0;
api.GoogleCloudPolicysimulatorV1beta1ReplayConfig
    buildGoogleCloudPolicysimulatorV1beta1ReplayConfig() {
  final o = api.GoogleCloudPolicysimulatorV1beta1ReplayConfig();
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayConfig++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ReplayConfig < 3) {
    o.logSource = 'foo';
    o.policyOverlay = buildUnnamed8398();
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayConfig--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1ReplayConfig(
    api.GoogleCloudPolicysimulatorV1beta1ReplayConfig o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayConfig++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ReplayConfig < 3) {
    unittest.expect(
      o.logSource!,
      unittest.equals('foo'),
    );
    checkUnnamed8398(o.policyOverlay!);
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayConfig--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1ReplayDiff = 0;
api.GoogleCloudPolicysimulatorV1beta1ReplayDiff
    buildGoogleCloudPolicysimulatorV1beta1ReplayDiff() {
  final o = api.GoogleCloudPolicysimulatorV1beta1ReplayDiff();
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayDiff++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ReplayDiff < 3) {
    o.accessDiff = buildGoogleCloudPolicysimulatorV1beta1AccessStateDiff();
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayDiff--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1ReplayDiff(
    api.GoogleCloudPolicysimulatorV1beta1ReplayDiff o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayDiff++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ReplayDiff < 3) {
    checkGoogleCloudPolicysimulatorV1beta1AccessStateDiff(o.accessDiff!);
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayDiff--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata =
    0;
api.GoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata
    buildGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata() {
  final o = api.GoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata();
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata <
      3) {
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata(
    api.GoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata <
      3) {
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResult = 0;
api.GoogleCloudPolicysimulatorV1beta1ReplayResult
    buildGoogleCloudPolicysimulatorV1beta1ReplayResult() {
  final o = api.GoogleCloudPolicysimulatorV1beta1ReplayResult();
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResult++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResult < 3) {
    o.accessTuple = buildGoogleCloudPolicysimulatorV1beta1AccessTuple();
    o.diff = buildGoogleCloudPolicysimulatorV1beta1ReplayDiff();
    o.error = buildGoogleRpcStatus();
    o.lastSeenDate = buildGoogleTypeDate();
    o.name = 'foo';
    o.parent = 'foo';
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResult--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1ReplayResult(
    api.GoogleCloudPolicysimulatorV1beta1ReplayResult o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResult++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResult < 3) {
    checkGoogleCloudPolicysimulatorV1beta1AccessTuple(o.accessTuple!);
    checkGoogleCloudPolicysimulatorV1beta1ReplayDiff(o.diff!);
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
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResult--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary = 0;
api.GoogleCloudPolicysimulatorV1beta1ReplayResultsSummary
    buildGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary() {
  final o = api.GoogleCloudPolicysimulatorV1beta1ReplayResultsSummary();
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary < 3) {
    o.differenceCount = 42;
    o.errorCount = 42;
    o.logCount = 42;
    o.newestDate = buildGoogleTypeDate();
    o.oldestDate = buildGoogleTypeDate();
    o.unchangedCount = 42;
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary(
    api.GoogleCloudPolicysimulatorV1beta1ReplayResultsSummary o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary < 3) {
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
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed8399() => [
      buildGoogleIamV1AuditLogConfig(),
      buildGoogleIamV1AuditLogConfig(),
    ];

void checkUnnamed8399(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed8399();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed8399(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed8400() => [
      'foo',
      'foo',
    ];

void checkUnnamed8400(core.List<core.String> o) {
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
    o.exemptedMembers = buildUnnamed8400();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed8400(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed8401() => [
      'foo',
      'foo',
    ];

void checkUnnamed8401(core.List<core.String> o) {
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
    o.members = buildUnnamed8401();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed8401(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed8402() => [
      buildGoogleIamV1AuditConfig(),
      buildGoogleIamV1AuditConfig(),
    ];

void checkUnnamed8402(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed8403() => [
      buildGoogleIamV1Binding(),
      buildGoogleIamV1Binding(),
    ];

void checkUnnamed8403(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed8402();
    o.bindings = buildUnnamed8403();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed8402(o.auditConfigs!);
    checkUnnamed8403(o.bindings!);
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

core.List<api.GoogleLongrunningOperation> buildUnnamed8404() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed8404(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed8404();
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
    checkUnnamed8404(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed8405() => {
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

void checkUnnamed8405(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed8406() => {
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

void checkUnnamed8406(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed8405();
    o.name = 'foo';
    o.response = buildUnnamed8406();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed8405(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed8406(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.Object> buildUnnamed8407() => {
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

void checkUnnamed8407(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed8408() => [
      buildUnnamed8407(),
      buildUnnamed8407(),
    ];

void checkUnnamed8408(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8407(o[0]);
  checkUnnamed8407(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed8408();
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
    checkUnnamed8408(o.details!);
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

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1ReplayOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1ReplayOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPolicysimulatorV1ReplayOperationMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1ReplayOperationMetadata(od);
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

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1AccessStateDiff',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1beta1AccessStateDiff();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1beta1AccessStateDiff.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1beta1AccessStateDiff(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1AccessTuple', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1beta1AccessTuple();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1beta1AccessTuple.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1beta1AccessTuple(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1beta1BindingExplanation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1beta1BindingExplanation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPolicysimulatorV1beta1BindingExplanation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1beta1BindingExplanation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1ExplainedAccess',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1beta1ExplainedAccess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1beta1ExplainedAccess.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1beta1ExplainedAccess(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1ExplainedPolicy',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1beta1ExplainedPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1beta1ExplainedPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1beta1ExplainedPolicy(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1Replay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1beta1Replay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1beta1Replay.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1beta1Replay(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1ReplayConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1beta1ReplayConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1beta1ReplayConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1beta1ReplayConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1ReplayDiff', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1beta1ReplayDiff();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1beta1ReplayDiff.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1beta1ReplayDiff(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1ReplayResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1beta1ReplayResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicysimulatorV1beta1ReplayResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1beta1ReplayResult(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1beta1ReplayResultsSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPolicysimulatorV1beta1ReplayResultsSummary.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary(od);
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

  unittest.group('resource-FoldersLocationsReplaysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).folders.locations.replays;
      final arg_request = buildGoogleCloudPolicysimulatorV1beta1Replay();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudPolicysimulatorV1beta1Replay.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPolicysimulatorV1beta1Replay(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp =
            convert.json.encode(buildGoogleCloudPolicysimulatorV1beta1Replay());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1beta1Replay(
          response as api.GoogleCloudPolicysimulatorV1beta1Replay);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse(response
          as api.GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).operations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
      final arg_filter = 'foo';
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('v1beta1/operations'),
        );
        pathOffset += 18;

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
      final response = await res.list(
          filter: arg_filter,
          name: arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-OrganizationsLocationsReplaysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).organizations.locations.replays;
      final arg_request = buildGoogleCloudPolicysimulatorV1beta1Replay();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudPolicysimulatorV1beta1Replay.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPolicysimulatorV1beta1Replay(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp =
            convert.json.encode(buildGoogleCloudPolicysimulatorV1beta1Replay());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1beta1Replay(
          response as api.GoogleCloudPolicysimulatorV1beta1Replay);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse(response
          as api.GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsReplaysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PolicySimulatorApi(mock).projects.locations.replays;
      final arg_request = buildGoogleCloudPolicysimulatorV1beta1Replay();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudPolicysimulatorV1beta1Replay.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPolicysimulatorV1beta1Replay(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp =
            convert.json.encode(buildGoogleCloudPolicysimulatorV1beta1Replay());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1beta1Replay(
          response as api.GoogleCloudPolicysimulatorV1beta1Replay);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse(response
          as api.GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse);
    });
  });
}
