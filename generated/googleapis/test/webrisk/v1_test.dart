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

import 'package:googleapis/webrisk/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudWebriskV1ComputeThreatListDiffResponse = 0;
api.GoogleCloudWebriskV1ComputeThreatListDiffResponse
    buildGoogleCloudWebriskV1ComputeThreatListDiffResponse() {
  final o = api.GoogleCloudWebriskV1ComputeThreatListDiffResponse();
  buildCounterGoogleCloudWebriskV1ComputeThreatListDiffResponse++;
  if (buildCounterGoogleCloudWebriskV1ComputeThreatListDiffResponse < 3) {
    o.additions = buildGoogleCloudWebriskV1ThreatEntryAdditions();
    o.checksum =
        buildGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum();
    o.newVersionToken = 'foo';
    o.recommendedNextDiff = 'foo';
    o.removals = buildGoogleCloudWebriskV1ThreatEntryRemovals();
    o.responseType = 'foo';
  }
  buildCounterGoogleCloudWebriskV1ComputeThreatListDiffResponse--;
  return o;
}

void checkGoogleCloudWebriskV1ComputeThreatListDiffResponse(
    api.GoogleCloudWebriskV1ComputeThreatListDiffResponse o) {
  buildCounterGoogleCloudWebriskV1ComputeThreatListDiffResponse++;
  if (buildCounterGoogleCloudWebriskV1ComputeThreatListDiffResponse < 3) {
    checkGoogleCloudWebriskV1ThreatEntryAdditions(o.additions!);
    checkGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum(o.checksum!);
    unittest.expect(
      o.newVersionToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recommendedNextDiff!,
      unittest.equals('foo'),
    );
    checkGoogleCloudWebriskV1ThreatEntryRemovals(o.removals!);
    unittest.expect(
      o.responseType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudWebriskV1ComputeThreatListDiffResponse--;
}

core.int buildCounterGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum =
    0;
api.GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum
    buildGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum() {
  final o = api.GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum();
  buildCounterGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum++;
  if (buildCounterGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum <
      3) {
    o.sha256 = 'foo';
  }
  buildCounterGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum--;
  return o;
}

void checkGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum(
    api.GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum o) {
  buildCounterGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum++;
  if (buildCounterGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum <
      3) {
    unittest.expect(
      o.sha256!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum--;
}

core.int buildCounterGoogleCloudWebriskV1RawHashes = 0;
api.GoogleCloudWebriskV1RawHashes buildGoogleCloudWebriskV1RawHashes() {
  final o = api.GoogleCloudWebriskV1RawHashes();
  buildCounterGoogleCloudWebriskV1RawHashes++;
  if (buildCounterGoogleCloudWebriskV1RawHashes < 3) {
    o.prefixSize = 42;
    o.rawHashes = 'foo';
  }
  buildCounterGoogleCloudWebriskV1RawHashes--;
  return o;
}

void checkGoogleCloudWebriskV1RawHashes(api.GoogleCloudWebriskV1RawHashes o) {
  buildCounterGoogleCloudWebriskV1RawHashes++;
  if (buildCounterGoogleCloudWebriskV1RawHashes < 3) {
    unittest.expect(
      o.prefixSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rawHashes!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudWebriskV1RawHashes--;
}

core.List<core.int> buildUnnamed0() => [
      42,
      42,
    ];

void checkUnnamed0(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterGoogleCloudWebriskV1RawIndices = 0;
api.GoogleCloudWebriskV1RawIndices buildGoogleCloudWebriskV1RawIndices() {
  final o = api.GoogleCloudWebriskV1RawIndices();
  buildCounterGoogleCloudWebriskV1RawIndices++;
  if (buildCounterGoogleCloudWebriskV1RawIndices < 3) {
    o.indices = buildUnnamed0();
  }
  buildCounterGoogleCloudWebriskV1RawIndices--;
  return o;
}

void checkGoogleCloudWebriskV1RawIndices(api.GoogleCloudWebriskV1RawIndices o) {
  buildCounterGoogleCloudWebriskV1RawIndices++;
  if (buildCounterGoogleCloudWebriskV1RawIndices < 3) {
    checkUnnamed0(o.indices!);
  }
  buildCounterGoogleCloudWebriskV1RawIndices--;
}

core.int buildCounterGoogleCloudWebriskV1RiceDeltaEncoding = 0;
api.GoogleCloudWebriskV1RiceDeltaEncoding
    buildGoogleCloudWebriskV1RiceDeltaEncoding() {
  final o = api.GoogleCloudWebriskV1RiceDeltaEncoding();
  buildCounterGoogleCloudWebriskV1RiceDeltaEncoding++;
  if (buildCounterGoogleCloudWebriskV1RiceDeltaEncoding < 3) {
    o.encodedData = 'foo';
    o.entryCount = 42;
    o.firstValue = 'foo';
    o.riceParameter = 42;
  }
  buildCounterGoogleCloudWebriskV1RiceDeltaEncoding--;
  return o;
}

void checkGoogleCloudWebriskV1RiceDeltaEncoding(
    api.GoogleCloudWebriskV1RiceDeltaEncoding o) {
  buildCounterGoogleCloudWebriskV1RiceDeltaEncoding++;
  if (buildCounterGoogleCloudWebriskV1RiceDeltaEncoding < 3) {
    unittest.expect(
      o.encodedData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entryCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.firstValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.riceParameter!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudWebriskV1RiceDeltaEncoding--;
}

core.List<api.GoogleCloudWebriskV1SearchHashesResponseThreatHash>
    buildUnnamed1() => [
          buildGoogleCloudWebriskV1SearchHashesResponseThreatHash(),
          buildGoogleCloudWebriskV1SearchHashesResponseThreatHash(),
        ];

void checkUnnamed1(
    core.List<api.GoogleCloudWebriskV1SearchHashesResponseThreatHash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudWebriskV1SearchHashesResponseThreatHash(o[0]);
  checkGoogleCloudWebriskV1SearchHashesResponseThreatHash(o[1]);
}

core.int buildCounterGoogleCloudWebriskV1SearchHashesResponse = 0;
api.GoogleCloudWebriskV1SearchHashesResponse
    buildGoogleCloudWebriskV1SearchHashesResponse() {
  final o = api.GoogleCloudWebriskV1SearchHashesResponse();
  buildCounterGoogleCloudWebriskV1SearchHashesResponse++;
  if (buildCounterGoogleCloudWebriskV1SearchHashesResponse < 3) {
    o.negativeExpireTime = 'foo';
    o.threats = buildUnnamed1();
  }
  buildCounterGoogleCloudWebriskV1SearchHashesResponse--;
  return o;
}

void checkGoogleCloudWebriskV1SearchHashesResponse(
    api.GoogleCloudWebriskV1SearchHashesResponse o) {
  buildCounterGoogleCloudWebriskV1SearchHashesResponse++;
  if (buildCounterGoogleCloudWebriskV1SearchHashesResponse < 3) {
    unittest.expect(
      o.negativeExpireTime!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.threats!);
  }
  buildCounterGoogleCloudWebriskV1SearchHashesResponse--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudWebriskV1SearchHashesResponseThreatHash = 0;
api.GoogleCloudWebriskV1SearchHashesResponseThreatHash
    buildGoogleCloudWebriskV1SearchHashesResponseThreatHash() {
  final o = api.GoogleCloudWebriskV1SearchHashesResponseThreatHash();
  buildCounterGoogleCloudWebriskV1SearchHashesResponseThreatHash++;
  if (buildCounterGoogleCloudWebriskV1SearchHashesResponseThreatHash < 3) {
    o.expireTime = 'foo';
    o.hash = 'foo';
    o.threatTypes = buildUnnamed2();
  }
  buildCounterGoogleCloudWebriskV1SearchHashesResponseThreatHash--;
  return o;
}

void checkGoogleCloudWebriskV1SearchHashesResponseThreatHash(
    api.GoogleCloudWebriskV1SearchHashesResponseThreatHash o) {
  buildCounterGoogleCloudWebriskV1SearchHashesResponseThreatHash++;
  if (buildCounterGoogleCloudWebriskV1SearchHashesResponseThreatHash < 3) {
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hash!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.threatTypes!);
  }
  buildCounterGoogleCloudWebriskV1SearchHashesResponseThreatHash--;
}

core.int buildCounterGoogleCloudWebriskV1SearchUrisResponse = 0;
api.GoogleCloudWebriskV1SearchUrisResponse
    buildGoogleCloudWebriskV1SearchUrisResponse() {
  final o = api.GoogleCloudWebriskV1SearchUrisResponse();
  buildCounterGoogleCloudWebriskV1SearchUrisResponse++;
  if (buildCounterGoogleCloudWebriskV1SearchUrisResponse < 3) {
    o.threat = buildGoogleCloudWebriskV1SearchUrisResponseThreatUri();
  }
  buildCounterGoogleCloudWebriskV1SearchUrisResponse--;
  return o;
}

void checkGoogleCloudWebriskV1SearchUrisResponse(
    api.GoogleCloudWebriskV1SearchUrisResponse o) {
  buildCounterGoogleCloudWebriskV1SearchUrisResponse++;
  if (buildCounterGoogleCloudWebriskV1SearchUrisResponse < 3) {
    checkGoogleCloudWebriskV1SearchUrisResponseThreatUri(o.threat!);
  }
  buildCounterGoogleCloudWebriskV1SearchUrisResponse--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudWebriskV1SearchUrisResponseThreatUri = 0;
api.GoogleCloudWebriskV1SearchUrisResponseThreatUri
    buildGoogleCloudWebriskV1SearchUrisResponseThreatUri() {
  final o = api.GoogleCloudWebriskV1SearchUrisResponseThreatUri();
  buildCounterGoogleCloudWebriskV1SearchUrisResponseThreatUri++;
  if (buildCounterGoogleCloudWebriskV1SearchUrisResponseThreatUri < 3) {
    o.expireTime = 'foo';
    o.threatTypes = buildUnnamed3();
  }
  buildCounterGoogleCloudWebriskV1SearchUrisResponseThreatUri--;
  return o;
}

void checkGoogleCloudWebriskV1SearchUrisResponseThreatUri(
    api.GoogleCloudWebriskV1SearchUrisResponseThreatUri o) {
  buildCounterGoogleCloudWebriskV1SearchUrisResponseThreatUri++;
  if (buildCounterGoogleCloudWebriskV1SearchUrisResponseThreatUri < 3) {
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.threatTypes!);
  }
  buildCounterGoogleCloudWebriskV1SearchUrisResponseThreatUri--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudWebriskV1Submission = 0;
api.GoogleCloudWebriskV1Submission buildGoogleCloudWebriskV1Submission() {
  final o = api.GoogleCloudWebriskV1Submission();
  buildCounterGoogleCloudWebriskV1Submission++;
  if (buildCounterGoogleCloudWebriskV1Submission < 3) {
    o.threatTypes = buildUnnamed4();
    o.uri = 'foo';
  }
  buildCounterGoogleCloudWebriskV1Submission--;
  return o;
}

void checkGoogleCloudWebriskV1Submission(api.GoogleCloudWebriskV1Submission o) {
  buildCounterGoogleCloudWebriskV1Submission++;
  if (buildCounterGoogleCloudWebriskV1Submission < 3) {
    checkUnnamed4(o.threatTypes!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudWebriskV1Submission--;
}

core.int buildCounterGoogleCloudWebriskV1SubmitUriMetadata = 0;
api.GoogleCloudWebriskV1SubmitUriMetadata
    buildGoogleCloudWebriskV1SubmitUriMetadata() {
  final o = api.GoogleCloudWebriskV1SubmitUriMetadata();
  buildCounterGoogleCloudWebriskV1SubmitUriMetadata++;
  if (buildCounterGoogleCloudWebriskV1SubmitUriMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudWebriskV1SubmitUriMetadata--;
  return o;
}

void checkGoogleCloudWebriskV1SubmitUriMetadata(
    api.GoogleCloudWebriskV1SubmitUriMetadata o) {
  buildCounterGoogleCloudWebriskV1SubmitUriMetadata++;
  if (buildCounterGoogleCloudWebriskV1SubmitUriMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudWebriskV1SubmitUriMetadata--;
}

core.int buildCounterGoogleCloudWebriskV1SubmitUriRequest = 0;
api.GoogleCloudWebriskV1SubmitUriRequest
    buildGoogleCloudWebriskV1SubmitUriRequest() {
  final o = api.GoogleCloudWebriskV1SubmitUriRequest();
  buildCounterGoogleCloudWebriskV1SubmitUriRequest++;
  if (buildCounterGoogleCloudWebriskV1SubmitUriRequest < 3) {
    o.submission = buildGoogleCloudWebriskV1Submission();
  }
  buildCounterGoogleCloudWebriskV1SubmitUriRequest--;
  return o;
}

void checkGoogleCloudWebriskV1SubmitUriRequest(
    api.GoogleCloudWebriskV1SubmitUriRequest o) {
  buildCounterGoogleCloudWebriskV1SubmitUriRequest++;
  if (buildCounterGoogleCloudWebriskV1SubmitUriRequest < 3) {
    checkGoogleCloudWebriskV1Submission(o.submission!);
  }
  buildCounterGoogleCloudWebriskV1SubmitUriRequest--;
}

core.List<api.GoogleCloudWebriskV1RawHashes> buildUnnamed5() => [
      buildGoogleCloudWebriskV1RawHashes(),
      buildGoogleCloudWebriskV1RawHashes(),
    ];

void checkUnnamed5(core.List<api.GoogleCloudWebriskV1RawHashes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudWebriskV1RawHashes(o[0]);
  checkGoogleCloudWebriskV1RawHashes(o[1]);
}

core.int buildCounterGoogleCloudWebriskV1ThreatEntryAdditions = 0;
api.GoogleCloudWebriskV1ThreatEntryAdditions
    buildGoogleCloudWebriskV1ThreatEntryAdditions() {
  final o = api.GoogleCloudWebriskV1ThreatEntryAdditions();
  buildCounterGoogleCloudWebriskV1ThreatEntryAdditions++;
  if (buildCounterGoogleCloudWebriskV1ThreatEntryAdditions < 3) {
    o.rawHashes = buildUnnamed5();
    o.riceHashes = buildGoogleCloudWebriskV1RiceDeltaEncoding();
  }
  buildCounterGoogleCloudWebriskV1ThreatEntryAdditions--;
  return o;
}

void checkGoogleCloudWebriskV1ThreatEntryAdditions(
    api.GoogleCloudWebriskV1ThreatEntryAdditions o) {
  buildCounterGoogleCloudWebriskV1ThreatEntryAdditions++;
  if (buildCounterGoogleCloudWebriskV1ThreatEntryAdditions < 3) {
    checkUnnamed5(o.rawHashes!);
    checkGoogleCloudWebriskV1RiceDeltaEncoding(o.riceHashes!);
  }
  buildCounterGoogleCloudWebriskV1ThreatEntryAdditions--;
}

core.int buildCounterGoogleCloudWebriskV1ThreatEntryRemovals = 0;
api.GoogleCloudWebriskV1ThreatEntryRemovals
    buildGoogleCloudWebriskV1ThreatEntryRemovals() {
  final o = api.GoogleCloudWebriskV1ThreatEntryRemovals();
  buildCounterGoogleCloudWebriskV1ThreatEntryRemovals++;
  if (buildCounterGoogleCloudWebriskV1ThreatEntryRemovals < 3) {
    o.rawIndices = buildGoogleCloudWebriskV1RawIndices();
    o.riceIndices = buildGoogleCloudWebriskV1RiceDeltaEncoding();
  }
  buildCounterGoogleCloudWebriskV1ThreatEntryRemovals--;
  return o;
}

void checkGoogleCloudWebriskV1ThreatEntryRemovals(
    api.GoogleCloudWebriskV1ThreatEntryRemovals o) {
  buildCounterGoogleCloudWebriskV1ThreatEntryRemovals++;
  if (buildCounterGoogleCloudWebriskV1ThreatEntryRemovals < 3) {
    checkGoogleCloudWebriskV1RawIndices(o.rawIndices!);
    checkGoogleCloudWebriskV1RiceDeltaEncoding(o.riceIndices!);
  }
  buildCounterGoogleCloudWebriskV1ThreatEntryRemovals--;
}

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
api.GoogleLongrunningCancelOperationRequest
    buildGoogleLongrunningCancelOperationRequest() {
  final o = api.GoogleLongrunningCancelOperationRequest();
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
  return o;
}

void checkGoogleLongrunningCancelOperationRequest(
    api.GoogleLongrunningCancelOperationRequest o) {
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed6() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed6(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed6();
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
    checkUnnamed6(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed7() => {
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

void checkUnnamed7(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed8() => {
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

void checkUnnamed8(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed7();
    o.name = 'foo';
    o.response = buildUnnamed8();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed7(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.response!);
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

core.Map<core.String, core.Object?> buildUnnamed9() => {
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

void checkUnnamed9(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed10() => [
      buildUnnamed9(),
      buildUnnamed9(),
    ];

void checkUnnamed10(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed9(o[0]);
  checkUnnamed9(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed10();
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
    checkUnnamed10(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-GoogleCloudWebriskV1ComputeThreatListDiffResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudWebriskV1ComputeThreatListDiffResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudWebriskV1ComputeThreatListDiffResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudWebriskV1ComputeThreatListDiffResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1RawHashes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudWebriskV1RawHashes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudWebriskV1RawHashes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudWebriskV1RawHashes(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1RawIndices', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudWebriskV1RawIndices();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudWebriskV1RawIndices.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudWebriskV1RawIndices(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1RiceDeltaEncoding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudWebriskV1RiceDeltaEncoding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudWebriskV1RiceDeltaEncoding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudWebriskV1RiceDeltaEncoding(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1SearchHashesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudWebriskV1SearchHashesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudWebriskV1SearchHashesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudWebriskV1SearchHashesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudWebriskV1SearchHashesResponseThreatHash', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudWebriskV1SearchHashesResponseThreatHash();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudWebriskV1SearchHashesResponseThreatHash.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudWebriskV1SearchHashesResponseThreatHash(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1SearchUrisResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudWebriskV1SearchUrisResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudWebriskV1SearchUrisResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudWebriskV1SearchUrisResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1SearchUrisResponseThreatUri',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudWebriskV1SearchUrisResponseThreatUri();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudWebriskV1SearchUrisResponseThreatUri.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudWebriskV1SearchUrisResponseThreatUri(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1Submission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudWebriskV1Submission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudWebriskV1Submission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudWebriskV1Submission(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1SubmitUriMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudWebriskV1SubmitUriMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudWebriskV1SubmitUriMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudWebriskV1SubmitUriMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1SubmitUriRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudWebriskV1SubmitUriRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudWebriskV1SubmitUriRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudWebriskV1SubmitUriRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1ThreatEntryAdditions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudWebriskV1ThreatEntryAdditions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudWebriskV1ThreatEntryAdditions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudWebriskV1ThreatEntryAdditions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1ThreatEntryRemovals', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudWebriskV1ThreatEntryRemovals();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudWebriskV1ThreatEntryRemovals.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudWebriskV1ThreatEntryRemovals(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningCancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningCancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningCancelOperationRequest(od);
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

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
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

  unittest.group('resource-HashesResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.WebRiskApi(mock).hashes;
      final arg_hashPrefix = 'foo';
      final arg_threatTypes = buildUnnamed11();
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/hashes:search'),
        );
        pathOffset += 16;

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
          queryMap['hashPrefix']!.first,
          unittest.equals(arg_hashPrefix),
        );
        unittest.expect(
          queryMap['threatTypes']!,
          unittest.equals(arg_threatTypes),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudWebriskV1SearchHashesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(
          hashPrefix: arg_hashPrefix,
          threatTypes: arg_threatTypes,
          $fields: arg_$fields);
      checkGoogleCloudWebriskV1SearchHashesResponse(
          response as api.GoogleCloudWebriskV1SearchHashesResponse);
    });
  });

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.WebRiskApi(mock).projects.operations;
      final arg_request = buildGoogleLongrunningCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleLongrunningCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleLongrunningCancelOperationRequest(obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.WebRiskApi(mock).projects.operations;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WebRiskApi(mock).projects.operations;
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
      final res = api.WebRiskApi(mock).projects.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsSubmissionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.WebRiskApi(mock).projects.submissions;
      final arg_request = buildGoogleCloudWebriskV1Submission();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudWebriskV1Submission.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudWebriskV1Submission(obj);

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
        final resp = convert.json.encode(buildGoogleCloudWebriskV1Submission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudWebriskV1Submission(
          response as api.GoogleCloudWebriskV1Submission);
    });
  });

  unittest.group('resource-ProjectsUrisResource', () {
    unittest.test('method--submit', () async {
      final mock = HttpServerMock();
      final res = api.WebRiskApi(mock).projects.uris;
      final arg_request = buildGoogleCloudWebriskV1SubmitUriRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudWebriskV1SubmitUriRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudWebriskV1SubmitUriRequest(obj);

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
          await res.submit(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ThreatListsResource', () {
    unittest.test('method--computeDiff', () async {
      final mock = HttpServerMock();
      final res = api.WebRiskApi(mock).threatLists;
      final arg_constraints_maxDatabaseEntries = 42;
      final arg_constraints_maxDiffEntries = 42;
      final arg_constraints_supportedCompressions = buildUnnamed12();
      final arg_threatType = 'foo';
      final arg_versionToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('v1/threatLists:computeDiff'),
        );
        pathOffset += 26;

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
          core.int.parse(queryMap['constraints.maxDatabaseEntries']!.first),
          unittest.equals(arg_constraints_maxDatabaseEntries),
        );
        unittest.expect(
          core.int.parse(queryMap['constraints.maxDiffEntries']!.first),
          unittest.equals(arg_constraints_maxDiffEntries),
        );
        unittest.expect(
          queryMap['constraints.supportedCompressions']!,
          unittest.equals(arg_constraints_supportedCompressions),
        );
        unittest.expect(
          queryMap['threatType']!.first,
          unittest.equals(arg_threatType),
        );
        unittest.expect(
          queryMap['versionToken']!.first,
          unittest.equals(arg_versionToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudWebriskV1ComputeThreatListDiffResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.computeDiff(
          constraints_maxDatabaseEntries: arg_constraints_maxDatabaseEntries,
          constraints_maxDiffEntries: arg_constraints_maxDiffEntries,
          constraints_supportedCompressions:
              arg_constraints_supportedCompressions,
          threatType: arg_threatType,
          versionToken: arg_versionToken,
          $fields: arg_$fields);
      checkGoogleCloudWebriskV1ComputeThreatListDiffResponse(
          response as api.GoogleCloudWebriskV1ComputeThreatListDiffResponse);
    });
  });

  unittest.group('resource-UrisResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.WebRiskApi(mock).uris;
      final arg_threatTypes = buildUnnamed13();
      final arg_uri = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/uris:search'),
        );
        pathOffset += 14;

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
          queryMap['threatTypes']!,
          unittest.equals(arg_threatTypes),
        );
        unittest.expect(
          queryMap['uri']!.first,
          unittest.equals(arg_uri),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudWebriskV1SearchUrisResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(
          threatTypes: arg_threatTypes, uri: arg_uri, $fields: arg_$fields);
      checkGoogleCloudWebriskV1SearchUrisResponse(
          response as api.GoogleCloudWebriskV1SearchUrisResponse);
    });
  });
}
