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

import 'package:googleapis/assuredworkloads/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest = 0;
api.GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest
buildGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest();
  buildCounterGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest <
      3) {
    o.acknowledgeType = 'foo';
    o.comment = 'foo';
    o.nonCompliantOrgPolicy = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest(
  api.GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest <
      3) {
    unittest.expect(o.acknowledgeType!, unittest.equals('foo'));
    unittest.expect(o.comment!, unittest.equals('foo'));
    unittest.expect(o.nonCompliantOrgPolicy!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse = 0;
api.GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse
buildGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse() {
  final o =
      api.GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse();
  buildCounterGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse(
  api.GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse--;
}

core.List<api.GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis>
buildUnnamed0() => [
  buildGoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis(),
  buildGoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis(),
];

void checkUnnamed0(
  core.List<api.GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis(o[0]);
  checkGoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis(o[1]);
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse = 0;
api.GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse
buildGoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse();
  buildCounterGoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse <
      3) {
    o.assetMoveAnalyses = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse(
  api.GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse <
      3) {
    checkUnnamed0(o.assetMoveAnalyses!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest = 0;
api.GoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest
buildGoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest();
  buildCounterGoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest <
      3) {
    o.action = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest(
  api.GoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest <
      3) {
    unittest.expect(o.action!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest--;
}

core.List<api.GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup>
buildUnnamed1() => [
  buildGoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup(),
  buildGoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup(),
];

void checkUnnamed1(
  core.List<api.GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup(o[0]);
  checkGoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis = 0;
api.GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis
buildGoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis();
  buildCounterGoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis < 3) {
    o.analysisGroups = buildUnnamed1();
    o.asset = 'foo';
    o.assetType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis(
  api.GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis < 3) {
    checkUnnamed1(o.analysisGroups!);
    unittest.expect(o.asset!, unittest.equals('foo'));
    unittest.expect(o.assetType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse =
    0;
api.GoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse
buildGoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse() {
  final o =
      api.GoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse();
  buildCounterGoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse(
  api.GoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse =
    0;
api.GoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse
buildGoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse() {
  final o =
      api.GoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse();
  buildCounterGoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse(
  api.GoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse--;
}

core.List<api.GoogleCloudAssuredworkloadsV1beta1Violation> buildUnnamed2() => [
  buildGoogleCloudAssuredworkloadsV1beta1Violation(),
  buildGoogleCloudAssuredworkloadsV1beta1Violation(),
];

void checkUnnamed2(
  core.List<api.GoogleCloudAssuredworkloadsV1beta1Violation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1beta1Violation(o[0]);
  checkGoogleCloudAssuredworkloadsV1beta1Violation(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1ListViolationsResponse =
    0;
api.GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse
buildGoogleCloudAssuredworkloadsV1beta1ListViolationsResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse();
  buildCounterGoogleCloudAssuredworkloadsV1beta1ListViolationsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ListViolationsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.violations = buildUnnamed2();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ListViolationsResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1ListViolationsResponse(
  api.GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1ListViolationsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ListViolationsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed2(o.violations!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ListViolationsResponse--;
}

core.List<api.GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate>
buildUnnamed3() => [
  buildGoogleCloudAssuredworkloadsV1beta1WorkloadUpdate(),
  buildGoogleCloudAssuredworkloadsV1beta1WorkloadUpdate(),
];

void checkUnnamed3(
  core.List<api.GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1beta1WorkloadUpdate(o[0]);
  checkGoogleCloudAssuredworkloadsV1beta1WorkloadUpdate(o[1]);
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse = 0;
api.GoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse
buildGoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse();
  buildCounterGoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse <
      3) {
    o.nextPageToken = 'foo';
    o.workloadUpdates = buildUnnamed3();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse(
  api.GoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed3(o.workloadUpdates!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse--;
}

core.List<api.GoogleCloudAssuredworkloadsV1beta1Workload> buildUnnamed4() => [
  buildGoogleCloudAssuredworkloadsV1beta1Workload(),
  buildGoogleCloudAssuredworkloadsV1beta1Workload(),
];

void checkUnnamed4(
  core.List<api.GoogleCloudAssuredworkloadsV1beta1Workload> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1beta1Workload(o[0]);
  checkGoogleCloudAssuredworkloadsV1beta1Workload(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse =
    0;
api.GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse
buildGoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse();
  buildCounterGoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse < 3) {
    o.nextPageToken = 'foo';
    o.workloads = buildUnnamed4();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse(
  api.GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed4(o.workloads!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup = 0;
api.GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup
buildGoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup();
  buildCounterGoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup < 3) {
    o.analysisResult =
        buildGoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult();
    o.displayName = 'foo';
    o.error = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup(
  api.GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup < 3) {
    checkGoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult(
      o.analysisResult!,
    );
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleRpcStatus(o.error!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup--;
}

core.List<api.GoogleCloudAssuredworkloadsV1beta1MoveImpact> buildUnnamed5() => [
  buildGoogleCloudAssuredworkloadsV1beta1MoveImpact(),
  buildGoogleCloudAssuredworkloadsV1beta1MoveImpact(),
];

void checkUnnamed5(
  core.List<api.GoogleCloudAssuredworkloadsV1beta1MoveImpact> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1beta1MoveImpact(o[0]);
  checkGoogleCloudAssuredworkloadsV1beta1MoveImpact(o[1]);
}

core.List<api.GoogleCloudAssuredworkloadsV1beta1MoveImpact> buildUnnamed6() => [
  buildGoogleCloudAssuredworkloadsV1beta1MoveImpact(),
  buildGoogleCloudAssuredworkloadsV1beta1MoveImpact(),
];

void checkUnnamed6(
  core.List<api.GoogleCloudAssuredworkloadsV1beta1MoveImpact> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1beta1MoveImpact(o[0]);
  checkGoogleCloudAssuredworkloadsV1beta1MoveImpact(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult = 0;
api.GoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult
buildGoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult();
  buildCounterGoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult < 3) {
    o.blockers = buildUnnamed5();
    o.warnings = buildUnnamed6();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult(
  api.GoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult < 3) {
    checkUnnamed5(o.blockers!);
    checkUnnamed6(o.warnings!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1MoveImpact = 0;
api.GoogleCloudAssuredworkloadsV1beta1MoveImpact
buildGoogleCloudAssuredworkloadsV1beta1MoveImpact() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1MoveImpact();
  buildCounterGoogleCloudAssuredworkloadsV1beta1MoveImpact++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1MoveImpact < 3) {
    o.detail = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1MoveImpact--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1MoveImpact(
  api.GoogleCloudAssuredworkloadsV1beta1MoveImpact o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1MoveImpact++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1MoveImpact < 3) {
    unittest.expect(o.detail!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1MoveImpact--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicy = 0;
api.GoogleCloudAssuredworkloadsV1beta1OrgPolicy
buildGoogleCloudAssuredworkloadsV1beta1OrgPolicy() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1OrgPolicy();
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicy++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicy < 3) {
    o.constraint = 'foo';
    o.inherit = true;
    o.reset = true;
    o.resource = 'foo';
    o.rule = buildGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicy--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1OrgPolicy(
  api.GoogleCloudAssuredworkloadsV1beta1OrgPolicy o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicy++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicy < 3) {
    unittest.expect(o.constraint!, unittest.equals('foo'));
    unittest.expect(o.inherit!, unittest.isTrue);
    unittest.expect(o.reset!, unittest.isTrue);
    unittest.expect(o.resource!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule(o.rule!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicy--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule = 0;
api.GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule
buildGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule();
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule < 3) {
    o.allowAll = true;
    o.denyAll = true;
    o.enforce = true;
    o.values =
        buildGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule(
  api.GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule < 3) {
    unittest.expect(o.allowAll!, unittest.isTrue);
    unittest.expect(o.denyAll!, unittest.isTrue);
    unittest.expect(o.enforce!, unittest.isTrue);
    checkGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues(
      o.values!,
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues =
    0;
api.GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues
buildGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues() {
  final o =
      api.GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues();
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues <
      3) {
    o.allowedValues = buildUnnamed7();
    o.deniedValues = buildUnnamed8();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues(
  api.GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues <
      3) {
    checkUnnamed7(o.allowedValues!);
    checkUnnamed8(o.deniedValues!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate = 0;
api.GoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate
buildGoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate();
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate < 3) {
    o.appliedPolicy = buildGoogleCloudAssuredworkloadsV1beta1OrgPolicy();
    o.suggestedPolicy = buildGoogleCloudAssuredworkloadsV1beta1OrgPolicy();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate(
  api.GoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate < 3) {
    checkGoogleCloudAssuredworkloadsV1beta1OrgPolicy(o.appliedPolicy!);
    checkGoogleCloudAssuredworkloadsV1beta1OrgPolicy(o.suggestedPolicy!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest =
    0;
api.GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest
buildGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest() {
  final o =
      api.GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest();
  buildCounterGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest <
      3) {
    o.restrictionType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest(
  api.GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest <
      3) {
    unittest.expect(o.restrictionType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse =
    0;
api.GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse
buildGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse() {
  final o =
      api.GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse();
  buildCounterGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse(
  api.GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1UpdateDetails = 0;
api.GoogleCloudAssuredworkloadsV1beta1UpdateDetails
buildGoogleCloudAssuredworkloadsV1beta1UpdateDetails() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1UpdateDetails();
  buildCounterGoogleCloudAssuredworkloadsV1beta1UpdateDetails++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1UpdateDetails < 3) {
    o.orgPolicyUpdate =
        buildGoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1UpdateDetails--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1UpdateDetails(
  api.GoogleCloudAssuredworkloadsV1beta1UpdateDetails o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1UpdateDetails++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1UpdateDetails < 3) {
    checkGoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate(o.orgPolicyUpdate!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1UpdateDetails--;
}

core.List<api.GoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext>
buildUnnamed9() => [
  buildGoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext(),
  buildGoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext(),
];

void checkUnnamed9(
  core.List<api.GoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext(o[0]);
  checkGoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1Violation = 0;
api.GoogleCloudAssuredworkloadsV1beta1Violation
buildGoogleCloudAssuredworkloadsV1beta1Violation() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1Violation();
  buildCounterGoogleCloudAssuredworkloadsV1beta1Violation++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1Violation < 3) {
    o.acknowledged = true;
    o.acknowledgementTime = 'foo';
    o.associatedOrgPolicyViolationId = 'foo';
    o.auditLogLink = 'foo';
    o.beginTime = 'foo';
    o.category = 'foo';
    o.description = 'foo';
    o.exceptionAuditLogLink = 'foo';
    o.exceptionContexts = buildUnnamed9();
    o.name = 'foo';
    o.nonCompliantOrgPolicy = 'foo';
    o.orgPolicyConstraint = 'foo';
    o.parentProjectNumber = 'foo';
    o.remediation =
        buildGoogleCloudAssuredworkloadsV1beta1ViolationRemediation();
    o.resolveTime = 'foo';
    o.resourceName = 'foo';
    o.resourceType = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
    o.violationType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1Violation--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1Violation(
  api.GoogleCloudAssuredworkloadsV1beta1Violation o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1Violation++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1Violation < 3) {
    unittest.expect(o.acknowledged!, unittest.isTrue);
    unittest.expect(o.acknowledgementTime!, unittest.equals('foo'));
    unittest.expect(o.associatedOrgPolicyViolationId!, unittest.equals('foo'));
    unittest.expect(o.auditLogLink!, unittest.equals('foo'));
    unittest.expect(o.beginTime!, unittest.equals('foo'));
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.exceptionAuditLogLink!, unittest.equals('foo'));
    checkUnnamed9(o.exceptionContexts!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nonCompliantOrgPolicy!, unittest.equals('foo'));
    unittest.expect(o.orgPolicyConstraint!, unittest.equals('foo'));
    unittest.expect(o.parentProjectNumber!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1beta1ViolationRemediation(o.remediation!);
    unittest.expect(o.resolveTime!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.violationType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1Violation--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext = 0;
api.GoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext
buildGoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext();
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext <
      3) {
    o.acknowledgementTime = 'foo';
    o.comment = 'foo';
    o.userName = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext(
  api.GoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext <
      3) {
    unittest.expect(o.acknowledgementTime!, unittest.equals('foo'));
    unittest.expect(o.comment!, unittest.equals('foo'));
    unittest.expect(o.userName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext--;
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediation = 0;
api.GoogleCloudAssuredworkloadsV1beta1ViolationRemediation
buildGoogleCloudAssuredworkloadsV1beta1ViolationRemediation() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1ViolationRemediation();
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediation++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediation < 3) {
    o.compliantValues = buildUnnamed10();
    o.instructions =
        buildGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions();
    o.remediationType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediation--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1ViolationRemediation(
  api.GoogleCloudAssuredworkloadsV1beta1ViolationRemediation o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediation++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediation < 3) {
    checkUnnamed10(o.compliantValues!);
    checkGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions(
      o.instructions!,
    );
    unittest.expect(o.remediationType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediation--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions =
    0;
api.GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions
buildGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions() {
  final o =
      api.GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions();
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions <
      3) {
    o.consoleInstructions =
        buildGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole();
    o.gcloudInstructions =
        buildGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions(
  api.GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions <
      3) {
    checkGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole(
      o.consoleInstructions!,
    );
    checkGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud(
      o.gcloudInstructions!,
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions--;
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

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole =
    0;
api.GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole
buildGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole() {
  final o =
      api.GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole();
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole <
      3) {
    o.additionalLinks = buildUnnamed11();
    o.consoleUris = buildUnnamed12();
    o.steps = buildUnnamed13();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole--;
  return o;
}

void
checkGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole(
  api.GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole
  o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole <
      3) {
    checkUnnamed11(o.additionalLinks!);
    checkUnnamed12(o.consoleUris!);
    checkUnnamed13(o.steps!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole--;
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud =
    0;
api.GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud
buildGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud() {
  final o =
      api.GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud();
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud <
      3) {
    o.additionalLinks = buildUnnamed14();
    o.gcloudCommands = buildUnnamed15();
    o.steps = buildUnnamed16();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud--;
  return o;
}

void
checkGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud(
  api.GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud
  o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud <
      3) {
    checkUnnamed14(o.additionalLinks!);
    checkUnnamed15(o.gcloudCommands!);
    checkUnnamed16(o.steps!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed18() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed18(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings>
buildUnnamed19() => [
  buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(),
  buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(),
];

void checkUnnamed19(
  core.List<api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(o[0]);
  checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(o[1]);
}

core.List<api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo>
buildUnnamed20() => [
  buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo(),
  buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo(),
];

void checkUnnamed20(
  core.List<api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo(o[0]);
  checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1Workload = 0;
api.GoogleCloudAssuredworkloadsV1beta1Workload
buildGoogleCloudAssuredworkloadsV1beta1Workload() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1Workload();
  buildCounterGoogleCloudAssuredworkloadsV1beta1Workload++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1Workload < 3) {
    o.availableUpdates = 42;
    o.billingAccount = 'foo';
    o.cjisSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings();
    o.complianceRegime = 'foo';
    o.complianceStatus =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus();
    o.complianceUpdatesEnabled = true;
    o.compliantButDisallowedServices = buildUnnamed17();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.ekmProvisioningResponse =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse();
    o.enableSovereignControls = true;
    o.etag = 'foo';
    o.fedrampHighSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings();
    o.fedrampModerateSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings();
    o.il4Settings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings();
    o.kajEnrollmentState = 'foo';
    o.kmsSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings();
    o.labels = buildUnnamed18();
    o.name = 'foo';
    o.partner = 'foo';
    o.partnerPermissions =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions();
    o.partnerServicesBillingAccount = 'foo';
    o.provisionedResourcesParent = 'foo';
    o.resourceMonitoringEnabled = true;
    o.resourceSettings = buildUnnamed19();
    o.resources = buildUnnamed20();
    o.saaEnrollmentResponse =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse();
    o.violationNotificationsEnabled = true;
    o.workloadOptions =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1Workload--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1Workload(
  api.GoogleCloudAssuredworkloadsV1beta1Workload o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1Workload++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1Workload < 3) {
    unittest.expect(o.availableUpdates!, unittest.equals(42));
    unittest.expect(o.billingAccount!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings(
      o.cjisSettings!,
    );
    unittest.expect(o.complianceRegime!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus(
      o.complianceStatus!,
    );
    unittest.expect(o.complianceUpdatesEnabled!, unittest.isTrue);
    checkUnnamed17(o.compliantButDisallowedServices!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse(
      o.ekmProvisioningResponse!,
    );
    unittest.expect(o.enableSovereignControls!, unittest.isTrue);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings(
      o.fedrampHighSettings!,
    );
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings(
      o.fedrampModerateSettings!,
    );
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings(o.il4Settings!);
    unittest.expect(o.kajEnrollmentState!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings(o.kmsSettings!);
    checkUnnamed18(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.partner!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions(
      o.partnerPermissions!,
    );
    unittest.expect(o.partnerServicesBillingAccount!, unittest.equals('foo'));
    unittest.expect(o.provisionedResourcesParent!, unittest.equals('foo'));
    unittest.expect(o.resourceMonitoringEnabled!, unittest.isTrue);
    checkUnnamed19(o.resourceSettings!);
    checkUnnamed20(o.resources!);
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse(
      o.saaEnrollmentResponse!,
    );
    unittest.expect(o.violationNotificationsEnabled!, unittest.isTrue);
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions(
      o.workloadOptions!,
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1Workload--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings = 0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings
buildGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings < 3) {
    o.kmsSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings(
  api.GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings < 3) {
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings(o.kmsSettings!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus = 0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus
buildGoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus <
      3) {
    o.acknowledgedResourceViolationCount = 42;
    o.acknowledgedViolationCount = 42;
    o.activeResourceViolationCount = 42;
    o.activeViolationCount = 42;
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus(
  api.GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus <
      3) {
    unittest.expect(o.acknowledgedResourceViolationCount!, unittest.equals(42));
    unittest.expect(o.acknowledgedViolationCount!, unittest.equals(42));
    unittest.expect(o.activeResourceViolationCount!, unittest.equals(42));
    unittest.expect(o.activeViolationCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse =
    0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse
buildGoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse() {
  final o =
      api.GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse <
      3) {
    o.ekmProvisioningErrorDomain = 'foo';
    o.ekmProvisioningErrorMapping = 'foo';
    o.ekmProvisioningState = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse(
  api.GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse <
      3) {
    unittest.expect(o.ekmProvisioningErrorDomain!, unittest.equals('foo'));
    unittest.expect(o.ekmProvisioningErrorMapping!, unittest.equals('foo'));
    unittest.expect(o.ekmProvisioningState!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings = 0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings
buildGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings <
      3) {
    o.kmsSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings(
  api.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings <
      3) {
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings(o.kmsSettings!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings =
    0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings
buildGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings() {
  final o =
      api.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings <
      3) {
    o.kmsSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings(
  api.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings <
      3) {
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings(o.kmsSettings!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings = 0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings
buildGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings < 3) {
    o.kmsSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings(
  api.GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings < 3) {
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings(o.kmsSettings!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings = 0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings
buildGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings < 3) {
    o.nextRotationTime = 'foo';
    o.rotationPeriod = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings(
  api.GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings < 3) {
    unittest.expect(o.nextRotationTime!, unittest.equals('foo'));
    unittest.expect(o.rotationPeriod!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions = 0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions
buildGoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions <
      3) {
    o.accessTransparencyLogsSupportCaseViewer = true;
    o.assuredWorkloadsMonitoring = true;
    o.dataLogsViewer = true;
    o.serviceAccessApprover = true;
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions(
  api.GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions <
      3) {
    unittest.expect(
      o.accessTransparencyLogsSupportCaseViewer!,
      unittest.isTrue,
    );
    unittest.expect(o.assuredWorkloadsMonitoring!, unittest.isTrue);
    unittest.expect(o.dataLogsViewer!, unittest.isTrue);
    unittest.expect(o.serviceAccessApprover!, unittest.isTrue);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo = 0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo
buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo < 3) {
    o.resourceId = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo(
  api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo < 3) {
    unittest.expect(o.resourceId!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings = 0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings
buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings <
      3) {
    o.displayName = 'foo';
    o.resourceId = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(
  api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings <
      3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.resourceId!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse = 0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse
buildGoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse() {
  final o =
      api.GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse <
      3) {
    o.setupErrors = buildUnnamed21();
    o.setupStatus = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse(
  api.GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse <
      3) {
    checkUnnamed21(o.setupErrors!);
    unittest.expect(o.setupStatus!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadUpdate = 0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate
buildGoogleCloudAssuredworkloadsV1beta1WorkloadUpdate() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadUpdate++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadUpdate < 3) {
    o.createTime = 'foo';
    o.details = buildGoogleCloudAssuredworkloadsV1beta1UpdateDetails();
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadUpdate--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadUpdate(
  api.GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadUpdate++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadUpdate < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1beta1UpdateDetails(o.details!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadUpdate--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions =
    0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions
buildGoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions <
      3) {
    o.kajEnrollmentType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions(
  api.GoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions <
      3) {
    unittest.expect(o.kajEnrollmentType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions--;
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
  api.GoogleLongrunningListOperationsResponse o,
) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed22(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed23() => {
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

void checkUnnamed23(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed24() => {
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

void checkUnnamed24(core.Map<core.String, core.Object?> o) {
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
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed24(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
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

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1ListViolationsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1ListViolationsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1beta1MoveImpact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1beta1MoveImpact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1beta1MoveImpact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1beta1MoveImpact(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1beta1OrgPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1beta1OrgPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1beta1OrgPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1beta1OrgPolicy(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1UpdateDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1beta1UpdateDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAssuredworkloadsV1beta1UpdateDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1UpdateDetails(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1beta1Violation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1beta1Violation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1beta1Violation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1beta1Violation(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1ViolationRemediation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1beta1ViolationRemediation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1ViolationRemediation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1ViolationRemediation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1beta1Workload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1beta1Workload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1beta1Workload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1beta1Workload(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1beta1WorkloadUpdate();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1WorkloadUpdate(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions(od);
      });
    },
  );

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

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleProtobufEmpty(od);
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

  unittest.group('resource-OrganizationsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.operations;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          api.AssuredworkloadsApi(mock).organizations.locations.operations;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

  unittest.group('resource-OrganizationsLocationsWorkloadsResource', () {
    unittest.test('method--analyzeWorkloadMove', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
      final arg_target = 'foo';
      final arg_assetTypes = buildUnnamed27();
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_project = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['project']!.first,
            unittest.equals(arg_project),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.analyzeWorkloadMove(
        arg_target,
        assetTypes: arg_assetTypes,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        project: arg_project,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
      final arg_request = buildGoogleCloudAssuredworkloadsV1beta1Workload();
      final arg_parent = 'foo';
      final arg_externalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudAssuredworkloadsV1beta1Workload.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudAssuredworkloadsV1beta1Workload(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            queryMap['externalId']!.first,
            unittest.equals(arg_externalId),
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
        externalId: arg_externalId,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--enableComplianceUpdates', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            buildGoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enableComplianceUpdates(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse,
      );
    });

    unittest.test('method--enableResourceMonitoring', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            buildGoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enableResourceMonitoring(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            buildGoogleCloudAssuredworkloadsV1beta1Workload(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudAssuredworkloadsV1beta1Workload(
        response as api.GoogleCloudAssuredworkloadsV1beta1Workload,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            buildGoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse(
        response as api.GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
      final arg_request = buildGoogleCloudAssuredworkloadsV1beta1Workload();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudAssuredworkloadsV1beta1Workload.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudAssuredworkloadsV1beta1Workload(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1beta1Workload(),
          );
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
      checkGoogleCloudAssuredworkloadsV1beta1Workload(
        response as api.GoogleCloudAssuredworkloadsV1beta1Workload,
      );
    });

    unittest.test('method--restrictAllowedResources', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
      final arg_request =
          buildGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest(
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            buildGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.restrictAllowedResources(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse,
      );
    });
  });

  unittest.group('resource-OrganizationsLocationsWorkloadsUpdatesResource', () {
    unittest.test('method--apply', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(
            mock,
          ).organizations.locations.workloads.updates;
      final arg_request =
          buildGoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest(
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.apply(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(
            mock,
          ).organizations.locations.workloads.updates;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            buildGoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse(),
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
      checkGoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse,
      );
    });
  });

  unittest.group('resource-OrganizationsLocationsWorkloadsViolationsResource', () {
    unittest.test('method--acknowledge', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(
            mock,
          ).organizations.locations.workloads.violations;
      final arg_request =
          buildGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest(
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            buildGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.acknowledge(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(
            mock,
          ).organizations.locations.workloads.violations;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            buildGoogleCloudAssuredworkloadsV1beta1Violation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudAssuredworkloadsV1beta1Violation(
        response as api.GoogleCloudAssuredworkloadsV1beta1Violation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(
            mock,
          ).organizations.locations.workloads.violations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_interval_endTime = 'foo';
      final arg_interval_startTime = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            queryMap['interval.endTime']!.first,
            unittest.equals(arg_interval_endTime),
          );
          unittest.expect(
            queryMap['interval.startTime']!.first,
            unittest.equals(arg_interval_startTime),
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
            buildGoogleCloudAssuredworkloadsV1beta1ListViolationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        interval_endTime: arg_interval_endTime,
        interval_startTime: arg_interval_startTime,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1beta1ListViolationsResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse,
      );
    });
  });
}
