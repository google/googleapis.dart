// Copyright 2026 Google LLC
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

import 'package:googleapis/auditmanager/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, api.CloudControlParameterStates> buildUnnamed0() => {
  'x': buildCloudControlParameterStates(),
  'y': buildCloudControlParameterStates(),
};

void checkUnnamed0(core.Map<core.String, api.CloudControlParameterStates> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudControlParameterStates(o['x']!);
  checkCloudControlParameterStates(o['y']!);
}

core.List<api.ControlDetails> buildUnnamed1() => [
  buildControlDetails(),
  buildControlDetails(),
];

void checkUnnamed1(core.List<api.ControlDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkControlDetails(o[0]);
  checkControlDetails(o[1]);
}

core.int buildCounterAuditReport = 0;
api.AuditReport buildAuditReport() {
  final o = api.AuditReport();
  buildCounterAuditReport++;
  if (buildCounterAuditReport < 3) {
    o.cloudControlParameterStates = buildUnnamed0();
    o.complianceFramework = 'foo';
    o.complianceStandard = 'foo';
    o.controlDetails = buildUnnamed1();
    o.createTime = 'foo';
    o.destinationDetails = buildDestinationDetails();
    o.name = 'foo';
    o.operationId = 'foo';
    o.reportGenerationState = 'foo';
    o.reportSummary = buildReportSummary();
    o.scope = 'foo';
    o.scopeId = 'foo';
  }
  buildCounterAuditReport--;
  return o;
}

