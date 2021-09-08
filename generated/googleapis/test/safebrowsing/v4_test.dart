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

import 'package:googleapis/safebrowsing/v4.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.int buildCounterGoogleSecuritySafebrowsingV4Checksum = 0;
api.GoogleSecuritySafebrowsingV4Checksum
    buildGoogleSecuritySafebrowsingV4Checksum() {
  final o = api.GoogleSecuritySafebrowsingV4Checksum();
  buildCounterGoogleSecuritySafebrowsingV4Checksum++;
  if (buildCounterGoogleSecuritySafebrowsingV4Checksum < 3) {
    o.sha256 = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV4Checksum--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4Checksum(
    api.GoogleSecuritySafebrowsingV4Checksum o) {
  buildCounterGoogleSecuritySafebrowsingV4Checksum++;
  if (buildCounterGoogleSecuritySafebrowsingV4Checksum < 3) {
    unittest.expect(
      o.sha256!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV4Checksum--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4ClientInfo = 0;
api.GoogleSecuritySafebrowsingV4ClientInfo
    buildGoogleSecuritySafebrowsingV4ClientInfo() {
  final o = api.GoogleSecuritySafebrowsingV4ClientInfo();
  buildCounterGoogleSecuritySafebrowsingV4ClientInfo++;
  if (buildCounterGoogleSecuritySafebrowsingV4ClientInfo < 3) {
    o.clientId = 'foo';
    o.clientVersion = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV4ClientInfo--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4ClientInfo(
    api.GoogleSecuritySafebrowsingV4ClientInfo o) {
  buildCounterGoogleSecuritySafebrowsingV4ClientInfo++;
  if (buildCounterGoogleSecuritySafebrowsingV4ClientInfo < 3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV4ClientInfo--;
}

core.List<
        api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest>
    buildUnnamed5957() => [
          buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest(),
          buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest(),
        ];

void checkUnnamed5957(
    core.List<
            api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest(
      o[0]);
  checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest(
      o[1]);
}

core.int buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest =
    0;
api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
    buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest() {
  final o = api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest();
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest++;
  if (buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest <
      3) {
    o.client = buildGoogleSecuritySafebrowsingV4ClientInfo();
    o.listUpdateRequests = buildUnnamed5957();
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest(
    api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest o) {
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest++;
  if (buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest <
      3) {
    checkGoogleSecuritySafebrowsingV4ClientInfo(o.client!);
    checkUnnamed5957(o.listUpdateRequests!);
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest--;
}

core.int
    buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest =
    0;
api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
    buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest() {
  final o = api
      .GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest();
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest++;
  if (buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest <
      3) {
    o.constraints =
        buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints();
    o.platformType = 'foo';
    o.state = 'foo';
    o.threatEntryType = 'foo';
    o.threatType = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest(
    api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
        o) {
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest++;
  if (buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest <
      3) {
    checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints(
        o.constraints!);
    unittest.expect(
      o.platformType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.threatEntryType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.threatType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest--;
}

core.List<core.String> buildUnnamed5958() => [
      'foo',
      'foo',
    ];

void checkUnnamed5958(core.List<core.String> o) {
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

core.int
    buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints =
    0;
api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
    buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints() {
  final o = api
      .GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints();
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints++;
  if (buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints <
      3) {
    o.deviceLocation = 'foo';
    o.language = 'foo';
    o.maxDatabaseEntries = 42;
    o.maxUpdateEntries = 42;
    o.region = 'foo';
    o.supportedCompressions = buildUnnamed5958();
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints(
    api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
        o) {
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints++;
  if (buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints <
      3) {
    unittest.expect(
      o.deviceLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxDatabaseEntries!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxUpdateEntries!,
      unittest.equals(42),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    checkUnnamed5958(o.supportedCompressions!);
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints--;
}

core.List<
        api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse>
    buildUnnamed5959() => [
          buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse(),
          buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse(),
        ];

void checkUnnamed5959(
    core.List<
            api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse(
      o[0]);
  checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse(
      o[1]);
}

core.int
    buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse = 0;
api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
    buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse() {
  final o = api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse();
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse <
      3) {
    o.listUpdateResponses = buildUnnamed5959();
    o.minimumWaitDuration = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse(
    api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse o) {
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse <
      3) {
    checkUnnamed5959(o.listUpdateResponses!);
    unittest.expect(
      o.minimumWaitDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse--;
}

core.List<api.GoogleSecuritySafebrowsingV4ThreatEntrySet> buildUnnamed5960() =>
    [
      buildGoogleSecuritySafebrowsingV4ThreatEntrySet(),
      buildGoogleSecuritySafebrowsingV4ThreatEntrySet(),
    ];

void checkUnnamed5960(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatEntrySet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatEntrySet(o[0]);
  checkGoogleSecuritySafebrowsingV4ThreatEntrySet(o[1]);
}

core.List<api.GoogleSecuritySafebrowsingV4ThreatEntrySet> buildUnnamed5961() =>
    [
      buildGoogleSecuritySafebrowsingV4ThreatEntrySet(),
      buildGoogleSecuritySafebrowsingV4ThreatEntrySet(),
    ];

void checkUnnamed5961(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatEntrySet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatEntrySet(o[0]);
  checkGoogleSecuritySafebrowsingV4ThreatEntrySet(o[1]);
}

core.int
    buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse =
    0;
api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
    buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse() {
  final o = api
      .GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse();
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse <
      3) {
    o.additions = buildUnnamed5960();
    o.checksum = buildGoogleSecuritySafebrowsingV4Checksum();
    o.newClientState = 'foo';
    o.platformType = 'foo';
    o.removals = buildUnnamed5961();
    o.responseType = 'foo';
    o.threatEntryType = 'foo';
    o.threatType = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse(
    api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
        o) {
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse <
      3) {
    checkUnnamed5960(o.additions!);
    checkGoogleSecuritySafebrowsingV4Checksum(o.checksum!);
    unittest.expect(
      o.newClientState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platformType!,
      unittest.equals('foo'),
    );
    checkUnnamed5961(o.removals!);
    unittest.expect(
      o.responseType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.threatEntryType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.threatType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse--;
}

core.List<core.String> buildUnnamed5962() => [
      'foo',
      'foo',
    ];

void checkUnnamed5962(core.List<core.String> o) {
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

core.int buildCounterGoogleSecuritySafebrowsingV4FindFullHashesRequest = 0;
api.GoogleSecuritySafebrowsingV4FindFullHashesRequest
    buildGoogleSecuritySafebrowsingV4FindFullHashesRequest() {
  final o = api.GoogleSecuritySafebrowsingV4FindFullHashesRequest();
  buildCounterGoogleSecuritySafebrowsingV4FindFullHashesRequest++;
  if (buildCounterGoogleSecuritySafebrowsingV4FindFullHashesRequest < 3) {
    o.apiClient = buildGoogleSecuritySafebrowsingV4ClientInfo();
    o.client = buildGoogleSecuritySafebrowsingV4ClientInfo();
    o.clientStates = buildUnnamed5962();
    o.threatInfo = buildGoogleSecuritySafebrowsingV4ThreatInfo();
  }
  buildCounterGoogleSecuritySafebrowsingV4FindFullHashesRequest--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4FindFullHashesRequest(
    api.GoogleSecuritySafebrowsingV4FindFullHashesRequest o) {
  buildCounterGoogleSecuritySafebrowsingV4FindFullHashesRequest++;
  if (buildCounterGoogleSecuritySafebrowsingV4FindFullHashesRequest < 3) {
    checkGoogleSecuritySafebrowsingV4ClientInfo(o.apiClient!);
    checkGoogleSecuritySafebrowsingV4ClientInfo(o.client!);
    checkUnnamed5962(o.clientStates!);
    checkGoogleSecuritySafebrowsingV4ThreatInfo(o.threatInfo!);
  }
  buildCounterGoogleSecuritySafebrowsingV4FindFullHashesRequest--;
}

core.List<api.GoogleSecuritySafebrowsingV4ThreatMatch> buildUnnamed5963() => [
      buildGoogleSecuritySafebrowsingV4ThreatMatch(),
      buildGoogleSecuritySafebrowsingV4ThreatMatch(),
    ];

void checkUnnamed5963(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatMatch(o[0]);
  checkGoogleSecuritySafebrowsingV4ThreatMatch(o[1]);
}

core.int buildCounterGoogleSecuritySafebrowsingV4FindFullHashesResponse = 0;
api.GoogleSecuritySafebrowsingV4FindFullHashesResponse
    buildGoogleSecuritySafebrowsingV4FindFullHashesResponse() {
  final o = api.GoogleSecuritySafebrowsingV4FindFullHashesResponse();
  buildCounterGoogleSecuritySafebrowsingV4FindFullHashesResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4FindFullHashesResponse < 3) {
    o.matches = buildUnnamed5963();
    o.minimumWaitDuration = 'foo';
    o.negativeCacheDuration = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV4FindFullHashesResponse--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4FindFullHashesResponse(
    api.GoogleSecuritySafebrowsingV4FindFullHashesResponse o) {
  buildCounterGoogleSecuritySafebrowsingV4FindFullHashesResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4FindFullHashesResponse < 3) {
    checkUnnamed5963(o.matches!);
    unittest.expect(
      o.minimumWaitDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.negativeCacheDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV4FindFullHashesResponse--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesRequest = 0;
api.GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
    buildGoogleSecuritySafebrowsingV4FindThreatMatchesRequest() {
  final o = api.GoogleSecuritySafebrowsingV4FindThreatMatchesRequest();
  buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesRequest++;
  if (buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesRequest < 3) {
    o.client = buildGoogleSecuritySafebrowsingV4ClientInfo();
    o.threatInfo = buildGoogleSecuritySafebrowsingV4ThreatInfo();
  }
  buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesRequest--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4FindThreatMatchesRequest(
    api.GoogleSecuritySafebrowsingV4FindThreatMatchesRequest o) {
  buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesRequest++;
  if (buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesRequest < 3) {
    checkGoogleSecuritySafebrowsingV4ClientInfo(o.client!);
    checkGoogleSecuritySafebrowsingV4ThreatInfo(o.threatInfo!);
  }
  buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesRequest--;
}

core.List<api.GoogleSecuritySafebrowsingV4ThreatMatch> buildUnnamed5964() => [
      buildGoogleSecuritySafebrowsingV4ThreatMatch(),
      buildGoogleSecuritySafebrowsingV4ThreatMatch(),
    ];

void checkUnnamed5964(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatMatch(o[0]);
  checkGoogleSecuritySafebrowsingV4ThreatMatch(o[1]);
}

core.int buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesResponse = 0;
api.GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
    buildGoogleSecuritySafebrowsingV4FindThreatMatchesResponse() {
  final o = api.GoogleSecuritySafebrowsingV4FindThreatMatchesResponse();
  buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesResponse < 3) {
    o.matches = buildUnnamed5964();
  }
  buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesResponse--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4FindThreatMatchesResponse(
    api.GoogleSecuritySafebrowsingV4FindThreatMatchesResponse o) {
  buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesResponse < 3) {
    checkUnnamed5964(o.matches!);
  }
  buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesResponse--;
}

core.List<api.GoogleSecuritySafebrowsingV4ThreatListDescriptor>
    buildUnnamed5965() => [
          buildGoogleSecuritySafebrowsingV4ThreatListDescriptor(),
          buildGoogleSecuritySafebrowsingV4ThreatListDescriptor(),
        ];

void checkUnnamed5965(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatListDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatListDescriptor(o[0]);
  checkGoogleSecuritySafebrowsingV4ThreatListDescriptor(o[1]);
}

core.int buildCounterGoogleSecuritySafebrowsingV4ListThreatListsResponse = 0;
api.GoogleSecuritySafebrowsingV4ListThreatListsResponse
    buildGoogleSecuritySafebrowsingV4ListThreatListsResponse() {
  final o = api.GoogleSecuritySafebrowsingV4ListThreatListsResponse();
  buildCounterGoogleSecuritySafebrowsingV4ListThreatListsResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4ListThreatListsResponse < 3) {
    o.threatLists = buildUnnamed5965();
  }
  buildCounterGoogleSecuritySafebrowsingV4ListThreatListsResponse--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4ListThreatListsResponse(
    api.GoogleSecuritySafebrowsingV4ListThreatListsResponse o) {
  buildCounterGoogleSecuritySafebrowsingV4ListThreatListsResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4ListThreatListsResponse < 3) {
    checkUnnamed5965(o.threatLists!);
  }
  buildCounterGoogleSecuritySafebrowsingV4ListThreatListsResponse--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4RawHashes = 0;
api.GoogleSecuritySafebrowsingV4RawHashes
    buildGoogleSecuritySafebrowsingV4RawHashes() {
  final o = api.GoogleSecuritySafebrowsingV4RawHashes();
  buildCounterGoogleSecuritySafebrowsingV4RawHashes++;
  if (buildCounterGoogleSecuritySafebrowsingV4RawHashes < 3) {
    o.prefixSize = 42;
    o.rawHashes = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV4RawHashes--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4RawHashes(
    api.GoogleSecuritySafebrowsingV4RawHashes o) {
  buildCounterGoogleSecuritySafebrowsingV4RawHashes++;
  if (buildCounterGoogleSecuritySafebrowsingV4RawHashes < 3) {
    unittest.expect(
      o.prefixSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rawHashes!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV4RawHashes--;
}

core.List<core.int> buildUnnamed5966() => [
      42,
      42,
    ];

void checkUnnamed5966(core.List<core.int> o) {
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

core.int buildCounterGoogleSecuritySafebrowsingV4RawIndices = 0;
api.GoogleSecuritySafebrowsingV4RawIndices
    buildGoogleSecuritySafebrowsingV4RawIndices() {
  final o = api.GoogleSecuritySafebrowsingV4RawIndices();
  buildCounterGoogleSecuritySafebrowsingV4RawIndices++;
  if (buildCounterGoogleSecuritySafebrowsingV4RawIndices < 3) {
    o.indices = buildUnnamed5966();
  }
  buildCounterGoogleSecuritySafebrowsingV4RawIndices--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4RawIndices(
    api.GoogleSecuritySafebrowsingV4RawIndices o) {
  buildCounterGoogleSecuritySafebrowsingV4RawIndices++;
  if (buildCounterGoogleSecuritySafebrowsingV4RawIndices < 3) {
    checkUnnamed5966(o.indices!);
  }
  buildCounterGoogleSecuritySafebrowsingV4RawIndices--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4RiceDeltaEncoding = 0;
api.GoogleSecuritySafebrowsingV4RiceDeltaEncoding
    buildGoogleSecuritySafebrowsingV4RiceDeltaEncoding() {
  final o = api.GoogleSecuritySafebrowsingV4RiceDeltaEncoding();
  buildCounterGoogleSecuritySafebrowsingV4RiceDeltaEncoding++;
  if (buildCounterGoogleSecuritySafebrowsingV4RiceDeltaEncoding < 3) {
    o.encodedData = 'foo';
    o.firstValue = 'foo';
    o.numEntries = 42;
    o.riceParameter = 42;
  }
  buildCounterGoogleSecuritySafebrowsingV4RiceDeltaEncoding--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4RiceDeltaEncoding(
    api.GoogleSecuritySafebrowsingV4RiceDeltaEncoding o) {
  buildCounterGoogleSecuritySafebrowsingV4RiceDeltaEncoding++;
  if (buildCounterGoogleSecuritySafebrowsingV4RiceDeltaEncoding < 3) {
    unittest.expect(
      o.encodedData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numEntries!,
      unittest.equals(42),
    );
    unittest.expect(
      o.riceParameter!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV4RiceDeltaEncoding--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatEntry = 0;
api.GoogleSecuritySafebrowsingV4ThreatEntry
    buildGoogleSecuritySafebrowsingV4ThreatEntry() {
  final o = api.GoogleSecuritySafebrowsingV4ThreatEntry();
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntry++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatEntry < 3) {
    o.digest = 'foo';
    o.hash = 'foo';
    o.url = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntry--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4ThreatEntry(
    api.GoogleSecuritySafebrowsingV4ThreatEntry o) {
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntry++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatEntry < 3) {
    unittest.expect(
      o.digest!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntry--;
}

core.List<api.GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry>
    buildUnnamed5967() => [
          buildGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry(),
          buildGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry(),
        ];

void checkUnnamed5967(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry(o[0]);
  checkGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry(o[1]);
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadata = 0;
api.GoogleSecuritySafebrowsingV4ThreatEntryMetadata
    buildGoogleSecuritySafebrowsingV4ThreatEntryMetadata() {
  final o = api.GoogleSecuritySafebrowsingV4ThreatEntryMetadata();
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadata++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadata < 3) {
    o.entries = buildUnnamed5967();
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadata--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4ThreatEntryMetadata(
    api.GoogleSecuritySafebrowsingV4ThreatEntryMetadata o) {
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadata++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadata < 3) {
    checkUnnamed5967(o.entries!);
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadata--;
}

core.int
    buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry =
    0;
api.GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
    buildGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry() {
  final o = api.GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry();
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry <
      3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry(
    api.GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry o) {
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry <
      3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatEntrySet = 0;
api.GoogleSecuritySafebrowsingV4ThreatEntrySet
    buildGoogleSecuritySafebrowsingV4ThreatEntrySet() {
  final o = api.GoogleSecuritySafebrowsingV4ThreatEntrySet();
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntrySet++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatEntrySet < 3) {
    o.compressionType = 'foo';
    o.rawHashes = buildGoogleSecuritySafebrowsingV4RawHashes();
    o.rawIndices = buildGoogleSecuritySafebrowsingV4RawIndices();
    o.riceHashes = buildGoogleSecuritySafebrowsingV4RiceDeltaEncoding();
    o.riceIndices = buildGoogleSecuritySafebrowsingV4RiceDeltaEncoding();
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntrySet--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4ThreatEntrySet(
    api.GoogleSecuritySafebrowsingV4ThreatEntrySet o) {
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntrySet++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatEntrySet < 3) {
    unittest.expect(
      o.compressionType!,
      unittest.equals('foo'),
    );
    checkGoogleSecuritySafebrowsingV4RawHashes(o.rawHashes!);
    checkGoogleSecuritySafebrowsingV4RawIndices(o.rawIndices!);
    checkGoogleSecuritySafebrowsingV4RiceDeltaEncoding(o.riceHashes!);
    checkGoogleSecuritySafebrowsingV4RiceDeltaEncoding(o.riceIndices!);
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntrySet--;
}

core.List<api.GoogleSecuritySafebrowsingV4ThreatHitThreatSource>
    buildUnnamed5968() => [
          buildGoogleSecuritySafebrowsingV4ThreatHitThreatSource(),
          buildGoogleSecuritySafebrowsingV4ThreatHitThreatSource(),
        ];

void checkUnnamed5968(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatHitThreatSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatHitThreatSource(o[0]);
  checkGoogleSecuritySafebrowsingV4ThreatHitThreatSource(o[1]);
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatHit = 0;
api.GoogleSecuritySafebrowsingV4ThreatHit
    buildGoogleSecuritySafebrowsingV4ThreatHit() {
  final o = api.GoogleSecuritySafebrowsingV4ThreatHit();
  buildCounterGoogleSecuritySafebrowsingV4ThreatHit++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatHit < 3) {
    o.clientInfo = buildGoogleSecuritySafebrowsingV4ClientInfo();
    o.entry = buildGoogleSecuritySafebrowsingV4ThreatEntry();
    o.platformType = 'foo';
    o.resources = buildUnnamed5968();
    o.threatType = 'foo';
    o.userInfo = buildGoogleSecuritySafebrowsingV4ThreatHitUserInfo();
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatHit--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4ThreatHit(
    api.GoogleSecuritySafebrowsingV4ThreatHit o) {
  buildCounterGoogleSecuritySafebrowsingV4ThreatHit++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatHit < 3) {
    checkGoogleSecuritySafebrowsingV4ClientInfo(o.clientInfo!);
    checkGoogleSecuritySafebrowsingV4ThreatEntry(o.entry!);
    unittest.expect(
      o.platformType!,
      unittest.equals('foo'),
    );
    checkUnnamed5968(o.resources!);
    unittest.expect(
      o.threatType!,
      unittest.equals('foo'),
    );
    checkGoogleSecuritySafebrowsingV4ThreatHitUserInfo(o.userInfo!);
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatHit--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatHitThreatSource = 0;
api.GoogleSecuritySafebrowsingV4ThreatHitThreatSource
    buildGoogleSecuritySafebrowsingV4ThreatHitThreatSource() {
  final o = api.GoogleSecuritySafebrowsingV4ThreatHitThreatSource();
  buildCounterGoogleSecuritySafebrowsingV4ThreatHitThreatSource++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatHitThreatSource < 3) {
    o.referrer = 'foo';
    o.remoteIp = 'foo';
    o.type = 'foo';
    o.url = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatHitThreatSource--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4ThreatHitThreatSource(
    api.GoogleSecuritySafebrowsingV4ThreatHitThreatSource o) {
  buildCounterGoogleSecuritySafebrowsingV4ThreatHitThreatSource++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatHitThreatSource < 3) {
    unittest.expect(
      o.referrer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remoteIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatHitThreatSource--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatHitUserInfo = 0;
api.GoogleSecuritySafebrowsingV4ThreatHitUserInfo
    buildGoogleSecuritySafebrowsingV4ThreatHitUserInfo() {
  final o = api.GoogleSecuritySafebrowsingV4ThreatHitUserInfo();
  buildCounterGoogleSecuritySafebrowsingV4ThreatHitUserInfo++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatHitUserInfo < 3) {
    o.regionCode = 'foo';
    o.userId = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatHitUserInfo--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4ThreatHitUserInfo(
    api.GoogleSecuritySafebrowsingV4ThreatHitUserInfo o) {
  buildCounterGoogleSecuritySafebrowsingV4ThreatHitUserInfo++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatHitUserInfo < 3) {
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatHitUserInfo--;
}

core.List<core.String> buildUnnamed5969() => [
      'foo',
      'foo',
    ];

void checkUnnamed5969(core.List<core.String> o) {
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

core.List<api.GoogleSecuritySafebrowsingV4ThreatEntry> buildUnnamed5970() => [
      buildGoogleSecuritySafebrowsingV4ThreatEntry(),
      buildGoogleSecuritySafebrowsingV4ThreatEntry(),
    ];

void checkUnnamed5970(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatEntry(o[0]);
  checkGoogleSecuritySafebrowsingV4ThreatEntry(o[1]);
}

core.List<core.String> buildUnnamed5971() => [
      'foo',
      'foo',
    ];

void checkUnnamed5971(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5972() => [
      'foo',
      'foo',
    ];

void checkUnnamed5972(core.List<core.String> o) {
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

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatInfo = 0;
api.GoogleSecuritySafebrowsingV4ThreatInfo
    buildGoogleSecuritySafebrowsingV4ThreatInfo() {
  final o = api.GoogleSecuritySafebrowsingV4ThreatInfo();
  buildCounterGoogleSecuritySafebrowsingV4ThreatInfo++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatInfo < 3) {
    o.platformTypes = buildUnnamed5969();
    o.threatEntries = buildUnnamed5970();
    o.threatEntryTypes = buildUnnamed5971();
    o.threatTypes = buildUnnamed5972();
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatInfo--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4ThreatInfo(
    api.GoogleSecuritySafebrowsingV4ThreatInfo o) {
  buildCounterGoogleSecuritySafebrowsingV4ThreatInfo++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatInfo < 3) {
    checkUnnamed5969(o.platformTypes!);
    checkUnnamed5970(o.threatEntries!);
    checkUnnamed5971(o.threatEntryTypes!);
    checkUnnamed5972(o.threatTypes!);
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatInfo--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatListDescriptor = 0;
api.GoogleSecuritySafebrowsingV4ThreatListDescriptor
    buildGoogleSecuritySafebrowsingV4ThreatListDescriptor() {
  final o = api.GoogleSecuritySafebrowsingV4ThreatListDescriptor();
  buildCounterGoogleSecuritySafebrowsingV4ThreatListDescriptor++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatListDescriptor < 3) {
    o.platformType = 'foo';
    o.threatEntryType = 'foo';
    o.threatType = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatListDescriptor--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4ThreatListDescriptor(
    api.GoogleSecuritySafebrowsingV4ThreatListDescriptor o) {
  buildCounterGoogleSecuritySafebrowsingV4ThreatListDescriptor++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatListDescriptor < 3) {
    unittest.expect(
      o.platformType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.threatEntryType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.threatType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatListDescriptor--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatMatch = 0;
api.GoogleSecuritySafebrowsingV4ThreatMatch
    buildGoogleSecuritySafebrowsingV4ThreatMatch() {
  final o = api.GoogleSecuritySafebrowsingV4ThreatMatch();
  buildCounterGoogleSecuritySafebrowsingV4ThreatMatch++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatMatch < 3) {
    o.cacheDuration = 'foo';
    o.platformType = 'foo';
    o.threat = buildGoogleSecuritySafebrowsingV4ThreatEntry();
    o.threatEntryMetadata =
        buildGoogleSecuritySafebrowsingV4ThreatEntryMetadata();
    o.threatEntryType = 'foo';
    o.threatType = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatMatch--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4ThreatMatch(
    api.GoogleSecuritySafebrowsingV4ThreatMatch o) {
  buildCounterGoogleSecuritySafebrowsingV4ThreatMatch++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatMatch < 3) {
    unittest.expect(
      o.cacheDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platformType!,
      unittest.equals('foo'),
    );
    checkGoogleSecuritySafebrowsingV4ThreatEntry(o.threat!);
    checkGoogleSecuritySafebrowsingV4ThreatEntryMetadata(
        o.threatEntryMetadata!);
    unittest.expect(
      o.threatEntryType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.threatType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatMatch--;
}

void main() {
  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4Checksum', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4Checksum();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4Checksum.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4Checksum(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ClientInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4ClientInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4ClientInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4ClientInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse(
          od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4FindFullHashesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4FindFullHashesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4FindFullHashesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4FindFullHashesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FindFullHashesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4FindFullHashesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleSecuritySafebrowsingV4FindFullHashesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4FindFullHashesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FindThreatMatchesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4FindThreatMatchesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleSecuritySafebrowsingV4FindThreatMatchesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4FindThreatMatchesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FindThreatMatchesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4FindThreatMatchesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleSecuritySafebrowsingV4FindThreatMatchesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4FindThreatMatchesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4ListThreatListsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4ListThreatListsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleSecuritySafebrowsingV4ListThreatListsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4ListThreatListsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4RawHashes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4RawHashes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4RawHashes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4RawHashes(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4RawIndices', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4RawIndices();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4RawIndices.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4RawIndices(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4RiceDeltaEncoding',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4RiceDeltaEncoding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4RiceDeltaEncoding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4RiceDeltaEncoding(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4ThreatEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4ThreatEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4ThreatEntry(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatEntryMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4ThreatEntryMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4ThreatEntryMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4ThreatEntryMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatEntrySet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4ThreatEntrySet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4ThreatEntrySet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4ThreatEntrySet(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatHit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4ThreatHit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4ThreatHit.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4ThreatHit(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatHitThreatSource',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4ThreatHitThreatSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4ThreatHitThreatSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4ThreatHitThreatSource(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatHitUserInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4ThreatHitUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4ThreatHitUserInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4ThreatHitUserInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4ThreatInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4ThreatInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4ThreatInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatListDescriptor',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4ThreatListDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4ThreatListDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4ThreatListDescriptor(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV4ThreatMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV4ThreatMatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV4ThreatMatch(od);
    });
  });

  unittest.group('resource-EncodedFullHashesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).encodedFullHashes;
      final arg_encodedRequest = 'foo';
      final arg_clientId = 'foo';
      final arg_clientVersion = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('v4/encodedFullHashes/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_encodedRequest'),
        );

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
          queryMap['clientId']!.first,
          unittest.equals(arg_clientId),
        );
        unittest.expect(
          queryMap['clientVersion']!.first,
          unittest.equals(arg_clientVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleSecuritySafebrowsingV4FindFullHashesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_encodedRequest,
          clientId: arg_clientId,
          clientVersion: arg_clientVersion,
          $fields: arg_$fields);
      checkGoogleSecuritySafebrowsingV4FindFullHashesResponse(
          response as api.GoogleSecuritySafebrowsingV4FindFullHashesResponse);
    });
  });

  unittest.group('resource-EncodedUpdatesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).encodedUpdates;
      final arg_encodedRequest = 'foo';
      final arg_clientId = 'foo';
      final arg_clientVersion = 'foo';
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
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('v4/encodedUpdates/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_encodedRequest'),
        );

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
          queryMap['clientId']!.first,
          unittest.equals(arg_clientId),
        );
        unittest.expect(
          queryMap['clientVersion']!.first,
          unittest.equals(arg_clientVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_encodedRequest,
          clientId: arg_clientId,
          clientVersion: arg_clientVersion,
          $fields: arg_$fields);
      checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse(response
          as api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse);
    });
  });

  unittest.group('resource-FullHashesResource', () {
    unittest.test('method--find', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).fullHashes;
      final arg_request =
          buildGoogleSecuritySafebrowsingV4FindFullHashesRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleSecuritySafebrowsingV4FindFullHashesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleSecuritySafebrowsingV4FindFullHashesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('v4/fullHashes:find'),
        );
        pathOffset += 18;

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
        final resp = convert.json
            .encode(buildGoogleSecuritySafebrowsingV4FindFullHashesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.find(arg_request, $fields: arg_$fields);
      checkGoogleSecuritySafebrowsingV4FindFullHashesResponse(
          response as api.GoogleSecuritySafebrowsingV4FindFullHashesResponse);
    });
  });

  unittest.group('resource-ThreatHitsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).threatHits;
      final arg_request = buildGoogleSecuritySafebrowsingV4ThreatHit();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleSecuritySafebrowsingV4ThreatHit.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleSecuritySafebrowsingV4ThreatHit(obj);

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
          unittest.equals('v4/threatHits'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('resource-ThreatListUpdatesResource', () {
    unittest.test('method--fetch', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).threatListUpdates;
      final arg_request =
          buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest(obj);

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
          unittest.equals('v4/threatListUpdates:fetch'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetch(arg_request, $fields: arg_$fields);
      checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse(response
          as api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse);
    });
  });

  unittest.group('resource-ThreatListsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).threatLists;
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
          unittest.equals('v4/threatLists'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleSecuritySafebrowsingV4ListThreatListsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list($fields: arg_$fields);
      checkGoogleSecuritySafebrowsingV4ListThreatListsResponse(
          response as api.GoogleSecuritySafebrowsingV4ListThreatListsResponse);
    });
  });

  unittest.group('resource-ThreatMatchesResource', () {
    unittest.test('method--find', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).threatMatches;
      final arg_request =
          buildGoogleSecuritySafebrowsingV4FindThreatMatchesRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleSecuritySafebrowsingV4FindThreatMatchesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleSecuritySafebrowsingV4FindThreatMatchesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('v4/threatMatches:find'),
        );
        pathOffset += 21;

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
        final resp = convert.json.encode(
            buildGoogleSecuritySafebrowsingV4FindThreatMatchesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.find(arg_request, $fields: arg_$fields);
      checkGoogleSecuritySafebrowsingV4FindThreatMatchesResponse(response
          as api.GoogleSecuritySafebrowsingV4FindThreatMatchesResponse);
    });
  });
}
