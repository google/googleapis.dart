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

core.List<api.Bucket> buildUnnamed0() => [buildBucket(), buildBucket()];

void checkUnnamed0(core.List<api.Bucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucket(o[0]);
  checkBucket(o[1]);
}

core.int buildCounterBucketList = 0;
api.BucketList buildBucketList() {
  final o = api.BucketList();
  buildCounterBucketList++;
  if (buildCounterBucketList < 3) {
    o.buckets = buildUnnamed0();
  }
  buildCounterBucketList--;
  return o;
}

void checkBucketList(api.BucketList o) {
  buildCounterBucketList++;
  if (buildCounterBucketList < 3) {
    checkUnnamed0(o.buckets!);
  }
  buildCounterBucketList--;
}

core.List<api.ErrorSummary> buildUnnamed1() => [
  buildErrorSummary(),
  buildErrorSummary(),
];

void checkUnnamed1(core.List<api.ErrorSummary> o) {
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
    o.errorSummaries = buildUnnamed1();
    o.manifest = buildManifest();
    o.name = 'foo';
    o.prefixList = buildPrefixList();
    o.putMetadata = buildPutMetadata();
    o.putObjectHold = buildPutObjectHold();
    o.rewriteObject = buildRewriteObject();
    o.startTime = 'foo';
    o.state = 'foo';
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
    checkUnnamed1(o.errorSummaries!);
    checkManifest(o.manifest!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPrefixList(o.prefixList!);
    checkPutMetadata(o.putMetadata!);
    checkPutObjectHold(o.putObjectHold!);
    checkRewriteObject(o.rewriteObject!);
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
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
    o.succeededObjectCount = 'foo';
    o.totalBytesFound = 'foo';
    o.totalObjectCount = 'foo';
  }
  buildCounterCounters--;
  return o;
}

void checkCounters(api.Counters o) {
  buildCounterCounters++;
  if (buildCounterCounters < 3) {
    unittest.expect(o.failedObjectCount!, unittest.equals('foo'));
    unittest.expect(o.succeededObjectCount!, unittest.equals('foo'));
    unittest.expect(o.totalBytesFound!, unittest.equals('foo'));
    unittest.expect(o.totalObjectCount!, unittest.equals('foo'));
  }
  buildCounterCounters--;
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

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterErrorLogEntry = 0;
api.ErrorLogEntry buildErrorLogEntry() {
  final o = api.ErrorLogEntry();
  buildCounterErrorLogEntry++;
  if (buildCounterErrorLogEntry < 3) {
    o.errorDetails = buildUnnamed2();
    o.objectUri = 'foo';
  }
  buildCounterErrorLogEntry--;
  return o;
}

void checkErrorLogEntry(api.ErrorLogEntry o) {
  buildCounterErrorLogEntry++;
  if (buildCounterErrorLogEntry < 3) {
    checkUnnamed2(o.errorDetails!);
    unittest.expect(o.objectUri!, unittest.equals('foo'));
  }
  buildCounterErrorLogEntry--;
}

core.List<api.ErrorLogEntry> buildUnnamed3() => [
  buildErrorLogEntry(),
  buildErrorLogEntry(),
];

void checkUnnamed3(core.List<api.ErrorLogEntry> o) {
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
    o.errorLogEntries = buildUnnamed3();
  }
  buildCounterErrorSummary--;
  return o;
}

void checkErrorSummary(api.ErrorSummary o) {
  buildCounterErrorSummary++;
  if (buildCounterErrorSummary < 3) {
    unittest.expect(o.errorCode!, unittest.equals('foo'));
    unittest.expect(o.errorCount!, unittest.equals('foo'));
    checkUnnamed3(o.errorLogEntries!);
  }
  buildCounterErrorSummary--;
}

core.List<api.ErrorSummary> buildUnnamed4() => [
  buildErrorSummary(),
  buildErrorSummary(),
];

