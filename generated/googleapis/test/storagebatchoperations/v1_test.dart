// Copyright 2025 Google LLC
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

import 'package:googleapis/storagebatchoperations/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.ObjectAccessControl> buildUnnamed0() => [
  buildObjectAccessControl(),
  buildObjectAccessControl(),
];

void checkUnnamed0(core.List<api.ObjectAccessControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectAccessControl(o[0]);
  checkObjectAccessControl(o[1]);
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccessControlsUpdates = 0;
api.AccessControlsUpdates buildAccessControlsUpdates() {
  final o = api.AccessControlsUpdates();
  buildCounterAccessControlsUpdates++;
  if (buildCounterAccessControlsUpdates < 3) {
    o.grants = buildUnnamed0();
    o.removeEntities = buildUnnamed1();
  }
  buildCounterAccessControlsUpdates--;
  return o;
}

void checkAccessControlsUpdates(api.AccessControlsUpdates o) {
  buildCounterAccessControlsUpdates++;
  if (buildCounterAccessControlsUpdates < 3) {
    checkUnnamed0(o.grants!);
    checkUnnamed1(o.removeEntities!);
  }
  buildCounterAccessControlsUpdates--;
}

core.int buildCounterBucket = 0;
api.Bucket buildBucket() {
  final o = api.Bucket();
  buildCounterBucket++;
  if (buildCounterBucket < 3) {
    o.bucket = 'foo';
    o.manifest = buildManifest();
    o.prefixList = buildPrefixList();
  }
  buildCounterBucket--;
  return o;
}

void checkBucket(api.Bucket o) {
  buildCounterBucket++;
  if (buildCounterBucket < 3) {
    unittest.expect(o.bucket!, unittest.equals('foo'));
    checkManifest(o.manifest!);
    checkPrefixList(o.prefixList!);
  }
  buildCounterBucket--;
}

core.List<api.Bucket> buildUnnamed2() => [buildBucket(), buildBucket()];

void checkUnnamed2(core.List<api.Bucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucket(o[0]);
  checkBucket(o[1]);
}

core.int buildCounterBucketList = 0;
api.BucketList buildBucketList() {
  final o = api.BucketList();
  buildCounterBucketList++;
  if (buildCounterBucketList < 3) {
    o.buckets = buildUnnamed2();
  }
  buildCounterBucketList--;
  return o;
}

void checkBucketList(api.BucketList o) {
  buildCounterBucketList++;
  if (buildCounterBucketList < 3) {
    checkUnnamed2(o.buckets!);
  }
  buildCounterBucketList--;
}

core.List<api.ErrorSummary> buildUnnamed3() => [
  buildErrorSummary(),
  buildErrorSummary(),
];

void checkUnnamed3(core.List<api.ErrorSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorSummary(o[0]);
  checkErrorSummary(o[1]);
}

core.int buildCounterBucketOperation = 0;
api.BucketOperation buildBucketOperation() {
  final o = api.BucketOperation();
  buildCounterBucketOperation++;
  if (buildCounterBucketOperation < 3) {
    o.bucketName = 'foo';
    o.completeTime = 'foo';
    o.counters = buildCounters();
    o.createTime = 'foo';
    o.deleteObject = buildDeleteObject();
    o.errorSummaries = buildUnnamed3();
    o.manifest = buildManifest();
    o.name = 'foo';
    o.prefixList = buildPrefixList();
    o.projectSource = buildProjectSource();
    o.putMetadata = buildPutMetadata();
    o.putObjectHold = buildPutObjectHold();
    o.rewriteObject = buildRewriteObject();
    o.setObjectAcls = buildSetObjectAcls();
    o.startTime = 'foo';
    o.state = 'foo';
    o.updateObjectCustomContext = buildUpdateObjectCustomContext();
  }
  buildCounterBucketOperation--;
  return o;
}

void checkBucketOperation(api.BucketOperation o) {
  buildCounterBucketOperation++;
  if (buildCounterBucketOperation < 3) {
    unittest.expect(o.bucketName!, unittest.equals('foo'));
    unittest.expect(o.completeTime!, unittest.equals('foo'));
    checkCounters(o.counters!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDeleteObject(o.deleteObject!);
    checkUnnamed3(o.errorSummaries!);
    checkManifest(o.manifest!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPrefixList(o.prefixList!);
    checkProjectSource(o.projectSource!);
    checkPutMetadata(o.putMetadata!);
    checkPutObjectHold(o.putObjectHold!);
    checkRewriteObject(o.rewriteObject!);
    checkSetObjectAcls(o.setObjectAcls!);
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUpdateObjectCustomContext(o.updateObjectCustomContext!);
  }
  buildCounterBucketOperation--;
}

core.int buildCounterCancelJobRequest = 0;
api.CancelJobRequest buildCancelJobRequest() {
  final o = api.CancelJobRequest();
  buildCounterCancelJobRequest++;
  if (buildCounterCancelJobRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterCancelJobRequest--;
  return o;
}

void checkCancelJobRequest(api.CancelJobRequest o) {
  buildCounterCancelJobRequest++;
  if (buildCounterCancelJobRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterCancelJobRequest--;
}

core.int buildCounterCancelJobResponse = 0;
api.CancelJobResponse buildCancelJobResponse() {
  final o = api.CancelJobResponse();
  buildCounterCancelJobResponse++;
  if (buildCounterCancelJobResponse < 3) {}
  buildCounterCancelJobResponse--;
  return o;
}

void checkCancelJobResponse(api.CancelJobResponse o) {
  buildCounterCancelJobResponse++;
  if (buildCounterCancelJobResponse < 3) {}
  buildCounterCancelJobResponse--;
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

core.int buildCounterCounters = 0;
api.Counters buildCounters() {
  final o = api.Counters();
  buildCounterCounters++;
  if (buildCounterCounters < 3) {
    o.failedObjectCount = 'foo';
    o.objectCustomContextsCreated = 'foo';
    o.objectCustomContextsDeleted = 'foo';
    o.objectCustomContextsUpdated = 'foo';
    o.succeededObjectCount = 'foo';
    o.totalBytesFound = 'foo';
    o.totalBytesTransformed = 'foo';
    o.totalObjectCount = 'foo';
  }
  buildCounterCounters--;
  return o;
}

void checkCounters(api.Counters o) {
  buildCounterCounters++;
  if (buildCounterCounters < 3) {
    unittest.expect(o.failedObjectCount!, unittest.equals('foo'));
    unittest.expect(o.objectCustomContextsCreated!, unittest.equals('foo'));
    unittest.expect(o.objectCustomContextsDeleted!, unittest.equals('foo'));
    unittest.expect(o.objectCustomContextsUpdated!, unittest.equals('foo'));
    unittest.expect(o.succeededObjectCount!, unittest.equals('foo'));
    unittest.expect(o.totalBytesFound!, unittest.equals('foo'));
    unittest.expect(o.totalBytesTransformed!, unittest.equals('foo'));
    unittest.expect(o.totalObjectCount!, unittest.equals('foo'));
  }
  buildCounterCounters--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.ObjectCustomContextPayload> buildUnnamed5() => {
  'x': buildObjectCustomContextPayload(),
  'y': buildObjectCustomContextPayload(),
};

void checkUnnamed5(core.Map<core.String, api.ObjectCustomContextPayload> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectCustomContextPayload(o['x']!);
  checkObjectCustomContextPayload(o['y']!);
}

core.int buildCounterCustomContextUpdates = 0;
api.CustomContextUpdates buildCustomContextUpdates() {
  final o = api.CustomContextUpdates();
  buildCounterCustomContextUpdates++;
  if (buildCounterCustomContextUpdates < 3) {
    o.keysToClear = buildUnnamed4();
    o.updates = buildUnnamed5();
  }
  buildCounterCustomContextUpdates--;
  return o;
}

void checkCustomContextUpdates(api.CustomContextUpdates o) {
  buildCounterCustomContextUpdates++;
  if (buildCounterCustomContextUpdates < 3) {
    checkUnnamed4(o.keysToClear!);
    checkUnnamed5(o.updates!);
  }
  buildCounterCustomContextUpdates--;
}

core.int buildCounterDeleteObject = 0;
api.DeleteObject buildDeleteObject() {
  final o = api.DeleteObject();
  buildCounterDeleteObject++;
  if (buildCounterDeleteObject < 3) {
    o.permanentObjectDeletionEnabled = true;
  }
  buildCounterDeleteObject--;
  return o;
}

void checkDeleteObject(api.DeleteObject o) {
  buildCounterDeleteObject++;
  if (buildCounterDeleteObject < 3) {
    unittest.expect(o.permanentObjectDeletionEnabled!, unittest.isTrue);
  }
  buildCounterDeleteObject--;
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

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterErrorLogEntry = 0;
api.ErrorLogEntry buildErrorLogEntry() {
  final o = api.ErrorLogEntry();
  buildCounterErrorLogEntry++;
  if (buildCounterErrorLogEntry < 3) {
    o.errorDetails = buildUnnamed6();
    o.objectUri = 'foo';
  }
  buildCounterErrorLogEntry--;
  return o;
}

void checkErrorLogEntry(api.ErrorLogEntry o) {
  buildCounterErrorLogEntry++;
  if (buildCounterErrorLogEntry < 3) {
    checkUnnamed6(o.errorDetails!);
    unittest.expect(o.objectUri!, unittest.equals('foo'));
  }
  buildCounterErrorLogEntry--;
}

core.List<api.ErrorLogEntry> buildUnnamed7() => [
  buildErrorLogEntry(),
  buildErrorLogEntry(),
];

void checkUnnamed7(core.List<api.ErrorLogEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorLogEntry(o[0]);
  checkErrorLogEntry(o[1]);
}

core.int buildCounterErrorSummary = 0;
api.ErrorSummary buildErrorSummary() {
  final o = api.ErrorSummary();
  buildCounterErrorSummary++;
  if (buildCounterErrorSummary < 3) {
    o.errorCode = 'foo';
    o.errorCount = 'foo';
    o.errorLogEntries = buildUnnamed7();
  }
  buildCounterErrorSummary--;
  return o;
}

void checkErrorSummary(api.ErrorSummary o) {
  buildCounterErrorSummary++;
  if (buildCounterErrorSummary < 3) {
    unittest.expect(o.errorCode!, unittest.equals('foo'));
    unittest.expect(o.errorCount!, unittest.equals('foo'));
    checkUnnamed7(o.errorLogEntries!);
  }
  buildCounterErrorSummary--;
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

core.List<api.ErrorSummary> buildUnnamed8() => [
  buildErrorSummary(),
  buildErrorSummary(),
];

void checkUnnamed8(core.List<api.ErrorSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorSummary(o[0]);
  checkErrorSummary(o[1]);
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  final o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.bucketList = buildBucketList();
    o.completeTime = 'foo';
    o.counters = buildCounters();
    o.createTime = 'foo';
    o.deleteObject = buildDeleteObject();
    o.description = 'foo';
    o.dryRun = true;
    o.errorSummaries = buildUnnamed8();
    o.isMultiBucketJob = true;
    o.loggingConfig = buildLoggingConfig();
    o.name = 'foo';
    o.projectSource = buildProjectSource();
    o.putMetadata = buildPutMetadata();
    o.putObjectHold = buildPutObjectHold();
    o.rewriteObject = buildRewriteObject();
    o.scheduleTime = 'foo';
    o.setObjectAcls = buildSetObjectAcls();
    o.state = 'foo';
    o.updateObjectCustomContext = buildUpdateObjectCustomContext();
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    checkBucketList(o.bucketList!);
    unittest.expect(o.completeTime!, unittest.equals('foo'));
    checkCounters(o.counters!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDeleteObject(o.deleteObject!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.dryRun!, unittest.isTrue);
    checkUnnamed8(o.errorSummaries!);
    unittest.expect(o.isMultiBucketJob!, unittest.isTrue);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkProjectSource(o.projectSource!);
    checkPutMetadata(o.putMetadata!);
    checkPutObjectHold(o.putObjectHold!);
    checkRewriteObject(o.rewriteObject!);
    unittest.expect(o.scheduleTime!, unittest.equals('foo'));
    checkSetObjectAcls(o.setObjectAcls!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUpdateObjectCustomContext(o.updateObjectCustomContext!);
  }
  buildCounterJob--;
}

core.List<api.BucketOperation> buildUnnamed9() => [
  buildBucketOperation(),
  buildBucketOperation(),
];

void checkUnnamed9(core.List<api.BucketOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketOperation(o[0]);
  checkBucketOperation(o[1]);
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListBucketOperationsResponse = 0;
api.ListBucketOperationsResponse buildListBucketOperationsResponse() {
  final o = api.ListBucketOperationsResponse();
  buildCounterListBucketOperationsResponse++;
  if (buildCounterListBucketOperationsResponse < 3) {
    o.bucketOperations = buildUnnamed9();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed10();
  }
  buildCounterListBucketOperationsResponse--;
  return o;
}

void checkListBucketOperationsResponse(api.ListBucketOperationsResponse o) {
  buildCounterListBucketOperationsResponse++;
  if (buildCounterListBucketOperationsResponse < 3) {
    checkUnnamed9(o.bucketOperations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed10(o.unreachable!);
  }
  buildCounterListBucketOperationsResponse--;
}

core.List<api.Job> buildUnnamed11() => [buildJob(), buildJob()];

void checkUnnamed11(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  final o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed11();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed12();
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed11(o.jobs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed12(o.unreachable!);
  }
  buildCounterListJobsResponse--;
}

core.List<api.Location> buildUnnamed13() => [buildLocation(), buildLocation()];

void checkUnnamed13(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed13();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed13(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed14() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed14(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
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
    o.operations = buildUnnamed14();
    o.unreachable = buildUnnamed15();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed14(o.operations!);
    checkUnnamed15(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
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

core.int buildCounterLoggingConfig = 0;
api.LoggingConfig buildLoggingConfig() {
  final o = api.LoggingConfig();
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    o.logActionStates = buildUnnamed18();
    o.logActions = buildUnnamed19();
  }
  buildCounterLoggingConfig--;
  return o;
}

void checkLoggingConfig(api.LoggingConfig o) {
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    checkUnnamed18(o.logActionStates!);
    checkUnnamed19(o.logActions!);
  }
  buildCounterLoggingConfig--;
}

core.int buildCounterManifest = 0;
api.Manifest buildManifest() {
  final o = api.Manifest();
  buildCounterManifest++;
  if (buildCounterManifest < 3) {
    o.manifestLocation = 'foo';
  }
  buildCounterManifest--;
  return o;
}

void checkManifest(api.Manifest o) {
  buildCounterManifest++;
  if (buildCounterManifest < 3) {
    unittest.expect(o.manifestLocation!, unittest.equals('foo'));
  }
  buildCounterManifest--;
}

core.int buildCounterObjectAccessControl = 0;
api.ObjectAccessControl buildObjectAccessControl() {
  final o = api.ObjectAccessControl();
  buildCounterObjectAccessControl++;
  if (buildCounterObjectAccessControl < 3) {
    o.entity = 'foo';
    o.role = 'foo';
  }
  buildCounterObjectAccessControl--;
  return o;
}

void checkObjectAccessControl(api.ObjectAccessControl o) {
  buildCounterObjectAccessControl++;
  if (buildCounterObjectAccessControl < 3) {
    unittest.expect(o.entity!, unittest.equals('foo'));
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterObjectAccessControl--;
}

core.int buildCounterObjectCustomContextPayload = 0;
api.ObjectCustomContextPayload buildObjectCustomContextPayload() {
  final o = api.ObjectCustomContextPayload();
  buildCounterObjectCustomContextPayload++;
  if (buildCounterObjectCustomContextPayload < 3) {
    o.value = 'foo';
  }
  buildCounterObjectCustomContextPayload--;
  return o;
}

void checkObjectCustomContextPayload(api.ObjectCustomContextPayload o) {
  buildCounterObjectCustomContextPayload++;
  if (buildCounterObjectCustomContextPayload < 3) {
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterObjectCustomContextPayload--;
}

core.int buildCounterObjectRetention = 0;
api.ObjectRetention buildObjectRetention() {
  final o = api.ObjectRetention();
  buildCounterObjectRetention++;
  if (buildCounterObjectRetention < 3) {
    o.retainUntilTime = 'foo';
    o.retentionMode = 'foo';
  }
  buildCounterObjectRetention--;
  return o;
}

void checkObjectRetention(api.ObjectRetention o) {
  buildCounterObjectRetention++;
  if (buildCounterObjectRetention < 3) {
    unittest.expect(o.retainUntilTime!, unittest.equals('foo'));
    unittest.expect(o.retentionMode!, unittest.equals('foo'));
  }
  buildCounterObjectRetention--;
}

core.Map<core.String, core.Object?> buildUnnamed20() => {
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

void checkUnnamed20(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed20();
    o.name = 'foo';
    o.response = buildUnnamed21();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed20(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed21(o.response!);
  }
  buildCounterOperation--;
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPrefixList = 0;
api.PrefixList buildPrefixList() {
  final o = api.PrefixList();
  buildCounterPrefixList++;
  if (buildCounterPrefixList < 3) {
    o.includedObjectPrefixes = buildUnnamed22();
  }
  buildCounterPrefixList--;
  return o;
}

void checkPrefixList(api.PrefixList o) {
  buildCounterPrefixList++;
  if (buildCounterPrefixList < 3) {
    checkUnnamed22(o.includedObjectPrefixes!);
  }
  buildCounterPrefixList--;
}

core.int buildCounterProjectSource = 0;
api.ProjectSource buildProjectSource() {
  final o = api.ProjectSource();
  buildCounterProjectSource++;
  if (buildCounterProjectSource < 3) {
    o.bucketFilters = buildExpr();
    o.dryRunJobId = 'foo';
    o.insightsDatasetConfig = 'foo';
    o.objectFilters = buildExpr();
    o.project = 'foo';
    o.snapshotTime = 'foo';
    o.targetLocations = buildTargetLocations();
  }
  buildCounterProjectSource--;
  return o;
}

void checkProjectSource(api.ProjectSource o) {
  buildCounterProjectSource++;
  if (buildCounterProjectSource < 3) {
    checkExpr(o.bucketFilters!);
    unittest.expect(o.dryRunJobId!, unittest.equals('foo'));
    unittest.expect(o.insightsDatasetConfig!, unittest.equals('foo'));
    checkExpr(o.objectFilters!);
    unittest.expect(o.project!, unittest.equals('foo'));
    unittest.expect(o.snapshotTime!, unittest.equals('foo'));
    checkTargetLocations(o.targetLocations!);
  }
  buildCounterProjectSource--;
}

core.Map<core.String, core.String> buildUnnamed23() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed23(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterPutMetadata = 0;
api.PutMetadata buildPutMetadata() {
  final o = api.PutMetadata();
  buildCounterPutMetadata++;
  if (buildCounterPutMetadata < 3) {
    o.cacheControl = 'foo';
    o.contentDisposition = 'foo';
    o.contentEncoding = 'foo';
    o.contentLanguage = 'foo';
    o.contentType = 'foo';
    o.customMetadata = buildUnnamed23();
    o.customTime = 'foo';
    o.objectRetention = buildObjectRetention();
  }
  buildCounterPutMetadata--;
  return o;
}

void checkPutMetadata(api.PutMetadata o) {
  buildCounterPutMetadata++;
  if (buildCounterPutMetadata < 3) {
    unittest.expect(o.cacheControl!, unittest.equals('foo'));
    unittest.expect(o.contentDisposition!, unittest.equals('foo'));
    unittest.expect(o.contentEncoding!, unittest.equals('foo'));
    unittest.expect(o.contentLanguage!, unittest.equals('foo'));
    unittest.expect(o.contentType!, unittest.equals('foo'));
    checkUnnamed23(o.customMetadata!);
    unittest.expect(o.customTime!, unittest.equals('foo'));
    checkObjectRetention(o.objectRetention!);
  }
  buildCounterPutMetadata--;
}

core.int buildCounterPutObjectHold = 0;
api.PutObjectHold buildPutObjectHold() {
  final o = api.PutObjectHold();
  buildCounterPutObjectHold++;
  if (buildCounterPutObjectHold < 3) {
    o.eventBasedHold = 'foo';
    o.temporaryHold = 'foo';
  }
  buildCounterPutObjectHold--;
  return o;
}

void checkPutObjectHold(api.PutObjectHold o) {
  buildCounterPutObjectHold++;
  if (buildCounterPutObjectHold < 3) {
    unittest.expect(o.eventBasedHold!, unittest.equals('foo'));
    unittest.expect(o.temporaryHold!, unittest.equals('foo'));
  }
  buildCounterPutObjectHold--;
}

core.int buildCounterRewriteObject = 0;
api.RewriteObject buildRewriteObject() {
  final o = api.RewriteObject();
  buildCounterRewriteObject++;
  if (buildCounterRewriteObject < 3) {
    o.kmsKey = 'foo';
    o.storageClass = 'foo';
  }
  buildCounterRewriteObject--;
  return o;
}

void checkRewriteObject(api.RewriteObject o) {
  buildCounterRewriteObject++;
  if (buildCounterRewriteObject < 3) {
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
    unittest.expect(o.storageClass!, unittest.equals('foo'));
  }
  buildCounterRewriteObject--;
}

core.int buildCounterSetObjectAcls = 0;
api.SetObjectAcls buildSetObjectAcls() {
  final o = api.SetObjectAcls();
  buildCounterSetObjectAcls++;
  if (buildCounterSetObjectAcls < 3) {
    o.accessControlsUpdates = buildAccessControlsUpdates();
  }
  buildCounterSetObjectAcls--;
  return o;
}

void checkSetObjectAcls(api.SetObjectAcls o) {
  buildCounterSetObjectAcls++;
  if (buildCounterSetObjectAcls < 3) {
    checkAccessControlsUpdates(o.accessControlsUpdates!);
  }
  buildCounterSetObjectAcls--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed25() => [
  buildUnnamed24(),
  buildUnnamed24(),
];

void checkUnnamed25(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed24(o[0]);
  checkUnnamed24(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed25();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed25(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTargetLocations = 0;
api.TargetLocations buildTargetLocations() {
  final o = api.TargetLocations();
  buildCounterTargetLocations++;
  if (buildCounterTargetLocations < 3) {
    o.locations = buildUnnamed26();
    o.snapshotTime = 'foo';
  }
  buildCounterTargetLocations--;
  return o;
}

void checkTargetLocations(api.TargetLocations o) {
  buildCounterTargetLocations++;
  if (buildCounterTargetLocations < 3) {
    checkUnnamed26(o.locations!);
    unittest.expect(o.snapshotTime!, unittest.equals('foo'));
  }
  buildCounterTargetLocations--;
}

core.int buildCounterUpdateObjectCustomContext = 0;
api.UpdateObjectCustomContext buildUpdateObjectCustomContext() {
  final o = api.UpdateObjectCustomContext();
  buildCounterUpdateObjectCustomContext++;
  if (buildCounterUpdateObjectCustomContext < 3) {
    o.clearAll = true;
    o.customContextUpdates = buildCustomContextUpdates();
  }
  buildCounterUpdateObjectCustomContext--;
  return o;
}

void checkUpdateObjectCustomContext(api.UpdateObjectCustomContext o) {
  buildCounterUpdateObjectCustomContext++;
  if (buildCounterUpdateObjectCustomContext < 3) {
    unittest.expect(o.clearAll!, unittest.isTrue);
    checkCustomContextUpdates(o.customContextUpdates!);
  }
  buildCounterUpdateObjectCustomContext--;
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AccessControlsUpdates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessControlsUpdates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessControlsUpdates.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessControlsUpdates(od);
    });
  });

  unittest.group('obj-schema-Bucket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Bucket.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBucket(od);
    });
  });

  unittest.group('obj-schema-BucketList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBucketList(od);
    });
  });

  unittest.group('obj-schema-BucketOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBucketOperation(od);
    });
  });

  unittest.group('obj-schema-CancelJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelJobRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelJobRequest(od);
    });
  });

  unittest.group('obj-schema-CancelJobResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelJobResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelJobResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelJobResponse(od);
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

  unittest.group('obj-schema-Counters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCounters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Counters.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCounters(od);
    });
  });

  unittest.group('obj-schema-CustomContextUpdates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomContextUpdates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomContextUpdates.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomContextUpdates(od);
    });
  });

  unittest.group('obj-schema-DeleteObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteObject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteObject(od);
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

  unittest.group('obj-schema-ErrorLogEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorLogEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ErrorLogEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkErrorLogEntry(od);
    });
  });

  unittest.group('obj-schema-ErrorSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ErrorSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkErrorSummary(od);
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

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Job.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJob(od);
    });
  });

  unittest.group('obj-schema-ListBucketOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBucketOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBucketOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListBucketOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListJobsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListJobsResponse(od);
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

  unittest.group('obj-schema-LoggingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoggingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoggingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoggingConfig(od);
    });
  });

  unittest.group('obj-schema-Manifest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManifest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Manifest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManifest(od);
    });
  });

  unittest.group('obj-schema-ObjectAccessControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectAccessControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectAccessControl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkObjectAccessControl(od);
    });
  });

  unittest.group('obj-schema-ObjectCustomContextPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectCustomContextPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectCustomContextPayload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkObjectCustomContextPayload(od);
    });
  });

  unittest.group('obj-schema-ObjectRetention', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectRetention();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectRetention.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkObjectRetention(od);
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

  unittest.group('obj-schema-PrefixList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrefixList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrefixList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrefixList(od);
    });
  });

  unittest.group('obj-schema-ProjectSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjectSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProjectSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProjectSource(od);
    });
  });

  unittest.group('obj-schema-PutMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPutMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PutMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPutMetadata(od);
    });
  });

  unittest.group('obj-schema-PutObjectHold', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPutObjectHold();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PutObjectHold.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPutObjectHold(od);
    });
  });

  unittest.group('obj-schema-RewriteObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRewriteObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RewriteObject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRewriteObject(od);
    });
  });

  unittest.group('obj-schema-SetObjectAcls', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetObjectAcls();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetObjectAcls.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetObjectAcls(od);
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

  unittest.group('obj-schema-TargetLocations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetLocations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetLocations.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTargetLocations(od);
    });
  });

  unittest.group('obj-schema-UpdateObjectCustomContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateObjectCustomContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateObjectCustomContext.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateObjectCustomContext(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StorageBatchOperationsApi(mock).projects.locations;
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
      final res = api.StorageBatchOperationsApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed27();
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

  unittest.group('resource-ProjectsLocationsJobsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.StorageBatchOperationsApi(mock).projects.locations.jobs;
      final arg_request = buildCancelJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelJobRequest(obj);

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
          final resp = convert.json.encode(buildCancelJobResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkCancelJobResponse(response as api.CancelJobResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.StorageBatchOperationsApi(mock).projects.locations.jobs;
      final arg_request = buildJob();
      final arg_parent = 'foo';
      final arg_jobId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Job.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkJob(obj);

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
          unittest.expect(queryMap['jobId']!.first, unittest.equals(arg_jobId));
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
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
      final response = await res.create(
        arg_request,
        arg_parent,
        jobId: arg_jobId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.StorageBatchOperationsApi(mock).projects.locations.jobs;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StorageBatchOperationsApi(mock).projects.locations.jobs;
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
          final resp = convert.json.encode(buildJob());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StorageBatchOperationsApi(mock).projects.locations.jobs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
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
          final resp = convert.json.encode(buildListJobsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListJobsResponse(response as api.ListJobsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsJobsBucketOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StorageBatchOperationsApi(
        mock,
      ).projects.locations.jobs.bucketOperations;
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
          final resp = convert.json.encode(buildBucketOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBucketOperation(response as api.BucketOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StorageBatchOperationsApi(
        mock,
      ).projects.locations.jobs.bucketOperations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
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
          final resp = convert.json.encode(buildListBucketOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListBucketOperationsResponse(
        response as api.ListBucketOperationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.StorageBatchOperationsApi(
        mock,
      ).projects.locations.operations;
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
      final res = api.StorageBatchOperationsApi(
        mock,
      ).projects.locations.operations;
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
      final res = api.StorageBatchOperationsApi(
        mock,
      ).projects.locations.operations;
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
      final res = api.StorageBatchOperationsApi(
        mock,
      ).projects.locations.operations;
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
}
