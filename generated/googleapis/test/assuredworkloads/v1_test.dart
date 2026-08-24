// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

import 'package:googleapis/assuredworkloads/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest =
    0;
api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest
buildGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest() {
  final o = api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest();
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest <
      3) {
    o.acknowledgeType = 'foo';
    o.comment = 'foo';
    o.nonCompliantOrgPolicy = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest(
  api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest <
      3) {
    unittest.expect(o.acknowledgeType!, unittest.equals('foo'));
    unittest.expect(o.comment!, unittest.equals('foo'));
    unittest.expect(o.nonCompliantOrgPolicy!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse =
    0;
api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse
buildGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse();
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse(
  api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse--;
}

core.List<api.GoogleCloudAssuredworkloadsV1AggregatedComplianceReport>
buildUnnamed0() => [
  buildGoogleCloudAssuredworkloadsV1AggregatedComplianceReport(),
  buildGoogleCloudAssuredworkloadsV1AggregatedComplianceReport(),
];

void checkUnnamed0(
  core.List<api.GoogleCloudAssuredworkloadsV1AggregatedComplianceReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1AggregatedComplianceReport(o[0]);
  checkGoogleCloudAssuredworkloadsV1AggregatedComplianceReport(o[1]);
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse =
    0;
api.GoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse
buildGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse() {
  final o =
      api.GoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse();
  buildCounterGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse <
      3) {
    o.aggregatedComplianceReports = buildUnnamed0();
  }
  buildCounterGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse--;
  return o;
}

void
checkGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse(
  api.GoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse
  o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse <
      3) {
    checkUnnamed0(o.aggregatedComplianceReports!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1AggregatedComplianceReport =
    0;
api.GoogleCloudAssuredworkloadsV1AggregatedComplianceReport
buildGoogleCloudAssuredworkloadsV1AggregatedComplianceReport() {
  final o = api.GoogleCloudAssuredworkloadsV1AggregatedComplianceReport();
  buildCounterGoogleCloudAssuredworkloadsV1AggregatedComplianceReport++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AggregatedComplianceReport < 3) {
    o.controlAssessmentDetails =
        buildGoogleCloudAssuredworkloadsV1ControlAssessmentDetails();
    o.reportTime = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1AggregatedComplianceReport--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1AggregatedComplianceReport(
  api.GoogleCloudAssuredworkloadsV1AggregatedComplianceReport o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1AggregatedComplianceReport++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AggregatedComplianceReport < 3) {
    checkGoogleCloudAssuredworkloadsV1ControlAssessmentDetails(
      o.controlAssessmentDetails!,
    );
    unittest.expect(o.reportTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1AggregatedComplianceReport--;
}

core.List<api.GoogleCloudAssuredworkloadsV1AssetMoveAnalysis> buildUnnamed1() =>
    [
      buildGoogleCloudAssuredworkloadsV1AssetMoveAnalysis(),
      buildGoogleCloudAssuredworkloadsV1AssetMoveAnalysis(),
    ];

void checkUnnamed1(
  core.List<api.GoogleCloudAssuredworkloadsV1AssetMoveAnalysis> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1AssetMoveAnalysis(o[0]);
  checkGoogleCloudAssuredworkloadsV1AssetMoveAnalysis(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse =
    0;
api.GoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse
buildGoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse();
  buildCounterGoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse <
      3) {
    o.assetMoveAnalyses = buildUnnamed1();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse(
  api.GoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse <
      3) {
    checkUnnamed1(o.assetMoveAnalyses!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest =
    0;
api.GoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest
buildGoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest() {
  final o = api.GoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest();
  buildCounterGoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest < 3) {
    o.action = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest(
  api.GoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest =
    0;
api.GoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest
buildGoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest() {
  final o = api.GoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest();
  buildCounterGoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest <
      3) {
    o.archiveTime = 'foo';
    o.batchSize = 42;
    o.eventCutoffTime = 'foo';
    o.maxEventsMove = 42;
    o.organizationId = 'foo';
    o.region = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest(
  api.GoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest <
      3) {
    unittest.expect(o.archiveTime!, unittest.equals('foo'));
    unittest.expect(o.batchSize!, unittest.equals(42));
    unittest.expect(o.eventCutoffTime!, unittest.equals('foo'));
    unittest.expect(o.maxEventsMove!, unittest.equals(42));
    unittest.expect(o.organizationId!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse = 0;
api.GoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse
buildGoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse();
  buildCounterGoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse <
      3) {
    o.movedEventsCount = 42;
  }
  buildCounterGoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse(
  api.GoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse <
      3) {
    unittest.expect(o.movedEventsCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse--;
}

core.List<api.GoogleCloudAssuredworkloadsV1MoveAnalysisGroup> buildUnnamed2() =>
    [
      buildGoogleCloudAssuredworkloadsV1MoveAnalysisGroup(),
      buildGoogleCloudAssuredworkloadsV1MoveAnalysisGroup(),
    ];

void checkUnnamed2(
  core.List<api.GoogleCloudAssuredworkloadsV1MoveAnalysisGroup> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1MoveAnalysisGroup(o[0]);
  checkGoogleCloudAssuredworkloadsV1MoveAnalysisGroup(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1AssetMoveAnalysis = 0;
api.GoogleCloudAssuredworkloadsV1AssetMoveAnalysis
buildGoogleCloudAssuredworkloadsV1AssetMoveAnalysis() {
  final o = api.GoogleCloudAssuredworkloadsV1AssetMoveAnalysis();
  buildCounterGoogleCloudAssuredworkloadsV1AssetMoveAnalysis++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AssetMoveAnalysis < 3) {
    o.analysisGroups = buildUnnamed2();
    o.asset = 'foo';
    o.assetType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1AssetMoveAnalysis--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1AssetMoveAnalysis(
  api.GoogleCloudAssuredworkloadsV1AssetMoveAnalysis o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1AssetMoveAnalysis++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AssetMoveAnalysis < 3) {
    checkUnnamed2(o.analysisGroups!);
    unittest.expect(o.asset!, unittest.equals('foo'));
    unittest.expect(o.assetType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1AssetMoveAnalysis--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1CELExpression = 0;
api.GoogleCloudAssuredworkloadsV1CELExpression
buildGoogleCloudAssuredworkloadsV1CELExpression() {
  final o = api.GoogleCloudAssuredworkloadsV1CELExpression();
  buildCounterGoogleCloudAssuredworkloadsV1CELExpression++;
  if (buildCounterGoogleCloudAssuredworkloadsV1CELExpression < 3) {
    o.expression = 'foo';
    o.resourceTypesValues = buildGoogleCloudAssuredworkloadsV1StringList();
  }
  buildCounterGoogleCloudAssuredworkloadsV1CELExpression--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1CELExpression(
  api.GoogleCloudAssuredworkloadsV1CELExpression o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1CELExpression++;
  if (buildCounterGoogleCloudAssuredworkloadsV1CELExpression < 3) {
    unittest.expect(o.expression!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1StringList(o.resourceTypesValues!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1CELExpression--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails = 0;
api.GoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails
buildGoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails() {
  final o = api.GoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails();
  buildCounterGoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails++;
  if (buildCounterGoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails <
      3) {
    o.evaluationState = 'foo';
    o.findingsCount = 42;
  }
  buildCounterGoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails(
  api.GoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails++;
  if (buildCounterGoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails <
      3) {
    unittest.expect(o.evaluationState!, unittest.equals('foo'));
    unittest.expect(o.findingsCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudAssuredworkloadsV1Rule> buildUnnamed5() => [
  buildGoogleCloudAssuredworkloadsV1Rule(),
  buildGoogleCloudAssuredworkloadsV1Rule(),
];

void checkUnnamed5(core.List<api.GoogleCloudAssuredworkloadsV1Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1Rule(o[0]);
  checkGoogleCloudAssuredworkloadsV1Rule(o[1]);
}

core.List<api.GoogleCloudAssuredworkloadsV1SimilarControls> buildUnnamed6() => [
  buildGoogleCloudAssuredworkloadsV1SimilarControls(),
  buildGoogleCloudAssuredworkloadsV1SimilarControls(),
];

void checkUnnamed6(
  core.List<api.GoogleCloudAssuredworkloadsV1SimilarControls> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1SimilarControls(o[0]);
  checkGoogleCloudAssuredworkloadsV1SimilarControls(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1CloudControlReport = 0;
api.GoogleCloudAssuredworkloadsV1CloudControlReport
buildGoogleCloudAssuredworkloadsV1CloudControlReport() {
  final o = api.GoogleCloudAssuredworkloadsV1CloudControlReport();
  buildCounterGoogleCloudAssuredworkloadsV1CloudControlReport++;
  if (buildCounterGoogleCloudAssuredworkloadsV1CloudControlReport < 3) {
    o.categories = buildUnnamed3();
    o.cloudControl = 'foo';
    o.cloudControlAssessmentDetails =
        buildGoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails();
    o.cloudControlDeployment = 'foo';
    o.cloudControlType = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.enforcementMode = 'foo';
    o.findingCategory = 'foo';
    o.findingSeverity = 'foo';
    o.frameworkMajorRevisionIds = buildUnnamed4();
    o.majorRevisionId = 'foo';
    o.manualCloudControlAssessmentDetails =
        buildGoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails();
    o.minorRevisionId = 'foo';
    o.rules = buildUnnamed5();
    o.similarControls = buildUnnamed6();
  }
  buildCounterGoogleCloudAssuredworkloadsV1CloudControlReport--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1CloudControlReport(
  api.GoogleCloudAssuredworkloadsV1CloudControlReport o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1CloudControlReport++;
  if (buildCounterGoogleCloudAssuredworkloadsV1CloudControlReport < 3) {
    checkUnnamed3(o.categories!);
    unittest.expect(o.cloudControl!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails(
      o.cloudControlAssessmentDetails!,
    );
    unittest.expect(o.cloudControlDeployment!, unittest.equals('foo'));
    unittest.expect(o.cloudControlType!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.enforcementMode!, unittest.equals('foo'));
    unittest.expect(o.findingCategory!, unittest.equals('foo'));
    unittest.expect(o.findingSeverity!, unittest.equals('foo'));
    checkUnnamed4(o.frameworkMajorRevisionIds!);
    unittest.expect(o.majorRevisionId!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails(
      o.manualCloudControlAssessmentDetails!,
    );
    unittest.expect(o.minorRevisionId!, unittest.equals('foo'));
    checkUnnamed5(o.rules!);
    checkUnnamed6(o.similarControls!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1CloudControlReport--;
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

core.int buildCounterGoogleCloudAssuredworkloadsV1ControlAssessmentDetails = 0;
api.GoogleCloudAssuredworkloadsV1ControlAssessmentDetails
buildGoogleCloudAssuredworkloadsV1ControlAssessmentDetails() {
  final o = api.GoogleCloudAssuredworkloadsV1ControlAssessmentDetails();
  buildCounterGoogleCloudAssuredworkloadsV1ControlAssessmentDetails++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ControlAssessmentDetails < 3) {
    o.assessedPassingControlIds = buildUnnamed7();
    o.assessedPassingControls = 42;
    o.failingControlIds = buildUnnamed8();
    o.failingControls = 42;
    o.notAssessedControlIds = buildUnnamed9();
    o.notAssessedControls = 42;
    o.passingControlIds = buildUnnamed10();
    o.passingControls = 42;
  }
  buildCounterGoogleCloudAssuredworkloadsV1ControlAssessmentDetails--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ControlAssessmentDetails(
  api.GoogleCloudAssuredworkloadsV1ControlAssessmentDetails o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ControlAssessmentDetails++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ControlAssessmentDetails < 3) {
    checkUnnamed7(o.assessedPassingControlIds!);
    unittest.expect(o.assessedPassingControls!, unittest.equals(42));
    checkUnnamed8(o.failingControlIds!);
    unittest.expect(o.failingControls!, unittest.equals(42));
    checkUnnamed9(o.notAssessedControlIds!);
    unittest.expect(o.notAssessedControls!, unittest.equals(42));
    checkUnnamed10(o.passingControlIds!);
    unittest.expect(o.passingControls!, unittest.equals(42));
  }
  buildCounterGoogleCloudAssuredworkloadsV1ControlAssessmentDetails--;
}

core.List<api.GoogleCloudAssuredworkloadsV1CloudControlReport>
buildUnnamed11() => [
  buildGoogleCloudAssuredworkloadsV1CloudControlReport(),
  buildGoogleCloudAssuredworkloadsV1CloudControlReport(),
];

void checkUnnamed11(
  core.List<api.GoogleCloudAssuredworkloadsV1CloudControlReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1CloudControlReport(o[0]);
  checkGoogleCloudAssuredworkloadsV1CloudControlReport(o[1]);
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudAssuredworkloadsV1SimilarControls> buildUnnamed13() =>
    [
      buildGoogleCloudAssuredworkloadsV1SimilarControls(),
      buildGoogleCloudAssuredworkloadsV1SimilarControls(),
    ];

void checkUnnamed13(
  core.List<api.GoogleCloudAssuredworkloadsV1SimilarControls> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1SimilarControls(o[0]);
  checkGoogleCloudAssuredworkloadsV1SimilarControls(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1DbControlComplianceSummary =
    0;
api.GoogleCloudAssuredworkloadsV1DbControlComplianceSummary
buildGoogleCloudAssuredworkloadsV1DbControlComplianceSummary() {
  final o = api.GoogleCloudAssuredworkloadsV1DbControlComplianceSummary();
  buildCounterGoogleCloudAssuredworkloadsV1DbControlComplianceSummary++;
  if (buildCounterGoogleCloudAssuredworkloadsV1DbControlComplianceSummary < 3) {
    o.cloudControlReports = buildUnnamed11();
    o.complianceFrameworks = buildUnnamed12();
    o.control = 'foo';
    o.controlResponsibilityType = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.isFakeControl = true;
    o.name = 'foo';
    o.overallEvaluationState = 'foo';
    o.similarControls = buildUnnamed13();
    o.totalFindingsCount = 42;
  }
  buildCounterGoogleCloudAssuredworkloadsV1DbControlComplianceSummary--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1DbControlComplianceSummary(
  api.GoogleCloudAssuredworkloadsV1DbControlComplianceSummary o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1DbControlComplianceSummary++;
  if (buildCounterGoogleCloudAssuredworkloadsV1DbControlComplianceSummary < 3) {
    checkUnnamed11(o.cloudControlReports!);
    checkUnnamed12(o.complianceFrameworks!);
    unittest.expect(o.control!, unittest.equals('foo'));
    unittest.expect(o.controlResponsibilityType!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.isFakeControl!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.overallEvaluationState!, unittest.equals('foo'));
    checkUnnamed13(o.similarControls!);
    unittest.expect(o.totalFindingsCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudAssuredworkloadsV1DbControlComplianceSummary--;
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudAssuredworkloadsV1DbFindingSummary = 0;
api.GoogleCloudAssuredworkloadsV1DbFindingSummary
buildGoogleCloudAssuredworkloadsV1DbFindingSummary() {
  final o = api.GoogleCloudAssuredworkloadsV1DbFindingSummary();
  buildCounterGoogleCloudAssuredworkloadsV1DbFindingSummary++;
  if (buildCounterGoogleCloudAssuredworkloadsV1DbFindingSummary < 3) {
    o.findingCategory = 'foo';
    o.findingClass = 'foo';
    o.findingCount = 'foo';
    o.name = 'foo';
    o.organizationPolicyFindingCount = 'foo';
    o.relatedFrameworks = buildUnnamed14();
    o.resourceFindingCount = 'foo';
    o.severity = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1DbFindingSummary--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1DbFindingSummary(
  api.GoogleCloudAssuredworkloadsV1DbFindingSummary o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1DbFindingSummary++;
  if (buildCounterGoogleCloudAssuredworkloadsV1DbFindingSummary < 3) {
    unittest.expect(o.findingCategory!, unittest.equals('foo'));
    unittest.expect(o.findingClass!, unittest.equals('foo'));
    unittest.expect(o.findingCount!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.organizationPolicyFindingCount!, unittest.equals('foo'));
    checkUnnamed14(o.relatedFrameworks!);
    unittest.expect(o.resourceFindingCount!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1DbFindingSummary--;
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

core.List<api.GoogleCloudAssuredworkloadsV1TargetResourceDetails>
buildUnnamed17() => [
  buildGoogleCloudAssuredworkloadsV1TargetResourceDetails(),
  buildGoogleCloudAssuredworkloadsV1TargetResourceDetails(),
];

void checkUnnamed17(
  core.List<api.GoogleCloudAssuredworkloadsV1TargetResourceDetails> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1TargetResourceDetails(o[0]);
  checkGoogleCloudAssuredworkloadsV1TargetResourceDetails(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary =
    0;
api.GoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary
buildGoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary() {
  final o = api.GoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary();
  buildCounterGoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary++;
  if (buildCounterGoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary <
      3) {
    o.controlAssessmentDetails =
        buildGoogleCloudAssuredworkloadsV1ControlAssessmentDetails();
    o.controlsPassingTrend = buildGoogleCloudAssuredworkloadsV1Trend();
    o.findingCount = 'foo';
    o.framework = 'foo';
    o.frameworkCategories = buildUnnamed15();
    o.frameworkDisplayName = 'foo';
    o.frameworkType = 'foo';
    o.majorRevisionId = 'foo';
    o.minorRevisionId = 'foo';
    o.name = 'foo';
    o.supportedCloudProviders = buildUnnamed16();
    o.targetResourceDetails = buildUnnamed17();
  }
  buildCounterGoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary(
  api.GoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary++;
  if (buildCounterGoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary <
      3) {
    checkGoogleCloudAssuredworkloadsV1ControlAssessmentDetails(
      o.controlAssessmentDetails!,
    );
    checkGoogleCloudAssuredworkloadsV1Trend(o.controlsPassingTrend!);
    unittest.expect(o.findingCount!, unittest.equals('foo'));
    unittest.expect(o.framework!, unittest.equals('foo'));
    checkUnnamed15(o.frameworkCategories!);
    unittest.expect(o.frameworkDisplayName!, unittest.equals('foo'));
    unittest.expect(o.frameworkType!, unittest.equals('foo'));
    unittest.expect(o.majorRevisionId!, unittest.equals('foo'));
    unittest.expect(o.minorRevisionId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed16(o.supportedCloudProviders!);
    checkUnnamed17(o.targetResourceDetails!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse = 0;
api.GoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse
buildGoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse();
  buildCounterGoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse(
  api.GoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse = 0;
api.GoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse
buildGoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse();
  buildCounterGoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse(
  api.GoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudAssuredworkloadsV1TargetResourceDetails>
buildUnnamed20() => [
  buildGoogleCloudAssuredworkloadsV1TargetResourceDetails(),
  buildGoogleCloudAssuredworkloadsV1TargetResourceDetails(),
];

void checkUnnamed20(
  core.List<api.GoogleCloudAssuredworkloadsV1TargetResourceDetails> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1TargetResourceDetails(o[0]);
  checkGoogleCloudAssuredworkloadsV1TargetResourceDetails(o[1]);
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse =
    0;
api.GoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse
buildGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse() {
  final o =
      api.GoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse();
  buildCounterGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse <
      3) {
    o.controlAssessmentDetails =
        buildGoogleCloudAssuredworkloadsV1ControlAssessmentDetails();
    o.framework = 'foo';
    o.frameworkCategories = buildUnnamed18();
    o.frameworkDescription = 'foo';
    o.frameworkDisplayName = 'foo';
    o.frameworkType = 'foo';
    o.majorRevisionId = 'foo';
    o.minorRevisionId = 'foo';
    o.name = 'foo';
    o.supportedCloudProviders = buildUnnamed19();
    o.targetResourceDetails = buildUnnamed20();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse(
  api.GoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse <
      3) {
    checkGoogleCloudAssuredworkloadsV1ControlAssessmentDetails(
      o.controlAssessmentDetails!,
    );
    unittest.expect(o.framework!, unittest.equals('foo'));
    checkUnnamed18(o.frameworkCategories!);
    unittest.expect(o.frameworkDescription!, unittest.equals('foo'));
    unittest.expect(o.frameworkDisplayName!, unittest.equals('foo'));
    unittest.expect(o.frameworkType!, unittest.equals('foo'));
    unittest.expect(o.majorRevisionId!, unittest.equals('foo'));
    unittest.expect(o.minorRevisionId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed19(o.supportedCloudProviders!);
    checkUnnamed20(o.targetResourceDetails!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse--;
}

core.List<api.GoogleCloudAssuredworkloadsV1DbControlComplianceSummary>
buildUnnamed21() => [
  buildGoogleCloudAssuredworkloadsV1DbControlComplianceSummary(),
  buildGoogleCloudAssuredworkloadsV1DbControlComplianceSummary(),
];

void checkUnnamed21(
  core.List<api.GoogleCloudAssuredworkloadsV1DbControlComplianceSummary> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1DbControlComplianceSummary(o[0]);
  checkGoogleCloudAssuredworkloadsV1DbControlComplianceSummary(o[1]);
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse =
    0;
api.GoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse
buildGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse() {
  final o =
      api.GoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse();
  buildCounterGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse <
      3) {
    o.dbControlComplianceSummaries = buildUnnamed21();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse(
  api.GoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse <
      3) {
    checkUnnamed21(o.dbControlComplianceSummaries!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse--;
}

core.List<api.GoogleCloudAssuredworkloadsV1DbFindingSummary> buildUnnamed22() =>
    [
      buildGoogleCloudAssuredworkloadsV1DbFindingSummary(),
      buildGoogleCloudAssuredworkloadsV1DbFindingSummary(),
    ];

void checkUnnamed22(
  core.List<api.GoogleCloudAssuredworkloadsV1DbFindingSummary> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1DbFindingSummary(o[0]);
  checkGoogleCloudAssuredworkloadsV1DbFindingSummary(o[1]);
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse = 0;
api.GoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse
buildGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse();
  buildCounterGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse <
      3) {
    o.dbFindingSummaries = buildUnnamed22();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse(
  api.GoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse <
      3) {
    checkUnnamed22(o.dbFindingSummaries!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse--;
}

core.List<api.GoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary>
buildUnnamed23() => [
  buildGoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary(),
  buildGoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary(),
];

void checkUnnamed23(
  core.List<api.GoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary(o[0]);
  checkGoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary(o[1]);
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse =
    0;
api.GoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse
buildGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse() {
  final o =
      api.GoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse();
  buildCounterGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse <
      3) {
    o.dbFrameworkComplianceSummaries = buildUnnamed23();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse--;
  return o;
}

void
checkGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse(
  api.GoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse <
      3) {
    checkUnnamed23(o.dbFrameworkComplianceSummaries!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse--;
}

core.List<api.GoogleCloudAssuredworkloadsV1Violation> buildUnnamed24() => [
  buildGoogleCloudAssuredworkloadsV1Violation(),
  buildGoogleCloudAssuredworkloadsV1Violation(),
];

void checkUnnamed24(core.List<api.GoogleCloudAssuredworkloadsV1Violation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1Violation(o[0]);
  checkGoogleCloudAssuredworkloadsV1Violation(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1ListViolationsResponse = 0;
api.GoogleCloudAssuredworkloadsV1ListViolationsResponse
buildGoogleCloudAssuredworkloadsV1ListViolationsResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1ListViolationsResponse();
  buildCounterGoogleCloudAssuredworkloadsV1ListViolationsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListViolationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.totalSize = 42;
    o.violations = buildUnnamed24();
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListViolationsResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ListViolationsResponse(
  api.GoogleCloudAssuredworkloadsV1ListViolationsResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ListViolationsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListViolationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.totalSize!, unittest.equals(42));
    checkUnnamed24(o.violations!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListViolationsResponse--;
}

core.List<api.GoogleCloudAssuredworkloadsV1WorkloadUpdate> buildUnnamed25() => [
  buildGoogleCloudAssuredworkloadsV1WorkloadUpdate(),
  buildGoogleCloudAssuredworkloadsV1WorkloadUpdate(),
];

void checkUnnamed25(
  core.List<api.GoogleCloudAssuredworkloadsV1WorkloadUpdate> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1WorkloadUpdate(o[0]);
  checkGoogleCloudAssuredworkloadsV1WorkloadUpdate(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse =
    0;
api.GoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse
buildGoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse();
  buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse <
      3) {
    o.nextPageToken = 'foo';
    o.workloadUpdates = buildUnnamed25();
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse(
  api.GoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed25(o.workloadUpdates!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse--;
}

core.List<api.GoogleCloudAssuredworkloadsV1Workload> buildUnnamed26() => [
  buildGoogleCloudAssuredworkloadsV1Workload(),
  buildGoogleCloudAssuredworkloadsV1Workload(),
];

void checkUnnamed26(core.List<api.GoogleCloudAssuredworkloadsV1Workload> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1Workload(o[0]);
  checkGoogleCloudAssuredworkloadsV1Workload(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadsResponse = 0;
api.GoogleCloudAssuredworkloadsV1ListWorkloadsResponse
buildGoogleCloudAssuredworkloadsV1ListWorkloadsResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1ListWorkloadsResponse();
  buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadsResponse < 3) {
    o.nextPageToken = 'foo';
    o.workloads = buildUnnamed26();
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadsResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ListWorkloadsResponse(
  api.GoogleCloudAssuredworkloadsV1ListWorkloadsResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed26(o.workloads!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadsResponse--;
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails =
    0;
api.GoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails
buildGoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails() {
  final o =
      api.GoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails();
  buildCounterGoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails <
      3) {
    o.manualCloudControlGuide = buildUnnamed27();
  }
  buildCounterGoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails(
  api.GoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails <
      3) {
    checkUnnamed27(o.manualCloudControlGuide!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1MoveAnalysisGroup = 0;
api.GoogleCloudAssuredworkloadsV1MoveAnalysisGroup
buildGoogleCloudAssuredworkloadsV1MoveAnalysisGroup() {
  final o = api.GoogleCloudAssuredworkloadsV1MoveAnalysisGroup();
  buildCounterGoogleCloudAssuredworkloadsV1MoveAnalysisGroup++;
  if (buildCounterGoogleCloudAssuredworkloadsV1MoveAnalysisGroup < 3) {
    o.analysisResult = buildGoogleCloudAssuredworkloadsV1MoveAnalysisResult();
    o.displayName = 'foo';
    o.error = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudAssuredworkloadsV1MoveAnalysisGroup--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1MoveAnalysisGroup(
  api.GoogleCloudAssuredworkloadsV1MoveAnalysisGroup o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1MoveAnalysisGroup++;
  if (buildCounterGoogleCloudAssuredworkloadsV1MoveAnalysisGroup < 3) {
    checkGoogleCloudAssuredworkloadsV1MoveAnalysisResult(o.analysisResult!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleRpcStatus(o.error!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1MoveAnalysisGroup--;
}

core.List<api.GoogleCloudAssuredworkloadsV1MoveImpact> buildUnnamed28() => [
  buildGoogleCloudAssuredworkloadsV1MoveImpact(),
  buildGoogleCloudAssuredworkloadsV1MoveImpact(),
];

void checkUnnamed28(core.List<api.GoogleCloudAssuredworkloadsV1MoveImpact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1MoveImpact(o[0]);
  checkGoogleCloudAssuredworkloadsV1MoveImpact(o[1]);
}

core.List<api.GoogleCloudAssuredworkloadsV1MoveImpact> buildUnnamed29() => [
  buildGoogleCloudAssuredworkloadsV1MoveImpact(),
  buildGoogleCloudAssuredworkloadsV1MoveImpact(),
];

void checkUnnamed29(core.List<api.GoogleCloudAssuredworkloadsV1MoveImpact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1MoveImpact(o[0]);
  checkGoogleCloudAssuredworkloadsV1MoveImpact(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1MoveAnalysisResult = 0;
api.GoogleCloudAssuredworkloadsV1MoveAnalysisResult
buildGoogleCloudAssuredworkloadsV1MoveAnalysisResult() {
  final o = api.GoogleCloudAssuredworkloadsV1MoveAnalysisResult();
  buildCounterGoogleCloudAssuredworkloadsV1MoveAnalysisResult++;
  if (buildCounterGoogleCloudAssuredworkloadsV1MoveAnalysisResult < 3) {
    o.blockers = buildUnnamed28();
    o.warnings = buildUnnamed29();
  }
  buildCounterGoogleCloudAssuredworkloadsV1MoveAnalysisResult--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1MoveAnalysisResult(
  api.GoogleCloudAssuredworkloadsV1MoveAnalysisResult o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1MoveAnalysisResult++;
  if (buildCounterGoogleCloudAssuredworkloadsV1MoveAnalysisResult < 3) {
    checkUnnamed28(o.blockers!);
    checkUnnamed29(o.warnings!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1MoveAnalysisResult--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1MoveImpact = 0;
api.GoogleCloudAssuredworkloadsV1MoveImpact
buildGoogleCloudAssuredworkloadsV1MoveImpact() {
  final o = api.GoogleCloudAssuredworkloadsV1MoveImpact();
  buildCounterGoogleCloudAssuredworkloadsV1MoveImpact++;
  if (buildCounterGoogleCloudAssuredworkloadsV1MoveImpact < 3) {
    o.detail = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1MoveImpact--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1MoveImpact(
  api.GoogleCloudAssuredworkloadsV1MoveImpact o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1MoveImpact++;
  if (buildCounterGoogleCloudAssuredworkloadsV1MoveImpact < 3) {
    unittest.expect(o.detail!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1MoveImpact--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest = 0;
api.GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest
buildGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest() {
  final o = api.GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest();
  buildCounterGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest <
      3) {
    o.etag = 'foo';
    o.partnerPermissions =
        buildGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions();
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest(
  api.GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest <
      3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions(
      o.partnerPermissions!,
    );
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1OrgPolicy = 0;
api.GoogleCloudAssuredworkloadsV1OrgPolicy
buildGoogleCloudAssuredworkloadsV1OrgPolicy() {
  final o = api.GoogleCloudAssuredworkloadsV1OrgPolicy();
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicy++;
  if (buildCounterGoogleCloudAssuredworkloadsV1OrgPolicy < 3) {
    o.constraint = 'foo';
    o.inherit = true;
    o.reset = true;
    o.resource = 'foo';
    o.rule = buildGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule();
  }
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicy--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1OrgPolicy(
  api.GoogleCloudAssuredworkloadsV1OrgPolicy o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicy++;
  if (buildCounterGoogleCloudAssuredworkloadsV1OrgPolicy < 3) {
    unittest.expect(o.constraint!, unittest.equals('foo'));
    unittest.expect(o.inherit!, unittest.isTrue);
    unittest.expect(o.reset!, unittest.isTrue);
    unittest.expect(o.resource!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule(o.rule!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicy--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule = 0;
api.GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule
buildGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule() {
  final o = api.GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule();
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule++;
  if (buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule < 3) {
    o.allowAll = true;
    o.denyAll = true;
    o.enforce = true;
    o.values =
        buildGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues();
  }
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule(
  api.GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule++;
  if (buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule < 3) {
    unittest.expect(o.allowAll!, unittest.isTrue);
    unittest.expect(o.denyAll!, unittest.isTrue);
    unittest.expect(o.enforce!, unittest.isTrue);
    checkGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues(
      o.values!,
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule--;
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues = 0;
api.GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues
buildGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues() {
  final o = api.GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues();
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues++;
  if (buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues <
      3) {
    o.allowedValues = buildUnnamed30();
    o.deniedValues = buildUnnamed31();
  }
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues(
  api.GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues++;
  if (buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues <
      3) {
    checkUnnamed30(o.allowedValues!);
    checkUnnamed31(o.deniedValues!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyUpdate = 0;
api.GoogleCloudAssuredworkloadsV1OrgPolicyUpdate
buildGoogleCloudAssuredworkloadsV1OrgPolicyUpdate() {
  final o = api.GoogleCloudAssuredworkloadsV1OrgPolicyUpdate();
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyUpdate++;
  if (buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyUpdate < 3) {
    o.appliedPolicy = buildGoogleCloudAssuredworkloadsV1OrgPolicy();
    o.suggestedPolicy = buildGoogleCloudAssuredworkloadsV1OrgPolicy();
  }
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyUpdate--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1OrgPolicyUpdate(
  api.GoogleCloudAssuredworkloadsV1OrgPolicyUpdate o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyUpdate++;
  if (buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyUpdate < 3) {
    checkGoogleCloudAssuredworkloadsV1OrgPolicy(o.appliedPolicy!);
    checkGoogleCloudAssuredworkloadsV1OrgPolicy(o.suggestedPolicy!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1OrgPolicyUpdate--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest = 0;
api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest
buildGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest() {
  final o = api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest();
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest <
      3) {
    o.restrictionType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest(
  api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest <
      3) {
    unittest.expect(o.restrictionType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse = 0;
api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse
buildGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse();
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse(
  api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest =
    0;
api.GoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest
buildGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest() {
  final o =
      api.GoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest();
  buildCounterGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest <
      3) {
    o.archiveEndTime = 'foo';
    o.archiveStartTime = 'foo';
    o.batchSize = 42;
    o.maxEventsMove = 42;
    o.organizationId = 'foo';
    o.region = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest(
  api.GoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest <
      3) {
    unittest.expect(o.archiveEndTime!, unittest.equals('foo'));
    unittest.expect(o.archiveStartTime!, unittest.equals('foo'));
    unittest.expect(o.batchSize!, unittest.equals(42));
    unittest.expect(o.maxEventsMove!, unittest.equals(42));
    unittest.expect(o.organizationId!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse =
    0;
api.GoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse
buildGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse() {
  final o =
      api.GoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse();
  buildCounterGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse <
      3) {
    o.movedEventsCount = 42;
  }
  buildCounterGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse(
  api.GoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse <
      3) {
    unittest.expect(o.movedEventsCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse--;
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudAssuredworkloadsV1Rule = 0;
api.GoogleCloudAssuredworkloadsV1Rule buildGoogleCloudAssuredworkloadsV1Rule() {
  final o = api.GoogleCloudAssuredworkloadsV1Rule();
  buildCounterGoogleCloudAssuredworkloadsV1Rule++;
  if (buildCounterGoogleCloudAssuredworkloadsV1Rule < 3) {
    o.celExpression = buildGoogleCloudAssuredworkloadsV1CELExpression();
    o.description = 'foo';
    o.ruleActionTypes = buildUnnamed32();
  }
  buildCounterGoogleCloudAssuredworkloadsV1Rule--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1Rule(
  api.GoogleCloudAssuredworkloadsV1Rule o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1Rule++;
  if (buildCounterGoogleCloudAssuredworkloadsV1Rule < 3) {
    checkGoogleCloudAssuredworkloadsV1CELExpression(o.celExpression!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed32(o.ruleActionTypes!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1Rule--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1SimilarControls = 0;
api.GoogleCloudAssuredworkloadsV1SimilarControls
buildGoogleCloudAssuredworkloadsV1SimilarControls() {
  final o = api.GoogleCloudAssuredworkloadsV1SimilarControls();
  buildCounterGoogleCloudAssuredworkloadsV1SimilarControls++;
  if (buildCounterGoogleCloudAssuredworkloadsV1SimilarControls < 3) {
    o.controlId = 'foo';
    o.framework = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1SimilarControls--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1SimilarControls(
  api.GoogleCloudAssuredworkloadsV1SimilarControls o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1SimilarControls++;
  if (buildCounterGoogleCloudAssuredworkloadsV1SimilarControls < 3) {
    unittest.expect(o.controlId!, unittest.equals('foo'));
    unittest.expect(o.framework!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1SimilarControls--;
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudAssuredworkloadsV1StringList = 0;
api.GoogleCloudAssuredworkloadsV1StringList
buildGoogleCloudAssuredworkloadsV1StringList() {
  final o = api.GoogleCloudAssuredworkloadsV1StringList();
  buildCounterGoogleCloudAssuredworkloadsV1StringList++;
  if (buildCounterGoogleCloudAssuredworkloadsV1StringList < 3) {
    o.values = buildUnnamed33();
  }
  buildCounterGoogleCloudAssuredworkloadsV1StringList--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1StringList(
  api.GoogleCloudAssuredworkloadsV1StringList o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1StringList++;
  if (buildCounterGoogleCloudAssuredworkloadsV1StringList < 3) {
    checkUnnamed33(o.values!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1StringList--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1TargetResourceDetails = 0;
api.GoogleCloudAssuredworkloadsV1TargetResourceDetails
buildGoogleCloudAssuredworkloadsV1TargetResourceDetails() {
  final o = api.GoogleCloudAssuredworkloadsV1TargetResourceDetails();
  buildCounterGoogleCloudAssuredworkloadsV1TargetResourceDetails++;
  if (buildCounterGoogleCloudAssuredworkloadsV1TargetResourceDetails < 3) {
    o.createTime = 'foo';
    o.frameworkDeployment = 'foo';
    o.majorRevisionId = 'foo';
    o.minorRevisionId = 'foo';
    o.targetResource = 'foo';
    o.targetResourceDisplayName = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1TargetResourceDetails--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1TargetResourceDetails(
  api.GoogleCloudAssuredworkloadsV1TargetResourceDetails o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1TargetResourceDetails++;
  if (buildCounterGoogleCloudAssuredworkloadsV1TargetResourceDetails < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.frameworkDeployment!, unittest.equals('foo'));
    unittest.expect(o.majorRevisionId!, unittest.equals('foo'));
    unittest.expect(o.minorRevisionId!, unittest.equals('foo'));
    unittest.expect(o.targetResource!, unittest.equals('foo'));
    unittest.expect(o.targetResourceDisplayName!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1TargetResourceDetails--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1Trend = 0;
api.GoogleCloudAssuredworkloadsV1Trend
buildGoogleCloudAssuredworkloadsV1Trend() {
  final o = api.GoogleCloudAssuredworkloadsV1Trend();
  buildCounterGoogleCloudAssuredworkloadsV1Trend++;
  if (buildCounterGoogleCloudAssuredworkloadsV1Trend < 3) {
    o.duration = 'foo';
    o.valuePercent = 42.0;
  }
  buildCounterGoogleCloudAssuredworkloadsV1Trend--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1Trend(
  api.GoogleCloudAssuredworkloadsV1Trend o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1Trend++;
  if (buildCounterGoogleCloudAssuredworkloadsV1Trend < 3) {
    unittest.expect(o.duration!, unittest.equals('foo'));
    unittest.expect(o.valuePercent!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudAssuredworkloadsV1Trend--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1UpdateDetails = 0;
api.GoogleCloudAssuredworkloadsV1UpdateDetails
buildGoogleCloudAssuredworkloadsV1UpdateDetails() {
  final o = api.GoogleCloudAssuredworkloadsV1UpdateDetails();
  buildCounterGoogleCloudAssuredworkloadsV1UpdateDetails++;
  if (buildCounterGoogleCloudAssuredworkloadsV1UpdateDetails < 3) {
    o.orgPolicyUpdate = buildGoogleCloudAssuredworkloadsV1OrgPolicyUpdate();
  }
  buildCounterGoogleCloudAssuredworkloadsV1UpdateDetails--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1UpdateDetails(
  api.GoogleCloudAssuredworkloadsV1UpdateDetails o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1UpdateDetails++;
  if (buildCounterGoogleCloudAssuredworkloadsV1UpdateDetails < 3) {
    checkGoogleCloudAssuredworkloadsV1OrgPolicyUpdate(o.orgPolicyUpdate!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1UpdateDetails--;
}

core.List<api.GoogleCloudAssuredworkloadsV1ViolationExceptionContext>
buildUnnamed34() => [
  buildGoogleCloudAssuredworkloadsV1ViolationExceptionContext(),
  buildGoogleCloudAssuredworkloadsV1ViolationExceptionContext(),
];

void checkUnnamed34(
  core.List<api.GoogleCloudAssuredworkloadsV1ViolationExceptionContext> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1ViolationExceptionContext(o[0]);
  checkGoogleCloudAssuredworkloadsV1ViolationExceptionContext(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1Violation = 0;
api.GoogleCloudAssuredworkloadsV1Violation
buildGoogleCloudAssuredworkloadsV1Violation() {
  final o = api.GoogleCloudAssuredworkloadsV1Violation();
  buildCounterGoogleCloudAssuredworkloadsV1Violation++;
  if (buildCounterGoogleCloudAssuredworkloadsV1Violation < 3) {
    o.acknowledged = true;
    o.acknowledgementTime = 'foo';
    o.associatedOrgPolicyViolationId = 'foo';
    o.auditLogLink = 'foo';
    o.beginTime = 'foo';
    o.category = 'foo';
    o.description = 'foo';
    o.exceptionAuditLogLink = 'foo';
    o.exceptionContexts = buildUnnamed34();
    o.name = 'foo';
    o.nonCompliantOrgPolicy = 'foo';
    o.orgPolicyConstraint = 'foo';
    o.parentProjectNumber = 'foo';
    o.remediation = buildGoogleCloudAssuredworkloadsV1ViolationRemediation();
    o.resolveTime = 'foo';
    o.resourceName = 'foo';
    o.resourceType = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
    o.violationType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1Violation--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1Violation(
  api.GoogleCloudAssuredworkloadsV1Violation o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1Violation++;
  if (buildCounterGoogleCloudAssuredworkloadsV1Violation < 3) {
    unittest.expect(o.acknowledged!, unittest.isTrue);
    unittest.expect(o.acknowledgementTime!, unittest.equals('foo'));
    unittest.expect(o.associatedOrgPolicyViolationId!, unittest.equals('foo'));
    unittest.expect(o.auditLogLink!, unittest.equals('foo'));
    unittest.expect(o.beginTime!, unittest.equals('foo'));
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.exceptionAuditLogLink!, unittest.equals('foo'));
    checkUnnamed34(o.exceptionContexts!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nonCompliantOrgPolicy!, unittest.equals('foo'));
    unittest.expect(o.orgPolicyConstraint!, unittest.equals('foo'));
    unittest.expect(o.parentProjectNumber!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1ViolationRemediation(o.remediation!);
    unittest.expect(o.resolveTime!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.violationType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1Violation--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1ViolationExceptionContext = 0;
api.GoogleCloudAssuredworkloadsV1ViolationExceptionContext
buildGoogleCloudAssuredworkloadsV1ViolationExceptionContext() {
  final o = api.GoogleCloudAssuredworkloadsV1ViolationExceptionContext();
  buildCounterGoogleCloudAssuredworkloadsV1ViolationExceptionContext++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationExceptionContext < 3) {
    o.acknowledgementTime = 'foo';
    o.comment = 'foo';
    o.userName = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationExceptionContext--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ViolationExceptionContext(
  api.GoogleCloudAssuredworkloadsV1ViolationExceptionContext o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ViolationExceptionContext++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationExceptionContext < 3) {
    unittest.expect(o.acknowledgementTime!, unittest.equals('foo'));
    unittest.expect(o.comment!, unittest.equals('foo'));
    unittest.expect(o.userName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationExceptionContext--;
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediation = 0;
api.GoogleCloudAssuredworkloadsV1ViolationRemediation
buildGoogleCloudAssuredworkloadsV1ViolationRemediation() {
  final o = api.GoogleCloudAssuredworkloadsV1ViolationRemediation();
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediation++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediation < 3) {
    o.compliantValues = buildUnnamed35();
    o.instructions =
        buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions();
    o.remediationType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediation--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ViolationRemediation(
  api.GoogleCloudAssuredworkloadsV1ViolationRemediation o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediation++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediation < 3) {
    checkUnnamed35(o.compliantValues!);
    checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions(
      o.instructions!,
    );
    unittest.expect(o.remediationType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediation--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions = 0;
api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions
buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions() {
  final o = api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions();
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions <
      3) {
    o.consoleInstructions =
        buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole();
    o.gcloudInstructions =
        buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud();
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions(
  api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions <
      3) {
    checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole(
      o.consoleInstructions!,
    );
    checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud(
      o.gcloudInstructions!,
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions--;
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole =
    0;
api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole
buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole() {
  final o =
      api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole();
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole <
      3) {
    o.additionalLinks = buildUnnamed36();
    o.consoleUris = buildUnnamed37();
    o.steps = buildUnnamed38();
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole(
  api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole <
      3) {
    checkUnnamed36(o.additionalLinks!);
    checkUnnamed37(o.consoleUris!);
    checkUnnamed38(o.steps!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole--;
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud =
    0;
api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud
buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud() {
  final o =
      api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud();
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud <
      3) {
    o.additionalLinks = buildUnnamed39();
    o.gcloudCommands = buildUnnamed40();
    o.steps = buildUnnamed41();
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud(
  api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud <
      3) {
    checkUnnamed39(o.additionalLinks!);
    checkUnnamed40(o.gcloudCommands!);
    checkUnnamed41(o.steps!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud--;
}

core.List<core.String> buildUnnamed42() => ['foo', 'foo'];

void checkUnnamed42(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed43() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed43(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.GoogleCloudAssuredworkloadsV1WorkloadResourceSettings>
buildUnnamed44() => [
  buildGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(),
  buildGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(),
];

void checkUnnamed44(
  core.List<api.GoogleCloudAssuredworkloadsV1WorkloadResourceSettings> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(o[0]);
  checkGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(o[1]);
}

core.List<api.GoogleCloudAssuredworkloadsV1WorkloadResourceInfo>
buildUnnamed45() => [
  buildGoogleCloudAssuredworkloadsV1WorkloadResourceInfo(),
  buildGoogleCloudAssuredworkloadsV1WorkloadResourceInfo(),
];

void checkUnnamed45(
  core.List<api.GoogleCloudAssuredworkloadsV1WorkloadResourceInfo> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1WorkloadResourceInfo(o[0]);
  checkGoogleCloudAssuredworkloadsV1WorkloadResourceInfo(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1Workload = 0;
api.GoogleCloudAssuredworkloadsV1Workload
buildGoogleCloudAssuredworkloadsV1Workload() {
  final o = api.GoogleCloudAssuredworkloadsV1Workload();
  buildCounterGoogleCloudAssuredworkloadsV1Workload++;
  if (buildCounterGoogleCloudAssuredworkloadsV1Workload < 3) {
    o.billingAccount = 'foo';
    o.complianceRegime = 'foo';
    o.complianceStatus =
        buildGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus();
    o.compliantButDisallowedServices = buildUnnamed42();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.ekmProvisioningResponse =
        buildGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse();
    o.enableSovereignControls = true;
    o.etag = 'foo';
    o.kajEnrollmentState = 'foo';
    o.kmsSettings = buildGoogleCloudAssuredworkloadsV1WorkloadKMSSettings();
    o.labels = buildUnnamed43();
    o.name = 'foo';
    o.partner = 'foo';
    o.partnerPermissions =
        buildGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions();
    o.partnerServicesBillingAccount = 'foo';
    o.provisionedResourcesParent = 'foo';
    o.resourceMonitoringEnabled = true;
    o.resourceSettings = buildUnnamed44();
    o.resources = buildUnnamed45();
    o.saaEnrollmentResponse =
        buildGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse();
    o.violationNotificationsEnabled = true;
    o.workloadOptions =
        buildGoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions();
  }
  buildCounterGoogleCloudAssuredworkloadsV1Workload--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1Workload(
  api.GoogleCloudAssuredworkloadsV1Workload o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1Workload++;
  if (buildCounterGoogleCloudAssuredworkloadsV1Workload < 3) {
    unittest.expect(o.billingAccount!, unittest.equals('foo'));
    unittest.expect(o.complianceRegime!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus(
      o.complianceStatus!,
    );
    checkUnnamed42(o.compliantButDisallowedServices!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse(
      o.ekmProvisioningResponse!,
    );
    unittest.expect(o.enableSovereignControls!, unittest.isTrue);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.kajEnrollmentState!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1WorkloadKMSSettings(o.kmsSettings!);
    checkUnnamed43(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.partner!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions(
      o.partnerPermissions!,
    );
    unittest.expect(o.partnerServicesBillingAccount!, unittest.equals('foo'));
    unittest.expect(o.provisionedResourcesParent!, unittest.equals('foo'));
    unittest.expect(o.resourceMonitoringEnabled!, unittest.isTrue);
    checkUnnamed44(o.resourceSettings!);
    checkUnnamed45(o.resources!);
    checkGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse(
      o.saaEnrollmentResponse!,
    );
    unittest.expect(o.violationNotificationsEnabled!, unittest.isTrue);
    checkGoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions(
      o.workloadOptions!,
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1Workload--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus = 0;
api.GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus
buildGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus < 3) {
    o.acknowledgedResourceViolationCount = 42;
    o.acknowledgedViolationCount = 42;
    o.activeResourceViolationCount = 42;
    o.activeViolationCount = 42;
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus(
  api.GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus < 3) {
    unittest.expect(o.acknowledgedResourceViolationCount!, unittest.equals(42));
    unittest.expect(o.acknowledgedViolationCount!, unittest.equals(42));
    unittest.expect(o.activeResourceViolationCount!, unittest.equals(42));
    unittest.expect(o.activeViolationCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus--;
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse = 0;
api.GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse
buildGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse <
      3) {
    o.ekmProvisioningErrorDomain = 'foo';
    o.ekmProvisioningErrorMapping = 'foo';
    o.ekmProvisioningState = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse(
  api.GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse <
      3) {
    unittest.expect(o.ekmProvisioningErrorDomain!, unittest.equals('foo'));
    unittest.expect(o.ekmProvisioningErrorMapping!, unittest.equals('foo'));
    unittest.expect(o.ekmProvisioningState!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1WorkloadKMSSettings = 0;
api.GoogleCloudAssuredworkloadsV1WorkloadKMSSettings
buildGoogleCloudAssuredworkloadsV1WorkloadKMSSettings() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadKMSSettings();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadKMSSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadKMSSettings < 3) {
    o.nextRotationTime = 'foo';
    o.rotationPeriod = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadKMSSettings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadKMSSettings(
  api.GoogleCloudAssuredworkloadsV1WorkloadKMSSettings o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadKMSSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadKMSSettings < 3) {
    unittest.expect(o.nextRotationTime!, unittest.equals('foo'));
    unittest.expect(o.rotationPeriod!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadKMSSettings--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions =
    0;
api.GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions
buildGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions < 3) {
    o.accessTransparencyLogsSupportCaseViewer = true;
    o.assuredWorkloadsMonitoring = true;
    o.dataLogsViewer = true;
    o.serviceAccessApprover = true;
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions(
  api.GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions < 3) {
    unittest.expect(
      o.accessTransparencyLogsSupportCaseViewer!,
      unittest.isTrue,
    );
    unittest.expect(o.assuredWorkloadsMonitoring!, unittest.isTrue);
    unittest.expect(o.dataLogsViewer!, unittest.isTrue);
    unittest.expect(o.serviceAccessApprover!, unittest.isTrue);
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceInfo = 0;
api.GoogleCloudAssuredworkloadsV1WorkloadResourceInfo
buildGoogleCloudAssuredworkloadsV1WorkloadResourceInfo() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadResourceInfo();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceInfo++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceInfo < 3) {
    o.resourceId = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceInfo--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadResourceInfo(
  api.GoogleCloudAssuredworkloadsV1WorkloadResourceInfo o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceInfo++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceInfo < 3) {
    unittest.expect(o.resourceId!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceInfo--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceSettings = 0;
api.GoogleCloudAssuredworkloadsV1WorkloadResourceSettings
buildGoogleCloudAssuredworkloadsV1WorkloadResourceSettings() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadResourceSettings();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceSettings < 3) {
    o.displayName = 'foo';
    o.resourceId = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceSettings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(
  api.GoogleCloudAssuredworkloadsV1WorkloadResourceSettings o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceSettings < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.resourceId!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceSettings--;
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse = 0;
api.GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse
buildGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse <
      3) {
    o.setupErrors = buildUnnamed46();
    o.setupStatus = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse(
  api.GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse <
      3) {
    checkUnnamed46(o.setupErrors!);
    unittest.expect(o.setupStatus!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1WorkloadUpdate = 0;
api.GoogleCloudAssuredworkloadsV1WorkloadUpdate
buildGoogleCloudAssuredworkloadsV1WorkloadUpdate() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadUpdate();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadUpdate++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadUpdate < 3) {
    o.createTime = 'foo';
    o.details = buildGoogleCloudAssuredworkloadsV1UpdateDetails();
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadUpdate--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadUpdate(
  api.GoogleCloudAssuredworkloadsV1WorkloadUpdate o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadUpdate++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadUpdate < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudAssuredworkloadsV1UpdateDetails(o.details!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadUpdate--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions = 0;
api.GoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions
buildGoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions < 3) {
    o.kajEnrollmentType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions(
  api.GoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions o,
) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions < 3) {
    unittest.expect(o.kajEnrollmentType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed47() => [
  buildGoogleLongrunningOperation(),
  buildGoogleLongrunningOperation(),
];

void checkUnnamed47(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.List<core.String> buildUnnamed48() => ['foo', 'foo'];

void checkUnnamed48(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed47();
    o.unreachable = buildUnnamed48();
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
    checkUnnamed47(o.operations!);
    checkUnnamed48(o.unreachable!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed49() => {
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

void checkUnnamed49(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed49();
    o.name = 'foo';
    o.response = buildUnnamed50();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed49(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed50(o.response!);
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

core.Map<core.String, core.Object?> buildUnnamed51() => {
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

void checkUnnamed51(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed52() => [
  buildUnnamed51(),
  buildUnnamed51(),
];

void checkUnnamed52(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed51(o[0]);
  checkUnnamed51(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed52();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed52(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.List<core.String> buildUnnamed53() => ['foo', 'foo'];

void checkUnnamed53(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1AggregatedComplianceReport',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1AggregatedComplianceReport();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1AggregatedComplianceReport.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1AggregatedComplianceReport(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1AssetMoveAnalysis',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1AssetMoveAnalysis();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAssuredworkloadsV1AssetMoveAnalysis.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1AssetMoveAnalysis(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1CELExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1CELExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1CELExpression.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1CELExpression(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1CloudControlAssessmentDetails(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1CloudControlReport',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1CloudControlReport();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAssuredworkloadsV1CloudControlReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1CloudControlReport(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ControlAssessmentDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1ControlAssessmentDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ControlAssessmentDetails.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ControlAssessmentDetails(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1DbControlComplianceSummary',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1DbControlComplianceSummary();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1DbControlComplianceSummary.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1DbControlComplianceSummary(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1DbFindingSummary',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1DbFindingSummary();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAssuredworkloadsV1DbFindingSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1DbFindingSummary(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1DbFrameworkComplianceSummary(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ListViolationsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1ListViolationsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ListViolationsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ListViolationsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ListWorkloadsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1ListWorkloadsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ListWorkloadsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ListWorkloadsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ManualCloudControlAssessmentDetails(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1MoveAnalysisGroup',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1MoveAnalysisGroup();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAssuredworkloadsV1MoveAnalysisGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1MoveAnalysisGroup(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1MoveAnalysisResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1MoveAnalysisResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudAssuredworkloadsV1MoveAnalysisResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudAssuredworkloadsV1MoveAnalysisResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1MoveImpact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1MoveImpact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1MoveImpact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1MoveImpact(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1OrgPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1OrgPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1OrgPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1OrgPolicy(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1OrgPolicyUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1OrgPolicyUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1OrgPolicyUpdate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1OrgPolicyUpdate(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1Rule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1Rule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1Rule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1Rule(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1SimilarControls', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1SimilarControls();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1SimilarControls.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1SimilarControls(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1StringList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1StringList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1StringList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1StringList(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1TargetResourceDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1TargetResourceDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1TargetResourceDetails.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1TargetResourceDetails(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1Trend', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1Trend();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1Trend.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1Trend(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1UpdateDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1UpdateDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1UpdateDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1UpdateDetails(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1Violation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1Violation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1Violation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1Violation(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ViolationExceptionContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1ViolationExceptionContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ViolationExceptionContext.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ViolationExceptionContext(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ViolationRemediation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1ViolationRemediation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ViolationRemediation.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ViolationRemediation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1Workload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1Workload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1Workload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1Workload(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1WorkloadKMSSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1WorkloadKMSSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1WorkloadKMSSettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1WorkloadKMSSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1WorkloadResourceInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1WorkloadResourceInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1WorkloadResourceInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1WorkloadResourceInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1WorkloadResourceSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1WorkloadResourceSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1WorkloadResourceSettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1WorkloadUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1WorkloadUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1WorkloadUpdate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssuredworkloadsV1WorkloadUpdate(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions(od);
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

  unittest.group('resource-AssuredworkloadsResource', () {
    unittest.test('method--archiveResourceEvents', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(mock).assuredworkloads;
      final arg_request =
          buildGoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudAssuredworkloadsV1ArchiveResourceEventsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 41),
            unittest.equals('v1/assuredworkloads:archiveResourceEvents'),
          );
          pathOffset += 41;

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
            buildGoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.archiveResourceEvents(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1ArchiveResourceEventsResponse,
      );
    });

    unittest.test('method--revertArchivedResourceEvents', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(mock).assuredworkloads;
      final arg_request =
          buildGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsRequest(
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
            path.substring(pathOffset, pathOffset + 48),
            unittest.equals('v1/assuredworkloads:revertArchivedResourceEvents'),
          );
          pathOffset += 48;

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
            buildGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.revertArchivedResourceEvents(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1RevertArchivedResourceEventsResponse,
      );
    });
  });

  unittest.group('resource-FoldersLocationsDbFindingSummariesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).folders.locations.dbFindingSummaries;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse(),
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
      checkGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse,
      );
    });
  });

  unittest.group('resource-FoldersLocationsDbFrameworkComplianceReportsResource', () {
    unittest.test('method--aggregate', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).folders.locations.dbFrameworkComplianceReports;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_interval_endTime = 'foo';
      final arg_interval_startTime = 'foo';
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
            queryMap['interval.endTime']!.first,
            unittest.equals(arg_interval_endTime),
          );
          unittest.expect(
            queryMap['interval.startTime']!.first,
            unittest.equals(arg_interval_startTime),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.aggregate(
        arg_name,
        filter: arg_filter,
        interval_endTime: arg_interval_endTime,
        interval_startTime: arg_interval_startTime,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse,
      );
    });

    unittest.test('method--fetch', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).folders.locations.dbFrameworkComplianceReports;
      final arg_name = 'foo';
      final arg_endTime = 'foo';
      final arg_filter = 'foo';
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
            queryMap['endTime']!.first,
            unittest.equals(arg_endTime),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetch(
        arg_name,
        endTime: arg_endTime,
        filter: arg_filter,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse,
      );
    });
  });

  unittest.group(
    'resource-FoldersLocationsDbFrameworkComplianceReportsDbControlComplianceSummariesResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.AssuredworkloadsApi(mock)
            .folders
            .locations
            .dbFrameworkComplianceReports
            .dbControlComplianceSummaries;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse(),
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
        checkGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse(
          response
              as api.GoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse,
        );
      });
    },
  );

  unittest.group('resource-FoldersLocationsDbFrameworkComplianceSummariesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).folders.locations.dbFrameworkComplianceSummaries;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse(),
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
        view: arg_view,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse,
      );
    });
  });

  unittest.group('resource-OrganizationsLocationsDbFindingSummariesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.dbFindingSummaries;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse(),
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
      checkGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse,
      );
    });
  });

  unittest.group('resource-OrganizationsLocationsDbFrameworkComplianceReportsResource', () {
    unittest.test('method--aggregate', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.dbFrameworkComplianceReports;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_interval_endTime = 'foo';
      final arg_interval_startTime = 'foo';
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
            queryMap['interval.endTime']!.first,
            unittest.equals(arg_interval_endTime),
          );
          unittest.expect(
            queryMap['interval.startTime']!.first,
            unittest.equals(arg_interval_startTime),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.aggregate(
        arg_name,
        filter: arg_filter,
        interval_endTime: arg_interval_endTime,
        interval_startTime: arg_interval_startTime,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse,
      );
    });

    unittest.test('method--fetch', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.dbFrameworkComplianceReports;
      final arg_name = 'foo';
      final arg_endTime = 'foo';
      final arg_filter = 'foo';
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
            queryMap['endTime']!.first,
            unittest.equals(arg_endTime),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetch(
        arg_name,
        endTime: arg_endTime,
        filter: arg_filter,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse,
      );
    });
  });

  unittest.group(
    'resource-OrganizationsLocationsDbFrameworkComplianceReportsDbControlComplianceSummariesResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.AssuredworkloadsApi(mock)
            .organizations
            .locations
            .dbFrameworkComplianceReports
            .dbControlComplianceSummaries;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse(),
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
        checkGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse(
          response
              as api.GoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse,
        );
      });
    },
  );

  unittest.group(
    'resource-OrganizationsLocationsDbFrameworkComplianceSummariesResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.AssuredworkloadsApi(
          mock,
        ).organizations.locations.dbFrameworkComplianceSummaries;
        final arg_parent = 'foo';
        final arg_filter = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_view = 'foo';
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
            unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse(),
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
          view: arg_view,
          $fields: arg_$fields,
        );
        checkGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse(
          response
              as api.GoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse,
        );
      });
    },
  );

  unittest.group('resource-OrganizationsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.operations;
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
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.operations;
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
        returnPartialSuccess: arg_returnPartialSuccess,
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
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.workloads;
      final arg_target = 'foo';
      final arg_assetTypes = buildUnnamed53();
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
            buildGoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse(),
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
      checkGoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.workloads;
      final arg_request = buildGoogleCloudAssuredworkloadsV1Workload();
      final arg_parent = 'foo';
      final arg_externalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudAssuredworkloadsV1Workload.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudAssuredworkloadsV1Workload(obj);

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
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.workloads;
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
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.workloads;
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
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enableComplianceUpdates(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse,
      );
    });

    unittest.test('method--enableResourceMonitoring', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.workloads;
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
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enableResourceMonitoring(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.workloads;
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
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1Workload(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudAssuredworkloadsV1Workload(
        response as api.GoogleCloudAssuredworkloadsV1Workload,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.workloads;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1ListWorkloadsResponse(),
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
      checkGoogleCloudAssuredworkloadsV1ListWorkloadsResponse(
        response as api.GoogleCloudAssuredworkloadsV1ListWorkloadsResponse,
      );
    });

    unittest.test('method--mutatePartnerPermissions', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.workloads;
      final arg_request =
          buildGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest(
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
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1Workload(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.mutatePartnerPermissions(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1Workload(
        response as api.GoogleCloudAssuredworkloadsV1Workload,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.workloads;
      final arg_request = buildGoogleCloudAssuredworkloadsV1Workload();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudAssuredworkloadsV1Workload.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudAssuredworkloadsV1Workload(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1Workload(),
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
      checkGoogleCloudAssuredworkloadsV1Workload(
        response as api.GoogleCloudAssuredworkloadsV1Workload,
      );
    });

    unittest.test('method--restrictAllowedResources', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.workloads;
      final arg_request =
          buildGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest(
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
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse(),
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
      checkGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse,
      );
    });
  });

  unittest.group('resource-OrganizationsLocationsWorkloadsUpdatesResource', () {
    unittest.test('method--apply', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.workloads.updates;
      final arg_request =
          buildGoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest(obj);

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
      final res = api.AssuredworkloadsApi(
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
            buildGoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse(),
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
      checkGoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse,
      );
    });
  });

  unittest.group('resource-OrganizationsLocationsWorkloadsViolationsResource', () {
    unittest.test('method--acknowledge', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.workloads.violations;
      final arg_request =
          buildGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse(),
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
      checkGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
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
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1Violation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudAssuredworkloadsV1Violation(
        response as api.GoogleCloudAssuredworkloadsV1Violation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).organizations.locations.workloads.violations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_interval_endTime = 'foo';
      final arg_interval_startTime = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
            buildGoogleCloudAssuredworkloadsV1ListViolationsResponse(),
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
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1ListViolationsResponse(
        response as api.GoogleCloudAssuredworkloadsV1ListViolationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsDbFindingSummariesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).projects.locations.dbFindingSummaries;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse(),
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
      checkGoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1ListDbFindingSummariesResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsDbFrameworkComplianceReportsResource', () {
    unittest.test('method--aggregate', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).projects.locations.dbFrameworkComplianceReports;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_interval_endTime = 'foo';
      final arg_interval_startTime = 'foo';
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
            queryMap['interval.endTime']!.first,
            unittest.equals(arg_interval_endTime),
          );
          unittest.expect(
            queryMap['interval.startTime']!.first,
            unittest.equals(arg_interval_startTime),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.aggregate(
        arg_name,
        filter: arg_filter,
        interval_endTime: arg_interval_endTime,
        interval_startTime: arg_interval_startTime,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1AggregateDbFrameworkComplianceReportResponse,
      );
    });

    unittest.test('method--fetch', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(
        mock,
      ).projects.locations.dbFrameworkComplianceReports;
      final arg_name = 'foo';
      final arg_endTime = 'foo';
      final arg_filter = 'foo';
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
            queryMap['endTime']!.first,
            unittest.equals(arg_endTime),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetch(
        arg_name,
        endTime: arg_endTime,
        filter: arg_filter,
        $fields: arg_$fields,
      );
      checkGoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse(
        response
            as api.GoogleCloudAssuredworkloadsV1FetchDbFrameworkComplianceReportResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsDbFrameworkComplianceReportsDbControlComplianceSummariesResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.AssuredworkloadsApi(mock)
            .projects
            .locations
            .dbFrameworkComplianceReports
            .dbControlComplianceSummaries;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse(),
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
        checkGoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse(
          response
              as api.GoogleCloudAssuredworkloadsV1ListDbControlComplianceSummariesResponse,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsDbFrameworkComplianceSummariesResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.AssuredworkloadsApi(
          mock,
        ).projects.locations.dbFrameworkComplianceSummaries;
        final arg_parent = 'foo';
        final arg_filter = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_view = 'foo';
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
            unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse(),
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
          view: arg_view,
          $fields: arg_$fields,
        );
        checkGoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse(
          response
              as api.GoogleCloudAssuredworkloadsV1ListDbFrameworkComplianceSummariesResponse,
        );
      });
    },
  );
}