void checkUnnamed4(core.List<api.ErrorSummary> o) {
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
    o.errorSummaries = buildUnnamed4();
    o.loggingConfig = buildLoggingConfig();
    o.name = 'foo';
    o.putMetadata = buildPutMetadata();
    o.putObjectHold = buildPutObjectHold();
    o.rewriteObject = buildRewriteObject();
    o.scheduleTime = 'foo';
    o.state = 'foo';
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
    checkUnnamed4(o.errorSummaries!);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPutMetadata(o.putMetadata!);
    checkPutObjectHold(o.putObjectHold!);
    checkRewriteObject(o.rewriteObject!);
    unittest.expect(o.scheduleTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterJob--;
}

core.List<api.BucketOperation> buildUnnamed5() => [
  buildBucketOperation(),
  buildBucketOperation(),
];

void checkUnnamed5(core.List<api.BucketOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketOperation(o[0]);
  checkBucketOperation(o[1]);
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListBucketOperationsResponse = 0;
api.ListBucketOperationsResponse buildListBucketOperationsResponse() {
  final o = api.ListBucketOperationsResponse();
  buildCounterListBucketOperationsResponse++;
  if (buildCounterListBucketOperationsResponse < 3) {
    o.bucketOperations = buildUnnamed5();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed6();
  }
  buildCounterListBucketOperationsResponse--;
  return o;
}

void checkListBucketOperationsResponse(api.ListBucketOperationsResponse o) {
  buildCounterListBucketOperationsResponse++;
  if (buildCounterListBucketOperationsResponse < 3) {
    checkUnnamed5(o.bucketOperations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed6(o.unreachable!);
  }
  buildCounterListBucketOperationsResponse--;
}

core.List<api.Job> buildUnnamed7() => [buildJob(), buildJob()];

void checkUnnamed7(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  final o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed7();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed8();
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed7(o.jobs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed8(o.unreachable!);
  }
  buildCounterListJobsResponse--;
}

core.List<api.Location> buildUnnamed9() => [buildLocation(), buildLocation()];

void checkUnnamed9(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed9(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed10() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed10(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
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
    o.operations = buildUnnamed10();
    o.unreachable = buildUnnamed11();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed10(o.operations!);
    checkUnnamed11(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed12() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed12(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed13() => {
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

void checkUnnamed13(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed12();
    o.locationId = 'foo';
    o.metadata = buildUnnamed13();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed12(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed13(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
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

core.int buildCounterLoggingConfig = 0;
api.LoggingConfig buildLoggingConfig() {
  final o = api.LoggingConfig();
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    o.logActionStates = buildUnnamed14();
    o.logActions = buildUnnamed15();
  }
  buildCounterLoggingConfig--;
  return o;
}

void checkLoggingConfig(api.LoggingConfig o) {
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    checkUnnamed14(o.logActionStates!);
    checkUnnamed15(o.logActions!);
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

core.Map<core.String, core.Object?> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed16();
    o.name = 'foo';
    o.response = buildUnnamed17();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed16(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed17(o.response!);
  }
  buildCounterOperation--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPrefixList = 0;
api.PrefixList buildPrefixList() {
  final o = api.PrefixList();
  buildCounterPrefixList++;
  if (buildCounterPrefixList < 3) {
    o.includedObjectPrefixes = buildUnnamed18();
  }
  buildCounterPrefixList--;
  return o;
}

void checkPrefixList(api.PrefixList o) {
  buildCounterPrefixList++;
  if (buildCounterPrefixList < 3) {
    checkUnnamed18(o.includedObjectPrefixes!);
  }
  buildCounterPrefixList--;
}

core.Map<core.String, core.String> buildUnnamed19() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed19(core.Map<core.String, core.String> o) {
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
    o.customMetadata = buildUnnamed19();
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
    checkUnnamed19(o.customMetadata!);
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
  }
  buildCounterRewriteObject--;
  return o;
}

void checkRewriteObject(api.RewriteObject o) {
  buildCounterRewriteObject++;
  if (buildCounterRewriteObject < 3) {
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
  }
  buildCounterRewriteObject--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed21() => [
  buildUnnamed20(),
  buildUnnamed20(),
];

void checkUnnamed21(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed20(o[0]);
  checkUnnamed20(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed21();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed21(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
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
      final arg_extraLocationTypes = buildUnnamed22();
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
      final res =
          api.StorageBatchOperationsApi(
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
      final res =
          api.StorageBatchOperationsApi(
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
      final res =
          api.StorageBatchOperationsApi(mock).projects.locations.operations;
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
      final res =
          api.StorageBatchOperationsApi(mock).projects.locations.operations;
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
      final res =
          api.StorageBatchOperationsApi(mock).projects.locations.operations;
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
      final res =
          api.StorageBatchOperationsApi(mock).projects.locations.operations;
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