void checkAuditReport(api.AuditReport o) {
  buildCounterAuditReport++;
  if (buildCounterAuditReport < 3) {
    checkUnnamed0(o.cloudControlParameterStates!);
    unittest.expect(o.complianceFramework!, unittest.equals('foo'));
    unittest.expect(o.complianceStandard!, unittest.equals('foo'));
    checkUnnamed1(o.controlDetails!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDestinationDetails(o.destinationDetails!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.operationId!, unittest.equals('foo'));
    unittest.expect(o.reportGenerationState!, unittest.equals('foo'));
    checkReportSummary(o.reportSummary!);
    unittest.expect(o.scope!, unittest.equals('foo'));
    unittest.expect(o.scopeId!, unittest.equals('foo'));
  }
  buildCounterAuditReport--;
}

core.Map<core.String, api.ParameterOverrides> buildUnnamed2() => {
  'x': buildParameterOverrides(),
  'y': buildParameterOverrides(),
};

void checkUnnamed2(core.Map<core.String, api.ParameterOverrides> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterOverrides(o['x']!);
  checkParameterOverrides(o['y']!);
}

core.int buildCounterAuditSchedule = 0;
api.AuditSchedule buildAuditSchedule() {
  final o = api.AuditSchedule();
  buildCounterAuditSchedule++;
  if (buildCounterAuditSchedule < 3) {
    o.complianceFramework = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.errorMessage = 'foo';
    o.gcsUri = 'foo';
    o.lastTriggerTime = 'foo';
    o.name = 'foo';
    o.nextRunTime = 'foo';
    o.parameterOverrides = buildUnnamed2();
    o.reportFormat = 'foo';
    o.scheduleConfig = buildScheduleConfig();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAuditSchedule--;
  return o;
}

void checkAuditSchedule(api.AuditSchedule o) {
  buildCounterAuditSchedule++;
  if (buildCounterAuditSchedule < 3) {
    unittest.expect(o.complianceFramework!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    unittest.expect(o.gcsUri!, unittest.equals('foo'));
    unittest.expect(o.lastTriggerTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nextRunTime!, unittest.equals('foo'));
    checkUnnamed2(o.parameterOverrides!);
    unittest.expect(o.reportFormat!, unittest.equals('foo'));
    checkScheduleConfig(o.scheduleConfig!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAuditSchedule--;
}

core.int buildCounterAuditScopeReport = 0;
api.AuditScopeReport buildAuditScopeReport() {
  final o = api.AuditScopeReport();
  buildCounterAuditScopeReport++;
  if (buildCounterAuditScopeReport < 3) {
    o.name = 'foo';
    o.scopeReportContents = 'foo';
  }
  buildCounterAuditScopeReport--;
  return o;
}

void checkAuditScopeReport(api.AuditScopeReport o) {
  buildCounterAuditScopeReport++;
  if (buildCounterAuditScopeReport < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.scopeReportContents!, unittest.equals('foo'));
  }
  buildCounterAuditScopeReport--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.List<api.ParameterState> buildUnnamed3() => [
  buildParameterState(),
  buildParameterState(),
];

void checkUnnamed3(core.List<api.ParameterState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterState(o[0]);
  checkParameterState(o[1]);
}

core.int buildCounterCloudControlParameterStates = 0;
api.CloudControlParameterStates buildCloudControlParameterStates() {
  final o = api.CloudControlParameterStates();
  buildCounterCloudControlParameterStates++;
  if (buildCounterCloudControlParameterStates < 3) {
    o.parameterStates = buildUnnamed3();
  }
  buildCounterCloudControlParameterStates--;
  return o;
}

void checkCloudControlParameterStates(api.CloudControlParameterStates o) {
  buildCounterCloudControlParameterStates++;
  if (buildCounterCloudControlParameterStates < 3) {
    checkUnnamed3(o.parameterStates!);
  }
  buildCounterCloudControlParameterStates--;
}

core.int buildCounterControl = 0;
api.Control buildControl() {
  final o = api.Control();
  buildCounterControl++;
  if (buildCounterControl < 3) {
    o.controlFamily = buildControlFamily();
    o.customerResponsibilityDescription = 'foo';
    o.customerResponsibilityImplementation = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.family = 'foo';
    o.googleResponsibilityDescription = 'foo';
    o.googleResponsibilityImplementation = 'foo';
    o.id = 'foo';
    o.responsibilityType = 'foo';
  }
  buildCounterControl--;
  return o;
}

void checkControl(api.Control o) {
  buildCounterControl++;
  if (buildCounterControl < 3) {
    checkControlFamily(o.controlFamily!);
    unittest.expect(
      o.customerResponsibilityDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerResponsibilityImplementation!,
      unittest.equals('foo'),
    );
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.family!, unittest.equals('foo'));
    unittest.expect(o.googleResponsibilityDescription!, unittest.equals('foo'));
    unittest.expect(
      o.googleResponsibilityImplementation!,
      unittest.equals('foo'),
    );
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.responsibilityType!, unittest.equals('foo'));
  }
  buildCounterControl--;
}

core.int buildCounterControlDetails = 0;
api.ControlDetails buildControlDetails() {
  final o = api.ControlDetails();
  buildCounterControlDetails++;
  if (buildCounterControlDetails < 3) {
    o.complianceState = 'foo';
    o.control = buildControl();
    o.controlReportSummary = buildReportSummary();
  }
  buildCounterControlDetails--;
  return o;
}

void checkControlDetails(api.ControlDetails o) {
  buildCounterControlDetails++;
  if (buildCounterControlDetails < 3) {
    unittest.expect(o.complianceState!, unittest.equals('foo'));
    checkControl(o.control!);
    checkReportSummary(o.controlReportSummary!);
  }
  buildCounterControlDetails--;
}

core.int buildCounterControlFamily = 0;
api.ControlFamily buildControlFamily() {
  final o = api.ControlFamily();
  buildCounterControlFamily++;
  if (buildCounterControlFamily < 3) {
    o.displayName = 'foo';
    o.familyId = 'foo';
  }
  buildCounterControlFamily--;
  return o;
}

void checkControlFamily(api.ControlFamily o) {
  buildCounterControlFamily++;
  if (buildCounterControlFamily < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.familyId!, unittest.equals('foo'));
  }
  buildCounterControlFamily--;
}

core.int buildCounterDestinationDetails = 0;
api.DestinationDetails buildDestinationDetails() {
  final o = api.DestinationDetails();
  buildCounterDestinationDetails++;
  if (buildCounterDestinationDetails < 3) {
    o.gcsBucketUri = 'foo';
  }
  buildCounterDestinationDetails--;
  return o;
}

void checkDestinationDetails(api.DestinationDetails o) {
  buildCounterDestinationDetails++;
  if (buildCounterDestinationDetails < 3) {
    unittest.expect(o.gcsBucketUri!, unittest.equals('foo'));
  }
  buildCounterDestinationDetails--;
}

core.int buildCounterEligibleDestination = 0;
api.EligibleDestination buildEligibleDestination() {
  final o = api.EligibleDestination();
  buildCounterEligibleDestination++;
  if (buildCounterEligibleDestination < 3) {
    o.eligibleGcsBucket = 'foo';
  }
  buildCounterEligibleDestination--;
  return o;
}

void checkEligibleDestination(api.EligibleDestination o) {
  buildCounterEligibleDestination++;
  if (buildCounterEligibleDestination < 3) {
    unittest.expect(o.eligibleGcsBucket!, unittest.equals('foo'));
  }
  buildCounterEligibleDestination--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.List<api.EligibleDestination> buildUnnamed4() => [
  buildEligibleDestination(),
  buildEligibleDestination(),
];

void checkUnnamed4(core.List<api.EligibleDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEligibleDestination(o[0]);
  checkEligibleDestination(o[1]);
}

core.int buildCounterEnrollResourceRequest = 0;
api.EnrollResourceRequest buildEnrollResourceRequest() {
  final o = api.EnrollResourceRequest();
  buildCounterEnrollResourceRequest++;
  if (buildCounterEnrollResourceRequest < 3) {
    o.destinations = buildUnnamed4();
    o.validateOnly = true;
  }
  buildCounterEnrollResourceRequest--;
  return o;
}

void checkEnrollResourceRequest(api.EnrollResourceRequest o) {
  buildCounterEnrollResourceRequest++;
  if (buildCounterEnrollResourceRequest < 3) {
    checkUnnamed4(o.destinations!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterEnrollResourceRequest--;
}

core.List<api.DestinationDetails> buildUnnamed5() => [
  buildDestinationDetails(),
  buildDestinationDetails(),
];

void checkUnnamed5(core.List<api.DestinationDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestinationDetails(o[0]);
  checkDestinationDetails(o[1]);
}

core.int buildCounterEnrollment = 0;
api.Enrollment buildEnrollment() {
  final o = api.Enrollment();
  buildCounterEnrollment++;
  if (buildCounterEnrollment < 3) {
    o.destinationDetails = buildUnnamed5();
    o.name = 'foo';
  }
  buildCounterEnrollment--;
  return o;
}

void checkEnrollment(api.Enrollment o) {
  buildCounterEnrollment++;
  if (buildCounterEnrollment < 3) {
    checkUnnamed5(o.destinationDetails!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterEnrollment--;
}

core.Map<core.String, api.ParameterOverrides> buildUnnamed6() => {
  'x': buildParameterOverrides(),
  'y': buildParameterOverrides(),
};

void checkUnnamed6(core.Map<core.String, api.ParameterOverrides> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterOverrides(o['x']!);
  checkParameterOverrides(o['y']!);
}

core.int buildCounterGenerateAuditReportRequest = 0;
api.GenerateAuditReportRequest buildGenerateAuditReportRequest() {
  final o = api.GenerateAuditReportRequest();
  buildCounterGenerateAuditReportRequest++;
  if (buildCounterGenerateAuditReportRequest < 3) {
    o.complianceFramework = 'foo';
    o.complianceStandard = 'foo';
    o.gcsUri = 'foo';
    o.parameterOverrides = buildUnnamed6();
    o.reportFormat = 'foo';
    o.validateOnly = true;
  }
  buildCounterGenerateAuditReportRequest--;
  return o;
}

void checkGenerateAuditReportRequest(api.GenerateAuditReportRequest o) {
  buildCounterGenerateAuditReportRequest++;
  if (buildCounterGenerateAuditReportRequest < 3) {
    unittest.expect(o.complianceFramework!, unittest.equals('foo'));
    unittest.expect(o.complianceStandard!, unittest.equals('foo'));
    unittest.expect(o.gcsUri!, unittest.equals('foo'));
    checkUnnamed6(o.parameterOverrides!);
    unittest.expect(o.reportFormat!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGenerateAuditReportRequest--;
}

core.Map<core.String, api.ParameterOverrides> buildUnnamed7() => {
  'x': buildParameterOverrides(),
  'y': buildParameterOverrides(),
};

void checkUnnamed7(core.Map<core.String, api.ParameterOverrides> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterOverrides(o['x']!);
  checkParameterOverrides(o['y']!);
}

core.int buildCounterGenerateAuditScopeReportRequest = 0;
api.GenerateAuditScopeReportRequest buildGenerateAuditScopeReportRequest() {
  final o = api.GenerateAuditScopeReportRequest();
  buildCounterGenerateAuditScopeReportRequest++;
  if (buildCounterGenerateAuditScopeReportRequest < 3) {
    o.complianceFramework = 'foo';
    o.complianceStandard = 'foo';
    o.parameterOverrides = buildUnnamed7();
    o.reportFormat = 'foo';
    o.validateOnly = true;
  }
  buildCounterGenerateAuditScopeReportRequest--;
  return o;
}

void checkGenerateAuditScopeReportRequest(
  api.GenerateAuditScopeReportRequest o,
) {
  buildCounterGenerateAuditScopeReportRequest++;
  if (buildCounterGenerateAuditScopeReportRequest < 3) {
    unittest.expect(o.complianceFramework!, unittest.equals('foo'));
    unittest.expect(o.complianceStandard!, unittest.equals('foo'));
    checkUnnamed7(o.parameterOverrides!);
    unittest.expect(o.reportFormat!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGenerateAuditScopeReportRequest--;
}

core.List<api.AuditReport> buildUnnamed8() => [
  buildAuditReport(),
  buildAuditReport(),
];

void checkUnnamed8(core.List<api.AuditReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditReport(o[0]);
  checkAuditReport(o[1]);
}

core.int buildCounterListAuditReportsResponse = 0;
api.ListAuditReportsResponse buildListAuditReportsResponse() {
  final o = api.ListAuditReportsResponse();
  buildCounterListAuditReportsResponse++;
  if (buildCounterListAuditReportsResponse < 3) {
    o.auditReports = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterListAuditReportsResponse--;
  return o;
}

void checkListAuditReportsResponse(api.ListAuditReportsResponse o) {
  buildCounterListAuditReportsResponse++;
  if (buildCounterListAuditReportsResponse < 3) {
    checkUnnamed8(o.auditReports!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAuditReportsResponse--;
}

core.List<api.AuditSchedule> buildUnnamed9() => [
  buildAuditSchedule(),
  buildAuditSchedule(),
];

void checkUnnamed9(core.List<api.AuditSchedule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditSchedule(o[0]);
  checkAuditSchedule(o[1]);
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAuditSchedulesResponse = 0;
api.ListAuditSchedulesResponse buildListAuditSchedulesResponse() {
  final o = api.ListAuditSchedulesResponse();
  buildCounterListAuditSchedulesResponse++;
  if (buildCounterListAuditSchedulesResponse < 3) {
    o.auditSchedules = buildUnnamed9();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed10();
  }
  buildCounterListAuditSchedulesResponse--;
  return o;
}

void checkListAuditSchedulesResponse(api.ListAuditSchedulesResponse o) {
  buildCounterListAuditSchedulesResponse++;
  if (buildCounterListAuditSchedulesResponse < 3) {
    checkUnnamed9(o.auditSchedules!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed10(o.unreachable!);
  }
  buildCounterListAuditSchedulesResponse--;
}

core.List<api.Control> buildUnnamed11() => [buildControl(), buildControl()];

void checkUnnamed11(core.List<api.Control> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkControl(o[0]);
  checkControl(o[1]);
}

core.int buildCounterListControlsResponse = 0;
api.ListControlsResponse buildListControlsResponse() {
  final o = api.ListControlsResponse();
  buildCounterListControlsResponse++;
  if (buildCounterListControlsResponse < 3) {
    o.controls = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterListControlsResponse--;
  return o;
}

void checkListControlsResponse(api.ListControlsResponse o) {
  buildCounterListControlsResponse++;
  if (buildCounterListControlsResponse < 3) {
    checkUnnamed11(o.controls!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListControlsResponse--;
}

core.List<api.Location> buildUnnamed12() => [buildLocation(), buildLocation()];

void checkUnnamed12(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed12(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed13() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed13(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed13();
    o.unreachable = buildUnnamed14();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed13(o.operations!);
    checkUnnamed14(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.ResourceEnrollmentStatus> buildUnnamed15() => [
  buildResourceEnrollmentStatus(),
  buildResourceEnrollmentStatus(),
];

void checkUnnamed15(core.List<api.ResourceEnrollmentStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceEnrollmentStatus(o[0]);
  checkResourceEnrollmentStatus(o[1]);
}

core.int buildCounterListResourceEnrollmentStatusesResponse = 0;
api.ListResourceEnrollmentStatusesResponse
buildListResourceEnrollmentStatusesResponse() {
  final o = api.ListResourceEnrollmentStatusesResponse();
  buildCounterListResourceEnrollmentStatusesResponse++;
  if (buildCounterListResourceEnrollmentStatusesResponse < 3) {
    o.nextPageToken = 'foo';
    o.resourceEnrollmentStatuses = buildUnnamed15();
  }
  buildCounterListResourceEnrollmentStatusesResponse--;
  return o;
}

void checkListResourceEnrollmentStatusesResponse(
  api.ListResourceEnrollmentStatusesResponse o,
) {
  buildCounterListResourceEnrollmentStatusesResponse++;
  if (buildCounterListResourceEnrollmentStatusesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed15(o.resourceEnrollmentStatuses!);
  }
  buildCounterListResourceEnrollmentStatusesResponse--;
}

core.Map<core.String, core.String> buildUnnamed16() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed16(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed17() => {
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

void checkUnnamed17(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed16();
    o.locationId = 'foo';
    o.metadata = buildUnnamed17();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed16(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed17(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.Map<core.String, core.Object?> buildUnnamed18() => {
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

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed19() => {
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

void checkUnnamed19(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed18();
    o.name = 'foo';
    o.response = buildUnnamed19();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed18(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed19(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterParamValue = 0;
api.ParamValue buildParamValue() {
  final o = api.ParamValue();
  buildCounterParamValue++;
  if (buildCounterParamValue < 3) {
    o.boolValue = true;
    o.numberValue = 42.0;
    o.oneofValue = buildParameter();
    o.stringListValue = buildStringList();
    o.stringValue = 'foo';
  }
  buildCounterParamValue--;
  return o;
}

void checkParamValue(api.ParamValue o) {
  buildCounterParamValue++;
  if (buildCounterParamValue < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(o.numberValue!, unittest.equals(42.0));
    checkParameter(o.oneofValue!);
    checkStringList(o.stringListValue!);
    unittest.expect(o.stringValue!, unittest.equals('foo'));
  }
  buildCounterParamValue--;
}

core.int buildCounterParameter = 0;
api.Parameter buildParameter() {
  final o = api.Parameter();
  buildCounterParameter++;
  if (buildCounterParameter < 3) {
    o.name = 'foo';
    o.parameterValue = buildParamValue();
  }
  buildCounterParameter--;
  return o;
}

void checkParameter(api.Parameter o) {
  buildCounterParameter++;
  if (buildCounterParameter < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkParamValue(o.parameterValue!);
  }
  buildCounterParameter--;
}

core.List<api.Parameter> buildUnnamed20() => [
  buildParameter(),
  buildParameter(),
];

void checkUnnamed20(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.int buildCounterParameterOverrides = 0;
api.ParameterOverrides buildParameterOverrides() {
  final o = api.ParameterOverrides();
  buildCounterParameterOverrides++;
  if (buildCounterParameterOverrides < 3) {
    o.parameters = buildUnnamed20();
  }
  buildCounterParameterOverrides--;
  return o;
}

void checkParameterOverrides(api.ParameterOverrides o) {
  buildCounterParameterOverrides++;
  if (buildCounterParameterOverrides < 3) {
    checkUnnamed20(o.parameters!);
  }
  buildCounterParameterOverrides--;
}

core.int buildCounterParameterState = 0;
api.ParameterState buildParameterState() {
  final o = api.ParameterState();
  buildCounterParameterState++;
  if (buildCounterParameterState < 3) {
    o.isOverridden = true;
    o.parameter = buildParameter();
  }
  buildCounterParameterState--;
  return o;
}

void checkParameterState(api.ParameterState o) {
  buildCounterParameterState++;
  if (buildCounterParameterState < 3) {
    unittest.expect(o.isOverridden!, unittest.isTrue);
    checkParameter(o.parameter!);
  }
  buildCounterParameterState--;
}

core.int buildCounterReportSummary = 0;
api.ReportSummary buildReportSummary() {
  final o = api.ReportSummary();
  buildCounterReportSummary++;
  if (buildCounterReportSummary < 3) {
    o.compliantCount = 42;
    o.errorCount = 42;
    o.manualReviewNeededCount = 42;
    o.totalCount = 42;
    o.violationCount = 42;
  }
  buildCounterReportSummary--;
  return o;
}

void checkReportSummary(api.ReportSummary o) {
  buildCounterReportSummary++;
  if (buildCounterReportSummary < 3) {
    unittest.expect(o.compliantCount!, unittest.equals(42));
    unittest.expect(o.errorCount!, unittest.equals(42));
    unittest.expect(o.manualReviewNeededCount!, unittest.equals(42));
    unittest.expect(o.totalCount!, unittest.equals(42));
    unittest.expect(o.violationCount!, unittest.equals(42));
  }
  buildCounterReportSummary--;
}

core.int buildCounterResourceEnrollmentStatus = 0;
api.ResourceEnrollmentStatus buildResourceEnrollmentStatus() {
  final o = api.ResourceEnrollmentStatus();
  buildCounterResourceEnrollmentStatus++;
  if (buildCounterResourceEnrollmentStatus < 3) {
    o.displayName = 'foo';
    o.enrolled = true;
    o.enrollment = buildEnrollment();
    o.enrollmentState = 'foo';
    o.name = 'foo';
  }
  buildCounterResourceEnrollmentStatus--;
  return o;
}

void checkResourceEnrollmentStatus(api.ResourceEnrollmentStatus o) {
  buildCounterResourceEnrollmentStatus++;
  if (buildCounterResourceEnrollmentStatus < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.enrolled!, unittest.isTrue);
    checkEnrollment(o.enrollment!);
    unittest.expect(o.enrollmentState!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterResourceEnrollmentStatus--;
}

core.int buildCounterScheduleConfig = 0;
api.ScheduleConfig buildScheduleConfig() {
  final o = api.ScheduleConfig();
  buildCounterScheduleConfig++;
  if (buildCounterScheduleConfig < 3) {
    o.endTime = 'foo';
    o.frequency = 'foo';
    o.startTime = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterScheduleConfig--;
  return o;
}

void checkScheduleConfig(api.ScheduleConfig o) {
  buildCounterScheduleConfig++;
  if (buildCounterScheduleConfig < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.frequency!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.timeZone!, unittest.equals('foo'));
  }
  buildCounterScheduleConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed21() => {
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

void checkUnnamed21(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed22() => [
  buildUnnamed21(),
  buildUnnamed21(),
];

void checkUnnamed22(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed21(o[0]);
  checkUnnamed21(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed22();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed22(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringList = 0;
api.StringList buildStringList() {
  final o = api.StringList();
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    o.values = buildUnnamed23();
  }
  buildCounterStringList--;
  return o;
}

void checkStringList(api.StringList o) {
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    checkUnnamed23(o.values!);
  }
  buildCounterStringList--;
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AuditReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditReport(od);
    });
  });

  unittest.group('obj-schema-AuditSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditSchedule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditSchedule(od);
    });
  });

  unittest.group('obj-schema-AuditScopeReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditScopeReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditScopeReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditScopeReport(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-CloudControlParameterStates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudControlParameterStates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudControlParameterStates.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudControlParameterStates(od);
    });
  });

  unittest.group('obj-schema-Control', () {
    unittest.test('to-json--from-json', () async {
      final o = buildControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Control.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkControl(od);
    });
  });

  unittest.group('obj-schema-ControlDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildControlDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ControlDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkControlDetails(od);
    });
  });

  unittest.group('obj-schema-ControlFamily', () {
    unittest.test('to-json--from-json', () async {
      final o = buildControlFamily();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ControlFamily.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkControlFamily(od);
    });
  });

  unittest.group('obj-schema-DestinationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestinationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DestinationDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDestinationDetails(od);
    });
  });

  unittest.group('obj-schema-EligibleDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEligibleDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EligibleDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEligibleDestination(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-EnrollResourceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnrollResourceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnrollResourceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnrollResourceRequest(od);
    });
  });

  unittest.group('obj-schema-Enrollment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnrollment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Enrollment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnrollment(od);
    });
  });

  unittest.group('obj-schema-GenerateAuditReportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateAuditReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateAuditReportRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateAuditReportRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateAuditScopeReportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateAuditScopeReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateAuditScopeReportRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateAuditScopeReportRequest(od);
    });
  });

  unittest.group('obj-schema-ListAuditReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAuditReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAuditReportsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAuditReportsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAuditSchedulesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAuditSchedulesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAuditSchedulesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAuditSchedulesResponse(od);
    });
  });

  unittest.group('obj-schema-ListControlsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListControlsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListControlsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListControlsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListResourceEnrollmentStatusesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListResourceEnrollmentStatusesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListResourceEnrollmentStatusesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListResourceEnrollmentStatusesResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-ParamValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParamValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParamValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParamValue(od);
    });
  });

  unittest.group('obj-schema-Parameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Parameter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParameter(od);
    });
  });

  unittest.group('obj-schema-ParameterOverrides', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParameterOverrides();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParameterOverrides.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParameterOverrides(od);
    });
  });

  unittest.group('obj-schema-ParameterState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParameterState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParameterState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParameterState(od);
    });
  });

  unittest.group('obj-schema-ReportSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummary(od);
    });
  });

  unittest.group('obj-schema-ResourceEnrollmentStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceEnrollmentStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceEnrollmentStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceEnrollmentStatus(od);
    });
  });

  unittest.group('obj-schema-ScheduleConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScheduleConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScheduleConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScheduleConfig(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-StringList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStringList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StringList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStringList(od);
    });
  });

  unittest.group('resource-FoldersLocationsResource', () {
    unittest.test('method--enrollResource', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(mock).folders.locations;
      final arg_request = buildEnrollResourceRequest();
      final arg_scope = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EnrollResourceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEnrollResourceRequest(obj);

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
          final resp = convert.json.encode(buildEnrollment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enrollResource(
        arg_request,
        arg_scope,
        $fields: arg_$fields,
      );
      checkEnrollment(response as api.Enrollment);
    });
  });

  unittest.group('resource-FoldersLocationsAuditReportsResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(mock).folders.locations.auditReports;
      final arg_request = buildGenerateAuditReportRequest();
      final arg_scope = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateAuditReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateAuditReportRequest(obj);

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generate(
        arg_request,
        arg_scope,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(mock).folders.locations.auditReports;
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
          final resp = convert.json.encode(buildAuditReport());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAuditReport(response as api.AuditReport);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(mock).folders.locations.auditReports;
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
          final resp = convert.json.encode(buildListAuditReportsResponse());
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
      checkListAuditReportsResponse(response as api.ListAuditReportsResponse);
    });
  });

  unittest.group('resource-FoldersLocationsAuditSchedulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).folders.locations.auditSchedules;
      final arg_request = buildAuditSchedule();
      final arg_parent = 'foo';
      final arg_auditScheduleId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuditSchedule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuditSchedule(obj);

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
            queryMap['auditScheduleId']!.first,
            unittest.equals(arg_auditScheduleId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAuditSchedule());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        auditScheduleId: arg_auditScheduleId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkAuditSchedule(response as api.AuditSchedule);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).folders.locations.auditSchedules;
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
          final resp = convert.json.encode(buildAuditSchedule());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAuditSchedule(response as api.AuditSchedule);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).folders.locations.auditSchedules;
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
          final resp = convert.json.encode(buildListAuditSchedulesResponse());
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
      checkListAuditSchedulesResponse(
        response as api.ListAuditSchedulesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).folders.locations.auditSchedules;
      final arg_request = buildAuditSchedule();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuditSchedule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuditSchedule(obj);

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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAuditSchedule());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkAuditSchedule(response as api.AuditSchedule);
    });
  });

  unittest.group('resource-FoldersLocationsAuditScopeReportsResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).folders.locations.auditScopeReports;
      final arg_request = buildGenerateAuditScopeReportRequest();
      final arg_scope = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateAuditScopeReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateAuditScopeReportRequest(obj);

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
          final resp = convert.json.encode(buildAuditScopeReport());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generate(
        arg_request,
        arg_scope,
        $fields: arg_$fields,
      );
      checkAuditScopeReport(response as api.AuditScopeReport);
    });
  });

  unittest.group('resource-FoldersLocationsOperationDetailsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).folders.locations.operationDetails;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-FoldersLocationsOperationIdsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(mock).folders.locations.operationIds;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-FoldersLocationsResourceEnrollmentStatusesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).folders.locations.resourceEnrollmentStatuses;
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
          final resp = convert.json.encode(buildResourceEnrollmentStatus());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkResourceEnrollmentStatus(response as api.ResourceEnrollmentStatus);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).folders.locations.resourceEnrollmentStatuses;
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
            buildListResourceEnrollmentStatusesResponse(),
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
      checkListResourceEnrollmentStatusesResponse(
        response as api.ListResourceEnrollmentStatusesResponse,
      );
    });
  });

  unittest.group('resource-FoldersLocationsStandardsControlsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).folders.locations.standards.controls;
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
          final resp = convert.json.encode(buildListControlsResponse());
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
      checkListControlsResponse(response as api.ListControlsResponse);
    });
  });

  unittest.group('resource-OrganizationsLocationsResource', () {
    unittest.test('method--enrollResource', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(mock).organizations.locations;
      final arg_request = buildEnrollResourceRequest();
      final arg_scope = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EnrollResourceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEnrollResourceRequest(obj);

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
          final resp = convert.json.encode(buildEnrollment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enrollResource(
        arg_request,
        arg_scope,
        $fields: arg_$fields,
      );
      checkEnrollment(response as api.Enrollment);
    });
  });

  unittest.group('resource-OrganizationsLocationsAuditReportsResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).organizations.locations.auditReports;
      final arg_request = buildGenerateAuditReportRequest();
      final arg_scope = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateAuditReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateAuditReportRequest(obj);

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generate(
        arg_request,
        arg_scope,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).organizations.locations.auditReports;
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
          final resp = convert.json.encode(buildAuditReport());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAuditReport(response as api.AuditReport);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).organizations.locations.auditReports;
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
          final resp = convert.json.encode(buildListAuditReportsResponse());
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
      checkListAuditReportsResponse(response as api.ListAuditReportsResponse);
    });
  });

  unittest.group('resource-OrganizationsLocationsAuditSchedulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).organizations.locations.auditSchedules;
      final arg_request = buildAuditSchedule();
      final arg_parent = 'foo';
      final arg_auditScheduleId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuditSchedule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuditSchedule(obj);

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
            queryMap['auditScheduleId']!.first,
            unittest.equals(arg_auditScheduleId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAuditSchedule());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        auditScheduleId: arg_auditScheduleId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkAuditSchedule(response as api.AuditSchedule);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).organizations.locations.auditSchedules;
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
          final resp = convert.json.encode(buildAuditSchedule());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAuditSchedule(response as api.AuditSchedule);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).organizations.locations.auditSchedules;
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
          final resp = convert.json.encode(buildListAuditSchedulesResponse());
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
      checkListAuditSchedulesResponse(
        response as api.ListAuditSchedulesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).organizations.locations.auditSchedules;
      final arg_request = buildAuditSchedule();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuditSchedule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuditSchedule(obj);

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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAuditSchedule());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkAuditSchedule(response as api.AuditSchedule);
    });
  });

  unittest.group('resource-OrganizationsLocationsAuditScopeReportsResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).organizations.locations.auditScopeReports;
      final arg_request = buildGenerateAuditScopeReportRequest();
      final arg_scope = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateAuditScopeReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateAuditScopeReportRequest(obj);

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
          final resp = convert.json.encode(buildAuditScopeReport());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generate(
        arg_request,
        arg_scope,
        $fields: arg_$fields,
      );
      checkAuditScopeReport(response as api.AuditScopeReport);
    });
  });

  unittest.group('resource-OrganizationsLocationsOperationDetailsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).organizations.locations.operationDetails;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OrganizationsLocationsOperationIdsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).organizations.locations.operationIds;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OrganizationsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).organizations.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelOperationRequest(obj);

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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
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
          final resp = convert.json.encode(buildListOperationsResponse());
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
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group(
    'resource-OrganizationsLocationsResourceEnrollmentStatusesResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res = api.CloudAuditManagerApi(
          mock,
        ).organizations.locations.resourceEnrollmentStatuses;
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
            final resp = convert.json.encode(buildResourceEnrollmentStatus());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkResourceEnrollmentStatus(response as api.ResourceEnrollmentStatus);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.CloudAuditManagerApi(
          mock,
        ).organizations.locations.resourceEnrollmentStatuses;
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
              buildListResourceEnrollmentStatusesResponse(),
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
        checkListResourceEnrollmentStatusesResponse(
          response as api.ListResourceEnrollmentStatusesResponse,
        );
      });
    },
  );

  unittest.group('resource-OrganizationsLocationsStandardsControlsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).organizations.locations.standards.controls;
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
          final resp = convert.json.encode(buildListControlsResponse());
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
      checkListControlsResponse(response as api.ListControlsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--enrollResource', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(mock).projects.locations;
      final arg_request = buildEnrollResourceRequest();
      final arg_scope = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EnrollResourceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEnrollResourceRequest(obj);

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
          final resp = convert.json.encode(buildEnrollment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enrollResource(
        arg_request,
        arg_scope,
        $fields: arg_$fields,
      );
      checkEnrollment(response as api.Enrollment);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(mock).projects.locations;
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
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed24();
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
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
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
          final resp = convert.json.encode(buildListLocationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAuditReportsResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).projects.locations.auditReports;
      final arg_request = buildGenerateAuditReportRequest();
      final arg_scope = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateAuditReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateAuditReportRequest(obj);

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generate(
        arg_request,
        arg_scope,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).projects.locations.auditReports;
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
          final resp = convert.json.encode(buildAuditReport());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAuditReport(response as api.AuditReport);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).projects.locations.auditReports;
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
          final resp = convert.json.encode(buildListAuditReportsResponse());
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
      checkListAuditReportsResponse(response as api.ListAuditReportsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAuditSchedulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).projects.locations.auditSchedules;
      final arg_request = buildAuditSchedule();
      final arg_parent = 'foo';
      final arg_auditScheduleId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuditSchedule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuditSchedule(obj);

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
            queryMap['auditScheduleId']!.first,
            unittest.equals(arg_auditScheduleId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAuditSchedule());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        auditScheduleId: arg_auditScheduleId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkAuditSchedule(response as api.AuditSchedule);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).projects.locations.auditSchedules;
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
          final resp = convert.json.encode(buildAuditSchedule());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAuditSchedule(response as api.AuditSchedule);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).projects.locations.auditSchedules;
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
          final resp = convert.json.encode(buildListAuditSchedulesResponse());
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
      checkListAuditSchedulesResponse(
        response as api.ListAuditSchedulesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).projects.locations.auditSchedules;
      final arg_request = buildAuditSchedule();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuditSchedule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuditSchedule(obj);

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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAuditSchedule());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkAuditSchedule(response as api.AuditSchedule);
    });
  });

  unittest.group('resource-ProjectsLocationsAuditScopeReportsResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).projects.locations.auditScopeReports;
      final arg_request = buildGenerateAuditScopeReportRequest();
      final arg_scope = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateAuditScopeReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateAuditScopeReportRequest(obj);

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
          final resp = convert.json.encode(buildAuditScopeReport());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generate(
        arg_request,
        arg_scope,
        $fields: arg_$fields,
      );
      checkAuditScopeReport(response as api.AuditScopeReport);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationDetailsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).projects.locations.operationDetails;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationIdsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).projects.locations.operationIds;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelOperationRequest(obj);

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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(mock).projects.locations.operations;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(mock).projects.locations.operations;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(mock).projects.locations.operations;
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
          final resp = convert.json.encode(buildListOperationsResponse());
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
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsResourceEnrollmentStatusesResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res = api.CloudAuditManagerApi(
          mock,
        ).projects.locations.resourceEnrollmentStatuses;
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
            final resp = convert.json.encode(buildResourceEnrollmentStatus());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkResourceEnrollmentStatus(response as api.ResourceEnrollmentStatus);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsStandardsControlsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAuditManagerApi(
        mock,
      ).projects.locations.standards.controls;
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
          final resp = convert.json.encode(buildListControlsResponse());
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
      checkListControlsResponse(response as api.ListControlsResponse);
    });
  });
}
