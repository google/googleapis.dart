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
import 'package:googleapis_beta/policysimulator/v1beta1.dart' as api;

import '../test_shared.dart';

core.int buildCounterGoogleCloudPolicysimulatorV1beta1AccessStateDiff = 0;
api.GoogleCloudPolicysimulatorV1beta1AccessStateDiff
    buildGoogleCloudPolicysimulatorV1beta1AccessStateDiff() {
  var o = api.GoogleCloudPolicysimulatorV1beta1AccessStateDiff();
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
    unittest.expect(o.accessChange, unittest.equals('foo'));
    checkGoogleCloudPolicysimulatorV1beta1ExplainedAccess(
        o.baseline as api.GoogleCloudPolicysimulatorV1beta1ExplainedAccess);
    checkGoogleCloudPolicysimulatorV1beta1ExplainedAccess(
        o.simulated as api.GoogleCloudPolicysimulatorV1beta1ExplainedAccess);
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1AccessStateDiff--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1AccessTuple = 0;
api.GoogleCloudPolicysimulatorV1beta1AccessTuple
    buildGoogleCloudPolicysimulatorV1beta1AccessTuple() {
  var o = api.GoogleCloudPolicysimulatorV1beta1AccessTuple();
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
    unittest.expect(o.fullResourceName, unittest.equals('foo'));
    unittest.expect(o.permission, unittest.equals('foo'));
    unittest.expect(o.principal, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1AccessTuple--;
}

core.Map<core.String,
        api.GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership>
    buildUnnamed7532() {
  var o = <core.String,
      api.GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership>{};
  o['x'] =
      buildGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership();
  o['y'] =
      buildGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership();
  return o;
}

void checkUnnamed7532(
    core.Map<core.String,
            api.GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership(
      o['x'] as api
          .GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership);
  checkGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership(
      o['y'] as api
          .GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership);
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanation = 0;
api.GoogleCloudPolicysimulatorV1beta1BindingExplanation
    buildGoogleCloudPolicysimulatorV1beta1BindingExplanation() {
  var o = api.GoogleCloudPolicysimulatorV1beta1BindingExplanation();
  buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanation++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanation < 3) {
    o.access = 'foo';
    o.condition = buildGoogleTypeExpr();
    o.memberships = buildUnnamed7532();
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
    unittest.expect(o.access, unittest.equals('foo'));
    checkGoogleTypeExpr(o.condition as api.GoogleTypeExpr);
    checkUnnamed7532(o.memberships);
    unittest.expect(o.relevance, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.rolePermission, unittest.equals('foo'));
    unittest.expect(o.rolePermissionRelevance, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanation--;
}

core.int
    buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership =
    0;
api.GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership
    buildGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership() {
  var o = api
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
    unittest.expect(o.membership, unittest.equals('foo'));
    unittest.expect(o.relevance, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7533() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7533(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.List<api.GoogleCloudPolicysimulatorV1beta1ExplainedPolicy>
    buildUnnamed7534() {
  var o = <api.GoogleCloudPolicysimulatorV1beta1ExplainedPolicy>[];
  o.add(buildGoogleCloudPolicysimulatorV1beta1ExplainedPolicy());
  o.add(buildGoogleCloudPolicysimulatorV1beta1ExplainedPolicy());
  return o;
}

void checkUnnamed7534(
    core.List<api.GoogleCloudPolicysimulatorV1beta1ExplainedPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1beta1ExplainedPolicy(
      o[0] as api.GoogleCloudPolicysimulatorV1beta1ExplainedPolicy);
  checkGoogleCloudPolicysimulatorV1beta1ExplainedPolicy(
      o[1] as api.GoogleCloudPolicysimulatorV1beta1ExplainedPolicy);
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedAccess = 0;
api.GoogleCloudPolicysimulatorV1beta1ExplainedAccess
    buildGoogleCloudPolicysimulatorV1beta1ExplainedAccess() {
  var o = api.GoogleCloudPolicysimulatorV1beta1ExplainedAccess();
  buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedAccess++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedAccess < 3) {
    o.accessState = 'foo';
    o.errors = buildUnnamed7533();
    o.policies = buildUnnamed7534();
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedAccess--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1ExplainedAccess(
    api.GoogleCloudPolicysimulatorV1beta1ExplainedAccess o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedAccess++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedAccess < 3) {
    unittest.expect(o.accessState, unittest.equals('foo'));
    checkUnnamed7533(o.errors);
    checkUnnamed7534(o.policies);
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedAccess--;
}

core.List<api.GoogleCloudPolicysimulatorV1beta1BindingExplanation>
    buildUnnamed7535() {
  var o = <api.GoogleCloudPolicysimulatorV1beta1BindingExplanation>[];
  o.add(buildGoogleCloudPolicysimulatorV1beta1BindingExplanation());
  o.add(buildGoogleCloudPolicysimulatorV1beta1BindingExplanation());
  return o;
}

void checkUnnamed7535(
    core.List<api.GoogleCloudPolicysimulatorV1beta1BindingExplanation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1beta1BindingExplanation(
      o[0] as api.GoogleCloudPolicysimulatorV1beta1BindingExplanation);
  checkGoogleCloudPolicysimulatorV1beta1BindingExplanation(
      o[1] as api.GoogleCloudPolicysimulatorV1beta1BindingExplanation);
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedPolicy = 0;
api.GoogleCloudPolicysimulatorV1beta1ExplainedPolicy
    buildGoogleCloudPolicysimulatorV1beta1ExplainedPolicy() {
  var o = api.GoogleCloudPolicysimulatorV1beta1ExplainedPolicy();
  buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedPolicy++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedPolicy < 3) {
    o.access = 'foo';
    o.bindingExplanations = buildUnnamed7535();
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
    unittest.expect(o.access, unittest.equals('foo'));
    checkUnnamed7535(o.bindingExplanations);
    unittest.expect(o.fullResourceName, unittest.equals('foo'));
    checkGoogleIamV1Policy(o.policy as api.GoogleIamV1Policy);
    unittest.expect(o.relevance, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ExplainedPolicy--;
}

core.List<api.GoogleCloudPolicysimulatorV1beta1ReplayResult>
    buildUnnamed7536() {
  var o = <api.GoogleCloudPolicysimulatorV1beta1ReplayResult>[];
  o.add(buildGoogleCloudPolicysimulatorV1beta1ReplayResult());
  o.add(buildGoogleCloudPolicysimulatorV1beta1ReplayResult());
  return o;
}

void checkUnnamed7536(
    core.List<api.GoogleCloudPolicysimulatorV1beta1ReplayResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicysimulatorV1beta1ReplayResult(
      o[0] as api.GoogleCloudPolicysimulatorV1beta1ReplayResult);
  checkGoogleCloudPolicysimulatorV1beta1ReplayResult(
      o[1] as api.GoogleCloudPolicysimulatorV1beta1ReplayResult);
}

core.int
    buildCounterGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse = 0;
api.GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse
    buildGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse() {
  var o = api.GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse();
  buildCounterGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.replayResults = buildUnnamed7536();
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse(
    api.GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse <
      3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7536(o.replayResults);
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1Replay = 0;
api.GoogleCloudPolicysimulatorV1beta1Replay
    buildGoogleCloudPolicysimulatorV1beta1Replay() {
  var o = api.GoogleCloudPolicysimulatorV1beta1Replay();
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
    checkGoogleCloudPolicysimulatorV1beta1ReplayConfig(
        o.config as api.GoogleCloudPolicysimulatorV1beta1ReplayConfig);
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary(o.resultsSummary
        as api.GoogleCloudPolicysimulatorV1beta1ReplayResultsSummary);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1Replay--;
}

core.Map<core.String, api.GoogleIamV1Policy> buildUnnamed7537() {
  var o = <core.String, api.GoogleIamV1Policy>{};
  o['x'] = buildGoogleIamV1Policy();
  o['y'] = buildGoogleIamV1Policy();
  return o;
}

void checkUnnamed7537(core.Map<core.String, api.GoogleIamV1Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Policy(o['x'] as api.GoogleIamV1Policy);
  checkGoogleIamV1Policy(o['y'] as api.GoogleIamV1Policy);
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1ReplayConfig = 0;
api.GoogleCloudPolicysimulatorV1beta1ReplayConfig
    buildGoogleCloudPolicysimulatorV1beta1ReplayConfig() {
  var o = api.GoogleCloudPolicysimulatorV1beta1ReplayConfig();
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayConfig++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ReplayConfig < 3) {
    o.logSource = 'foo';
    o.policyOverlay = buildUnnamed7537();
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayConfig--;
  return o;
}

void checkGoogleCloudPolicysimulatorV1beta1ReplayConfig(
    api.GoogleCloudPolicysimulatorV1beta1ReplayConfig o) {
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayConfig++;
  if (buildCounterGoogleCloudPolicysimulatorV1beta1ReplayConfig < 3) {
    unittest.expect(o.logSource, unittest.equals('foo'));
    checkUnnamed7537(o.policyOverlay);
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayConfig--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1ReplayDiff = 0;
api.GoogleCloudPolicysimulatorV1beta1ReplayDiff
    buildGoogleCloudPolicysimulatorV1beta1ReplayDiff() {
  var o = api.GoogleCloudPolicysimulatorV1beta1ReplayDiff();
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
    checkGoogleCloudPolicysimulatorV1beta1AccessStateDiff(
        o.accessDiff as api.GoogleCloudPolicysimulatorV1beta1AccessStateDiff);
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayDiff--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata =
    0;
api.GoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata
    buildGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata() {
  var o = api.GoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata();
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
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResult = 0;
api.GoogleCloudPolicysimulatorV1beta1ReplayResult
    buildGoogleCloudPolicysimulatorV1beta1ReplayResult() {
  var o = api.GoogleCloudPolicysimulatorV1beta1ReplayResult();
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
    checkGoogleCloudPolicysimulatorV1beta1AccessTuple(
        o.accessTuple as api.GoogleCloudPolicysimulatorV1beta1AccessTuple);
    checkGoogleCloudPolicysimulatorV1beta1ReplayDiff(
        o.diff as api.GoogleCloudPolicysimulatorV1beta1ReplayDiff);
    checkGoogleRpcStatus(o.error as api.GoogleRpcStatus);
    checkGoogleTypeDate(o.lastSeenDate as api.GoogleTypeDate);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResult--;
}

core.int buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary = 0;
api.GoogleCloudPolicysimulatorV1beta1ReplayResultsSummary
    buildGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary() {
  var o = api.GoogleCloudPolicysimulatorV1beta1ReplayResultsSummary();
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
    unittest.expect(o.differenceCount, unittest.equals(42));
    unittest.expect(o.errorCount, unittest.equals(42));
    unittest.expect(o.logCount, unittest.equals(42));
    checkGoogleTypeDate(o.newestDate as api.GoogleTypeDate);
    checkGoogleTypeDate(o.oldestDate as api.GoogleTypeDate);
    unittest.expect(o.unchangedCount, unittest.equals(42));
  }
  buildCounterGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed7538() {
  var o = <api.GoogleIamV1AuditLogConfig>[];
  o.add(buildGoogleIamV1AuditLogConfig());
  o.add(buildGoogleIamV1AuditLogConfig());
  return o;
}

void checkUnnamed7538(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0] as api.GoogleIamV1AuditLogConfig);
  checkGoogleIamV1AuditLogConfig(o[1] as api.GoogleIamV1AuditLogConfig);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  var o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed7538();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed7538(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed7539() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7539(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  var o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed7539();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed7539(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed7540() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7540(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  var o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed7540();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition as api.GoogleTypeExpr);
    checkUnnamed7540(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed7541() {
  var o = <api.GoogleIamV1AuditConfig>[];
  o.add(buildGoogleIamV1AuditConfig());
  o.add(buildGoogleIamV1AuditConfig());
  return o;
}

void checkUnnamed7541(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0] as api.GoogleIamV1AuditConfig);
  checkGoogleIamV1AuditConfig(o[1] as api.GoogleIamV1AuditConfig);
}

core.List<api.GoogleIamV1Binding> buildUnnamed7542() {
  var o = <api.GoogleIamV1Binding>[];
  o.add(buildGoogleIamV1Binding());
  o.add(buildGoogleIamV1Binding());
  return o;
}

void checkUnnamed7542(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0] as api.GoogleIamV1Binding);
  checkGoogleIamV1Binding(o[1] as api.GoogleIamV1Binding);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  var o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed7541();
    o.bindings = buildUnnamed7542();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed7541(o.auditConfigs);
    checkUnnamed7542(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterGoogleIamV1Policy--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed7543() {
  var o = <api.GoogleLongrunningOperation>[];
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

void checkUnnamed7543(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0] as api.GoogleLongrunningOperation);
  checkGoogleLongrunningOperation(o[1] as api.GoogleLongrunningOperation);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  var o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed7543();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7543(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed7544() {
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

void checkUnnamed7544(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed7545() {
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

void checkUnnamed7545(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  var o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed7544();
    o.name = 'foo';
    o.response = buildUnnamed7545();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error as api.GoogleRpcStatus);
    checkUnnamed7544(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7545(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.Object> buildUnnamed7546() {
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

void checkUnnamed7546(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed7547() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7546());
  o.add(buildUnnamed7546());
  return o;
}

void checkUnnamed7547(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7546(o[0]);
  checkUnnamed7546(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7547();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed7547(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  var o = api.GoogleTypeDate();
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
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterGoogleTypeDate--;
}

core.int buildCounterGoogleTypeExpr = 0;
api.GoogleTypeExpr buildGoogleTypeExpr() {
  var o = api.GoogleTypeExpr();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleTypeExpr--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1AccessStateDiff',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudPolicysimulatorV1beta1AccessStateDiff();
      var od = api.GoogleCloudPolicysimulatorV1beta1AccessStateDiff.fromJson(
          o.toJson());
      checkGoogleCloudPolicysimulatorV1beta1AccessStateDiff(
          od as api.GoogleCloudPolicysimulatorV1beta1AccessStateDiff);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1AccessTuple', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudPolicysimulatorV1beta1AccessTuple();
      var od =
          api.GoogleCloudPolicysimulatorV1beta1AccessTuple.fromJson(o.toJson());
      checkGoogleCloudPolicysimulatorV1beta1AccessTuple(
          od as api.GoogleCloudPolicysimulatorV1beta1AccessTuple);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1beta1BindingExplanation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudPolicysimulatorV1beta1BindingExplanation();
      var od = api.GoogleCloudPolicysimulatorV1beta1BindingExplanation.fromJson(
          o.toJson());
      checkGoogleCloudPolicysimulatorV1beta1BindingExplanation(
          od as api.GoogleCloudPolicysimulatorV1beta1BindingExplanation);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership();
      var od =
          api.GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership
              .fromJson(o.toJson());
      checkGoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership(
          od as api
              .GoogleCloudPolicysimulatorV1beta1BindingExplanationAnnotatedMembership);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1ExplainedAccess',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudPolicysimulatorV1beta1ExplainedAccess();
      var od = api.GoogleCloudPolicysimulatorV1beta1ExplainedAccess.fromJson(
          o.toJson());
      checkGoogleCloudPolicysimulatorV1beta1ExplainedAccess(
          od as api.GoogleCloudPolicysimulatorV1beta1ExplainedAccess);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1ExplainedPolicy',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudPolicysimulatorV1beta1ExplainedPolicy();
      var od = api.GoogleCloudPolicysimulatorV1beta1ExplainedPolicy.fromJson(
          o.toJson());
      checkGoogleCloudPolicysimulatorV1beta1ExplainedPolicy(
          od as api.GoogleCloudPolicysimulatorV1beta1ExplainedPolicy);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse();
      var od = api.GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse
          .fromJson(o.toJson());
      checkGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse(
          od as api.GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1Replay', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudPolicysimulatorV1beta1Replay();
      var od = api.GoogleCloudPolicysimulatorV1beta1Replay.fromJson(o.toJson());
      checkGoogleCloudPolicysimulatorV1beta1Replay(
          od as api.GoogleCloudPolicysimulatorV1beta1Replay);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1ReplayConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudPolicysimulatorV1beta1ReplayConfig();
      var od = api.GoogleCloudPolicysimulatorV1beta1ReplayConfig.fromJson(
          o.toJson());
      checkGoogleCloudPolicysimulatorV1beta1ReplayConfig(
          od as api.GoogleCloudPolicysimulatorV1beta1ReplayConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1ReplayDiff', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudPolicysimulatorV1beta1ReplayDiff();
      var od =
          api.GoogleCloudPolicysimulatorV1beta1ReplayDiff.fromJson(o.toJson());
      checkGoogleCloudPolicysimulatorV1beta1ReplayDiff(
          od as api.GoogleCloudPolicysimulatorV1beta1ReplayDiff);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata();
      var od =
          api.GoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata.fromJson(
              o.toJson());
      checkGoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata(
          od as api.GoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicysimulatorV1beta1ReplayResult',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudPolicysimulatorV1beta1ReplayResult();
      var od = api.GoogleCloudPolicysimulatorV1beta1ReplayResult.fromJson(
          o.toJson());
      checkGoogleCloudPolicysimulatorV1beta1ReplayResult(
          od as api.GoogleCloudPolicysimulatorV1beta1ReplayResult);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicysimulatorV1beta1ReplayResultsSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary();
      var od =
          api.GoogleCloudPolicysimulatorV1beta1ReplayResultsSummary.fromJson(
              o.toJson());
      checkGoogleCloudPolicysimulatorV1beta1ReplayResultsSummary(
          od as api.GoogleCloudPolicysimulatorV1beta1ReplayResultsSummary);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIamV1AuditConfig();
      var od = api.GoogleIamV1AuditConfig.fromJson(o.toJson());
      checkGoogleIamV1AuditConfig(od as api.GoogleIamV1AuditConfig);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditLogConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIamV1AuditLogConfig();
      var od = api.GoogleIamV1AuditLogConfig.fromJson(o.toJson());
      checkGoogleIamV1AuditLogConfig(od as api.GoogleIamV1AuditLogConfig);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIamV1Binding();
      var od = api.GoogleIamV1Binding.fromJson(o.toJson());
      checkGoogleIamV1Binding(od as api.GoogleIamV1Binding);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIamV1Policy();
      var od = api.GoogleIamV1Policy.fromJson(o.toJson());
      checkGoogleIamV1Policy(od as api.GoogleIamV1Policy);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od = api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(
          od as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningOperation();
      var od = api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleRpcStatus();
      var od = api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od as api.GoogleRpcStatus);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleTypeDate();
      var od = api.GoogleTypeDate.fromJson(o.toJson());
      checkGoogleTypeDate(od as api.GoogleTypeDate);
    });
  });

  unittest.group('obj-schema-GoogleTypeExpr', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleTypeExpr();
      var od = api.GoogleTypeExpr.fromJson(o.toJson());
      checkGoogleTypeExpr(od as api.GoogleTypeExpr);
    });
  });

  unittest.group('resource-FoldersLocationsReplaysResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.PolicySimulatorApi(mock).folders.locations.replays;
      var arg_request = buildGoogleCloudPolicysimulatorV1beta1Replay();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudPolicysimulatorV1beta1Replay.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPolicysimulatorV1beta1Replay(
            obj as api.GoogleCloudPolicysimulatorV1beta1Replay);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.PolicySimulatorApi(mock).folders.locations.replays;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp =
            convert.json.encode(buildGoogleCloudPolicysimulatorV1beta1Replay());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPolicysimulatorV1beta1Replay(
            response as api.GoogleCloudPolicysimulatorV1beta1Replay);
      })));
    });
  });

  unittest.group('resource-FoldersLocationsReplaysResultsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.PolicySimulatorApi(mock).folders.locations.replays.results;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse(response
            as api.GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse);
      })));
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.PolicySimulatorApi(mock).operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.PolicySimulatorApi(mock).operations;
      var arg_filter = 'foo';
      var arg_name = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1beta1/operations"));
        pathOffset += 18;

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
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              filter: arg_filter,
              name: arg_name,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(
            response as api.GoogleLongrunningListOperationsResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsLocationsReplaysResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.PolicySimulatorApi(mock).organizations.locations.replays;
      var arg_request = buildGoogleCloudPolicysimulatorV1beta1Replay();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudPolicysimulatorV1beta1Replay.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPolicysimulatorV1beta1Replay(
            obj as api.GoogleCloudPolicysimulatorV1beta1Replay);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.PolicySimulatorApi(mock).organizations.locations.replays;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp =
            convert.json.encode(buildGoogleCloudPolicysimulatorV1beta1Replay());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPolicysimulatorV1beta1Replay(
            response as api.GoogleCloudPolicysimulatorV1beta1Replay);
      })));
    });
  });

  unittest.group('resource-OrganizationsLocationsReplaysResultsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.PolicySimulatorApi(mock).organizations.locations.replays.results;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse(response
            as api.GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsReplaysResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.PolicySimulatorApi(mock).projects.locations.replays;
      var arg_request = buildGoogleCloudPolicysimulatorV1beta1Replay();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudPolicysimulatorV1beta1Replay.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPolicysimulatorV1beta1Replay(
            obj as api.GoogleCloudPolicysimulatorV1beta1Replay);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.PolicySimulatorApi(mock).projects.locations.replays;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp =
            convert.json.encode(buildGoogleCloudPolicysimulatorV1beta1Replay());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPolicysimulatorV1beta1Replay(
            response as api.GoogleCloudPolicysimulatorV1beta1Replay);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsReplaysResultsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.PolicySimulatorApi(mock).projects.locations.replays.results;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(
            buildGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse(response
            as api.GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse);
      })));
    });
  });
}
