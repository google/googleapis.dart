// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/webrisk/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterGoogleCloudWebriskV1ComputeThreatListDiffResponse = 0;
api.GoogleCloudWebriskV1ComputeThreatListDiffResponse
    buildGoogleCloudWebriskV1ComputeThreatListDiffResponse() {
  var o = api.GoogleCloudWebriskV1ComputeThreatListDiffResponse();
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
    checkGoogleCloudWebriskV1ThreatEntryAdditions(
        o.additions! as api.GoogleCloudWebriskV1ThreatEntryAdditions);
    checkGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum(o.checksum!
        as api.GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum);
    unittest.expect(
      o.newVersionToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recommendedNextDiff!,
      unittest.equals('foo'),
    );
    checkGoogleCloudWebriskV1ThreatEntryRemovals(
        o.removals! as api.GoogleCloudWebriskV1ThreatEntryRemovals);
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
  var o = api.GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum();
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
  var o = api.GoogleCloudWebriskV1RawHashes();
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

core.List<core.int> buildUnnamed1502() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed1502(core.List<core.int> o) {
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
  var o = api.GoogleCloudWebriskV1RawIndices();
  buildCounterGoogleCloudWebriskV1RawIndices++;
  if (buildCounterGoogleCloudWebriskV1RawIndices < 3) {
    o.indices = buildUnnamed1502();
  }
  buildCounterGoogleCloudWebriskV1RawIndices--;
  return o;
}

void checkGoogleCloudWebriskV1RawIndices(api.GoogleCloudWebriskV1RawIndices o) {
  buildCounterGoogleCloudWebriskV1RawIndices++;
  if (buildCounterGoogleCloudWebriskV1RawIndices < 3) {
    checkUnnamed1502(o.indices!);
  }
  buildCounterGoogleCloudWebriskV1RawIndices--;
}

core.int buildCounterGoogleCloudWebriskV1RiceDeltaEncoding = 0;
api.GoogleCloudWebriskV1RiceDeltaEncoding
    buildGoogleCloudWebriskV1RiceDeltaEncoding() {
  var o = api.GoogleCloudWebriskV1RiceDeltaEncoding();
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
    buildUnnamed1503() {
  var o = <api.GoogleCloudWebriskV1SearchHashesResponseThreatHash>[];
  o.add(buildGoogleCloudWebriskV1SearchHashesResponseThreatHash());
  o.add(buildGoogleCloudWebriskV1SearchHashesResponseThreatHash());
  return o;
}

void checkUnnamed1503(
    core.List<api.GoogleCloudWebriskV1SearchHashesResponseThreatHash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudWebriskV1SearchHashesResponseThreatHash(
      o[0] as api.GoogleCloudWebriskV1SearchHashesResponseThreatHash);
  checkGoogleCloudWebriskV1SearchHashesResponseThreatHash(
      o[1] as api.GoogleCloudWebriskV1SearchHashesResponseThreatHash);
}

core.int buildCounterGoogleCloudWebriskV1SearchHashesResponse = 0;
api.GoogleCloudWebriskV1SearchHashesResponse
    buildGoogleCloudWebriskV1SearchHashesResponse() {
  var o = api.GoogleCloudWebriskV1SearchHashesResponse();
  buildCounterGoogleCloudWebriskV1SearchHashesResponse++;
  if (buildCounterGoogleCloudWebriskV1SearchHashesResponse < 3) {
    o.negativeExpireTime = 'foo';
    o.threats = buildUnnamed1503();
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
    checkUnnamed1503(o.threats!);
  }
  buildCounterGoogleCloudWebriskV1SearchHashesResponse--;
}

core.List<core.String> buildUnnamed1504() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1504(core.List<core.String> o) {
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
  var o = api.GoogleCloudWebriskV1SearchHashesResponseThreatHash();
  buildCounterGoogleCloudWebriskV1SearchHashesResponseThreatHash++;
  if (buildCounterGoogleCloudWebriskV1SearchHashesResponseThreatHash < 3) {
    o.expireTime = 'foo';
    o.hash = 'foo';
    o.threatTypes = buildUnnamed1504();
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
    checkUnnamed1504(o.threatTypes!);
  }
  buildCounterGoogleCloudWebriskV1SearchHashesResponseThreatHash--;
}

core.int buildCounterGoogleCloudWebriskV1SearchUrisResponse = 0;
api.GoogleCloudWebriskV1SearchUrisResponse
    buildGoogleCloudWebriskV1SearchUrisResponse() {
  var o = api.GoogleCloudWebriskV1SearchUrisResponse();
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
    checkGoogleCloudWebriskV1SearchUrisResponseThreatUri(
        o.threat! as api.GoogleCloudWebriskV1SearchUrisResponseThreatUri);
  }
  buildCounterGoogleCloudWebriskV1SearchUrisResponse--;
}

core.List<core.String> buildUnnamed1505() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1505(core.List<core.String> o) {
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
  var o = api.GoogleCloudWebriskV1SearchUrisResponseThreatUri();
  buildCounterGoogleCloudWebriskV1SearchUrisResponseThreatUri++;
  if (buildCounterGoogleCloudWebriskV1SearchUrisResponseThreatUri < 3) {
    o.expireTime = 'foo';
    o.threatTypes = buildUnnamed1505();
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
    checkUnnamed1505(o.threatTypes!);
  }
  buildCounterGoogleCloudWebriskV1SearchUrisResponseThreatUri--;
}

core.List<core.String> buildUnnamed1506() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1506(core.List<core.String> o) {
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
  var o = api.GoogleCloudWebriskV1Submission();
  buildCounterGoogleCloudWebriskV1Submission++;
  if (buildCounterGoogleCloudWebriskV1Submission < 3) {
    o.threatTypes = buildUnnamed1506();
    o.uri = 'foo';
  }
  buildCounterGoogleCloudWebriskV1Submission--;
  return o;
}

void checkGoogleCloudWebriskV1Submission(api.GoogleCloudWebriskV1Submission o) {
  buildCounterGoogleCloudWebriskV1Submission++;
  if (buildCounterGoogleCloudWebriskV1Submission < 3) {
    checkUnnamed1506(o.threatTypes!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudWebriskV1Submission--;
}

core.int buildCounterGoogleCloudWebriskV1SubmitUriRequest = 0;
api.GoogleCloudWebriskV1SubmitUriRequest
    buildGoogleCloudWebriskV1SubmitUriRequest() {
  var o = api.GoogleCloudWebriskV1SubmitUriRequest();
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
    checkGoogleCloudWebriskV1Submission(
        o.submission! as api.GoogleCloudWebriskV1Submission);
  }
  buildCounterGoogleCloudWebriskV1SubmitUriRequest--;
}

core.List<api.GoogleCloudWebriskV1RawHashes> buildUnnamed1507() {
  var o = <api.GoogleCloudWebriskV1RawHashes>[];
  o.add(buildGoogleCloudWebriskV1RawHashes());
  o.add(buildGoogleCloudWebriskV1RawHashes());
  return o;
}

void checkUnnamed1507(core.List<api.GoogleCloudWebriskV1RawHashes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudWebriskV1RawHashes(o[0] as api.GoogleCloudWebriskV1RawHashes);
  checkGoogleCloudWebriskV1RawHashes(o[1] as api.GoogleCloudWebriskV1RawHashes);
}

core.int buildCounterGoogleCloudWebriskV1ThreatEntryAdditions = 0;
api.GoogleCloudWebriskV1ThreatEntryAdditions
    buildGoogleCloudWebriskV1ThreatEntryAdditions() {
  var o = api.GoogleCloudWebriskV1ThreatEntryAdditions();
  buildCounterGoogleCloudWebriskV1ThreatEntryAdditions++;
  if (buildCounterGoogleCloudWebriskV1ThreatEntryAdditions < 3) {
    o.rawHashes = buildUnnamed1507();
    o.riceHashes = buildGoogleCloudWebriskV1RiceDeltaEncoding();
  }
  buildCounterGoogleCloudWebriskV1ThreatEntryAdditions--;
  return o;
}

void checkGoogleCloudWebriskV1ThreatEntryAdditions(
    api.GoogleCloudWebriskV1ThreatEntryAdditions o) {
  buildCounterGoogleCloudWebriskV1ThreatEntryAdditions++;
  if (buildCounterGoogleCloudWebriskV1ThreatEntryAdditions < 3) {
    checkUnnamed1507(o.rawHashes!);
    checkGoogleCloudWebriskV1RiceDeltaEncoding(
        o.riceHashes! as api.GoogleCloudWebriskV1RiceDeltaEncoding);
  }
  buildCounterGoogleCloudWebriskV1ThreatEntryAdditions--;
}

core.int buildCounterGoogleCloudWebriskV1ThreatEntryRemovals = 0;
api.GoogleCloudWebriskV1ThreatEntryRemovals
    buildGoogleCloudWebriskV1ThreatEntryRemovals() {
  var o = api.GoogleCloudWebriskV1ThreatEntryRemovals();
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
    checkGoogleCloudWebriskV1RawIndices(
        o.rawIndices! as api.GoogleCloudWebriskV1RawIndices);
    checkGoogleCloudWebriskV1RiceDeltaEncoding(
        o.riceIndices! as api.GoogleCloudWebriskV1RiceDeltaEncoding);
  }
  buildCounterGoogleCloudWebriskV1ThreatEntryRemovals--;
}

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
api.GoogleLongrunningCancelOperationRequest
    buildGoogleLongrunningCancelOperationRequest() {
  var o = api.GoogleLongrunningCancelOperationRequest();
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

core.List<api.GoogleLongrunningOperation> buildUnnamed1508() {
  var o = <api.GoogleLongrunningOperation>[];
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

void checkUnnamed1508(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed1508();
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
    checkUnnamed1508(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed1509() {
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

void checkUnnamed1509(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed1510() {
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

void checkUnnamed1510(core.Map<core.String, core.Object> o) {
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
  var o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed1509();
    o.name = 'foo';
    o.response = buildUnnamed1510();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error! as api.GoogleRpcStatus);
    checkUnnamed1509(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1510(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  var o = api.GoogleProtobufEmpty();
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

core.Map<core.String, core.Object> buildUnnamed1511() {
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

void checkUnnamed1511(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed1512() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed1511());
  o.add(buildUnnamed1511());
  return o;
}

void checkUnnamed1512(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1511(o[0]);
  checkUnnamed1511(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1512();
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
    checkUnnamed1512(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.List<core.String> buildUnnamed1513() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1513(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed1514() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1514(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed1515() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1515(core.List<core.String> o) {
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
      var o = buildGoogleCloudWebriskV1ComputeThreatListDiffResponse();
      var od = api.GoogleCloudWebriskV1ComputeThreatListDiffResponse.fromJson(
          o.toJson());
      checkGoogleCloudWebriskV1ComputeThreatListDiffResponse(
          od as api.GoogleCloudWebriskV1ComputeThreatListDiffResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum();
      var od = api.GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum
          .fromJson(o.toJson());
      checkGoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum(
          od as api.GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1RawHashes', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudWebriskV1RawHashes();
      var od = api.GoogleCloudWebriskV1RawHashes.fromJson(o.toJson());
      checkGoogleCloudWebriskV1RawHashes(
          od as api.GoogleCloudWebriskV1RawHashes);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1RawIndices', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudWebriskV1RawIndices();
      var od = api.GoogleCloudWebriskV1RawIndices.fromJson(o.toJson());
      checkGoogleCloudWebriskV1RawIndices(
          od as api.GoogleCloudWebriskV1RawIndices);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1RiceDeltaEncoding', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudWebriskV1RiceDeltaEncoding();
      var od = api.GoogleCloudWebriskV1RiceDeltaEncoding.fromJson(o.toJson());
      checkGoogleCloudWebriskV1RiceDeltaEncoding(
          od as api.GoogleCloudWebriskV1RiceDeltaEncoding);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1SearchHashesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudWebriskV1SearchHashesResponse();
      var od =
          api.GoogleCloudWebriskV1SearchHashesResponse.fromJson(o.toJson());
      checkGoogleCloudWebriskV1SearchHashesResponse(
          od as api.GoogleCloudWebriskV1SearchHashesResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudWebriskV1SearchHashesResponseThreatHash', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudWebriskV1SearchHashesResponseThreatHash();
      var od = api.GoogleCloudWebriskV1SearchHashesResponseThreatHash.fromJson(
          o.toJson());
      checkGoogleCloudWebriskV1SearchHashesResponseThreatHash(
          od as api.GoogleCloudWebriskV1SearchHashesResponseThreatHash);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1SearchUrisResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudWebriskV1SearchUrisResponse();
      var od = api.GoogleCloudWebriskV1SearchUrisResponse.fromJson(o.toJson());
      checkGoogleCloudWebriskV1SearchUrisResponse(
          od as api.GoogleCloudWebriskV1SearchUrisResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1SearchUrisResponseThreatUri',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudWebriskV1SearchUrisResponseThreatUri();
      var od = api.GoogleCloudWebriskV1SearchUrisResponseThreatUri.fromJson(
          o.toJson());
      checkGoogleCloudWebriskV1SearchUrisResponseThreatUri(
          od as api.GoogleCloudWebriskV1SearchUrisResponseThreatUri);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1Submission', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudWebriskV1Submission();
      var od = api.GoogleCloudWebriskV1Submission.fromJson(o.toJson());
      checkGoogleCloudWebriskV1Submission(
          od as api.GoogleCloudWebriskV1Submission);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1SubmitUriRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudWebriskV1SubmitUriRequest();
      var od = api.GoogleCloudWebriskV1SubmitUriRequest.fromJson(o.toJson());
      checkGoogleCloudWebriskV1SubmitUriRequest(
          od as api.GoogleCloudWebriskV1SubmitUriRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1ThreatEntryAdditions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudWebriskV1ThreatEntryAdditions();
      var od =
          api.GoogleCloudWebriskV1ThreatEntryAdditions.fromJson(o.toJson());
      checkGoogleCloudWebriskV1ThreatEntryAdditions(
          od as api.GoogleCloudWebriskV1ThreatEntryAdditions);
    });
  });

  unittest.group('obj-schema-GoogleCloudWebriskV1ThreatEntryRemovals', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudWebriskV1ThreatEntryRemovals();
      var od = api.GoogleCloudWebriskV1ThreatEntryRemovals.fromJson(o.toJson());
      checkGoogleCloudWebriskV1ThreatEntryRemovals(
          od as api.GoogleCloudWebriskV1ThreatEntryRemovals);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningCancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleLongrunningCancelOperationRequest();
      var od = api.GoogleLongrunningCancelOperationRequest.fromJson(o.toJson());
      checkGoogleLongrunningCancelOperationRequest(
          od as api.GoogleLongrunningCancelOperationRequest);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od = api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(
          od as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleLongrunningOperation();
      var od = api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleProtobufEmpty();
      var od = api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleRpcStatus();
      var od = api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od as api.GoogleRpcStatus);
    });
  });

  unittest.group('resource-HashesResource', () {
    unittest.test('method--search', () async {
      var mock = HttpServerMock();
      var res = api.WebRiskApi(mock).hashes;
      var arg_hashPrefix = 'foo';
      var arg_threatTypes = buildUnnamed1513();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals("v1/hashes:search"),
        );
        pathOffset += 16;

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
        unittest.expect(
          queryMap["hashPrefix"]!.first,
          unittest.equals(arg_hashPrefix),
        );
        unittest.expect(
          queryMap["threatTypes"]!,
          unittest.equals(arg_threatTypes),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
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

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      var mock = HttpServerMock();
      var res = api.WebRiskApi(mock).operations;
      var arg_request = buildGoogleLongrunningCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleLongrunningCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleLongrunningCancelOperationRequest(
            obj as api.GoogleLongrunningCancelOperationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.WebRiskApi(mock).operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.WebRiskApi(mock).operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.WebRiskApi(mock).operations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
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
      var mock = HttpServerMock();
      var res = api.WebRiskApi(mock).projects.submissions;
      var arg_request = buildGoogleCloudWebriskV1Submission();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudWebriskV1Submission.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudWebriskV1Submission(
            obj as api.GoogleCloudWebriskV1Submission);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudWebriskV1Submission());
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
      var mock = HttpServerMock();
      var res = api.WebRiskApi(mock).projects.uris;
      var arg_request = buildGoogleCloudWebriskV1SubmitUriRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudWebriskV1SubmitUriRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudWebriskV1SubmitUriRequest(
            obj as api.GoogleCloudWebriskV1SubmitUriRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
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
      var mock = HttpServerMock();
      var res = api.WebRiskApi(mock).threatLists;
      var arg_constraints_maxDatabaseEntries = 42;
      var arg_constraints_maxDiffEntries = 42;
      var arg_constraints_supportedCompressions = buildUnnamed1514();
      var arg_threatType = 'foo';
      var arg_versionToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals("v1/threatLists:computeDiff"),
        );
        pathOffset += 26;

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
        unittest.expect(
          core.int.parse(queryMap["constraints.maxDatabaseEntries"]!.first),
          unittest.equals(arg_constraints_maxDatabaseEntries),
        );
        unittest.expect(
          core.int.parse(queryMap["constraints.maxDiffEntries"]!.first),
          unittest.equals(arg_constraints_maxDiffEntries),
        );
        unittest.expect(
          queryMap["constraints.supportedCompressions"]!,
          unittest.equals(arg_constraints_supportedCompressions),
        );
        unittest.expect(
          queryMap["threatType"]!.first,
          unittest.equals(arg_threatType),
        );
        unittest.expect(
          queryMap["versionToken"]!.first,
          unittest.equals(arg_versionToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
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
      var mock = HttpServerMock();
      var res = api.WebRiskApi(mock).uris;
      var arg_threatTypes = buildUnnamed1515();
      var arg_uri = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals("v1/uris:search"),
        );
        pathOffset += 14;

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
        unittest.expect(
          queryMap["threatTypes"]!,
          unittest.equals(arg_threatTypes),
        );
        unittest.expect(
          queryMap["uri"]!.first,
          unittest.equals(arg_uri),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
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
