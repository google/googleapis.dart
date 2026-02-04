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

import 'package:googleapis/bigqueryreservation/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAssignment = 0;
api.Assignment buildAssignment() {
  final o = api.Assignment();
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    o.assignee = 'foo';
    o.enableGeminiInBigquery = true;
    o.jobType = 'foo';
    o.name = 'foo';
    o.schedulingPolicy = buildSchedulingPolicy();
    o.state = 'foo';
  }
  buildCounterAssignment--;
  return o;
}

void checkAssignment(api.Assignment o) {
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    unittest.expect(o.assignee!, unittest.equals('foo'));
    unittest.expect(o.enableGeminiInBigquery!, unittest.isTrue);
    unittest.expect(o.jobType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkSchedulingPolicy(o.schedulingPolicy!);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterAssignment--;
}

core.List<api.AuditLogConfig> buildUnnamed0() => [
  buildAuditLogConfig(),
  buildAuditLogConfig(),
];

void checkUnnamed0(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed0();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed0(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAutoscale = 0;
api.Autoscale buildAutoscale() {
  final o = api.Autoscale();
  buildCounterAutoscale++;
  if (buildCounterAutoscale < 3) {
    o.currentSlots = 'foo';
    o.maxSlots = 'foo';
  }
  buildCounterAutoscale--;
  return o;
}

void checkAutoscale(api.Autoscale o) {
  buildCounterAutoscale++;
  if (buildCounterAutoscale < 3) {
    unittest.expect(o.currentSlots!, unittest.equals('foo'));
    unittest.expect(o.maxSlots!, unittest.equals('foo'));
  }
  buildCounterAutoscale--;
}

core.List<api.TableReference> buildUnnamed2() => [
  buildTableReference(),
  buildTableReference(),
];

void checkUnnamed2(core.List<api.TableReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableReference(o[0]);
  checkTableReference(o[1]);
}

core.int buildCounterBiReservation = 0;
api.BiReservation buildBiReservation() {
  final o = api.BiReservation();
  buildCounterBiReservation++;
  if (buildCounterBiReservation < 3) {
    o.name = 'foo';
    o.preferredTables = buildUnnamed2();
    o.size = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterBiReservation--;
  return o;
}

void checkBiReservation(api.BiReservation o) {
  buildCounterBiReservation++;
  if (buildCounterBiReservation < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed2(o.preferredTables!);
    unittest.expect(o.size!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterBiReservation--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed3();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed3(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCapacityCommitment = 0;
api.CapacityCommitment buildCapacityCommitment() {
  final o = api.CapacityCommitment();
  buildCounterCapacityCommitment++;
  if (buildCounterCapacityCommitment < 3) {
    o.commitmentEndTime = 'foo';
    o.commitmentStartTime = 'foo';
    o.edition = 'foo';
    o.failureStatus = buildStatus();
    o.isFlatRate = true;
    o.multiRegionAuxiliary = true;
    o.name = 'foo';
    o.plan = 'foo';
    o.renewalPlan = 'foo';
    o.slotCount = 'foo';
    o.state = 'foo';
  }
  buildCounterCapacityCommitment--;
  return o;
}

void checkCapacityCommitment(api.CapacityCommitment o) {
  buildCounterCapacityCommitment++;
  if (buildCounterCapacityCommitment < 3) {
    unittest.expect(o.commitmentEndTime!, unittest.equals('foo'));
    unittest.expect(o.commitmentStartTime!, unittest.equals('foo'));
    unittest.expect(o.edition!, unittest.equals('foo'));
    checkStatus(o.failureStatus!);
    unittest.expect(o.isFlatRate!, unittest.isTrue);
    unittest.expect(o.multiRegionAuxiliary!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.plan!, unittest.equals('foo'));
    unittest.expect(o.renewalPlan!, unittest.equals('foo'));
    unittest.expect(o.slotCount!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterCapacityCommitment--;
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

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  final o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.int buildCounterFailoverReservationRequest = 0;
api.FailoverReservationRequest buildFailoverReservationRequest() {
  final o = api.FailoverReservationRequest();
  buildCounterFailoverReservationRequest++;
  if (buildCounterFailoverReservationRequest < 3) {
    o.failoverMode = 'foo';
  }
  buildCounterFailoverReservationRequest--;
  return o;
}

void checkFailoverReservationRequest(api.FailoverReservationRequest o) {
  buildCounterFailoverReservationRequest++;
  if (buildCounterFailoverReservationRequest < 3) {
    unittest.expect(o.failoverMode!, unittest.equals('foo'));
  }
  buildCounterFailoverReservationRequest--;
}

core.List<api.Assignment> buildUnnamed4() => [
  buildAssignment(),
  buildAssignment(),
];

void checkUnnamed4(core.List<api.Assignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignment(o[0]);
  checkAssignment(o[1]);
}

core.int buildCounterListAssignmentsResponse = 0;
api.ListAssignmentsResponse buildListAssignmentsResponse() {
  final o = api.ListAssignmentsResponse();
  buildCounterListAssignmentsResponse++;
  if (buildCounterListAssignmentsResponse < 3) {
    o.assignments = buildUnnamed4();
    o.nextPageToken = 'foo';
  }
  buildCounterListAssignmentsResponse--;
  return o;
}

void checkListAssignmentsResponse(api.ListAssignmentsResponse o) {
  buildCounterListAssignmentsResponse++;
  if (buildCounterListAssignmentsResponse < 3) {
    checkUnnamed4(o.assignments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAssignmentsResponse--;
}

core.List<api.CapacityCommitment> buildUnnamed5() => [
  buildCapacityCommitment(),
  buildCapacityCommitment(),
];

void checkUnnamed5(core.List<api.CapacityCommitment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCapacityCommitment(o[0]);
  checkCapacityCommitment(o[1]);
}

core.int buildCounterListCapacityCommitmentsResponse = 0;
api.ListCapacityCommitmentsResponse buildListCapacityCommitmentsResponse() {
  final o = api.ListCapacityCommitmentsResponse();
  buildCounterListCapacityCommitmentsResponse++;
  if (buildCounterListCapacityCommitmentsResponse < 3) {
    o.capacityCommitments = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterListCapacityCommitmentsResponse--;
  return o;
}

void checkListCapacityCommitmentsResponse(
  api.ListCapacityCommitmentsResponse o,
) {
  buildCounterListCapacityCommitmentsResponse++;
  if (buildCounterListCapacityCommitmentsResponse < 3) {
    checkUnnamed5(o.capacityCommitments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListCapacityCommitmentsResponse--;
}

core.List<api.ReservationGroup> buildUnnamed6() => [
  buildReservationGroup(),
  buildReservationGroup(),
];

void checkUnnamed6(core.List<api.ReservationGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReservationGroup(o[0]);
  checkReservationGroup(o[1]);
}

core.int buildCounterListReservationGroupsResponse = 0;
api.ListReservationGroupsResponse buildListReservationGroupsResponse() {
  final o = api.ListReservationGroupsResponse();
  buildCounterListReservationGroupsResponse++;
  if (buildCounterListReservationGroupsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reservationGroups = buildUnnamed6();
  }
  buildCounterListReservationGroupsResponse--;
  return o;
}

void checkListReservationGroupsResponse(api.ListReservationGroupsResponse o) {
  buildCounterListReservationGroupsResponse++;
  if (buildCounterListReservationGroupsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed6(o.reservationGroups!);
  }
  buildCounterListReservationGroupsResponse--;
}

core.List<api.Reservation> buildUnnamed7() => [
  buildReservation(),
  buildReservation(),
];

void checkUnnamed7(core.List<api.Reservation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReservation(o[0]);
  checkReservation(o[1]);
}

core.int buildCounterListReservationsResponse = 0;
api.ListReservationsResponse buildListReservationsResponse() {
  final o = api.ListReservationsResponse();
  buildCounterListReservationsResponse++;
  if (buildCounterListReservationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reservations = buildUnnamed7();
  }
  buildCounterListReservationsResponse--;
  return o;
}

void checkListReservationsResponse(api.ListReservationsResponse o) {
  buildCounterListReservationsResponse++;
  if (buildCounterListReservationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed7(o.reservations!);
  }
  buildCounterListReservationsResponse--;
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMergeCapacityCommitmentsRequest = 0;
api.MergeCapacityCommitmentsRequest buildMergeCapacityCommitmentsRequest() {
  final o = api.MergeCapacityCommitmentsRequest();
  buildCounterMergeCapacityCommitmentsRequest++;
  if (buildCounterMergeCapacityCommitmentsRequest < 3) {
    o.capacityCommitmentId = 'foo';
    o.capacityCommitmentIds = buildUnnamed8();
  }
  buildCounterMergeCapacityCommitmentsRequest--;
  return o;
}

void checkMergeCapacityCommitmentsRequest(
  api.MergeCapacityCommitmentsRequest o,
) {
  buildCounterMergeCapacityCommitmentsRequest++;
  if (buildCounterMergeCapacityCommitmentsRequest < 3) {
    unittest.expect(o.capacityCommitmentId!, unittest.equals('foo'));
    checkUnnamed8(o.capacityCommitmentIds!);
  }
  buildCounterMergeCapacityCommitmentsRequest--;
}

core.int buildCounterMoveAssignmentRequest = 0;
api.MoveAssignmentRequest buildMoveAssignmentRequest() {
  final o = api.MoveAssignmentRequest();
  buildCounterMoveAssignmentRequest++;
  if (buildCounterMoveAssignmentRequest < 3) {
    o.assignmentId = 'foo';
    o.destinationId = 'foo';
  }
  buildCounterMoveAssignmentRequest--;
  return o;
}

void checkMoveAssignmentRequest(api.MoveAssignmentRequest o) {
  buildCounterMoveAssignmentRequest++;
  if (buildCounterMoveAssignmentRequest < 3) {
    unittest.expect(o.assignmentId!, unittest.equals('foo'));
    unittest.expect(o.destinationId!, unittest.equals('foo'));
  }
  buildCounterMoveAssignmentRequest--;
}

core.List<api.AuditConfig> buildUnnamed9() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed9(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed10() => [buildBinding(), buildBinding()];

void checkUnnamed10(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed9();
    o.bindings = buildUnnamed10();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed9(o.auditConfigs!);
    checkUnnamed10(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterReplicationStatus = 0;
api.ReplicationStatus buildReplicationStatus() {
  final o = api.ReplicationStatus();
  buildCounterReplicationStatus++;
  if (buildCounterReplicationStatus < 3) {
    o.error = buildStatus();
    o.lastErrorTime = 'foo';
    o.lastReplicationTime = 'foo';
    o.softFailoverStartTime = 'foo';
  }
  buildCounterReplicationStatus--;
  return o;
}

void checkReplicationStatus(api.ReplicationStatus o) {
  buildCounterReplicationStatus++;
  if (buildCounterReplicationStatus < 3) {
    checkStatus(o.error!);
    unittest.expect(o.lastErrorTime!, unittest.equals('foo'));
    unittest.expect(o.lastReplicationTime!, unittest.equals('foo'));
    unittest.expect(o.softFailoverStartTime!, unittest.equals('foo'));
  }
  buildCounterReplicationStatus--;
}

core.Map<core.String, core.String> buildUnnamed11() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed11(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterReservation = 0;
api.Reservation buildReservation() {
  final o = api.Reservation();
  buildCounterReservation++;
  if (buildCounterReservation < 3) {
    o.autoscale = buildAutoscale();
    o.concurrency = 'foo';
    o.creationTime = 'foo';
    o.edition = 'foo';
    o.ignoreIdleSlots = true;
    o.labels = buildUnnamed11();
    o.maxSlots = 'foo';
    o.multiRegionAuxiliary = true;
    o.name = 'foo';
    o.originalPrimaryLocation = 'foo';
    o.primaryLocation = 'foo';
    o.replicationStatus = buildReplicationStatus();
    o.reservationGroup = 'foo';
    o.scalingMode = 'foo';
    o.schedulingPolicy = buildSchedulingPolicy();
    o.secondaryLocation = 'foo';
    o.slotCapacity = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterReservation--;
  return o;
}

void checkReservation(api.Reservation o) {
  buildCounterReservation++;
  if (buildCounterReservation < 3) {
    checkAutoscale(o.autoscale!);
    unittest.expect(o.concurrency!, unittest.equals('foo'));
    unittest.expect(o.creationTime!, unittest.equals('foo'));
    unittest.expect(o.edition!, unittest.equals('foo'));
    unittest.expect(o.ignoreIdleSlots!, unittest.isTrue);
    checkUnnamed11(o.labels!);
    unittest.expect(o.maxSlots!, unittest.equals('foo'));
    unittest.expect(o.multiRegionAuxiliary!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.originalPrimaryLocation!, unittest.equals('foo'));
    unittest.expect(o.primaryLocation!, unittest.equals('foo'));
    checkReplicationStatus(o.replicationStatus!);
    unittest.expect(o.reservationGroup!, unittest.equals('foo'));
    unittest.expect(o.scalingMode!, unittest.equals('foo'));
    checkSchedulingPolicy(o.schedulingPolicy!);
    unittest.expect(o.secondaryLocation!, unittest.equals('foo'));
    unittest.expect(o.slotCapacity!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterReservation--;
}

core.int buildCounterReservationGroup = 0;
api.ReservationGroup buildReservationGroup() {
  final o = api.ReservationGroup();
  buildCounterReservationGroup++;
  if (buildCounterReservationGroup < 3) {
    o.name = 'foo';
  }
  buildCounterReservationGroup--;
  return o;
}

void checkReservationGroup(api.ReservationGroup o) {
  buildCounterReservationGroup++;
  if (buildCounterReservationGroup < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterReservationGroup--;
}

core.int buildCounterSchedulingPolicy = 0;
api.SchedulingPolicy buildSchedulingPolicy() {
  final o = api.SchedulingPolicy();
  buildCounterSchedulingPolicy++;
  if (buildCounterSchedulingPolicy < 3) {
    o.concurrency = 'foo';
    o.maxSlots = 'foo';
  }
  buildCounterSchedulingPolicy--;
  return o;
}

void checkSchedulingPolicy(api.SchedulingPolicy o) {
  buildCounterSchedulingPolicy++;
  if (buildCounterSchedulingPolicy < 3) {
    unittest.expect(o.concurrency!, unittest.equals('foo'));
    unittest.expect(o.maxSlots!, unittest.equals('foo'));
  }
  buildCounterSchedulingPolicy--;
}

core.List<api.Assignment> buildUnnamed12() => [
  buildAssignment(),
  buildAssignment(),
];

void checkUnnamed12(core.List<api.Assignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignment(o[0]);
  checkAssignment(o[1]);
}

core.int buildCounterSearchAllAssignmentsResponse = 0;
api.SearchAllAssignmentsResponse buildSearchAllAssignmentsResponse() {
  final o = api.SearchAllAssignmentsResponse();
  buildCounterSearchAllAssignmentsResponse++;
  if (buildCounterSearchAllAssignmentsResponse < 3) {
    o.assignments = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchAllAssignmentsResponse--;
  return o;
}

void checkSearchAllAssignmentsResponse(api.SearchAllAssignmentsResponse o) {
  buildCounterSearchAllAssignmentsResponse++;
  if (buildCounterSearchAllAssignmentsResponse < 3) {
    checkUnnamed12(o.assignments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterSearchAllAssignmentsResponse--;
}

core.List<api.Assignment> buildUnnamed13() => [
  buildAssignment(),
  buildAssignment(),
];

void checkUnnamed13(core.List<api.Assignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignment(o[0]);
  checkAssignment(o[1]);
}

core.int buildCounterSearchAssignmentsResponse = 0;
api.SearchAssignmentsResponse buildSearchAssignmentsResponse() {
  final o = api.SearchAssignmentsResponse();
  buildCounterSearchAssignmentsResponse++;
  if (buildCounterSearchAssignmentsResponse < 3) {
    o.assignments = buildUnnamed13();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchAssignmentsResponse--;
  return o;
}

void checkSearchAssignmentsResponse(api.SearchAssignmentsResponse o) {
  buildCounterSearchAssignmentsResponse++;
  if (buildCounterSearchAssignmentsResponse < 3) {
    checkUnnamed13(o.assignments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterSearchAssignmentsResponse--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSplitCapacityCommitmentRequest = 0;
api.SplitCapacityCommitmentRequest buildSplitCapacityCommitmentRequest() {
  final o = api.SplitCapacityCommitmentRequest();
  buildCounterSplitCapacityCommitmentRequest++;
  if (buildCounterSplitCapacityCommitmentRequest < 3) {
    o.slotCount = 'foo';
  }
  buildCounterSplitCapacityCommitmentRequest--;
  return o;
}

void checkSplitCapacityCommitmentRequest(api.SplitCapacityCommitmentRequest o) {
  buildCounterSplitCapacityCommitmentRequest++;
  if (buildCounterSplitCapacityCommitmentRequest < 3) {
    unittest.expect(o.slotCount!, unittest.equals('foo'));
  }
  buildCounterSplitCapacityCommitmentRequest--;
}

core.int buildCounterSplitCapacityCommitmentResponse = 0;
api.SplitCapacityCommitmentResponse buildSplitCapacityCommitmentResponse() {
  final o = api.SplitCapacityCommitmentResponse();
  buildCounterSplitCapacityCommitmentResponse++;
  if (buildCounterSplitCapacityCommitmentResponse < 3) {
    o.first = buildCapacityCommitment();
    o.second = buildCapacityCommitment();
  }
  buildCounterSplitCapacityCommitmentResponse--;
  return o;
}

void checkSplitCapacityCommitmentResponse(
  api.SplitCapacityCommitmentResponse o,
) {
  buildCounterSplitCapacityCommitmentResponse++;
  if (buildCounterSplitCapacityCommitmentResponse < 3) {
    checkCapacityCommitment(o.first!);
    checkCapacityCommitment(o.second!);
  }
  buildCounterSplitCapacityCommitmentResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed14() => {
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

void checkUnnamed14(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed15() => [
  buildUnnamed14(),
  buildUnnamed14(),
];

void checkUnnamed15(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed14(o[0]);
  checkUnnamed14(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed15();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed15(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTableReference = 0;
api.TableReference buildTableReference() {
  final o = api.TableReference();
  buildCounterTableReference++;
  if (buildCounterTableReference < 3) {
    o.datasetId = 'foo';
    o.projectId = 'foo';
    o.tableId = 'foo';
  }
  buildCounterTableReference--;
  return o;
}

void checkTableReference(api.TableReference o) {
  buildCounterTableReference++;
  if (buildCounterTableReference < 3) {
    unittest.expect(o.datasetId!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
    unittest.expect(o.tableId!, unittest.equals('foo'));
  }
  buildCounterTableReference--;
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed16();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed16(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed17();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed17(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

void main() {
  unittest.group('obj-schema-Assignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Assignment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssignment(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-Autoscale', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoscale();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Autoscale.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutoscale(od);
    });
  });

  unittest.group('obj-schema-BiReservation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBiReservation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BiReservation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBiReservation(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-CapacityCommitment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCapacityCommitment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CapacityCommitment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCapacityCommitment(od);
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

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Expr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-FailoverReservationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFailoverReservationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FailoverReservationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFailoverReservationRequest(od);
    });
  });

  unittest.group('obj-schema-ListAssignmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAssignmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAssignmentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAssignmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCapacityCommitmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCapacityCommitmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCapacityCommitmentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCapacityCommitmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListReservationGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReservationGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReservationGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListReservationGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListReservationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReservationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReservationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListReservationsResponse(od);
    });
  });

  unittest.group('obj-schema-MergeCapacityCommitmentsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMergeCapacityCommitmentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MergeCapacityCommitmentsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMergeCapacityCommitmentsRequest(od);
    });
  });

  unittest.group('obj-schema-MoveAssignmentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoveAssignmentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MoveAssignmentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMoveAssignmentRequest(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-ReplicationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplicationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplicationStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReplicationStatus(od);
    });
  });

  unittest.group('obj-schema-Reservation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReservation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Reservation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReservation(od);
    });
  });

  unittest.group('obj-schema-ReservationGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReservationGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReservationGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReservationGroup(od);
    });
  });

  unittest.group('obj-schema-SchedulingPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchedulingPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchedulingPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchedulingPolicy(od);
    });
  });

  unittest.group('obj-schema-SearchAllAssignmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchAllAssignmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchAllAssignmentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchAllAssignmentsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchAssignmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchAssignmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchAssignmentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchAssignmentsResponse(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SplitCapacityCommitmentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSplitCapacityCommitmentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SplitCapacityCommitmentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSplitCapacityCommitmentRequest(od);
    });
  });

  unittest.group('obj-schema-SplitCapacityCommitmentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSplitCapacityCommitmentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SplitCapacityCommitmentResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSplitCapacityCommitmentResponse(od);
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

  unittest.group('obj-schema-TableReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableReference(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--getBiReservation', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock).projects.locations;
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
          final resp = convert.json.encode(buildBiReservation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getBiReservation(
        arg_name,
        $fields: arg_$fields,
      );
      checkBiReservation(response as api.BiReservation);
    });

    unittest.test('method--searchAllAssignments', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock).projects.locations;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
          unittest.expect(queryMap['query']!.first, unittest.equals(arg_query));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSearchAllAssignmentsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchAllAssignments(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        query: arg_query,
        $fields: arg_$fields,
      );
      checkSearchAllAssignmentsResponse(
        response as api.SearchAllAssignmentsResponse,
      );
    });

    unittest.test('method--searchAssignments', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock).projects.locations;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
          unittest.expect(queryMap['query']!.first, unittest.equals(arg_query));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSearchAssignmentsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchAssignments(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        query: arg_query,
        $fields: arg_$fields,
      );
      checkSearchAssignmentsResponse(response as api.SearchAssignmentsResponse);
    });

    unittest.test('method--updateBiReservation', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock).projects.locations;
      final arg_request = buildBiReservation();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BiReservation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBiReservation(obj);

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
          final resp = convert.json.encode(buildBiReservation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateBiReservation(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkBiReservation(response as api.BiReservation);
    });
  });

  unittest.group('resource-ProjectsLocationsCapacityCommitmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.capacityCommitments;
      final arg_request = buildCapacityCommitment();
      final arg_parent = 'foo';
      final arg_capacityCommitmentId = 'foo';
      final arg_enforceSingleAdminProjectPerOrg = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CapacityCommitment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCapacityCommitment(obj);

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
            queryMap['capacityCommitmentId']!.first,
            unittest.equals(arg_capacityCommitmentId),
          );
          unittest.expect(
            queryMap['enforceSingleAdminProjectPerOrg']!.first,
            unittest.equals('$arg_enforceSingleAdminProjectPerOrg'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCapacityCommitment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        capacityCommitmentId: arg_capacityCommitmentId,
        enforceSingleAdminProjectPerOrg: arg_enforceSingleAdminProjectPerOrg,
        $fields: arg_$fields,
      );
      checkCapacityCommitment(response as api.CapacityCommitment);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.capacityCommitments;
      final arg_name = 'foo';
      final arg_force = true;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
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
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.capacityCommitments;
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
          final resp = convert.json.encode(buildCapacityCommitment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCapacityCommitment(response as api.CapacityCommitment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.capacityCommitments;
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
            buildListCapacityCommitmentsResponse(),
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
      checkListCapacityCommitmentsResponse(
        response as api.ListCapacityCommitmentsResponse,
      );
    });

    unittest.test('method--merge', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.capacityCommitments;
      final arg_request = buildMergeCapacityCommitmentsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MergeCapacityCommitmentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMergeCapacityCommitmentsRequest(obj);

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
          final resp = convert.json.encode(buildCapacityCommitment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.merge(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkCapacityCommitment(response as api.CapacityCommitment);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.capacityCommitments;
      final arg_request = buildCapacityCommitment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CapacityCommitment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCapacityCommitment(obj);

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
          final resp = convert.json.encode(buildCapacityCommitment());
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
      checkCapacityCommitment(response as api.CapacityCommitment);
    });

    unittest.test('method--split', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.capacityCommitments;
      final arg_request = buildSplitCapacityCommitmentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SplitCapacityCommitmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSplitCapacityCommitmentRequest(obj);

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
            buildSplitCapacityCommitmentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.split(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkSplitCapacityCommitmentResponse(
        response as api.SplitCapacityCommitmentResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsReservationGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservationGroups;
      final arg_request = buildReservationGroup();
      final arg_parent = 'foo';
      final arg_reservationGroupId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ReservationGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReservationGroup(obj);

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
            queryMap['reservationGroupId']!.first,
            unittest.equals(arg_reservationGroupId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildReservationGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        reservationGroupId: arg_reservationGroupId,
        $fields: arg_$fields,
      );
      checkReservationGroup(response as api.ReservationGroup);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservationGroups;
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
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservationGroups;
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
          final resp = convert.json.encode(buildReservationGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkReservationGroup(response as api.ReservationGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservationGroups;
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
            buildListReservationGroupsResponse(),
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
      checkListReservationGroupsResponse(
        response as api.ListReservationGroupsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsReservationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations;
      final arg_request = buildReservation();
      final arg_parent = 'foo';
      final arg_reservationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Reservation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReservation(obj);

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
            queryMap['reservationId']!.first,
            unittest.equals(arg_reservationId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildReservation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        reservationId: arg_reservationId,
        $fields: arg_$fields,
      );
      checkReservation(response as api.Reservation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations;
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

    unittest.test('method--failoverReservation', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations;
      final arg_request = buildFailoverReservationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FailoverReservationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFailoverReservationRequest(obj);

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
          final resp = convert.json.encode(buildReservation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.failoverReservation(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkReservation(response as api.Reservation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations;
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
          final resp = convert.json.encode(buildReservation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkReservation(response as api.Reservation);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations;
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
          final resp = convert.json.encode(buildListReservationsResponse());
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
      checkListReservationsResponse(response as api.ListReservationsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations;
      final arg_request = buildReservation();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Reservation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReservation(obj);

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
          final resp = convert.json.encode(buildReservation());
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
      checkReservation(response as api.Reservation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsReservationsAssignmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations.assignments;
      final arg_request = buildAssignment();
      final arg_parent = 'foo';
      final arg_assignmentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Assignment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAssignment(obj);

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
            queryMap['assignmentId']!.first,
            unittest.equals(arg_assignmentId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAssignment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        assignmentId: arg_assignmentId,
        $fields: arg_$fields,
      );
      checkAssignment(response as api.Assignment);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations.assignments;
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

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations.assignments;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations.assignments;
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
          final resp = convert.json.encode(buildListAssignmentsResponse());
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
      checkListAssignmentsResponse(response as api.ListAssignmentsResponse);
    });

    unittest.test('method--move', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations.assignments;
      final arg_request = buildMoveAssignmentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MoveAssignmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMoveAssignmentRequest(obj);

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
          final resp = convert.json.encode(buildAssignment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.move(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkAssignment(response as api.Assignment);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations.assignments;
      final arg_request = buildAssignment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Assignment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAssignment(obj);

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
          final resp = convert.json.encode(buildAssignment());
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
      checkAssignment(response as api.Assignment);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations.assignments;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(
        mock,
      ).projects.locations.reservations.assignments;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });
}
