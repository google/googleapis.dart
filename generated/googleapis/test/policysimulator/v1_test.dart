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

import 'package:googleapis/policysimulator/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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
    buildUnnamed343() => {
          'x':
              buildGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership(),
          'y':
              buildGoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership(),
        };

void checkUnnamed343(
    core.Map<core.String,
            api.GoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership>
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
    o.memberships = buildUnnamed343();
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
    checkUnnamed343(o.memberships!);
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

core.List<api.GoogleRpcStatus> buildUnnamed344() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed344(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.List<api.GoogleCloudPolicysimulatorV1ExplainedPolicy> buildUnnamed345() =>
    [
      buildGoogleCloudPolicysimulatorV1ExplainedPolicy(),
      buildGoogleCloudPolicysimulatorV1ExplainedPolicy(),
    ];

void checkUnnamed345(
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
    o.errors = buildUnnamed344();
    o.policies = buildUnnamed345();
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
    checkUnnamed344(o.errors!);
    checkUnnamed345(o.policies!);
  }
  buildCounterGoogleCloudPolicysimulatorV1ExplainedAccess--;
}

core.List<api.GoogleCloudPolicysimulatorV1BindingExplanation>
    buildUnnamed346() => [
          buildGoogleCloudPolicysimulatorV1BindingExplanation(),
          buildGoogleCloudPolicysimulatorV1BindingExplanation(),
        ];

void checkUnnamed346(
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
    o.bindingExplanations = buildUnnamed346();
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
    checkUnnamed346(o.bindingExplanations!);
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

core.List<api.GoogleCloudPolicysimulatorV1ReplayResult> buildUnnamed347() => [
      buildGoogleCloudPolicysimulatorV1ReplayResult(),
      buildGoogleCloudPolicysimulatorV1ReplayResult(),
    ];

void checkUnnamed347(
    core.List<api.GoogleCloudPolicysimulatorV1ReplayResult> o) {
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
    o.replayResults = buildUnnamed347();
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
    checkUnnamed347(o.replayResults!);
  }
  buildCounterGoogleCloudPolicysimulatorV1ListReplayResultsResponse--;
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

core.Map<core.String, api.GoogleIamV1Policy> buildUnnamed348() => {
      'x': buildGoogleIamV1Policy(),
      'y': buildGoogleIamV1Policy(),
    };

void checkUnnamed348(core.Map<core.String, api.GoogleIamV1Policy> o) {
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
    o.policyOverlay = buildUnnamed348();
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
    checkUnnamed348(o.policyOverlay!);
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

core.Map<core.String, api.GoogleIamV1Policy> buildUnnamed349() => {
      'x': buildGoogleIamV1Policy(),
      'y': buildGoogleIamV1Policy(),
    };

void checkUnnamed349(core.Map<core.String, api.GoogleIamV1Policy> o) {
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
    o.policyOverlay = buildUnnamed349();
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
    checkUnnamed349(o.policyOverlay!);
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayConfig--;
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

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed350() => [
      buildGoogleIamV1AuditLogConfig(),
      buildGoogleIamV1AuditLogConfig(),
    ];

void checkUnnamed350(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed350();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed350(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed351() => [
      'foo',
      'foo',
    ];

void checkUnnamed351(core.List<core.String> o) {
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
    o.exemptedMembers = buildUnnamed351();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed351(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed352() => [
      'foo',
      'foo',
    ];

void checkUnnamed352(core.List<core.String> o) {
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
    o.members = buildUnnamed352();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed352(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed353() => [
      buildGoogleIamV1AuditConfig(),
      buildGoogleIamV1AuditConfig(),
    ];

void checkUnnamed353(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed354() => [
      buildGoogleIamV1Binding(),
      buildGoogleIamV1Binding(),
    ];

void checkUnnamed354(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed353();
    o.bindings = buildUnnamed354();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed353(o.auditConfigs!);
    checkUnnamed354(o.bindings!);
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

core.List<api.GoogleLongrunningOperation> buildUnnamed355() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed355(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed355();
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
    checkUnnamed355(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed356() => {
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

void checkUnnamed356(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed357() => {
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

void checkUnnamed357(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed356();
    o.name = 'foo';
    o.response = buildUnnamed357();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed356(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed357(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.Object> buildUnnamed358() => {
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

void checkUnnamed358(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed359() => [
      buildUnnamed358(),
      buildUnnamed358(),
    ];

void checkUnnamed359(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed358(o[0]);
  checkUnnamed358(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed359();
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
    checkUnnamed359(o.details!);
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
      final arg_request = buildGoogleCloudPolicysimulatorV1Replay();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudPolicysimulatorV1Replay.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPolicysimulatorV1Replay(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudPolicysimulatorV1Replay());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1Replay(
          response as api.GoogleCloudPolicysimulatorV1Replay);
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1/operations'),
        );
        pathOffset += 13;

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
      final arg_request = buildGoogleCloudPolicysimulatorV1Replay();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudPolicysimulatorV1Replay.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPolicysimulatorV1Replay(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudPolicysimulatorV1Replay());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1Replay(
          response as api.GoogleCloudPolicysimulatorV1Replay);
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
        final resp =
            convert.json.encode(buildGoogleCloudPolicysimulatorV1Replay());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPolicysimulatorV1Replay(
          response as api.GoogleCloudPolicysimulatorV1Replay);
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
