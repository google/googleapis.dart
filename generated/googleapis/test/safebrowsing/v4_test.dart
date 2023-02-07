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

core.int buildCounterChecksum = 0;
api.Checksum buildChecksum() {
  final o = api.Checksum();
  buildCounterChecksum++;
  if (buildCounterChecksum < 3) {
    o.sha256 = 'foo';
  }
  buildCounterChecksum--;
  return o;
}

void checkChecksum(api.Checksum o) {
  buildCounterChecksum++;
  if (buildCounterChecksum < 3) {
    unittest.expect(
      o.sha256!,
      unittest.equals('foo'),
    );
  }
  buildCounterChecksum--;
}

core.int buildCounterClientInfo = 0;
api.ClientInfo buildClientInfo() {
  final o = api.ClientInfo();
  buildCounterClientInfo++;
  if (buildCounterClientInfo < 3) {
    o.clientId = 'foo';
    o.clientVersion = 'foo';
  }
  buildCounterClientInfo--;
  return o;
}

void checkClientInfo(api.ClientInfo o) {
  buildCounterClientInfo++;
  if (buildCounterClientInfo < 3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterClientInfo--;
}

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterConstraints = 0;
api.Constraints buildConstraints() {
  final o = api.Constraints();
  buildCounterConstraints++;
  if (buildCounterConstraints < 3) {
    o.deviceLocation = 'foo';
    o.language = 'foo';
    o.maxDatabaseEntries = 42;
    o.maxUpdateEntries = 42;
    o.region = 'foo';
    o.supportedCompressions = buildUnnamed0();
  }
  buildCounterConstraints--;
  return o;
}

void checkConstraints(api.Constraints o) {
  buildCounterConstraints++;
  if (buildCounterConstraints < 3) {
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
    checkUnnamed0(o.supportedCompressions!);
  }
  buildCounterConstraints--;
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

core.List<api.ListUpdateRequest> buildUnnamed1() => [
      buildListUpdateRequest(),
      buildListUpdateRequest(),
    ];

void checkUnnamed1(core.List<api.ListUpdateRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListUpdateRequest(o[0]);
  checkListUpdateRequest(o[1]);
}

core.int buildCounterFetchThreatListUpdatesRequest = 0;
api.FetchThreatListUpdatesRequest buildFetchThreatListUpdatesRequest() {
  final o = api.FetchThreatListUpdatesRequest();
  buildCounterFetchThreatListUpdatesRequest++;
  if (buildCounterFetchThreatListUpdatesRequest < 3) {
    o.client = buildClientInfo();
    o.listUpdateRequests = buildUnnamed1();
  }
  buildCounterFetchThreatListUpdatesRequest--;
  return o;
}

void checkFetchThreatListUpdatesRequest(api.FetchThreatListUpdatesRequest o) {
  buildCounterFetchThreatListUpdatesRequest++;
  if (buildCounterFetchThreatListUpdatesRequest < 3) {
    checkClientInfo(o.client!);
    checkUnnamed1(o.listUpdateRequests!);
  }
  buildCounterFetchThreatListUpdatesRequest--;
}

core.List<api.ListUpdateResponse> buildUnnamed2() => [
      buildListUpdateResponse(),
      buildListUpdateResponse(),
    ];

void checkUnnamed2(core.List<api.ListUpdateResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListUpdateResponse(o[0]);
  checkListUpdateResponse(o[1]);
}

core.int buildCounterFetchThreatListUpdatesResponse = 0;
api.FetchThreatListUpdatesResponse buildFetchThreatListUpdatesResponse() {
  final o = api.FetchThreatListUpdatesResponse();
  buildCounterFetchThreatListUpdatesResponse++;
  if (buildCounterFetchThreatListUpdatesResponse < 3) {
    o.listUpdateResponses = buildUnnamed2();
    o.minimumWaitDuration = 'foo';
  }
  buildCounterFetchThreatListUpdatesResponse--;
  return o;
}

void checkFetchThreatListUpdatesResponse(api.FetchThreatListUpdatesResponse o) {
  buildCounterFetchThreatListUpdatesResponse++;
  if (buildCounterFetchThreatListUpdatesResponse < 3) {
    checkUnnamed2(o.listUpdateResponses!);
    unittest.expect(
      o.minimumWaitDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterFetchThreatListUpdatesResponse--;
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

core.int buildCounterFindFullHashesRequest = 0;
api.FindFullHashesRequest buildFindFullHashesRequest() {
  final o = api.FindFullHashesRequest();
  buildCounterFindFullHashesRequest++;
  if (buildCounterFindFullHashesRequest < 3) {
    o.apiClient = buildClientInfo();
    o.client = buildClientInfo();
    o.clientStates = buildUnnamed3();
    o.threatInfo = buildThreatInfo();
  }
  buildCounterFindFullHashesRequest--;
  return o;
}

void checkFindFullHashesRequest(api.FindFullHashesRequest o) {
  buildCounterFindFullHashesRequest++;
  if (buildCounterFindFullHashesRequest < 3) {
    checkClientInfo(o.apiClient!);
    checkClientInfo(o.client!);
    checkUnnamed3(o.clientStates!);
    checkThreatInfo(o.threatInfo!);
  }
  buildCounterFindFullHashesRequest--;
}

core.List<api.ThreatMatch> buildUnnamed4() => [
      buildThreatMatch(),
      buildThreatMatch(),
    ];

void checkUnnamed4(core.List<api.ThreatMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatMatch(o[0]);
  checkThreatMatch(o[1]);
}

core.int buildCounterFindFullHashesResponse = 0;
api.FindFullHashesResponse buildFindFullHashesResponse() {
  final o = api.FindFullHashesResponse();
  buildCounterFindFullHashesResponse++;
  if (buildCounterFindFullHashesResponse < 3) {
    o.matches = buildUnnamed4();
    o.minimumWaitDuration = 'foo';
    o.negativeCacheDuration = 'foo';
  }
  buildCounterFindFullHashesResponse--;
  return o;
}

void checkFindFullHashesResponse(api.FindFullHashesResponse o) {
  buildCounterFindFullHashesResponse++;
  if (buildCounterFindFullHashesResponse < 3) {
    checkUnnamed4(o.matches!);
    unittest.expect(
      o.minimumWaitDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.negativeCacheDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterFindFullHashesResponse--;
}

core.int buildCounterFindThreatMatchesRequest = 0;
api.FindThreatMatchesRequest buildFindThreatMatchesRequest() {
  final o = api.FindThreatMatchesRequest();
  buildCounterFindThreatMatchesRequest++;
  if (buildCounterFindThreatMatchesRequest < 3) {
    o.client = buildClientInfo();
    o.threatInfo = buildThreatInfo();
  }
  buildCounterFindThreatMatchesRequest--;
  return o;
}

void checkFindThreatMatchesRequest(api.FindThreatMatchesRequest o) {
  buildCounterFindThreatMatchesRequest++;
  if (buildCounterFindThreatMatchesRequest < 3) {
    checkClientInfo(o.client!);
    checkThreatInfo(o.threatInfo!);
  }
  buildCounterFindThreatMatchesRequest--;
}

core.List<api.ThreatMatch> buildUnnamed5() => [
      buildThreatMatch(),
      buildThreatMatch(),
    ];

void checkUnnamed5(core.List<api.ThreatMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatMatch(o[0]);
  checkThreatMatch(o[1]);
}

core.int buildCounterFindThreatMatchesResponse = 0;
api.FindThreatMatchesResponse buildFindThreatMatchesResponse() {
  final o = api.FindThreatMatchesResponse();
  buildCounterFindThreatMatchesResponse++;
  if (buildCounterFindThreatMatchesResponse < 3) {
    o.matches = buildUnnamed5();
  }
  buildCounterFindThreatMatchesResponse--;
  return o;
}

void checkFindThreatMatchesResponse(api.FindThreatMatchesResponse o) {
  buildCounterFindThreatMatchesResponse++;
  if (buildCounterFindThreatMatchesResponse < 3) {
    checkUnnamed5(o.matches!);
  }
  buildCounterFindThreatMatchesResponse--;
}

core.List<api.ThreatListDescriptor> buildUnnamed6() => [
      buildThreatListDescriptor(),
      buildThreatListDescriptor(),
    ];

void checkUnnamed6(core.List<api.ThreatListDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatListDescriptor(o[0]);
  checkThreatListDescriptor(o[1]);
}

core.int buildCounterListThreatListsResponse = 0;
api.ListThreatListsResponse buildListThreatListsResponse() {
  final o = api.ListThreatListsResponse();
  buildCounterListThreatListsResponse++;
  if (buildCounterListThreatListsResponse < 3) {
    o.threatLists = buildUnnamed6();
  }
  buildCounterListThreatListsResponse--;
  return o;
}

void checkListThreatListsResponse(api.ListThreatListsResponse o) {
  buildCounterListThreatListsResponse++;
  if (buildCounterListThreatListsResponse < 3) {
    checkUnnamed6(o.threatLists!);
  }
  buildCounterListThreatListsResponse--;
}

core.int buildCounterListUpdateRequest = 0;
api.ListUpdateRequest buildListUpdateRequest() {
  final o = api.ListUpdateRequest();
  buildCounterListUpdateRequest++;
  if (buildCounterListUpdateRequest < 3) {
    o.constraints = buildConstraints();
    o.platformType = 'foo';
    o.state = 'foo';
    o.threatEntryType = 'foo';
    o.threatType = 'foo';
  }
  buildCounterListUpdateRequest--;
  return o;
}

void checkListUpdateRequest(api.ListUpdateRequest o) {
  buildCounterListUpdateRequest++;
  if (buildCounterListUpdateRequest < 3) {
    checkConstraints(o.constraints!);
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
  buildCounterListUpdateRequest--;
}

core.List<api.ThreatEntrySet> buildUnnamed7() => [
      buildThreatEntrySet(),
      buildThreatEntrySet(),
    ];

void checkUnnamed7(core.List<api.ThreatEntrySet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatEntrySet(o[0]);
  checkThreatEntrySet(o[1]);
}

core.List<api.ThreatEntrySet> buildUnnamed8() => [
      buildThreatEntrySet(),
      buildThreatEntrySet(),
    ];

void checkUnnamed8(core.List<api.ThreatEntrySet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatEntrySet(o[0]);
  checkThreatEntrySet(o[1]);
}

core.int buildCounterListUpdateResponse = 0;
api.ListUpdateResponse buildListUpdateResponse() {
  final o = api.ListUpdateResponse();
  buildCounterListUpdateResponse++;
  if (buildCounterListUpdateResponse < 3) {
    o.additions = buildUnnamed7();
    o.checksum = buildChecksum();
    o.newClientState = 'foo';
    o.platformType = 'foo';
    o.removals = buildUnnamed8();
    o.responseType = 'foo';
    o.threatEntryType = 'foo';
    o.threatType = 'foo';
  }
  buildCounterListUpdateResponse--;
  return o;
}

void checkListUpdateResponse(api.ListUpdateResponse o) {
  buildCounterListUpdateResponse++;
  if (buildCounterListUpdateResponse < 3) {
    checkUnnamed7(o.additions!);
    checkChecksum(o.checksum!);
    unittest.expect(
      o.newClientState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platformType!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.removals!);
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
  buildCounterListUpdateResponse--;
}

core.int buildCounterMetadataEntry = 0;
api.MetadataEntry buildMetadataEntry() {
  final o = api.MetadataEntry();
  buildCounterMetadataEntry++;
  if (buildCounterMetadataEntry < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterMetadataEntry--;
  return o;
}

void checkMetadataEntry(api.MetadataEntry o) {
  buildCounterMetadataEntry++;
  if (buildCounterMetadataEntry < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetadataEntry--;
}

core.int buildCounterRawHashes = 0;
api.RawHashes buildRawHashes() {
  final o = api.RawHashes();
  buildCounterRawHashes++;
  if (buildCounterRawHashes < 3) {
    o.prefixSize = 42;
    o.rawHashes = 'foo';
  }
  buildCounterRawHashes--;
  return o;
}

void checkRawHashes(api.RawHashes o) {
  buildCounterRawHashes++;
  if (buildCounterRawHashes < 3) {
    unittest.expect(
      o.prefixSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rawHashes!,
      unittest.equals('foo'),
    );
  }
  buildCounterRawHashes--;
}

core.List<core.int> buildUnnamed9() => [
      42,
      42,
    ];

void checkUnnamed9(core.List<core.int> o) {
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

core.int buildCounterRawIndices = 0;
api.RawIndices buildRawIndices() {
  final o = api.RawIndices();
  buildCounterRawIndices++;
  if (buildCounterRawIndices < 3) {
    o.indices = buildUnnamed9();
  }
  buildCounterRawIndices--;
  return o;
}

void checkRawIndices(api.RawIndices o) {
  buildCounterRawIndices++;
  if (buildCounterRawIndices < 3) {
    checkUnnamed9(o.indices!);
  }
  buildCounterRawIndices--;
}

core.int buildCounterRiceDeltaEncoding = 0;
api.RiceDeltaEncoding buildRiceDeltaEncoding() {
  final o = api.RiceDeltaEncoding();
  buildCounterRiceDeltaEncoding++;
  if (buildCounterRiceDeltaEncoding < 3) {
    o.encodedData = 'foo';
    o.firstValue = 'foo';
    o.numEntries = 42;
    o.riceParameter = 42;
  }
  buildCounterRiceDeltaEncoding--;
  return o;
}

void checkRiceDeltaEncoding(api.RiceDeltaEncoding o) {
  buildCounterRiceDeltaEncoding++;
  if (buildCounterRiceDeltaEncoding < 3) {
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
  buildCounterRiceDeltaEncoding--;
}

core.int buildCounterThreatEntry = 0;
api.ThreatEntry buildThreatEntry() {
  final o = api.ThreatEntry();
  buildCounterThreatEntry++;
  if (buildCounterThreatEntry < 3) {
    o.digest = 'foo';
    o.hash = 'foo';
    o.url = 'foo';
  }
  buildCounterThreatEntry--;
  return o;
}

void checkThreatEntry(api.ThreatEntry o) {
  buildCounterThreatEntry++;
  if (buildCounterThreatEntry < 3) {
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
  buildCounterThreatEntry--;
}

core.List<api.MetadataEntry> buildUnnamed10() => [
      buildMetadataEntry(),
      buildMetadataEntry(),
    ];

void checkUnnamed10(core.List<api.MetadataEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetadataEntry(o[0]);
  checkMetadataEntry(o[1]);
}

core.int buildCounterThreatEntryMetadata = 0;
api.ThreatEntryMetadata buildThreatEntryMetadata() {
  final o = api.ThreatEntryMetadata();
  buildCounterThreatEntryMetadata++;
  if (buildCounterThreatEntryMetadata < 3) {
    o.entries = buildUnnamed10();
  }
  buildCounterThreatEntryMetadata--;
  return o;
}

void checkThreatEntryMetadata(api.ThreatEntryMetadata o) {
  buildCounterThreatEntryMetadata++;
  if (buildCounterThreatEntryMetadata < 3) {
    checkUnnamed10(o.entries!);
  }
  buildCounterThreatEntryMetadata--;
}

core.int buildCounterThreatEntrySet = 0;
api.ThreatEntrySet buildThreatEntrySet() {
  final o = api.ThreatEntrySet();
  buildCounterThreatEntrySet++;
  if (buildCounterThreatEntrySet < 3) {
    o.compressionType = 'foo';
    o.rawHashes = buildRawHashes();
    o.rawIndices = buildRawIndices();
    o.riceHashes = buildRiceDeltaEncoding();
    o.riceIndices = buildRiceDeltaEncoding();
  }
  buildCounterThreatEntrySet--;
  return o;
}

void checkThreatEntrySet(api.ThreatEntrySet o) {
  buildCounterThreatEntrySet++;
  if (buildCounterThreatEntrySet < 3) {
    unittest.expect(
      o.compressionType!,
      unittest.equals('foo'),
    );
    checkRawHashes(o.rawHashes!);
    checkRawIndices(o.rawIndices!);
    checkRiceDeltaEncoding(o.riceHashes!);
    checkRiceDeltaEncoding(o.riceIndices!);
  }
  buildCounterThreatEntrySet--;
}

core.List<api.ThreatSource> buildUnnamed11() => [
      buildThreatSource(),
      buildThreatSource(),
    ];

void checkUnnamed11(core.List<api.ThreatSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatSource(o[0]);
  checkThreatSource(o[1]);
}

core.int buildCounterThreatHit = 0;
api.ThreatHit buildThreatHit() {
  final o = api.ThreatHit();
  buildCounterThreatHit++;
  if (buildCounterThreatHit < 3) {
    o.clientInfo = buildClientInfo();
    o.entry = buildThreatEntry();
    o.platformType = 'foo';
    o.resources = buildUnnamed11();
    o.threatType = 'foo';
    o.userInfo = buildUserInfo();
  }
  buildCounterThreatHit--;
  return o;
}

void checkThreatHit(api.ThreatHit o) {
  buildCounterThreatHit++;
  if (buildCounterThreatHit < 3) {
    checkClientInfo(o.clientInfo!);
    checkThreatEntry(o.entry!);
    unittest.expect(
      o.platformType!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.resources!);
    unittest.expect(
      o.threatType!,
      unittest.equals('foo'),
    );
    checkUserInfo(o.userInfo!);
  }
  buildCounterThreatHit--;
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

core.List<api.ThreatEntry> buildUnnamed13() => [
      buildThreatEntry(),
      buildThreatEntry(),
    ];

void checkUnnamed13(core.List<api.ThreatEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatEntry(o[0]);
  checkThreatEntry(o[1]);
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.int buildCounterThreatInfo = 0;
api.ThreatInfo buildThreatInfo() {
  final o = api.ThreatInfo();
  buildCounterThreatInfo++;
  if (buildCounterThreatInfo < 3) {
    o.platformTypes = buildUnnamed12();
    o.threatEntries = buildUnnamed13();
    o.threatEntryTypes = buildUnnamed14();
    o.threatTypes = buildUnnamed15();
  }
  buildCounterThreatInfo--;
  return o;
}

void checkThreatInfo(api.ThreatInfo o) {
  buildCounterThreatInfo++;
  if (buildCounterThreatInfo < 3) {
    checkUnnamed12(o.platformTypes!);
    checkUnnamed13(o.threatEntries!);
    checkUnnamed14(o.threatEntryTypes!);
    checkUnnamed15(o.threatTypes!);
  }
  buildCounterThreatInfo--;
}

core.int buildCounterThreatListDescriptor = 0;
api.ThreatListDescriptor buildThreatListDescriptor() {
  final o = api.ThreatListDescriptor();
  buildCounterThreatListDescriptor++;
  if (buildCounterThreatListDescriptor < 3) {
    o.platformType = 'foo';
    o.threatEntryType = 'foo';
    o.threatType = 'foo';
  }
  buildCounterThreatListDescriptor--;
  return o;
}

void checkThreatListDescriptor(api.ThreatListDescriptor o) {
  buildCounterThreatListDescriptor++;
  if (buildCounterThreatListDescriptor < 3) {
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
  buildCounterThreatListDescriptor--;
}

core.int buildCounterThreatMatch = 0;
api.ThreatMatch buildThreatMatch() {
  final o = api.ThreatMatch();
  buildCounterThreatMatch++;
  if (buildCounterThreatMatch < 3) {
    o.cacheDuration = 'foo';
    o.platformType = 'foo';
    o.threat = buildThreatEntry();
    o.threatEntryMetadata = buildThreatEntryMetadata();
    o.threatEntryType = 'foo';
    o.threatType = 'foo';
  }
  buildCounterThreatMatch--;
  return o;
}

void checkThreatMatch(api.ThreatMatch o) {
  buildCounterThreatMatch++;
  if (buildCounterThreatMatch < 3) {
    unittest.expect(
      o.cacheDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platformType!,
      unittest.equals('foo'),
    );
    checkThreatEntry(o.threat!);
    checkThreatEntryMetadata(o.threatEntryMetadata!);
    unittest.expect(
      o.threatEntryType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.threatType!,
      unittest.equals('foo'),
    );
  }
  buildCounterThreatMatch--;
}

core.int buildCounterThreatSource = 0;
api.ThreatSource buildThreatSource() {
  final o = api.ThreatSource();
  buildCounterThreatSource++;
  if (buildCounterThreatSource < 3) {
    o.referrer = 'foo';
    o.remoteIp = 'foo';
    o.type = 'foo';
    o.url = 'foo';
  }
  buildCounterThreatSource--;
  return o;
}

void checkThreatSource(api.ThreatSource o) {
  buildCounterThreatSource++;
  if (buildCounterThreatSource < 3) {
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
  buildCounterThreatSource--;
}

core.int buildCounterUserInfo = 0;
api.UserInfo buildUserInfo() {
  final o = api.UserInfo();
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    o.regionCode = 'foo';
    o.userId = 'foo';
  }
  buildCounterUserInfo--;
  return o;
}

void checkUserInfo(api.UserInfo o) {
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserInfo--;
}

void main() {
  unittest.group('obj-schema-Checksum', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChecksum();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Checksum.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChecksum(od);
    });
  });

  unittest.group('obj-schema-ClientInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ClientInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkClientInfo(od);
    });
  });

  unittest.group('obj-schema-Constraints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConstraints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Constraints.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConstraints(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-FetchThreatListUpdatesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchThreatListUpdatesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchThreatListUpdatesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchThreatListUpdatesRequest(od);
    });
  });

  unittest.group('obj-schema-FetchThreatListUpdatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchThreatListUpdatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchThreatListUpdatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchThreatListUpdatesResponse(od);
    });
  });

  unittest.group('obj-schema-FindFullHashesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindFullHashesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindFullHashesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFindFullHashesRequest(od);
    });
  });

  unittest.group('obj-schema-FindFullHashesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindFullHashesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindFullHashesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFindFullHashesResponse(od);
    });
  });

  unittest.group('obj-schema-FindThreatMatchesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindThreatMatchesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindThreatMatchesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFindThreatMatchesRequest(od);
    });
  });

  unittest.group('obj-schema-FindThreatMatchesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindThreatMatchesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindThreatMatchesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFindThreatMatchesResponse(od);
    });
  });

  unittest.group('obj-schema-ListThreatListsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListThreatListsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListThreatListsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListThreatListsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUpdateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUpdateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUpdateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUpdateRequest(od);
    });
  });

  unittest.group('obj-schema-ListUpdateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUpdateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUpdateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUpdateResponse(od);
    });
  });

  unittest.group('obj-schema-MetadataEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadataEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetadataEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetadataEntry(od);
    });
  });

  unittest.group('obj-schema-RawHashes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRawHashes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RawHashes.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRawHashes(od);
    });
  });

  unittest.group('obj-schema-RawIndices', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRawIndices();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RawIndices.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRawIndices(od);
    });
  });

  unittest.group('obj-schema-RiceDeltaEncoding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRiceDeltaEncoding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RiceDeltaEncoding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRiceDeltaEncoding(od);
    });
  });

  unittest.group('obj-schema-ThreatEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThreatEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThreatEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThreatEntry(od);
    });
  });

  unittest.group('obj-schema-ThreatEntryMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThreatEntryMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThreatEntryMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThreatEntryMetadata(od);
    });
  });

  unittest.group('obj-schema-ThreatEntrySet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThreatEntrySet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThreatEntrySet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThreatEntrySet(od);
    });
  });

  unittest.group('obj-schema-ThreatHit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThreatHit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ThreatHit.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkThreatHit(od);
    });
  });

  unittest.group('obj-schema-ThreatInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThreatInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ThreatInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkThreatInfo(od);
    });
  });

  unittest.group('obj-schema-ThreatListDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThreatListDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThreatListDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThreatListDescriptor(od);
    });
  });

  unittest.group('obj-schema-ThreatMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThreatMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThreatMatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThreatMatch(od);
    });
  });

  unittest.group('obj-schema-ThreatSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThreatSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThreatSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThreatSource(od);
    });
  });

  unittest.group('obj-schema-UserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UserInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUserInfo(od);
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
        final resp = convert.json.encode(buildFindFullHashesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_encodedRequest,
          clientId: arg_clientId,
          clientVersion: arg_clientVersion,
          $fields: arg_$fields);
      checkFindFullHashesResponse(response as api.FindFullHashesResponse);
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
        final resp = convert.json.encode(buildFetchThreatListUpdatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_encodedRequest,
          clientId: arg_clientId,
          clientVersion: arg_clientVersion,
          $fields: arg_$fields);
      checkFetchThreatListUpdatesResponse(
          response as api.FetchThreatListUpdatesResponse);
    });
  });

  unittest.group('resource-FullHashesResource', () {
    unittest.test('method--find', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).fullHashes;
      final arg_request = buildFindFullHashesRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FindFullHashesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFindFullHashesRequest(obj);

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
        final resp = convert.json.encode(buildFindFullHashesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.find(arg_request, $fields: arg_$fields);
      checkFindFullHashesResponse(response as api.FindFullHashesResponse);
    });
  });

  unittest.group('resource-ThreatHitsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).threatHits;
      final arg_request = buildThreatHit();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.ThreatHit.fromJson(json as core.Map<core.String, core.dynamic>);
        checkThreatHit(obj);

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-ThreatListUpdatesResource', () {
    unittest.test('method--fetch', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).threatListUpdates;
      final arg_request = buildFetchThreatListUpdatesRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FetchThreatListUpdatesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFetchThreatListUpdatesRequest(obj);

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
        final resp = convert.json.encode(buildFetchThreatListUpdatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetch(arg_request, $fields: arg_$fields);
      checkFetchThreatListUpdatesResponse(
          response as api.FetchThreatListUpdatesResponse);
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
        final resp = convert.json.encode(buildListThreatListsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list($fields: arg_$fields);
      checkListThreatListsResponse(response as api.ListThreatListsResponse);
    });
  });

  unittest.group('resource-ThreatMatchesResource', () {
    unittest.test('method--find', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).threatMatches;
      final arg_request = buildFindThreatMatchesRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FindThreatMatchesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFindThreatMatchesRequest(obj);

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
        final resp = convert.json.encode(buildFindThreatMatchesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.find(arg_request, $fields: arg_$fields);
      checkFindThreatMatchesResponse(response as api.FindThreatMatchesResponse);
    });
  });
}
